inherited fmWarehouse: TfmWarehouse
  Caption = 'Gudang'
  ClientHeight = 466
  ClientWidth = 758
  ExplicitWidth = 766
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 758
    ExplicitWidth = 758
  end
  inherited dxDockSite1: TdxDockSite
    Width = 758
    Height = 416
    ExplicitWidth = 758
    ExplicitHeight = 416
    DockType = 0
    OriginalWidth = 758
    OriginalHeight = 416
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 730
      Height = 416
      ExplicitWidth = 730
      ExplicitHeight = 416
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 730
        Height = 416
        ExplicitWidth = 730
        ExplicitHeight = 416
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 730
        Height = 416
        ExplicitWidth = 730
        ExplicitHeight = 416
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 726
          Height = 109
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblAddress: TLabel
            Left = 8
            Top = 64
            Width = 32
            Height = 13
            Caption = 'Alamat'
            Transparent = True
          end
          object lblContactPerson: TLabel
            Left = 8
            Top = 46
            Width = 73
            Height = 13
            Caption = 'Contact Person'
            Transparent = True
          end
          object lblIdCity: TLabel
            Left = 8
            Top = 82
            Width = 22
            Height = 13
            Caption = 'Kota'
            Transparent = True
          end
          object lblIdWarehouse: TLabel
            Left = 8
            Top = 10
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblWarehouseName: TLabel
            Left = 8
            Top = 28
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object dbchkInactive: TcxDBCheckBox
            Left = 183
            Top = 8
            Caption = 'Non Aktif'
            DataBinding.DataField = 'FlagInactive'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 0
            Transparent = True
            Width = 89
          end
          object dbeAddress: TcxDBTextEdit
            Left = 96
            Top = 62
            BeepOnEnter = False
            DataBinding.DataField = 'Address'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 233
          end
          object dbeContactPerson: TcxDBTextEdit
            Left = 96
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'ContactPerson'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 233
          end
          object dbeWarehouseId: TcxDBTextEdit
            Left = 96
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 81
          end
          object dbeWarehouseName: TcxDBTextEdit
            Left = 96
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseName'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 233
          end
          object dblcCityId: TcxDBExtLookupComboBox
            Left = 96
            Top = 80
            BeepOnEnter = False
            DataBinding.DataField = 'CityId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            TabOrder = 5
            Width = 169
          end
          object dbmNotes: TcxDBMemo
            Left = 347
            Top = 8
            DataBinding.DataField = 'Memo'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Height = 93
            Width = 233
          end
        end
        object pnlDetail: TPanel
          Left = 0
          Top = 109
          Width = 726
          Height = 303
          Align = alClient
          TabOrder = 1
          object cgWarehouseRack: TcxGrid
            Left = 1
            Top = 1
            Width = 724
            Height = 301
            Align = alClient
            TabOrder = 0
            object cgvWarehouseRack: TcxGridDBTableView
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
              DataController.DataSource = dsPrevWarehouseRack
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvWarehouseRackrackcode: TcxGridDBColumn
                Caption = 'Kode Rak'
                DataBinding.FieldName = 'rackcode'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 72
              end
              object cgvWarehouseRackrackname: TcxGridDBColumn
                Caption = 'Nama Rak'
                DataBinding.FieldName = 'rackname'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 93
              end
              object cgvWarehouseRackracklocation1: TcxGridDBColumn
                Caption = 'Lokasi 1'
                DataBinding.FieldName = 'racklocation1'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 129
              end
              object cgvWarehouseRackracklocation2: TcxGridDBColumn
                Caption = 'Lokasi 2'
                DataBinding.FieldName = 'racklocation2'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 130
              end
              object cgvWarehouseRackracklocation3: TcxGridDBColumn
                Caption = 'Lokasi 3'
                DataBinding.FieldName = 'racklocation3'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 131
              end
              object cgvWarehouseRackracklocation4: TcxGridDBColumn
                Caption = 'Lokasi 4'
                DataBinding.FieldName = 'racklocation4'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 136
              end
              object cgvWarehouseRackracklocation5: TcxGridDBColumn
                Caption = 'Lokasi 5'
                DataBinding.FieldName = 'racklocation5'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 130
              end
              object cgvWarehouseRackracklocation6: TcxGridDBColumn
                Caption = 'Lokasi 6'
                DataBinding.FieldName = 'racklocation6'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 137
              end
              object cgvWarehouseRackracklocation7: TcxGridDBColumn
                Caption = 'Lokasi 7'
                DataBinding.FieldName = 'racklocation7'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 145
              end
              object cgvWarehouseRackwarehouseid: TcxGridDBColumn
                DataBinding.FieldName = 'warehouseid'
                Visible = False
              end
            end
            object cgWarehouseRackLevel1: TcxGridLevel
              GridView = cgvWarehouseRack
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
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
          object cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'WarehouseId'
            Width = 64
          end
          object cgvPrevDisplayWarehouseName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'WarehouseName'
          end
          object cgvPrevDisplayContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'ContactPerson'
            Visible = False
          end
          object cgvPrevDisplayAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'Address'
            Visible = False
          end
          object cgvPrevDisplayCityId: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Visible = False
            Width = 60
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
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
    DataSet = dmGeneral.qryWarehouse
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryWarehouseRack: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from WarehouseRack'
      'where warehouseId = :WarehouseId')
    MasterSource = dsDefault
    BeforeInsert = qryWarehouseRackBeforeInsert
    OnNewRecord = qryWarehouseRackNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end>
  end
  object dsPrevWarehouseRack: TDataSource
    DataSet = qryWarehouseRack
    Left = 168
    Top = 144
  end
end
