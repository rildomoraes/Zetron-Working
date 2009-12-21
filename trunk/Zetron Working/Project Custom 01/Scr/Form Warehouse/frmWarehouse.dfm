inherited fmWarehouse: TfmWarehouse
  Caption = 'Gudang'
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
        object lblIdWarehouse: TLabel
          Left = 8
          Top = 8
          Width = 66
          Height = 13
          Caption = 'Kode Gudang'
          Transparent = True
        end
        object lblWarehouseName: TLabel
          Left = 8
          Top = 26
          Width = 69
          Height = 13
          Caption = 'Nama Gudang'
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
          Top = 98
          Width = 71
          Height = 13
          Caption = 'Status Gudang'
          Transparent = True
        end
        object dbeIdWarehouse: TcxDBTextEdit
          Left = 104
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdWarehouse'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 97
        end
        object dbeWarehouseName: TcxDBTextEdit
          Left = 104
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcWarehouseName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 161
        end
        object dbeContactPerson: TcxDBTextEdit
          Left = 104
          Top = 44
          BeepOnEnter = False
          DataBinding.DataField = 'vcContactPerson'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 161
        end
        object dbeAddress: TcxDBTextEdit
          Left = 104
          Top = 62
          BeepOnEnter = False
          DataBinding.DataField = 'vcAddress'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 233
        end
        object dblcIdCity: TcxDBExtLookupComboBox
          Left = 104
          Top = 80
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdCity'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 185
        end
        object dbcbFlagCouple: TcxDBCheckBox
          Left = 104
          Top = 211
          Caption = 'Gudang ini dapat melakukan proses couple'
          DataBinding.DataField = 'chFlagCouple'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 7
          Transparent = True
          Width = 249
        end
        object dbchFlagSale: TcxDBCheckBox
          Left = 104
          Top = 233
          Caption = 'Penjualan dapat dilakukan dari stok gudang ini'
          DataBinding.DataField = 'chFlagSale'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 8
          Transparent = True
          Width = 249
        end
        object dbmNotes: TcxDBMemo
          Left = 104
          Top = 116
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'txNotes'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Height = 91
          Width = 249
        end
        object dbeStatusWarehouse: TcxDBImageComboBox
          Left = 104
          Top = 98
          BeepOnEnter = False
          DataBinding.DataField = 'StatusWarehouse'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Normal'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Toko'
              Value = '1'
            end
            item
              Description = 'Virtual'
              Value = '2'
            end>
          TabOrder = 5
          Width = 121
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
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 109
        Align = alClient
        TabOrder = 0
        object cgvWarehouse: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cgvWarehouseStylesGetContentStyle
          object cgvWarehousevcIdWarehouse: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdWarehouse'
            Width = 99
          end
          object cgvWarehousevcWarehouseName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcWarehouseName'
          end
          object cgvWarehousevcContactPerson: TcxGridDBColumn
            Caption = 'Contact Person'
            DataBinding.FieldName = 'vcContactPerson'
          end
          object cgvWarehousevcAddress: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'vcAddress'
          end
          object cgvWarehousevcIdCountry: TcxGridDBColumn
            Caption = 'Negara'
            DataBinding.FieldName = 'vcIdCountry'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Width = 79
          end
          object cgvWarehousevcIdProvince: TcxGridDBColumn
            Caption = 'Provinsi'
            DataBinding.FieldName = 'vcIdProvince'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Width = 85
          end
          object cgvWarehousevcIdCity: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'vcIdCity'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Width = 60
          end
          object cgvWarehousevcIPAddress: TcxGridDBColumn
            Caption = 'IP Address'
            DataBinding.FieldName = 'vcIPAddress'
            Visible = False
            Width = 82
          end
          object cgvWarehousechFlagFix: TcxGridDBColumn
            Caption = 'Fixed'
            DataBinding.FieldName = 'chFlagFix'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvWarehouse
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 109
        Width = 300
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Image1: TImage
          Left = 8
          Top = 6
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
            F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
            00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
            FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
            F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
            FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
            F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
            FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
            F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
            FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
            F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
            FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
            F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
            FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
            F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
            FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
            F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
            FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
            F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
            FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
            F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
            FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
            F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
            FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
            F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
            FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
            F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
            FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000}
          Transparent = True
        end
        object lblFixed: TLabel
          Left = 32
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Fixed'
          Transparent = True
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qryWarehouse
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
