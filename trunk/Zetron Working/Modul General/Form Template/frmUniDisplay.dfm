inherited FormUniDisplay: TFormUniDisplay
  Caption = 'FormUniDisplay'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer1: TBevel
      Left = 193
      ExplicitLeft = 187
      ExplicitTop = 0
    end
    object btnPrint: TcxButton
      Left = 145
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPrint
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  inherited ActionList1: TActionList
    object actPrint: TAction
      Caption = '&Print'
      Hint = 'Print (Alt+P)'
      ImageIndex = 3
      OnExecute = actPrintExecute
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 168
    Top = 112
    object dxComponentPrinter1Link1: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 200
      PrinterPage.Header = 100
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8300
      PrinterPage.PageSize.Y = 11700
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.Caption = 'Stok'
      ReportDocument.CreationDate = 39500.377162719910000000
      BuiltInReportLink = True
    end
  end
end
