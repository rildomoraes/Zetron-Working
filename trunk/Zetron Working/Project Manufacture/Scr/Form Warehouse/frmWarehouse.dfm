inherited fmWarehouse: TfmWarehouse
  Caption = 'Gudang'
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
        object lblIdWarehouse: TLabel
          Left = 8
          Top = 10
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblWarehouseName: TLabel
          Left = 8
          Top = 28
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblContactPerson: TLabel
          Left = 8
          Top = 46
          Width = 73
          Height = 13
          Caption = 'Contact Person'
          Transparent = True
        end
        object lblAddress: TLabel
          Left = 8
          Top = 64
          Width = 32
          Height = 13
          Caption = 'Alamat'
          Transparent = True
        end
        object lblIdCity: TLabel
          Left = 8
          Top = 82
          Width = 22
          Height = 13
          Caption = 'Kota'
          Transparent = True
        end
        object lblNotes: TLabel
          Left = 8
          Top = 100
          Width = 28
          Height = 13
          Caption = 'Notes'
          Transparent = True
        end
        object dbeWarehouseId: TcxDBTextEdit
          Left = 96
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'WarehouseCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbchkInactive: TcxDBCheckBox
          Left = 183
          Top = 8
          Caption = 'Non Aktif'
          DataBinding.DataField = 'FlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 89
        end
        object dbeWarehouseName: TcxDBTextEdit
          Left = 96
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'WarehouseName'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 233
        end
        object dbeContactName: TcxDBTextEdit
          Left = 96
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'ContactName'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 233
        end
        object dbeAddress: TcxDBTextEdit
          Left = 96
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'Address'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 233
        end
        object dblcCityId: TcxDBExtLookupComboBox
          Left = 96
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'CityId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCity
          Properties.KeyFieldNames = 'CityId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          TabOrder = 5
          Width = 169
        end
        object dbmNotes: TcxDBMemo
          Left = 96
          Top = 98
          DataBinding.DataField = 'Memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Height = 83
          Width = 233
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
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
          OptionsView.GroupByBox = False
          object cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'WarehouseCode'
            Width = 64
          end
          object cgvPrevDisplayWarehouseName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'WarehouseName'
          end
          object cgvPrevDisplayContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'ContactPerson'
            Visible = False
          end
          object cgvPrevDisplayAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'Address'
            Visible = False
          end
          object cgvPrevDisplayCityId: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Visible = False
            Width = 60
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
    DataSet = dmInventory.qryWarehouse
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
