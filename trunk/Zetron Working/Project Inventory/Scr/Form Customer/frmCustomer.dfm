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
          OnChange = cxPageControl1Change
          ClientRectBottom = 285
          ClientRectLeft = 3
          ClientRectRight = 672
          ClientRectTop = 3
          object tsGeneral: TcxTabSheet
            Caption = 'General'
            ImageIndex = 1
            object lblContactPerson: TLabel
              Left = 5
              Top = 10
              Width = 73
              Height = 13
              Caption = 'Contact Person'
              Transparent = True
            end
            object lblAddress: TLabel
              Left = 5
              Top = 28
              Width = 74
              Height = 13
              Caption = 'Alamat Tagihan'
              Transparent = True
            end
            object lblCity: TLabel
              Left = 5
              Top = 96
              Width = 22
              Height = 13
              Caption = 'Kota'
              Transparent = True
            end
            object lblCategory: TLabel
              Left = 5
              Top = 114
              Width = 39
              Height = 13
              Caption = 'Kategori'
              Transparent = True
            end
            object lblReligi: TLabel
              Left = 5
              Top = 132
              Width = 33
              Height = 13
              Caption = 'Agama'
              Transparent = True
            end
            object lblMembership: TLabel
              Left = 5
              Top = 150
              Width = 57
              Height = 13
              Caption = 'Membership'
              Transparent = True
            end
            object lblCustomerSince: TLabel
              Left = 4
              Top = 168
              Width = 74
              Height = 13
              Caption = 'Customer Sejak'
              Transparent = True
            end
            object lblEmail: TLabel
              Left = 4
              Top = 186
              Width = 25
              Height = 13
              Caption = 'Email'
              Transparent = True
            end
            object Label1: TLabel
              Left = 5
              Top = 204
              Width = 74
              Height = 13
              Caption = 'Customer Induk'
              Transparent = True
            end
            object dbeContactPerson: TcxDBTextEdit
              Left = 93
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'ContactPerson'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 185
            end
            object dbmAddress: TcxDBMemo
              Left = 93
              Top = 26
              DataBinding.DataField = 'address'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Height = 69
              Width = 241
            end
            object dblcCity: TcxDBExtLookupComboBox
              Left = 93
              Top = 94
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
              TabOrder = 2
              Width = 185
            end
            object dblcCategory: TcxDBExtLookupComboBox
              Left = 93
              Top = 112
              BeepOnEnter = False
              DataBinding.DataField = 'CategoryId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevCategory
              Properties.KeyFieldNames = 'CategoryId'
              Properties.ListFieldItem = dmGeneral.cgvPrevCategoryCategoryName
              TabOrder = 3
              Width = 185
            end
            object dblcReligi: TcxDBComboBox
              Left = 93
              Top = 130
              BeepOnEnter = False
              DataBinding.DataField = 'Religi'
              DataBinding.DataSource = dsDefault
              Properties.Items.Strings = (
                'Kristen'
                'Katholik'
                'Budha'
                'Hindu'
                'Islam')
              TabOrder = 4
              Width = 185
            end
            object dbeMemberId: TcxDBTextEdit
              Left = 93
              Top = 148
              BeepOnEnter = False
              DataBinding.DataField = 'MemberId'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 185
            end
            object dbeCustomerSince: TcxDBDateEdit
              Left = 93
              Top = 166
              BeepOnEnter = False
              DataBinding.DataField = 'CustomerSince'
              DataBinding.DataSource = dsDefault
              Properties.InputKind = ikRegExpr
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 6
              Width = 121
            end
            object dbeEmail: TcxDBHyperLinkEdit
              Left = 93
              Top = 184
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = dsDefault
              Properties.Prefix = 'mailto:'
              TabOrder = 7
              Width = 185
            end
            object dbeCustomerIdParent: TcxDBExtLookupComboBox
              Left = 93
              Top = 202
              DataBinding.DataField = 'customeridparent'
              DataBinding.DataSource = dsDefault
              Properties.View = cgvPrevCustomerParent
              Properties.KeyFieldNames = 'customerid'
              Properties.ListFieldItem = cgvPrevCustomerParentcustomername
              TabOrder = 8
              Width = 185
            end
          end
          object tsTelephone: TcxTabSheet
            Caption = 'Telephone'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
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
                object cgvCustomerPhonephonename: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'phonename'
                  Options.Filtering = False
                  Width = 85
                end
                object cgvCustomerPhonecountryext: TcxGridDBColumn
                  Caption = 'Ext Negara'
                  DataBinding.FieldName = 'CountryExt'
                  Options.Filtering = False
                  Width = 76
                end
                object cgvCustomerPhonecityext: TcxGridDBColumn
                  Caption = 'Ext Kota'
                  DataBinding.FieldName = 'CityExt'
                  Options.Filtering = False
                end
                object cgvCustomerPhonenumber: TcxGridDBColumn
                  Caption = 'Nomor'
                  DataBinding.FieldName = 'Number'
                  Options.Filtering = False
                  Width = 70
                end
                object cgvCustomerPhonecontactperson: TcxGridDBColumn
                  Caption = 'Contact Person'
                  DataBinding.FieldName = 'ContactPerson'
                  Visible = False
                  Options.Filtering = False
                  Width = 95
                end
                object cgvCustomerPhoneJobPosition: TcxGridDBColumn
                  Caption = 'Jabatan'
                  DataBinding.FieldName = 'jobposition'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  Options.Filtering = False
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
          object tsDefaultSales: TcxTabSheet
            Caption = 'Default Penjualan'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblInvoiceDue: TLabel
              Left = 8
              Top = 10
              Width = 88
              Height = 13
              Caption = 'Jatuh Tempo Nota'
              Transparent = True
            end
            object lblDay2: TLabel
              Left = 192
              Top = 10
              Width = 19
              Height = 13
              Caption = 'Hari'
              Transparent = True
            end
            object lbl1: TLabel
              Left = 8
              Top = 32
              Width = 62
              Height = 13
              Caption = 'Ongkos Kirim'
              Transparent = True
            end
            object lbl2: TLabel
              Left = 8
              Top = 53
              Width = 21
              Height = 13
              Caption = 'PKP'
              Transparent = True
            end
            object dbeInvoiceDue: TcxDBSpinEdit
              Left = 104
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'InvoiceDue'
              DataBinding.DataSource = dsDefault
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.SpinButtons.ShowFastButtons = True
              TabOrder = 0
              Width = 81
            end
            object dbchkShippingCost: TcxDBCheckBox
              Left = 104
              Top = 30
              DataBinding.DataField = 'FlagShippingCost'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 1
              Transparent = True
              Width = 27
            end
            object dbchkPKP: TcxDBCheckBox
              Left = 104
              Top = 51
              DataBinding.DataField = 'FlagPKP'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 2
              Transparent = True
              Width = 33
            end
          end
          object tsAccounting: TcxTabSheet
            Caption = 'Accounting'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lbl4: TLabel
              Left = 8
              Top = 10
              Width = 33
              Height = 13
              Caption = 'NPWP'
              Transparent = True
            end
            object lbl3: TLabel
              Left = 8
              Top = 28
              Width = 57
              Height = 13
              Caption = 'Batas Kredit'
              Transparent = True
            end
            object dbeNPWP: TcxDBTextEdit
              Left = 93
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'NPWP'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 241
            end
            object dbeCreditLimit: TcxDBCurrencyEdit
              Left = 93
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'CreditLimit'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
          end
          object tsShipping: TcxTabSheet
            Caption = 'Pengiriman'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgShipping: TcxGrid
              Left = 0
              Top = 0
              Width = 669
              Height = 282
              Align = alClient
              TabOrder = 0
              object cgvShipping: TcxGridDBTableView
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
                DataController.DataSource = dsVendorShippingDetail
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvShippingShippingId: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevShipping
                  Properties.KeyFieldNames = 'ShippingId'
                  Properties.ListFieldItem = dmGeneral.cgvPrevShippingShippingId
                  Visible = False
                end
                object cgvShippingShippingName: TcxGridDBColumn
                  Caption = 'Pengiriman'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevShipping
                  Properties.KeyFieldNames = 'ShippingId'
                  Properties.ListFieldItem = dmGeneral.cgvPrevShippingShippingName
                  Width = 82
                end
                object cgvShippingContactPerson: TcxGridDBColumn
                  Caption = 'Contact Person'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevShipping
                  Properties.KeyFieldNames = 'ShippingId'
                  Properties.ListFieldItem = dmGeneral.cgvPrevShippingContactPerson
                end
              end
              object cgShippingLevel1: TcxGridLevel
                GridView = cgvShipping
              end
            end
          end
          object tsMemo: TcxTabSheet
            Caption = 'Memo'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'Memo'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Height = 282
              Width = 669
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
            Top = 6
            Width = 72
            Height = 13
            Caption = 'Kode Customer'
            Transparent = True
          end
          object lblCustomerName: TLabel
            Left = 8
            Top = 24
            Width = 75
            Height = 13
            Caption = 'Nama Customer'
            Transparent = True
          end
          object dbeCustomerId: TcxDBTextEdit
            Left = 96
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.OnEditValueChanged = dbeCustomerIdPropertiesEditValueChanged
            TabOrder = 0
            Width = 157
          end
          object btnGetId: TcxButton
            Left = 253
            Top = 5
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
            TabOrder = 1
            TabStop = False
            OnClick = btnGetIdClick
          end
          object dbeCustomerName: TcxDBTextEdit
            Left = 96
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerName'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 241
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
            DataBinding.FieldName = 'CustomerId'
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
          object cgvPrevDisplayCityId2: TcxGridDBColumn
            Caption = 'Propinsi'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityProvinceId
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
            Properties.View = dmGeneral.cgvPrevCategory
            Properties.KeyFieldNames = 'CategoryId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCategoryCategoryName
            Visible = False
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
    DataSet = dmGeneral.qryCustomer
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsCustomerPhone: TDataSource
    DataSet = qryCustomerPhone
    Left = 168
    Top = 144
  end
  object dsVendorShippingDetail: TDataSource
    DataSet = qryCustomerShippingDetail
    Left = 168
    Top = 176
  end
  object qryGetCustomerId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select max(CustomerId)'
      'from Customer '
      'where CustomerId like :Prefix')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Prefix'
      end>
  end
  object qryCustomerPhone: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from CustomerPhone'
      'where Customerid = :Customerid')
    MasterSource = dsDefault
    MasterFields = 'customerid'
    DetailFields = 'customerid'
    BeforeInsert = qryCustomerPhoneBeforeEdit
    BeforeEdit = qryCustomerPhoneBeforeEdit
    OnNewRecord = qryCustomerPhoneNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Customerid'
      end>
  end
  object qryCustomerShippingDetail: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from CustomerShippingDetail'
      'where Customerid = :Customerid')
    MasterSource = dsDefault
    MasterFields = 'customerid'
    DetailFields = 'customerid'
    BeforeInsert = qryCustomerShippingDetailBeforeEdit
    BeforeEdit = qryCustomerShippingDetailBeforeEdit
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Customerid'
      end>
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 208
    object cgvPrevCustomerParent: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCustomerParent
      DataController.KeyFieldNames = 'customerid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCustomerParentcustomerid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'customerid'
      end
      object cgvPrevCustomerParentcustomername: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'customername'
      end
      object cgvPrevCustomerParentcontactperson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'contactperson'
      end
      object cgvPrevCustomerParentcityid: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
    end
  end
  object qryPrevCustomerParent: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from Customer'
      'where CustomerIdParent is null')
    Left = 136
    Top = 208
  end
  object dsPrevCustomerParent: TDataSource
    DataSet = qryPrevCustomerParent
    Left = 168
    Top = 208
  end
end
