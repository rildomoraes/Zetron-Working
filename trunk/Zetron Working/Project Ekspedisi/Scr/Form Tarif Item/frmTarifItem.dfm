inherited fmTarifItem: TfmTarifItem
  Caption = 'Tarif Per Barang'
  Position = poDesigned
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
          Width = 52
          Height = 13
          Caption = 'Tipe Tarif *'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Rute *'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 42
          Width = 39
          Height = 13
          Caption = 'Freight *'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 60
          Width = 29
          Height = 13
          Caption = 'OPP *'
          Transparent = True
        end
        object dbeTarifType: TcxDBExtLookupComboBox
          Left = 66
          Top = 3
          DataBinding.DataField = 'TarifTypeId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = cgvPrevTarifType
          Properties.KeyFieldNames = 'TarifTypeId'
          Properties.ListFieldItem = cgvPrevTarifTypeTarifTypeName
          TabOrder = 0
          Width = 145
        end
        object dbeRoute: TcxDBExtLookupComboBox
          Left = 66
          Top = 21
          DataBinding.DataField = 'RouteId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = cgvPrevRoute
          Properties.KeyFieldNames = 'RouteId'
          Properties.ListFieldItem = cgvPrevRouteRouteName
          TabOrder = 1
          Width = 145
        end
        object dbePriceFra: TcxDBCurrencyEdit
          Left = 66
          Top = 39
          DataBinding.DataField = 'PriceFra'
          DataBinding.DataSource = dsDefault
          Properties.DisplayFormat = ',0.00;(,0.00)'
          Properties.UseThousandSeparator = True
          TabOrder = 2
          Width = 121
        end
        object dbePrice: TcxDBCurrencyEdit
          Left = 66
          Top = 57
          DataBinding.DataField = 'Price'
          DataBinding.DataSource = dsDefault
          Properties.DisplayFormat = ',0.00;($,0.00)'
          Properties.UseThousandSeparator = True
          TabOrder = 3
          Width = 121
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
      object cgPrevTarifItem: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevTarifItem: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevTarifItemTarifTypeId: TcxGridDBColumn
            Caption = 'Tipe Tarif'
            DataBinding.FieldName = 'TarifTypeId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevTarifType
            Properties.KeyFieldNames = 'TarifTypeId'
            Properties.ListFieldItem = cgvPrevTarifTypeTarifTypeName
          end
          object cgvPrevTarifItemRouteId: TcxGridDBColumn
            Caption = 'Route'
            DataBinding.FieldName = 'RouteId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = cgvPrevRouteRouteName
          end
          object cgvPrevTarifItemPrice: TcxGridDBColumn
            DataBinding.FieldName = 'Price'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.UseThousandSeparator = True
          end
          object cgvPrevTarifItemPriceFra: TcxGridDBColumn
            Caption = 'Price Fra'
            DataBinding.FieldName = 'PriceFra'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.UseThousandSeparator = True
          end
        end
        object cgPrevTarifItemLevel1: TcxGridLevel
          GridView = cgvPrevTarifItem
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 440
    Top = 208
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 472
    Top = 208
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 504
    Top = 208
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryTarifItem
    Left = 440
    Top = 240
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 536
    Top = 208
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 472
    Top = 240
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryPrevTarifType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TarifType;')
    Left = 440
    Top = 272
  end
  object qryPrevRoute: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Route;')
    Left = 440
    Top = 304
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 408
    Top = 272
    object cgvPrevTarifType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTarifType
      DataController.KeyFieldNames = 'TarifTypeId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevTarifTypeTarifTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'TarifTypeId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevTarifTypeTarifTypeCode: TcxGridDBColumn
        DataBinding.FieldName = 'TarifTypeCode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevTarifTypeTarifTypeName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'TarifTypeName'
      end
      object cgvPrevTarifTypeStatusDimensi: TcxGridDBColumn
        Caption = 'Dimensi'
        DataBinding.FieldName = 'StatusDimensi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Kubikasi'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Berat'
            Value = '1'
          end
          item
            Description = 'Kuantiti'
            Value = '2'
          end>
      end
    end
    object cgvPrevRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevRoute
      DataController.KeyFieldNames = 'RouteId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevRouteRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevRouteRouteCode: TcxGridDBColumn
        DataBinding.FieldName = 'RouteCode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevRouteRouteName: TcxGridDBColumn
        DataBinding.FieldName = 'RouteName'
      end
      object cgvPrevRouteDepatureCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DepatureCityId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevRouteDestinationCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DestinationCityId'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  object dsPrevTarifType: TDataSource
    DataSet = qryPrevTarifType
    Left = 472
    Top = 272
  end
  object dsPrevRoute: TDataSource
    DataSet = qryPrevRoute
    Left = 472
    Top = 304
  end
end
