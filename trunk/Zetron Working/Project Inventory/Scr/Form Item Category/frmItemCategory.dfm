inherited fmItemCategory: TfmItemCategory
  Caption = 'Kelompok Barang'
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
        object lblItemCategoryId: TLabel
          Left = 8
          Top = 6
          Width = 67
          Height = 13
          Caption = 'Kode Kategori'
          Transparent = True
        end
        object lblItemCategoryName: TLabel
          Left = 8
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Nama Kategori'
          Transparent = True
        end
        object dbeItemCategoryId: TcxDBTextEdit
          Left = 88
          Top = 6
          DataBinding.DataField = 'ItemCategoryId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 185
        end
        object dbeItemCategoryName: TcxDBTextEdit
          Left = 88
          Top = 24
          DataBinding.DataField = 'ItemCategoryName'
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
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayItemCategoryId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ItemCategoryId'
          end
          object cgvPrevDisplayItemCategoryName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ItemCategoryName'
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryItemCategory
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
