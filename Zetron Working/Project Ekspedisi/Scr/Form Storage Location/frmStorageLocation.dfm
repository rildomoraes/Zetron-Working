inherited fmStorageLocation: TfmStorageLocation
  Caption = 'Lokasi'
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
          Width = 31
          Height = 13
          Caption = 'Jenis *'
          Transparent = True
        end
        object dbeStorageLocationCode: TcxDBTextEdit
          Left = 64
          Top = 3
          DataBinding.DataField = 'StorageLocationCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 153
        end
        object dbeStorageLocationName: TcxDBTextEdit
          Left = 64
          Top = 21
          DataBinding.DataField = 'StorageLocationName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 153
        end
        object dbeFlagShipStorage: TcxDBImageComboBox
          Left = 64
          Top = 39
          DataBinding.DataField = 'FlagShipStorage'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Gudang'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Kapal'
              Value = '1'
            end>
          TabOrder = 2
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
          object cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn
            DataBinding.FieldName = 'StorageLocationId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StorageLocationCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'StorageLocationCode'
          end
          object cxGrid1DBTableView1StorageLocationName: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'StorageLocationName'
          end
          object cxGrid1DBTableView1FlagShipStorage: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'FlagShipStorage'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Gudang'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Kapal'
                Value = '1'
              end>
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 224
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 296
    Top = 224
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 328
    Top = 224
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryStorageLocation
    Left = 264
    Top = 256
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 360
    Top = 224
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 296
    Top = 256
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
