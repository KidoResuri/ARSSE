program ARSSE;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {MyDialogBox},
  Unit3 in 'Unit3.pas' {BotHelp},
  SettingsForm in 'SettingsForm.pas' {Settings1},
  adminbox in 'adminbox.pas' {AdminReq},
  CmdEdig in 'CmdEdig.pas' {EditCmd},
  mutex in 'mutex.pas',
  UpdateThread in 'UpdateThread.pas',
  UpdatePopup in 'UpdatePopup.pas' {UpdatePopup1},
  GIFImage in 'GIFImage.pas',
  FlagDB in 'FlagDB.pas',
  SearchForm in 'SearchForm.pas' {SearchForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Advanced Remote Soldat Server Enchanter';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMyDialogBox, MyDialogBox);
  Application.CreateForm(TBotHelp, BotHelp);
  Application.CreateForm(TSettings1, Settings1);
  Application.CreateForm(TAdminReq, AdminReq);
  Application.CreateForm(TEditCmd, EditCmd);
  Application.CreateForm(TUpdatePopup1, UpdatePopup1);
  Application.CreateForm(TSearchForm1, SearchForm1);
  Application.Run;
end.
