inherited fmCustomer: TfmCustomer
  Caption = 'Customer'
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
        object pnlEntry: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblIdCustomer: TLabel
            Left = 8
            Top = 8
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblCustomerName: TLabel
            Left = 8
            Top = 26
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object dbeIdCustomer: TcxDBTextEdit
            Left = 56
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdCustomer'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 81
          end
          object dbeCustomerName: TcxDBTextEdit
            Left = 56
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'vcCustomerName'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 241
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 51
          Width = 560
          Height = 261
          ActivePage = cxTabSheet1
          Align = alClient
          TabOrder = 1
          ClientRectBottom = 255
          ClientRectLeft = 3
          ClientRectRight = 554
          ClientRectTop = 26
          object cxTabSheet1: TcxTabSheet
            Caption = 'General'
            ImageIndex = 0
            object lblCustomerAddress: TLabel
              Left = 8
              Top = 29
              Width = 32
              Height = 13
              Caption = 'Alamat'
              Transparent = True
            end
            object lblCustomerCity: TLabel
              Left = 8
              Top = 47
              Width = 22
              Height = 13
              Caption = 'Kota'
              Transparent = True
            end
            object lblContactPerson: TLabel
              Left = 8
              Top = 65
              Width = 73
              Height = 13
              Caption = 'Contact Person'
              Transparent = True
            end
            object lblCustomerEmail: TLabel
              Left = 8
              Top = 83
              Width = 25
              Height = 13
              Caption = 'Email'
              Transparent = True
            end
            object lblDeliveryDate: TLabel
              Left = 9
              Top = 101
              Width = 81
              Height = 13
              Caption = 'Lama Pengiriman'
              Transparent = True
            end
            object lblDay: TLabel
              Left = 184
              Top = 101
              Width = 19
              Height = 13
              Caption = 'Hari'
              Transparent = True
            end
            object lblSupplierCategory: TLabel
              Left = 8
              Top = 11
              Width = 39
              Height = 13
              Caption = 'Kategori'
              Transparent = True
            end
            object Label1: TLabel
              Left = 9
              Top = 119
              Width = 34
              Height = 13
              Caption = 'Budget'
              Transparent = True
            end
            object dbeBudget: TcxDBCurrencyEdit
              Left = 96
              Top = 116
              BeepOnEnter = False
              DataBinding.DataField = 'dcBudget'
              DataBinding.DataSource = dsDefault
              TabOrder = 6
              Width = 121
            end
            object dbeCustomerEmail: TcxDBTextEdit
              Left = 96
              Top = 80
              BeepOnEnter = False
              DataBinding.DataField = 'vcEmail'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 241
            end
            object dbeContactPerson: TcxDBTextEdit
              Left = 96
              Top = 62
              BeepOnEnter = False
              DataBinding.DataField = 'vcContactPerson'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 241
            end
            object dblcCity: TcxDBExtLookupComboBox
              Left = 96
              Top = 44
              BeepOnEnter = False
              DataBinding.DataField = 'vcIdCity'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
              TabOrder = 2
              Width = 241
            end
            object dbeCustomerAddress: TcxDBTextEdit
              Left = 96
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'vcAddress'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 241
            end
            object dbeDeliveryDate: TcxDBSpinEdit
              Left = 96
              Top = 98
              BeepOnEnter = False
              DataBinding.DataField = 'inDeliveryDate'
              DataBinding.DataSource = dsDefault
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.SpinButtons.ShowFastButtons = True
              TabOrder = 5
              Width = 81
            end
            object dblcCategory: TcxDBExtLookupComboBox
              Left = 96
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'vcIdCategory'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 241
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Telephone'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgCustomerPhone: TcxGrid
              Left = 0
              Top = 0
              Width = 560
              Height = 237
              Align = alClient
              TabOrder = 0
              object cgvCustomerPhone: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsGNCustomerPhone
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsCustomize.ColumnFiltering = False
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvCustomerPhonevcPhoneName: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'vcPhoneName'
                  MinWidth = 108
                  Options.Grouping = False
                  Width = 108
                end
                object cgvCustomerPhonevcCountryExt: TcxGridDBColumn
                  Caption = 'Negara'
                  DataBinding.FieldName = 'vcCountryExt'
                  MinWidth = 60
                  Options.IncSearch = False
                  Options.Grouping = False
                  Options.Sorting = False
                  Width = 60
                end
                object cgvCustomerPhonevcCityExt: TcxGridDBColumn
                  Caption = 'Ext Kota'
                  DataBinding.FieldName = 'vcCityExt'
                  MinWidth = 50
                  Options.IncSearch = False
                  Options.Grouping = False
                  Options.Sorting = False
                  Width = 50
                end
                object cgvCustomerPhonevcIdCustomerPhone: TcxGridDBColumn
                  Caption = 'Nomor'
                  DataBinding.FieldName = 'vcIdCustomerPhone'
                  MinWidth = 117
                  Options.Grouping = False
                  Options.Sorting = False
                  Width = 117
                end
              end
              object cgCustomerPhoneLevel1: TcxGridLevel
                GridView = cgvCustomerPhone
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Notes'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmNotes: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'txNotes'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Height = 229
              Width = 551
            end
          end
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
      object cgCustomerSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvCustomer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvCustomervcIdCustomer: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdCustomer'
          end
          object cgvCustomervcCustomerName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcCustomerName'
            Width = 110
          end
          object cgvCustomervcAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'vcAddress'
            Visible = False
          end
          object cgvCustomervcIdCity: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'vcIdCity'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          end
          object cgvCustomervcContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'vcContactPerson'
            Visible = False
          end
          object cgvCustomervcEmail: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'vcEmail'
            Visible = False
          end
          object cgvCustomerdtDateIn: TcxGridDBColumn
            Caption = 'Tgl Join'
            DataBinding.FieldName = 'dtDateIn'
            Visible = False
          end
          object cgvCustomervcNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'vcNotes'
            Visible = False
          end
          object cgvCustomervcIdCategory: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'vcIdCategory'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
        end
        object cgCustomerSetupLevel1: TcxGridLevel
          GridView = cgvCustomer
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qryCustomer
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryCustomerPhone: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * from tbGNCustomerPhone'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdCustomer'
    MasterFields = 'vcIdCustomer'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsGNCustomerPhone: TDataSource [7]
    DataSet = qryCustomerPhone
    Left = 168
    Top = 144
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [8]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [9]
  end
end
