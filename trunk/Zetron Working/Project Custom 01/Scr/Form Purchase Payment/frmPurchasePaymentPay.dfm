object fmPurchasePaymentPay: TfmPurchasePaymentPay
  Left = 251
  Top = 112
  BorderStyle = bsSingle
  Caption = 'Pembayaran Pembelian'
  ClientHeight = 463
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBody: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object bvlLine2: TBevel
      Left = 383
      Top = 167
      Width = 169
      Height = 9
      Shape = bsTopLine
    end
    object bvlLine4: TBevel
      Left = 8
      Top = 279
      Width = 545
      Height = 7
      Shape = bsTopLine
    end
    object lblDisc: TLabel
      Left = 296
      Top = 44
      Width = 38
      Height = 13
      Caption = 'Disc (%)'
      Transparent = True
    end
    object lblTax: TLabel
      Left = 296
      Top = 62
      Width = 35
      Height = 13
      Caption = 'Tax (%)'
      Transparent = True
    end
    object bvlLine5: TBevel
      Left = 288
      Top = 210
      Width = 265
      Height = 9
      Shape = bsTopLine
      Visible = False
    end
    object bvlLine3: TBevel
      Left = 287
      Top = 104
      Width = 9
      Height = 175
      Shape = bsLeftLine
    end
    object lblPurchaseInvoice: TLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 13
      Caption = 'Nota Pembelian'
      Transparent = True
    end
    object lblPurchaseInvoiceDate: TLabel
      Left = 8
      Top = 26
      Width = 39
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object lblSupplier: TLabel
      Left = 8
      Top = 44
      Width = 38
      Height = 13
      Caption = 'Supplier'
      Transparent = True
    end
    object lblIdPurchaseOrder: TLabel
      Left = 8
      Top = 62
      Width = 82
      Height = 13
      Caption = 'Indent Pembelian'
      Transparent = True
    end
    object lblIdReceiveRecord: TLabel
      Left = 8
      Top = 80
      Width = 93
      Height = 13
      Caption = 'Penerimaan Barang'
      Transparent = True
    end
    object lblIdPurchasePayment: TLabel
      Left = 8
      Top = 112
      Width = 59
      Height = 13
      Caption = 'Pembayaran'
      Transparent = True
    end
    object lblPurchasePaymentDate: TLabel
      Left = 8
      Top = 130
      Width = 39
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object lblPaymentType: TLabel
      Left = 8
      Top = 147
      Width = 83
      Height = 13
      Caption = 'Tipe Pembayaran'
      Transparent = True
    end
    object lblEffectiveDate: TLabel
      Left = 8
      Top = 166
      Width = 48
      Height = 13
      Caption = 'Tgl Efektif'
      Transparent = True
    end
    object lblNameOfBank: TLabel
      Left = 8
      Top = 184
      Width = 25
      Height = 13
      Caption = 'Bank'
      Transparent = True
    end
    object lblAccountNo: TLabel
      Left = 8
      Top = 202
      Width = 14
      Height = 13
      Caption = 'AC'
      Transparent = True
    end
    object lblSupplierBank: TLabel
      Left = 8
      Top = 220
      Width = 66
      Height = 13
      Caption = 'Supplier Bank'
      Transparent = True
    end
    object lblSupplierAccountNo: TLabel
      Left = 8
      Top = 238
      Width = 54
      Height = 13
      Caption = 'Supplier Ac'
      Transparent = True
    end
    object lblEmployeeName: TLabel
      Left = 8
      Top = 256
      Width = 41
      Height = 13
      Caption = 'Pegawai'
      Transparent = True
    end
    object lblInvoiceDueDate: TLabel
      Left = 296
      Top = 8
      Width = 80
      Height = 13
      Caption = 'Tgl Jatuh Tempo'
      Transparent = True
    end
    object lblAmount: TLabel
      Left = 296
      Top = 26
      Width = 33
      Height = 13
      Caption = 'Jumlah'
      Transparent = True
    end
    object lblTotal: TLabel
      Left = 296
      Top = 80
      Width = 24
      Height = 13
      Caption = 'Total'
      Transparent = True
    end
    object lblOutstanding: TLabel
      Left = 296
      Top = 117
      Width = 62
      Height = 13
      Caption = 'Sisa Tagihan'
      Transparent = True
    end
    object lblPayment: TLabel
      Left = 296
      Top = 141
      Width = 27
      Height = 13
      Caption = 'Bayar'
      Transparent = True
    end
    object lblShortage: TLabel
      Left = 296
      Top = 182
      Width = 49
      Height = 13
      Caption = 'Kembalian'
      Transparent = True
    end
    object lblDownPaymentLimit: TLabel
      Left = 296
      Top = 218
      Width = 62
      Height = 13
      Caption = 'Saldo Titipan'
      Transparent = True
    end
    object lblInfo: TLabel
      Left = 384
      Top = 245
      Width = 139
      Height = 13
      Caption = '* Sampai dengan hari ini'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bvlLine1: TBevel
      Left = 8
      Top = 104
      Width = 545
      Height = 7
      Shape = bsTopLine
    end
    object dbeInvoiceDueDate: TcxDBDateEdit
      Left = 384
      Top = 8
      DataBinding.DataField = 'dtInvoiceDueDate'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 5
      Width = 169
    end
    object dbePurchaseInvoiceDate: TcxDBDateEdit
      Left = 120
      Top = 26
      DataBinding.DataField = 'dtPurchaseInvoiceDate'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 1
      Width = 161
    end
    object dbeIdPurchaseInvoice: TcxDBTextEdit
      Left = 120
      Top = 8
      DataBinding.DataField = 'vcIdPurchaseInvoice'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 0
      Width = 161
    end
    object dbePurchasePaymentDate: TcxDBDateEdit
      Left = 120
      Top = 128
      DataBinding.DataField = 'dtPurchasePaymentDate'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      TabOrder = 10
      Width = 161
    end
    object dbeIdPurchasePayment: TcxDBTextEdit
      Left = 120
      Top = 110
      DataBinding.DataField = 'vcIdPurchasePayment'
      DataBinding.DataSource = dsIMPurchasePayment
      Style.Color = clWindow
      TabOrder = 9
      Width = 161
    end
    object dbeEmployeeName: TcxDBTextEdit
      Left = 120
      Top = 254
      DataBinding.DataField = 'vcEmployeeName'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.ReadOnly = True
      Style.Color = clWindow
      TabOrder = 17
      Width = 161
    end
    object dbeAmount: TcxDBCurrencyEdit
      Left = 384
      Top = 135
      DataBinding.DataField = 'dcAmount'
      DataBinding.DataSource = dsIMPurchasePayment
      ParentFont = False
      Properties.UseDisplayFormatWhenEditing = True
      Properties.ValidateOnEnter = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 169
    end
    object dbeEffectiveDate: TcxDBDateEdit
      Left = 120
      Top = 164
      DataBinding.DataField = 'dtEffectiveDate'
      DataBinding.DataSource = dsIMPurchasePayment
      TabOrder = 12
      Width = 161
    end
    object edtShortage: TcxCurrencyEdit
      Left = 384
      Top = 175
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Style.Color = clWindow
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 169
    end
    object dbmNotes: TcxDBMemo
      Left = 8
      Top = 285
      DataBinding.DataField = 'txNotes'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.ScrollBars = ssVertical
      TabOrder = 22
      Height = 132
      Width = 545
    end
    object btnDefaultAmount: TcxButton
      Left = 352
      Top = 137
      Width = 25
      Height = 23
      Action = actDefaultAmount
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object dbeSupplier: TcxDBTextEdit
      Left = 120
      Top = 44
      DataBinding.DataField = 'vcSupplierName'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 2
      Width = 161
    end
    object dbeIdPurchaseOrder: TcxDBTextEdit
      Left = 120
      Top = 80
      DataBinding.DataField = 'vcIdPurchaseOrder'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 4
      Width = 161
    end
    object dbeIdReceiveRecord: TcxDBTextEdit
      Left = 120
      Top = 62
      DataBinding.DataField = 'vcIdReceivingRecord'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 3
      Width = 161
    end
    object dbeTotalAmount: TcxDBCurrencyEdit
      Left = 384
      Top = 26
      DataBinding.DataField = 'dcTotalAmount'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      ParentFont = False
      TabOrder = 6
      Width = 169
    end
    object dbeOutstanding: TcxDBCurrencyEdit
      Left = 384
      Top = 110
      DataBinding.DataField = 'dcOutstandingTotalAmount'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 169
    end
    object dbeTax: TcxDBSpinEdit
      Left = 384
      Top = 62
      DataBinding.DataField = 'dcTax'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      Properties.SpinButtons.Position = sbpHorzLeftRight
      TabOrder = 8
      Width = 65
    end
    object dbeDisc: TcxDBSpinEdit
      Left = 384
      Top = 44
      DataBinding.DataField = 'dcDisc'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      Properties.SpinButtons.Position = sbpHorzLeftRight
      TabOrder = 7
      Width = 65
    end
    object dblcPaymentType: TcxDBExtLookupComboBox
      Left = 120
      Top = 146
      DataBinding.DataField = 'vcIdPaymentType'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.View = cgvPrevPaymentType
      Properties.KeyFieldNames = 'vcIdPaymentType'
      Properties.ListFieldItem = cgvPrevPaymentTypevcPaymentTypeName
      TabOrder = 11
      Width = 161
    end
    object dblcIdBank: TcxDBExtLookupComboBox
      Left = 120
      Top = 182
      DataBinding.DataField = 'vcIdBank'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.View = dmAccounting.cgvBank
      Properties.KeyFieldNames = 'vcIdBank'
      Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
      TabOrder = 13
      Width = 161
    end
    object dblcSupplierIdBank: TcxDBExtLookupComboBox
      Left = 120
      Top = 218
      DataBinding.DataField = 'vcSupplierIdBank'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.View = dmAccounting.cgvBank
      Properties.KeyFieldNames = 'vcIdBank'
      Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
      TabOrder = 15
      Width = 161
    end
    object dblcAccountNo: TcxDBExtLookupComboBox
      Left = 120
      Top = 200
      DataBinding.DataField = 'vcAccountNo'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.View = cgvPrevBankAccount
      Properties.KeyFieldNames = 'vcAccountNo'
      Properties.ListFieldItem = cgvPrevBankAccountvcAccountNo
      TabOrder = 14
      Width = 161
    end
    object dblcSupplierAccountNo: TcxDBExtLookupComboBox
      Left = 120
      Top = 236
      DataBinding.DataField = 'vcSupplierAccountNo'
      DataBinding.DataSource = dsIMPurchasePayment
      Properties.View = cgvPrevSupplierBankAccount
      Properties.KeyFieldNames = 'vcSupplierAccountNo'
      Properties.ListFieldItem = cgvPrevSupplierBankAccountvcSupplierAccountNo
      TabOrder = 16
      Width = 161
    end
    object edtDownPaymentLimit: TcxCurrencyEdit
      Left = 384
      Top = 218
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 23
      Visible = False
      Width = 169
    end
    object dbeDiscAmount: TcxDBCurrencyEdit
      Left = 448
      Top = 44
      DataBinding.DataField = 'dcDiscAmount'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 24
      Width = 105
    end
    object dbeTaxAmount: TcxDBCurrencyEdit
      Left = 448
      Top = 62
      DataBinding.DataField = 'dcTaxAmount'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      TabOrder = 25
      Width = 105
    end
    object dbeTotal: TcxDBCurrencyEdit
      Left = 384
      Top = 80
      DataBinding.DataField = 'dcTotalAmount'
      DataBinding.DataSource = dsPrevPurchaseInvoiceHd
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 26
      Width = 169
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 422
    Width = 560
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 184
      Top = 4
      Width = 81
      Height = 33
      Action = DataSetCancel
      TabOrder = 0
    end
    object btnSave: TcxButton
      Left = 104
      Top = 4
      Width = 81
      Height = 33
      Action = DataSetPost
      TabOrder = 1
    end
    object btnNotes: TcxButton
      Left = 8
      Top = 4
      Width = 81
      Height = 33
      Action = actNotes
      TabOrder = 2
    end
  end
  object aclHeader: TActionList
    Left = 80
    Top = 224
    object DataSetPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&Simpan'
      Enabled = False
      ImageIndex = 3
      DataSource = dsIMPurchasePayment
    end
    object DataSetCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Batal'
      Enabled = False
      ImageIndex = 4
      DataSource = dsIMPurchasePayment
    end
    object actDefaultAmount: TAction
      Caption = '='
      OnExecute = actDefaultAmountExecute
    end
    object actNotes: TAction
      Caption = '&Notes'
      OnExecute = actNotesExecute
    end
  end
  object dsIMPurchasePayment: TDataSource
    DataSet = dtsIMPurchasePayment
    OnDataChange = dsIMPurchasePaymentDataChange
    Left = 112
    Top = 256
  end
  object dtsIMPurchasePayment: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = DataSetBeforePost
    AfterPost = dtsIMPurchasePaymentAfterPost
    AfterCancel = dtsIMPurchasePaymentAfterCancel
    OnNewRecord = dtsIMPurchasePaymentNewRecord
    CommandText = 
      'select *'#13#10'from tbIMPurchasePayment'#13#10'where (chStatusApprove = :Ap' +
      'prove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :Re' +
      'ject)'#13#10'and substring(convert(varchar, dtPurchasePaymentDate, 112' +
      '), 1, 6) = :Period'
    Parameters = <
      item
        Name = 'Approve1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'Approve2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '1'
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '5'
      end
      item
        Name = 'Period'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = '200505'
      end>
    Left = 80
    Top = 256
  end
  object qryBankAccount: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdBank'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.vcBankName'
      'from tbACBankAccount a'
      'left join tbACBank b on a.vcIdBank = b.vcIdBank'
      'where a.chFlagInactive = '#39'0'#39
      'and a.vcIdBank = :IdBank'
      'order by b.vcBankName, a.vcAccountNo')
    Left = 80
    Top = 352
  end
  object dsBankAccount: TDataSource
    DataSet = qryBankAccount
    Left = 112
    Top = 352
  end
  object qrySupplierBankAccount: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdSupplier'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '%'
      end
      item
        Name = 'SupplierIdBank'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.vcBankName, c.vcSupplierName'
      'from tbACSupplierBankAccount a'
      'left join tbACBank b on a.vcSupplierIdBank = b.vcIdBank'
      'left join tbGNSupplier c on a.vcIdSupplier = c.vcIdSupplier'
      'where a.chFlagInactive = '#39'0'#39
      'and a.vcIdSupplier = :IdSupplier'
      'and a.vcSupplierIdBank = :SupplierIdBank'
      'order by b.vcBankName, a.vcSupplierAccountNo')
    Left = 80
    Top = 384
  end
  object dsSupplierBankAccount: TDataSource
    DataSet = qrySupplierBankAccount
    Left = 112
    Top = 384
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 48
    Top = 320
    object cgvPrevPaymentType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPaymentType
      DataController.KeyFieldNames = 'vcIdPaymentType'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevPaymentTypevcIdPaymentType: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdPaymentType'
        Visible = False
      end
      object cgvPrevPaymentTypevcPaymentTypeName: TcxGridDBColumn
        DataBinding.FieldName = 'vcPaymentTypeName'
        Options.Filtering = False
      end
      object cgvPrevPaymentTypechFlagInactive: TcxGridDBColumn
        DataBinding.FieldName = 'chFlagInactive'
        Visible = False
      end
      object cgvPrevPaymentTypevcEmployeeName: TcxGridDBColumn
        DataBinding.FieldName = 'vcEmployeeName'
        Visible = False
      end
      object cgvPrevPaymentTypechFlagFix: TcxGridDBColumn
        DataBinding.FieldName = 'chFlagFix'
        Visible = False
      end
    end
    object cgvPrevBankAccount: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsBankAccount
      DataController.KeyFieldNames = 'vcAccountNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevBankAccountvcIdBank: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdBank'
        Visible = False
      end
      object cgvPrevBankAccountvcBankName: TcxGridDBColumn
        DataBinding.FieldName = 'vcBankName'
      end
      object cgvPrevBankAccountvcAccountNo: TcxGridDBColumn
        DataBinding.FieldName = 'vcAccountNo'
        Options.Filtering = False
      end
      object cgvPrevBankAccountvcAccountName: TcxGridDBColumn
        DataBinding.FieldName = 'vcAccountName'
        Options.Filtering = False
      end
    end
    object cgvPrevSupplierBankAccount: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSupplierBankAccount
      DataController.KeyFieldNames = 'vcSupplierAccountNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevSupplierBankAccountvcSupplierName: TcxGridDBColumn
        DataBinding.FieldName = 'vcSupplierName'
        Visible = False
      end
      object cgvPrevSupplierBankAccountvcSupplierIdBank: TcxGridDBColumn
        DataBinding.FieldName = 'vcSupplierIdBank'
        Visible = False
      end
      object cgvPrevSupplierBankAccountvcBankName: TcxGridDBColumn
        DataBinding.FieldName = 'vcBankName'
      end
      object cgvPrevSupplierBankAccountvcSupplierAccountNo: TcxGridDBColumn
        DataBinding.FieldName = 'vcSupplierAccountNo'
        Options.Filtering = False
      end
      object cgvPrevSupplierBankAccountvcAccountName: TcxGridDBColumn
        DataBinding.FieldName = 'vcAccountName'
        Options.Filtering = False
      end
    end
  end
  object qryPrevPurchaseInvoiceHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPurchaseInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = '%'
      end>
    SQL.Strings = (
      'select '
      '  a.*,'
      '  b.vcSupplierName,'
      
        '  (a.dtPurchaseInvoiceDate + a.inInvoiceDueDay) as dtInvoiceDueD' +
        'ate'
      'from tbIMPurchaseInvoiceHd a'
      'inner join tbGNSupplier b on a.vcIdSupplier = b.vcIdSupplier'
      'where a.vcIdPurchaseInvoice like :IdPurchaseInvoice')
    Left = 80
    Top = 288
  end
  object dsPrevPurchaseInvoiceHd: TDataSource
    DataSet = qryPrevPurchaseInvoiceHd
    Left = 112
    Top = 288
  end
  object qryPrevPaymentType: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from tbGNPaymentType'
      'where FlagPurchasePayment = '#39'1'#39)
    Left = 80
    Top = 320
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPrevPaymentType
    Left = 112
    Top = 320
  end
end
