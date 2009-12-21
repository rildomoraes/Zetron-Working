inherited fmRoute: TfmRoute
  Caption = 'Rute'
  ExplicitHeight = 400
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
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Kode *'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 24
          Width = 35
          Height = 13
          Caption = 'Nama *'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 42
          Width = 27
          Height = 13
          Caption = 'Asal *'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 60
          Width = 40
          Height = 13
          Caption = 'Tujuan *'
          Transparent = True
        end
        object dbeRouteCode: TcxDBTextEdit
          Left = 56
          Top = 3
          DataBinding.DataField = 'RouteCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 121
        end
        object dbeRouteName: TcxDBTextEdit
          Left = 56
          Top = 21
          DataBinding.DataField = 'RouteName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 121
        end
        object dbeDepatureCityId: TcxDBExtLookupComboBox
          Left = 56
          Top = 39
          DataBinding.DataField = 'DepatureCityId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = dmGlobal.cgvPrevCity
          Properties.KeyFieldNames = 'CityId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          TabOrder = 2
          Width = 145
        end
        object dbeDestinationCityId: TcxDBExtLookupComboBox
          Left = 56
          Top = 57
          DataBinding.DataField = 'DestinationCityId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = dmGlobal.cgvPrevCity
          Properties.KeyFieldNames = 'CityId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          TabOrder = 3
          Width = 145
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1RouteId: TcxGridDBColumn
            DataBinding.FieldName = 'RouteId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1RouteCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'RouteCode'
            Width = 73
          end
          object cxGrid1DBTableView1RouteName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'RouteName'
            Width = 136
          end
          object cxGrid1DBTableView1DepatureCityId: TcxGridDBColumn
            Caption = 'Kota Asal'
            DataBinding.FieldName = 'DepatureCityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1DestinationCityId: TcxGridDBColumn
            Caption = 'Kota Tujuan'
            DataBinding.FieldName = 'DestinationCityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 256
    Top = 216
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 288
    Top = 216
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 320
    Top = 216
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryRoute
    Left = 256
    Top = 248
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 352
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 288
    Top = 248
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
