inherited fmCustomer: TfmCustomer
  Caption = 'Customer'
  ClientHeight = 417
  ClientWidth = 710
  ExplicitWidth = 718
  ExplicitHeight = 451
  DesignSize = (
    710
    417)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 710
    ExplicitWidth = 710
  end
  inherited dxDockSite1: TdxDockSite
    Width = 710
    Height = 367
    ExplicitWidth = 710
    ExplicitHeight = 367
    DockType = 0
    OriginalWidth = 710
    OriginalHeight = 367
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 682
      Height = 367
      ExplicitWidth = 682
      ExplicitHeight = 367
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 682
        Height = 367
        ExplicitWidth = 682
        ExplicitHeight = 367
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 682
        Height = 367
        ExplicitWidth = 682
        ExplicitHeight = 367
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 49
          Width = 678
          Height = 314
          ActivePage = tsGeneral
          Align = alClient
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 285
          ClientRectLeft = 3
          ClientRectRight = 672
          ClientRectTop = 3
          object tsGeneral: TcxTabSheet
            Caption = 'General'
            ImageIndex = 1
            object lblAddress: TLabel
              Left = 5
              Top = 10
              Width = 74
              Height = 13
              Caption = 'Alamat Tagihan'
              Transparent = True
            end
            object lblCity: TLabel
              Left = 5
              Top = 80
              Width = 22
              Height = 13
              Caption = 'Kota'
              Transparent = True
            end
            object lblCategory: TLabel
              Left = 5
              Top = 98
              Width = 47
              Height = 13
              Caption = 'Kelompok'
              Transparent = True
            end
            object lblMembership: TLabel
              Left = 5
              Top = 116
              Width = 57
              Height = 13
              Caption = 'Membership'
              Transparent = True
            end
            object lblCustomerSince: TLabel
              Left = 5
              Top = 134
              Width = 74
              Height = 13
              Caption = 'Customer Sejak'
              Transparent = True
            end
            object lblEmail: TLabel
              Left = 5
              Top = 152
              Width = 25
              Height = 13
              Caption = 'Email'
              Transparent = True
            end
            object dbmAddress: TcxDBMemo
              Left = 93
              Top = 8
              DataBinding.DataField = 'address'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Height = 71
              Width = 241
            end
            object dblcCity: TcxDBExtLookupComboBox
              Left = 93
              Top = 78
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
              TabOrder = 1
              Width = 185
            end
            object dblcCustomerCategory: TcxDBExtLookupComboBox
              Left = 93
              Top = 96
              BeepOnEnter = False
              DataBinding.DataField = 'CustomerCategoryId'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 185
            end
            object dbeMemberId: TcxDBTextEdit
              Left = 93
              Top = 114
              BeepOnEnter = False
              DataBinding.DataField = 'MemberId'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 185
            end
            object dbeCustomerSince: TcxDBDateEdit
              Left = 93
              Top = 132
              BeepOnEnter = False
              DataBinding.DataField = 'CustomerSince'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 121
            end
            object dbeEmail: TcxDBHyperLinkEdit
              Left = 93
              Top = 150
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = dsDefault
              Properties.Prefix = 'mailto:'
              TabOrder = 5
              Width = 185
            end
          end
          object tsDetail: TcxTabSheet
            Caption = 'Detail'
            ImageIndex = 3
            object lblInvoiceDue: TLabel
              Left = 8
              Top = 10
              Width = 62
              Height = 13
              Caption = 'Jatuh Tempo'
              Transparent = True
            end
            object lblDay2: TLabel
              Left = 181
              Top = 10
              Width = 19
              Height = 13
              Caption = 'Hari'
              Transparent = True
            end
            object lbl4: TLabel
              Left = 8
              Top = 28
              Width = 33
              Height = 13
              Caption = 'NPWP'
              Transparent = True
            end
            object lbl3: TLabel
              Left = 8
              Top = 46
              Width = 57
              Height = 13
              Caption = 'Batas Kredit'
              Transparent = True
            end
            object lblMemo: TLabel
              Left = 8
              Top = 64
              Width = 29
              Height = 13
              Caption = 'Memo'
              Transparent = True
            end
            object dbeInvoiceDue: TcxDBSpinEdit
              Left = 93
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'InvoiceDue'
              DataBinding.DataSource = dsDefault
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.SpinButtons.ShowFastButtons = True
              TabOrder = 0
              Width = 81
            end
            object dbeCreditLimit: TcxDBCurrencyEdit
              Left = 93
              Top = 44
              BeepOnEnter = False
              DataBinding.DataField = 'CreditLimit'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 121
            end
            object dbmMemo: TcxDBMemo
              Left = 93
              Top = 62
              DataBinding.DataField = 'Memo'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Height = 129
              Width = 241
            end
            object dbeNPWP: TcxDBMaskEdit
              Left = 93
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'NPWP'
              DataBinding.DataSource = dsDefault
              Properties.EditMask = '00\.000\.000\.0\-000\.000;1;_'
              Properties.MaxLength = 0
              TabOrder = 1
              Width = 241
            end
          end
          object tsTelephone: TcxTabSheet
            Caption = 'Telephone'
            ImageIndex = 0
            object cgCustomerPhone: TcxGrid
              Left = 0
              Top = 0
              Width = 669
              Height = 282
              Align = alClient
              TabOrder = 2
              object cgvCustomerPhone: TcxGridDBTableView
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
                DataController.DataSource = dsCustomerPhone
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Click disini untuk menambah data'
                NewItemRow.Visible = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvCustomerPhoneOrderNo: TcxGridDBColumn
                  Caption = 'Order No'
                  DataBinding.FieldName = 'OrderNo'
                  PropertiesClassName = 'TcxSpinEditProperties'
                end
                object cgvCustomerPhonephonename: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'PhoneName'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvCustomerPhonecountryext: TcxGridDBColumn
                  Caption = 'Ext Negara'
                  DataBinding.FieldName = 'CountryExt'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvCustomerPhonecityext: TcxGridDBColumn
                  Caption = 'Ext Kota'
                  DataBinding.FieldName = 'CityExt'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvCustomerPhonePhoneNo: TcxGridDBColumn
                  Caption = 'Nomor'
                  DataBinding.FieldName = 'PhoneNo'
                  Options.Filtering = False
                  Width = 100
                end
              end
              object cgCustomerPhoneLevel1: TcxGridLevel
                GridView = cgvCustomerPhone
              end
            end
            object dblcbCountryExt: TcxDBExtLookupComboBox
              Left = 20
              Top = 63
              BeepOnEnter = False
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCountry
              Properties.KeyFieldNames = 'CountryId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryExt
              TabOrder = 1
              Visible = False
              Width = 57
            end
            object dblcCityExt: TcxDBExtLookupComboBox
              Left = 21
              Top = 88
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityExt
              TabOrder = 0
              Visible = False
              Width = 56
            end
          end
          object tsContactPerson: TcxTabSheet
            Caption = 'Contact Person'
            ImageIndex = 4
            object cgContactPerson: TcxGrid
              Left = 0
              Top = 0
              Width = 669
              Height = 282
              Align = alClient
              TabOrder = 0
              object cgvContactPerson: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Delete.Hint = 'Hapus'
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Post.Hint = 'Simpan'
                NavigatorButtons.Cancel.Hint = 'Batal'
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsCustomerContact
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvContactPersonCustomerContactId: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerContactId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvContactPersonCustomerId: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvContactPersonCustomerContactName: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'CustomerContactName'
                end
                object cgvContactPersonJobPosition: TcxGridDBColumn
                  Caption = 'Jabatan'
                  DataBinding.FieldName = 'JobPosition'
                end
                object cgvContactPersonAddress: TcxGridDBColumn
                  Caption = 'Alamat'
                  DataBinding.FieldName = 'Address'
                end
                object cgvContactPersonCountryExt: TcxGridDBColumn
                  Caption = 'Ext Negara'
                  DataBinding.FieldName = 'CountryExt'
                  Width = 58
                end
                object cgvContactPersonCityExt: TcxGridDBColumn
                  Caption = 'Ext Kota'
                  DataBinding.FieldName = 'CityExt'
                  Width = 45
                end
                object cgvContactPersonPhoneNo: TcxGridDBColumn
                  Caption = 'Telepon'
                  DataBinding.FieldName = 'PhoneNo'
                end
                object cgvContactPersonEmail: TcxGridDBColumn
                  Caption = 'E-mail'
                  DataBinding.FieldName = 'Email'
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  Properties.Prefix = 'mailto:'
                  Width = 133
                end
                object cgvContactPersonReligi: TcxGridDBColumn
                  Caption = 'Agama'
                  DataBinding.FieldName = 'Religi'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    'Kristen'
                    'Katholik'
                    'Budha'
                    'Hindu'
                    'Islam')
                end
                object cgvContactPersonMemo: TcxGridDBColumn
                  Caption = ' Memo'
                  DataBinding.FieldName = 'Memo'
                end
              end
              object cgContactPersonLevel1: TcxGridLevel
                GridView = cgvContactPerson
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 678
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblCustomerId: TLabel
            Left = 8
            Top = 24
            Width = 72
            Height = 13
            Caption = 'Kode Customer'
            Transparent = True
          end
          object lblCustomerName: TLabel
            Left = 8
            Top = 6
            Width = 75
            Height = 13
            Caption = 'Nama Customer'
            Transparent = True
          end
          object dbeCustomerId: TcxDBTextEdit
            Left = 96
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 157
          end
          object btnGetId: TcxButton
            Left = 253
            Top = 24
            Width = 19
            Height = 19
            Hint = 'Auto Generate Id'
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
              6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
              934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
              BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
              B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
              FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
              4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
            TabOrder = 2
            TabStop = False
            OnClick = btnGetIdClick
          end
          object dbeCustomerName: TcxDBTextEdit
            Left = 96
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerName'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 241
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 367
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 345
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayvcCustomerId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'CustomerCode'
          end
          object cgvPrevDisplayCustomerName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'CustomerName'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevDisplayAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'Address'
            Visible = False
          end
          object cgvPrevDisplayCityId: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Visible = False
          end
          object cgvPrevDisplayContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'ContactPerson'
            Visible = False
          end
          object cgvPrevDisplayCategoryId: TcxGridDBColumn
            Caption = 'Kelompok'
            DataBinding.FieldName = 'CategoryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
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
  object dsCustomerPhone: TDataSource [6]
    DataSet = qryCustomerPhone
    Left = 168
    Top = 144
  end
  object dsCustomerMerek: TDataSource [7]
    DataSet = qryCustomerMerek
    Left = 168
    Top = 176
  end
  object qryGetCustomerCode: TADOQuery [8]
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select max(CustomerId) + 1'
      'from Customer ')
    Left = 200
    Top = 144
  end
  object dsCustomerContact: TDataSource [9]
    DataSet = qryCustomerContact
    Left = 168
    Top = 208
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [10]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [11]
  end
  object qryCustomerPhone: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCustomerPhoneBeforeInsert
    OnNewRecord = qryCustomerPhoneNewRecord
    CommandText = 'select * from CustomerPhone'#13#10#13#10
    DataSource = dsDefault
    IndexFieldNames = 'CustomerId'
    MasterFields = 'CustomerId'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object qryCustomerMerek: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCustomerMerekBeforeInsert
    BeforePost = qryCustomerMerekBeforePost
    CommandText = 'select * '#13#10'from Merek'
    DataSource = dsDefault
    IndexFieldNames = 'CustomerId'
    MasterFields = 'CustomerId'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object qryCustomerContact: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCustomerContactBeforeInsert
    CommandText = 'select * '#13#10'from CustomerContact'#13#10#13#10
    DataSource = dsDefault
    IndexFieldNames = 'CustomerId'
    MasterFields = 'CustomerId'
    Parameters = <>
    Left = 136
    Top = 208
  end
end
