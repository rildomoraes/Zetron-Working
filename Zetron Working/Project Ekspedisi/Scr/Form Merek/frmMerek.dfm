inherited fmMerek: TfmMerek
  Caption = 'Merek'
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
          Width = 68
          Height = 13
          Caption = 'Nama Merek *'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 42
          Width = 30
          Height = 13
          Caption = 'Rute *'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 60
          Width = 51
          Height = 13
          Caption = 'Customer *'
          Transparent = True
        end
        object dbeMerekCode: TcxDBTextEdit
          Left = 81
          Top = 3
          DataBinding.DataField = 'MerekCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 121
        end
        object dbeMerekName: TcxDBTextEdit
          Left = 81
          Top = 21
          DataBinding.DataField = 'MerekName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 121
        end
        object dbeRouteId: TcxDBExtLookupComboBox
          Left = 81
          Top = 39
          DataBinding.DataField = 'RouteId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = cgvPrevRoute
          Properties.KeyFieldNames = 'RouteId'
          Properties.ListFieldItem = cgvPrevRouteRouteName
          TabOrder = 2
          Width = 145
        end
        object dbeCustomerId: TcxDBExtLookupComboBox
          Left = 81
          Top = 57
          DataBinding.DataField = 'CustomerId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = cgvPrevCustomerCustomerName
          TabOrder = 3
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
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1MerekCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'MerekCode'
          end
          object cxGrid1DBTableView1MerekName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'MerekName'
          end
          object cxGrid1DBTableView1RouteId: TcxGridDBColumn
            Caption = 'Route'
            DataBinding.FieldName = 'RouteId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = cgvPrevRouteRouteName
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CustomerId: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'CustomerId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = cgvPrevCustomerCustomerName
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
    Left = 416
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 448
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 480
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryMerek
    Left = 416
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 512
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 448
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 416
    Top = 144
    object cgvPrevRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevRoute
      DataController.KeyFieldNames = 'RouteId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
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
    object cgvPrevCustomer: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCustomer
      DataController.KeyFieldNames = 'CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevCustomerCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevCustomerCustomerCode: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerCode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevCustomerCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerName'
      end
      object cgvPrevCustomerTarifKonosemen: TcxGridDBColumn
        DataBinding.FieldName = 'TarifKonosemen'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  object qryPrevRouteId: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Route')
    Left = 320
    Top = 168
  end
  object qryPrevCustomer: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CustomerForwarding')
    Left = 352
    Top = 168
  end
  object dsPrevCustomer: TDataSource
    DataSet = qryPrevCustomer
    Left = 344
    Top = 200
  end
  object dsPrevRoute: TDataSource
    DataSet = qryPrevRouteId
    Left = 320
    Top = 200
  end
end
