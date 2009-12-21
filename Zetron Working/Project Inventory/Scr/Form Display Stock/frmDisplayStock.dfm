inherited fmDisplayStock: TfmDisplayStock
  Caption = 'Display Stock'
  ClientHeight = 517
  ClientWidth = 786
  ExplicitWidth = 794
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 786
    ExplicitWidth = 786
    object bvlSpacer12: TBevel [1]
      Left = 457
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 679
      ExplicitTop = -4
    end
    object lblWarehouse: TLabel [2]
      Left = 216
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Gudang'
      Transparent = True
    end
    object lblCategory: TLabel [3]
      Left = 216
      Top = 27
      Width = 40
      Height = 13
      Caption = 'Kategori'
      Transparent = True
    end
    object bvlSpacer13: TBevel [4]
      Left = 515
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 531
      ExplicitTop = -4
    end
    object Bevel1: TBevel [5]
      Left = 203
      Top = 1
      Width = 254
      Height = 48
      Align = alLeft
      Shape = bsFrame
    end
    object lcbWarehouse: TcxExtLookupComboBox
      Left = 262
      Top = 6
      Properties.View = cgvPrevWarehouse
      Properties.KeyFieldNames = 'warehouseid'
      Properties.ListFieldItem = cgvPrevWarehousewarehousename
      TabOrder = 4
      Width = 179
    end
    object btnOk: TcxButton
      Left = 467
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actShow
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object ccbCategoryId: TcxCheckComboBox
      Left = 262
      Top = 24
      BeepOnEnter = False
      Properties.DropDownSizeable = True
      Properties.EditValueFormat = cvfCaptions
      Properties.Items = <>
      TabOrder = 6
      Width = 179
    end
    object pnlProgressBar: TPanel
      Left = 525
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 7
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object pnlLegend: TPanel [1]
    Left = 0
    Top = 486
    Width = 786
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
    object lblMinStock: TLabel
      Left = 32
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Minimum Stok'
      Transparent = True
    end
  end
  object pcStockOnHand: TcxPageControl [2]
    Left = 0
    Top = 50
    Width = 786
    Height = 436
    ActivePage = tsStock
    Align = alClient
    TabOrder = 2
    OnChange = pcStockOnHandChange
    ClientRectBottom = 436
    ClientRectRight = 786
    ClientRectTop = 24
    object tsStock: TcxTabSheet
      Caption = 'Stok'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgStockOnHandHd: TcxGrid
        Left = 0
        Top = 0
        Width = 786
        Height = 412
        Align = alClient
        TabOrder = 0
        object cgvPrevStockOnHandHd: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevStockOnHandHd
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'EndQty'
              Column = cgvPrevStockOnHandHdEndQty
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'EndValue'
              Column = cgvPrevStockOnHandHdEndValue
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.;-#,##0.'
              Kind = skSum
              FieldName = 'EndQty'
              Column = cgvPrevStockOnHandHdEndQty
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'EndValue'
              Column = cgvPrevStockOnHandHdEndValue
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvPrevStockOnHandHdStylesGetContentStyle
          Bands = <
            item
              Caption = 'Barang'
              FixedKind = fkLeft
              Width = 424
            end
            item
              Caption = 'Qty'
              Width = 78
            end
            item
              Caption = 'Nilai'
              Visible = False
            end
            item
              Caption = 'Info'
              Width = 215
            end
            item
              Caption = 'Price List'
              Visible = False
            end>
          object cgvPrevStockOnHandHdWarehouseId: TcxGridDBBandedColumn
            Caption = 'Kode Gudang'
            DataBinding.FieldName = 'WarehouseId'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdWarehouseName: TcxGridDBBandedColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'WarehouseName'
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdItemIdExternal: TcxGridDBBandedColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ItemIdExternal'
            Width = 124
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdItemName: TcxGridDBBandedColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ItemName'
            SortIndex = 0
            SortOrder = soAscending
            Width = 209
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdItemChineseName: TcxGridDBBandedColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'ItemNameChinese'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQtyAwal: TcxGridDBBandedColumn
            Caption = 'Qty Awal'
            DataBinding.FieldName = 'QtyAwal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQtyMasuk: TcxGridDBBandedColumn
            Caption = 'Qty Masuk'
            DataBinding.FieldName = 'QtyMasuk'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQtyKeluar: TcxGridDBBandedColumn
            Caption = 'Qty Keluar'
            DataBinding.FieldName = 'QtyKeluar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdEndQty: TcxGridDBBandedColumn
            Caption = 'Qty Akhir'
            DataBinding.FieldName = 'EndQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Styles.Content = dmGlobal.stGreenLight
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdValueAwal: TcxGridDBBandedColumn
            Caption = 'Nilai Awal'
            DataBinding.FieldName = 'ValueAwal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdValueMasuk: TcxGridDBBandedColumn
            Caption = 'Nilai Masuk'
            DataBinding.FieldName = 'ValueMasuk'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdValueKeluar: TcxGridDBBandedColumn
            Caption = 'Nilai Keluar'
            DataBinding.FieldName = 'ValueKeluar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdEndValue: TcxGridDBBandedColumn
            Caption = 'Nilai Akhir'
            DataBinding.FieldName = 'EndValue'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPriceAVG: TcxGridDBBandedColumn
            Caption = 'Harga (AVG)'
            DataBinding.FieldName = 'PriceAVG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdItemCategoryName: TcxGridDBBandedColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'ItemCategoryName'
            Visible = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdType: TcxGridDBBandedColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'Type'
            Visible = False
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure: TcxGridDBBandedColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'UnitMeasure'
            Visible = False
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdMinStockQty: TcxGridDBBandedColumn
            Caption = 'Min Stock'
            DataBinding.FieldName = 'MinStockQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdReorderQty: TcxGridDBBandedColumn
            Caption = 'Reorder Qty'
            DataBinding.FieldName = 'ReorderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQty1: TcxGridDBBandedColumn
            Caption = 'Qty 1'
            DataBinding.FieldName = 'Qty1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure1: TcxGridDBBandedColumn
            Caption = 'Satuan 1'
            DataBinding.FieldName = 'UnitMeasure1'
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPrice1: TcxGridDBBandedColumn
            Caption = 'Harga 1'
            DataBinding.FieldName = 'Price1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQty2: TcxGridDBBandedColumn
            Caption = 'Qty 2'
            DataBinding.FieldName = 'Qty2'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure2: TcxGridDBBandedColumn
            Caption = 'Satuan 2'
            DataBinding.FieldName = 'UnitMeasure2'
            Visible = False
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPrice2: TcxGridDBBandedColumn
            Caption = 'Harga 2'
            DataBinding.FieldName = 'Price2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQty3: TcxGridDBBandedColumn
            Caption = 'Qty 3'
            DataBinding.FieldName = 'Qty3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure3: TcxGridDBBandedColumn
            Caption = 'Satuan 3'
            DataBinding.FieldName = 'UnitMeasure3'
            Visible = False
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPrice3: TcxGridDBBandedColumn
            Caption = 'Harga 3'
            DataBinding.FieldName = 'Price3'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQty4: TcxGridDBBandedColumn
            Caption = 'Qty 4'
            DataBinding.FieldName = 'Qty4'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure4: TcxGridDBBandedColumn
            Caption = 'Satuan 4'
            DataBinding.FieldName = 'UnitMeasure4'
            Visible = False
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPrice4: TcxGridDBBandedColumn
            Caption = 'Harga 4'
            DataBinding.FieldName = 'Price4'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdQty5: TcxGridDBBandedColumn
            Caption = 'Qty 5'
            DataBinding.FieldName = 'Qty5'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdUnitMeasure5: TcxGridDBBandedColumn
            Caption = 'Satuan 5'
            DataBinding.FieldName = 'UnitMeasure5'
            Visible = False
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdPrice5: TcxGridDBBandedColumn
            Caption = 'Harga 5'
            DataBinding.FieldName = 'Price5'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Position.BandIndex = 4
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdNamaRak: TcxGridDBBandedColumn
            Caption = 'Nama Rak'
            DataBinding.FieldName = 'rakname'
            Visible = False
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi1: TcxGridDBBandedColumn
            Caption = 'Lokasi 1'
            DataBinding.FieldName = 'lokasi1'
            Visible = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi2: TcxGridDBBandedColumn
            Caption = 'Lokasi 2'
            DataBinding.FieldName = 'lokasi2'
            Visible = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi3: TcxGridDBBandedColumn
            Caption = 'Lokasi 3'
            DataBinding.FieldName = 'lokasi3'
            Visible = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi4: TcxGridDBBandedColumn
            Caption = 'Lokasi 4'
            DataBinding.FieldName = 'lokasi4'
            Visible = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi5: TcxGridDBBandedColumn
            Caption = 'Lokasi 5'
            DataBinding.FieldName = 'lokasi5'
            Visible = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi6: TcxGridDBBandedColumn
            Caption = 'Lokasi 6'
            DataBinding.FieldName = 'lokasi6'
            Visible = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cgvPrevStockOnHandHdLokasi7: TcxGridDBBandedColumn
            Caption = 'Lokasi 7'
            DataBinding.FieldName = 'lokasi7'
            Visible = False
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cgvPrevWarehouse: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevWarehouse
          DataController.KeyFieldNames = 'warehouseid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevWarehousewarehouseid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'warehouseid'
            Visible = False
          end
          object cgvPrevWarehousewarehousename: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'warehousename'
          end
        end
        object cgvPrevWarehouseRack: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevWarehouseRackitemid: TcxGridDBColumn
            DataBinding.FieldName = 'itemid'
            Visible = False
          end
          object cgvPrevWarehouseRackrackcode: TcxGridDBColumn
            DataBinding.FieldName = 'rackcode'
            Visible = False
          end
          object cgvPrevWarehouseRackrackcode_1: TcxGridDBColumn
            DataBinding.FieldName = 'rackcode_1'
            Visible = False
          end
          object cgvPrevWarehouseRackrackname: TcxGridDBColumn
            DataBinding.FieldName = 'rackname'
            Visible = False
          end
          object cgvPrevWarehouseRackwarehouseid: TcxGridDBColumn
            DataBinding.FieldName = 'warehouseid'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation1: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation1'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation2: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation2'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation3: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation3'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation4: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation4'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation5: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation5'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation6: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation6'
            Visible = False
          end
          object cgvPrevWarehouseRackracklocation7: TcxGridDBColumn
            DataBinding.FieldName = 'racklocation7'
            Visible = False
          end
        end
        object cgStockOnHandHdLevel1: TcxGridLevel
          GridView = cgvPrevStockOnHandHd
        end
      end
    end
    object tsStockCard: TcxTabSheet
      Caption = 'Kartu Stok'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgPrevStockCard: TcxGrid
        Left = 0
        Top = 33
        Width = 786
        Height = 379
        Align = alClient
        TabOrder = 0
        object cgvPrevStockCard: TcxGridBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.;-#,##0.'
              Kind = skSum
              Column = cgvPrevStockCardQtyIn
            end
            item
              Format = '#,##0.;-#,##0.'
              Kind = skSum
              Column = cgvPrevStockCardQtyOut
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevStockCardValueIn
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevStockCardValueOut
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              FixedKind = fkLeft
            end
            item
              Caption = 'Qty'
              Styles.Content = dmGlobal.stRedLight
            end
            item
              Caption = 'Nilai'
              Styles.Content = dmGlobal.stPurpleLight
            end>
          object cgvPrevStockCardDate: TcxGridBandedColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardTransactionTypeName: TcxGridBandedColumn
            Caption = 'Transaksi'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardReferenceId: TcxGridBandedColumn
            Caption = 'Ref'
            Visible = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCardReferenceIdExternal: TcxGridBandedColumn
            Caption = 'Ref Ext'
            Visible = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockCardReferenceName: TcxGridBandedColumn
            Caption = 'Nama'
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockCardItemText: TcxGridBandedColumn
            Caption = 'Keterangan'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyIn: TcxGridBandedColumn
            Caption = 'Masuk'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyOut: TcxGridBandedColumn
            Caption = 'Keluar'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyBalance: TcxGridBandedColumn
            Caption = 'Saldo'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueIn: TcxGridBandedColumn
            Caption = 'Masuk'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueOut: TcxGridBandedColumn
            Caption = 'Keluar'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueBalance: TcxGridBandedColumn
            Caption = 'Saldo'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueAVG: TcxGridBandedColumn
            Caption = 'AVG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Sorting = False
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cgPrevStockCardLevel1: TcxGridLevel
          GridView = cgvPrevStockCard
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 33
        Align = alTop
        Color = 15790320
        TabOrder = 1
        DesignSize = (
          786
          33)
        object lblPeriod: TLabel
          Left = 8
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Periode'
          Transparent = True
        end
        object Label1: TLabel
          Left = 215
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object cbMonth: TcxComboBox
          Left = 48
          Top = 6
          BeepOnEnter = False
          Properties.DropDownRows = 12
          Style.Color = clWindow
          TabOrder = 0
          Width = 89
        end
        object cbYear: TcxComboBox
          Left = 136
          Top = 6
          BeepOnEnter = False
          Style.Color = clWindow
          TabOrder = 1
          Width = 65
        end
        object dbeItemName: TcxDBTextEdit
          Left = 249
          Top = 6
          Anchors = [akLeft, akTop, akRight]
          BeepOnEnter = False
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsPrevStockOnHandHd
          TabOrder = 2
          Width = 533
        end
      end
    end
    object tsInfo: TcxTabSheet
      Caption = 'Info Barang'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgStockOnHandDt: TcxGrid
        Left = 0
        Top = 33
        Width = 786
        Height = 379
        Align = alClient
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        OnActiveTabChanged = cgStockOnHandDtActiveTabChanged
        object cgvPrevStockOnHandValue: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          DataController.DataSource = dsPrevStockOnHandValue
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevStockOnHandValueWarehouseId: TcxGridDBColumn
            Caption = 'Kode Gudang'
            DataBinding.FieldName = 'WarehouseId'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevStockOnHandValueItemId: TcxGridDBColumn
            Caption = 'Kode Item'
            DataBinding.FieldName = 'ItemId'
            Visible = False
            Options.Editing = False
          end
          object cgvPrevStockOnHandValueItem: TcxGridDBColumn
            DataBinding.FieldName = 'Item'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevStockOnHandValueDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.CellMerging = True
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevStockOnHandValueQty: TcxGridDBColumn
            Caption = ' Qty'
            DataBinding.FieldName = 'Qty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevStockOnHandValuePrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'Price'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
          end
          object cgvPrevStockOnHandValueValue: TcxGridDBColumn
            Caption = 'Nilai'
            DataBinding.FieldName = 'Value'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
          end
        end
        object cgvPrevPurchasePrice: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPurchasePrice
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevPurchasePricevendorid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vendorid'
          end
          object cgvPrevPurchasePricevendorname: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorname'
          end
          object cgvPrevPurchasePriceprice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevPurchasePricediscitem: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'discitem'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevPurchasePricediscitemprice: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'discitemprice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevPurchasePricelastpi: TcxGridDBColumn
            Caption = 'Nota Terakhir'
            DataBinding.FieldName = 'lastpi'
          end
          object cgvPrevPurchasePricevendorpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota External'
            DataBinding.FieldName = 'vendorpurchaseinvoiceid'
          end
          object cgvPrevPurchasePricepurchaseinvoicedate: TcxGridDBColumn
            Caption = 'Tgl Nota'
            DataBinding.FieldName = 'purchaseinvoicedate'
            SortIndex = 0
            SortOrder = soDescending
          end
          object cgvPrevPurchasePriceqty: TcxGridDBColumn
            Caption = 'Qty Nota'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevPurchasePriceItemText: TcxGridDBColumn
            Caption = 'Memo Barang'
            DataBinding.FieldName = 'itemtext'
          end
        end
        object cgvPrevSalePrice: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSalePrice
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevSalePricecustomerid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'customerid'
          end
          object cgvPrevSalePricecustomername: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customername'
          end
          object cgvPrevSalePriceprice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevSalePricediscitem: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'discitem'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevSalePricediscitemprice: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'discitemprice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevSalePricelastsi: TcxGridDBColumn
            Caption = 'Nota Terakhir'
            DataBinding.FieldName = 'lastsi'
          end
          object cgvPrevSalePricesalesinvoiceidinternal: TcxGridDBColumn
            Caption = 'Nota Internal'
            DataBinding.FieldName = 'salesinvoiceidinternal'
          end
          object cgvPrevSalePricesalesinvoicedate: TcxGridDBColumn
            Caption = 'Tgl Nota'
            DataBinding.FieldName = 'salesinvoicedate'
            SortIndex = 0
            SortOrder = soDescending
          end
          object cgvPrevSalePriceqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvPrevSalePriceItemText: TcxGridDBColumn
            Caption = 'Memo Barang'
            DataBinding.FieldName = 'itemtext'
          end
        end
        object cgvPrevStockExpired: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevStockExpired
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevStockExpiredItemId: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'ItemId'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevStockExpiredWarehouseId: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'WarehouseId'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevStockExpiredExpiredDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'ExpiredDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevStockExpiredQty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
        end
        object cgvPrevItemImage: TcxGridDBCardView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevItemImage
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          LayoutDirection = ldVertical
          OptionsView.CardWidth = 300
          OptionsView.CellAutoHeight = True
          object cgvPrevItemImageitemimage: TcxGridDBCardViewRow
            Caption = 'Gambar'
            DataBinding.FieldName = 'itemimage'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
        end
        object cgStockOnHandDtLevel1: TcxGridLevel
          Caption = 'Nilai'
          GridView = cgvPrevStockOnHandValue
        end
        object cgStockOnHandDtLevel2: TcxGridLevel
          Caption = 'Pembelian'
          GridView = cgvPrevPurchasePrice
        end
        object cgStockOnHandDtLevel3: TcxGridLevel
          Caption = 'Penjualan'
          GridView = cgvPrevSalePrice
        end
        object cgStockOnHandDtLevel4: TcxGridLevel
          Caption = 'Expired'
          GridView = cgvPrevStockExpired
        end
        object cgStockOnHandDtLevel5: TcxGridLevel
          Caption = 'Gambar'
          GridView = cgvPrevItemImage
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 33
        Align = alTop
        Color = 15790320
        TabOrder = 1
        DesignSize = (
          786
          33)
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object dbeItemName2: TcxDBTextEdit
          Left = 47
          Top = 6
          Anchors = [akLeft, akTop, akRight]
          BeepOnEnter = False
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsPrevStockOnHandHd
          TabOrder = 0
          Width = 735
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object actShow: TAction
      Caption = 'Show'
      ImageIndex = 0
      OnExecute = actShowExecute
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 448
    Top = 72
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsPrevStockOnHandHd: TDataSource
    DataSet = qryPrevStockOnHandHd
    Left = 200
    Top = 208
  end
  object dsPrevStockOnHandValue: TDataSource
    DataSet = qryPrevStockOnHandValue
    Left = 360
    Top = 144
  end
  object dsStockCard: TDataSource
    DataSet = qryPrevStockCard
    Left = 280
    Top = 144
  end
  object dsPrevWarehouse: TDataSource
    DataSet = qryPrevWarehouse
    Left = 200
    Top = 144
  end
  object dsPrevItemCategory: TDataSource
    DataSet = qryPrevItemCategory
    Left = 200
    Top = 176
  end
  object dsPrevPurchasePrice: TDataSource
    DataSet = qryPrevPurchasePrice
    Left = 360
    Top = 208
  end
  object dsPrevSalePrice: TDataSource
    DataSet = qryPrevSalePrice
    Left = 360
    Top = 240
  end
  object dsPrevStockExpired: TDataSource
    DataSet = qryPrevStockExpired
    Left = 360
    Top = 177
  end
  object dsPrevItemImage: TDataSource
    DataSet = qryPrevItemImage
    Left = 360
    Top = 272
  end
  object qryPrevStockOnHandHd: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from vwStockOnHand(:WarehouseId)')
    Left = 168
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end>
  end
  object qryPrevStockOnHandValue: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*,  (a.Price * a.Qty) as Value'
      'from StockOnHandValue a'
      'where a.WarehouseId like :WarehouseId'
      'and a.ItemId = :ItemId'
      'and a.Qty <> 0')
    Left = 328
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevStockCard: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast(:TransactionDate as Date) as TransactionDate,'
      '  '#39'Saldo Awal'#39' as TransactionTypeName,'
      '  '#39' '#39' as ReferenceId,'
      '  '#39' '#39' as ReferenceIdExternal,'
      '  '#39' '#39' as ReferenceName,'
      '  '#39' '#39' as ItemText,'
      
        '  fnGetItemOpeningBalanceQty(:ItemId, :WarehouseId, :Year, :Mont' +
        'h) as Qty,'
      
        '  fnGetItemOpeningBalanceVal(:ItemId, :WarehouseId, :Year, :Mont' +
        'h) as Amount,'
      '  '#39'0'#39' as OrderNo,'
      '  '#39' '#39' as TransactionTypeId,'
      '  Current_TimeStamp as SystemStamp'
      ''
      'union all'
      ''
      'select'
      '  a.TransactionDate,'
      '  b.TransactionTypeName,'
      '  a.ReferenceId,'
      '  case '
      '    when a.TransactionTypeId = '#39'TY001'#39' then'
      '      (select z.vendorpurchaseinvoiceid from PurchaseInvoiceHd z'
      '      where z.PurchaseInvoiceId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY007'#39' then'
      '      (select z.vendorpurchasereturnid from PurchaseReturnHd z'
      '      where z.PurchaseReturnId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY002'#39'then'
      '      (select z.salesinvoiceidinternal from SalesInvoiceHd z'
      '      where z.SalesInvoiceId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY008'#39' then'
      '      (select z.salesreturnidinternal from SalesReturnHd z'
      '      where z.SalesReturnId = a.ReferenceId)'
      '    else a.ReferenceId'
      '  end as ReferenceIdExternal,'
      '  case'
      '    when a.TransactionTypeId = '#39'TY001'#39' then'
      '      (select x.VendorName from PurchaseInvoiceHd z'
      '      left join Vendor x on z.VendorId = x.VendorId'
      '      where z.PurchaseInvoiceId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY007'#39' then'
      '      (select x.VendorName from PurchaseReturnHd z'
      '      left join Vendor x on z.VendorId = x.VendorId'
      '      where z.PurchaseReturnId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY002'#39'then'
      '      (select x.CustomerName from SalesInvoiceHd z'
      '      left join Customer x on z.CustomerId = x.CustomerId'
      '      where z.SalesInvoiceId = a.ReferenceId)'
      '    when a.TransactionTypeId = '#39'TY008'#39' then'
      '      (select x.CustomerName from SalesReturnHd z'
      '      left join Customer x on z.CustomerId = x.CustomerId'
      '      where z.SalesReturnId = a.ReferenceId)'
      '  end as ReferenceName,'
      '  case'
      '    when a.TransactionTypeId = '#39'TY001'#39' then'
      '      (select z.ItemText from PurchaseInvoiceDt z'
      '      where z.PurchaseInvoiceId = a.ReferenceId and z.No = a.No)'
      '    when a.TransactionTypeId = '#39'TY007'#39' then'
      '      (select z.ItemText from PurchaseReturnDt z'
      '      where z.PurchaseReturnId = a.ReferenceId and z.No = a.No)'
      '    when a.TransactionTypeId = '#39'TY002'#39'then'
      '      (select z.ItemText from SalesInvoiceDt z'
      '      where z.SalesInvoiceId = a.ReferenceId and z.No = a.No)'
      '    when a.TransactionTypeId = '#39'TY008'#39' then'
      '      (select z.ItemText from SalesReturnDt z'
      '      where z.SalesReturnId = a.ReferenceId and z.No = a.No)'
      '    else'
      '      (select z.ItemText from OtherTransactionDt z'
      
        '      where z.OtherTransactionId = a.ReferenceId and z.No = a.No' +
        ')'
      '  end as ItemText,'
      '  case'
      '    when b.StatusTransaction = '#39'0'#39' then a.Qty'
      '    else a.Qty * -1'
      '  end as Qty,'
      '  case'
      '    when b.StatusTransaction = '#39'0'#39' then a.Qty * Price'
      '    else '
      '      (select sum(z.TotalCOGS) * -1 from TransactionDt z '
      '      where z.TransactionId = a.TransactionId)'
      '  end as Amount,'
      '  '#39'1'#39' as OrderNo,'
      '  a.TransactionTypeId as TransactionTypeId,'
      '  a.SystemStamp'
      'from Transaction a'
      
        'left join TransactionType b on a.TransactionTypeId = b.Transacti' +
        'onTypeId'
      'where a.WarehouseSource = :WarehouseId'
      'and a.ItemId = :ItemId'
      'and extract(year from a.TransactionDate) = :Year'
      'and extract(month from a.TransactionDate) = :Month'
      ''
      'order by OrderNo, TransactionDate, SystemStamp')
    Left = 248
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object qryPrevWarehouse: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast(WarehouseId as varchar(10)) as WarehouseId,'
      '  cast(WarehouseName as varchar(40)) as WarehouseName,'
      '  cast('#39'3'#39' as varchar(1)) as OrderNo'
      'from Warehouse'
      ''
      'union'
      ''
      'select'
      '  cast('#39'#'#39' as varchar(10)) as WarehouseId,'
      '  cast('#39'Total'#39' as varchar(40)) as WarehouseName,'
      '  cast('#39'2'#39' as varchar(1)) as OrderNo'
      'from Warehouse'
      ''
      'union'
      ''
      'select'
      '  cast('#39'%'#39' as varchar(10)) as WarehouseId,'
      '  cast('#39'Semua'#39' as varchar(40)) as WarehouseName,'
      '  cast('#39'1'#39' as varchar(1)) as OrderNo'
      'from Warehouse'
      ''
      'order by OrderNo')
    Left = 168
    Top = 144
  end
  object qryPrevItemCategory: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  ItemCategoryId, '
      '  ItemCategoryName,'
      '  cast('#39'2'#39' as varchar(1)) as OrderNo'
      'from ItemCategory'
      ''
      'union'
      ''
      'select'
      '  cast('#39'%'#39' as varchar(6)) as ItemCategoryId,'
      '  cast('#39'Semua'#39' as varchar(40)) as ItemCategoryName,'
      '  cast('#39'1'#39' as varchar(1)) as OrderNo'
      'from ItemCategory'
      ''
      'order by OrderNo, ItemCategoryName')
    Left = 168
    Top = 176
  end
  object qryPrevPurchasePrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.VendorId, b.VendorName,'
      
        '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastPI, c.VendorPurcha' +
        'seInvoiceId,'
      '  case'
      
        '    when not (c.PurchaseInvoiceDate is null) then c.PurchaseInvo' +
        'iceDate else a.DateModified'
      '  end as PurchaseInvoiceDate, '
      '  d.Qty, d.ItemText'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join PurchaseInvoiceHd c on a.LastPI = c.PurchaseInvoiceId'
      'left join PurchaseInvoiceDt d on (a.LastPI = d.PurchaseInvoiceId'
      '  and a.ItemId = d.ItemId and a.LastPINo = d.No)'
      'where a.VendorId like :VendorId'
      'and a.ItemId = :ItemId'
      'order by PurchaseInvoiceDate desc, a.LastPI desc, b.VendorName')
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevSalePrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.CustomerId, b.CustomerName,'
      
        '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastSI, c.SalesInvoice' +
        'IdInternal,'
      '  case'
      
        '    when not (c.SalesInvoiceDate is null) then c.SalesInvoiceDat' +
        'e else a.DateModified'
      '  end as SalesInvoiceDate, '
      '  d.Qty, d.ItemText'
      'from SalePrice a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'left join SalesInvoiceHd c on a.LastSI = c.SalesInvoiceId'
      'left join SalesInvoiceDt d on (a.LastSI = d.SalesInvoiceId'
      '  and a.ItemId = d.ItemId and a.LastSINo = d.No)'
      'where a.CustomerId like :CustomerId'
      'and a.ItemId = :ItemId'
      'order by SalesInvoiceDate desc, a.LastSI desc, b.CustomerName')
    Left = 328
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevStockExpired: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from StockExpired a'
      'where a.WarehouseId like :WarehouseId'
      'and a.ItemId = :ItemId'
      'and a.Qty <> 0')
    Left = 328
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryPrevItemImage: TUniQuery
    Connection = dmGlobal.conImage
    SQL.Strings = (
      'select *'
      'from ItemImage a'
      'where a.ItemId = :ItemId'
      'order by a.no')
    Left = 328
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
end
