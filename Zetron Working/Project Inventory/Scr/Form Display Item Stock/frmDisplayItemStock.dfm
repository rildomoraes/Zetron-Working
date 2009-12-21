inherited fmDisplayItemStock: TfmDisplayItemStock
  Caption = 'Info Stok'
  PixelsPerInch = 96
  TextHeight = 13
  object cgStokOnHand: TcxGrid [1]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 1
    object cgvStockOnHand: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsStockOnHand
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'endqty'
          Column = cgvStockOnHandendqty
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvStockOnHandwarehouseid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'warehouseid'
        Visible = False
      end
      object cgvStockOnHandwarehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvStockOnHandendqty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'endqty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgvStockOnHandValue: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      DataController.DataSource = dsPrevStockOnHandValue
      DataController.DetailKeyFieldNames = 'ItemId'
      DataController.MasterKeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvStockOnHandValueWarehouseId: TcxGridDBColumn
        Caption = 'Kode Gudang'
        DataBinding.FieldName = 'WarehouseId'
        Visible = False
        Options.Filtering = False
      end
      object cgvStockOnHandValueItemId: TcxGridDBColumn
        Caption = 'Kode Item'
        DataBinding.FieldName = 'ItemId'
        Visible = False
        Options.Editing = False
      end
      object cgvStockOnHandValueItem: TcxGridDBColumn
        DataBinding.FieldName = 'Item'
        Visible = False
        Options.Filtering = False
      end
      object cgvStockOnHandValueDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'Date'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Options.CellMerging = True
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvStockOnHandValueQty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgStokOnHandLevel1: TcxGridLevel
      GridView = cgvStockOnHand
      object cgStokOnHandLevel2: TcxGridLevel
        GridView = cgvStockOnHandValue
      end
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 24
      Height = 13
      Caption = 'Kode'
      Transparent = True
    end
    object Label2: TLabel
      Left = 239
      Top = 5
      Width = 27
      Height = 13
      Caption = 'Nama'
      Transparent = True
    end
    object dbeItemIdExternal: TcxDBTextEdit
      Left = 35
      Top = 3
      BeepOnEnter = False
      DataBinding.DataField = 'ItemIdExternal'
      DataBinding.DataSource = dsPrevItem
      TabOrder = 0
      Visible = False
      Width = 185
    end
    object dbeItemName: TcxDBTextEdit
      Left = 272
      Top = 3
      BeepOnEnter = False
      DataBinding.DataField = 'ItemName'
      DataBinding.DataSource = dsPrevItem
      TabOrder = 1
      Visible = False
      Width = 297
    end
  end
  object dsPrevItem: TDataSource [6]
    DataSet = qryPrevItem
    Left = 200
    Top = 144
  end
  object dsPrevStockOnHandValue: TDataSource [7]
    DataSet = qryPrevStockOnHandValue
    Left = 200
    Top = 208
  end
  object dsStockOnHand: TDataSource [8]
    DataSet = qryPrevStockOnHand
    Left = 200
    Top = 176
  end
  object qryPrevItem: TUniQuery [9]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.*,'
      '  (select sum(b.EndQty) from StockOnHand b'
      '  where b.ItemId = a.ItemId) as TotalQty,'
      '  (select sum(c.EndValue) from StockOnHand c'
      '  where c.ItemId = a.ItemId) as TotalValue,'
      '  (select'
      '     case'
      '       when sum(EndQty) <> 0 then sum(EndValue) / sum(EndQty)'
      '       else 0'
      '     end'
      '  from StockOnHand d'
      '  where d.ItemId = a.ItemId) as TotalPriceAVG'
      'from Item a'
      'where a.ItemId = :ItemId')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevStockOnHand: TUniQuery [10]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.WarehouseName, a.*,'
      '  (case'
      '    when a.EndQty <> 0 then a.EndValue / a.EndQty'
      '    else 0'
      '  end) as PriceAVG'
      'from StockOnHand a'
      'left join Warehouse b on a.WarehouseId = b.WarehouseId'
      'where ItemId = :ItemId'
      'order by b.WarehouseName')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevStockOnHandValue: TUniQuery [11]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*,  (a.Price * a.Qty) as Value'
      'from StockOnHandValue a'
      'where a.ItemId = :ItemId'
      'and a.Qty <> 0'
      'order by a.WarehouseId')
    Left = 168
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
