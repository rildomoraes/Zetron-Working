inherited fmCashRegisterTransaction: TfmCashRegisterTransaction
  Caption = 'Transaksi Cash Register'
  ClientHeight = 471
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
    object lblInfo: TLabel [1]
      Left = 263
      Top = 13
      Width = 96
      Height = 19
      Caption = 'Processing......'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPosting
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
  end
  inherited pnlCustom: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  object pnlClient: TPanel [2]
    Left = 241
    Top = 75
    Width = 551
    Height = 396
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 237
    ExplicitWidth = 555
    object pnlClientTop: TPanel
      Left = 0
      Top = 0
      Width = 555
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblCashRegisterTransaction: TLabel
        Left = 7
        Top = 9
        Width = 72
        Height = 13
        Caption = 'Kode Transaksi'
        Transparent = True
      end
      object Label2: TLabel
        Left = 7
        Top = 27
        Width = 67
        Height = 13
        Caption = 'Tanggal Open'
        Transparent = True
      end
      object Label3: TLabel
        Left = 7
        Top = 45
        Width = 75
        Height = 13
        Caption = 'Tanggal Closing'
        Transparent = True
      end
      object lblOpeningBalance: TLabel
        Left = 259
        Top = 28
        Width = 52
        Height = 13
        Caption = 'Saldo Awal'
        Transparent = True
      end
      object lblEmployeeId: TLabel
        Left = 259
        Top = 46
        Width = 22
        Height = 13
        Caption = 'User'
        Transparent = True
      end
      object lblCashRegisterId: TLabel
        Left = 259
        Top = 9
        Width = 40
        Height = 13
        Caption = 'Register'
        Transparent = True
      end
      object dbeCashRegisterTransactionId: TcxDBTextEdit
        Left = 89
        Top = 6
        DataBinding.DataField = 'cashregistertransactionid'
        DataBinding.DataSource = dsDisplay
        TabOrder = 0
        Width = 152
      end
      object dbeDateOpening: TcxDBDateEdit
        Left = 89
        Top = 24
        DataBinding.DataField = 'dateopening'
        DataBinding.DataSource = dsDisplay
        TabOrder = 1
        Width = 152
      end
      object dbeDateClosing: TcxDBDateEdit
        Left = 89
        Top = 42
        DataBinding.DataField = 'dateclosing'
        DataBinding.DataSource = dsDisplay
        TabOrder = 2
        Width = 152
      end
      object dbeEmployeeName: TcxDBTextEdit
        Left = 317
        Top = 42
        DataBinding.DataField = 'employeename'
        DataBinding.DataSource = dsDisplay
        TabOrder = 3
        Width = 148
      end
      object dbeOpeningBalance: TcxDBCurrencyEdit
        Left = 317
        Top = 24
        DataBinding.DataField = 'openingbalance'
        DataBinding.DataSource = dsDisplay
        TabOrder = 4
        Width = 148
      end
      object dbeCashRegisterName: TcxDBTextEdit
        Left = 317
        Top = 6
        DataBinding.DataField = 'cashregistername'
        DataBinding.DataSource = dsDisplay
        TabOrder = 5
        Width = 148
      end
    end
    object cgDetail: TcxGrid
      Left = 0
      Top = 71
      Width = 555
      Height = 325
      Align = alClient
      TabOrder = 1
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cgvRegisterSalesHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsRegisterSalesHd
        DataController.KeyFieldNames = 'registersalesid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'registersalesid'
            Column = cgvRegisterSalesHdregistersalesid
          end
          item
            Kind = skSum
            FieldName = 'totalamount'
            Column = cgvRegisterSalesHdtotalamount
          end
          item
            Kind = skSum
            FieldName = 'outstandingtotalamount'
            Column = cgvRegisterSalesHdoutstandingtotalamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvRegisterSalesHdcashregistertransactionid: TcxGridDBColumn
          DataBinding.FieldName = 'cashregistertransactionid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesHdregistersalesid: TcxGridDBColumn
          Caption = 'No Nota'
          DataBinding.FieldName = 'registersalesid'
        end
        object cgvRegisterSalesHdregistersalesdate: TcxGridDBColumn
          Caption = 'Tgl'
          DataBinding.FieldName = 'registersalesdate'
        end
        object cgvRegisterSalesHdamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHddisc: TcxGridDBColumn
          Caption = 'Disc 1 %'
          DataBinding.FieldName = 'disc'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHddiscamount: TcxGridDBColumn
          Caption = 'Disc 1'
          DataBinding.FieldName = 'discamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHddisc2: TcxGridDBColumn
          Caption = 'Disc 2 %'
          DataBinding.FieldName = 'disc2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHddiscamount2: TcxGridDBColumn
          Caption = 'Disc 2'
          DataBinding.FieldName = 'discamount2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHdvoucher: TcxGridDBColumn
          Caption = 'No Voucher'
          DataBinding.FieldName = 'voucher'
          Visible = False
        end
        object cgvRegisterSalesHdvoucheramount: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheramount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHdtax: TcxGridDBColumn
          Caption = 'PPN %'
          DataBinding.FieldName = 'tax'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHdtaxamount: TcxGridDBColumn
          Caption = 'PPN'
          DataBinding.FieldName = 'taxamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHdroundingamount: TcxGridDBColumn
          Caption = 'Pembulatan'
          DataBinding.FieldName = 'roundingamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesHdtotalamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'totalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvRegisterSalesHdoutstandingtotalamount: TcxGridDBColumn
          Caption = 'Sisa Tagihan'
          DataBinding.FieldName = 'outstandingtotalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvRegisterSalesHdstatementmemo: TcxGridDBColumn
          DataBinding.FieldName = 'statementmemo'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesHdinternalmemo: TcxGridDBColumn
          DataBinding.FieldName = 'internalmemo'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesHdcounterprint: TcxGridDBColumn
          DataBinding.FieldName = 'counterprint'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesHdstatusapprove: TcxGridDBColumn
          DataBinding.FieldName = 'statusapprove'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cgvRegisterSalesDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsRegisterSalesDt
        DataController.DetailKeyFieldNames = 'registersalesid'
        DataController.MasterKeyFieldNames = 'registersalesid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'no'
            Column = cgvRegisterSalesDtno
          end
          item
            Kind = skSum
            FieldName = 'amount'
            Column = cgvRegisterSalesDtamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvRegisterSalesDtregistersalesid: TcxGridDBColumn
          DataBinding.FieldName = 'registersalesid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesDtno: TcxGridDBColumn
          Caption = ' No'
          DataBinding.FieldName = 'no'
        end
        object cgvRegisterSalesDtitemid: TcxGridDBColumn
          Caption = 'Barcode'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvPrevItemBarcode
          Properties.KeyFieldNames = 'itemid'
          Properties.ListFieldItem = dmInventory.cgvPrevItemBarcodebarcodeid
          Visible = False
        end
        object cgvRegisterSalesDtitemid2: TcxGridDBColumn
          Caption = 'Barang'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvPrevItemBarcode
          Properties.KeyFieldNames = 'itemid'
          Properties.ListFieldItem = dmInventory.cgvPrevItemBarcodeitemname
        end
        object cgvRegisterSalesDtqty: TcxGridDBColumn
          Caption = ' Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvRegisterSalesDtqtydisplay: TcxGridDBColumn
          DataBinding.FieldName = 'qtydisplay'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesDtprice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvRegisterSalesDtpricedisplay: TcxGridDBColumn
          DataBinding.FieldName = 'pricedisplay'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesDtdiscitem: TcxGridDBColumn
          Caption = 'Disc 1 %'
          DataBinding.FieldName = 'discitem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesDtdiscitemprice: TcxGridDBColumn
          Caption = 'Disc 1'
          DataBinding.FieldName = 'discitemprice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesDtdiscitem2: TcxGridDBColumn
          Caption = 'Disc 2 %'
          DataBinding.FieldName = 'discitem2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesDtdiscitemprice2: TcxGridDBColumn
          Caption = 'Disc 2'
          DataBinding.FieldName = 'discitemprice2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesDtvoucheritem: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheritem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesDtamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvRegisterSalesDtpricelevel: TcxGridDBColumn
          Caption = 'Lv Harga'
          DataBinding.FieldName = 'pricelevel'
          Visible = False
        end
        object cgvRegisterSalesDtpricelevelunitmeasure: TcxGridDBColumn
          Caption = 'Lv Satuan'
          DataBinding.FieldName = 'pricelevelunitmeasure'
          Visible = False
        end
        object cgvRegisterSalesDtstatuscolor: TcxGridDBColumn
          DataBinding.FieldName = 'statuscolor'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesDtflagdelete: TcxGridDBColumn
          DataBinding.FieldName = 'flagdelete'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cgvRegisterSalesPayment: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsRegisterSalesPayment
        DataController.DetailKeyFieldNames = 'registersalesid'
        DataController.MasterKeyFieldNames = 'registersalesid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'no'
            Column = cgvRegisterSalesPaymentno
          end
          item
            Kind = skSum
            FieldName = 'amount'
            Column = cgvRegisterSalesPaymentamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvRegisterSalesPaymentregistersalesid: TcxGridDBColumn
          DataBinding.FieldName = 'registersalesid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvRegisterSalesPaymentno: TcxGridDBColumn
          Caption = ' No'
          DataBinding.FieldName = 'no'
        end
        object cgvRegisterSalesPaymentpaymenttypeid: TcxGridDBColumn
          Caption = 'Pembayaran'
          DataBinding.FieldName = 'paymenttypeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmAccounting.cgvPrevPaymentType
          Properties.KeyFieldNames = 'paymenttypeid'
          Properties.ListFieldItem = dmAccounting.cgvPrevPaymentPaymentTypeName
        end
        object cgvRegisterSalesPaymentcardno: TcxGridDBColumn
          Caption = 'No Kartu'
          DataBinding.FieldName = 'cardno'
          Visible = False
        end
        object cgvRegisterSalesPaymentcardholdername: TcxGridDBColumn
          Caption = 'Nama Pemegang'
          DataBinding.FieldName = 'cardholdername'
          Visible = False
        end
        object cgvRegisterSalesPaymentonhandamount: TcxGridDBColumn
          Caption = 'Jumlah Uang'
          DataBinding.FieldName = 'onhandamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesPaymentshortage: TcxGridDBColumn
          Caption = 'Uang Kembalian'
          DataBinding.FieldName = 'shortage'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvRegisterSalesPaymentamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object cgvSalesInvoiceHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesInvoiceHd
        DataController.KeyFieldNames = 'salesinvoiceid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'salesinvoiceid'
            Column = cgvSalesInvoiceHdsalesinvoiceid
          end
          item
            Kind = skSum
            FieldName = 'totalamount'
            Column = cgvSalesInvoiceHdtotalamount
          end
          item
            Kind = skSum
            FieldName = 'outstandingtotalamount'
            Column = cgvSalesInvoiceHdoutstandingtotalamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvSalesInvoiceHdcashregistertransactionid: TcxGridDBColumn
          DataBinding.FieldName = 'cashregistertransactionid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdsalesinvoiceid: TcxGridDBColumn
          Caption = 'No Nota'
          DataBinding.FieldName = 'salesinvoiceid'
        end
        object cgvSalesInvoiceHdsalesinvoicedate: TcxGridDBColumn
          Caption = 'Tgl Nota'
          DataBinding.FieldName = 'salesinvoicedate'
        end
        object cgvSalesInvoiceHdcustomerid: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'customerid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
        end
        object cgvSalesInvoiceHdsalesinvoiceidinternal: TcxGridDBColumn
          Caption = 'No Nota Barcode'
          DataBinding.FieldName = 'salesinvoiceidinternal'
        end
        object cgvSalesInvoiceHdwarehouseid: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'warehouseid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPrevWarehouse
          Properties.KeyFieldNames = 'WarehouseId'
          Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
          Visible = False
        end
        object cgvSalesInvoiceHdoutletid: TcxGridDBColumn
          Caption = 'Outlet'
          DataBinding.FieldName = 'outletid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPrevOutlet
          Properties.KeyFieldNames = 'OutletId'
          Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
          Visible = False
        end
        object cgvSalesInvoiceHdcurrencyid: TcxGridDBColumn
          Caption = 'Mata Uang'
          DataBinding.FieldName = 'currencyid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdkurs: TcxGridDBColumn
          Caption = 'Kurs'
          DataBinding.FieldName = 'kurs'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHddisc: TcxGridDBColumn
          Caption = 'Disc 1 %'
          DataBinding.FieldName = 'disc'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHddiscamount: TcxGridDBColumn
          Caption = 'Disc 1'
          DataBinding.FieldName = 'discamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHddisc2: TcxGridDBColumn
          Caption = 'Disc 2 %'
          DataBinding.FieldName = 'disc2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHddiscamount2: TcxGridDBColumn
          Caption = 'Disc 2'
          DataBinding.FieldName = 'discamount2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHdvoucher: TcxGridDBColumn
          Caption = 'No Voucher'
          DataBinding.FieldName = 'voucher'
          Visible = False
        end
        object cgvSalesInvoiceHdvoucheramount: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheramount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHdtax: TcxGridDBColumn
          Caption = 'PPN %'
          DataBinding.FieldName = 'tax'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHdtaxamount: TcxGridDBColumn
          Caption = 'PPN'
          DataBinding.FieldName = 'taxamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHdtaxnumber: TcxGridDBColumn
          DataBinding.FieldName = 'taxnumber'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdtaxdate: TcxGridDBColumn
          DataBinding.FieldName = 'taxdate'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdpph22: TcxGridDBColumn
          DataBinding.FieldName = 'pph22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdpph22amount: TcxGridDBColumn
          DataBinding.FieldName = 'pph22amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdmeterai: TcxGridDBColumn
          DataBinding.FieldName = 'meterai'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceHdroundingamount: TcxGridDBColumn
          Caption = 'Pembulatan'
          DataBinding.FieldName = 'roundingamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesInvoiceHdtotalamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'totalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceHdoutstandingtotalamount: TcxGridDBColumn
          Caption = 'Sisa Tagihan'
          DataBinding.FieldName = 'outstandingtotalamount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceHdstatusapprove: TcxGridDBColumn
          DataBinding.FieldName = 'statusapprove'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cgvSalesInvoiceDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesInvoiceDt
        DataController.DetailKeyFieldNames = 'salesinvoiceid'
        DataController.MasterKeyFieldNames = 'salesinvoiceid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'no'
            Column = cgvSalesInvoiceDtno
          end
          item
            Kind = skSum
            FieldName = 'amount'
            Column = cgvSalesInvoiceDtamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvSalesInvoiceDtsalesinvoiceid: TcxGridDBColumn
          DataBinding.FieldName = 'salesinvoiceid'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceDtno: TcxGridDBColumn
          Caption = '  No'
          DataBinding.FieldName = 'no'
        end
        object cgvSalesInvoiceDtitemid: TcxGridDBColumn
          Caption = 'Barcode'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvPrevItemBarcode
          Properties.KeyFieldNames = 'itemid'
          Properties.ListFieldItem = dmInventory.cgvPrevItemBarcodebarcodeid
          Visible = False
        end
        object cgvSalesInvoiceDtitemid2: TcxGridDBColumn
          Caption = 'Barang'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvPrevItemBarcode
          Properties.KeyFieldNames = 'itemid'
          Properties.ListFieldItem = dmInventory.cgvPrevItemBarcodeitemname
        end
        object cgvSalesInvoiceDtqty: TcxGridDBColumn
          Caption = ' Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceDtqtydisplay: TcxGridDBColumn
          DataBinding.FieldName = 'qtydisplay'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesInvoiceDtprice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceDtpricedisplay: TcxGridDBColumn
          DataBinding.FieldName = 'pricedisplay'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
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
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesInvoiceDtpricelevel: TcxGridDBColumn
          Caption = 'Lv Harga'
          DataBinding.FieldName = 'pricelevel'
          Visible = False
        end
        object cgvSalesInvoiceDtpricelevelunitmeasure: TcxGridDBColumn
          Caption = 'Lv Satuan'
          DataBinding.FieldName = 'pricelevelunitmeasure'
          Visible = False
        end
        object cgvSalesInvoiceDtstatuscolor: TcxGridDBColumn
          DataBinding.FieldName = 'statuscolor'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cgvSalesPaymentDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSalesPaymentDt
        DataController.DetailKeyFieldNames = 'salesinvoiceid'
        DataController.MasterKeyFieldNames = 'salesinvoiceid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'salespaymentdate'
            Column = cgvSalesPaymentDtsalespaymentdate
          end
          item
            Kind = skSum
            FieldName = 'amount'
            Column = cgvSalesPaymentDtamount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvSalesPaymentDtsalespaymentdate: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'salespaymentdate'
        end
        object cgvSalesPaymentDtsalespaymentid: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'salespaymentid'
        end
        object cgvSalesPaymentDtsalesinvoiceid: TcxGridDBColumn
          Caption = 'Nota'
          DataBinding.FieldName = 'salesinvoiceid'
        end
        object cgvSalesPaymentDtpaymenttypeid: TcxGridDBColumn
          Caption = 'Pembayaran'
          DataBinding.FieldName = 'paymenttypeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmAccounting.cgvPrevPaymentType
          Properties.KeyFieldNames = 'paymenttypeid'
          Properties.ListFieldItem = dmAccounting.cgvPrevPaymentPaymentTypeName
        end
        object cgvSalesPaymentDtgironumber: TcxGridDBColumn
          DataBinding.FieldName = 'gironumber'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvSalesPaymentDtcurrencyid: TcxGridDBColumn
          Caption = 'Mata Uang'
          DataBinding.FieldName = 'currencyid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
          Visible = False
        end
        object cgvSalesPaymentDtkurs: TcxGridDBColumn
          Caption = 'Kurs'
          DataBinding.FieldName = 'kurs'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object cgvSalesPaymentDtamount: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cgvSalesPaymentDtcardno: TcxGridDBColumn
          Caption = 'No Kartu'
          DataBinding.FieldName = 'cardno'
          Visible = False
        end
        object cgvSalesPaymentDtcardholdername: TcxGridDBColumn
          Caption = 'Nama Pemegang'
          DataBinding.FieldName = 'cardholdername'
          Visible = False
        end
        object cgvSalesPaymentDtreferenceid: TcxGridDBColumn
          Caption = 'Ref'
          DataBinding.FieldName = 'referenceid'
          Visible = False
        end
        object cgvSalesPaymentDtemployeeid: TcxGridDBColumn
          Caption = 'Pegawai'
          DataBinding.FieldName = 'employeeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGlobal.cgvPrevEmployee
          Properties.KeyFieldNames = 'EmployeeId'
          Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        end
      end
      object cgDetailLevel1: TcxGridLevel
        Caption = 'Transaksi Cash Register (Unposting)'
        GridView = cgvRegisterSalesHd
        Options.DetailTabsPosition = dtpTop
        object cgDetailLevel3: TcxGridLevel
          Caption = 'Detail'
          GridView = cgvRegisterSalesDt
        end
        object cgDetailLevel4: TcxGridLevel
          Caption = 'Pembayaran'
          GridView = cgvRegisterSalesPayment
        end
      end
      object cgDetailLevel2: TcxGridLevel
        Caption = 'Nota Pembelian (Done)'
        GridView = cgvSalesInvoiceHd
        Options.DetailTabsPosition = dtpTop
        object cgDetailLevel5: TcxGridLevel
          Caption = 'Detail'
          GridView = cgvSalesInvoiceDt
        end
        object cgDetailLevel6: TcxGridLevel
          Caption = 'Pembayaran'
          GridView = cgvSalesPaymentDt
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 233
    Top = 75
    Width = 8
    Height = 396
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = pnlLeft
  end
  object pnlLeft: TPanel [4]
    Left = 0
    Top = 75
    Width = 233
    Height = 396
    Align = alLeft
    TabOrder = 4
    object cgDisplay: TcxGrid
      Left = 1
      Top = 1
      Width = 231
      Height = 363
      Align = alClient
      TabOrder = 0
      object cgvDisplay: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDisplay
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            FieldName = 'cashregistertransactionid'
            Column = cgvDisplaycashregistertransactionid
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        Styles.OnGetContentStyle = cgvDisplayStylesGetContentStyle
        object cgvDisplaytanggal: TcxGridDBColumn
          Caption = ' Tanggal'
          DataBinding.FieldName = 'tanggal'
          Visible = False
          GroupIndex = 0
        end
        object cgvDisplayshiftcode: TcxGridDBColumn
          DataBinding.FieldName = 'shiftcode'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvDisplayshiftname: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shiftname'
        end
        object cgvDisplaycashregistertransactionid: TcxGridDBColumn
          Caption = 'Kode Transaksi Register'
          DataBinding.FieldName = 'cashregistertransactionid'
        end
        object cgvDisplaydateopening: TcxGridDBColumn
          Caption = 'Tgl Open'
          DataBinding.FieldName = 'dateopening'
          Visible = False
        end
        object cgvDisplaydateclosing: TcxGridDBColumn
          Caption = 'Tgl Closing'
          DataBinding.FieldName = 'dateclosing'
          Visible = False
        end
        object cgvDisplaycashregistername: TcxGridDBColumn
          Caption = 'Register'
          DataBinding.FieldName = 'cashregistername'
          Visible = False
        end
        object cgvDisplayopeningbalance: TcxGridDBColumn
          Caption = 'Saldo Awal'
          DataBinding.FieldName = 'openingbalance'
          Visible = False
        end
        object cgvDisplayemployeename: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'employeename'
          Visible = False
        end
        object cgvDisplaystatusposting: TcxGridDBColumn
          Caption = 'Posting'
          DataBinding.FieldName = 'statusposting'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cgDisplayLevel1: TcxGridLevel
        GridView = cgvDisplay
      end
    end
    object pnlLegend: TPanel
      Left = 1
      Top = 364
      Width = 231
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Image1: TImage
        Left = 88
        Top = 7
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          055449636F6E0000010001001010000001002000680400001600000028000000
          1000000020000000010020000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000F5B8C600F5B8E700F5B8E700F5B8E700F5B8E700F5B8E7
          00F5B8E700F5B8E700F5B8E700F5B8E700F5B8E700F5B8E700F5B8E700F5B8C6
          0000000000F5B8BD14FFFFFF4CBEFFFF52BDFFFF52BDFFFF52BDFFFF4CBEFFFF
          4CBEFFFF4CC6FFFF4CC6FFFF4CC6FFFF4CCCFFFF45C7FFFF3DCFFFFF05FFEAFF
          00F5B8BD00F5B8F752BDFFFF54BBFFFF54BBFFFF54BBFFFF52BDFFFF52BDFFFF
          52BDFFFF52C2FFFF52C2FFFF52CBFFFF52CBFFFF4CC6FFFF45C7FFFF3DDFFFFF
          00F5B8F700FAC8F752BDFFFF52BDFFFF52C2FFFF52C2FFFF52C2FFFF52CBFFFF
          4CC6FFFF4CCCFFFF45C7FFFF45C7FFFF45CDFFFF45CDFFFF45CDFFFF40D9FFFF
          00F5B8F700FAC8F752C2FFFF52CBFFFF4CC6FFFF4CCCFFFF45C7FFFF45C7FFFF
          45CDFFFF45CDFFFF45D7FFFF40D2FFFF40D2FFFF40D9FFFF40D9FFFF3DDFFFFF
          00F5B8F700FAC8F745C7FFFF45C7FFFF45CDFFFF45CDFFFF45D7FFFF40D2FFFF
          40D2FFFF40D9FFFF40D9FFFF40E2FFFF40E2FFFF3DDFFFFF3DE8FFFF33E7FFFF
          00F5B8F700FAC8F74CDBFFFF40D2FFFF40D2FFFF40D9FFFF40D9FFFF40E2FFFF
          40E2FFFF3DDFFFFF3DE8FFFF33E0FFFF33E7FFFF33E7FFFF33E7FFFF45FFFFFF
          00F5B8F700FAC8F75CF7FFFF5CF7FFFF52EEFFFF4AE7FFFF3DE8FFFF33E0FFFF
          33E7FFFF33E7FFFF33E7FFFF3DF2FFFF45F9FFFF52FFFFFF61FFEDFF61FFEDFF
          00F5B8F700FAC8F75CECFFFF66F2FFFF66F5FFFF66F5FFFF66F5FFFF5CF4FFFF
          5CF7FFFF5CF7FFFF66FCFFFF66FCFFFF66FCFFFF66FFFCFF66FFFCFF66FFFCFF
          00F5B8F700FAC8F761DFFFFF61E7FFFF61E7FFFF61E7FFFF61E7FFFF61E7FFFF
          61EFFFFF61EFFFFF5CECFFFF5CECFFFF66F5FFFF66F5FFFF66F5FFFF5CF7FFFF
          00F5B8F700FAC8F761DAFFFF61DAFFFF61DAFFFF61DAFFFF61DAFFFF61DFFFFF
          61DFFFFF61DFFFFF61DFFFFF61DFFFFF61E7FFFF61E7FFFF61E7FFFF5CF4FFFF
          00F5B8F700F5B8F759D0FFFF66D1FFFF66D1FFFF66D1FFFF66D6FFFF66D6FFFF
          61D5FFFF61D5FFFF61DAFFFF61DAFFFF61DAFFFF61DAFFFF61DAFFFF4CF3FFFF
          00F5B8F700F5B8BD24F8FFFF5CC6FFFF66C4FFFF66C9FFFF66C9FFFF66C9FFFF
          66C9FFFF66D1FFFF66D1FFFF66D1FFFF66D1FFFF66D1FFFF59D6FFFF0FFFEBFF
          00F5B8BD0000000000F5B8C600FAC8E700FFD4E700FAC8E700FABBE700FABBE7
          00FABBE700FABBE700FABBE700FABBE700FABBE700F5B8E700F5B8E700F5B8C6
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFAC418001AC410000AC410000AC410000AC410000AC410000AC41
          0000AC410000AC410000AC410000AC410000AC410000AC410000AC418001AC41
          FFFFAC41}
        Transparent = True
      end
      object lblFixed: TLabel
        Left = 108
        Top = 9
        Width = 48
        Height = 13
        Caption = 'UnPosting'
        Transparent = True
      end
      object Image2: TImage
        Left = 5
        Top = 7
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
          F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
          00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
          FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
          F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
          FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
          F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
          FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
          F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
          FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
          F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
          FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
          F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
          FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
          F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
          FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
          F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
          FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
          F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
          FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
          F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
          FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
          F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
          FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
          F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
          FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
          F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
          FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
        Transparent = True
      end
      object Label4: TLabel
        Left = 25
        Top = 9
        Width = 47
        Height = 13
        Caption = 'UnClosing'
        Transparent = True
      end
      object Image3: TImage
        Left = 174
        Top = 7
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000BE00C600BE00E700BE00E700BE00E700BE00E700BE00E700BE
          00E700BE00E700BE00E700BE00E700BE00E700BE00E700BE00E700BE00C60000
          000000BE00BD08D339FF21F3A5FF21F7ADFF21F7ADFF21F7ADFF21F3A5FF21F3
          A5FF21F39CFF21F39CFF21F39CFF21F394FF18F394FF18EB84FF00CB21FF00BE
          00BD00BE00F721F7ADFF21FBB5FF21FBB5FF21FBB5FF21F7ADFF21F7ADFF21F7
          ADFF21F7A5FF21F7A5FF21F79CFF21F79CFF21F39CFF18F394FF18EB73FF00BE
          00F700C308F721F7ADFF21F7ADFF21F7A5FF21F7A5FF21F7A5FF21F79CFF21F3
          9CFF21F394FF18F394FF18F394FF18F38CFF18F38CFF18F38CFF18EF7BFF00BE
          00F700C308F721F7A5FF21F79CFF21F39CFF21F394FF18F394FF18F394FF18F3
          8CFF18F38CFF18F384FF18EF84FF18EF84FF18EF7BFF18EF7BFF18EB73FF00BE
          00F700C308F718F394FF18F394FF18F38CFF18F38CFF18F384FF18EF84FF18EF
          84FF18EF7BFF18EF7BFF18EF73FF18EF73FF18EB73FF18EB6BFF10EB63FF00BE
          00F700C308F721F384FF18EF84FF18EF84FF18EF7BFF18EF7BFF18EF73FF18EF
          73FF18EB73FF18EB6BFF10EB6BFF10EB63FF10EB63FF10EB63FF21EB52FF00BE
          00F700C308F731F36BFF31F36BFF29EF73FF21EF73FF18EB6BFF10EB6BFF10EB
          63FF10EB63FF10EB63FF18EB5AFF21EB5AFF29EF5AFF39EF52FF39EF52FF00BE
          00F700C308F731F37BFF39F37BFF39F373FF39F373FF39F373FF31F373FF31F3
          6BFF31F36BFF39F36BFF39F36BFF39F36BFF39F363FF39F363FF39F363FF00BE
          00F700C308F731F78CFF31F784FF31F784FF31F784FF31F784FF31F784FF31F7
          7BFF31F77BFF31F37BFF31F37BFF39F373FF39F373FF39F373FF31F36BFF00BE
          00F700C308F731F794FF31F794FF31F794FF31F794FF31F794FF31F78CFF31F7
          8CFF31F78CFF31F78CFF31F78CFF31F784FF31F784FF31F784FF31F373FF00BE
          00F700BE00F729F79CFF31FBA5FF31FBA5FF31FBA5FF31FB9CFF31FB9CFF31F7
          9CFF31F79CFF31F794FF31F794FF31F794FF31F794FF31F794FF29EB6BFF00BE
          00F700BE00BD10DB4AFF29FBADFF31FBB5FF31FBADFF31FBADFF31FBADFF31FB
          ADFF31FBA5FF31FBA5FF31FBA5FF31FBA5FF31FBA5FF29F794FF08CF29FF00BE
          00BD0000000000BE00C600C308E700C710E700C308E700C300E700C300E700C3
          00E700C300E700C300E700C300E700C300E700BE00E700BE00E700BE00C60000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
        Transparent = True
      end
      object lblPosting: TLabel
        Left = 194
        Top = 9
        Width = 25
        Height = 13
        Caption = 'Done'
        Transparent = True
      end
    end
  end
  inherited ActionList1: TActionList
    object actPosting: TAction
      Caption = 'Posting'
      ImageIndex = 13
      OnExecute = actPostingExecute
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryDisplay: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  cast(a.DateOpening as Date) as Tanggal,'
      '  b.ShiftName, a.*,'
      '  c.CashRegisterName,'
      '  d.EmployeeName'
      'from CashRegisterTransaction a'
      'left join Shift b on b.ShiftCode = a.ShiftCode'
      'left join CashRegister c on c.CashRegisterId = a.CashRegisterId'
      'left join Employee d on d.EmployeeId = a.EmployeeId'
      'where extract(year from a.DateOpening) = :Year'
      'and extract(month from a.DateOpening) = :Month'
      'order by CashRegisterTransactionId')
    Left = 264
    Top = 200
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
  object dsDisplay: TDataSource
    DataSet = qryDisplay
    Left = 296
    Top = 200
  end
  object qryRegisterSalesHd: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from RegisterSalesHd'
      'where CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by RegisterSalesId')
    MasterSource = dsDisplay
    Left = 352
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsRegisterSalesHd: TDataSource
    DataSet = qryRegisterSalesHd
    Left = 384
    Top = 200
  end
  object qrySalesInvoiceHd: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from SalesInvoiceHd'
      'where CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by SalesInvoiceId')
    MasterSource = dsDisplay
    Left = 440
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsSalesInvoiceHd: TDataSource
    DataSet = qrySalesInvoiceHd
    Left = 472
    Top = 200
  end
  object spPostingCashRegisterTransaction: TUniStoredProc
    StoredProcName = 'sppostingcashregistertransaction'
    Connection = dmGlobal.conGlobal
    Left = 264
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'acashregistertransactionid'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sppostingcashregistertransaction'
  end
  object qrySalesInvoiceDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select a.* '
      'from SalesInvoiceDt a'
      
        'left join SalesInvoiceHd b on b.SalesInvoiceId = a.SalesInvoiceI' +
        'd'
      'where b.CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by a.SalesInvoiceId'
      ', a.No')
    MasterSource = dsDisplay
    Left = 440
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsSalesInvoiceDt: TDataSource
    DataSet = qrySalesInvoiceDt
    Left = 472
    Top = 232
  end
  object qryRegisterSalesDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select a.* '
      'from RegisterSalesDt a'
      
        'left join RegisterSalesHd b on a.RegisterSalesId = b.RegisterSal' +
        'esId'
      'where b.CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by a.RegisterSalesId, a.No')
    MasterSource = dsDisplay
    Left = 352
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsRegisterSalesDt: TDataSource
    DataSet = qryRegisterSalesDt
    Left = 384
    Top = 232
  end
  object qrySalesPaymentDt: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.SalesPaymentDate, a.*'
      'from SalesPaymentDt a'
      'left join SalesPayment b on b.SalesPaymentId = a.SalesPaymentId'
      
        'left join SalesInvoiceHd c on c.SalesInvoiceId = a.SalesInvoiceI' +
        'd'
      'where c.CashRegisterTransactionId = :CashRegisterTransactionId'
      'and b.StatusApprove <> '#39'2'#39
      'order by a.SalesInvoiceId'
      ', a.No')
    MasterSource = dsDisplay
    Left = 440
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsSalesPaymentDt: TDataSource
    DataSet = qrySalesPaymentDt
    Left = 472
    Top = 264
  end
  object qryRegisterSalesPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select a.* '
      'from RegisterSalesPayment a'
      
        'left join RegisterSalesHd b on b.RegisterSalesId = a.RegisterSal' +
        'esId'
      'where b.CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by a.RegisterSalesId, a.No')
    MasterSource = dsDisplay
    Left = 352
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'cashregistertransactionid'
        ParamType = ptInput
      end>
  end
  object dsRegisterSalesPayment: TDataSource
    DataSet = qryRegisterSalesPayment
    Left = 384
    Top = 264
  end
end
