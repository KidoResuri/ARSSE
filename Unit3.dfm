object BotHelp: TBotHelp
  Left = 639
  Top = 279
  AlphaBlendValue = 200
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Default Bot Names'
  ClientHeight = 260
  ClientWidth = 127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 240
    Width = 101
    Height = 13
    Caption = 'Double Click to Insert'
  end
  object BotList: TListBox
    Left = 8
    Top = 8
    Width = 105
    Height = 217
    ItemHeight = 13
    Items.Strings = (
      'Admiral'
      'Billy'
      'Blain'
      'Boogie Man'
      'Commando'
      'D Dave'
      'Danko'
      'Dutch'
      'John'
      'Kruger'
      'Poncho'
      'Roach'
      'Sniper'
      'Srg Mac'
      'Stevie'
      'Terminator')
    Sorted = True
    TabOrder = 0
    OnDblClick = BotListDblClick
    OnKeyPress = BotListKeyPress
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 96
    Top = 232
  end
end
