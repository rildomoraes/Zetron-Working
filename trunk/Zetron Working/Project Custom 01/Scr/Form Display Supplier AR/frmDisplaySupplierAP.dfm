inherited fmDisplaySupplierAP: TfmDisplaySupplierAP
  Caption = 'Display Hutang ke Supplier'
  PixelsPerInch = 96
  TextHeight = 13
  object pcAccountPayable: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    ActivePage = tsHutang
    Align = alClient
    TabOrder = 1
    OnChange = pcAccountPayableChange
    ClientRectBottom = 311
    ClientRectLeft = 3
    ClientRectRight = 586
    ClientRectTop = 26
    object tsHutang: TcxTabSheet
      Caption = 'Hutang'
      ImageIndex = 0
      object cgAccountPayable: TcxGrid
        Left = 0
        Top = 27
        Width = 583
        Height = 258
        Align = alClient
        TabOrder = 0
        ExplicitTop = 0
        ExplicitHeight = 285
        object cgvPrevAccountPayableHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevAccountPayableHd
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
              FieldName = 'vcSupplierName'
              Column = cgvPrevAccountPayableHdvcSupplierName
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              Position = spFooter
              FieldName = 'dcAmount'
              Column = cgvPrevAccountPayableHddcAmount
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcDownPayment'
              Column = cgvPrevAccountPayableHddcDownPayment
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'vcSupplierName'
              Column = cgvPrevAccountPayableHdvcSupplierName
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcAmount'
              Column = cgvPrevAccountPayableHddcAmount
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcDownPayment'
              Column = cgvPrevAccountPayableHddcDownPayment
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvPrevAccountPayableHdStylesGetContentStyle
          object cgvPrevAccountPayableHdvcIdSupplier: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSupplier'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevAccountPayableHdvcSupplierName: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevAccountPayableHdvcCityName: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityName'
          end
          object cgvPrevAccountPayableHddcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevAccountPayableHddcDownPayment: TcxGridDBColumn
            Caption = 'Titipan'
            DataBinding.FieldName = 'dcDownPayment'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevAccountPayableHddcBudget: TcxGridDBColumn
            Caption = 'Budget'
            DataBinding.FieldName = 'dcBudget'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cgAccountPayableLevel1: TcxGridLevel
          Caption = 'Hutang'
          GridView = cgvPrevAccountPayableHd
        end
      end
      object pnlHeader: TPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 8
        DesignSize = (
          583
          27)
        object lblBudgetExceeded: TLabel
          Left = 470
          Top = 5
          Width = 105
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Melebihi batas Budget'
          Transparent = True
        end
        object shpBudgetExceed: TShape
          Left = 446
          Top = 4
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          Shape = stRoundRect
        end
      end
    end
    object tsHutangDetail: TcxTabSheet
      Caption = 'Hutang Detail'
      ImageIndex = 1
      object cgAccountPayableDt: TcxGrid
        Left = 0
        Top = 27
        Width = 583
        Height = 258
        Align = alClient
        TabOrder = 0
        ExplicitTop = 0
        ExplicitHeight = 285
        object cgvPrevAccountPayableDt: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevAccountPayableDtDate: TcxGridColumn
            Caption = 'Tanggal'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountPayableDtDesc: TcxGridColumn
            Caption = 'Keterangan'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 170
          end
          object cgvPrevAccountPayableDtDebit: TcxGridColumn
            Caption = 'Debit'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountPayableDtCredit: TcxGridColumn
            Caption = 'Kredit'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountPayableDtBalance: TcxGridColumn
            Caption = 'Saldo'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
        end
        object cgAccountPayableDtLevel1: TcxGridLevel
          GridView = cgvPrevAccountPayableDt
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 8
        object lblPeriod: TLabel
          Left = 8
          Top = 6
          Width = 36
          Height = 13
          Caption = 'Periode'
          Transparent = True
        end
        object cbMonth: TcxComboBox
          Left = 48
          Top = 4
          Properties.DropDownRows = 12
          TabOrder = 0
          Width = 89
        end
        object cbYear: TcxComboBox
          Left = 136
          Top = 4
          TabOrder = 1
          Width = 65
        end
      end
    end
    object tsUmurHutang: TcxTabSheet
      Caption = 'Umur Hutang'
      ImageIndex = 2
      object cgAccountPayableAging: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 285
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountPayableAging: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'Memo'
          DataController.DataSource = dsPrevAccountPayableAging
          DiagramColumn.Active = True
          object cgvPrevAccountPayableAgingSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'Amount'
            ValueCaptionFormat = '#,##0.#'
          end
        end
        object cgAccountPayableAgingLevel1: TcxGridLevel
          GridView = cgvPrevAccountPayableAging
        end
      end
    end
    object tsOutstandingPI: TcxTabSheet
      Caption = 'Nota Belum Terbayar'
      ImageIndex = 3
      object cgOutstandingInvoice: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 285
        Align = alClient
        TabOrder = 0
        object cgvPrevUnpaidInvoiceHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevUnpaidInvoiceHd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'dcTotalAmount'
              Column = cgvPrevUnpaidInvoiceHddcTotalAmount
            end
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'dcOutstandingTotalAmount'
              Column = cgvPrevUnpaidInvoiceHddcOutstandingTotalAmount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevUnpaidInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
          end
          object cgvPrevUnpaidInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchaseInvoiceDate'
          end
          object cgvPrevUnpaidInvoiceHdvcIdReceivingRecord: TcxGridDBColumn
            Caption = 'RR'
            DataBinding.FieldName = 'vcIdReceivingRecord'
          end
          object cgvPrevUnpaidInvoiceHdvcIdPurchaseOrder: TcxGridDBColumn
            Caption = 'PO'
            DataBinding.FieldName = 'vcIdPurchaseOrder'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHdvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcIdSupplier'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHdvcSupplierName: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
          end
          object cgvPrevUnpaidInvoiceHdvcPurchaseInvoiceSupplier: TcxGridDBColumn
            Caption = 'PI Supplier'
            DataBinding.FieldName = 'vcPurchaseInvoiceSupplier'
          end
          object cgvPrevUnpaidInvoiceHdinInvoiceDueDay: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'inInvoiceDueDay'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcDisc: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDisc'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcTax: TcxGridDBColumn
            Caption = 'Pajak %'
            DataBinding.FieldName = 'dcTax'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceHddcTotalAmount: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'dcTotalAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'dcOutstandingTotalAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
          end
        end
        object cgvPrevUnpaidInvoiceDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevUnpaidInvoiceDt
          DataController.DetailKeyFieldNames = 'vcIdPurchaseInvoice'
          DataController.MasterKeyFieldNames = 'vcIdPurchaseInvoice'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevUnpaidInvoiceDtvcIdPurchaseInvoice: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
          end
          object cgvPrevUnpaidInvoiceDtinNo: TcxGridDBColumn
            DataBinding.FieldName = 'inNo'
          end
          object cgvPrevUnpaidInvoiceDtvcIdSupplies: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSupplies'
          end
          object cgvPrevUnpaidInvoiceDtvcSuppliesName: TcxGridDBColumn
            DataBinding.FieldName = 'vcSuppliesName'
          end
          object cgvPrevUnpaidInvoiceDtinQty: TcxGridDBColumn
            DataBinding.FieldName = 'inQty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceDtdcPrice: TcxGridDBColumn
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceDtdcDiscItem: TcxGridDBColumn
            DataBinding.FieldName = 'dcDiscItem'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceDtdcDiscItemPrice: TcxGridDBColumn
            DataBinding.FieldName = 'dcDiscItemPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoiceDtdcAmount: TcxGridDBColumn
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object cgvPrevUnpaidInvoicePayment: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevUnpaidInvoicePayment
          DataController.DetailKeyFieldNames = 'vcIdPurchaseInvoice'
          DataController.MasterKeyFieldNames = 'vcIdPurchaseInvoice'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevUnpaidInvoicePaymentvcIdPurchasePayment: TcxGridDBColumn
            Caption = 'Pelunasan'
            DataBinding.FieldName = 'vcIdPurchasePayment'
          end
          object cgvPrevUnpaidInvoicePaymentdtPurchasePaymentDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchasePaymentDate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevUnpaidInvoicePaymentvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcPaymentTypeName: TcxGridDBColumn
            Caption = 'Tipe Pembayaran'
            DataBinding.FieldName = 'vcPaymentTypeName'
          end
          object cgvPrevUnpaidInvoicePaymentdtEffectiveDate: TcxGridDBColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'dtEffectiveDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcIdBank: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'vcIdBank'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcAccountNo: TcxGridDBColumn
            Caption = 'AC'
            DataBinding.FieldName = 'vcAccountNo'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcSupplierIdBank: TcxGridDBColumn
            Caption = 'Supplier Bank'
            DataBinding.FieldName = 'vcSupplierIdBank'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcSupplierAccountNo: TcxGridDBColumn
            Caption = 'Supplier AC'
            DataBinding.FieldName = 'vcSupplierAccountNo'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevUnpaidInvoicePaymentvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
          end
        end
        object cgOutstandingInvoiceLevel1: TcxGridLevel
          GridView = cgvPrevUnpaidInvoiceHd
          object cgOutstandingInvoiceLevel2: TcxGridLevel
            Caption = 'Payment'
            GridView = cgvPrevUnpaidInvoicePayment
          end
        end
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryPrevAccountPayableHd: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'DatePeriod'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @DatePeriod datetime, @Zero int'
      ''
      'set @DatePeriod = :DatePeriod'
      ''
      'select '
      '  a.vcIdSupplier, a.vcSupplierName, b.CityName,'
      
        '  dbo.fnGetAPOpeningBalance(a.vcIdSupplier, @DatePeriod) as dcAm' +
        'ount,'
      
        '  dbo.fnGetSupplierDPOpeningBalance(a.vcIdSupplier, Year(@DatePe' +
        'riod), Month(@DatePeriod)) as dcDownPayment,'
      '  IsNull(a.dcBudget, 0) as dcBudget'
      'from tbGNSupplier a'
      'left join City b on a.vcIdCity = b.CityId'
      
        'order by a.vcSupplierName                                       ' +
        ' ')
    Left = 136
    Top = 144
  end
  object dsPrevAccountPayableHd: TDataSource
    DataSet = qryPrevAccountPayableHd
    Left = 168
    Top = 144
  end
  object qryPrevAccountPayableDt: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdSupplier'
        Size = -1
        Value = Null
      end
      item
        Name = 'DatePeriod1'
        Size = -1
        Value = Null
      end
      item
        Name = 'DatePeriod2'
        Size = -1
        Value = Null
      end
      item
        Name = 'DatePeriod3'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare '
      '  @IdSupplier varchar(10), @DatePeriod1 datetime, '
      '  @DatePeriod2 datetime, @DatePeriod3 datetime'
      ''
      'set @IdSupplier = :IdSupplier'
      'set @DatePeriod1 = :DatePeriod1'
      'set @DatePeriod2 = :DatePeriod2'
      'set @DatePeriod3 = :DatePeriod3'
      ''
      
        'select                                                          ' +
        '       '
      '  @DatePeriod3 as DateTransaction,'
      '  '#39'Opening Balance'#39' as DescriptionText,'
      '  case'
      
        '    when dbo.fnGetAPOpeningBalance(@IdSupplier, @DatePeriod3) >=' +
        ' 0 then 0'
      '    else 1'
      '  end as chStatusTransaction,'
      
        '  dbo.fnGetAPOpeningBalance(@IdSupplier, @DatePeriod3) as dcAmou' +
        'nt,          '
      
        '  1 as RowOrder                                                 ' +
        '       '
      '                                                     '
      
        'union all                                                       ' +
        '       '
      ''
      'select '
      
        '  a.dtDateTransaction as DateTransaction,                       ' +
        '  '
      
        '  a.vcDescription as DescriptionText,                           ' +
        '       '
      '  b.chStatusTransaction,'
      '  a.dcAmount,'
      
        '  2 as RowOrder                                                 ' +
        '       '
      
        'from tbACTransactionAP a                                        ' +
        '       '
      
        'inner join tbACTransactionType b                                ' +
        '       '
      
        '  on a.vcIdTransactionType = b.vcIdTransactionType              ' +
        '       '
      'where a.vcIdSupplier = @IdSupplier'
      
        'and (substring(convert(varchar, dtDateTransaction, 112), 1, 6) =' +
        ' substring(convert(varchar, @DatePeriod3, 112), 1, 6)'
      
        'or substring(convert(varchar, dtDateTransaction, 112), 1, 6) = s' +
        'ubstring(convert(varchar, @DatePeriod2, 112), 1, 6)'
      
        'or substring(convert(varchar, dtDateTransaction, 112), 1, 6) = s' +
        'ubstring(convert(varchar, @DatePeriod1, 112), 1, 6))'
      ''
      'order by RowOrder, DateTransaction')
    Left = 208
    Top = 144
  end
  object qryPrevAccountPayableAging: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdSupplier'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @IdSupplier varchar(10)'
      ''
      'set @IdSupplier = :IdSupplier'
      ''
      'select'
      '  '#39'0-30 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMPurchaseInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtPurchaseInvoiceDate, getdate()) between 0 an' +
        'd 31'
      'and chStatusApprove = 2'
      'and vcIdSupplier = @IdSupplier'
      ''
      'union all'
      ''
      'select'
      '  '#39'31-60 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMPurchaseInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtPurchaseInvoiceDate, getdate()) between 31 a' +
        'nd 60'
      'and chStatusApprove = 2'
      'and vcIdSupplier = @IdSupplier'
      ''
      'union all'
      ''
      'select'
      '  '#39'61-90 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMPurchaseInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtPurchaseInvoiceDate, getdate()) between 61 a' +
        'nd 90'
      'and chStatusApprove = 2'
      'and vcIdSupplier = @IdSupplier'
      ''
      'union all'
      ''
      'select'
      '  '#39'91 hari lebih'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMPurchaseInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      'and datediff(day, dtPurchaseInvoiceDate, getdate()) >= 91'
      'and chStatusApprove = 2'
      'and vcIdSupplier = @IdSupplier')
    Left = 280
    Top = 144
  end
  object qryPrevUnpaidInvoiceHd: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdSupplier'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '%'
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.vcSupplierName'
      'from tbIMPurchaseInvoiceHd a'
      'left join tbGNSupplier b on a.vcIdSupplier = b.vcIdSupplier'
      'where a.dcOutstandingTotalAmount <> 0'
      'and a.chStatusApprove = 2'
      'and a.vcIdSupplier = :vcIdSupplier')
    Left = 352
    Top = 144
  end
  object qryPrevUnpaidInvoiceDt: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdSupplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '%'
      end>
    SQL.Strings = (
      'select '
      '  a.*, c.vcSuppliesName'
      'from tbIMPurchaseInvoiceDt a'
      
        'left join tbIMPurchaseInvoiceHd b on a.vcIdPurchaseInvoice = b.v' +
        'cIdPurchaseInvoice'
      'left join tbIMSupplies c on a.vcIdSupplies = c.vcIdSupplies'
      'where b.dcOutstandingTotalAmount <> 0'
      'and b.chStatusApprove = 2'
      'and b.vcIdSupplier = :vcIdSupplier')
    Left = 352
    Top = 208
  end
  object qryPrevUnpaidInvoicePayment: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdSupplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, c.vcPaymentTypeName'
      'from tbIMPurchasePayment a'
      
        'left join tbIMPurchaseInvoiceHd b on a.vcIdPurchaseInvoice = b.v' +
        'cIdPurchaseInvoice'
      
        'left join tbGNPaymentType c on a.vcIdPaymentType = c.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = 6'
      'and b.vcIdSupplier = :vcIdSupplier'
      '')
    Left = 352
    Top = 176
  end
  object dsPrevAccountPayableDt: TDataSource
    DataSet = qryPrevAccountPayableDt
    Left = 240
    Top = 144
  end
  object dsPrevAccountPayableAging: TDataSource
    DataSet = qryPrevAccountPayableAging
    Left = 312
    Top = 144
  end
  object dsPrevUnpaidInvoiceHd: TDataSource
    DataSet = qryPrevUnpaidInvoiceHd
    Left = 384
    Top = 144
  end
  object dsPrevUnpaidInvoiceDt: TDataSource
    DataSet = qryPrevUnpaidInvoiceDt
    Left = 384
    Top = 208
  end
  object dsPrevUnpaidInvoicePayment: TDataSource
    DataSet = qryPrevUnpaidInvoicePayment
    Left = 384
    Top = 176
  end
end
