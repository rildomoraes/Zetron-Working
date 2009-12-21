inherited fmSalesDownPayment: TfmSalesDownPayment
  Caption = 'Titipan Customer'
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
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblIdDownPayment: TLabel
          Left = 7
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Titipan'
          Transparent = True
        end
        object lblDownPaymentDate: TLabel
          Left = 7
          Top = 28
          Width = 39
          Height = 13
          Caption = 'Tanggal'
          Transparent = True
        end
        object lblIdCustomer: TLabel
          Left = 7
          Top = 46
          Width = 44
          Height = 13
          Caption = 'Customer'
          Transparent = True
        end
        object lblDownPaymentType: TLabel
          Left = 7
          Top = 64
          Width = 21
          Height = 13
          Caption = 'Tipe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 7
          Top = 82
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object lblPaymentType: TLabel
          Left = 272
          Top = 12
          Width = 83
          Height = 13
          Caption = 'Tipe Pembayaran'
          Transparent = True
        end
        object lblEffectiveDate: TLabel
          Left = 272
          Top = 30
          Width = 48
          Height = 13
          Caption = 'Tgl Efektif'
          Transparent = True
        end
        object lblOurBank: TLabel
          Left = 272
          Top = 48
          Width = 25
          Height = 13
          Caption = 'Bank'
          Transparent = True
        end
        object lblOurAccountNo: TLabel
          Left = 272
          Top = 66
          Width = 14
          Height = 13
          Caption = 'AC'
          Transparent = True
        end
        object lblCustomerBank: TLabel
          Left = 272
          Top = 84
          Width = 72
          Height = 13
          Caption = 'Customer Bank'
          Transparent = True
        end
        object lblCustomerAccountNo: TLabel
          Left = 272
          Top = 102
          Width = 61
          Height = 13
          Caption = 'Customer AC'
          Transparent = True
        end
        object lblCurrentBalance: TLabel
          Left = 12
          Top = 138
          Width = 27
          Height = 13
          Caption = 'Saldo'
          Transparent = True
        end
        object lblAmount: TLabel
          Left = 272
          Top = 138
          Width = 33
          Height = 13
          Caption = 'Jumlah'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dbeIdDownPayment: TcxDBTextEdit
          Left = 72
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSalesDownPayment'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeIdDownPaymentPropertiesEditValueChanged
          TabOrder = 0
          Width = 185
        end
        object dbeDownPaymentDate: TcxDBDateEdit
          Left = 72
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'dtSalesDownPaymentDate'
          DataBinding.DataSource = dsDefault
          Properties.DateButtons = [btnToday]
          TabOrder = 1
          Width = 185
        end
        object dblcIdCustomer: TcxDBExtLookupComboBox
          Left = 72
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCustomer'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvCustomer
          Properties.KeyFieldNames = 'vcIdCustomer'
          Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          TabOrder = 2
          Width = 185
        end
        object dbicDownPaymentType: TcxDBImageComboBox
          Left = 72
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'chFlagTransType'
          DataBinding.DataSource = dsDefault
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Receive'
              ImageIndex = 5
              Value = 0
            end
            item
              Description = 'Return'
              ImageIndex = 6
              Value = 1
            end>
          TabOrder = 3
          Width = 185
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 72
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 185
        end
        object dblcPaymentType: TcxDBExtLookupComboBox
          Left = 384
          Top = 10
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdPaymentType'
          DataBinding.DataSource = dsDefault
          Properties.View = cgvPaymentType
          Properties.KeyFieldNames = 'vcIdPaymentType'
          Properties.ListFieldItem = cgvPaymentTypevcPaymentTypeName
          TabOrder = 5
          Width = 185
        end
        object dbeEffectiveDate: TcxDBDateEdit
          Left = 384
          Top = 28
          BeepOnEnter = False
          DataBinding.DataField = 'dtEffectiveDate'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 185
        end
        object dblcIdBank: TcxDBExtLookupComboBox
          Left = 384
          Top = 46
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 7
          Width = 185
        end
        object dblcAccountNo: TcxDBExtLookupComboBox
          Left = 384
          Top = 64
          BeepOnEnter = False
          DataBinding.DataField = 'vcAccountNo'
          DataBinding.DataSource = dsDefault
          Properties.View = cgvBankAccount
          Properties.KeyFieldNames = 'vcAccountNo'
          Properties.ListFieldItem = cgvBankAccountvcAccountNo
          TabOrder = 8
          Width = 185
        end
        object dblcCustomerIdBank: TcxDBExtLookupComboBox
          Left = 384
          Top = 82
          BeepOnEnter = False
          DataBinding.DataField = 'vcCustomerIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 9
          Width = 185
        end
        object dblcCustomerAccountNo: TcxDBExtLookupComboBox
          Left = 384
          Top = 100
          BeepOnEnter = False
          DataBinding.DataField = 'vcCustomerAccountNo'
          DataBinding.DataSource = dsDefault
          Properties.View = cgvPrevCustomerBankAccount
          Properties.KeyFieldNames = 'vcCustomerAccountNo'
          Properties.ListFieldItem = cgvPrevCustomerBankAccountvcCustomerName
          TabOrder = 10
          Width = 185
        end
        object edtDownPaymentLimit: TcxCurrencyEdit
          Left = 72
          Top = 136
          BeepOnEnter = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 185
        end
        object dbeAmount: TcxDBCurrencyEdit
          Left = 384
          Top = 131
          BeepOnEnter = False
          DataBinding.DataField = 'dcAmount'
          DataBinding.DataSource = dsDefault
          ParentFont = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 185
        end
        object dbmNotes: TcxDBMemo
          Left = 12
          Top = 163
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'txNotes'
          DataBinding.DataSource = dsDefault
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          TabOrder = 13
          Height = 214
          Width = 713
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
      object cgDownPayment: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvDownPayment: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          Styles.OnGetContentStyle = cgvDownPaymentStylesGetContentStyle
          object cgvDownPaymentvcIdSalesDownPayment: TcxGridDBColumn
            Caption = 'Customer DP'
            DataBinding.FieldName = 'vcIdSalesDownPayment'
            Width = 80
          end
          object cgvDownPaymentdtSalesDownPaymentDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesDownPaymentDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object cgvDownPaymentchStatusApprove: TcxGridDBColumn
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
            Width = 91
          end
        end
        object cgDownPaymentLevel1: TcxGridLevel
          GridView = cgvDownPayment
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
    DataSet = dtsACSalesDownPayment
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object spSalesDownPaymentValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spSalesDownPaymentValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdSalesDownPayment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 136
    Top = 144
  end
  object dtsACSalesDownPayment: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsACSalesDownPaymentBeforeEdit
    BeforePost = dtsACSalesDownPaymentBeforePost
    AfterPost = dtsACSalesDownPaymentAfterPost
    OnNewRecord = dtsACSalesDownPaymentNewRecord
    CommandText = 
      'select * '#13#10'from tbACSalesDownPayment'#13#10'where (chStatusApprove = :' +
      'Approve1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :' +
      'Reject'#13#10'or chStatusApprove = :Done)'#13#10'and dtSalesDownPaymentDate ' +
      'between :StartDate and :EndDate'#13#10'order by chStatusApprove, vcIdS' +
      'alesDownPayment'
    MasterFields = 'vcIdSalesDownPayment'
    Parameters = <
      item
        Name = 'Approve1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Approve2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Done'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'StartDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object qryPrevPaymentType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPaymentType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'FlagPurchasePayment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'FlagSalesPayment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from tbGNPaymentType'
      'where vcIdPaymentType <> :IdPaymentType'
      'and FlagPurchasePayment like :FlagPurchasePayment'
      'and FlagSalesPayment like :FlagSalesPayment')
    Left = 136
    Top = 176
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 104
    Top = 176
    object cgvBankAccount: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevBankAccount
      DataController.KeyFieldNames = 'vcAccountNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvBankAccountvcIdBank: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'vcIdBank'
        Visible = False
      end
      object cgvBankAccountvcBankName: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'vcBankName'
      end
      object cgvBankAccountvcAccountNo: TcxGridDBColumn
        Caption = 'AC'
        DataBinding.FieldName = 'vcAccountNo'
        Options.Filtering = False
      end
      object cgvBankAccountvcAccountName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcAccountName'
        Options.Filtering = False
      end
    end
    object cgvPrevCustomerBankAccount: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCustomerBankAccount
      DataController.KeyFieldNames = 'vcCustomerAccountNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevCustomerBankAccountvcCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'vcCustomerName'
        Visible = False
      end
      object cgvPrevCustomerBankAccountvcCustomerIdBank: TcxGridDBColumn
        DataBinding.FieldName = 'vcCustomerIdBank'
        Visible = False
      end
      object cgvPrevCustomerBankAccountvcBankName: TcxGridDBColumn
        DataBinding.FieldName = 'vcBankName'
      end
      object cgvPrevCustomerBankAccountvcCustomerAccountNo: TcxGridDBColumn
        DataBinding.FieldName = 'vcCustomerAccountNo'
        Options.Filtering = False
      end
      object cgvPrevCustomerBankAccountvcAccountName: TcxGridDBColumn
        DataBinding.FieldName = 'vcAccountName'
        Options.Filtering = False
      end
    end
    object cgvPaymentType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPaymentType
      DataController.KeyFieldNames = 'vcIdPaymentType'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPaymentTypevcIdPaymentType: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdPaymentType'
        Visible = False
      end
      object cgvPaymentTypevcPaymentTypeName: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'vcPaymentTypeName'
      end
      object cgvPaymentTypevcEmployeeName: TcxGridDBColumn
        DataBinding.FieldName = 'vcEmployeeName'
        Visible = False
      end
      object cgvPaymentTypechFlagInactive: TcxGridDBColumn
        DataBinding.FieldName = 'chFlagInactive'
        Visible = False
      end
      object cgvPaymentTypechFlagFix: TcxGridDBColumn
        DataBinding.FieldName = 'chFlagFix'
        Visible = False
      end
      object cgvPaymentTypeStatusPayment: TcxGridDBColumn
        DataBinding.FieldName = 'StatusPayment'
        Visible = False
      end
      object cgvPaymentTypeFlagPurchasePayment: TcxGridDBColumn
        DataBinding.FieldName = 'FlagPurchasePayment'
        Visible = False
      end
      object cgvPaymentTypeFlagSalesPayment: TcxGridDBColumn
        DataBinding.FieldName = 'FlagSalesPayment'
        Visible = False
      end
    end
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPrevPaymentType
    Left = 168
    Top = 176
  end
  object qryPrevBankAccount: TADOQuery
    Connection = dmGlobal.conGlobal
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
    Left = 136
    Top = 208
  end
  object dsPrevBankAccount: TDataSource
    DataSet = qryPrevBankAccount
    Left = 168
    Top = 208
  end
  object qryPrevCustomerBankAccount: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCustomer'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CustomerIdBank'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.vcBankName, c.vcCustomerName'
      'from tbACCustomerBankAccount a'
      'left join tbACBank b on a.vcCustomerIdBank = b.vcIdBank'
      'left join tbGNCustomer c on a.vcIdCustomer = c.vcIdCustomer'
      'where a.chFlagInactive = '#39'0'#39
      'and a.vcIdCustomer = :IdCustomer'
      'and a.vcCustomerIdBank = :CustomerIdBank'
      'order by b.vcBankName, a.vcCustomerAccountNo')
    Left = 136
    Top = 240
  end
  object dsPrevCustomerBankAccount: TDataSource
    DataSet = qryPrevCustomerBankAccount
    Left = 168
    Top = 240
  end
end
