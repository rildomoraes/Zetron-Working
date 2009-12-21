inherited fmBank: TfmBank
  Caption = 'Bank'
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
        object lblBankId: TLabel
          Left = 8
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Bank'
          Transparent = True
        end
        object lblAccountNo: TLabel
          Left = 8
          Top = 24
          Width = 57
          Height = 13
          Caption = 'No Account'
          Transparent = True
        end
        object lblAccountName: TLabel
          Left = 8
          Top = 42
          Width = 71
          Height = 13
          Caption = 'Nama Account'
          Transparent = True
        end
        object lblContactPerson: TLabel
          Left = 8
          Top = 60
          Width = 101
          Height = 13
          Caption = 'Contact Person Bank'
          Transparent = True
        end
        object lblAddress: TLabel
          Left = 8
          Top = 78
          Width = 60
          Height = 13
          Caption = 'Alamat Bank'
          Transparent = True
        end
        object lblTelephone: TLabel
          Left = 8
          Top = 96
          Width = 79
          Height = 13
          Caption = 'Telephone Bank'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 114
          Width = 28
          Height = 13
          Caption = 'Notes'
          Transparent = True
        end
        object dbeBankId: TcxDBTextEdit
          Left = 120
          Top = 6
          DataBinding.DataField = 'BankId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 185
        end
        object dbFlagInactive: TcxDBCheckBox
          Left = 311
          Top = 6
          Caption = 'Non Aktif'
          DataBinding.DataField = 'FlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 73
        end
        object dbeAccountNo: TcxDBTextEdit
          Left = 120
          Top = 24
          DataBinding.DataField = 'AccountNo'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 185
        end
        object dbeAccountName: TcxDBTextEdit
          Left = 120
          Top = 40
          DataBinding.DataField = 'AccountName'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 185
        end
        object dbeContactPerson: TcxDBTextEdit
          Left = 120
          Top = 58
          DataBinding.DataField = 'ContactPerson'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 185
        end
        object dbeAddress: TcxDBTextEdit
          Left = 120
          Top = 76
          DataBinding.DataField = 'Address'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 185
        end
        object dbeTelephone: TcxDBTextEdit
          Left = 120
          Top = 94
          DataBinding.DataField = 'Telephone'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 121
        end
        object dbmMemo: TcxDBMemo
          Left = 120
          Top = 112
          DataBinding.DataField = 'Memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Height = 145
          Width = 237
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
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayAccountNo: TcxGridDBColumn
            Caption = 'No Account'
            DataBinding.FieldName = 'AccountNo'
          end
          object cgvPrevDisplayAccountName: TcxGridDBColumn
            Caption = 'Nama Account'
            DataBinding.FieldName = 'AccountName'
            Options.Filtering = False
          end
          object cgvPrevDisplayBankId: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'BankId'
            Options.Filtering = False
          end
          object cgvPrevDisplayContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'ContactPerson'
            Visible = False
          end
          object cgvPrevDisplayAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'Address'
            Visible = False
          end
          object cgvPrevDisplayTelephone: TcxGridDBColumn
            DataBinding.FieldName = 'Telephone'
            Visible = False
          end
          object cgvPrevDisplayFlagInactive: TcxGridDBColumn
            Caption = 'Inactive'
            DataBinding.FieldName = 'FlagInactive'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
            Options.Filtering = False
            Width = 75
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryBank
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryBank: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Bank')
    BeforePost = qryBankBeforePost
    OnNewRecord = qryBankNewRecord
    Left = 136
    Top = 112
  end
end
