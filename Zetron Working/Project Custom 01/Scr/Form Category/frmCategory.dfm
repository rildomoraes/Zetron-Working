inherited fmCategory: TfmCategory
  Caption = 'Kategori'
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
        object lblIdCategory: TLabel
          Left = 8
          Top = 9
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblCategoryName: TLabel
          Left = 8
          Top = 27
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object dbeIdCategory: TcxDBTextEdit
          Left = 42
          Top = 6
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCategory'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeCategoryName: TcxDBTextEdit
          Left = 42
          Top = 24
          BeepOnEnter = False
          DataBinding.DataField = 'vcCategoryName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgCategorySetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvCategory: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvCategoryvcIdCategory: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdCategory'
            Width = 101
          end
          object cgvCategoryvcCategoryName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcCategoryName'
            Width = 109
          end
        end
        object cgCategorySetupLevel1: TcxGridLevel
          GridView = cgvCategory
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qryCategory
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
