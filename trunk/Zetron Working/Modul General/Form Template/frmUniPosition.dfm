inherited FormUniPosition: TFormUniPosition
  Caption = 'FormUniPosition'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer1: TBevel
      Left = 97
      ExplicitLeft = 97
    end
    object btnReset: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actReset
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    object actReset: TAction
      Caption = 'Rese&t'
      Hint = 'Reset (Alt+T)'
      ImageIndex = 4
      OnExecute = actResetExecute
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Template.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 232
    Top = 80
  end
end
