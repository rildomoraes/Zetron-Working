inherited fmCashTransaction: TfmCashTransaction
  Caption = 'Transaksi Kas'
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
          Top = 62
          Width = 24
          Height = 13
          Caption = 'Tipe '
          Transparent = True
        end
        object lblProject: TLabel
          Left = 9
          Top = 81
          Width = 33
          Height = 13
          Caption = 'Proyek'
          Transparent = True
        end
        object lblVendor: TLabel
          Left = 9
          Top = 99
          Width = 66
          Height = 13
          Caption = 'Untuk Vendor'
          Transparent = True
        end
        object lblCustomer: TLabel
          Left = 9
          Top = 117
          Width = 66
          Height = 13
          Caption = 'Dari Customer'
          Transparent = True
        end
        object lblJumlah: TLabel
          Left = 9
          Top = 153
          Width = 33
          Height = 13
          Caption = 'Jumlah'
          Transparent = True
        end
        object lblKeterangan: TLabel
          Left = 9
          Top = 171
          Width = 55
          Height = 13
          Caption = 'Keterangan'
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
          Top = 135
          Width = 86
          Height = 13
          Caption = 'Mata Uang && Kurs'
          Transparent = True
        end
        object dbeCashTransactionDate: TcxDBDateEdit
          Left = 103
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'cashtransactiondate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 0
          Width = 110
        end
        object dbeCashTransactionId: TcxDBTextEdit
          Left = 103
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'cashtransactionid'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeCashTransactionIdPropertiesEditValueChanged
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
        object dblcProject: TcxDBExtLookupComboBox
          Left = 103
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'ProjectId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevProject
          Properties.KeyFieldNames = 'projectid'
          Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
          TabOrder = 4
          Width = 201
        end
        object dblcVendorId: TcxDBExtLookupComboBox
          Left = 103
          Top = 97
          BeepOnEnter = False
          DataBinding.DataField = 'VendorId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevVendor
          Properties.KeyFieldNames = 'VendorId'
          Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorId
          TabOrder = 5
          Width = 72
        end
        object dblcVendorId2: TcxDBExtLookupComboBox
          Left = 174
          Top = 97
          BeepOnEnter = False
          DataBinding.DataField = 'VendorId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevVendor
          Properties.KeyFieldNames = 'VendorId'
          Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
          TabOrder = 6
          Width = 201
        end
        object dblcCustomerId: TcxDBExtLookupComboBox
          Left = 103
          Top = 115
          BeepOnEnter = False
          DataBinding.DataField = 'CustomerId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerId
          TabOrder = 7
          Width = 72
        end
        object dblcCustomerId2: TcxDBExtLookupComboBox
          Left = 174
          Top = 115
          BeepOnEnter = False
          DataBinding.DataField = 'CustomerId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          TabOrder = 8
          Width = 201
        end
        object dbmStatementMemo: TcxDBMemo
          Left = 103
          Top = 168
          Anchors = [akLeft, akTop, akBottom]
          DataBinding.DataField = 'memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 12
          Height = 113
          Width = 272
        end
        object dbeExternalId: TcxDBTextEdit
          Left = 103
          Top = 43
          BeepOnEnter = False
          DataBinding.DataField = 'ExternalId'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeCashTransactionIdPropertiesEditValueChanged
          TabOrder = 2
          Width = 201
        end
        object dblcCurrencyId: TcxDBExtLookupComboBox
          Left = 103
          Top = 133
          BeepOnEnter = False
          DataBinding.DataField = 'currencyid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
          TabOrder = 9
          Width = 72
        end
        object dbeKurs: TcxDBCurrencyEdit
          Left = 174
          Top = 133
          BeepOnEnter = False
          DataBinding.DataField = 'kurs'
          DataBinding.DataSource = dsDefault
          TabOrder = 10
          Width = 117
        end
        object dbeAmount: TcxDBCurrencyEdit
          Left = 103
          Top = 151
          BeepOnEnter = False
          DataBinding.DataField = 'amount'
          DataBinding.DataSource = dsDefault
          TabOrder = 11
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
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'cashtransactionid'
              Column = cgvDisplaycashtransactionid
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
          object cgvDisplaycashtransactionid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'cashtransactionid'
          end
          object cgvDisplaycashtransactiondate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'cashtransactiondate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvDisplaycashbanktransactiontypeid: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'cashbanktransactiontypeid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevCashBankTransactionType
            Properties.KeyFieldNames = 'cashbanktransactiontypeid'
            Properties.ListFieldItem = dmAccounting.cgvPrevCashBankTransactionTypecashbanktransactiontypename
          end
          object cgvDisplaycashbanktransactiontypeid2: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'cashbanktransactiontypeid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevCashBankTransactionType
            Properties.KeyFieldNames = 'cashbanktransactiontypeid'
            Properties.ListFieldItem = dmAccounting.cgvPrevCashBankTransactionTypeflagout
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
          object cgvDisplayamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvDisplayoutstanding: TcxGridDBColumn
            Caption = 'Sisa Alokasi'
            DataBinding.FieldName = 'outstanding'
            PropertiesClassName = 'TcxCalcEditProperties'
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
    DataSet = qryCashTransaction
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
  object qryCashTransaction: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select a.* '
      'from CashTransaction a'
      'where extract(year from CashTransactionDate) = :Year'
      'and extract(month from CashTransactionDate) = :Month'
      'and Employeeid like :Employeeid'
      'and CashBankTransactionTypeId in '
      '  (select CashBankTransactionTypeId '
      '  from CashBankTransactionType '
      '  where FlagOut = :FlagOut)')
    BeforeInsert = qryCashTransactionBeforeInsert
    BeforeEdit = qryCashTransactionBeforeEdit
    BeforePost = qryCashTransactionBeforePost
    AfterPost = qryCashTransactionAfterPost
    AfterCancel = qryCashTransactionAfterCancel
    OnNewRecord = qryCashTransactionNewRecord
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
        Name = 'FlagOut'
      end>
  end
  object qryPrevCashBankTransactionType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from CashBankTransactionType'
      'where FlagOut like :FlagOut'
      'and FlagBank = '#39'0'#39)
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagOut'
      end>
  end
end
