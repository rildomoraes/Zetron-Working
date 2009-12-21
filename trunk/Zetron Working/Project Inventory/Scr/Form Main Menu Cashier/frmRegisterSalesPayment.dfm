object fmRegisterSalesPayment: TfmRegisterSalesPayment
  Left = 0
  Top = 0
  Caption = 'Pembayaran Nota Penjualan'
  ClientHeight = 471
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTop: TPanel
    Left = 0
    Top = 97
    Width = 642
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 7
      Width = 45
      Height = 17
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 57
      Top = 4
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbMonth'
      Width = 96
    end
    object cbYear: TcxComboBox
      Left = 152
      Top = 4
      BeepOnEnter = False
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 382
    Top = 130
    Width = 8
    Height = 341
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = pnlInvoice
  end
  object pnlInvoice: TPanel
    Left = 0
    Top = 130
    Width = 382
    Height = 341
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object cgSalesInvoice: TcxGrid
      Left = 0
      Top = 0
      Width = 382
      Height = 279
      Align = alClient
      TabOrder = 0
      object cgvSalesInvoiceHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesInvoiceHd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cgvSalesInvoiceHdsalesinvoicedate: TcxGridDBColumn
          Caption = 'Tgl'
          DataBinding.FieldName = 'salesinvoicedate'
          PropertiesClassName = 'TcxDateEditProperties'
          SortIndex = 0
          SortOrder = soAscending
        end
        object cgvSalesInvoiceHdsalesinvoiceid: TcxGridDBColumn
          Caption = 'Nota'
          DataBinding.FieldName = 'salesinvoiceid'
        end
        object cgvSalesInvoiceHdsalesinvoiceidinternal: TcxGridDBColumn
          Caption = 'Nota Ext'
          DataBinding.FieldName = 'salesinvoiceidinternal'
          Visible = False
        end
        object cgvSalesInvoiceHdshiftname: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shiftname'
        end
        object cgvSalesInvoiceHdtotalamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'totalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceHdoutstandingtotalamount: TcxGridDBColumn
          Caption = 'Sisa'
          DataBinding.FieldName = 'outstandingtotalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceHdvendorname: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'customername'
        end
        object cgvSalesInvoiceHdwarehousename: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'warehousename'
          Visible = False
        end
        object cgvSalesInvoiceHdemployeeid: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'employeeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGlobal.cgvPrevEmployee
          Properties.KeyFieldNames = 'EmployeeId'
          Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        end
        object cgvSalesInvoiceHdsalescategoryname: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'salescategoryname'
          Visible = False
          GroupIndex = 0
        end
      end
      object cgvSalesInvoiceDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesInvoiceDt
        DataController.DetailKeyFieldNames = 'salesinvoiceid'
        DataController.MasterKeyFieldNames = 'salesinvoiceid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvSalesInvoiceDtpurchaseinvoiceid: TcxGridDBColumn
          DataBinding.FieldName = 'purchaseinvoiceid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceDtno: TcxGridDBColumn
          Caption = ' No'
          DataBinding.FieldName = 'no'
        end
        object cgvSalesInvoiceDtitemid: TcxGridDBColumn
          Caption = 'Barang'
          DataBinding.FieldName = 'itemname'
        end
        object cgvSalesInvoiceDtqty: TcxGridDBColumn
          Caption = ' Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceDtprice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtdiscitem: TcxGridDBColumn
          Caption = 'Disc 1 %'
          DataBinding.FieldName = 'discitem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtdiscitemprice: TcxGridDBColumn
          Caption = 'Disc 1'
          DataBinding.FieldName = 'discitemprice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtdiscitem2: TcxGridDBColumn
          Caption = 'Disc 2 %'
          DataBinding.FieldName = 'discitem2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtdiscitemprice2: TcxGridDBColumn
          Caption = 'Disc 2'
          DataBinding.FieldName = 'discitemprice2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtvoucheritem: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheritem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceDtamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
      end
      object cgSalesInvoiceLevel1: TcxGridLevel
        GridView = cgvSalesInvoiceHd
        object cgSalesInvoiceLevel2: TcxGridLevel
          GridView = cgvSalesInvoiceDt
        end
      end
    end
    object btnPay: TcxButton
      Left = 0
      Top = 279
      Width = 382
      Height = 62
      Align = alBottom
      Action = actPay
      TabOrder = 1
    end
  end
  object pnlPayment: TPanel
    Left = 390
    Top = 130
    Width = 252
    Height = 341
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object cgSalesPayment: TcxGrid
      Left = 0
      Top = 0
      Width = 252
      Height = 279
      Align = alClient
      TabOrder = 0
      object cgvSalesPayment: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesPaymentDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.GroupByBox = False
        object cgvSalesPaymentsalesinvoiceid: TcxGridDBColumn
          DataBinding.FieldName = 'salesinvoiceid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesPaymentsalespaymentid: TcxGridDBColumn
          Caption = 'No Pembayaran'
          DataBinding.FieldName = 'salespaymentid'
        end
        object cgvSalesPaymentsalespaymentdate: TcxGridDBColumn
          Caption = 'Tgl Bayar'
          DataBinding.FieldName = 'salespaymentdate'
          PropertiesClassName = 'TcxDateEditProperties'
        end
        object cgvSalesPaymentpaymenttypename: TcxGridDBColumn
          Caption = 'Pembayaran'
          DataBinding.FieldName = 'paymenttypename'
        end
        object cgvSalesPaymentamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesPaymentonhandamount: TcxGridDBColumn
          Caption = 'Tunai'
          DataBinding.FieldName = 'onhandamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesPaymentshortage: TcxGridDBColumn
          Caption = 'Kembalian'
          DataBinding.FieldName = 'shortage'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesPaymentemployeeid: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'employeeid'
        end
        object cgvSalesPaymentreferenceid: TcxGridDBColumn
          Caption = 'Ref'
          DataBinding.FieldName = 'referenceid'
          Visible = False
        end
        object cgvSalesPaymentcashregistertransactionid: TcxGridDBColumn
          Caption = 'Transaksi Register'
          DataBinding.FieldName = 'cashregistertransactionid'
        end
      end
      object cgSalesPaymentLevel1: TcxGridLevel
        GridView = cgvSalesPayment
      end
    end
    object btnVoid: TcxButton
      Left = 0
      Top = 279
      Width = 252
      Height = 62
      Align = alBottom
      Action = actVoidPayment
      TabOrder = 1
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 642
    Height = 97
    Align = alTop
    TabOrder = 4
    object bvlSpacer1: TBevel
      Left = 86
      Top = 1
      Width = 10
      Height = 95
      Align = alLeft
      Shape = bsSpacer
      ExplicitTop = 0
    end
    object bvlSpacer2: TBevel
      Left = 181
      Top = 1
      Width = 10
      Height = 95
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 165
      ExplicitTop = 0
    end
    object bvlSpacer3: TBevel
      Left = 276
      Top = 1
      Width = 10
      Height = 95
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 465
      ExplicitTop = 2
      ExplicitHeight = 48
    end
    object bvlSpacer4: TBevel
      Left = 286
      Top = 1
      Width = 10
      Height = 95
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 571
      ExplicitTop = -4
      ExplicitHeight = 48
    end
    object btnClose: TcxButton
      Left = 1
      Top = 1
      Width = 85
      Height = 95
      Align = alLeft
      Action = actClose
      Layout = blGlyphTop
      TabOrder = 0
    end
    object btnReset: TcxButton
      Left = 96
      Top = 1
      Width = 85
      Height = 95
      Align = alLeft
      Action = actReset
      Layout = blGlyphTop
      TabOrder = 1
    end
    object btnRefresh: TcxButton
      Left = 191
      Top = 1
      Width = 85
      Height = 95
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      TabOrder = 2
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 136
    Top = 81
    object actClose: TAction
      Caption = 'Tutup'
      ImageIndex = 3
      OnExecute = actCloseExecute
    end
    object actReset: TAction
      Caption = 'Reset'
      ImageIndex = 24
      OnExecute = actResetExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 2
      OnExecute = actRefreshExecute
    end
    object actPay: TAction
      Caption = 'Bayar Nota'
      ImageIndex = 5
      OnExecute = actPayExecute
    end
    object actVoidPayment: TAction
      Caption = 'Void Pembayaran'
      ImageIndex = 21
      OnExecute = actVoidPaymentExecute
    end
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Register Sales Payment.cfg'
    Sorting = False
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object qrySalesPaymentDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      
        '  a.*, b.SalesPaymentDate, c.PaymentTypeName, b.CashRegisterTran' +
        'sactionId'
      'from SalesPaymentDt a'
      'left join SalesPayment b on b.SalesPaymentId = a.SalesPaymentId'
      'left join PaymentType c on c.PaymentTypeId = a.PaymentTypeId'
      'where a.SalesInvoiceId = :SalesInvoiceId')
    MasterSource = dsSalesInvoiceHd
    Left = 232
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceId'
      end>
  end
  object dsSalesPaymentDt: TDataSource
    DataSet = qrySalesPaymentDt
    Left = 264
    Top = 112
  end
  object qrySalesInvoiceHd: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.*, b.CustomerName, c.WarehouseName, d.SalesCategoryName,'
      '  f.ShiftName'
      'from SalesInvoiceHd a'
      'left join Customer b on b.CustomerId = a.CustomerId'
      'left join Warehouse c on c.WarehouseId = a.WarehouseId'
      
        'left join SalesCategory d on d.SalesCategoryId = a.SalesCategory' +
        'Id'
      
        'left join CashRegisterTransaction e on e.CashRegisterTransaction' +
        'Id = a.CashRegisterTransactionId'
      'left join Shift f on f.ShiftCode = e.ShiftCode'
      'where extract(year from a.SalesInvoiceDate) = :Year'
      'and extract(month from a.SalesInvoiceDate) = :Month'
      'and a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove <> '#39'2'#39
      'and a.CurrencyId = '#39'IDR'#39
      'or a.SalesInvoiceId in'
      '  (select x.SalesInvoiceId'
      '  from SalesPaymentDt x'
      
        '  left join SalesPayment y on y.SalesPaymentId = x.SalesPaymentI' +
        'd'
      
        '  left join SalesInvoiceHd z on z.SalesInvoiceId = x.SalesInvoic' +
        'eId'
      '  where y.CashRegisterTransactionId = :CashRegisterTransactionId'
      '  and extract(year from z.SalesInvoiceDate) = :Year'
      '  and extract(month from z.SalesInvoiceDate) = :Month)'
      'order by a.SalesInvoiceDate')
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end
      item
        DataType = ftUnknown
        Name = 'CashRegisterTransactionId'
      end>
  end
  object dsSalesInvoiceHd: TDataSource
    DataSet = qrySalesInvoiceHd
    Left = 168
    Top = 112
  end
  object qrySalesInvoiceDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, c.ItemName'
      'from SalesInvoiceDt a'
      
        'left join SalesInvoiceHd b on b.SalesInvoiceId = a.SalesInvoiceI' +
        'd'
      'left join Item c on c.ItemId = a.ItemId'
      'where extract(year from b.SalesInvoiceDate) = :Year'
      'and extract(month from b.SalesInvoiceDate) = :Month')
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object dsSalesInvoiceDt: TDataSource
    DataSet = qrySalesInvoiceDt
    Left = 168
    Top = 144
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <
      item
        SaveItem = pnlInvoice
      end>
    Filename = 'Setting Register Sales Payment.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object qryDelSalesPaymentDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'delete from SalesPaymentDt'
      'where SalesPaymentId = :SalesPaymentId'
      'and No = :No')
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesPaymentId'
      end
      item
        DataType = ftUnknown
        Name = 'No'
      end>
  end
  object qryUpdCounterPrintSI: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'update SalesInvoiceHd'
      'set CounterPrint = CounterPrint + 1'
      'where SalesInvoiceId = :SalesInvoiceId')
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceId'
      end>
  end
end
