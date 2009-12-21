object fmRegisterPurchasePayment: TfmRegisterPurchasePayment
  Left = 0
  Top = 0
  Caption = 'Pembayaran Nota Pembelian'
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
    object cgPurchaseInvoice: TcxGrid
      Left = 0
      Top = 0
      Width = 382
      Height = 279
      Align = alClient
      TabOrder = 0
      object cgvPurchaseInvoiceHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPurchaseInvoiceHd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cgvPurchaseInvoiceHdPurchaseinvoicedate: TcxGridDBColumn
          Caption = 'Tgl'
          DataBinding.FieldName = 'Purchaseinvoicedate'
          PropertiesClassName = 'TcxDateEditProperties'
          SortIndex = 0
          SortOrder = soAscending
        end
        object cgvPurchaseInvoiceHdPurchaseinvoiceid: TcxGridDBColumn
          Caption = 'Nota'
          DataBinding.FieldName = 'Purchaseinvoiceid'
        end
        object cgvPurchaseInvoiceHdPurchaseinvoiceidinternal: TcxGridDBColumn
          Caption = 'Nota Ext'
          DataBinding.FieldName = 'Purchaseinvoiceidinternal'
          Visible = False
        end
        object cgvPurchaseInvoiceHdtotalamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'totalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchaseInvoiceHdoutstandingtotalamount: TcxGridDBColumn
          Caption = 'Sisa'
          DataBinding.FieldName = 'outstandingtotalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchaseInvoiceHdvendorname: TcxGridDBColumn
          Caption = 'Vendor'
          DataBinding.FieldName = 'Vendorname'
        end
        object cgvPurchaseInvoiceHdwarehousename: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'warehousename'
          Visible = False
        end
        object cgvPurchaseInvoiceHdemployeeid: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'employeeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGlobal.cgvPrevEmployee
          Properties.KeyFieldNames = 'EmployeeId'
          Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        end
        object cgvPurchaseInvoiceHdPurchasecategoryname: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'Purchasecategoryname'
          Visible = False
          GroupIndex = 0
        end
      end
      object cgvPurchaseInvoiceDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPurchaseInvoiceDt
        DataController.DetailKeyFieldNames = 'Purchaseinvoiceid'
        DataController.MasterKeyFieldNames = 'Purchaseinvoiceid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvPurchaseInvoiceDtpurchaseinvoiceid: TcxGridDBColumn
          DataBinding.FieldName = 'purchaseinvoiceid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvPurchaseInvoiceDtno: TcxGridDBColumn
          Caption = ' No'
          DataBinding.FieldName = 'no'
        end
        object cgvPurchaseInvoiceDtitemid: TcxGridDBColumn
          Caption = 'Barang'
          DataBinding.FieldName = 'itemname'
        end
        object cgvPurchaseInvoiceDtqty: TcxGridDBColumn
          Caption = ' Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchaseInvoiceDtprice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtdiscitem: TcxGridDBColumn
          Caption = 'Disc 1 %'
          DataBinding.FieldName = 'discitem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtdiscitemprice: TcxGridDBColumn
          Caption = 'Disc 1'
          DataBinding.FieldName = 'discitemprice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtdiscitem2: TcxGridDBColumn
          Caption = 'Disc 2 %'
          DataBinding.FieldName = 'discitem2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtdiscitemprice2: TcxGridDBColumn
          Caption = 'Disc 2'
          DataBinding.FieldName = 'discitemprice2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtvoucheritem: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheritem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvPurchaseInvoiceDtamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
      end
      object cgPurchaseInvoiceLevel1: TcxGridLevel
        GridView = cgvPurchaseInvoiceHd
        object cgPurchaseInvoiceLevel2: TcxGridLevel
          GridView = cgvPurchaseInvoiceDt
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
    object cgPurchasePayment: TcxGrid
      Left = 0
      Top = 0
      Width = 252
      Height = 279
      Align = alClient
      TabOrder = 0
      ExplicitLeft = -2
      ExplicitTop = -6
      object cgvPurchasePayment: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPurchasePaymentDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.GroupByBox = False
        object cgvPurchasePaymentPurchaseinvoiceid: TcxGridDBColumn
          DataBinding.FieldName = 'Purchaseinvoiceid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvPurchasePaymentPurchasepaymentid: TcxGridDBColumn
          Caption = 'No Pembayaran'
          DataBinding.FieldName = 'Purchasepaymentid'
        end
        object cgvPurchasePaymentPurchasepaymentdate: TcxGridDBColumn
          Caption = 'Tgl Bayar'
          DataBinding.FieldName = 'Purchasepaymentdate'
          PropertiesClassName = 'TcxDateEditProperties'
        end
        object cgvPurchasePaymentpaymenttypename: TcxGridDBColumn
          Caption = 'Pembayaran'
          DataBinding.FieldName = 'paymenttypename'
        end
        object cgvPurchasePaymentamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchasePaymentonhandamount: TcxGridDBColumn
          Caption = 'Tunai'
          DataBinding.FieldName = 'onhandamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchasePaymentshortage: TcxGridDBColumn
          Caption = 'Kembalian'
          DataBinding.FieldName = 'shortage'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvPurchasePaymentemployeeid: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'employeeid'
        end
        object cgvPurchasePaymentreferenceid: TcxGridDBColumn
          Caption = 'Ref'
          DataBinding.FieldName = 'referenceid'
          Visible = False
        end
        object cgvPurchasePaymentcashregistertransactionid: TcxGridDBColumn
          Caption = 'Transaksi Register'
          DataBinding.FieldName = 'cashregistertransactionid'
        end
      end
      object cgPurchasePaymentLevel1: TcxGridLevel
        GridView = cgvPurchasePayment
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
    Filename = 'Setting Register Purchase Payment.cfg'
    Sorting = False
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object qryPurchasePaymentDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      
        '  a.*, b.PurchasePaymentDate, c.PaymentTypeName, b.CashRegisterT' +
        'ransactionId'
      'from PurchasePaymentDt a'
      
        'left join PurchasePayment b on b.PurchasePaymentId = a.PurchaseP' +
        'aymentId'
      'left join PaymentType c on c.PaymentTypeId = a.PaymentTypeId'
      'where a.PurchaseInvoiceId = :PurchaseInvoiceId')
    MasterSource = dsPurchaseInvoiceHd
    Left = 232
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseInvoiceId'
      end>
  end
  object dsPurchasePaymentDt: TDataSource
    DataSet = qryPurchasePaymentDt
    Left = 264
    Top = 112
  end
  object qryPurchaseInvoiceHd: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.*, b.VendorName, c.WarehouseName, d.PurchaseCategoryName'
      'from PurchaseInvoiceHd a'
      'left join Vendor b on b.VendorId = a.VendorId'
      'left join Warehouse c on c.WarehouseId = a.WarehouseId'
      
        'left join PurchaseCategory d on d.PurchaseCategoryId = a.Purchas' +
        'eCategoryId'
      'where extract(year from a.PurchaseInvoiceDate) = :Year'
      'and extract(month from a.PurchaseInvoiceDate) = :Month'
      'and a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove <> '#39'2'#39
      'and a.CurrencyId = '#39'IDR'#39
      'or a.PurchaseInvoiceId in'
      '  (select x.PurchaseInvoiceId'
      '  from PurchasePaymentDt x'
      
        '  left join PurchasePayment y on y.PurchasePaymentId = x.Purchas' +
        'ePaymentId'
      
        '  left join PurchaseInvoiceHd z on z.PurchaseInvoiceId = x.Purch' +
        'aseInvoiceId'
      '  where y.CashRegisterTransactionId = :CashRegisterTransactionId'
      '  and extract(year from z.PurchaseInvoiceDate) = :Year'
      '  and extract(month from z.PurchaseInvoiceDate) = :Month)'
      'order by a.PurchaseInvoiceDate')
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
  object dsPurchaseInvoiceHd: TDataSource
    DataSet = qryPurchaseInvoiceHd
    Left = 168
    Top = 112
  end
  object qryPurchaseInvoiceDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, c.ItemName'
      'from PurchaseInvoiceDt a'
      
        'left join PurchaseInvoiceHd b on b.PurchaseInvoiceId = a.Purchas' +
        'eInvoiceId'
      'left join Item c on c.ItemId = a.ItemId'
      'where extract(year from b.PurchaseInvoiceDate) = :Year'
      'and extract(month from b.PurchaseInvoiceDate) = :Month')
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
  object dsPurchaseInvoiceDt: TDataSource
    DataSet = qryPurchaseInvoiceDt
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
    Filename = 'Setting Register Purchase Payment.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object qryDelPurchasePaymentDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'delete from PurchasePaymentDt'
      'where PurchasePaymentId = :PurchasePaymentId'
      'and No = :No')
    MasterSource = dsPurchaseInvoiceHd
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchasePaymentId'
      end
      item
        DataType = ftUnknown
        Name = 'No'
      end>
  end
end
