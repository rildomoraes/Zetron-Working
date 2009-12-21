inherited FormUniMasterEx: TFormUniMasterEx
  Caption = 'FormUniMasterEx'
  ClientHeight = 366
  ExplicitHeight = 400
  DesignSize = (
    592
    366)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer1: TBevel
      Left = 193
      ExplicitLeft = 193
    end
    inherited bvlSpacer2: TBevel
      Left = 347
      ExplicitLeft = 347
    end
    inherited bvlSpacer3: TBevel
      Left = 453
      ExplicitLeft = 453
    end
    inherited bvlSpacer4: TBevel
      Left = 559
      ExplicitLeft = 559
    end
    inherited btnPrev: TcxButton
      Left = 463
      TabOrder = 9
      ExplicitLeft = 463
    end
    inherited btnNext: TcxButton
      Left = 511
      TabOrder = 10
      ExplicitLeft = 511
    end
    inherited btnInsert: TcxButton
      Left = 203
      TabOrder = 4
      ExplicitLeft = 203
    end
    inherited btnEdit: TcxButton
      Left = 251
      TabOrder = 5
      ExplicitLeft = 251
    end
    inherited btnPost: TcxButton
      Left = 357
      TabOrder = 7
      ExplicitLeft = 357
    end
    inherited btnCancel: TcxButton
      Left = 405
      TabOrder = 8
      ExplicitLeft = 405
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
    object btnDelete: TcxButton
      Left = 299
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actDelete
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 6
    end
  end
  inherited dxDockSite1: TdxDockSite
    Height = 316
    ExplicitHeight = 316
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 316
      ExplicitHeight = 316
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 316
        ExplicitHeight = 316
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 316
        ExplicitHeight = 316
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited ActionList1: TActionList
    object actDelete: TAction [7]
      Category = 'Dataset'
      Caption = 'Delete'
      Hint = 'Delete'
      ImageIndex = 7
      ShortCut = 16430
      OnExecute = actDeleteExecute
    end
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
    Left = 200
    Top = 112
    object dxComponentPrinter1Link1: TdxGridReportLink
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      BuiltInReportLink = True
    end
  end
end
