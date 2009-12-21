inherited fmPurchasePaymentApproval: TfmPurchasePaymentApproval
  Caption = 'Pembayaran Pembelian - Approval'
  ExplicitWidth = 780
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited dbeEmployee: TcxDBTextEdit
      ExplicitHeight = 19
    end
  end
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
        DesignSize = (
          740
          387)
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
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
          Top = 82
          Width = 82
          Height = 13
          Caption = 'Indent Pembelian'
          Transparent = True
        end
        object lblIdReceiveRecord: TLabel
          Left = 8
          Top = 64
          Width = 93
          Height = 13
          Caption = 'Penerimaan Barang'
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
        object lblTotal: TLabel
          Left = 296
          Top = 80
          Width = 24
          Height = 13
          Caption = 'Total'
          Transparent = True
        end
        object bvlLine1: TBevel
          Left = 8
          Top = 104
          Width = 545
          Height = 7
          Shape = bsTopLine
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
        object lblOutstanding: TLabel
          Left = 296
          Top = 119
          Width = 62
          Height = 13
          Caption = 'Sisa Tagihan'
          Transparent = True
        end
        object lblPayment: TLabel
          Left = 297
          Top = 144
          Width = 59
          Height = 13
          Caption = 'Pembayaran'
          Transparent = True
        end
        object lblShortage: TLabel
          Left = 297
          Top = 184
          Width = 49
          Height = 13
          Caption = 'Kembalian'
          Transparent = True
        end
        object bvlLine2: TBevel
          Left = 385
          Top = 170
          Width = 169
          Height = 9
          Shape = bsTopLine
        end
        object bvlLine5: TBevel
          Left = 287
          Top = 229
          Width = 266
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object lblDownPaymentLimit: TLabel
          Left = 296
          Top = 238
          Width = 62
          Height = 13
          Caption = 'Saldo Titipan'
          Transparent = True
        end
        object lblInfo: TLabel
          Left = 384
          Top = 256
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
        object lblEmployeeName: TLabel
          Left = 8
          Top = 256
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object dbeIdPurchaseInvoice: TcxDBTextEdit
          Left = 120
          Top = 8
          DataBinding.DataField = 'vcIdPurchaseInvoice'
          DataBinding.DataSource = dsIMPurchaseInvoice
          Properties.OnEditValueChanged = dbeIdPurchaseInvoicePropertiesEditValueChanged
          TabOrder = 0
          Width = 161
        end
        object dbePurchaseInvoiceDate: TcxDBDateEdit
          Left = 120
          Top = 26
          DataBinding.DataField = 'dtPurchaseInvoiceDate'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 1
          Width = 161
        end
        object dbeSupplier: TcxDBTextEdit
          Left = 120
          Top = 44
          DataBinding.DataField = 'vcSupplierName'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 2
          Width = 161
        end
        object dbeIdReceiveRecord: TcxDBTextEdit
          Left = 120
          Top = 62
          DataBinding.DataField = 'vcIdReceivingRecord'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 3
          Width = 161
        end
        object dbeIdPurchaseOrder: TcxDBTextEdit
          Left = 120
          Top = 80
          DataBinding.DataField = 'vcIdPurchaseOrder'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 4
          Width = 161
        end
        object dbeInvoiceDueDate: TcxDBDateEdit
          Left = 384
          Top = 8
          DataBinding.DataField = 'dtInvoiceDueDate'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 5
          Width = 169
        end
        object dbeTotalAmount: TcxDBCurrencyEdit
          Left = 384
          Top = 26
          DataBinding.DataField = 'dcTotalAmount'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 6
          Width = 169
        end
        object dbeDisc: TcxDBSpinEdit
          Left = 384
          Top = 44
          DataBinding.DataField = 'dcDisc'
          DataBinding.DataSource = dsIMPurchaseInvoice
          Properties.SpinButtons.Position = sbpHorzLeftRight
          TabOrder = 7
          Width = 65
        end
        object dbeDiscAmount: TcxDBCurrencyEdit
          Left = 448
          Top = 44
          DataBinding.DataField = 'dcDiscAmount'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 8
          Width = 105
        end
        object dbeTaxAmount: TcxDBCurrencyEdit
          Left = 448
          Top = 62
          DataBinding.DataField = 'dcTaxAmount'
          DataBinding.DataSource = dsIMPurchaseInvoice
          TabOrder = 10
          Width = 105
        end
        object dbeTax: TcxDBSpinEdit
          Left = 384
          Top = 62
          DataBinding.DataField = 'dcTax'
          DataBinding.DataSource = dsIMPurchaseInvoice
          Properties.SpinButtons.Position = sbpHorzLeftRight
          TabOrder = 9
          Width = 65
        end
        object dbeTotal: TcxDBCurrencyEdit
          Left = 384
          Top = 80
          DataBinding.DataField = 'dcTotalAmount'
          DataBinding.DataSource = dsIMPurchaseInvoice
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 169
        end
        object dbeIdPurchasePayment: TcxDBTextEdit
          Left = 120
          Top = 110
          DataBinding.DataField = 'vcIdPurchasePayment'
          DataBinding.DataSource = dsDefault
          Style.Color = clWindow
          TabOrder = 12
          Width = 161
        end
        object dbePurchasePaymentDate: TcxDBDateEdit
          Left = 120
          Top = 128
          DataBinding.DataField = 'dtPurchasePaymentDate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 13
          Width = 161
        end
        object dblcPaymentType: TcxDBExtLookupComboBox
          Left = 120
          Top = 146
          DataBinding.DataField = 'vcIdPaymentType'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevPaymentType
          Properties.KeyFieldNames = 'vcIdPaymentType'
          Properties.ListFieldItem = dmAccounting.cgvPrevPaymentTypevcPaymentTypeName
          TabOrder = 14
          Width = 161
        end
        object dbeEffectiveDate: TcxDBDateEdit
          Left = 120
          Top = 164
          DataBinding.DataField = 'dtEffectiveDate'
          DataBinding.DataSource = dsDefault
          TabOrder = 15
          Width = 161
        end
        object dblcIdBank: TcxDBExtLookupComboBox
          Left = 120
          Top = 182
          DataBinding.DataField = 'vcIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 16
          Width = 161
        end
        object dblcSupplierIdBank: TcxDBExtLookupComboBox
          Left = 120
          Top = 218
          DataBinding.DataField = 'vcSupplierIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 18
          Width = 161
        end
        object dbeOutstanding: TcxDBCurrencyEdit
          Left = 384
          Top = 112
          DataBinding.DataField = 'dcOutstandingTotalAmount'
          DataBinding.DataSource = dsIMPurchaseInvoice
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 20
          Width = 169
        end
        object dbeAmount: TcxDBCurrencyEdit
          Left = 384
          Top = 137
          DataBinding.DataField = 'dcAmount'
          DataBinding.DataSource = dsDefault
          ParentFont = False
          Properties.DisplayFormat = '$,0.00;($,0.00)'
          Properties.UseDisplayFormatWhenEditing = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 21
          Width = 169
        end
        object edtShortage: TcxCurrencyEdit
          Left = 384
          Top = 177
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
          TabOrder = 22
          Width = 169
        end
        object edtDownPaymentLimit: TcxCurrencyEdit
          Left = 384
          Top = 236
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 23
          Width = 169
        end
        object pcNotes: TcxPageControl
          Left = 0
          Top = 279
          Width = 740
          Height = 108
          ActivePage = tsNotes
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 24
          ClientRectBottom = 102
          ClientRectLeft = 3
          ClientRectRight = 734
          ClientRectTop = 26
          object tsNotes: TcxTabSheet
            Caption = 'Notes'
            ImageIndex = 0
            object dbmNotes: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'txNotes'
              DataBinding.DataSource = dsDefault
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 76
              Width = 731
            end
          end
          object tsSINotes: TcxTabSheet
            Caption = 'SI Notes'
            ImageIndex = 1
            object dbmSINotes: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'txNotes'
              DataBinding.DataSource = dsIMPurchaseInvoice
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 76
              Width = 731
            end
          end
          object tsSIMemo: TcxTabSheet
            Caption = 'SI Memo'
            ImageIndex = 2
            object dbmSIMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'txMemo'
              DataBinding.DataSource = dsIMPurchaseInvoice
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 76
              Width = 731
            end
          end
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 120
          Top = 254
          DataBinding.DataField = 'vcEmployeeName'
          Properties.ReadOnly = True
          Style.Color = clWindow
          TabOrder = 25
          Width = 161
        end
        object dbeAccountNo: TcxDBTextEdit
          Left = 120
          Top = 200
          DataBinding.DataField = 'vcAccountNo'
          DataBinding.DataSource = dsDefault
          TabOrder = 17
          Width = 161
        end
        object dbeSupplierAccountNo: TcxDBTextEdit
          Left = 120
          Top = 236
          DataBinding.DataField = 'vcSupplierAccountNo'
          DataBinding.DataSource = dsDefault
          TabOrder = 19
          Width = 161
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPurchasePayment: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPurchasePayment: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPurchasePaymentStylesGetContentStyle
          object cgvPurchasePaymentvcIdPurchasePayment: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'vcIdPurchasePayment'
            Width = 80
          end
          object cgvPurchasePaymentdtDatePurchasePayment: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchasePaymentDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object cgvPurchasePaymentvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
            Width = 90
          end
          object cgvPurchasePaymentvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
          end
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
        end
        object cgPurchasePaymentLevel1: TcxGridLevel
          GridView = cgvPurchasePayment
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actApprove: TAction
      OnExecute = actApproveExecute
    end
    inherited actRevision: TAction
      OnExecute = actRevisionExecute
    end
    inherited actNotes: TAction
      OnExecute = actNotesExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dtsIMPurchasePayment
  end
  object dtsIMPurchasePayment: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select *'#13#10'from tbIMPurchasePayment'#13#10'where (chStatusApprove = :Ap' +
      'prove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :Re' +
      'ject'#13#10'or chStatusApprove = :Done)'#13#10'and dtPurchasePaymentDate bet' +
      'ween :StartDate and :EndDate'#13#10'and vcIdPaymentType in'#13#10'  (select ' +
      'vcIdPaymentType'#13#10'  from tbGNPaymentType'#13#10'  where FlagPurchasePay' +
      'ment = '#39'1'#39#13#10'  and StatusPayment = :StatusPayment)'#13#10'order by chSt' +
      'atusApprove, vcIdPurchasePayment'#13#10
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
        Value = '0'
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'Done'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'StartDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39814d
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39814d
      end
      item
        Name = 'StatusPayment'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object spPurchasePaymentValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spPurchasePaymentValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPurchasePayment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object dsIMPurchaseInvoice: TDataSource
    DataSet = dtsIMPurchaseInvoice
    Left = 168
    Top = 144
  end
  object dtsIMPurchaseInvoice: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*,'#13#10'  b.vcSupplierName,'#13#10'  (a.dtPurchaseInvoiceDate' +
      ' + a.inInvoiceDueDay) as dtInvoiceDueDate'#13#10'from tbIMPurchaseInvo' +
      'iceHd a'#13#10'inner join tbGNSupplier b on a.vcIdSupplier = b.vcIdSup' +
      'plier'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 144
  end
end
