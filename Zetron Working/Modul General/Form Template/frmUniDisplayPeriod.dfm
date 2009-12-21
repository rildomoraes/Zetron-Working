inherited FormUniDisplayPeriod: TFormUniDisplayPeriod
  Caption = 'FormUniDisplayPeriod'
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCustom: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 3
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 126
      Top = 3
      BeepOnEnter = False
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
