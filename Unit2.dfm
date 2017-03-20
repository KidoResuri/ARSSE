object MyDialogBox: TMyDialogBox
  Left = 367
  Top = 279
  AlphaBlendValue = 200
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Parameter Input'
  ClientHeight = 125
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ParamLabel: TLabel
    Left = 16
    Top = 16
    Width = 105
    Height = 13
    Caption = 'Parameter description:'
  end
  object AlphaButton: TButton
    Left = 8
    Top = 80
    Width = 57
    Height = 25
    Caption = 'Alpha'
    TabOrder = 3
    OnClick = AlphaButtonClick
  end
  object BravoButton: TButton
    Left = 72
    Top = 80
    Width = 57
    Height = 25
    Caption = 'Bravo'
    TabOrder = 1
    OnClick = BravoButtonClick
  end
  object CharlieButton: TButton
    Left = 136
    Top = 80
    Width = 57
    Height = 25
    Caption = 'Charlie'
    TabOrder = 2
    OnClick = CharlieButtonClick
  end
  object DeltaButton: TButton
    Left = 200
    Top = 80
    Width = 57
    Height = 25
    Caption = 'Delta'
    TabOrder = 4
    OnClick = DeltaButtonClick
  end
  object ParamValue: TEdit
    Left = 16
    Top = 40
    Width = 233
    Height = 21
    TabOrder = 0
    OnKeyPress = ParamValueKeyPress
  end
end
