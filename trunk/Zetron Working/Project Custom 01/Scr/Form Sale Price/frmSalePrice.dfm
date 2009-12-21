inherited fmSalePrice: TfmSalePrice
  Caption = 'Harga Jual'
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
        object lblIdSupplies: TLabel
          Left = 8
          Top = 11
          Width = 62
          Height = 13
          Caption = 'Kode Barang'
          Transparent = True
        end
        object lblSuppliesName: TLabel
          Left = 8
          Top = 29
          Width = 65
          Height = 13
          Caption = 'Nama Barang'
          Transparent = True
        end
        object lblSuppliesType: TLabel
          Left = 8
          Top = 47
          Width = 58
          Height = 13
          Caption = 'Tipe Barang'
          Transparent = True
        end
        object lblIdCustomer: TLabel
          Left = 8
          Top = 65
          Width = 44
          Height = 13
          Caption = 'Customer'
          Transparent = True
        end
        object lblSalePrice: TLabel
          Left = 8
          Top = 83
          Width = 51
          Height = 13
          Caption = 'Harga Jual'
          Transparent = True
        end
        object lblSaleDisc: TLabel
          Left = 8
          Top = 101
          Width = 21
          Height = 13
          Caption = 'Disc'
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 8
          Top = 119
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object Label1: TLabel
          Left = 159
          Top = 101
          Width = 8
          Height = 13
          Caption = '%'
          Transparent = True
        end
        object dblcIdSupplies: TcxDBExtLookupComboBox
          Left = 96
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSupplies'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
          TabOrder = 0
          Width = 201
        end
        object dblcSuppliesName: TcxDBExtLookupComboBox
          Left = 96
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSupplies'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
          TabOrder = 1
          Width = 201
        end
        object dblcSuppliesType: TcxDBExtLookupComboBox
          Left = 96
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSupplies'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
          TabOrder = 2
          Width = 201
        end
        object dblcIdCustomer: TcxDBExtLookupComboBox
          Left = 96
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCustomer'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvCustomer
          Properties.KeyFieldNames = 'vcIdCustomer'
          Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          TabOrder = 3
          Width = 201
        end
        object dbePrice: TcxDBCurrencyEdit
          Left = 96
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'dcPrice'
          DataBinding.DataSource = dsDefault
          Properties.DisplayFormat = ',0.00;(,0.00)'
          TabOrder = 4
          Width = 121
        end
        object dbeSaleDisc: TcxDBCurrencyEdit
          Left = 96
          Top = 98
          BeepOnEnter = False
          DataBinding.DataField = 'dcDiscItem'
          DataBinding.DataSource = dsDefault
          Properties.DisplayFormat = ',0.00;(,0.00)'
          TabOrder = 5
          Width = 57
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 96
          Top = 116
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 201
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
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvSalePrice: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvSalePricevcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplies
            Properties.KeyFieldNames = 'vcIdSupplies'
            Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
            Width = 98
          end
          object cgvSalePricevcIdSupplies2: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcIdSupplies'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplies
            Properties.KeyFieldNames = 'vcIdSupplies'
            Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
          end
          object cgvSalePricevcIdSupplies3: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'vcIdSupplies'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplies
            Properties.KeyFieldNames = 'vcIdSupplies'
            Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
          end
          object cgvSalePricevcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
            Width = 208
          end
          object cgvSalePricedcSalePrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 115
          end
          object cgvSalePricedcSaleDisc: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscItem'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 103
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvSalePrice
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qrySalePrice
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qrySalePrice: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySalePriceBeforePost
    CommandText = 'select * from tbIMSalePrice'
    Parameters = <>
    Left = 136
    Top = 112
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [7]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [8]
  end
end
