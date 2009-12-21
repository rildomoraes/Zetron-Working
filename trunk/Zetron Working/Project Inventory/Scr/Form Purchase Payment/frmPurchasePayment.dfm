inherited fmPurchasePayment: TfmPurchasePayment
  Caption = 'Pembayaran Pembelian'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblVendor: TLabel
            Left = 9
            Top = 10
            Width = 34
            Height = 13
            Caption = 'Vendor'
            Transparent = True
          end
          object lblDeposit: TLabel
            Left = 346
            Top = 64
            Width = 66
            Height = 13
            Caption = 'Saldo Deposit'
            Transparent = True
          end
          object lblPurchasePaymentDate: TLabel
            Left = 346
            Top = 10
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblPurchasePaymentId: TLabel
            Left = 346
            Top = 28
            Width = 76
            Height = 13
            Caption = 'No Pembayaran'
            Transparent = True
          end
          object lblCashRegisterTransactionId: TLabel
            Left = 346
            Top = 46
            Width = 88
            Height = 13
            Caption = 'Transaksi Register'
            Transparent = True
          end
          object dblcVendorId: TcxDBExtLookupComboBox
            Left = 58
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorId
            Properties.OnEditValueChanged = dblcVendorIdPropertiesEditValueChanged
            TabOrder = 0
            Width = 72
          end
          object dblcVendorId2: TcxDBExtLookupComboBox
            Left = 127
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
            TabOrder = 1
            Width = 204
          end
          object dbeVendorDepositBalance: TcxDBCurrencyEdit
            Left = 440
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'DepositBalance'
            DataBinding.DataSource = dmGeneral.dsPrevVendor
            Style.Color = clWhite
            TabOrder = 9
            Width = 152
          end
          object dbePurchasePaymentDate: TcxDBDateEdit
            Left = 440
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'PurchasePaymentDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 6
            Width = 110
          end
          object dbePurchasePaymentId: TcxDBTextEdit
            Left = 440
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'PurchasePaymentId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbePurchasePaymentIdPropertiesEditValueChanged
            TabOrder = 7
            Width = 152
          end
          object edtAddress: TcxMemo
            Left = 58
            Top = 25
            Style.Color = clWhite
            TabOrder = 2
            Height = 39
            Width = 273
          end
          object edtCityName: TcxExtLookupComboBox
            Left = 58
            Top = 61
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Style.Color = clWhite
            TabOrder = 3
            Width = 273
          end
          object edtProvinceName: TcxExtLookupComboBox
            Left = 58
            Top = 79
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Style.Color = clWhite
            TabOrder = 4
            Width = 153
          end
          object edtCountryName: TcxExtLookupComboBox
            Left = 208
            Top = 79
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Style.Color = clWhite
            TabOrder = 5
            Width = 123
          end
          object dbeCashRegisterTransactionId: TcxDBTextEdit
            Left = 440
            Top = 43
            BeepOnEnter = False
            DataBinding.DataField = 'cashregistertransactionid'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbePurchasePaymentIdPropertiesEditValueChanged
            TabOrder = 8
            Width = 152
          end
        end
        object cgPurchasePaymentDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 184
          Align = alClient
          TabOrder = 1
          object cgvPurchasePaymentDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPurchasePaymentDt
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'amount'
                Column = cgvPurchasePaymentDtamount
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'no'
                Column = cgvPurchasePaymentDtno
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'amount'
                Column = cgvPurchasePaymentDtamount
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            object cgvPurchasePaymentDtpurchasepaymentid: TcxGridDBColumn
              DataBinding.FieldName = 'purchasepaymentid'
              Visible = False
              Options.Grouping = False
              VisibleForCustomization = False
            end
            object cgvPurchasePaymentDtno: TcxGridDBColumn
              Caption = ' No'
              DataBinding.FieldName = 'no'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 41
            end
            object cgvPurchasePaymentDtpurchaseinvoiceid1: TcxGridDBColumn
              Caption = 'Nota'
              DataBinding.FieldName = 'purchaseinvoiceid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevOutstandingPI
              Properties.KeyFieldNames = 'PurchaseInvoiceId'
              Properties.ListFieldItem = dmInventory.cgvPrevOutstandingPIpurchaseinvoiceid
              Options.Filtering = False
            end
            object cgvPurchasePaymentDtpurchaseinvoiceid4: TcxGridDBColumn
              Caption = 'Nota External'
              DataBinding.FieldName = 'purchaseinvoiceid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevOutstandingPI
              Properties.KeyFieldNames = 'PurchaseInvoiceId'
              Properties.ListFieldItem = dmInventory.cgvPrevOutstandingPIVendorPurchaseInvoiceId
              Visible = False
            end
            object cgvPurchasePaymentDtpurchaseinvoiceid3: TcxGridDBColumn
              Caption = 'Jml Tagihan'
              DataBinding.FieldName = 'purchaseinvoiceid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevOutstandingPI
              Properties.KeyFieldNames = 'PurchaseInvoiceId'
              Properties.ListFieldItem = dmInventory.cgvPrevOutstandingPItotalamount
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cgvPurchasePaymentDtpurchaseinvoiceid2: TcxGridDBColumn
              Caption = 'Sisa'
              DataBinding.FieldName = 'purchaseinvoiceid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevOutstandingPI
              Properties.KeyFieldNames = 'PurchaseInvoiceId'
              Properties.ListFieldItem = dmInventory.cgvPrevOutstandingPIoutstandingtotalamount
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 100
            end
            object cgvPurchasePaymentDtpaymenttypeid: TcxGridDBColumn
              Caption = 'Pembayaran'
              DataBinding.FieldName = 'paymenttypeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevPaymentType
              Properties.KeyFieldNames = 'paymenttypeid'
              Properties.ListFieldItem = cgvPrevPaymentPaymentTypeName
              Options.Filtering = False
              Options.Grouping = False
              Width = 123
            end
            object cgvPurchasePaymentDtreferenceid: TcxGridDBColumn
              Caption = 'Ref'
              DataBinding.FieldName = 'referenceid'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 80
            end
            object cgvPurchasePaymentDtCurrencyId: TcxGridDBColumn
              Caption = 'Mata Uang'
              DataBinding.FieldName = 'currencyid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
              Visible = False
              Options.Editing = False
            end
            object cgvPurchasePaymentDtKurs: TcxGridDBColumn
              Caption = ' Kurs'
              DataBinding.FieldName = 'kurs'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
            end
            object cgvPurchasePaymentDtamount: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Options.Grouping = False
              Width = 120
            end
            object cgvPurchasePaymentDtemployeeid: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 114
            end
          end
          object cgPurchasePaymentDtLevel1: TcxGridLevel
            GridView = cgvPurchasePaymentDt
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 289
          Width = 740
          Height = 98
          ActivePage = tsExternalMemo
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 74
          ClientRectRight = 740
          ClientRectTop = 0
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo Faktur'
            ImageIndex = 1
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              ExplicitWidth = 731
              ExplicitHeight = 66
              Height = 74
              Width = 740
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmInternalMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'internalmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              ExplicitWidth = 731
              ExplicitHeight = 66
              Height = 74
              Width = 740
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      Height = 140
      ExplicitLeft = 0
      ExplicitHeight = 140
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
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'purchaseinvoiceid'
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'purchasepaymentid'
              Column = cgvPrevDisplaypurchasepaymentid
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplaystatusapprove: TcxGridDBColumn
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
          end
          object cgvPrevDisplaypurchasepaymentid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'purchasepaymentid'
          end
          object cgvPrevDisplaypurchasepaymentdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchasepaymentdate'
          end
          object cgvPrevDisplayvendorid: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
          end
        end
        object cgDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryPurchasePayment
    OnDataChange = dsDefaultDataChange
  end
  object dsPurchasePaymentDt: TDataSource
    DataSet = qryPurchasePaymentDt
    OnStateChange = dsPurchasePaymentDtStateChange
    Left = 168
    Top = 144
  end
  object qryPurchasePayment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PurchasePayment'
      'where extract(year from PurchasePaymentDate) = :Year'
      'and extract(month from PurchasePaymentDate) = :Month'
      'order by PurchasePaymentId')
    MasterFields = 'purchasepaymentid'
    BeforeInsert = qryPurchasePaymentBeforeInsert
    BeforePost = qryPurchasePaymentBeforePost
    AfterPost = qryPurchasePaymentAfterPost
    AfterCancel = qryPurchasePaymentAfterCancel
    OnNewRecord = qryPurchasePaymentNewRecord
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
  object qryPurchasePaymentDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PurchasePaymentDt'
      'where PurchasePaymentId = :PurchasePaymentId'
      'order by PurchaseInvoiceId, No')
    MasterSource = dsDefault
    BeforeInsert = qryPurchasePaymentDtBeforeInsert
    BeforePost = qryPurchasePaymentDtBeforePost
    AfterPost = qryPurchasePaymentDtAfterPost
    AfterDelete = qryPurchasePaymentDtAfterDelete
    OnNewRecord = qryPurchasePaymentDtNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchasePaymentId'
      end>
  end
  object qryGetPaymentType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.CashBankTransactionTypeId, b.FlagBank '
      'from PaymentType a'
      
        'left join CashBankTransactionType b on a.CashBankTransactionType' +
        'Id = b.CashBankTransactionTypeId'
      'where PaymentTypeId = :PaymentTypeId')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PaymentTypeId'
      end>
  end
  object qryGetCashTransaction: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from CashTransaction'
      'where CashTransactionId = :CashTransactionId')
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashTransactionId'
      end>
  end
  object qryGetBankTransaction: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from CashTransaction'
      'where CashTransactionId = :CashTransactionId')
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashTransactionId'
      end>
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 104
    Top = 176
    object cgvPrevPaymentType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
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
      DataController.DataSource = dsPrevPaymentType
      DataController.KeyFieldNames = 'paymenttypeid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'PaymentTypeId'
        Visible = False
      end
      object cgvPrevPaymentPaymentTypeName: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'PaymentTypeName'
      end
    end
  end
  object qryPrevPaymentType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from PaymentType'
      'where FlagInactive like :FlagInactive'
      'and FlagPurchasePayment = '#39'1'#39
      'order by PaymentTypeId')
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagInactive'
      end>
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPrevPaymentType
    Left = 168
    Top = 176
  end
end
