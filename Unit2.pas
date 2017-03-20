unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TMyDialogBox = class(TForm)
    AlphaButton: TButton;
    BravoButton: TButton;
    CharlieButton: TButton;
    DeltaButton: TButton;
    ParamValue: TEdit;
    ParamLabel: TLabel;
    procedure AlphaButtonClick(Sender: TObject);
    procedure BravoButtonClick(Sender: TObject);
    procedure CharlieButtonClick(Sender: TObject);
    procedure DeltaButtonClick(Sender: TObject);
    procedure ParamValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyDialogBox: TMyDialogBox;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TMyDialogBox.AlphaButtonClick(Sender: TObject);
begin
ModalResult := mrYes;
end;

procedure TMyDialogBox.BravoButtonClick(Sender: TObject);
begin
ModalResult := mrOK;
end;

procedure TMyDialogBox.CharlieButtonClick(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TMyDialogBox.DeltaButtonClick(Sender: TObject);
begin
ModalResult := mrNo;
end;

procedure TMyDialogBox.ParamValueKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then BravoButtonClick(nil);
 if Key=#27 then CharlieButtonClick(nil);
end;

procedure TMyDialogBox.FormShow(Sender: TObject);
begin
// BotHelp.Visible:=true;
 if BotHelp.Enabled then  BotHelp.Show;
//  BotHelp.Left:=MyDialogBox.Left+MyDialogBox.Width;
//  BotHelp.Top:=MyDialogBox.Top;
 if ParamValue.Visible then ParamValue.SetFocus;
end;

procedure TMyDialogBox.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// BotHelp.Visible:=false;
 BotHelp.Close;
end;

procedure TMyDialogBox.FormPaint(Sender: TObject);
begin
  BotHelp.Left:=MyDialogBox.Left+MyDialogBox.Width;
  BotHelp.Top:=MyDialogBox.Top;
end;

end.

