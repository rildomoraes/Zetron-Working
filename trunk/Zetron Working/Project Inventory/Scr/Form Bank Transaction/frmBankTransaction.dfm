inherited fmBankTransaction: TfmBankTransaction
  Caption = 'Transaksi Bank'
  ClientHeight = 371
  ClientWidth = 712
  ExplicitWidth = 720
  ExplicitHeight = 405
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 712
    ExplicitWidth = 712
  end
  inherited pnlCustom: TPanel
    Width = 712
    ExplicitWidth = 712
    object lblAutoCreate: TLabel [3]
      Left = 623
      Top = 5
      Width = 76
      Height = 13
      Caption = 'AUTO CREATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
  end
  inherited dxDockSite1: TdxDockSite
    Width = 712
    Height = 296
    ExplicitWidth = 712
    ExplicitHeight = 296
    DockType = 0
    OriginalWidth = 712
    OriginalHeight = 296
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 684
      Height = 296
      ExplicitWidth = 684
      ExplicitHeight = 296
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 684
        Height = 296
        ExplicitWidth = 684
        ExplicitHeight = 296
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 684
        Height = 296
        ExplicitWidth = 684
        ExplicitHeight = 296
        DesignSize = (
          680
          292)
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblTanggal: TLabel
          Left = 9
          Top = 9
          Width = 39
          Height = 13
          Caption = 'Tanggal'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 27
          Width = 63
          Height = 13
          Caption = 'No Transaksi'
          Transparent = True
        end
        object lblTipe_Transaksi: TLabel
          Left = 9
          Top = 63
          Width = 21
          Height = 13
          Caption = 'Tipe'
          Transparent = True
        end
        object lblBank: TLabel
          Left = 8
          Top = 81
          Width = 68
          Height = 13
          Caption = 'Bank && No AC'
          Transparent = True
        end
        object lblNoGiro: TLabel
          Left = 9
          Top = 99
          Width = 36
          Height = 13
          Caption = 'No Giro'
          Transparent = True
        end
        object lblProject: TLabel
          Left = 9
          Top = 117
          Width = 33
          Height = 13
          Caption = 'Proyek'
          Transparent = True
        end
        object lblVendor: TLabel
          Left = 9
          Top = 135
          Width = 66
          Height = 13
          Caption = 'Untuk Vendor'
          Transparent = True
        end
        object lblCustomer: TLabel
          Left = 9
          Top = 153
          Width = 66
          Height = 13
          Caption = 'Dari Customer'
          Transparent = True
        end
        object lblJumlah: TLabel
          Left = 9
          Top = 189
          Width = 33
          Height = 13
          Caption = 'Jumlah'
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 45
          Width = 55
          Height = 13
          Caption = 'No External'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 171
          Width = 86
          Height = 13
          Caption = 'Mata Uang && Kurs'
          Transparent = True
        end
        object lblKeterangan: TLabel
          Left = 9
          Top = 207
          Width = 55
          Height = 13
          Caption = 'Keterangan'
          Transparent = True
        end
        object dbeBankTransactionDate: TcxDBDateEdit
          Left = 103
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'BankTransactiondate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 0
          Width = 110
        end
        object dbeBankTransactionId: TcxDBTextEdit
          Left = 103
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'BankTransactionid'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeBankTransactionIdPropertiesEditValueChanged
          TabOrder = 1
          Width = 110
        end
        object dblcCashBankTransactionTypeId: TcxDBExtLookupComboBox
          Left = 103
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'cashbanktransactiontypeid'
          DataBinding.DataSource = dsDefault
          Properties.View = cgvPrevCashBankTransactionType
          Properties.KeyFieldNames = 'cashbanktransactiontypeid'
          Properties.ListFieldItem = cgvPrevCashBankTransactionTypecashbanktransactiontypename
          TabOrder = 3
          Width = 201
        end
        object dblcBank: TcxDBExtLookupComboBox
          Left = 103
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'bankid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevBank
          Properties.KeyFieldNames = 'bankid'
          Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
          Properties.OnEditValueChanged = dblcBankPropertiesEditValueChanged
          TabOrder = 4
          Width = 128
        end
        object dblcNoAccount: TcxDBExtLookupComboBox
          Left = 230
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'accountno'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevAccount
          Properties.KeyFieldNames = 'accountno'
          Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
          TabOrder = 5
          Width = 145
        end
        object dbeNoGiro: TcxDBTextEdit
          Left = 103
          Top = 97
          BeepOnEnter = False
          DataBinding.DataField = 'gironumber'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 201
        end
        object dblcProject: TcxDBExtLookupComboBox
          Left = 103
          Top = 115
          BeepOnEnter = False
          DataBinding.DataField = 'ProjectId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevProject
          Properties.KeyFieldNames = 'projectid'
          Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
          TabOrder = 7
          Width = 201
        end
        object dblcVendorId: TcxDBExtLookupComboBox
          Left = 103
          Top = 133
          BeepOnEnter = False
          DataBinding.DataField = 'VendorId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevVendor
          Properties.KeyFieldNames = 'VendorId'
          Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorId
          TabOrder = 8
          Width = 72
        end
        object dblcVendorId2: TcxDBExtLookupComboBox
          Left = 174
          Top = 133
          BeepOnEnter = False
          DataBinding.DataField = 'VendorId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevVendor
          Properties.KeyFieldNames = 'VendorId'
          Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
          TabOrder = 9
          Width = 201
        end
        object dblcCustomerId: TcxDBExtLookupComboBox
          Left = 103
          Top = 151
          BeepOnEnter = False
          DataBinding.DataField = 'CustomerId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerId
          TabOrder = 10
          Width = 72
        end
        object dblcCustomerId2: TcxDBExtLookupComboBox
          Left = 174
          Top = 151
          BeepOnEnter = False
          DataBinding.DataField = 'CustomerId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          TabOrder = 11
          Width = 201
        end
        object dbmStatementMemo: TcxDBMemo
          Left = 103
          Top = 205
          Anchors = [akLeft, akTop, akBottom]
          DataBinding.DataField = 'memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 15
          Height = 80
          Width = 272
        end
        object dbeExternalId: TcxDBTextEdit
          Left = 103
          Top = 43
          BeepOnEnter = False
          DataBinding.DataField = 'ExternalId'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 201
        end
        object dblcCurrencyId: TcxDBExtLookupComboBox
          Left = 103
          Top = 169
          BeepOnEnter = False
          DataBinding.DataField = 'currencyid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
          TabOrder = 12
          Width = 72
        end
        object dbeKurs: TcxDBCurrencyEdit
          Left = 174
          Top = 169
          BeepOnEnter = False
          DataBinding.DataField = 'kurs'
          DataBinding.DataSource = dsDefault
          TabOrder = 13
          Width = 117
        end
        object dbeAmount: TcxDBCurrencyEdit
          Left = 103
          Top = 187
          BeepOnEnter = False
          DataBinding.DataField = 'Amount'
          DataBinding.DataSource = dsDefault
          TabOrder = 14
          Width = 137
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'banktransactionid'
              Column = cgvDisplaybanktransactionid
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvDisplaystatusapprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusapprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Unposting'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Posting'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
            Width = 64
          end
          object cgvDisplaybanktransactionid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'banktransactionid'
          end
          object cgvDisplaybanktransactiondate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'banktransactiondate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvDisplaycashbanktransactiontypeid: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'cashbanktransactiontypeid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevCashBankTransactionType
            Properties.KeyFieldNames = 'cashbanktransactiontypeid'
            Properties.ListFieldItem = dmAccounting.cgvPrevCashBankTransactionTypecashbanktransactiontypename
            Visible = False
          end
          object cgvDisplaybankid: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'bankid'
            Visible = False
          end
          object cgvDisplayaccountno: TcxGridDBColumn
            Caption = 'Account'
            DataBinding.FieldName = 'accountno'
            Visible = False
          end
          object cgvDisplaygironumber: TcxGridDBColumn
            Caption = 'Giro No'
            DataBinding.FieldName = 'gironumber'
            Visible = False
          end
          object cgvDisplayprojectid: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            Visible = False
          end
          object cgvDisplayamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object cgvDisplayoutstanding: TcxGridDBColumn
            Caption = 'Sisa Alokasi'
            DataBinding.FieldName = 'outstanding'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 100
          end
          object cgvDisplayvendorid: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
            Visible = False
          end
          object cgvDisplaycustomerid: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customerid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
            Visible = False
          end
          object cgvDisplayemployeeid: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeeid'
            Visible = False
          end
        end
        object cgDisplayLevel1: TcxGridLevel
          GridView = cgvDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryBankTransaction
  end
  object dsPrevCashBankTransactionType: TDataSource
    DataSet = qryPrevCashBankTransactionType
    Left = 168
    Top = 144
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 104
    Top = 144
    object cgvPrevCashBankTransactionType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevCashBankTransactionType
      DataController.KeyFieldNames = 'cashbanktransactiontypeid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCashBankTransactionTypecashbanktransactiontypeid: TcxGridDBColumn
        DataBinding.FieldName = 'cashbanktransactiontypeid'
        Visible = False
      end
      object cgvPrevCashBankTransactionTypecashbanktransactiontypename: TcxGridDBColumn
        Caption = 'Transaksi'
        DataBinding.FieldName = 'cashbanktransactiontypename'
      end
      object cgvPrevCashBankTransactionTypeflagbank: TcxGridDBColumn
        DataBinding.FieldName = 'flagbank'
        Visible = False
      end
      object cgvPrevCashBankTransactionTypeflagout: TcxGridDBColumn
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
    end
  end
  object qryBankTransaction: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from BankTransaction'
      'where extract(year from BankTransactionDate) = :Year'
      'and extract(month from BankTransactionDate) = :Month'
      'and Employeeid like :Employeeid'
      'and CashBankTransactionTypeId in '
      '  (select CashBankTransactionTypeId '
      '  from CashBankTransactionType '
      '  where FlagOut = :FlagOut)'
      'order by BankTransactionid')
    BeforeInsert = qryBankTransactionBeforeInsert
    BeforeEdit = qryBankTransactionBeforeEdit
    BeforePost = qryBankTransactionBeforePost
    AfterPost = qryBankTransactionAfterPost
    AfterCancel = qryBankTransactionAfterCancel
    OnNewRecord = qryBankTransactionNewRecord
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
        Name = 'Employeeid'
      end
      item
        DataType = ftUnknown
        Name = 'flagout'
      end>
  end
  object qryPrevCashBankTransactionType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from CashBankTransactionType'
      'where FlagOut like :FlagOut'
      'and FlagBank = '#39'1'#39)
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagOut'
      end>
  end
end
