object UpdatePopup1: TUpdatePopup1
  Left = 296
  Top = 208
  Width = 506
  Height = 424
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'ARSSE Changelog'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnResize = FormResize
  DesignSize = (
    490
    388)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 489
    Height = 366
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Ok: TButton
    Left = 216
    Top = 366
    Width = 74
    Height = 25
    Anchors = [akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = OkClick
  end
end
