inherited fmVendor: TfmVendor
  Caption = 'Supplier'
  ClientHeight = 416
  ClientWidth = 710
  ExplicitWidth = 718
  ExplicitHeight = 445
  DesignSize = (
    710
    416)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 710
    ExplicitWidth = 710
  end
  inherited dxDockSite1: TdxDockSite
    Width = 710
    Height = 366
    ExplicitWidth = 710
    ExplicitHeight = 366
    DockType = 0
    OriginalWidth = 710
    OriginalHeight = 366
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 682
      Height = 366
      ExplicitWidth = 682
      ExplicitHeight = 366
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 682
        Height = 366
        ExplicitWidth = 682
        ExplicitHeight = 366
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 682
        Height = 366
        ExplicitWidth = 682
        ExplicitHeight = 366
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 678
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblVendorId: TLabel
            Left = 8
            Top = 24
            Width = 62
            Height = 13
            Caption = 'Kode Vendor'
            Transparent = True
          end
          object lblVendorName: TLabel
            Left = 8
            Top = 6
            Width = 65
            Height = 13
            Caption = 'Nama Vendor'
            Transparent = True
          end
          object dbeVendorId: TcxDBTextEdit
            Left = 96
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'VendorCode'
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
          object dbeVendorName: TcxDBTextEdit
            Left = 96
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'VendorName'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 241
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 49
          Width = 678
          Height = 313
          ActivePage = tsGeneral
          Align = alClient
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 284
          ClientRectLeft = 3
          ClientRectRight = 672
          ClientRectTop = 3
          object tsGeneral: TcxTabSheet
            Caption = 'General'
            ImageIndex = 1
            object lblAddress: TLabel
              Left = 5
              Top = 8
              Width = 32
              Height = 13
              Caption = 'Alamat'
              Transparent = True
            end
            object lblCity: TLabel
              Left = 5
              Top = 78
              Width = 22
              Height = 13
              Caption = 'Kota'
              Transparent = True
            end
            object lblCategory: TLabel
              Left = 5
              Top = 96
              Width = 47
              Height = 13
              Caption = 'Kelompok'
              Transparent = True
            end
            object lblMembership: TLabel
              Left = 5
              Top = 114
              Width = 57
              Height = 13
              Caption = 'Membership'
              Transparent = True
            end
            object lblVendorSince: TLabel
              Left = 5
              Top = 132
              Width = 62
              Height = 13
              Caption = 'Vendor Mulai'
              Transparent = True
            end
            object lblEmail: TLabel
              Left = 5
              Top = 150
              Width = 25
              Height = 13
              Caption = 'Email'
              Transparent = True
            end
            object dbmAddress: TcxDBMemo
              Left = 93
              Top = 6
              DataBinding.DataField = 'address'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Height = 71
              Width = 241
            end
            object dblcCity: TcxDBExtLookupComboBox
              Left = 93
              Top = 76
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
              TabOrder = 1
              Width = 185
            end
            object dblcVendorCategory: TcxDBExtLookupComboBox
              Left = 93
              Top = 94
              BeepOnEnter = False
              DataBinding.DataField = 'VendorCategoryId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmInventory.cgvPrevVendorCategory
              Properties.KeyFieldNames = 'VendorCategoryId'
              Properties.ListFieldItem = dmInventory.cgvPrevVendorCategoryCategoryName
              TabOrder = 2
              Width = 185
            end
            object dbeMemberId: TcxDBTextEdit
              Left = 93
              Top = 112
              BeepOnEnter = False
              DataBinding.DataField = 'MemberId'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 185
            end
            object dbeVendorSince: TcxDBDateEdit
              Left = 93
              Top = 130
              BeepOnEnter = False
              DataBinding.DataField = 'VendorSince'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 121
            end
            object dbeEmail: TcxDBHyperLinkEdit
              Left = 93
              Top = 148
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = dsDefault
              Properties.Prefix = 'mailto:'
              TabOrder = 5
              Width = 185
            end
          end
          object tsDetail: TcxTabSheet
            Caption = 'Detail'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblInvoiceDue: TLabel
              Left = 5
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
            object Label4: TLabel
              Left = 5
              Top = 28
              Width = 33
              Height = 13
              Caption = 'NPWP'
              Transparent = True
            end
            object Label2: TLabel
              Left = 5
              Top = 46
              Width = 57
              Height = 13
              Caption = 'Batas Kredit'
              Transparent = True
            end
            object lblMemo: TLabel
              Left = 5
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
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgVendorPhone: TcxGrid
              Left = 0
              Top = 0
              Width = 669
              Height = 281
              Align = alClient
              TabOrder = 0
              object cgvVendorPhone: TcxGridDBTableView
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
                DataController.DataSource = dsVendorPhone
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Click disini untuk menambah data'
                NewItemRow.Visible = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvVendorPhoneOrderNo: TcxGridDBColumn
                  Caption = 'Order No'
                  DataBinding.FieldName = 'OrderNo'
                  PropertiesClassName = 'TcxSpinEditProperties'
                end
                object cgvVendorPhonephonename: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'phonename'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvVendorPhonecountryext: TcxGridDBColumn
                  Caption = 'Ext Negara'
                  DataBinding.FieldName = 'CountryExt'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvVendorPhonecityext: TcxGridDBColumn
                  Caption = 'Ext Kota'
                  DataBinding.FieldName = 'CityExt'
                  Options.Filtering = False
                  Width = 100
                end
                object cgvVendorPhonePhoneNo: TcxGridDBColumn
                  Caption = 'Nomor'
                  DataBinding.FieldName = 'PhoneNo'
                  Options.Filtering = False
                  Width = 100
                end
              end
              object cgVendorPhoneLevel1: TcxGridLevel
                GridView = cgvVendorPhone
              end
            end
            object dblcbCountryExt: TcxDBExtLookupComboBox
              Left = 16
              Top = 57
              BeepOnEnter = False
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCountry
              Properties.KeyFieldNames = 'CountryId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryExt
              TabOrder = 1
              Visible = False
              Width = 145
            end
            object dblcCityExt: TcxDBExtLookupComboBox
              Left = 16
              Top = 81
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityExt
              TabOrder = 2
              Visible = False
              Width = 145
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
              Height = 281
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
                object cgvShippingShippingCode: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Visible = False
                end
                object cgvShippingShippingName: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 82
                end
                object cgvShippingContactPerson: TcxGridDBColumn
                  Caption = 'Contact'
                  DataBinding.FieldName = 'ShippingId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                end
              end
              object cgShippingLevel1: TcxGridLevel
                GridView = cgvShipping
              end
            end
          end
          object tsContactPerson: TcxTabSheet
            Caption = 'Contact Person'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgContactPerson: TcxGrid
              Left = 0
              Top = 0
              Width = 669
              Height = 281
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
                DataController.DataSource = dsVendorContact
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvContactPersonVendorContactId: TcxGridDBColumn
                  DataBinding.FieldName = 'VendorContactId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvContactPersonVendorId: TcxGridDBColumn
                  DataBinding.FieldName = 'VendorId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvContactPersonVendorContactName: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'VendorContactName'
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
          object cgvPrevDisplayVendorId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'VendorCode'
          end
          object cgvPrevDisplayVendorName: TcxGridDBColumn
            Caption = 'Nama '
            DataBinding.FieldName = 'VendorName'
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
          object cgvPrevDisplayVendorSince: TcxGridDBColumn
            Caption = 'Vendor Mulai'
            DataBinding.FieldName = 'VendorSince'
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
    DataSet = dmInventory.qryVendor
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object dsVendorPhone: TDataSource [6]
    DataSet = qryVendorPhone
    Left = 168
    Top = 144
  end
  object dsVendorShippingDetail: TDataSource [7]
    DataSet = qryVendorShippingDetail
    Left = 168
    Top = 176
  end
  object qryGetVendorCode: TADOQuery [8]
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select max(VendorId) + 1'
      'from Vendor ')
    Left = 200
    Top = 144
  end
  object dsVendorContact: TDataSource [9]
    DataSet = qryVendorContact
    Left = 168
    Top = 208
  end
  object qryVendorShippingDetail: TADOQuery [10]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryVendorShippingDetailBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from VendorShippingDetail'
      'where VendorId = :VendorId')
    Left = 136
    Top = 176
  end
  object qryVendorContact: TADOQuery [11]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryVendorContactBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from VendorContact'
      'where VendorId = :VendorId')
    Left = 136
    Top = 208
  end
  object qryVendorPhone: TADOQuery [12]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryVendorPhoneBeforeInsert
    OnNewRecord = qryVendorPhoneNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from VendorPhone'
      'where VendorId = :VendorId')
    Left = 136
    Top = 144
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [13]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [14]
  end
end
