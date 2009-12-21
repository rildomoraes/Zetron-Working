inherited fmDisplayItemPrice: TfmDisplayItemPrice
  Caption = 'Info Harga'
  ClientHeight = 516
  ClientWidth = 742
  ExplicitWidth = 750
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 742
    ExplicitWidth = 742
  end
  object cgSalePrice: TcxGrid [1]
    Left = 0
    Top = 397
    Width = 742
    Height = 119
    Align = alBottom
    TabOrder = 2
    object cgvPrevSalePrice: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSalePrice
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSalePricecustomerid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'customerid'
        Visible = False
      end
      object cgvPrevSalePricecustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'customername'
      end
      object cgvPrevSalePriceprice: TcxGridDBColumn
        Caption = 'Harga Jual'
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevSalePricediscitem: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'discitem'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevSalePricediscitemprice: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'discitemprice'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvPrevSalePricelastsi: TcxGridDBColumn
        Caption = 'Nota Terakhir'
        DataBinding.FieldName = 'lastsi'
        Visible = False
      end
      object cgvPrevSalePricesalesinvoiceidinternal: TcxGridDBColumn
        Caption = 'Nota Internal'
        DataBinding.FieldName = 'salesinvoiceidinternal'
        Visible = False
      end
      object cgvPrevSalePricesalesinvoicedate: TcxGridDBColumn
        Caption = 'Tgl Nota'
        DataBinding.FieldName = 'salesinvoicedate'
        Visible = False
        SortIndex = 0
        SortOrder = soDescending
      end
      object cgvPrevSalePriceqty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvPrevSalePriceItemText: TcxGridDBColumn
        Caption = 'Memo Barang'
        DataBinding.FieldName = 'itemtext'
        Visible = False
      end
    end
    object cgSalePriceLevel1: TcxGridLevel
      GridView = cgvPrevSalePrice
    end
  end
  object cgPurchasePrice: TcxGrid [2]
    Left = 0
    Top = 278
    Width = 742
    Height = 119
    Align = alBottom
    TabOrder = 1
    object cgvPrevPurchasePrice: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchasePrice
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPurchasePricevendorid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vendorid'
        Visible = False
      end
      object cgvPrevPurchasePricevendorname: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'vendorname'
      end
      object cgvPrevPurchasePriceprice: TcxGridDBColumn
        Caption = 'Harga Beli'
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevPurchasePricediscitem: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'discitem'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevPurchasePricediscitemprice: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'discitemprice'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvPrevPurchasePricelastpi: TcxGridDBColumn
        Caption = 'Nota Terakhir'
        DataBinding.FieldName = 'lastpi'
        Visible = False
      end
      object cgvPrevPurchasePricevendorpurchaseinvoiceid: TcxGridDBColumn
        Caption = 'Nota External'
        DataBinding.FieldName = 'vendorpurchaseinvoiceid'
        Visible = False
      end
      object cgvPrevPurchasePricepurchaseinvoicedate: TcxGridDBColumn
        Caption = 'Tgl Nota'
        DataBinding.FieldName = 'purchaseinvoicedate'
        Visible = False
        SortIndex = 0
        SortOrder = soDescending
      end
      object cgvPrevPurchasePriceqty: TcxGridDBColumn
        Caption = 'Qty Nota'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvPrevPurchasePriceItemText: TcxGridDBColumn
        Caption = 'Memo Barang'
        DataBinding.FieldName = 'itemtext'
        Visible = False
      end
    end
    object cgPurchasePriceLevel1: TcxGridLevel
      GridView = cgvPrevPurchasePrice
    end
  end
  object cgStokOnHand: TcxGrid [3]
    Left = 0
    Top = 75
    Width = 742
    Height = 203
    Align = alClient
    TabOrder = 4
    object cgvStockOnHand: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsStockOnHand
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'endqty'
          Column = cgvStockOnHandendqty
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'endvalue'
          Column = cgvStockOnHandendvalue
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
      object cgvStockOnHandPriceAVG: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'PriceAVG'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvStockOnHandendvalue: TcxGridDBColumn
        Caption = 'Nilai'
        DataBinding.FieldName = 'endvalue'
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
      object cgvStockOnHandValuePrice: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'Price'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
      end
      object cgvStockOnHandValueValue: TcxGridDBColumn
        Caption = 'Nilai'
        DataBinding.FieldName = 'Value'
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
  object pnlCustom: TPanel [4]
    Left = 0
    Top = 50
    Width = 742
    Height = 25
    Align = alTop
    TabOrder = 3
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
  object dsPrevItem: TDataSource [7]
    DataSet = qryPrevItem
    Left = 200
    Top = 144
  end
  object dsStockOnHand: TDataSource [8]
    DataSet = qryPrevStockOnHand
    Left = 200
    Top = 176
  end
  object dsPrevStockOnHandValue: TDataSource [9]
    DataSet = qryPrevStockOnHandValue
    Left = 200
    Top = 208
  end
  object dsPrevPurchasePrice: TDataSource [10]
    DataSet = qryPrevPurchasePrice
    Left = 200
    Top = 240
  end
  object dsPrevSalePrice: TDataSource [11]
    DataSet = qryPrevSalePrice
    Left = 200
    Top = 272
  end
  object qryPrevItem: TUniQuery [12]
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
  object qryPrevStockOnHand: TUniQuery [13]
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
  object qryPrevStockOnHandValue: TUniQuery [14]
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
  object qryPrevPurchasePrice: TUniQuery [15]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.VendorId, b.VendorName,'
      
        '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastPI, c.VendorPurcha' +
        'seInvoiceId,'
      '  case'
      
        '    when not (c.PurchaseInvoiceDate is null) then c.PurchaseInvo' +
        'iceDate else a.DateModified'
      '  end as PurchaseInvoiceDate, '
      '  d.Qty, d.ItemText'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join PurchaseInvoiceHd c on a.LastPI = c.PurchaseInvoiceId'
      'left join PurchaseInvoiceDt d on (a.LastPI = d.PurchaseInvoiceId'
      '  and a.ItemId = d.ItemId and a.LastPINo = d.No)'
      'where a.VendorId like :VendorId'
      'and a.ItemId = :ItemId'
      'order by c.PurchaseInvoiceDate desc, a.LastPI desc, b.VendorName')
    Left = 168
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevSalePrice: TUniQuery [16]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.CustomerId, b.CustomerName,'
      
        '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastSI, c.SalesInvoice' +
        'IdInternal,'
      '  case'
      
        '    when not (c.SalesInvoiceDate is null) then c.SalesInvoiceDat' +
        'e else a.DateModified'
      '  end as SalesInvoiceDate, '
      '  d.Qty, d.ItemText'
      'from SalePrice a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'left join SalesInvoiceHd c on a.LastSI = c.SalesInvoiceId'
      'left join SalesInvoiceDt d on (a.LastSI = d.SalesInvoiceId'
      '  and a.ItemId = d.ItemId and a.LastSINo = d.No)'
      'where a.CustomerId like :CustomerId'
      'and a.ItemId = :ItemId'
      'order by c.SalesInvoiceDate desc, a.LastSI desc, b.CustomerName')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end
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
