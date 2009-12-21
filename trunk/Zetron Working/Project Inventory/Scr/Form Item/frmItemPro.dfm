inherited fmItemPro: TfmItemPro
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 372
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
        inherited pcItem: TcxPageControl
          inherited tsGeneral: TcxTabSheet
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          inherited tsOptions: TcxTabSheet
            object dbchFlagPrintBarcode: TcxDBCheckBox
              Left = 5
              Top = 60
              Caption = 'Dapat cetak kode barcode'
              DataBinding.DataField = 'FlagPrintBarcode'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 2
              Transparent = True
              Width = 154
            end
            object dbchFlagPrintPrice: TcxDBCheckBox
              Left = 5
              Top = 83
              Caption = 'Tercetak dalam price list '
              DataBinding.DataField = 'FlagPrintPrice'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 3
              Transparent = True
              Width = 154
            end
            object dbchFlagTerdaftar: TcxDBCheckBox
              Left = 5
              Top = 106
              Caption = 'Telah terdaftar'
              DataBinding.DataField = 'flagterdaftar'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 4
              Transparent = True
              Width = 154
            end
            object dbchFlagBahasaIndonesia: TcxDBCheckBox
              Left = 5
              Top = 129
              Caption = 'Memiliki teks indonesia'
              DataBinding.DataField = 'flagbahasaindonesia'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 5
              Transparent = True
              Width = 154
            end
          end
          object tsImage: TcxTabSheet
            Caption = 'Gambar'
            ImageIndex = 3
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlItemImageOption: TPanel
              Left = 0
              Top = 0
              Width = 651
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object edtImageResize: TcxSpinEdit
                Left = 8
                Top = 2
                BeepOnEnter = False
                Properties.Increment = 50.000000000000000000
                Properties.LargeIncrement = 100.000000000000000000
                Properties.SpinButtons.Position = sbpHorzLeftRight
                Properties.SpinButtons.ShowFastButtons = True
                TabOrder = 0
                Value = 500
                Width = 106
              end
              object chkImageResize: TcxCheckBox
                Left = 120
                Top = 4
                Caption = 'Resize Gambar'
                ParentColor = False
                Properties.NullStyle = nssInactive
                State = cbsChecked
                TabOrder = 1
                Transparent = True
                Width = 98
              end
            end
            object cgItemImage: TcxGrid
              Left = 0
              Top = 26
              Width = 651
              Height = 239
              Align = alClient
              TabOrder = 1
              object cgvItemImage: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsItemImage
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Navigator = True
                OptionsView.DataRowHeight = 150
                OptionsView.GroupByBox = False
                object cgvItemImageitemid: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'itemid'
                  Visible = False
                  Options.Filtering = False
                end
                object cgvItemImageno: TcxGridDBColumn
                  Caption = ' No'
                  DataBinding.FieldName = 'no'
                  Visible = False
                  Options.Filtering = False
                  Width = 35
                end
                object cgvItemImageitemimage: TcxGridDBColumn
                  Caption = 'Gambar'
                  DataBinding.FieldName = 'itemimage'
                  PropertiesClassName = 'TcxImageProperties'
                  Properties.GraphicClassName = 'TJPEGImage'
                  Properties.Stretch = True
                  Options.Filtering = False
                  Width = 299
                end
                object cgvItemImageitemimage2: TcxGridDBColumn
                  DataBinding.FieldName = 'itemimage'
                  PropertiesClassName = 'TcxBlobEditProperties'
                  Properties.BlobEditKind = bekPict
                  Properties.PictureGraphicClassName = 'TJPEGImage'
                  Options.Filtering = False
                  Width = 56
                  IsCaptionAssigned = True
                end
              end
              object cgItemImageLevel1: TcxGridLevel
                GridView = cgvItemImage
              end
            end
          end
          object tsItemRack: TcxTabSheet
            Caption = 'Lokasi Rak'
            ImageIndex = 7
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgItemRack: TcxGrid
              Left = 0
              Top = 0
              Width = 651
              Height = 265
              Align = alClient
              TabOrder = 0
              object cgvItemRack: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Delete.Hint = 'Hapus'
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Post.Hint = 'Simpan'
                NavigatorButtons.Cancel.Hint = 'Batal'
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsPrevItemRack
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvItemRackitemid: TcxGridDBColumn
                  DataBinding.FieldName = 'itemid'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvItemRackwarehouseid: TcxGridDBColumn
                  Caption = 'Gudang'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackwarehouseid
                end
                object cgvItemRackrackcode: TcxGridDBColumn
                  Caption = 'Kode Rak'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackrackname
                  Width = 98
                end
                object cgvItemRackName: TcxGridDBColumn
                  Caption = 'Nama Rak'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackrackname
                  Properties.ReadOnly = True
                  Width = 103
                end
                object cgvItemRacklokasi1: TcxGridDBColumn
                  Caption = 'Lokasi 1'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation1
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 130
                end
                object cgvItemRacklokasi2: TcxGridDBColumn
                  Caption = 'Lokasi 2'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation2
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 123
                end
                object cgvItemRacklokasi3: TcxGridDBColumn
                  Caption = 'Lokasi 3'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation3
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 128
                end
                object cgvItemRacklokasi4: TcxGridDBColumn
                  Caption = 'Lokasi 4'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation4
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 132
                end
                object cgvItemRacklokasi5: TcxGridDBColumn
                  Caption = 'Lokasi 5'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation5
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 118
                end
                object cgvItemRacklokasi6: TcxGridDBColumn
                  Caption = 'Lokasi 6'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation6
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 114
                end
                object cgvItemRacklokasi7: TcxGridDBColumn
                  Caption = 'Lokasi 7'
                  DataBinding.FieldName = 'rackcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevWarehouseRack
                  Properties.KeyFieldNames = 'rackcode'
                  Properties.ListFieldItem = cgvPrevWarehouseRackracklocation7
                  Properties.ReadOnly = True
                  Visible = False
                  Width = 138
                end
              end
              object cgvPrevWarehouseRack: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dmGeneral.dsPrevWarehouseRack
                DataController.KeyFieldNames = 'rackcode'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cgvPrevWarehouseRackrackcode: TcxGridDBColumn
                  Caption = 'Kode Rak'
                  DataBinding.FieldName = 'rackcode'
                end
                object cgvPrevWarehouseRackrackname: TcxGridDBColumn
                  Caption = 'Nama Rak'
                  DataBinding.FieldName = 'rackname'
                end
                object cgvPrevWarehouseRackwarehouseid: TcxGridDBColumn
                  Caption = 'Gudang'
                  DataBinding.FieldName = 'warehouseid'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevWarehouse
                  Properties.KeyFieldNames = 'WarehouseId'
                  Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
                  Visible = False
                end
                object cgvPrevWarehouseRackracklocation1: TcxGridDBColumn
                  Caption = 'Lokasi 1'
                  DataBinding.FieldName = 'racklocation1'
                end
                object cgvPrevWarehouseRackracklocation2: TcxGridDBColumn
                  Caption = 'Lokasi 2'
                  DataBinding.FieldName = 'racklocation2'
                end
                object cgvPrevWarehouseRackracklocation3: TcxGridDBColumn
                  Caption = 'Lokasi 3'
                  DataBinding.FieldName = 'racklocation3'
                end
                object cgvPrevWarehouseRackracklocation4: TcxGridDBColumn
                  Caption = 'Lokasi 4'
                  DataBinding.FieldName = 'racklocation4'
                end
                object cgvPrevWarehouseRackracklocation5: TcxGridDBColumn
                  Caption = 'Lokasi 5'
                  DataBinding.FieldName = 'racklocation5'
                end
                object cgvPrevWarehouseRackracklocation6: TcxGridDBColumn
                  Caption = 'Lokasi 6'
                  DataBinding.FieldName = 'racklocation6'
                end
                object cgvPrevWarehouseRackracklocation7: TcxGridDBColumn
                  Caption = 'Lokasi 7'
                  DataBinding.FieldName = 'racklocation7'
                end
              end
              object cgItemRackLevel1: TcxGridLevel
                GridView = cgvItemRack
              end
            end
          end
          object tsPrice: TcxTabSheet
            Caption = 'Harga Jual'
            ImageIndex = 2
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              660
              273)
            object lbl1: TLabel
              Left = 6
              Top = 108
              Width = 89
              Height = 13
              Caption = 'Level 1 / Price List'
              Transparent = True
            end
            object lblQty: TLabel
              Left = 111
              Top = 90
              Width = 16
              Height = 13
              Caption = 'Qty'
              Transparent = True
            end
            object lblUnitMeasure: TLabel
              Left = 254
              Top = 87
              Width = 34
              Height = 13
              Caption = 'Satuan'
              Transparent = True
            end
            object lblPrice: TLabel
              Left = 337
              Top = 88
              Width = 29
              Height = 13
              Caption = 'Harga'
              Transparent = True
            end
            object lbl2: TLabel
              Left = 6
              Top = 125
              Width = 35
              Height = 13
              Caption = 'Level 2'
              Transparent = True
            end
            object lbl3: TLabel
              Left = 6
              Top = 143
              Width = 35
              Height = 13
              Caption = 'Level 3'
              Transparent = True
            end
            object lbl4: TLabel
              Left = 6
              Top = 161
              Width = 35
              Height = 13
              Caption = 'Level 4'
              Transparent = True
            end
            object lbl5: TLabel
              Left = 6
              Top = 179
              Width = 35
              Height = 13
              Caption = 'Level 5'
              Transparent = True
            end
            object lblPriceList: TLabel
              Left = 6
              Top = 12
              Width = 95
              Height = 13
              Caption = 'Harga Jual Minimum'
              Transparent = True
            end
            object Label2: TLabel
              Left = 6
              Top = 89
              Width = 51
              Height = 13
              Caption = 'Harga Jual'
              Transparent = True
            end
            object Bevel1: TBevel
              Left = 5
              Top = 75
              Width = 640
              Height = 9
              Anchors = [akLeft, akTop, akRight]
              Shape = bsTopLine
              ExplicitWidth = 639
            end
            object Label3: TLabel
              Left = 111
              Top = 32
              Width = 425
              Height = 39
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                '* Harga jual minimum merupakan batas bawah harga penjualan. harg' +
                'a jual minimum dapat diset secara manual atau dapat langsung di ' +
                'set secara otomatis sesuai harga beli terakhir (Lihat Menu\Optio' +
                'n Global)'
              Transparent = True
              WordWrap = True
            end
            object Label5: TLabel
              Left = 171
              Top = 107
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label6: TLabel
              Left = 171
              Top = 125
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label7: TLabel
              Left = 171
              Top = 143
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label8: TLabel
              Left = 171
              Top = 161
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label9: TLabel
              Left = 171
              Top = 179
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object lbl6: TLabel
              Left = 6
              Top = 197
              Width = 35
              Height = 13
              Caption = 'Level 6'
              Transparent = True
            end
            object Label11: TLabel
              Left = 171
              Top = 197
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object lbl7: TLabel
              Left = 6
              Top = 215
              Width = 35
              Height = 13
              Caption = 'Level 7'
              Transparent = True
            end
            object Label13: TLabel
              Left = 171
              Top = 215
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label12: TLabel
              Left = 452
              Top = 86
              Width = 41
              Height = 13
              Caption = 'Disc 1 %'
              Transparent = True
            end
            object dbeMeasure1: TcxDBTextEdit
              Left = 254
              Top = 105
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure1'
              DataBinding.DataSource = dsPrice
              TabOrder = 3
              Width = 77
            end
            object dbePrice1: TcxDBCalcEdit
              Left = 337
              Top = 105
              BeepOnEnter = False
              DataBinding.DataField = 'price1'
              DataBinding.DataSource = dsPrice
              TabOrder = 4
              Width = 109
            end
            object dbeMeasure2: TcxDBTextEdit
              Left = 254
              Top = 123
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure2'
              DataBinding.DataSource = dsPrice
              TabOrder = 7
              Width = 77
            end
            object dbePrice2: TcxDBCalcEdit
              Left = 337
              Top = 123
              BeepOnEnter = False
              DataBinding.DataField = 'price2'
              DataBinding.DataSource = dsPrice
              TabOrder = 9
              Width = 109
            end
            object dbeMeasure3: TcxDBTextEdit
              Left = 254
              Top = 141
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure3'
              DataBinding.DataSource = dsPrice
              TabOrder = 13
              Width = 77
            end
            object dbePrice3: TcxDBCalcEdit
              Left = 337
              Top = 141
              BeepOnEnter = False
              DataBinding.DataField = 'price3'
              DataBinding.DataSource = dsPrice
              TabOrder = 14
              Width = 109
            end
            object dbeMeasure4: TcxDBTextEdit
              Left = 254
              Top = 159
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure4'
              DataBinding.DataSource = dsPrice
              TabOrder = 18
              Width = 77
            end
            object dbePrice4: TcxDBCalcEdit
              Left = 337
              Top = 159
              BeepOnEnter = False
              DataBinding.DataField = 'price4'
              DataBinding.DataSource = dsPrice
              TabOrder = 19
              Width = 109
            end
            object dbeMeasure5: TcxDBTextEdit
              Left = 254
              Top = 177
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure5'
              DataBinding.DataSource = dsPrice
              TabOrder = 23
              Width = 77
            end
            object dbePrice5: TcxDBCalcEdit
              Left = 337
              Top = 177
              BeepOnEnter = False
              DataBinding.DataField = 'price5'
              DataBinding.DataSource = dsPrice
              TabOrder = 24
              Width = 109
            end
            object btnPriceEdit: TcxButton
              Left = 504
              Top = 104
              Width = 48
              Height = 48
              Action = actPriceEdit
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 36
            end
            object btnPricePost: TcxButton
              Left = 551
              Top = 104
              Width = 48
              Height = 48
              Action = actPricePost
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 37
            end
            object btnPriceCancel: TcxButton
              Left = 598
              Top = 104
              Width = 48
              Height = 48
              Action = actPriceCancel
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 38
            end
            object dbeMinSalePrice: TcxDBCalcEdit
              Left = 111
              Top = 10
              BeepOnEnter = False
              DataBinding.DataField = 'minsaleprice'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 145
            end
            object dbeMinQty1: TcxDBCalcEdit
              Left = 111
              Top = 105
              BeepOnEnter = False
              DataBinding.DataField = 'minqty1'
              DataBinding.DataSource = dsPrice
              TabOrder = 1
              Width = 55
            end
            object dbeMinQty2: TcxDBCalcEdit
              Left = 111
              Top = 123
              BeepOnEnter = False
              DataBinding.DataField = 'minqty2'
              DataBinding.DataSource = dsPrice
              TabOrder = 6
              Width = 55
            end
            object dbeMinQty3: TcxDBCalcEdit
              Left = 111
              Top = 141
              BeepOnEnter = False
              DataBinding.DataField = 'minqty3'
              DataBinding.DataSource = dsPrice
              TabOrder = 11
              Width = 55
            end
            object dbeMinQty4: TcxDBCalcEdit
              Left = 111
              Top = 159
              BeepOnEnter = False
              DataBinding.DataField = 'minqty4'
              DataBinding.DataSource = dsPrice
              TabOrder = 16
              Width = 55
            end
            object dbeMinQty5: TcxDBCalcEdit
              Left = 111
              Top = 177
              BeepOnEnter = False
              DataBinding.DataField = 'minqty5'
              DataBinding.DataSource = dsPrice
              TabOrder = 21
              Width = 55
            end
            object dbeQty1: TcxDBCalcEdit
              Left = 193
              Top = 105
              BeepOnEnter = False
              DataBinding.DataField = 'qty1'
              DataBinding.DataSource = dsPrice
              TabOrder = 2
              Width = 55
            end
            object dbeQty2: TcxDBCalcEdit
              Left = 193
              Top = 123
              BeepOnEnter = False
              DataBinding.DataField = 'qty2'
              DataBinding.DataSource = dsPrice
              TabOrder = 8
              Width = 55
            end
            object dbeQty3: TcxDBCalcEdit
              Left = 193
              Top = 141
              BeepOnEnter = False
              DataBinding.DataField = 'qty3'
              DataBinding.DataSource = dsPrice
              TabOrder = 12
              Width = 55
            end
            object dbeQty4: TcxDBCalcEdit
              Left = 193
              Top = 159
              BeepOnEnter = False
              DataBinding.DataField = 'qty4'
              DataBinding.DataSource = dsPrice
              TabOrder = 17
              Width = 55
            end
            object dbeQty5: TcxDBCalcEdit
              Left = 193
              Top = 177
              BeepOnEnter = False
              DataBinding.DataField = 'qty5'
              DataBinding.DataSource = dsPrice
              TabOrder = 22
              Width = 55
            end
            object dbeMinQty6: TcxDBCalcEdit
              Left = 111
              Top = 195
              BeepOnEnter = False
              DataBinding.DataField = 'minqty6'
              DataBinding.DataSource = dsPrice
              TabOrder = 26
              Width = 55
            end
            object dbeQty6: TcxDBCalcEdit
              Left = 193
              Top = 195
              BeepOnEnter = False
              DataBinding.DataField = 'qty6'
              DataBinding.DataSource = dsPrice
              TabOrder = 27
              Width = 55
            end
            object dbeMeasure6: TcxDBTextEdit
              Left = 254
              Top = 195
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure6'
              DataBinding.DataSource = dsPrice
              TabOrder = 28
              Width = 77
            end
            object dbePrice6: TcxDBCalcEdit
              Left = 337
              Top = 195
              BeepOnEnter = False
              DataBinding.DataField = 'price6'
              DataBinding.DataSource = dsPrice
              TabOrder = 29
              Width = 109
            end
            object dbeMinQty7: TcxDBCalcEdit
              Left = 111
              Top = 213
              BeepOnEnter = False
              DataBinding.DataField = 'minqty7'
              DataBinding.DataSource = dsPrice
              TabOrder = 31
              Width = 55
            end
            object dbeQty7: TcxDBCalcEdit
              Left = 193
              Top = 213
              BeepOnEnter = False
              DataBinding.DataField = 'qty7'
              DataBinding.DataSource = dsPrice
              TabOrder = 32
              Width = 55
            end
            object dbeMeasure7: TcxDBTextEdit
              Left = 254
              Top = 213
              BeepOnEnter = False
              DataBinding.DataField = 'unitmeasure7'
              DataBinding.DataSource = dsPrice
              TabOrder = 33
              Width = 77
            end
            object dbePrice7: TcxDBCalcEdit
              Left = 337
              Top = 213
              BeepOnEnter = False
              DataBinding.DataField = 'price7'
              DataBinding.DataSource = dsPrice
              TabOrder = 34
              Width = 109
            end
            object dbeDisc1_1: TcxDBCalcEdit
              Left = 452
              Top = 105
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_1'
              DataBinding.DataSource = dsPrice
              TabOrder = 5
              Width = 46
            end
            object dbeDisc1_2: TcxDBCalcEdit
              Left = 452
              Top = 123
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_2'
              DataBinding.DataSource = dsPrice
              TabOrder = 10
              Width = 46
            end
            object dbeDisc1_3: TcxDBCalcEdit
              Left = 452
              Top = 141
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_3'
              DataBinding.DataSource = dsPrice
              TabOrder = 15
              Width = 46
            end
            object dbeDisc1_4: TcxDBCalcEdit
              Left = 452
              Top = 159
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_4'
              DataBinding.DataSource = dsPrice
              TabOrder = 20
              Width = 46
            end
            object dbeDisc1_5: TcxDBCalcEdit
              Left = 452
              Top = 177
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_5'
              DataBinding.DataSource = dsPrice
              TabOrder = 25
              Width = 46
            end
            object dbeDisc1_6: TcxDBCalcEdit
              Left = 452
              Top = 195
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_6'
              DataBinding.DataSource = dsPrice
              TabOrder = 30
              Width = 46
            end
            object dbeDisc1_7: TcxDBCalcEdit
              Left = 452
              Top = 213
              BeepOnEnter = False
              DataBinding.DataField = 'disc1_7'
              DataBinding.DataSource = dsPrice
              TabOrder = 35
              Width = 46
            end
          end
          object tsCouple: TcxTabSheet
            Caption = 'Couple / Assembly'
            ImageIndex = 6
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlCoupleHeader: TPanel
              Left = 0
              Top = 0
              Width = 651
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object dbchkCouple: TcxDBCheckBox
                Left = 4
                Top = 5
                Caption = 'Barang Master Couple / Assemby'
                DataBinding.DataField = 'flagcouple'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 0
                Transparent = True
                Width = 181
              end
            end
            object cgItemCouple: TcxGrid
              Left = 0
              Top = 26
              Width = 651
              Height = 239
              Align = alClient
              TabOrder = 1
              object cgvItemCouple: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Delete.Hint = 'Hapus'
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Post.Hint = 'Simpan'
                NavigatorButtons.Cancel.Hint = 'Batal'
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsItemDt
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvItemCoupleItemIdExternal: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'itemdt'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvPrevItemCoupleDt
                  Properties.KeyFieldNames = 'ItemId'
                  Properties.ListFieldItem = dmInventory.cgvPrevItemCoupleDtItemIdExternal
                  Options.Filtering = False
                  Width = 92
                end
                object cgvItemCoupleItemId: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'itemdt'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvPrevItemCoupleDt
                  Properties.KeyFieldNames = 'ItemId'
                  Properties.ListFieldItem = dmInventory.cgvPrevItemCoupleDtItemName
                  Options.Filtering = False
                  Width = 178
                end
                object cgvItemCoupleQty: TcxGridDBColumn
                  Caption = 'Qty'
                  DataBinding.FieldName = 'qty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Filtering = False
                end
              end
              object cgItemCoupleLevel1: TcxGridLevel
                GridView = cgvItemCouple
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryItemImage: TUniQuery
    Connection = dmGlobal.conImage
    SQL.Strings = (
      'select * '
      'from ItemImage'
      'where itemid = :itemid')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryItemImageBeforeEdit
    BeforeEdit = qryItemImageBeforeEdit
    BeforePost = qryItemImageBeforePost
    OnNewRecord = qryItemImageNewRecord
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
  object dsItemImage: TDataSource
    DataSet = qryItemImage
    Left = 168
    Top = 176
  end
  object qryItemRack: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from itemrack'
      'where itemid = :itemid')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryItemRackBeforeEdit
    BeforeEdit = qryItemRackBeforeEdit
    OnNewRecord = qryItemRackNewRecord
    Left = 136
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
  object dsPrevItemRack: TDataSource
    DataSet = qryItemRack
    Left = 168
    Top = 208
  end
  object qryItemDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Itemdt'
      'where itemid = :itemid')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryItemDtBeforeEdit
    BeforeEdit = qryItemDtBeforeEdit
    BeforePost = qryItemDtBeforePost
    OnNewRecord = qryItemDtNewRecord
    Left = 136
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
  object dsItemDt: TDataSource
    DataSet = qryItemDt
    Left = 168
    Top = 272
  end
  object qryPrice: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Price'
      'where ItemId = :ItemId')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryPriceBeforeEdit
    BeforeEdit = qryPriceBeforeEdit
    BeforePost = qryPriceBeforePost
    OnNewRecord = qryPriceNewRecord
    Left = 136
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
  object dsPrice: TDataSource
    DataSet = qryPrice
    Left = 168
    Top = 240
  end
end
