object SearchForm1: TSearchForm1
  Left = 199
  Top = 142
  BorderStyle = bsToolWindow
  Caption = 'ARSSE - Finder'
  ClientHeight = 83
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 23
    Height = 13
    Caption = '&Find:'
  end
  object Input: TEdit
    Left = 35
    Top = 3
    Width = 281
    Height = 21
    TabOrder = 0
    OnChange = InputChange
    OnKeyDown = InputKeyDown
  end
  object MatchCase: TCheckBox
    Left = 232
    Top = 32
    Width = 81
    Height = 17
    Caption = 'Match &case'
    TabOrder = 1
  end
  object WrapAround: TCheckBox
    Left = 136
    Top = 32
    Width = 89
    Height = 17
    Caption = 'Wrap around'
    TabOrder = 2
  end
  object Previous: TButton
    Left = 160
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Previous'
    Enabled = False
    TabOrder = 4
  end
  object Last1000: TCheckBox
    Left = 32
    Top = 32
    Width = 97
    Height = 17
    Caption = 'Last 1000 only'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object Next: TButton
    Left = 240
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Next'
    TabOrder = 3
    OnClick = NextClick
  end
end
