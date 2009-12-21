inherited fmCustomerBankAccount: TfmCustomerBankAccount
  Caption = 'Customer Bank Account'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
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
        object lblIdCustomer: TLabel
          Left = 8
          Top = 11
          Width = 44
          Height = 13
          Caption = 'Customer'
          Transparent = True
        end
        object lblIdBank: TLabel
          Left = 8
          Top = 29
          Width = 25
          Height = 13
          Caption = 'Bank'
          Transparent = True
        end
        object lblAccountNo: TLabel
          Left = 8
          Top = 47
          Width = 14
          Height = 13
          Caption = 'AC'
          Transparent = True
        end
        object lblAccountName: TLabel
          Left = 8
          Top = 65
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 8
          Top = 83
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object dblcIdCustomer: TcxDBExtLookupComboBox
          Left = 66
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCustomer'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvCustomer
          Properties.KeyFieldNames = 'vcIdCustomer'
          Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          TabOrder = 0
          Width = 185
        end
        object dblcCustomerIdBank: TcxDBExtLookupComboBox
          Left = 66
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcCustomerIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 2
          Width = 185
        end
        object dbeCustomerAccountNo: TcxDBTextEdit
          Left = 66
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcCustomerAccountNo'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 185
        end
        object dbeCustomerAccountName: TcxDBTextEdit
          Left = 66
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'vcAccountName'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 185
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 66
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 185
        end
        object dbchFlagInactive: TcxDBCheckBox
          Left = 251
          Top = 8
          Caption = 'Non Aktif'
          DataBinding.DataField = 'chFlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 96
        end
        object dbmNotes: TcxDBMemo
          Left = 66
          Top = 98
          DataBinding.DataField = 'txNotes'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Height = 113
          Width = 241
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
      object cgCustomerBankAccountSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvCustomerBankAccount: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvCustomerBankAccountvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          end
          object cgvCustomerBankAccountvcCustomerIdBank: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'vcCustomerIdBank'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvBank
            Properties.KeyFieldNames = 'vcIdBank'
            Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          end
          object cgvCustomerBankAccountvcCustomerAccountNo: TcxGridDBColumn
            Caption = 'AC'
            DataBinding.FieldName = 'vcCustomerAccountNo'
            Options.Filtering = False
          end
          object cgvCustomerBankAccountvcAccountName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcAccountName'
            Options.Filtering = False
          end
          object cgvCustomerBankAccountchFlagInactive: TcxGridDBColumn
            Caption = 'Non Aktif'
            DataBinding.FieldName = 'chFlagInactive'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
            Options.Filtering = False
          end
        end
        object cgCustomerBankAccountSetupLevel1: TcxGridLevel
          GridView = cgvCustomerBankAccount
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qryCustomerBankAccount
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryCustomerBankAccount: TADOQuery [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryCustomerBankAccountBeforeOpen
    BeforePost = qryCustomerBankAccountBeforePost
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from tbACCustomerBankAccount')
    Left = 136
    Top = 112
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [7]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [8]
  end
end
