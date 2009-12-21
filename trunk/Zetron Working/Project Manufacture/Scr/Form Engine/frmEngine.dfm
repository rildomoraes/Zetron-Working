inherited fmEngine: TfmEngine
  Caption = 'Mesin'
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
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 42
          Width = 63
          Height = 13
          Caption = 'Unit Produksi'
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 60
          Width = 46
          Height = 13
          Caption = 'Kapasitas'
          Transparent = True
        end
        object dbeEngineName: TcxDBTextEdit
          Left = 82
          Top = 21
          DataBinding.DataField = 'EngineName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbeEngineCode: TcxDBTextEdit
          Left = 82
          Top = 3
          DataBinding.DataField = 'EngineCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 143
        end
        object dbeProductionUnitId: TcxDBExtLookupComboBox
          Left = 82
          Top = 39
          DataBinding.DataField = 'ProductionUnitId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmManufacture.cgvProductionUnit
          Properties.KeyFieldNames = 'ProductionUnitId'
          Properties.ListFieldItem = dmManufacture.cgvProductionUnitProductionUnitName
          TabOrder = 2
          Width = 185
        end
        object dbeKapasitas: TcxDBCalcEdit
          Left = 82
          Top = 57
          DataBinding.DataField = 'Kapasitas'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 79
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
          object cgvPrevDisplayEngineId: TcxGridDBColumn
            DataBinding.FieldName = 'EngineId'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayEngineCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'EngineCode'
          end
          object cgvPrevDisplayEngineName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'EngineName'
          end
          object cgvPrevDisplayProductionUnitId: TcxGridDBColumn
            Caption = 'Unit Produksi'
            DataBinding.FieldName = 'ProductionUnitId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmManufacture.cgvProductionUnit
            Properties.KeyFieldNames = 'ProductionUnitId'
            Properties.ListFieldItem = dmManufacture.cgvProductionUnitProductionUnitName
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
    DataSet = dmManufacture.qryEngine
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
