inherited fmProvince: TfmProvince
  Caption = 'Provinsi'
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
        object lblCountryId: TLabel
          Left = 9
          Top = 6
          Width = 35
          Height = 13
          Caption = 'Negara'
          Transparent = True
        end
        object lblProvinceId: TLabel
          Left = 9
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Kode '
          Transparent = True
        end
        object lblProvinceName: TLabel
          Left = 9
          Top = 42
          Width = 31
          Height = 13
          Caption = 'Nama '
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
        object dblcCountryId: TcxDBExtLookupComboBox
          Left = 88
          Top = 3
          DataBinding.DataField = 'CountryId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCountry
          Properties.KeyFieldNames = 'CountryId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
          TabOrder = 0
          Width = 185
        end
        object dbeProvinceId: TcxDBTextEdit
          Left = 88
          Top = 21
          DataBinding.DataField = 'ProvinceId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 81
        end
        object dbeProvinceName: TcxDBTextEdit
          Left = 88
          Top = 39
          DataBinding.DataField = 'ProvinceName'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 185
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
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
            Caption = 'Kode '
            DataBinding.FieldName = 'ProvinceId'
            Width = 94
          end
          object cgvPrevDisplayProvinceName: TcxGridDBColumn
            Caption = 'Nama '
            DataBinding.FieldName = 'ProvinceName'
            Width = 138
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 472
    Top = 280
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 504
    Top = 280
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryProvince
    Left = 440
    Top = 312
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 536
    Top = 280
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 472
    Top = 312
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 440
    Top = 280
  end
end
