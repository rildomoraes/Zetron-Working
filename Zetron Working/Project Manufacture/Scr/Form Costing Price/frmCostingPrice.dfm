inherited fmCostingPrice: TfmCostingPrice
  Caption = 'Harga Costing'
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
        object lblItemId: TLabel
          Left = 8
          Top = 6
          Width = 34
          Height = 13
          Caption = 'Barang'
        end
        object lblCurrencyMaster: TLabel
          Left = 8
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Mata Uang'
        end
        object Label3: TLabel
          Left = 8
          Top = 42
          Width = 29
          Height = 13
          Caption = 'Harga'
        end
        object lblUnitMeasure: TLabel
          Left = 178
          Top = 42
          Width = 5
          Height = 13
          Caption = '/'
        end
        object lblPriceLuas: TLabel
          Left = 21
          Top = 80
          Width = 64
          Height = 13
          Caption = 'Harga per m2'
        end
        object lblPriceVolume: TLabel
          Left = 21
          Top = 98
          Width = 64
          Height = 13
          Caption = 'Harga per m3'
        end
        object lblPriceKg: TLabel
          Left = 21
          Top = 116
          Width = 62
          Height = 13
          Caption = 'Harga per kg'
        end
        object lblPriceConvert: TLabel
          Left = 8
          Top = 61
          Width = 50
          Height = 13
          Caption = 'Konversi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEqual: TLabel
          Left = 272
          Top = 42
          Width = 3
          Height = 13
          Caption = '('
        end
        object Label1: TLabel
          Left = 348
          Top = 43
          Width = 3
          Height = 13
          Caption = ')'
        end
        object dbeItemId: TcxDBExtLookupComboBox
          Left = 70
          Top = 4
          DataBinding.DataField = 'ItemId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevItem
          Properties.KeyFieldNames = 'ItemId'
          Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
          TabOrder = 0
          Width = 280
        end
        object dbeCurrencyMaster: TcxDBExtLookupComboBox
          Left = 70
          Top = 22
          DataBinding.DataField = 'CurrencyId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
          TabOrder = 1
          Width = 166
        end
        object dbeCostingPrice: TcxDBCalcEdit
          Left = 70
          Top = 40
          DataBinding.DataField = 'PriceQty'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 102
        end
        object dbeUnitMeasure: TcxDBExtLookupComboBox
          Left = 279
          Top = 40
          DataBinding.DataField = 'ItemId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevItemWithMeasure
          Properties.KeyFieldNames = 'ItemId'
          Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureUnitMeasure
          TabOrder = 4
          Width = 66
        end
        object lcbStatusDimensi: TcxExtLookupComboBox
          Left = 189
          Top = 40
          Properties.View = dmInventory.cgvPrevStatusDimensi
          Properties.KeyFieldNames = 'StatusDimensi'
          Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
          EditValue = '0'
          TabOrder = 3
          Width = 77
        end
        object dbePriceM2: TcxDBCurrencyEdit
          Left = 95
          Top = 78
          DataBinding.DataField = 'PriceM2'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 121
        end
        object dbePriceM3: TcxDBCurrencyEdit
          Left = 95
          Top = 96
          DataBinding.DataField = 'PriceM3'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 121
        end
        object dbePriceKg: TcxDBCurrencyEdit
          Left = 95
          Top = 114
          DataBinding.DataField = 'PriceKg'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgCostingPrice: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvCostingPrice: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvCostingPriceItemId: TcxGridDBColumn
            Caption = 'Barang'
            DataBinding.FieldName = 'ItemId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
          end
          object cgvCostingPriceCurrencyId: TcxGridDBColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'CurrencyId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCurrencyMaster
            Properties.KeyFieldNames = 'currencyid'
            Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
          end
          object cgvCostingPriceCostingPrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'PriceQty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgCostingPriceLevel1: TcxGridLevel
          GridView = cgvCostingPrice
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Top = 56
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qryCostingPrice
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Top = 56
  end
  object qryCostingPrice: TADOQuery [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryCostingPriceBeforeOpen
    BeforePost = qryCostingPriceBeforePost
    OnNewRecord = qryCostingPriceNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from CostingPrice')
    Left = 136
    Top = 88
  end
  object qryGetItemInfo: TADOQuery [7]
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select M2, M3, Berat'
      'from Item'
      'where ItemId = :ItemId')
    Left = 136
    Top = 120
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [8]
    Top = 88
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [9]
    Top = 56
  end
end
