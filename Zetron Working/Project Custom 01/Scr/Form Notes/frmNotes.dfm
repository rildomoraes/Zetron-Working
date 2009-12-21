object fmNotes: TfmNotes
  Left = 330
  Top = 204
  Caption = 'Notes'
  ClientHeight = 291
  ClientWidth = 345
  Color = clBtnFace
  Constraints.MaxWidth = 353
  Constraints.MinHeight = 320
  Constraints.MinWidth = 353
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEntry: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 250
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object memNotes: TcxMemo
      Left = 0
      Top = 0
      Align = alClient
      Properties.ScrollBars = ssVertical
      TabOrder = 0
      Height = 250
      Width = 345
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 250
    Width = 345
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnOk: TcxButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = btnOkClick
    end
  end
end
