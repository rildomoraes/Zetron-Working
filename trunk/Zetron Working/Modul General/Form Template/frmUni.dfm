object FormUni: TFormUni
  Left = 0
  Top = 0
  Caption = 'FormUni'
  ClientHeight = 367
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 50
    Align = alTop
    TabOrder = 0
    object bvlSpacer1: TBevel
      Left = 49
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
    end
    object btnClose: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actClose
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon24
    Left = 168
    Top = 80
    object actClose: TAction
      Caption = 'Close'
      Hint = 'Close (Alt+F4)'
      ImageIndex = 2
      OnExecute = actCloseExecute
    end
  end
end
