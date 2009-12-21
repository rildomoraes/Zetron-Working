inherited fmCurrency: TfmCurrency
  Caption = 'Mata Uang'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblIdOutlet: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblOutletName: TLabel
          Left = 8
          Top = 26
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object dbeCurrencyId: TcxDBTextEdit
          Left = 50
          Top = 6
          DataBinding.DataField = 'currencyid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeCurrencyName: TcxDBTextEdit
          Left = 50
          Top = 24
          DataBinding.DataField = 'currencyname'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 201
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDisplaycurrencyid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'currencyid'
          end
          object cgvPrevDisplaycurrencyname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'currencyname'
          end
          object cgvPrevDisplayflagfix: TcxGridDBColumn
            DataBinding.FieldName = 'flagfix'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmGlobal.qryCurrencyMaster
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
