inherited fmDisplayBankTransaction: TfmDisplayBankTransaction
  Caption = 'Display Transaksi Bank '
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object pnlProgressBar: TPanel
      Left = 203
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 4
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object pcBank: TcxPageControl [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    ActivePage = tsBankTransaction
    Align = alClient
    TabOrder = 2
    OnChange = pcBankChange
    ClientRectBottom = 292
    ClientRectRight = 592
    ClientRectTop = 24
    object tsBankTransaction: TcxTabSheet
      Caption = 'Transaksi Bank'
      ImageIndex = 0
      object cgDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 592
        Height = 268
        Align = alClient
        TabOrder = 0
        object cgvDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDisplay
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'amount'
              Column = cgvDisplayamount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'statusapprove'
              Column = cgvDisplayStatusApprove
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'amount'
              Column = cgvDisplayamount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'StatusApprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                ImageIndex = 7
                Value = '0'
              end
              item
                ImageIndex = 6
                Value = '1'
              end
              item
                ImageIndex = 8
                Value = '2'
              end>
            Width = 41
          end
          object cgvDisplayflagout: TcxGridDBColumn
            Caption = 'In/Out'
            DataBinding.FieldName = 'flagout'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Masuk'
                ImageIndex = 9
                Value = '0'
              end
              item
                Description = 'Keluar'
                ImageIndex = 10
                Value = '1'
              end>
          end
          object cgvDisplaybanktransactionid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'banktransactionid'
            Width = 64
          end
          object cgvDisplaybanktransactiondate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'banktransactiondate'
            Width = 64
          end
          object cgvDisplaycashbanktransactiontypename: TcxGridDBColumn
            Caption = 'Transaksi'
            DataBinding.FieldName = 'cashbanktransactiontypename'
            Width = 68
          end
          object cgvDisplaymemo: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'memo'
            Visible = False
          end
          object cgvDisplayvendorname: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorname'
            Visible = False
          end
          object cgvDisplaycustomername: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customername'
            Visible = False
          end
          object cgvDisplayamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Styles.Content = dmGlobal.stYellowLight
            Width = 64
          end
          object cgvDisplayemployeename: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeename'
            Width = 64
          end
        end
        object cgDisplayLevel1: TcxGridLevel
          GridView = cgvDisplay
        end
      end
    end
    object tsBankFlow: TcxTabSheet
      Caption = 'Arus Bank'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        592
        268)
      object lblBank: TLabel
        Left = 8
        Top = 8
        Width = 23
        Height = 13
        Caption = 'Bank'
        Transparent = True
      end
      object lblNoAccount: TLabel
        Left = 192
        Top = 8
        Width = 55
        Height = 13
        Caption = 'No Account'
        Transparent = True
      end
      object lbl3: TLabel
        Left = 40
        Top = 8
        Width = 4
        Height = 13
        Caption = ':'
        Transparent = True
      end
      object lbl4: TLabel
        Left = 256
        Top = 8
        Width = 4
        Height = 13
        Caption = ':'
        Transparent = True
      end
      object cgPrevBankFlow: TcxGrid
        Left = 0
        Top = 32
        Width = 592
        Height = 236
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        object cgvPrevBankFlow: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevBankFlowTransactionDate: TcxGridColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cgvPrevBankFlowMemo: TcxGridColumn
            Caption = 'Keterangan'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cgvPrevBankFlowTransactionTypeName: TcxGridColumn
            Caption = 'Tipe Transaksi'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevBankFlowRef: TcxGridColumn
            Caption = 'Ref'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cgvPrevBankFlowVendor: TcxGridColumn
            Caption = 'Vendor'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevBankFlowCustomer: TcxGridColumn
            Caption = 'Customer'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevBankFlowDebit: TcxGridColumn
            Caption = 'Debit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cgvPrevBankFlowCredit: TcxGridColumn
            Caption = 'Kredit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object cgvPrevBankFlowBalance: TcxGridColumn
            Caption = 'Saldo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
        end
        object cgPrevBankFlowLevel1: TcxGridLevel
          GridView = cgvPrevBankFlow
        end
      end
      object edtBankId: TcxExtLookupComboBox
        Left = 48
        Top = 8
        Properties.View = dmAccounting.cgvPrevBank
        Properties.KeyFieldNames = 'bankid'
        Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
        Properties.OnEditValueChanged = edtBankIdPropertiesEditValueChanged
        TabOrder = 0
        Width = 121
      end
      object edtAccountNo: TcxExtLookupComboBox
        Left = 264
        Top = 8
        Properties.View = dmAccounting.cgvPrevAccount
        Properties.KeyFieldNames = 'accountno'
        Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
        Properties.OnEditValueChanged = edtAccountNoPropertiesEditValueChanged
        TabOrder = 1
        Width = 145
      end
    end
  end
  object dsDisplay: TDataSource [6]
    DataSet = qryDisplay
    Left = 200
    Top = 144
  end
  object dsPrevCashFlow: TDataSource [7]
    DataSet = qryPrevBankFlow
    Left = 200
    Top = 176
  end
  object qryDisplay: TUniQuery [8]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*,'
      '  b.CashBankTransactionTypeName, '
      '  c.EmployeeName, b.FlagOut,'
      '  d.VendorName, e.CustomerName'
      'from BankTransaction a'
      
        'left join CashBankTransactionType b on a.CashBankTransactionType' +
        'Id = b.CashBankTransactionTypeId'
      'left join Employee c on a.EmployeeId = c.EmployeeId'
      'left join Vendor d on a.VendorId = d.VendorId'
      'left join Customer e on a.CustomerId = e.CustomerId'
      'where extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'order by a.CashBankTransactionTypeId, a.BankTransactionId')
    Left = 168
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
  object qryPrevBankFlow: TUniQuery [9]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      
        '  GetFirstDateOfMonth(cast(:TransactionDate as date)) as Transac' +
        'tionDate,'
      '  '#39' '#39' as Ref,'
      '  '#39'Saldo Awal'#39' as Memo,'
      
        '  fnGetBankOpeningBalance(:BankId, :AccountNo, GetFirstDateOfMon' +
        'th(cast(:TransactionDate as date))) as Amount,'
      '  0 as OrderNo,'
      '  '#39' '#39' as TransactionTypeName,'
      '  '#39' '#39' as VendorName,'
      '  '#39' '#39' as CustomerName'
      ''
      'union all'
      ''
      'select'
      '  a.BankTransactionDate as TransactionDate,'
      '  a.BankTransactionId as Ref,'
      '  a.Memo,'
      '  (case'
      '     when b.FlagOut = '#39'0'#39' then Amount'
      '     when b.FlagOut = '#39'1'#39' then Amount * -1'
      '  end)as Amount,'
      '  1 as OrderNo,'
      '  CashBankTransactionTypeName as TransactionTypeName,'
      '  VendorName, CustomerName'
      'from BankTransaction a'
      
        'left join CashBankTransactionType b on a.CashBankTransactionType' +
        'Id = b.CashBankTransactionTypeId'
      'left join Vendor c on a.VendorId = c.VendorId'
      'left join Customer d on a.CustomerId = d.CustomerId'
      'where extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.BankId = :BankId'
      'and a.AccountNo = :AccountNo'
      'order by OrderNo, TransactionDate, Ref')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'BankId'
      end
      item
        DataType = ftUnknown
        Name = 'AccountNo'
      end
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
