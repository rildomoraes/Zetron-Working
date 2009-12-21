inherited fmSuppliesCategory: TfmSuppliesCategory
  Caption = 'Kategori Barang'
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
        object lblIdSuppliesCategory: TLabel
          Left = 8
          Top = 10
          Width = 39
          Height = 13
          Caption = 'Kategori'
          Transparent = True
        end
        object lblCode: TLabel
          Left = 8
          Top = 28
          Width = 67
          Height = 13
          Caption = 'Kode Kategori'
          Transparent = True
        end
        object dbeIdSuppliesCategory: TcxDBTextEdit
          Left = 81
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSuppliesCategory'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 185
        end
        object dbeIdSuppliesCategoryCode: TcxDBTextEdit
          Left = 81
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'vcSuppliesCategoryCode'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 89
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 607
        ExplicitHeight = 352
        object cgvSuppliesCategory: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvSuppliesCategoryvcIdSuppliesCategory: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'vcIdSuppliesCategory'
            Width = 129
          end
          object cgvSuppliesCategoryvcSuppliesCategoryCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcSuppliesCategoryCode'
            Options.Filtering = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvSuppliesCategory
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qrySuppliesCategory
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
