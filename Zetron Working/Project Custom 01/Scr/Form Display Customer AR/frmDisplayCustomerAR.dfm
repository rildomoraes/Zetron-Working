inherited fmDisplayCustomerAR: TfmDisplayCustomerAR
  Caption = 'Display Piutang Customer'
  PixelsPerInch = 96
  TextHeight = 13
  object pcAccountReceivable: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    ActivePage = tsPiutang
    Align = alClient
    TabOrder = 1
    OnChange = pcAccountReceivableChange
    ClientRectBottom = 311
    ClientRectLeft = 3
    ClientRectRight = 586
    ClientRectTop = 26
    object tsPiutang: TcxTabSheet
      Caption = 'Piutang'
      ImageIndex = 0
      object cgAccountReceivable: TcxGrid
        Left = 0
        Top = 27
        Width = 583
        Height = 258
        Align = alClient
        TabOrder = 0
        ExplicitTop = 0
        ExplicitHeight = 285
        object cgvPrevAccountReceivableHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevAccountReceivableHd
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
              FieldName = 'vcCustomerName'
              Column = cgvPrevAccountReceivableHdvcCustomerName
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              Position = spFooter
              FieldName = 'dcAmount'
              Column = cgvPrevAccountReceivableHddcAmount
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcDownPayment'
              Column = cgvPrevAccountReceivableHddcDownPayment
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'vcCustomerName'
              Column = cgvPrevAccountReceivableHdvcCustomerName
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcAmount'
              Column = cgvPrevAccountReceivableHddcAmount
            end
            item
              Format = ',0.00;(,0.00)'
              Kind = skSum
              FieldName = 'dcDownPayment'
              Column = cgvPrevAccountReceivableHddcDownPayment
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvPrevAccountReceivableHdStylesGetContentStyle
          object cgvPrevAccountReceivableHdvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            Visible = False
          end
          object cgvPrevAccountReceivableHdvcCustomerName: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcCustomerName'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevAccountReceivableHdvcCityName: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityName'
          end
          object cgvPrevAccountReceivableHddcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevAccountReceivableHddcDownPayment: TcxGridDBColumn
            Caption = 'Titipan'
            DataBinding.FieldName = 'dcDownPayment'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevAccountReceivableHddcBudget: TcxGridDBColumn
            Caption = 'Budget'
            DataBinding.FieldName = 'dcBudget'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cgAccountReceivableLevel1: TcxGridLevel
          Caption = 'Piutang'
          GridView = cgvPrevAccountReceivableHd
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
    object tsPiutangDetail: TcxTabSheet
      Caption = 'Piutang Detail'
      ImageIndex = 1
      object cgAccountReceivableDt: TcxGrid
        Left = 0
        Top = 27
        Width = 583
        Height = 258
        Align = alClient
        TabOrder = 0
        ExplicitTop = 0
        ExplicitHeight = 285
        object cgvPrevAccountReceivableDt: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevAccountReceivableDtDate: TcxGridColumn
            Caption = 'Tanggal'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountReceivableDtDesc: TcxGridColumn
            Caption = 'Keterangan'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 170
          end
          object cgvPrevAccountReceivableDtDebit: TcxGridColumn
            Caption = 'Debit'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountReceivableDtCredit: TcxGridColumn
            Caption = 'Kredit'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cgvPrevAccountReceivableDtBalance: TcxGridColumn
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
        object cgAccountReceivableDtLevel1: TcxGridLevel
          GridView = cgvPrevAccountReceivableDt
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
    object tsUmurPiutang: TcxTabSheet
      Caption = 'Umur Piutang'
      ImageIndex = 2
      object cgAccountReceivableAging: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 285
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountReceivableAging: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'Memo'
          DataController.DataSource = dsPrevAccountReceivableAging
          DiagramColumn.Active = True
          object cgvPrevAccountReceivableAgingSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'Amount'
            ValueCaptionFormat = '#,##0.##'
          end
        end
        object cgAccountReceivableAgingLevel1: TcxGridLevel
          GridView = cgvPrevAccountReceivableAging
        end
      end
    end
    object tsOutstandingSI: TcxTabSheet
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
          object cgvPrevUnpaidInvoiceHdvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'SI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
          end
          object cgvPrevUnpaidInvoiceHddtSalesInvoiceDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesInvoiceDate'
          end
          object cgvPrevUnpaidInvoiceHdvcIdSalesOrder: TcxGridDBColumn
            Caption = 'SO'
            DataBinding.FieldName = 'vcIdSalesOrder'
          end
          object cgvPrevUnpaidInvoiceHdvcIdDeliveryOrder: TcxGridDBColumn
            Caption = 'DO'
            DataBinding.FieldName = 'vcIdDeliveryOrder'
          end
          object cgvPrevUnpaidInvoiceHdvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
          end
          object cgvPrevUnpaidInvoiceHdvcCustomerName: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcCustomerName'
          end
          object cgvPrevUnpaidInvoiceHdvcIdWarehouse: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'vcIdWarehouse'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevUnpaidInvoiceHdvcWarehouseName: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'vcWarehouseName'
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
          object cgvPrevUnpaidInvoiceHdSalesman: TcxGridDBColumn
            DataBinding.FieldName = 'Salesman'
          end
          object cgvPrevUnpaidInvoiceHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
          end
        end
        object cgvPrevUnpaidInvoiceDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DetailKeyFieldNames = 'vcIdSalesInvoice'
          DataController.MasterKeyFieldNames = 'vcIdSalesInvoice'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevUnpaidInvoiceDtvcIdSalesInvoice: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSalesInvoice'
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
          object cgvPrevUnpaidInvoiceDtdcPricePrint: TcxGridDBColumn
            DataBinding.FieldName = 'dcPricePrint'
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
          DataController.DetailKeyFieldNames = 'vcIdSalesInvoice'
          DataController.MasterKeyFieldNames = 'vcIdSalesInvoice'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevUnpaidInvoicePaymentvcIdSalesPayment: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'vcIdSalesPayment'
          end
          object cgvPrevUnpaidInvoicePaymentdtSalesPaymentDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesPaymentDate'
          end
          object cgvPrevUnpaidInvoicePaymentvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'SI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcPaymentTypeName: TcxGridDBColumn
            Caption = 'Tipe Pembayaran'
            DataBinding.FieldName = 'vcPaymentTypeName'
          end
          object cgvPrevUnpaidInvoicePaymentdtEffectiveDate: TcxGridDBColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'dtEffectiveDate'
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
          object cgvPrevUnpaidInvoicePaymentvcCustomerIdBank: TcxGridDBColumn
            Caption = 'Customer Bank'
            DataBinding.FieldName = 'vcCustomerIdBank'
            Visible = False
          end
          object cgvPrevUnpaidInvoicePaymentvcCustomerAccountNo: TcxGridDBColumn
            Caption = 'Customer AC'
            DataBinding.FieldName = 'vcCustomerAccountNo'
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
  object qryPrevAccountReceivableHd: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DatePeriod'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @DatePeriod datetime'
      ''
      'set @DatePeriod = :DatePeriod'
      ''
      'select '
      '  a.vcIdCustomer, a.vcCustomerName, b.CityName,           '
      
        '  dbo.fnGetAROpeningBalance(a.vcIdCustomer, @DatePeriod) as dcAm' +
        'ount,'
      
        '  dbo.fnGetCustomerDPOpeningBalance(a.vcIdCustomer, Year(@DatePe' +
        'riod), Month(@DatePeriod)) as dcDownPayment,'
      '  IsNull(a.dcBudget, 0) as dcBudget'
      
        'from tbGNCustomer a                                             ' +
        ' '
      'left join City b on a.vcIdCity = b.CityId'
      'order by a.vcCustomerName')
    Left = 136
    Top = 144
  end
  object dsPrevAccountReceivableHd: TDataSource
    DataSet = qryPrevAccountReceivableHd
    Left = 168
    Top = 144
  end
  object qryPrevAccountReceivableDt: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdCustomer'
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
      '  @IdCustomer varchar(10), @DatePeriod1 datetime,'
      '  @DatePeriod2 datetime, @DatePeriod3 datetime'
      ''
      'set @IdCustomer = :IdCustomer'
      'set @DatePeriod1 = :DatePeriod1'
      'set @DatePeriod2 = :DatePeriod2'
      'set @DatePeriod3 = :DatePeriod3'
      ''
      
        'select                                                          ' +
        '       '
      '  @DatePeriod3 as DateTransaction,'
      '  '#39'Opening Balance'#39' as DescriptionText,'
      '  case'
      
        '    when dbo.fnGetAROpeningBalance(@IdCustomer, @DatePeriod3) >=' +
        ' 0 then 0'
      '    else 1'
      '  end as chStatusTransaction,'
      
        '  dbo.fnGetAROpeningBalance(@IdCustomer, @DatePeriod3) as dcAmou' +
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
      
        '  a.dcAmount,                                                   ' +
        ' '
      '  2 as RowOrder'
      
        'from tbACTransactionAR a                                        ' +
        '       '
      
        'inner join tbACTransactionType b                                ' +
        '       '
      
        '  on a.vcIdTransactionType = b.vcIdTransactionType              ' +
        '       '
      'where a.vcIdCustomer = @IdCustomer'
      
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
  object dsPrevAccountReceivableDt: TDataSource
    DataSet = qryPrevAccountReceivableDt
    Left = 240
    Top = 144
  end
  object qryPrevAccountReceivableAging: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCustomer'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @IdCustomer varchar(10)'
      ''
      'set @IdCustomer = :IdCustomer'
      ''
      'select'
      '  '#39'0-30 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount  '
      'from tbIMSalesInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtSalesInvoiceDate, getdate()) between 0 and 3' +
        '1'
      'and chStatusApprove = 3'
      'and vcIdCustomer = @IdCustomer'
      ''
      'union all'
      ''
      'select'
      '  '#39'31-60 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMSalesInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtSalesInvoiceDate, getdate()) between 31 and ' +
        '60'
      'and chStatusApprove = 3'
      'and vcIdCustomer = @IdCustomer'
      ''
      'union all'
      ''
      'select'
      '  '#39'61-90 hari'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMSalesInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      
        'and datediff(day, dtSalesInvoiceDate, getdate()) between 61 and ' +
        '90'
      'and chStatusApprove = 3'
      'and vcIdCustomer = @IdCustomer'
      ''
      'union all'
      ''
      'select'
      '  '#39'91 hari lebih'#39' as Memo,'
      '  Sum(dcOutstandingTotalAmount) as Amount'
      'from tbIMSalesInvoiceHd'
      'where dcOutstandingTotalAmount <> 0'
      'and datediff(day, dtSalesInvoiceDate, getdate()) >= 91'
      'and chStatusApprove = 3'
      'and vcIdCustomer = @IdCustomer')
    Left = 280
    Top = 144
  end
  object dsPrevAccountReceivableAging: TDataSource
    DataSet = qryPrevAccountReceivableAging
    Left = 312
    Top = 144
  end
  object qryPrevUnpaidInvoiceHd: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdCustomer'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.vcCustomerName, c.vcWarehouseName,'
      '  d.EmployeeName as Salesman'
      'from tbIMSalesInvoiceHd a'
      'left join tbGNCustomer b on a.vcIdCustomer = b.vcIdCustomer'
      'left join tbGNWarehouse c on a.vcIdWarehouse = c.vcIdWarehouse'
      'left join Employee d on a.vcSalesName = d.EmployeeId'
      'where a.dcOutstandingTotalAmount <> 0'
      'and a.chStatusApprove = 3'
      'and a.vcIdCustomer = :vcIdCustomer')
    Left = 352
    Top = 144
  end
  object dsPrevUnpaidInvoiceHd: TDataSource
    DataSet = qryPrevUnpaidInvoiceHd
    Left = 384
    Top = 144
  end
  object qryPrevUnpaidInvoiceDt: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdCustomer'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, c.vcSuppliesName'
      'from tbIMSalesInvoiceDt a'
      
        'left join tbIMSalesInvoiceHd b on a.vcIdSalesInvoice = b.vcIdSal' +
        'esInvoice'
      'left join tbIMSupplies c on a.vcIdSupplies = c.vcIdSupplies'
      'where b.dcOutstandingTotalAmount <> 0'
      'and b.chStatusApprove = 3'
      'and b.vcIdCustomer = :vcIdCustomer')
    Left = 352
    Top = 176
  end
  object dsPrevUnpaidInvoiceDt: TDataSource
    DataSet = qryPrevUnpaidInvoiceDt
    Left = 384
    Top = 176
  end
  object qryPrevUnpaidInvoicePayment: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdCustomer'
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
      'from tbIMSalesPayment a'
      
        'left join tbIMSalesInvoiceHd b on a.vcIdSalesInvoice = b.vcIdSal' +
        'esInvoice'
      
        'left join tbGNPaymentType c on a.vcIdPaymentType = c.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = 6'
      'and b.vcIdCustomer = :vcIdCustomer'
      '')
    Left = 352
    Top = 208
  end
  object dsPrevUnpaidInvoicePayment: TDataSource
    DataSet = qryPrevUnpaidInvoicePayment
    Left = 384
    Top = 208
  end
end
