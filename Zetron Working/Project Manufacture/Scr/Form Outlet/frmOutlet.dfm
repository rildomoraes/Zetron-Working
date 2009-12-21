inherited fmOutlet: TfmOutlet
  Caption = 'Outlet'
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
        object lblIdOutlet: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblOutletName: TLabel
          Left = 8
          Top = 26
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblContactPerson: TLabel
          Left = 8
          Top = 44
          Width = 73
          Height = 13
          Caption = 'Contact Person'
          Transparent = True
        end
        object lblAddress: TLabel
          Left = 8
          Top = 62
          Width = 32
          Height = 13
          Caption = 'Alamat'
          Transparent = True
        end
        object lblIdCity: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = 'Kota'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 100
          Width = 28
          Height = 13
          Caption = 'Notes'
          Transparent = True
        end
        object dbeOutletCode: TcxDBTextEdit
          Left = 96
          Top = 8
          DataBinding.DataField = 'OutletCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeOutletName: TcxDBTextEdit
          Left = 96
          Top = 26
          DataBinding.DataField = 'OutletName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 201
        end
        object dbeContactPerson: TcxDBTextEdit
          Left = 96
          Top = 44
          DataBinding.DataField = 'ContactPerson'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 201
        end
        object dbeAddress: TcxDBTextEdit
          Left = 96
          Top = 62
          DataBinding.DataField = 'Address'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 201
        end
        object dblcCityId: TcxDBExtLookupComboBox
          Left = 96
          Top = 80
          DataBinding.DataField = 'CityId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCity
          Properties.KeyFieldNames = 'CityId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          TabOrder = 4
          Width = 169
        end
        object dbmNotes: TcxDBMemo
          Left = 96
          Top = 98
          DataBinding.DataField = 'Memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Height = 83
          Width = 201
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      ExplicitHeight = 316
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        object cgvGrid: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvGridOutletId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'OutletId'
            Width = 64
          end
          object cgvGridOutletName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'OutletName'
          end
          object cgvGridContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'ContactPerson'
            Visible = False
          end
          object cgvGridAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'Address'
            Visible = False
          end
          object cgvGridCountryId: TcxGridDBColumn
            Caption = 'Negara'
            DataBinding.FieldName = 'CountryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 79
          end
          object cgvGridProvinceId: TcxGridDBColumn
            Caption = 'Propinsi'
            DataBinding.FieldName = 'ProvinceId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 85
          end
          object cgvGridCityId: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            Width = 60
          end
        end
        object cgGridLevel1: TcxGridLevel
          GridView = cgvGrid
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryOutlet
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
