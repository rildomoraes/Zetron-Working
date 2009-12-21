inherited fmGiro: TfmGiro
  Caption = 'fmGiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited btnPrev: TcxButton
      ExplicitLeft = 475
    end
    inherited btnNext: TcxButton
      ExplicitLeft = 523
    end
    inherited btnPost: TcxButton
      ExplicitLeft = 369
    end
    inherited btnCancel: TcxButton
      ExplicitLeft = 417
    end
    inherited btnVoid: TcxButton
      ExplicitLeft = 311
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
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblTransactionDate: TLabel
          Left = 9
          Top = 9
          Width = 74
          Height = 13
          Caption = 'Tanggal Terima'
          Transparent = True
        end
        object lblTanggal: TLabel
          Left = 9
          Top = 27
          Width = 68
          Height = 13
          Caption = 'Bank && No AC'
          Transparent = True
        end
        object lblNoAccount: TLabel
          Left = 9
          Top = 45
          Width = 49
          Height = 13
          Caption = 'Nomor BG'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 63
          Width = 33
          Height = 13
          Caption = 'Status '
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 81
          Width = 74
          Height = 13
          Caption = 'Tanggal Proses'
          Transparent = True
        end
        object lblTipe_Transaksi: TLabel
          Left = 9
          Top = 99
          Width = 104
          Height = 13
          Caption = 'Tanggal Jatuh Tempo'
          Transparent = True
        end
        object lblProject: TLabel
          Left = 10
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
        object lblNoGiro: TLabel
          Left = 9
          Top = 171
          Width = 33
          Height = 13
          Caption = 'Jumlah'
          Transparent = True
        end
        object lblReferenceId: TLabel
          Left = 9
          Top = 189
          Width = 73
          Height = 13
          Caption = 'Kode Referensi'
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 207
          Width = 55
          Height = 13
          Caption = 'Keterangan'
          Transparent = True
        end
        object dbeDateIssue: TcxDBDateEdit
          Left = 128
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'issuedate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 0
          Width = 145
        end
        object dblcBank: TcxDBExtLookupComboBox
          Left = 128
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'bankid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevBank
          Properties.KeyFieldNames = 'bankid'
          Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
          Properties.OnEditValueChanged = dblcBankPropertiesEditValueChanged
          TabOrder = 1
          Width = 145
        end
        object dblcNoAccount: TcxDBExtLookupComboBox
          Left = 272
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'bankaccount'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevAccount
          Properties.KeyFieldNames = 'accountno'
          Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
          TabOrder = 2
          Width = 145
        end
        object dbeGiroNumber: TcxDBTextEdit
          Left = 128
          Top = 43
          BeepOnEnter = False
          DataBinding.DataField = 'gironumber'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 201
        end
        object dbcStatus: TcxDBImageComboBox
          Left = 128
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'statusgiro'
          DataBinding.DataSource = dsDefault
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Terbit (Issue)'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Setor'
              Value = '1'
            end
            item
              Description = 'Cair'
              Value = '2'
            end
            item
              Description = 'Tolak'
              Value = '3'
            end>
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 145
        end
        object dbeTransactionDate: TcxDBDateEdit
          Left = 128
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'TransactionDate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 5
          Width = 145
        end
        object dbeGiroDue: TcxDBDateEdit
          Left = 128
          Top = 97
          BeepOnEnter = False
          DataBinding.DataField = 'girodue'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 6
          Width = 145
        end
        object dblcProject: TcxDBExtLookupComboBox
          Left = 128
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
          Left = 128
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
          Left = 199
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
          Left = 128
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
          Left = 199
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
        object dbeAmount: TcxDBCalcEdit
          Left = 128
          Top = 169
          BeepOnEnter = False
          DataBinding.DataField = 'Amount'
          DataBinding.DataSource = dsDefault
          TabOrder = 12
          Width = 137
        end
        object dbeReferenceId: TcxDBTextEdit
          Left = 128
          Top = 187
          BeepOnEnter = False
          DataBinding.DataField = 'ReferenceId'
          DataBinding.DataSource = dsDefault
          TabOrder = 13
          Width = 137
        end
        object dbmStatementMemo: TcxDBMemo
          Left = 128
          Top = 205
          DataBinding.DataField = 'memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 14
          Height = 116
          Width = 268
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
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
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvDisplayissuedate: TcxGridDBColumn
            Caption = 'Tgl Terima'
            DataBinding.FieldName = 'issuedate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvDisplaybankid: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'bankid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevBank
            Properties.KeyFieldNames = 'bankid'
            Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
          end
          object cgvDisplaybankaccount: TcxGridDBColumn
            Caption = 'No AC'
            DataBinding.FieldName = 'bankaccount'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevAccount
            Properties.KeyFieldNames = 'accountno'
            Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
          end
          object cgvDisplaygironumber: TcxGridDBColumn
            Caption = 'Giro No'
            DataBinding.FieldName = 'gironumber'
          end
          object cgvDisplaystatusgiro: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusgiro'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Terima'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Setor'
                Value = '1'
              end
              item
                Description = 'Cair'
                Value = '2'
              end
              item
                Description = 'Tolak'
                Value = '3'
              end>
            Visible = False
          end
          object cgvDisplaytransactiondate: TcxGridDBColumn
            Caption = 'Tgl Transaksi'
            DataBinding.FieldName = 'transactiondate'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
          end
          object cgvDisplayamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
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
          object cgvDisplayprojectid: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
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
    DataSet = qryGiro
  end
  object qryGiro: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Giro'
      'where GetPeriod(IssueDate) = :Period'
      'and FlagGiroOut = :FlagGiroOut'
      'and EmployeeId like :EmployeeId'
      'order by BankId, BankAccount, GiroNumber')
    BeforePost = qryGiroBeforePost
    AfterPost = qryGiroAfterPost
    OnNewRecord = qryGiroNewRecord
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Period'
      end
      item
        DataType = ftUnknown
        Name = 'FlagGiroOut'
      end
      item
        DataType = ftUnknown
        Name = 'employeeid'
      end>
  end
end
