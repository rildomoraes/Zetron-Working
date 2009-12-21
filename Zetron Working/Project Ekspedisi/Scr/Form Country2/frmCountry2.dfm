inherited fmCountry2: TfmCountry2
  Caption = 'Lokasi'
  ClientHeight = 398
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 348
    ExplicitHeight = 348
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 348
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 348
      ExplicitHeight = 348
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 348
        ExplicitHeight = 348
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 348
        ExplicitHeight = 348
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 81
          Width = 560
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 149
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 221
          Width = 560
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 192
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 81
          Align = alTop
          TabOrder = 0
          object lblCountryId: TLabel
            Left = 9
            Top = 6
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblCountryName: TLabel
            Left = 8
            Top = 24
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object lblCountryExt: TLabel
            Left = 8
            Top = 42
            Width = 69
            Height = 13
            Caption = 'Ext Telephone'
            Transparent = True
          end
          object Label9: TLabel
            Left = 175
            Top = 4
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 279
            Top = 22
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbeCountryId: TcxDBTextEdit
            Left = 88
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'CountryId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 81
          end
          object dbeCountryName: TcxDBTextEdit
            Left = 88
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'CountryName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 185
          end
          object dbeCountryExt: TcxDBTextEdit
            Left = 88
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'CountryExt'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 81
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 84
          Width = 560
          Height = 137
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object cgProvince: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 135
            Align = alClient
            TabOrder = 0
            object cgvProvince: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Refresh.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsProvince
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvProvinceProvinceId: TcxGridDBColumn
                Caption = 'Kode Propinsi *'
                DataBinding.FieldName = 'ProvinceId'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 94
              end
              object cgvProvinceCountryId: TcxGridDBColumn
                DataBinding.FieldName = 'CountryId'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Visible = False
              end
              object cgvProvinceProvinceName: TcxGridDBColumn
                Caption = 'Nama Propinsi *'
                DataBinding.FieldName = 'ProvinceName'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 164
              end
            end
            object cgProvinceLevel1: TcxGridLevel
              GridView = cgvProvince
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 224
          Width = 560
          Height = 120
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          object cgCity: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 118
            Align = alClient
            TabOrder = 0
            object cgvCity: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsCity
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvCityCityId: TcxGridDBColumn
                Caption = 'Kode Kota *'
                DataBinding.FieldName = 'CityId'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 95
              end
              object cgvCityProvinceId: TcxGridDBColumn
                DataBinding.FieldName = 'ProvinceId'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Visible = False
              end
              object cgvCityCityName: TcxGridDBColumn
                Caption = 'Nama Kota *'
                DataBinding.FieldName = 'CityName'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 169
              end
              object cgvCityCityExt: TcxGridDBColumn
                Caption = 'Extension'
                DataBinding.FieldName = 'CityExt'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 111
              end
            end
            object cgCityLevel1: TcxGridLevel
              GridView = cgvCity
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 348
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrev: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 326
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrev: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OnFocusedRecordChanged = cgvPrevFocusedRecordChanged
          DataController.DataSource = dsPrevCity
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Navigator = True
          object cgvPrevKodeNegara: TcxGridDBColumn
            DataBinding.FieldName = 'Kode Negara'
            Visible = False
            GroupIndex = 0
            Width = 65
          end
          object cgvPrevNegara: TcxGridDBColumn
            DataBinding.FieldName = 'Negara'
            Width = 104
          end
          object cgvPrevPropinsi: TcxGridDBColumn
            DataBinding.FieldName = 'Propinsi'
            Width = 90
          end
          object cgvPrevKota: TcxGridDBColumn
            DataBinding.FieldName = 'Kota'
            Width = 113
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cgvPrev
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 64
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 488
    Top = 64
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 64
  end
  inherited dsDefault: TDataSource
    DataSet = dmGlobal.qryCountry
    Left = 456
    Top = 96
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 64
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryProvince: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryProvinceBeforeInsert
    OnNewRecord = qryProvinceNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'countryid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = 'ID'
      end>
    SQL.Strings = (
      'select * '
      'from province'
      'where countryid = :countryid')
    Left = 424
    Top = 64
  end
  object dsProvince: TDataSource
    DataSet = qryProvince
    Left = 424
    Top = 96
  end
  object qryCity: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCityBeforeInsert
    OnNewRecord = qryCityNewRecord
    DataSource = dsProvince
    Parameters = <
      item
        Name = 'provinceid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = 'JABAR'
      end>
    SQL.Strings = (
      'select * '
      'from city'
      'where provinceid = :provinceid')
    Left = 392
    Top = 64
  end
  object dsCity: TDataSource
    DataSet = qryCity
    Left = 392
    Top = 96
  end
  object qryPrevCity: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCityBeforeInsert
    OnNewRecord = qryCityNewRecord
    DataSource = dsProvince
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Country.CountryName AS Negara, Country.CountryExt AS [Kod' +
        'e Negara],'
      
        'Province.ProvinceName AS Propinsi, City.CityName AS Kota,Provinc' +
        'e.ProvinceId, City.CityId,Country.CountryId'
      'FROM City'
      'INNER JOIN Province ON City.ProvinceId = Province.ProvinceId'
      'INNER JOIN Country ON Province.CountryId = Country.CountryId')
    Left = 336
    Top = 64
  end
  object dsPrevCity: TDataSource
    DataSet = qryPrevCity
    Left = 336
    Top = 96
  end
end
