unit SearchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TSearchForm1 = class(TForm)
    Label1: TLabel;
    Input: TEdit;
    MatchCase: TCheckBox;
    WrapAround: TCheckBox;
    Next: TButton;
    Previous: TButton;
    Last1000: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function MemoSearchDown(SearchText: string; StartPos: LongInt; Options: TSearchTypes): integer;
    procedure NextClick(Sender: TObject);
    procedure InputChange(Sender: TObject);
    procedure InputKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  SearchForm1: TSearchForm1;
  StartPos: integer;

implementation

uses Unit1;

{$R *.dfm}

function TSearchForm1.MemoSearchDown(SearchText: string; StartPos: LongInt; Options: TSearchTypes): integer;
var
  oldCursor: TCursor;
begin
  oldCursor := Screen.Cursor; //backup Curso
  Screen.Cursor := crHourglass; //show that we are searching
  with ServerList[Form1.ServerTab.TabIndex].Memo do
  begin
    Result := FindText(Input.Text, StartPos, Length(Text), Options);
    if Result <> -1 then //when found
    begin
      SetFocus;
      SelStart := Result;
      SelLength := Length(Input.Text); //select text and
      SendMessage(handle, EM_SCROLLCARET, 0, 0); //scroll to pos
      Result := Result + SelLength; //return pos after found text
    end;
  end;
  Screen.Cursor := oldCursor;
end;

function Ctrl: Boolean;
var
  allapot: TKeyboardState;
begin
  GetKeyboardState(allapot);
  Result := ((allapot[vk_Control] and 128) <> 0);
end;

procedure TSearchForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Key := Word(#0);
    SearchForm1.Hide;
    exit;
  end
  else if Ctrl and (Key = 78) then
    SearchForm1.NextClick(TObject(SearchForm1));
end;

procedure TSearchForm1.NextClick(Sender: TObject);
var
  Options: TSearchTypes;
begin
  if Length(Input.Text) <> 0 then
  begin
    if MatchCase.Checked then
      Options := [stMatchCase];

    if (StartPos = 0) and (Last1000.Checked) then
    begin
      Startpos := Length(ServerList[Form1.ServerTab.TabIndex].Memo.Text) - 75000; //make sure we dont search from beginning
      if StartPos < 0 then
        StartPos := 0;
    end;
    StartPos := MemoSearchDown(Input.Text, StartPos, Options);
    if StartPos = -1 then //no match?
    begin
      StartPos := 0;
      if not WrapAround.Checked then
      begin
        MessageBox(Application.Handle,
          PAnsiChar('Cannot find "' + Input.Text + '"'),
          PAnsiChar('ARSSE Finder'),
          MB_OK or MB_ICONINFORMATION);
        if SearchForm1.Visible then
          SearchForm1.Input.SetFocus;
      end;
      exit;
    end;
  end;
end;

procedure TSearchForm1.InputChange(Sender: TObject);
begin
  StartPos := 0;
end;

procedure TSearchForm1.InputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    NextClick(Next);
    Key := 0; //remove beep
  end;
end;

procedure TSearchForm1.FormShow(Sender: TObject);
begin
  Input.Text := '';
end;

end.

