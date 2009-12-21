inherited fmShipping: TfmShipping
  Caption = 'Ekspedisi / Shipping'
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblIdOutlet: TLabel
            Left = 8
            Top = 26
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblOutletName: TLabel
            Left = 8
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object dbeShippingId: TcxDBTextEdit
            Left = 49
            Top = 23
            BeepOnEnter = False
            DataBinding.DataField = 'ShippingCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 81
          end
          object dbeShippingName: TcxDBTextEdit
            Left = 49
            Top = 5
            BeepOnEnter = False
            DataBinding.DataField = 'ShippingName'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 201
          end
          object btnGetId: TcxButton
            Left = 130
            Top = 25
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
          TabPosition = tpBottom
          ClientRectBottom = 232
          ClientRectLeft = 3
          ClientRectRight = 554
          ClientRectTop = 3
          object cxTabSheet1: TcxTabSheet
            Caption = 'General'
            Color = clBtnFace
            ImageIndex = 0
            ParentColor = False
            object Label1: TLabel
              Left = 8
              Top = 117
              Width = 29
              Height = 13
              Caption = 'Memo'
              Transparent = True
            end
            object lblAddress: TLabel
              Left = 8
              Top = 30
              Width = 32
              Height = 13
              Caption = 'Alamat'
              Transparent = True
            end
            object lblContactPerson: TLabel
              Left = 8
              Top = 12
              Width = 73
              Height = 13
              Caption = 'Contact Person'
              Transparent = True
            end
            object lblIdCity: TLabel
              Left = 8
              Top = 99
              Width = 22
              Height = 13
              Caption = 'Kota'
              Transparent = True
            end
            object dbeContactPerson: TcxDBTextEdit
              Left = 96
              Top = 9
              BeepOnEnter = False
              DataBinding.DataField = 'ContactName'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 201
            end
            object dblcCityId: TcxDBExtLookupComboBox
              Left = 96
              Top = 97
              BeepOnEnter = False
              DataBinding.DataField = 'CityId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevCity
              Properties.KeyFieldNames = 'CityId'
              Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
              TabOrder = 2
              Width = 169
            end
            object dbmMemo: TcxDBMemo
              Left = 96
              Top = 115
              DataBinding.DataField = 'Memo'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Height = 83
              Width = 241
            end
            object dbmAddress: TcxDBMemo
              Left = 96
              Top = 27
              DataBinding.DataField = 'address'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Height = 71
              Width = 241
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Tujuan Pengiriman'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgShippingDestination: TcxGrid
              Left = 0
              Top = 0
              Width = 551
              Height = 229
              Align = alClient
              TabOrder = 0
              object cgvShippingDestination: TcxGridDBTableView
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
                DataController.DataSource = dsShippingDestination
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvShippingDestinationShippingId: TcxGridDBColumn
                  DataBinding.FieldName = 'ShippingId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvShippingDestinationCityId: TcxGridDBColumn
                  Caption = 'Kota Tujuan'
                  DataBinding.FieldName = 'CityId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGlobal.cgvPrevCity
                  Properties.KeyFieldNames = 'CityId'
                  Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
                  Width = 150
                end
                object cgvShippingDestinationPriceDimensi: TcxGridDBColumn
                  Caption = 'Harga / Kubikasi'
                  DataBinding.FieldName = 'PriceDimensi'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 120
                end
                object cgvShippingDestinationPriceBerat: TcxGridDBColumn
                  Caption = 'Harga / Kg'
                  DataBinding.FieldName = 'PriceBerat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 120
                end
                object cgvShippingDestinationMemo: TcxGridDBColumn
                  Caption = ' Memo'
                  DataBinding.FieldName = 'Memo'
                  Width = 140
                end
              end
              object cgShippingDestinationLevel1: TcxGridLevel
                GridView = cgvShippingDestination
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
        Width = 296
        Height = 294
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
          OptionsView.GroupByBox = False
          object cgvPrevDisplayShippingId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ShippingId'
            Width = 64
          end
          object cgvPrevDisplayShippingName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ShippingName'
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
          object cgvPrevDisplayCountryId: TcxGridDBColumn
            Caption = 'Negara'
            DataBinding.FieldName = 'CountryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 79
          end
          object cgvPrevDisplayProvinceId: TcxGridDBColumn
            Caption = 'Propinsi'
            DataBinding.FieldName = 'ProvinceId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 85
          end
          object cgvPrevDisplayCityId: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 60
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
    DataSet = dmInventory.qryShipping
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryShippingDestination: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ShippingDestination'
    DataSource = dsDefault
    IndexFieldNames = 'ShippingId'
    MasterFields = 'ShippingId'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsShippingDestination: TDataSource [7]
    DataSet = qryShippingDestination
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
