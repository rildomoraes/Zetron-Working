inherited fmReportCategory: TfmReportCategory
  Caption = 'Kategori Report'
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
        object lblCountryName: TLabel
          Left = 8
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object dbeReportCategory: TcxDBTextEdit
          Left = 49
          Top = 5
          BeepOnEnter = False
          DataBinding.DataField = 'ReportCategoryName'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 185
        end
        object dbeFlagHide: TcxDBCheckBox
          Left = 49
          Top = 27
          Caption = 'Hide'
          DataBinding.DataField = 'FlagHide'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssInactive
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 81
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgCountrySetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 118
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 294
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDisplayReportCategoryId: TcxGridDBColumn
            DataBinding.FieldName = 'ReportCategoryId'
            Visible = False
            VisibleForCustomization = False
            Width = 114
          end
          object cgvPrevDisplayReportCategoryName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ReportCategoryName'
            Width = 109
          end
        end
        object cgCountrySetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryReportCategory
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
