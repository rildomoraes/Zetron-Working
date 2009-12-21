inherited fmTrayek: TfmTrayek
  Caption = 'Daftar Muat Kapal'
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
          Left = 8
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
        end
        object Label2: TLabel
          Left = 8
          Top = 23
          Width = 27
          Height = 13
          Caption = 'Kapal'
        end
        object Label3: TLabel
          Left = 8
          Top = 42
          Width = 23
          Height = 13
          Caption = 'Rute'
        end
        object Label4: TLabel
          Left = 7
          Top = 60
          Width = 67
          Height = 13
          Caption = 'Tanggal Buka'
        end
        object Label5: TLabel
          Left = 8
          Top = 78
          Width = 70
          Height = 13
          Caption = 'Tanggal Tutup'
        end
        object Label6: TLabel
          Left = 8
          Top = 96
          Width = 66
          Height = 13
          Caption = 'Tanggal Pergi'
        end
        object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
          Left = 103
          Top = 21
          DataBinding.DataField = 'ShipId'
          Properties.View = cgvPrevShip
          Properties.KeyFieldNames = 'ShipId'
          Properties.ListFieldItem = cgvPrevShipShipName
          TabOrder = 0
          Width = 143
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 103
          Top = 3
          DataBinding.DataField = 'TrayekCode'
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 121
        end
        object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
          Left = 103
          Top = 39
          DataBinding.DataField = 'RouteId'
          Properties.View = cgvPrevRoute
          Properties.KeyFieldNames = 'RouteId'
          Properties.ListFieldItem = cgvPrevRouteRouteName
          TabOrder = 2
          Width = 143
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 103
          Top = 57
          DataBinding.DataField = 'TrayekDateOpen'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 103
          Top = 75
          DataBinding.DataField = 'TrayekDateClose'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 103
          Top = 93
          DataBinding.DataField = 'TrayekDateGo'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 5
        Top = 6
        Width = 250
        Height = 200
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1TrayekCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'TrayekCode'
            Width = 51
          end
          object cxGrid1DBTableView1ShipId: TcxGridDBColumn
            Caption = 'Kapal'
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = cgvPrevShipShipName
            Width = 63
          end
          object cxGrid1DBTableView1RouteId: TcxGridDBColumn
            Caption = 'Rute'
            DataBinding.FieldName = 'RouteId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = cgvPrevRouteRouteName
            Width = 69
          end
          object cxGrid1DBTableView1TrayekDateOpen: TcxGridDBColumn
            Caption = 'Tanggal Buka'
            DataBinding.FieldName = 'TrayekDateOpen'
            Width = 84
          end
          object cxGrid1DBTableView1TrayekDateClose: TcxGridDBColumn
            Caption = 'Tanggal Tutup'
            DataBinding.FieldName = 'TrayekDateClose'
            Width = 94
          end
          object cxGrid1DBTableView1TrayekDateGo: TcxGridDBColumn
            Caption = 'Tanggal Pergi'
            DataBinding.FieldName = 'TrayekDateGo'
            Width = 88
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 96
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 488
    Top = 96
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 96
  end
  inherited dsDefault: TDataSource
    Left = 456
    Top = 128
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 96
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 128
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 456
    Top = 168
    object cgvPrevShip: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevShip
      DataController.KeyFieldNames = 'ShipId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevShipShipId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipId'
        Visible = False
      end
      object cgvPrevShipShipCrewId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewId'
        Visible = False
      end
      object cgvPrevShipStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
      end
      object cgvPrevShipShipCode: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCode'
        Visible = False
      end
      object cgvPrevShipShipName: TcxGridDBColumn
        Caption = 'Nama Kapal'
        DataBinding.FieldName = 'ShipName'
      end
      object cgvPrevShipEngineName: TcxGridDBColumn
        DataBinding.FieldName = 'EngineName'
        Visible = False
      end
      object cgvPrevShipOrigin: TcxGridDBColumn
        DataBinding.FieldName = 'Origin'
        Visible = False
      end
      object cgvPrevShipYearMade: TcxGridDBColumn
        DataBinding.FieldName = 'YearMade'
        Visible = False
      end
      object cgvPrevShipP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        Visible = False
      end
      object cgvPrevShipL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        Visible = False
      end
      object cgvPrevShipT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        Visible = False
      end
      object cgvPrevShipGrossTon: TcxGridDBColumn
        DataBinding.FieldName = 'GrossTon'
        Visible = False
      end
      object cgvPrevShipNettoTon: TcxGridDBColumn
        DataBinding.FieldName = 'NettoTon'
        Visible = False
      end
    end
    object cgvPrevRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevRoute
      DataController.KeyFieldNames = 'RouteId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevRouteRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevRouteRouteCode: TcxGridDBColumn
        DataBinding.FieldName = 'RouteCode'
        Visible = False
      end
      object cgvPrevRouteRouteName: TcxGridDBColumn
        Caption = 'Nama Rute'
        DataBinding.FieldName = 'RouteName'
      end
      object cgvPrevRouteDepatureCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DepatureCityId'
        Visible = False
      end
      object cgvPrevRouteDestinationCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DestinationCityId'
        Visible = False
      end
    end
  end
end
