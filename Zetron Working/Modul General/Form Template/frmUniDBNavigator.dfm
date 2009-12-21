inherited FormUniDBNavigator: TFormUniDBNavigator
  Caption = 'FormUniDBNavigator'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer2: TBevel [1]
      Left = 251
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 255
      ExplicitTop = 2
    end
    object bvlSpacer3: TBevel [2]
      Left = 261
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 267
      ExplicitTop = -4
    end
    object bvlSpacer4: TBevel [3]
      Left = 271
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 479
      ExplicitTop = -4
    end
    object btnPrev: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPrev
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnNext: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actNext
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
  end
  inherited ActionList1: TActionList
    object actPrev: TAction
      Category = 'Dataset'
      Caption = 'Mundur'
      ImageIndex = 10
      ShortCut = 122
      OnExecute = actPrevExecute
    end
    object actNext: TAction
      Category = 'Dataset'
      Caption = 'Maju'
      ImageIndex = 11
      ShortCut = 123
      OnExecute = actNextExecute
    end
  end
  object dsDefault: TDataSource
    Left = 168
    Top = 112
  end
end
