object EditCmd: TEditCmd
  Left = 284
  Top = 227
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Command'
  ClientHeight = 215
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 79
    Height = 13
    Caption = 'Command name:'
  end
  object CmdEditor: TMemo
    Left = 8
    Top = 32
    Width = 385
    Height = 145
    TabOrder = 0
    WordWrap = False
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object CmdName: TEdit
    Left = 104
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 3
    Text = 'CmdName'
  end
end
