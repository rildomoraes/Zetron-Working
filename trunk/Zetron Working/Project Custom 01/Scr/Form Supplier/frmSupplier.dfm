inherited fmSupplier: TfmSupplier
  Caption = 'Supplier'
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
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblIdSupplier: TLabel
            Left = 8
            Top = 8
            Width = 66
            Height = 13
            Caption = 'Kode Supplier'
            Transparent = True
          end
          object lblSupplierName: TLabel
            Left = 8
            Top = 26
            Width = 69
            Height = 13
            Caption = 'Nama Supplier'
            Transparent = True
          end
          object dbeIdSupplier: TcxDBTextEdit
            Left = 104
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSupplier'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 81
          end
          object dbeSupplierName: TcxDBTextEdit
            Left = 104
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'vcSupplierName'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 241
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 57
          Width = 560
          Height = 255
          ActivePage = cxTabSheet1
          Align = alClient
          TabOrder = 1
          ClientRectBottom = 249
          ClientRectLeft = 3
          ClientRectRight = 554
          ClientRectTop = 26
          object cxTabSheet1: TcxTabSheet
            Caption = 'Umum'
            ImageIndex = 0
            object lblSupplierAddress: TLabel
              Left = 8
              Top = 29
              Width = 32
              Height = 13
              Caption = 'Alamat'
              Transparent = True
            end
            object lblSupplierCity: TLabel
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
            object lblSupplierEmail: TLabel
              Left = 8
              Top = 83
              Width = 25
              Height = 13
              Caption = 'Email'
              Transparent = True
            end
            object lblDeliveryDate: TLabel
              Left = 8
              Top = 101
              Width = 81
              Height = 13
              Caption = 'Lama Pengiriman'
              Transparent = True
            end
            object Label1: TLabel
              Left = 8
              Top = 119
              Width = 34
              Height = 13
              Caption = 'Budget'
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
            object lblDay: TLabel
              Left = 184
              Top = 101
              Width = 19
              Height = 13
              Caption = 'Hari'
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
            object dbeSupplierAddress: TcxDBTextEdit
              Left = 96
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'vcAddress'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
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
            object dbeContactPerson: TcxDBTextEdit
              Left = 96
              Top = 62
              BeepOnEnter = False
              DataBinding.DataField = 'vcContactPerson'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 241
            end
            object dbeSupplierEmail: TcxDBTextEdit
              Left = 96
              Top = 80
              BeepOnEnter = False
              DataBinding.DataField = 'vcEmail'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
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
              Properties.View = dmInventory.cgvCategory
              Properties.KeyFieldNames = 'vcIdCategory'
              Properties.ListFieldItem = dmInventory.cgvCategoryvcCategoryName
              TabOrder = 0
              Width = 241
            end
          end
          object Telephone: TcxTabSheet
            Caption = 'Telephone'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgSupplierPhone: TcxGrid
              Left = 0
              Top = 0
              Width = 560
              Height = 231
              Align = alClient
              TabOrder = 0
              object cgvSupplierPhone: TcxGridDBTableView
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
                DataController.DataSource = dsGNSupplierPhone
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvSupplierPhonevcPhoneName: TcxGridDBColumn
                  DataBinding.FieldName = 'vcPhoneName'
                  Options.Filtering = False
                  Options.Grouping = False
                  Width = 97
                end
                object cgvSupplierPhonevcCountryExt: TcxGridDBColumn
                  DataBinding.FieldName = 'vcCountryExt'
                  Options.Filtering = False
                  Options.Grouping = False
                  Width = 96
                end
                object cgvSupplierPhonevcCityExt: TcxGridDBColumn
                  DataBinding.FieldName = 'vcCityExt'
                  Options.Filtering = False
                  Options.Grouping = False
                  Width = 68
                end
                object cgvSupplierPhonevcIdSupplierPhone: TcxGridDBColumn
                  Caption = 'Phone'
                  DataBinding.FieldName = 'vcIdSupplierPhone'
                  Options.Filtering = False
                  Options.Grouping = False
                  Width = 109
                end
              end
              object cgSupplierPhoneLevel1: TcxGridLevel
                GridView = cgvSupplierPhone
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
              Height = 223
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
      object cgSupplierSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvSupplier: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvSuppliervcIdSupplier: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplier'
          end
          object cgvSuppliervcSupplierName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSupplierName'
          end
          object cgvSuppliervcAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'vcAddress'
            Visible = False
          end
          object cgvSuppliervcIdCity: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'vcIdCity'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          end
          object cgvSuppliervcContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'vcContactPerson'
            Visible = False
          end
          object cgvSuppliervcEmail: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'vcEmail'
            Visible = False
          end
          object cgvSupplierdtDateIn: TcxGridDBColumn
            Caption = 'Tgl Join'
            DataBinding.FieldName = 'dtDateIn'
            Visible = False
          end
          object cgvSuppliervcNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'vcNotes'
            Visible = False
          end
          object cgvSuppliervcIdCategory: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'vcIdCategory'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
        end
        object cgSupplierSetupLevel1: TcxGridLevel
          GridView = cgvSupplier
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qrySupplier
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qrySupplierPhone: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * from tbGNSupplierPhone'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSupplier'
    MasterFields = 'vcIdSupplier'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsGNSupplierPhone: TDataSource [7]
    DataSet = qrySupplierPhone
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
