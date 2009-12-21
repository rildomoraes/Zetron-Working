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
        object lblIdBank: TLabel
          Left = 8
          Top = 8
          Width = 53
          Height = 13
          Caption = 'Kode Bank'
          Transparent = True
        end
        object lblBankName: TLabel
          Left = 8
          Top = 26
          Width = 56
          Height = 13
          Caption = 'Nama Bank'
          Transparent = True
        end
        object lblContactPerson: TLabel
          Left = 8
          Top = 44
          Width = 73
          Height = 13
          Caption = 'Contact Person'
          Transparent = True
        end
        object lblPhone: TLabel
          Left = 8
          Top = 62
          Width = 51
          Height = 13
          Caption = 'Telephone'
          Transparent = True
        end
        object lblBankAddress: TLabel
          Left = 8
          Top = 80
          Width = 32
          Height = 13
          Caption = 'Alamat'
          Transparent = True
        end
        object lblBankCity: TLabel
          Left = 8
          Top = 98
          Width = 22
          Height = 13
          Caption = 'Kota'
          Transparent = True
        end
        object dbeIdBank: TcxDBTextEdit
          Left = 104
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdBank'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 241
        end
        object dbeBankName: TcxDBTextEdit
          Left = 104
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcBankName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 241
        end
        object dbeContactPerson: TcxDBTextEdit
          Left = 104
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcBankContactPerson'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 241
        end
        object dbePhone: TcxDBTextEdit
          Left = 104
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'vcPhone'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 241
        end
        object dbeBankAddress: TcxDBTextEdit
          Left = 104
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'vcBankAddress'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 241
        end
        object dblcCity: TcxDBExtLookupComboBox
          Left = 104
          Top = 98
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCity'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCity
          Properties.KeyFieldNames = 'CityId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          TabOrder = 5
          Width = 241
        end
        object dbmNotes: TcxDBMemo
          Left = 104
          Top = 116
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
      object cgBankSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 699
        ExplicitHeight = 328
        object cgvBank: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvBankvcIdBank: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdBank'
            Options.Filtering = False
          end
          object cgvBankvcBankName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcBankName'
            Options.Filtering = False
          end
          object cgvBankvcBankContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'vcBankContactPerson'
            Visible = False
            Options.Filtering = False
          end
          object cgvBankvcPhone: TcxGridDBColumn
            Caption = 'Telephone'
            DataBinding.FieldName = 'vcPhone'
            Visible = False
            Options.Filtering = False
          end
          object cgvBankvcBankAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'vcBankAddress'
            Visible = False
            Options.Filtering = False
          end
          object cgvBankvcIdCity: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'vcIdCity'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Width = 60
          end
        end
        object cgBankSetupLevel1: TcxGridLevel
          GridView = cgvBank
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmAccounting.qryBank
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
