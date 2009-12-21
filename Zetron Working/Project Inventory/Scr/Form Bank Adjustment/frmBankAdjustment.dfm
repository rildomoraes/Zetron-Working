inherited fmBankAdjustment: TfmBankAdjustment
  Caption = 'Selisih Kurs - Bank '
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    DesignSize = (
      772
      25)
    object lblAutoCreate: TLabel [3]
      Left = 628
      Top = 5
      Width = 70
      Height = 13
      Caption = 'AUTO CREATE'
      Transparent = True
      Visible = False
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      Anchors = [akLeft, akTop, akRight]
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
        object lblBank: TLabel
          Left = 8
          Top = 63
          Width = 68
          Height = 13
          Caption = 'Bank && No AC'
          Transparent = True
        end
        object lblJumlah: TLabel
          Left = 9
          Top = 99
          Width = 76
          Height = 13
          Caption = 'Jumlah (Rupiah)'
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
          Top = 81
          Width = 97
          Height = 18
          AutoSize = False
          Caption = 'Untuk Mata Uang'
          Transparent = True
        end
        object lblKeterangan: TLabel
          Left = 9
          Top = 117
          Width = 55
          Height = 13
          Caption = 'Keterangan'
          Transparent = True
        end
        object dbeBankAdjustmentDate: TcxDBDateEdit
          Left = 103
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'bankadjustmentdate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          Properties.SaveTime = False
          TabOrder = 0
          Width = 110
        end
        object dbeBankAdjustmentId: TcxDBTextEdit
          Left = 103
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'bankadjustmentid'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeBankAdjustmentIdPropertiesEditValueChanged
          TabOrder = 1
          Width = 110
        end
        object dblcBank: TcxDBExtLookupComboBox
          Left = 103
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'bankid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevBank
          Properties.KeyFieldNames = 'bankid'
          Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
          Properties.OnEditValueChanged = dblcBankPropertiesEditValueChanged
          TabOrder = 3
          Width = 128
        end
        object dblcNoAccount: TcxDBExtLookupComboBox
          Left = 230
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'accountno'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevAccount
          Properties.KeyFieldNames = 'accountno'
          Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
          TabOrder = 4
          Width = 145
        end
        object dbeAmount: TcxDBCalcEdit
          Left = 103
          Top = 97
          BeepOnEnter = False
          DataBinding.DataField = 'Amount'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 137
        end
        object dbmStatementMemo: TcxDBMemo
          Left = 103
          Top = 115
          Anchors = [akLeft, akTop, akBottom]
          DataBinding.DataField = 'memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Height = 118
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
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'currencyid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
          TabOrder = 5
          Width = 72
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
    DataSet = qryBankAdjustment
  end
  object qryBankAdjustment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from BankAdjustment'
      'where extract(year from BankAdjustmentDate) = :Year'
      'and extract(month from BankAdjustmentDate) = :Month')
    BeforeInsert = qryBankAdjustmentBeforeInsert
    BeforeEdit = qryBankAdjustmentBeforeEdit
    BeforePost = qryBankAdjustmentBeforePost
    AfterPost = qryBankAdjustmentAfterPost
    AfterCancel = qryBankAdjustmentAfterCancel
    OnNewRecord = qryBankAdjustmentNewRecord
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
      end>
  end
end
