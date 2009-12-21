inherited fmCashRegister: TfmCashRegister
  Caption = 'Cash Register'
  ClientHeight = 451
  ExplicitHeight = 485
  DesignSize = (
    592
    451)
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 401
    ExplicitHeight = 401
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 401
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 401
      ExplicitHeight = 401
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 401
        ExplicitHeight = 401
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 401
        ExplicitHeight = 401
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblCashRegister: TLabel
          Left = 8
          Top = 8
          Width = 67
          Height = 13
          Caption = 'Kode Register'
          Transparent = True
        end
        object lblCashRegisterName: TLabel
          Left = 8
          Top = 26
          Width = 70
          Height = 13
          Caption = 'Nama Register'
          Transparent = True
        end
        object lblCustomerId: TLabel
          Left = 8
          Top = 62
          Width = 81
          Height = 13
          Caption = 'Default Customer'
          Transparent = True
        end
        object lblWarehouseId: TLabel
          Left = 8
          Top = 44
          Width = 75
          Height = 13
          Caption = 'Default Gudang'
          Transparent = True
        end
        object lblOutletId: TLabel
          Left = 8
          Top = 80
          Width = 65
          Height = 13
          Caption = 'Default Outlet'
          Transparent = True
        end
        object dbeCashRegisterId: TcxDBTextEdit
          Left = 95
          Top = 5
          DataBinding.DataField = 'cashregisterid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 117
        end
        object dbeCashRegisterName: TcxDBTextEdit
          Left = 95
          Top = 23
          DataBinding.DataField = 'cashregistername'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbeCustomerId: TcxDBExtLookupComboBox
          Left = 95
          Top = 59
          DataBinding.DataField = 'customerid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevCustomer
          Properties.KeyFieldNames = 'CustomerId'
          Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          TabOrder = 3
          Width = 185
        end
        object dbeOutletId: TcxDBExtLookupComboBox
          Left = 95
          Top = 77
          DataBinding.DataField = 'outletid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevOutlet
          Properties.KeyFieldNames = 'OutletId'
          Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
          TabOrder = 4
          Width = 185
        end
        object dbeWarehouseId: TcxDBExtLookupComboBox
          Left = 95
          Top = 41
          DataBinding.DataField = 'warehouseid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevWarehouse
          Properties.KeyFieldNames = 'WarehouseId'
          Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
          TabOrder = 2
          Width = 185
        end
        object chkFlagUseFPValidation: TcxDBCheckBox
          Left = 8
          Top = 102
          Caption = 'Proses validasi dengan sidik jari'
          DataBinding.DataField = 'flagusefpvalidation'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Transparent = True
          Width = 191
        end
        object chkFlagUseBarcodeMode: TcxDBCheckBox
          Left = 8
          Top = 125
          Caption = 'Entry data dengan barcode  sacanner'
          DataBinding.DataField = 'flagusebarcodemode'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 6
          Transparent = True
          Width = 208
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
          OptionsView.GroupByBox = False
          object cgvPrevDisplaycashregisterid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'cashregisterid'
          end
          object cgvPrevDisplaycashregistername: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'cashregistername'
          end
          object cgvPrevDisplaywarehouseid: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'warehouseid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
            Visible = False
          end
          object cgvPrevDisplaycustomerid: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customerid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
            Visible = False
          end
          object cgvPrevDisplayoutletid: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryCashRegister
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryCashRegister: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from CashRegister')
    OnNewRecord = qryCashRegisterNewRecord
    Left = 136
    Top = 112
  end
end
