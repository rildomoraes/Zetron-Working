inherited fmDisplayOrder: TfmDisplayOrder
  Caption = 'Display Order'
  PixelsPerInch = 96
  TextHeight = 13
  object pcOrder: TcxPageControl [1]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    ActivePage = tsPurchaseOrder
    Align = alClient
    TabOrder = 1
    OnChange = pcOrderChange
    ClientRectBottom = 286
    ClientRectLeft = 3
    ClientRectRight = 586
    ClientRectTop = 26
    object tsPurchaseOrder: TcxTabSheet
      Caption = 'PO'
      ImageIndex = 0
      object cgPO: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 260
        Align = alClient
        TabOrder = 0
        object cgvPO: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevItemOrderBalancePO
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPOitemitemcategoryname: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'itemcategoryname'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cgvPOitemidexternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
          end
          object cgvPOitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
          end
          object cgvPOitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
            Visible = False
          end
          object cgvPOtype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
            Visible = False
          end
          object cgvPOpoopeningqty: TcxGridDBColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'poopeningqty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPOpoqtyplus: TcxGridDBColumn
            Caption = 'Tambah'
            DataBinding.FieldName = 'poqtyplus'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPOpoqtyminus: TcxGridDBColumn
            Caption = 'Terkirim'
            DataBinding.FieldName = 'poqtyminus'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPOOutstandingPO: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'OutstandingPO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 70
          end
        end
        object cgPOLevel1: TcxGridLevel
          Caption = 'Order Pembelian'
          GridView = cgvPO
        end
      end
    end
    object tsPurchaseOrderDt: TcxTabSheet
      Caption = 'PO Detail'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgPODtPO: TcxGrid
        Left = 0
        Top = 0
        Width = 579
        Height = 169
        Align = alTop
        TabOrder = 0
        object cgvPODtPO: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPODt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'qty'
              Column = cgvPODtPOqty
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvPODtPOpurchaseorderdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchaseorderdate'
          end
          object cgvPODtPOpurchaseorderid: TcxGridDBColumn
            Caption = 'No PO'
            DataBinding.FieldName = 'purchaseorderid'
          end
          object cgvPODtPOvendorname: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorname'
          end
          object cgvPODtPOvendorpurchaseorderid: TcxGridDBColumn
            Caption = 'PO External'
            DataBinding.FieldName = 'vendorpurchaseorderid'
          end
          object cgvPODtPOqty: TcxGridDBColumn
            Caption = ' Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPODtPOprice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPODtPOqtyoutstanding: TcxGridDBColumn
            Caption = 'Qty Sisa'
            DataBinding.FieldName = 'qtyoutstanding'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgPODtPOLevel1: TcxGridLevel
          Caption = 'Order Pembelian Detail'
          GridView = cgvPODtPO
        end
      end
      object cgPODtPI: TcxGrid
        Left = 0
        Top = 173
        Width = 579
        Height = 83
        Align = alClient
        TabOrder = 1
        object cgvPODtPI: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPIDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'qty'
              Column = cgvPODtPIqty
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvPODtPIpurchaseinvoicedate: TcxGridDBColumn
            Caption = 'Tangal'
            DataBinding.FieldName = 'purchaseinvoicedate'
          end
          object cgvPODtPIpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'purchaseinvoiceid'
          end
          object cgvPODtPIvendorpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota External'
            DataBinding.FieldName = 'vendorpurchaseinvoiceid'
          end
          object cgvPODtPIpurchaseorderid: TcxGridDBColumn
            Caption = 'No PO'
            DataBinding.FieldName = 'purchaseorderid'
          end
          object cgvPODtPIvendorpurchaseorderid: TcxGridDBColumn
            Caption = 'PO External'
            DataBinding.FieldName = 'vendorpurchaseorderid'
          end
          object cgvPODtPIqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgPODtPILevel1: TcxGridLevel
          Caption = 'Pembelian Detail'
          GridView = cgvPODtPI
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 169
        Width = 4
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salTop
        Control = cgPODtPO
      end
    end
    object tsSalesOrder: TcxTabSheet
      Caption = 'SO'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgSO: TcxGrid
        Left = 0
        Top = 0
        Width = 579
        Height = 256
        Align = alClient
        TabOrder = 0
        object cgvSO: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevItemOrderBalanceSO
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvSOitemitemcategoryname: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'itemcategoryname'
          end
          object cgvSOitemidexternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
          end
          object cgvSOitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
          end
          object cgvSOitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
          end
          object cgvSOtype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
          end
          object cgvSOsoopeningqty: TcxGridDBColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'soopeningqty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvSOsoqtyplus: TcxGridDBColumn
            Caption = 'Tambah'
            DataBinding.FieldName = 'soqtyplus'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvSOsoqtyminus: TcxGridDBColumn
            Caption = 'Terkirim'
            DataBinding.FieldName = 'soqtyminus'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvSOOutstandingSO: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'OutstandingSO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 70
          end
        end
        object cgSOLevel1: TcxGridLevel
          Caption = 'Order Penjualan'
          GridView = cgvSO
        end
      end
    end
    object tsSalesOrderDt: TcxTabSheet
      Caption = 'SO Detail'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgSODtSO: TcxGrid
        Left = 0
        Top = 0
        Width = 579
        Height = 169
        Align = alTop
        TabOrder = 0
        object cgvSODtSO: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSODt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'qty'
              Column = cgvSODtSOqty
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvSODtSOsalesorderdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salesorderdate'
          end
          object cgvSODtSOsalesorderid: TcxGridDBColumn
            Caption = 'No SO'
            DataBinding.FieldName = 'salesorderid'
          end
          object cgvSODtSOcustomername: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customername'
          end
          object cgvSODtSOcustomersalesorderid: TcxGridDBColumn
            Caption = 'SO Internal'
            DataBinding.FieldName = 'customersalesorderid'
          end
          object cgvSODtSOqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvSODtSOprice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvSODtSOqtyoutstanding: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'qtyoutstanding'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgSODtSOLevel1: TcxGridLevel
          Caption = 'Order Penjualan Detail'
          GridView = cgvSODtSO
        end
      end
      object cgSODtSI: TcxGrid
        Left = 0
        Top = 173
        Width = 579
        Height = 83
        Align = alClient
        TabOrder = 1
        object cgvSODtSI: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSIDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'qty'
              Column = cgvSODtSIqty
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvSODtSIsalesinvoicedate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salesinvoicedate'
          end
          object cgvSODtSIsalesinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'salesinvoiceid'
          end
          object cgvSODtSIsalesinvoiceidinternal: TcxGridDBColumn
            Caption = 'Nota Internal'
            DataBinding.FieldName = 'salesinvoiceidinternal'
          end
          object cgvSODtSIsalesorderid: TcxGridDBColumn
            Caption = 'No SO'
            DataBinding.FieldName = 'salesorderid'
            Width = 124
          end
          object cgvSODtSIcustomersalesorderid: TcxGridDBColumn
            Caption = 'SO Internal'
            DataBinding.FieldName = 'customersalesorderid'
          end
          object cgvSODtSIqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgSODtSILevel1: TcxGridLevel
          Caption = 'Penjualan Detail'
          GridView = cgvSODtSI
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 169
        Width = 4
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salTop
        Control = cgSODtSO
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
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbYear: TcxComboBox
      Left = 49
      Top = 3
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbYear'
      Width = 70
    end
  end
  object dsPrevItemOrderBalancePO: TDataSource [6]
    DataSet = qryPrevItemOrderBalancePO
    Left = 200
    Top = 144
  end
  object dsPrevPODt: TDataSource [7]
    DataSet = qryPrevPODt
    Left = 296
    Top = 144
  end
  object dsPrevPIDt: TDataSource [8]
    DataSet = qryPrevPIDt
    Left = 296
    Top = 176
  end
  object dsPrevItemOrderBalanceSO: TDataSource [9]
    DataSet = qryPrevItemOrderBalanceSO
    Left = 392
    Top = 144
  end
  object dsPrevSODt: TDataSource [10]
    DataSet = qryPrevSODt
    Left = 488
    Top = 144
  end
  object dsPrevSIDt: TDataSource [11]
    DataSet = qryPrevSIDt
    Left = 488
    Top = 176
  end
  object qryPrevItemOrderBalancePO: TUniQuery [12]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ItemId, b.ItemCategoryId, b.ItemIdExternal, '
      '  b.ItemName, b.ItemNameChinese, b.Type,'
      '  a.POOpeningQty, a.POQtyPlus, a.POQtyMinus,'
      
        '  (a.POOpeningQty + a.POQtyPlus - a.POQtyMinus) as OutstandingPO' +
        ','
      '  c.ItemCategoryName'
      'from ItemOrderBalance a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join ItemCategory c on b.ItemCategoryId = c.ItemCategoryId'
      'where Year = :Year'
      'and (a.POOpeningQty + a.POQtyPlus) <> 0')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end>
  end
  object qryPrevPODt: TUniQuery [13]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.PurchaseOrderDate, a.PurchaseOrderId, '
      '  b.vendorpurchaseorderid, a.Qty, a.QtyOutstanding, a.Price,'
      '  c.VendorName'
      'from PurchaseOrderDt a'
      
        'left join PurchaseOrderHd b on a.PurchaseOrderId = b.PurchaseOrd' +
        'erId'
      'left join Vendor c on b.VendorId = c.VendorId'
      'where extract(year from b.PurchaseOrderDate) = :Year'
      'and a.ItemId = :ItemId')
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevPIDt: TUniQuery [14]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.PurchaseInvoiceDate, a.PurchaseInvoiceId, '
      '  b.vendorpurchaseinvoiceid, a.PurchaseOrderId, '
      '  c.VendorPurchaseOrderId, a.Qty '
      'from PurchaseInvoiceDt a'
      
        'left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.Purchas' +
        'eInvoiceId'
      
        'left join PurchaseOrderHd c on a.PurchaseOrderId = c.PurchaseOrd' +
        'erId'
      'where extract(year from b.PurchaseInvoiceDate) = :Year'
      'and not (a.PurchaseOrderId is null)'
      'and a.ItemId = :ItemId')
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevItemOrderBalanceSO: TUniQuery [15]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ItemId, b.ItemCategoryId, b.ItemIdExternal, '
      '  b.ItemName, b.ItemNameChinese, b.Type,'
      '  a.SOOpeningQty, a.SOQtyPlus, a.SOQtyMinus,'
      
        '  (a.SOOpeningQty + a.SOQtyPlus - a.SOQtyMinus) as OutstandingSO' +
        ','
      '  c.ItemCategoryName'
      'from ItemOrderBalance a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join ItemCategory c on b.ItemCategoryId = c.ItemCategoryId'
      'where Year = :Year'
      'and (a.SOOpeningQty + a.SOQtyPlus) <> 0')
    Left = 360
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end>
  end
  object qryPrevSODt: TUniQuery [16]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.SalesOrderDate, a.SalesOrderId, '
      '  b.CustomerSalesOrderId, a.Qty, a.QtyOutstanding, a.Price,'
      '  c.CustomerName'
      'from SalesOrderDt a'
      'left join SalesOrderHd b on a.SalesOrderId = b.SalesOrderId'
      'left join Customer c on b.CustomerId = c.CustomerId'
      'where extract(year from b.SalesOrderDate) = :Year'
      'and a.ItemId = :ItemId')
    Left = 456
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevSIDt: TUniQuery [17]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.SalesInvoiceDate, a.SalesInvoiceId, '
      '  b.SalesInvoiceIdInternal, a.SalesOrderId, '
      '  c.CustomerSalesOrderId, a.Qty '
      'from SalesInvoiceDt a'
      
        'left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceI' +
        'd'
      'left join SalesOrderHd c on a.SalesOrderId = c.SalesOrderId'
      'where extract(year from b.SalesInvoiceDate) = :Year'
      'and not (a.SalesOrderId is null)'
      'and a.ItemId = :ItemId')
    Left = 456
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
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
