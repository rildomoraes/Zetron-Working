inherited fmShipRoute: TfmShipRoute
  Caption = 'Rute Kapal'
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
        ExplicitLeft = -3
        ExplicitTop = 5
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 30
          Height = 13
          Caption = 'Kapal '
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Route'
          Transparent = True
        end
        object Label9: TLabel
          Left = 199
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
        object Label3: TLabel
          Left = 199
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
        object dbeRouteID: TcxDBExtLookupComboBox
          Left = 48
          Top = 21
          DataBinding.DataField = 'RouteId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = dmEkspedisi.cgvPrevRoute
          Properties.KeyFieldNames = 'RouteId'
          Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
          TabOrder = 1
          Width = 145
        end
        object dbeShipId: TcxDBExtLookupComboBox
          Left = 48
          Top = 3
          DataBinding.DataField = 'ShipId'
          DataBinding.DataSource = dsDefault
          Properties.ImmediatePost = True
          Properties.View = dmEkspedisi.cgvPrevShip
          Properties.KeyFieldNames = 'ShipId'
          Properties.ListFieldItem = dmEkspedisi.cgvPrevShipShipName
          TabOrder = 0
          Width = 145
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
      object cgDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvDisplayShipId: TcxGridDBColumn
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevShipShipName
          end
          object cgvDisplayRouteId: TcxGridDBColumn
            DataBinding.FieldName = 'RouteId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
          end
        end
        object cgDisplayLevel1: TcxGridLevel
          GridView = cgvDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 272
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 488
    Top = 272
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 272
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryShipRoute
    Left = 456
    Top = 304
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 272
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 304
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
