inherited fmPurchasePayment: TfmPurchasePayment
  Caption = 'Pembayaran Pembelian (PP) - Entry'
  ClientHeight = 571
  ClientWidth = 862
  ExplicitWidth = 870
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 862
    ExplicitWidth = 862
    inherited btnRefresh: TcxButton
      TabOrder = 3
    end
    object btnPay: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPay
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object pnlHeader: TPanel [1]
    Left = 0
    Top = 50
    Width = 273
    Height = 521
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object pnlHeaderTop: TPanel
      Left = 0
      Top = 0
      Width = 273
      Height = 77
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object shpDueDateOneMonth: TShape
        Left = 4
        Top = 54
        Width = 57
        Height = 17
        Shape = stRoundRect
      end
      object lbl2Month: TLabel
        Left = 180
        Top = 38
        Width = 34
        Height = 13
        Caption = '60 Hari'
        Transparent = True
      end
      object shpDueDateOverTwoMonth: TShape
        Left = 172
        Top = 54
        Width = 57
        Height = 17
        Shape = stRoundRect
      end
      object lblOver1Month: TLabel
        Left = 124
        Top = 38
        Width = 34
        Height = 13
        Caption = '30 Hari'
        Transparent = True
      end
      object shpDueDateOverOneMonth: TShape
        Left = 116
        Top = 54
        Width = 57
        Height = 17
        Shape = stRoundRect
      end
      object lblBefore: TLabel
        Left = 12
        Top = 38
        Width = 28
        Height = 13
        Caption = 'Belum'
        Transparent = True
      end
      object shpDueDateNow: TShape
        Left = 60
        Top = 54
        Width = 57
        Height = 17
        Shape = stRoundRect
      end
      object lblDueDateToday: TLabel
        Left = 65
        Top = 38
        Width = 45
        Height = 13
        Caption = 'Sekarang'
        Transparent = True
      end
      object shpDueDateExpired: TShape
        Left = 228
        Top = 54
        Width = 33
        Height = 17
        Shape = stRoundRect
      end
      object lblDueDateExpired: TLabel
        Left = 240
        Top = 38
        Width = 12
        Height = 13
        Caption = '...'
        Transparent = True
      end
      object bvlBevel1: TBevel
        Left = 0
        Top = 33
        Width = 273
        Height = 9
        Shape = bsTopLine
      end
      object lblToday: TLabel
        Left = 8
        Top = 10
        Width = 38
        Height = 13
        Caption = 'Tanggal'
        Transparent = True
      end
      object edtToday: TcxTextEdit
        Left = 52
        Top = 10
        TabOrder = 0
        Text = 'edtToday'
        Width = 121
      end
    end
    object cgPurchaseInvoiceHd: TcxGrid
      Left = 0
      Top = 77
      Width = 273
      Height = 444
      Align = alClient
      TabOrder = 1
      object cgvPurchaseInvoiceHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsIMPurchaseInvoiceHd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cgvPurchaseInvoiceHdvcIdPurchaseInvoice
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        Styles.OnGetContentStyle = cgvPurchaseInvoiceHdStylesGetContentStyle
        object cgvPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn
          Caption = 'Nota'
          DataBinding.FieldName = 'vcIdPurchaseInvoice'
          Options.Filtering = False
          Options.Grouping = False
          Width = 80
        end
        object cgvPurchaseInvoiceHdvcPurchaseInvoiceSupplier: TcxGridDBColumn
          Caption = 'Nota Supplier'
          DataBinding.FieldName = 'vcPurchaseInvoiceSupplier'
        end
        object cgvPurchaseInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'dtPurchaseInvoiceDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Filtering = False
          Width = 70
        end
        object cgvPurchaseInvoiceHddtDueDate: TcxGridDBColumn
          Caption = 'Jatuh Tempo'
          DataBinding.FieldName = 'dtDueDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Filtering = False
          Width = 70
        end
        object cgvPurchaseInvoiceHdvcSupplierName: TcxGridDBColumn
          Caption = 'Supplier'
          DataBinding.FieldName = 'vcSupplierName'
          Options.Filtering = False
        end
        object cgvPurchaseInvoiceHdvcAddress: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'vcAddress'
          Visible = False
        end
        object cgvPurchaseInvoiceHdvcCategoryName: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'vcCategoryName'
        end
        object cgvPurchaseInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn
          Caption = 'Sisa Tagihan'
          DataBinding.FieldName = 'dcOutstandingTotalAmount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object cgPurchaseInvoiceHdLevel1: TcxGridLevel
        GridView = cgvPurchaseInvoiceHd
      end
    end
  end
  object pnlDetail: TPanel [2]
    Left = 273
    Top = 50
    Width = 589
    Height = 521
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pnlDetailTop: TPanel
      Left = 0
      Top = 0
      Width = 589
      Height = 193
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        589
        193)
      object lblIdPurchaseInvoice: TLabel
        Left = 9
        Top = 10
        Width = 74
        Height = 13
        Caption = 'Nota Pembelian'
        Transparent = True
      end
      object lblPurchaseInvoiceDate: TLabel
        Left = 9
        Top = 28
        Width = 32
        Height = 13
        Caption = 'Taggal'
        Transparent = True
      end
      object lblInvoiceDueDate: TLabel
        Left = 9
        Top = 46
        Width = 79
        Height = 13
        Caption = 'Tgl Jatuh Tempo'
        Transparent = True
      end
      object lblSupplierName: TLabel
        Left = 9
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Supplier'
        Transparent = True
      end
      object lblOutstanding: TLabel
        Left = 9
        Top = 166
        Width = 60
        Height = 13
        Caption = 'Sisa Tagihan'
        Transparent = True
      end
      object lblPurchaseOrder: TLabel
        Left = 296
        Top = 10
        Width = 83
        Height = 13
        Caption = 'Indent Pembelian'
        Transparent = True
      end
      object lblReceivingRecord: TLabel
        Left = 296
        Top = 28
        Width = 93
        Height = 13
        Caption = 'Penerimaan Barang'
        Transparent = True
      end
      object lblDisc: TLabel
        Left = 9
        Top = 100
        Width = 41
        Height = 13
        Caption = 'Disc (%)'
        Transparent = True
      end
      object lblTax: TLabel
        Left = 9
        Top = 118
        Width = 40
        Height = 13
        Caption = 'Tax (%)'
        Transparent = True
      end
      object lblTotal: TLabel
        Left = 9
        Top = 141
        Width = 24
        Height = 13
        Caption = 'Total'
        Transparent = True
      end
      object lblAmount: TLabel
        Left = 9
        Top = 82
        Width = 33
        Height = 13
        Caption = 'Jumlah'
        Transparent = True
      end
      object Label1: TLabel
        Left = 296
        Top = 46
        Width = 101
        Height = 13
        Caption = 'No Nota dari Supplier'
        Transparent = True
      end
      object dbePurchaseInvoiceDate: TcxDBDateEdit
        Left = 112
        Top = 26
        DataBinding.DataField = 'dtPurchaseInvoiceDate'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 0
        Width = 169
      end
      object dbeInvoiceDueDate: TcxDBDateEdit
        Left = 112
        Top = 44
        DataBinding.DataField = 'dtDueDate'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 1
        Width = 169
      end
      object dbeSupplierName: TcxDBTextEdit
        Left = 112
        Top = 62
        DataBinding.DataField = 'vcSupplierName'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 3
        Width = 169
      end
      object dbeOutstanding: TcxDBCurrencyEdit
        Left = 112
        Top = 159
        DataBinding.DataField = 'dcOutstandingTotalAmount'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 169
      end
      object dbePurchaseOrder: TcxDBTextEdit
        Left = 408
        Top = 8
        DataBinding.DataField = 'vcIdPurchaseOrder'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 5
        Width = 169
      end
      object dbeReceivingRecord: TcxDBTextEdit
        Left = 408
        Top = 26
        DataBinding.DataField = 'vcIdReceivingRecord'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 6
        Width = 169
      end
      object dbeIdPurchaseInvoice: TcxDBTextEdit
        Left = 112
        Top = 8
        DataBinding.DataField = 'vcIdPurchaseInvoice'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 7
        Width = 169
      end
      object dbeDisc: TcxDBSpinEdit
        Left = 112
        Top = 98
        DataBinding.DataField = 'dcDisc'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 8
        Width = 65
      end
      object dbeTax: TcxDBSpinEdit
        Left = 112
        Top = 116
        DataBinding.DataField = 'dcTax'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 9
        Width = 65
      end
      object dbeAmount: TcxDBCurrencyEdit
        Left = 112
        Top = 80
        DataBinding.DataField = 'dcAmount'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 10
        Width = 169
      end
      object dbeDiscAmount: TcxDBCurrencyEdit
        Left = 176
        Top = 98
        DataBinding.DataField = 'dcDiscAmount'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 11
        Width = 105
      end
      object dbeTaxAmount: TcxDBCurrencyEdit
        Left = 176
        Top = 116
        DataBinding.DataField = 'dcTaxAmount'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 12
        Width = 105
      end
      object dbeTotalAmount: TcxDBCurrencyEdit
        Left = 112
        Top = 134
        DataBinding.DataField = 'dcTotalAmount'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 13
        Width = 169
      end
      object pcNotes: TcxPageControl
        Left = 296
        Top = 64
        Width = 279
        Height = 123
        ActivePage = tsMemo
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 14
        ClientRectBottom = 117
        ClientRectLeft = 3
        ClientRectRight = 273
        ClientRectTop = 26
        object tsMemo: TcxTabSheet
          Caption = 'Memo'
          ImageIndex = 1
          object dbmMemo: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'txMemo'
            DataBinding.DataSource = dsIMPurchaseInvoiceHd
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 91
            Width = 270
          end
        end
        object tsNotes: TcxTabSheet
          Caption = 'Notes'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbmNotes: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'txNotes'
            DataBinding.DataSource = dsIMPurchaseInvoiceHd
            Properties.ReadOnly = True
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 91
            Width = 270
          end
        end
      end
      object dbePurchaseInvoiceSupplier: TcxDBTextEdit
        Left = 408
        Top = 44
        DataBinding.DataField = 'vcPurchaseInvoiceSupplier'
        DataBinding.DataSource = dsIMPurchaseInvoiceHd
        TabOrder = 2
        Width = 169
      end
    end
    object pnlDetailBottom: TPanel
      Left = 0
      Top = 197
      Width = 589
      Height = 324
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlDetailBodyTop: TPanel
        Left = 0
        Top = 0
        Width = 589
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblApproved: TLabel
          Left = 33
          Top = 4
          Width = 47
          Height = 13
          Caption = 'Approved'
          Transparent = True
        end
        object shpApproved: TShape
          Left = 9
          Top = 4
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object shpReject: TShape
          Left = 97
          Top = 4
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object lblReject: TLabel
          Left = 121
          Top = 4
          Width = 31
          Height = 13
          Caption = 'Reject'
          Transparent = True
        end
      end
      object cgPurchasePayment: TcxGrid
        Left = 0
        Top = 25
        Width = 589
        Height = 299
        Align = alClient
        TabOrder = 1
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cgvPurchasePayment: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsIMPurchasePayment
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPurchasePaymentStylesGetContentStyle
          object cgvPurchasePaymentchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Options.SortByDisplayText = isbtOff
          end
          object cgvPurchasePaymentvcIdPurchasePayment: TcxGridDBColumn
            Caption = 'No Pembayaran'
            DataBinding.FieldName = 'vcIdPurchasePayment'
            Options.Filtering = False
            Width = 100
          end
          object cgvPurchasePaymentdtPurchasePaymentDate: TcxGridDBColumn
            Caption = 'Tgl Bayar'
            DataBinding.FieldName = 'dtPurchasePaymentDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 100
          end
          object cgvPurchasePaymentvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
            Options.Filtering = False
            Width = 100
          end
          object cgvPurchasePaymentdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcIdPaymentType: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'vcIdPaymentType'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Options.Filtering = False
          end
          object cgvPurchasePaymentdtEffectiveDate: TcxGridDBColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'dtEffectiveDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcIdBank: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'vcIdBank'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvBank
            Properties.KeyFieldNames = 'vcIdBank'
            Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcAccountNo: TcxGridDBColumn
            Caption = 'AC'
            DataBinding.FieldName = 'vcAccountNo'
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcSupplierIdBank: TcxGridDBColumn
            Caption = 'Supplier Bank'
            DataBinding.FieldName = 'vcSupplierIdBank'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvBank
            Properties.KeyFieldNames = 'vcIdBank'
            Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcSupplierAccountNo: TcxGridDBColumn
            Caption = 'Supplier AC'
            DataBinding.FieldName = 'vcSupplierAccountNo'
            Options.Filtering = False
          end
          object cgvPurchasePaymenttxNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'txNotes'
            Visible = False
            Options.Filtering = False
          end
          object cgvPurchasePaymentvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
            Options.Filtering = False
          end
        end
        object cgvPurchaseInvoiceDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsIMPurchaseInvoiceDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              Column = cgvPurchaseInvoiceDtdcAmount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvPurchaseInvoiceDtvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
            Options.Filtering = False
            Width = 94
          end
          object cgvPurchaseInvoiceDtinNo: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'inNo'
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 45
          end
          object cgvPurchaseInvoiceDtvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
            Options.Filtering = False
            Width = 200
          end
          object cgvPurchaseInvoiceDtinQty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'inQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.UseThousandSeparator = True
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
          end
          object cgvPurchaseInvoiceDtdcPrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Width = 124
          end
          object cgvPurchaseInvoiceDtdcDiscItem: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDiscItem'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Width = 45
          end
          object cgvPurchaseInvoiceDtdcDiscItemPrice: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscItemPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Width = 124
          end
          object cgvPurchaseInvoiceDtdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Width = 124
          end
        end
        object cgvPurchaseReturnDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsIMPurchaseReturnDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'dcAmount'
              Column = cgvPurchaseReturnDtdcAmount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cgvPurchaseReturnDtvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPurchaseReturnDtvcIdPurchaseReturn: TcxGridDBColumn
            Caption = 'PR'
            DataBinding.FieldName = 'vcIdPurchaseReturn'
          end
          object cgvPurchaseReturnDtvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
          end
          object cgvPurchaseReturnDtinQty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'inQty'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPurchaseReturnDtdcPrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPurchaseReturnDtdcDisc: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDisc'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPurchaseReturnDtdcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPurchaseReturnDtdcTax: TcxGridDBColumn
            Caption = 'Pajak %'
            DataBinding.FieldName = 'dcTax'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPurchaseReturnDtdcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPurchaseReturnDtdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cgPurchasePaymentLevel1: TcxGridLevel
          Caption = 'Pembayaran'
          GridView = cgvPurchasePayment
        end
        object cgPurchasePaymentLevel2: TcxGridLevel
          Caption = 'Nota Detail'
          GridView = cgvPurchaseInvoiceDt
        end
        object cgPurchasePaymentLevel3: TcxGridLevel
          Caption = 'Retur'
          GridView = cgvPurchaseReturnDt
        end
      end
    end
    object splDetail: TcxSplitter
      Left = 0
      Top = 193
      Width = 589
      Height = 4
      HotZoneClassName = 'TcxXPTaskBarStyle'
      AlignSplitter = salTop
      Control = pnlDetailTop
    end
  end
  inherited ActionList1: TActionList
    object actPay: TAction
      Caption = 'Pay'
      OnExecute = actPayExecute
    end
  end
  object dtsIMPurchaseInvoiceHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*,'#13#10'  b.vcSupplierName as vcSupplierName,'#13#10'  dtDueD' +
      'ate = dtPurchaseInvoiceDate + IsNull(inInvoiceDueDay, 0), '#13#10'  dc' +
      'Amount = '#13#10'  (select sum(z.dcAmount) '#13#10'  from tbIMPurchaseInvoic' +
      'eDt z'#13#10'  where z.vcIdPurchaseInvoice = a.vcIdPurchaseInvoice),'#13#10 +
      '  b.vcAddress,'#13#10'  c.vcCategoryName'#13#10'from tbIMPurchaseInvoiceHd a' +
      #13#10'left join tbGNSupplier b on (a.vcIdSupplier = b.vcIdSupplier)'#13 +
      #10'left join tbGNCategory c on b.vcIdCategory = c.vcIdCategory'#13#10'wh' +
      'ere a.chStatusApprove = :StatusApprove'#13#10'and a.dcOutstandingTotal' +
      'Amount <> 0'#13#10'order by a.vcIdPurchaseInvoice'
    Parameters = <
      item
        Name = 'StatusApprove'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dtsIMPurchaseInvoiceDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*,'#13#10'  b.vcSuppliesName'#13#10'from tbIMPurchaseInvoiceDt ' +
      'a'#13#10'left join tbIMSupplies b on (a.vcIdSupplies = b.vcIdSupplies)'
    DataSource = dsIMPurchaseInvoiceHd
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dtsIMPurchasePayment: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select *'#13#10'from tbIMPurchasePayment '#13#10'order by chStatusApprove, v' +
      'cIdPurchasePayment'
    DataSource = dsIMPurchaseInvoiceHd
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dtsIMPurchaseReturnDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*, '#13#10'  b.vcIdPurchaseInvoice, c.vcSuppliesName'#13#10'fro' +
      'm tbIMPurchaseReturnDt a'#13#10'left join tbIMPurchaseReturnHd b on a.' +
      'vcIdPurchaseReturn = b.vcIdPurchaseReturn'#13#10'left join tbIMSupplie' +
      's c on a.vcIdSupplies = c.vcIdSupplies'#13#10'where b.chStatusApprove ' +
      '= '#39'6'#39#13#10
    DataSource = dsIMPurchaseInvoiceHd
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 208
  end
  object dsIMPurchaseReturnDt: TDataSource
    DataSet = dtsIMPurchaseReturnDt
    Left = 168
    Top = 208
  end
  object dsIMPurchasePayment: TDataSource
    DataSet = dtsIMPurchasePayment
    Left = 168
    Top = 176
  end
  object dsIMPurchaseInvoiceDt: TDataSource
    DataSet = dtsIMPurchaseInvoiceDt
    Left = 168
    Top = 144
  end
  object dsIMPurchaseInvoiceHd: TDataSource
    DataSet = dtsIMPurchaseInvoiceHd
    Left = 168
    Top = 112
  end
end
