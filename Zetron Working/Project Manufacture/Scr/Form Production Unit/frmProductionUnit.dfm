inherited fmProductionUnit: TfmProductionUnit
  Caption = 'Unit Produksi'
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
        object lblCode: TLabel
          Left = 8
          Top = 25
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 7
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 43
          Width = 38
          Height = 13
          Caption = 'Gudang'
          Transparent = True
        end
        object dbeProductionUnitName: TcxDBTextEdit
          Left = 66
          Top = 22
          DataBinding.DataField = 'ProductionUnitName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbeProductionUnitCode: TcxDBTextEdit
          Left = 66
          Top = 4
          DataBinding.DataField = 'ProductionUnitCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 159
        end
        object dbeWarehouseId: TcxDBExtLookupComboBox
          Left = 66
          Top = 40
          DataBinding.DataField = 'WarehouseId'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
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
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayProductionUnitId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ProductionUnitId'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayProductionUnitCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ProductionUnitCode'
          end
          object cgvPrevDisplayProductionUnitName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ProductionUnitName'
          end
          object cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'WarehouseId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
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
    DataSet = dmManufacture.qryProductionUnit
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
