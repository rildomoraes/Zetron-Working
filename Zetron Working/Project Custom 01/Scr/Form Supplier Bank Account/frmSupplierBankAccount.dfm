inherited fmSupplierBankAccount: TfmSupplierBankAccount
  Caption = 'AC Bank Supplier'
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
        object lblIdSupplier: TLabel
          Left = 8
          Top = 11
          Width = 38
          Height = 13
          Caption = 'Supplier'
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
        object dblcIdSupplier: TcxDBExtLookupComboBox
          Left = 96
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSupplier'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvSupplier
          Properties.KeyFieldNames = 'vcIdSupplier'
          Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
          TabOrder = 0
          Width = 185
        end
        object dblcSupplierIdBank: TcxDBExtLookupComboBox
          Left = 96
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcSupplierIdBank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvBank
          Properties.KeyFieldNames = 'vcIdBank'
          Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          TabOrder = 1
          Width = 185
        end
        object dbeSupplierAccountNo: TcxDBTextEdit
          Left = 96
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcSupplierAccountNo'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 185
        end
        object dbeSupplierAccountName: TcxDBTextEdit
          Left = 96
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'vcAccountName'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 185
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 96
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 185
        end
        object dbchFlagInactive: TcxDBCheckBox
          Left = 281
          Top = 8
          Caption = 'Non Aktif'
          DataBinding.DataField = 'chFlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Transparent = True
          Width = 96
        end
        object dbmNotes: TcxDBMemo
          Left = 96
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
      object cgSupplierBankAccountSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvSupplierBankAccount: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvSupplierBankAccountvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcIdSupplier'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
          end
          object cgvSupplierBankAccountvcSupplierIdBank: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'vcSupplierIdBank'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvBank
            Properties.KeyFieldNames = 'vcIdBank'
            Properties.ListFieldItem = dmAccounting.cgvBankvcBankName
          end
          object cgvSupplierBankAccountvcSupplierAccountNo: TcxGridDBColumn
            Caption = 'AC'
            DataBinding.FieldName = 'vcSupplierAccountNo'
            Options.Filtering = False
          end
          object cgvSupplierBankAccountvcAccountName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcAccountName'
            Options.Filtering = False
          end
          object cgvSupplierBankAccountchFlagInactive: TcxGridDBColumn
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
        object cgSupplierBankAccountSetupLevel1: TcxGridLevel
          GridView = cgvSupplierBankAccount
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qrySupplierBankAccount
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qrySupplierBankAccount: TADOQuery [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qrySupplierBankAccountBeforeOpen
    BeforePost = qrySupplierBankAccountBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from tbACSupplierBankAccount')
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
