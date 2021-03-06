unit UpdateThread;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Menus, ExtCtrls, IdHTTP, ShellApi; //, IdAntiFreeze;

function VersionCheck(CurrentVersion: String;UpdateVersion: String): Boolean;

type
  TUpdateThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure DoUpdate;
    procedure ShowRestartQuestion;
    procedure ShowUptoDate;
    procedure Execute; override;
  public
    UpdateTime: TDateTime;
    IsAuto: boolean;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure UpdateThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ UpdateThread }

uses Unit1, StrUtils;

var
  IdHttp1: TIdHTTP;
//  IdAntiFreeze1: TIdAntiFreeze;
  FileS  : TFileStream;
  F      : TextFile;
  FARSSE : file;

  text, filename   : string;
  c: array [0..MAX_PATH] of char;
  allowupdate, needrestart: boolean;


procedure TUpdateThread.ShowUptoDate;
begin
  ShowMessage('Your version is up-to-date.')
end;  

procedure TUpdateThread.ShowRestartQuestion;
//var changes: TStringList;
begin
{
if showchanges and FileExists(ExtractFilePath(Application.ExeName)+'changes.txt') then
begin
  changes:= TStringList.Create;
  changes.LoadFromFile(ExtractFilePath(Application.ExeName)+'changes.txt');

  ShowMessage(changes.Text);
end;
}

if needrestart and (IDYes=MessageBoxA(Application.Handle,'Update finished, and ARSSE needs a restart. Do you wish to restart now?','Restart',MB_YesNo+MB_IconQuestion+MB_DefButton2)) then
   begin
     // need to close connection to servers first, then restart ARSSE
     // this is left out untill multithreading is implemented
     Form1.SaveConfig(ExtractFilePath(Application.ExeName)+'arsse.ini');
     ShellExecute(0,Nil,PChar(UPDATEEXE),Pchar(''),Pchar(''),SW_NORMAL);
     Application.Terminate;
   end
   else if allowupdate then ShowMessage('Update finished! If you wish, you can restart ARSSE to make sure the changes apply.');


end;

function HTTPFileExists(aURL: String): Boolean;
begin
  with TIdHTTP.Create(nil) do
  try
    try
      Head(aURL);
      Result := ResponseCode = 200;
    except
      Result := False;
    end;
  finally
    Free;
  end;
end;

function VersionCheck(CurrentVersion: String;UpdateVersion: String): Boolean;
var
  DotPos: array[1..3] of integer;
  VersionNum, UpdateNum: array[1..4] of integer;
  //i: integer;
begin
  //example: 'v22.33.44.111'

  DotPos[1]:=PosEx('.',CurrentVersion);
  DotPos[2]:=PosEx('.',CurrentVersion,DotPos[1]+1);
  DotPos[3]:=PosEx('.',CurrentVersion,DotPos[2]+1);

  //check if version number is correnct
  if (CurrentVersion[1]<>'v') or (DotPos[1]=0) or (DotPos[2]=0) or (DotPos[3]=0) then
  begin
    Result:=False;
    exit;
  end;

  VersionNum[1]:=StrToIntDef(Copy(CurrentVersion,          2,DotPos[1]-2),-1);
  VersionNum[2]:=StrToIntDef(Copy(CurrentVersion,DotPos[1]+1,DotPos[2]-DotPos[1]-1),-1);
  VersionNum[3]:=StrToIntDef(Copy(CurrentVersion,DotPos[2]+1,DotPos[3]-DotPos[2]-1),-1);
  VersionNum[4]:=StrToIntDef(Copy(CurrentVersion,DotPos[3]+1,Length(CurrentVersion)-DotPos[3]),-1);

  //check if version number was really a number
  if (VersionNum[1]=-1) or (VersionNum[2]=-1) or (VersionNum[3]=-1) or (VersionNum[4]=-1) then
  begin
    Result:=False;
    exit;
  end;

/////////////////Same for the UpdateVersion/////////////////
  DotPos[1]:=PosEx('.',UpdateVersion);
  DotPos[2]:=PosEx('.',UpdateVersion,DotPos[1]+1);
  DotPos[3]:=PosEx('.',UpdateVersion,DotPos[2]+1);

  //check if version number is correnct
  if (UpdateVersion[1]<>'v') or (DotPos[1]=0) or (DotPos[2]=0) or (DotPos[3]=0) then
  begin
    Result:=False;
    exit;
  end;

  UpdateNum[1]:=StrToIntDef(Copy(UpdateVersion,          2,DotPos[1]-2),-1);
  UpdateNum[2]:=StrToIntDef(Copy(UpdateVersion,DotPos[1]+1,DotPos[2]-DotPos[1]-1),-1);
  UpdateNum[3]:=StrToIntDef(Copy(UpdateVersion,DotPos[2]+1,DotPos[3]-DotPos[2]-1),-1);
  UpdateNum[4]:=StrToIntDef(Copy(UpdateVersion,DotPos[3]+1,Length(UpdateVersion)-DotPos[3]),-1);

  //check if version number was really a number
  if (UpdateNum[1]=-1) or (UpdateNum[2]=-1) or (UpdateNum[3]=-1) or (UpdateNum[4]=-1) then
  begin
    Result:=False;
    exit;
  end;

  if (UpdateNum[1]>VersionNum[1]) or
     (UpdateNum[1]=VersionNum[1]) and (UpdateNum[2]>VersionNum[2]) or
     (UpdateNum[1]=VersionNum[1]) and (UpdateNum[2]=VersionNum[2]) and (UpdateNum[3]>VersionNum[3]) or
     (UpdateNum[1]=VersionNum[1]) and (UpdateNum[2]=VersionNum[2]) and (UpdateNum[3]=VersionNum[3]) and (UpdateNum[4]>VersionNum[4]) then
  begin
       Result:=True;
  end
  else
    Result:=False;
end;

procedure TUpdateThread.DoUpdate;
const
   HOST = 'http://arsse.u13.net/';
begin

// download info file
// compare with current version
// if newer download update.exe
// run exe
// quit arsse

// variable init

   GetTempPath(SizeOf(c)-1,c);
   allowupdate:= false;
   needrestart:= false;

// download info file

//Checking for updates...

//clean stuff up
  if(fileexists(StrPas(c)+UPDATEFILE)) then
  begin
    DeleteFile(StrPas(c)+UPDATEFILE);
  end;

  IdHttp1:=TIdHttp.Create(nil);

  //check if serverfile is reachable
  if(not HTTPFileExists(HOST+UPDATEFILE)) then
    ShowMessage('Cannot find file on the server...'+#13#10+'Are you connected to the internet?')
  else
  begin
    try
      FileS:=TFileStream.Create(StrPas(c)+UPDATEFILE, fmcreate);
      IdHttp1.Get(HOST+UPDATEFILE, FileS);
    except
    end;
    IdHttp1.Free;
    FileS.Free;

    if fileexists(StrPas(c)+UPDATEFILE) then
    begin
      AssignFile(F, StrPas(c)+UPDATEFILE);
      FileMode := fmOpenRead;
      Reset(F);
      while (not Eof(F)) and (not terminated) do
      begin
        ReadLn(F, text);
        if Form1.Matches('v*.*.*.*|http://*/*.*^', text) then
        begin
          filename:= Copy(text,Pos('|',text)+1,Pos('^',text)-Pos('|',text)-1 );
          while Pos('/',filename) > 0 do
          begin
            filename:= Copy(filename,Pos('/',filename)+1,Length(filename) );
          end;
          if (VersionCheck('v'+VERSION+'.'+VERSIONBUILD,Copy(text,1, Pos('|',text)-1))){<0} then
          begin
            if allowupdate or (IDYes=MessageBoxA(Application.Handle,'New Version of ARSSE available! Do you wish to download updates?','New version of ARSSE',MB_YesNo+MB_IconQuestion+MB_DefButton2)) then
            begin
              allowupdate:= true;
//            Downloading updates...
              if filename=ExtractFileName(Application.ExeName) then
              begin
                AssignFile(FARSSE, filename);
                Rename(FARSSE, filename+'_old');
                needrestart:= true;
              end;
//            if filename = 'changes.txt' then showchanges:= true;
              if not FileExists(ExtractFilePath(Application.ExeName)+filename) then
                FileS:=TFileStream.Create(ExtractFilePath(Application.ExeName)+filename, fmcreate)
              else
                FileS:=TFileStream.Create(ExtractFilePath(Application.ExeName)+filename, fmOpenWrite);
              if(not HTTPFileExists(Copy(text,pos('|',text)+1,Length(text)-1-pos('|',text)))) then
                ShowMessage('File not found:'+#13#10+Copy(text,pos('|',text)+1,Length(text)-1-pos('|',text)))
              else
              begin
                IdHttp1:=TIdHttp.Create(nil);
                IdHttp1.Get(Copy(text,pos('|',text)+1,Length(text)-1-pos('|',text)), FileS);
                IdHttp1.Free;
              end;
              FileS.Free;
            end
            else
            begin
              break;
            end
          end
          else
          begin
            if not IsAuto then Synchronize(ShowUptoDate);
              break;
          end;
        end;
      end;
      UpdateTime:= Date;
      CloseFile(F);
      Erase(F);
      Synchronize(ShowRestartQuestion);
    end
    else
    begin
//    Update-file error...
    end;
  end;
end;

procedure TUpdateThread.Execute;
begin
  { Place thread code here }
  //Synchronize(DoUpdate);
  if not Terminated then
  begin
    Synchronize(DoUpdate); //we want to use visual compoments thats why Synchronize
    //DoUpdate;
    PostMessage(Form1.Handle, WM_UPDATE_COMPLETE, 0, 0);
  end;

end;

end.
