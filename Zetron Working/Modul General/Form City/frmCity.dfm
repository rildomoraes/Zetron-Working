inherited fmCity: TfmCity
  Caption = 'Kota'
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
        object lblProvinceId: TLabel
          Left = 9
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Propinsi'
          Transparent = True
        end
        object lblCityId: TLabel
          Left = 9
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Kode Kota'
          Transparent = True
        end
        object lblCityName: TLabel
          Left = 9
          Top = 42
          Width = 53
          Height = 13
          Caption = 'Nama Kota'
          Transparent = True
        end
        object lblCityExt: TLabel
          Left = 9
          Top = 60
          Width = 69
          Height = 13
          Caption = 'Ext Telephone'
          Transparent = True
        end
        object Label9: TLabel
          Left = 279
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
          Left = 175
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
        object Label2: TLabel
          Left = 279
          Top = 40
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
        object dblcProvinceId: TcxDBExtLookupComboBox
          Left = 88
          Top = 3
          DataBinding.DataField = 'ProvinceId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = dmGlobal.cgvPrevProvince
          Properties.KeyFieldNames = 'ProvinceId'
          Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
          TabOrder = 0
          Width = 185
        end
        object dbeCityId: TcxDBTextEdit
          Left = 88
          Top = 21
          DataBinding.DataField = 'CityId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 81
        end
        object dbeCityName: TcxDBTextEdit
          Left = 88
          Top = 39
          DataBinding.DataField = 'CityName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 185
        end
        object dbeCityExt: TcxDBTextEdit
          Left = 88
          Top = 57
          DataBinding.DataField = 'CityExt'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 81
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
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
          object cgvPrevDisplayCountryId: TcxGridDBColumn
            Caption = 'Negara'
            DataBinding.FieldName = 'CountryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Visible = False
          end
          object cgvPrevDisplayProvinceId: TcxGridDBColumn
            Caption = 'Propinsi'
            DataBinding.FieldName = 'ProvinceId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Visible = False
          end
          object cgvPrevDisplayCityId: TcxGridDBColumn
            Caption = 'Kode Kota'
            DataBinding.FieldName = 'CityId'
          end
          object cgvPrevDisplayCityName: TcxGridDBColumn
            Caption = 'Nama Kota'
            DataBinding.FieldName = 'CityName'
          end
          object cgvPrevDisplayCityExt: TcxGridDBColumn
            Caption = 'Ext Kota'
            DataBinding.FieldName = 'CityExt'
            Visible = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 384
    Top = 240
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 416
    Top = 240
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryCity
    Left = 352
    Top = 272
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 448
    Top = 240
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 384
    Top = 272
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 352
    Top = 240
  end
end
