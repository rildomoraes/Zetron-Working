inherited fmItem: TfmItem
  Caption = 'Barang'
  ClientHeight = 416
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 445
  DesignSize = (
    692
    416)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
    inherited bvlSpacer2: TBevel
      ExplicitTop = -4
    end
    inherited bvlSpacer3: TBevel
      ExplicitLeft = 463
      ExplicitTop = 1
    end
    object btnCopy: TcxButton
      Left = 569
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCopyItem
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
  end
  inherited dxDockSite1: TdxDockSite
    Width = 692
    Height = 366
    ExplicitWidth = 692
    ExplicitHeight = 366
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 366
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 664
      Height = 366
      ExplicitWidth = 664
      ExplicitHeight = 366
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 664
        Height = 366
        ExplicitWidth = 664
        ExplicitHeight = 366
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 664
        Height = 366
        ExplicitWidth = 664
        ExplicitHeight = 366
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 660
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblSuppliesName: TLabel
            Left = 8
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object lblNameLength: TLabel
            Left = 432
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Digit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblIdSupplies: TLabel
            Left = 8
            Top = 26
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object dbeItemName: TcxDBTextEdit
            Left = 49
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'ItemName'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dbeItemNamePropertiesEditValueChanged
            TabOrder = 0
            Width = 377
          end
          object dbchkInactive: TcxDBCheckBox
            Left = 490
            Top = 4
            TabStop = False
            Caption = 'Non Aktif'
            DataBinding.DataField = 'FlagInactive'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 2
            Transparent = True
            Width = 69
          end
          object dbeItemItemCode: TcxDBButtonEdit
            Left = 49
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'ItemCode'
            DataBinding.DataSource = dsDefault
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbeItemItemCodePropertiesButtonClick
            TabOrder = 1
            OnKeyDown = dbeItemItemCodeKeyDown
            Width = 356
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 51
          Width = 660
          Height = 311
          ActivePage = tsGeneral
          Align = alClient
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 287
          ClientRectRight = 660
          ClientRectTop = 0
          object tsGeneral: TcxTabSheet
            Caption = 'General'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 4
            ParentFont = False
            object pnlHeader: TPanel
              Left = 0
              Top = 0
              Width = 660
              Height = 85
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              TabOrder = 0
              object lblSatuanStock: TLabel
                Left = 8
                Top = 63
                Width = 88
                Height = 13
                Caption = 'Satuan dalam stok'
                Transparent = True
              end
              object lblItemType: TLabel
                Left = 8
                Top = 9
                Width = 91
                Height = 13
                Caption = 'Kelompok Produksi'
                Transparent = True
              end
              object lblMaterial: TLabel
                Left = 8
                Top = 45
                Width = 87
                Height = 13
                Caption = 'Kelompok Material'
                Transparent = True
              end
              object lblSuppliesCategory: TLabel
                Left = 8
                Top = 27
                Width = 72
                Height = 13
                Caption = 'Kelompok Stok'
                Transparent = True
              end
              object lblUnitMeasure: TLabel
                Left = 171
                Top = 63
                Width = 65
                Height = 13
                Caption = 'Nama Satuan'
                Transparent = True
              end
              object dbeStatusDimensi: TcxDBExtLookupComboBox
                Left = 107
                Top = 60
                BeepOnEnter = False
                DataBinding.DataField = 'StatusDimensi'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevStatusDimensi
                Properties.KeyFieldNames = 'StatusDimensi'
                Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
                Properties.OnEditValueChanged = dbeStatusDimensiPropertiesEditValueChanged
                TabOrder = 4
                Width = 58
              end
              object dbeUnitMeasure: TcxDBTextEdit
                Left = 242
                Top = 60
                BeepOnEnter = False
                DataBinding.DataField = 'UnitMeasure'
                DataBinding.DataSource = dsDefault
                Properties.OnEditValueChanged = dbeItemNamePropertiesEditValueChanged
                TabOrder = 5
                Width = 73
              end
              object dblcItemCategoryId: TcxDBExtLookupComboBox
                Left = 107
                Top = 24
                BeepOnEnter = False
                DataBinding.DataField = 'ItemCategoryId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevItemCategory
                Properties.KeyFieldNames = 'ItemCategoryId'
                Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
                TabOrder = 2
                Width = 193
              end
              object dblcItemTypeId: TcxDBExtLookupComboBox
                Left = 107
                Top = 6
                BeepOnEnter = False
                DataBinding.DataField = 'StatusProduction'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevStatusProduction
                Properties.KeyFieldNames = 'StatusProduction'
                Properties.ListFieldItem = dmInventory.cgvPrevStatusProductionName
                TabOrder = 0
                Width = 193
              end
              object dblcMaterialId: TcxDBExtLookupComboBox
                Left = 107
                Top = 42
                BeepOnEnter = False
                DataBinding.DataField = 'MaterialId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevMaterial
                Properties.KeyFieldNames = 'MaterialId'
                Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
                TabOrder = 3
                Width = 193
              end
              object dbchkFlagTally: TcxDBCheckBox
                Left = 306
                Top = 6
                TabStop = False
                Caption = 'Memiliki No Tally / No Palet / No Batch'
                DataBinding.DataField = 'FlagTally'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 1
                Transparent = True
                Width = 221
              end
            end
            object pnlItemDimensiSize: TPanel
              Left = 0
              Top = 85
              Width = 660
              Height = 129
              Align = alTop
              BevelOuter = bvNone
              Color = clTeal
              TabOrder = 1
              object lblItemDimensiSize: TLabel
                Left = 8
                Top = 3
                Width = 91
                Height = 13
                Caption = 'Memiliki Ukuran'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lblLebar: TLabel
                Left = 178
                Top = 3
                Width = 27
                Height = 13
                Caption = 'Lebar'
                Transparent = True
              end
              object lblPanjang: TLabel
                Left = 247
                Top = 3
                Width = 39
                Height = 13
                Caption = 'Panjang'
                Transparent = True
              end
              object lblTebal: TLabel
                Left = 107
                Top = 3
                Width = 27
                Height = 13
                Caption = 'Tebal'
                Transparent = True
              end
              object Label1: TLabel
                Left = 315
                Top = 3
                Width = 52
                Height = 13
                Caption = 'Berat Jenis'
                Transparent = True
              end
              object lblStatusPurchaseDimensi: TLabel
                Left = 107
                Top = 106
                Width = 101
                Height = 13
                Caption = 'Default harga beli per'
                Transparent = True
              end
              object btnBerat: TcxButton
                Left = 245
                Top = 60
                Width = 70
                Height = 20
                Caption = 'Berat (Kg)'
                DropDownMenu = pmBerat
                Kind = cxbkDropDown
                TabOrder = 0
              end
              object btnLuas: TcxButton
                Left = 107
                Top = 60
                Width = 70
                Height = 20
                Caption = 'Luas (m2)'
                DropDownMenu = pmLuas
                Kind = cxbkDropDown
                TabOrder = 1
              end
              object btnVolume: TcxButton
                Left = 176
                Top = 60
                Width = 70
                Height = 20
                Caption = 'Volume (m3)'
                DropDownMenu = pmVolume
                Kind = cxbkDropDown
                TabOrder = 2
              end
              object dbeBerat: TcxDBCurrencyEdit
                Left = 245
                Top = 80
                BeepOnEnter = False
                DataBinding.DataField = 'Berat'
                DataBinding.DataSource = dsDefault
                TabOrder = 3
                Width = 70
              end
              object dbeLConstanta: TcxDBImageComboBox
                Left = 176
                Top = 35
                DataBinding.DataField = 'LConstanta'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'M'
                    ImageIndex = 0
                    Value = 1.000000000000000000
                  end
                  item
                    Description = 'CM'
                    Value = 0.010000000000000000
                  end
                  item
                    Description = 'MM'
                    Value = 0.001000000000000000
                  end>
                TabOrder = 4
                Width = 70
              end
              object dbeLebar: TcxDBCalcEdit
                Left = 176
                Top = 17
                BeepOnEnter = False
                DataBinding.DataField = 'L'
                DataBinding.DataSource = dsDefault
                TabOrder = 5
                Width = 70
              end
              object dbeM2: TcxDBCurrencyEdit
                Left = 107
                Top = 80
                BeepOnEnter = False
                DataBinding.DataField = 'M2'
                DataBinding.DataSource = dsDefault
                TabOrder = 6
                Width = 70
              end
              object dbeM3: TcxDBCurrencyEdit
                Left = 176
                Top = 80
                BeepOnEnter = False
                DataBinding.DataField = 'M3'
                DataBinding.DataSource = dsDefault
                TabOrder = 7
                Width = 70
              end
              object dbePanjang: TcxDBCalcEdit
                Left = 245
                Top = 17
                BeepOnEnter = False
                DataBinding.DataField = 'P'
                DataBinding.DataSource = dsDefault
                TabOrder = 8
                Width = 70
              end
              object dbePConstanta: TcxDBImageComboBox
                Left = 245
                Top = 35
                DataBinding.DataField = 'PConstanta'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'M'
                    ImageIndex = 0
                    Value = 1.000000000000000000
                  end
                  item
                    Description = 'CM'
                    Value = 0.010000000000000000
                  end
                  item
                    Description = 'MM'
                    Value = 0.001000000000000000
                  end>
                TabOrder = 9
                Width = 70
              end
              object dbeTConstanta: TcxDBImageComboBox
                Left = 107
                Top = 35
                DataBinding.DataField = 'TConstanta'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'M'
                    ImageIndex = 0
                    Value = 1.000000000000000000
                  end
                  item
                    Description = 'CM'
                    Value = 0.010000000000000000
                  end
                  item
                    Description = 'MM'
                    Value = 0.001000000000000000
                  end>
                TabOrder = 10
                Width = 70
              end
              object dbeTebal: TcxDBCalcEdit
                Left = 107
                Top = 17
                BeepOnEnter = False
                DataBinding.DataField = 'T'
                DataBinding.DataSource = dsDefault
                TabOrder = 11
                Width = 70
              end
              object dbeBeratJenis: TcxDBCalcEdit
                Left = 314
                Top = 17
                BeepOnEnter = False
                DataBinding.DataField = 'BeratJenis'
                DataBinding.DataSource = dsDefault
                TabOrder = 12
                Width = 70
              end
              object dbeStatusPurchaseDimensi: TcxDBExtLookupComboBox
                Left = 214
                Top = 103
                BeepOnEnter = False
                DataBinding.DataField = 'StatusPurchaseDimensi'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevStatusDimensi
                Properties.KeyFieldNames = 'StatusDimensi'
                Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
                TabOrder = 13
                Width = 101
              end
            end
            object pnlBody: TPanel
              Left = 0
              Top = 214
              Width = 660
              Height = 73
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object lblEmployeeName: TLabel
                Left = 8
                Top = 7
                Width = 41
                Height = 13
                Caption = 'Pegawai'
                Transparent = True
              end
              object dbeEmployeeId: TcxDBExtLookupComboBox
                Left = 107
                Top = 4
                BeepOnEnter = False
                DataBinding.DataField = 'EmployeeId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmGlobal.cgvPrevEmployee
                Properties.KeyFieldNames = 'EmployeeId'
                Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
                TabOrder = 0
                Width = 208
              end
            end
          end
          object tsStockInfo: TcxTabSheet
            Caption = 'Detail'
            ImageIndex = 0
            object lblStatusItem: TLabel
              Left = 5
              Top = 8
              Width = 67
              Height = 13
              Caption = 'Status Barang'
              Transparent = True
            end
            object lblCostMethod: TLabel
              Left = 5
              Top = 27
              Width = 65
              Height = 13
              Caption = 'Metode Biaya'
              Transparent = True
            end
            object dblcStatusItem: TcxDBImageComboBox
              Left = 83
              Top = 7
              BeepOnEnter = False
              DataBinding.DataField = 'StatusItem'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Service'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Item'
                  Value = '1'
                end
                item
                  Description = 'Non Stock - Item'
                  Value = '2'
                end
                item
                  Description = 'Konsinyasi'
                  Value = '3'
                end>
              TabOrder = 0
              Width = 83
            end
            object dblcbStatusCostMethod: TcxDBImageComboBox
              Left = 83
              Top = 25
              BeepOnEnter = False
              DataBinding.DataField = 'StatusCostMethod'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'FIFO'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'LIFO'
                  Value = '1'
                end
                item
                  Description = 'AVG'
                  Value = '2'
                end>
              TabOrder = 1
              Width = 83
            end
          end
          object tsImage: TcxTabSheet
            Caption = 'Gambar'
            ImageIndex = 3
            object pnlItemImageOption: TPanel
              Left = 0
              Top = 0
              Width = 660
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object edtImageResize: TcxSpinEdit
                Left = 208
                Top = 3
                BeepOnEnter = False
                Properties.Increment = 50.000000000000000000
                Properties.LargeIncrement = 100.000000000000000000
                Properties.SpinButtons.Position = sbpHorzLeftRight
                Properties.SpinButtons.ShowFastButtons = True
                TabOrder = 0
                Value = 500
                Width = 67
              end
              object chkImageResize: TcxCheckBox
                Left = 5
                Top = 3
                Caption = 'Resize Gambar Menggunakan Rasio :'
                ParentColor = False
                Properties.NullStyle = nssInactive
                State = cbsChecked
                TabOrder = 1
                Transparent = True
                Width = 204
              end
            end
            object cgItemImage: TcxGrid
              Left = 0
              Top = 26
              Width = 660
              Height = 261
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
          object tsMinStock: TcxTabSheet
            Caption = 'Min Stock / Gudang'
            ImageIndex = 5
            object cgMinStockWarehouse: TcxGrid
              Left = 0
              Top = 0
              Width = 660
              Height = 287
              Align = alClient
              TabOrder = 0
              object cgvMinStock: TcxGridDBTableView
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
                DataController.DataSource = dsItemMinStock
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvMinStockItemId: TcxGridDBColumn
                  DataBinding.FieldName = 'ItemId'
                  Visible = False
                end
                object cgvMinStockWarehouseId: TcxGridDBColumn
                  Caption = 'Gudang'
                  DataBinding.FieldName = 'warehouseid'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 82
                end
                object cgvMinStockMinStockQty: TcxGridDBColumn
                  Caption = 'Qty'
                  DataBinding.FieldName = 'minstockqty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvMinStockEmployeeName: TcxGridDBColumn
                  Caption = 'Pegawai'
                  DataBinding.FieldName = 'employeeid'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGlobal.cgvPrevEmployee
                  Properties.KeyFieldNames = 'EmployeeId'
                  Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
                  Options.Editing = False
                  Width = 122
                end
              end
              object cgMinStockWarehouseLevel1: TcxGridLevel
                GridView = cgvMinStock
              end
            end
          end
          object tsPricing: TcxTabSheet
            Caption = 'Harga'
            ImageIndex = 4
            object Label2: TLabel
              Left = 5
              Top = 9
              Width = 132
              Height = 13
              Caption = 'Harga Beli Berdasarkan'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 5
              Top = 146
              Width = 135
              Height = 13
              Caption = 'Harga Jual Berdasarkan'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lbl1: TLabel
              Left = 22
              Top = 184
              Width = 89
              Height = 13
              Caption = 'Level 1 / Price List'
              Transparent = True
            end
            object Label5: TLabel
              Left = 171
              Top = 184
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object lblPrice: TLabel
              Left = 236
              Top = 167
              Width = 46
              Height = 13
              Caption = 'Harga  /  '
              Transparent = True
            end
            object lbl2: TLabel
              Left = 22
              Top = 202
              Width = 35
              Height = 13
              Caption = 'Level 2'
              Transparent = True
              Visible = False
            end
            object lbl3: TLabel
              Left = 22
              Top = 220
              Width = 35
              Height = 13
              Caption = 'Level 3'
              Transparent = True
              Visible = False
            end
            object lbl4: TLabel
              Left = 22
              Top = 238
              Width = 35
              Height = 13
              Caption = 'Level 4'
              Transparent = True
              Visible = False
            end
            object lbl5: TLabel
              Left = 22
              Top = 256
              Width = 35
              Height = 13
              Caption = 'Level 5'
              Transparent = True
              Visible = False
            end
            object Label6: TLabel
              Left = 171
              Top = 202
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label7: TLabel
              Left = 171
              Top = 220
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label8: TLabel
              Left = 171
              Top = 238
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label9: TLabel
              Left = 171
              Top = 256
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object lblQty: TLabel
              Left = 127
              Top = 167
              Width = 36
              Height = 13
              Caption = 'Qty Min'
              Transparent = True
            end
            object Label4: TLabel
              Left = 127
              Top = 30
              Width = 36
              Height = 13
              Caption = 'Qty Min'
              Transparent = True
            end
            object Label12: TLabel
              Left = 22
              Top = 47
              Width = 89
              Height = 13
              Caption = 'Level 1 / Price List'
              Transparent = True
            end
            object Label13: TLabel
              Left = 171
              Top = 47
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object Label14: TLabel
              Left = 236
              Top = 30
              Width = 46
              Height = 13
              Caption = 'Harga  /  '
              Transparent = True
            end
            object Label15: TLabel
              Left = 22
              Top = 65
              Width = 35
              Height = 13
              Caption = 'Level 2'
              Transparent = True
              Visible = False
            end
            object Label16: TLabel
              Left = 171
              Top = 65
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label17: TLabel
              Left = 22
              Top = 83
              Width = 35
              Height = 13
              Caption = 'Level 3'
              Transparent = True
              Visible = False
            end
            object Label18: TLabel
              Left = 171
              Top = 83
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label19: TLabel
              Left = 22
              Top = 101
              Width = 35
              Height = 13
              Caption = 'Level 4'
              Transparent = True
              Visible = False
            end
            object Label20: TLabel
              Left = 171
              Top = 101
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object Label21: TLabel
              Left = 22
              Top = 119
              Width = 35
              Height = 13
              Caption = 'Level 5'
              Transparent = True
              Visible = False
            end
            object Label22: TLabel
              Left = 171
              Top = 119
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
              Visible = False
            end
            object dbeUnitMeasure2: TDBText
              Left = 284
              Top = 30
              Width = 84
              Height = 13
              AutoSize = True
              DataField = 'UnitMeasure'
              DataSource = dsDefault
            end
            object dbeUnitMeasure3: TDBText
              Left = 284
              Top = 167
              Width = 84
              Height = 13
              AutoSize = True
              DataField = 'UnitMeasure'
              DataSource = dsDefault
            end
            object Label11: TLabel
              Left = 192
              Top = 30
              Width = 16
              Height = 13
              Caption = 'Qty'
              Transparent = True
            end
            object Label23: TLabel
              Left = 192
              Top = 167
              Width = 16
              Height = 13
              Caption = 'Qty'
              Transparent = True
            end
            object dbeStatusPurchasePricing: TcxDBImageComboBox
              Left = 145
              Top = 7
              DataBinding.DataField = 'StatusPurchasePricing'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Price List'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Harga Beli per Supplier'
                  Value = '1'
                end>
              TabOrder = 0
              Width = 121
            end
            object dbeStatusSalesPricing: TcxDBImageComboBox
              Left = 145
              Top = 142
              DataBinding.DataField = 'StatusSalesPricing'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Price List'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Harga Jual per Customer'
                  Value = '1'
                end>
              TabOrder = 19
              Width = 121
            end
            object btnSalePriceEdit: TcxButton
              Left = 385
              Top = 182
              Width = 48
              Height = 48
              Action = actSalePriceEdit
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 35
            end
            object btnSalePricePost: TcxButton
              Left = 432
              Top = 182
              Width = 48
              Height = 48
              Action = actSalePricePost
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 36
            end
            object btnSalePriceCancel: TcxButton
              Left = 479
              Top = 182
              Width = 48
              Height = 48
              Action = actSalePriceCancel
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 37
            end
            object dbeSaleMinQty1: TcxDBCalcEdit
              Left = 127
              Top = 182
              BeepOnEnter = False
              DataBinding.DataField = 'minqty1'
              DataBinding.DataSource = dsSalePriceList
              Properties.ReadOnly = False
              TabOrder = 20
              Width = 38
            end
            object dbeSaleQty1: TcxDBCalcEdit
              Left = 192
              Top = 182
              BeepOnEnter = False
              DataBinding.DataField = 'qty1'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 21
              Width = 38
            end
            object dbeSalePrice1: TcxDBCalcEdit
              Left = 236
              Top = 182
              BeepOnEnter = False
              DataBinding.DataField = 'price1'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 22
              Width = 145
            end
            object dbeSaleMinQty2: TcxDBCalcEdit
              Left = 127
              Top = 200
              BeepOnEnter = False
              DataBinding.DataField = 'minqty2'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 23
              Visible = False
              Width = 38
            end
            object dbeSaleMinQty3: TcxDBCalcEdit
              Left = 127
              Top = 218
              BeepOnEnter = False
              DataBinding.DataField = 'minqty3'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 24
              Visible = False
              Width = 38
            end
            object dbeSaleMinQty4: TcxDBCalcEdit
              Left = 127
              Top = 236
              BeepOnEnter = False
              DataBinding.DataField = 'minqty4'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 25
              Visible = False
              Width = 38
            end
            object dbeSaleMinQty5: TcxDBCalcEdit
              Left = 127
              Top = 254
              BeepOnEnter = False
              DataBinding.DataField = 'minqty5'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 26
              Visible = False
              Width = 38
            end
            object dbeSaleQty2: TcxDBCalcEdit
              Left = 192
              Top = 200
              BeepOnEnter = False
              DataBinding.DataField = 'qty2'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 27
              Visible = False
              Width = 38
            end
            object dbeSaleQty3: TcxDBCalcEdit
              Left = 192
              Top = 218
              BeepOnEnter = False
              DataBinding.DataField = 'qty3'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 28
              Visible = False
              Width = 38
            end
            object dbeSaleQty4: TcxDBCalcEdit
              Left = 192
              Top = 236
              BeepOnEnter = False
              DataBinding.DataField = 'qty4'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 29
              Visible = False
              Width = 38
            end
            object dbeSaleQty5: TcxDBCalcEdit
              Left = 192
              Top = 254
              BeepOnEnter = False
              DataBinding.DataField = 'qty5'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 30
              Visible = False
              Width = 38
            end
            object dbeSalePrice2: TcxDBCalcEdit
              Left = 236
              Top = 200
              BeepOnEnter = False
              DataBinding.DataField = 'price2'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 31
              Visible = False
              Width = 145
            end
            object dbeSalePrice3: TcxDBCalcEdit
              Left = 236
              Top = 218
              BeepOnEnter = False
              DataBinding.DataField = 'price3'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 32
              Visible = False
              Width = 145
            end
            object dbeSalePrice4: TcxDBCalcEdit
              Left = 236
              Top = 236
              BeepOnEnter = False
              DataBinding.DataField = 'price4'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 33
              Visible = False
              Width = 145
            end
            object dbeSalePrice5: TcxDBCalcEdit
              Left = 236
              Top = 254
              BeepOnEnter = False
              DataBinding.DataField = 'price5'
              DataBinding.DataSource = dsSalePriceList
              TabOrder = 34
              Visible = False
              Width = 145
            end
            object dbePurchaseMinQty1: TcxDBCalcEdit
              Left = 127
              Top = 45
              BeepOnEnter = False
              DataBinding.DataField = 'minqty1'
              DataBinding.DataSource = dsPurchasePriceList
              Properties.ReadOnly = False
              TabOrder = 1
              Width = 38
            end
            object dbePurchaseQty1: TcxDBCalcEdit
              Left = 192
              Top = 45
              BeepOnEnter = False
              DataBinding.DataField = 'qty1'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 2
              Width = 38
            end
            object dbePurchasePrice1: TcxDBCalcEdit
              Left = 236
              Top = 45
              BeepOnEnter = False
              DataBinding.DataField = 'price1'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 3
              Width = 145
            end
            object dbePurchaseMinQty2: TcxDBCalcEdit
              Left = 127
              Top = 63
              BeepOnEnter = False
              DataBinding.DataField = 'minqty2'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 4
              Visible = False
              Width = 38
            end
            object dbePurchaseQty2: TcxDBCalcEdit
              Left = 192
              Top = 63
              BeepOnEnter = False
              DataBinding.DataField = 'qty2'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 5
              Visible = False
              Width = 38
            end
            object dbePurchasePrice2: TcxDBCalcEdit
              Left = 236
              Top = 63
              BeepOnEnter = False
              DataBinding.DataField = 'price2'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 6
              Visible = False
              Width = 145
            end
            object dbePurchaseMinQty3: TcxDBCalcEdit
              Left = 127
              Top = 81
              BeepOnEnter = False
              DataBinding.DataField = 'minqty3'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 7
              Visible = False
              Width = 38
            end
            object dbePurchaseQty3: TcxDBCalcEdit
              Left = 192
              Top = 81
              BeepOnEnter = False
              DataBinding.DataField = 'qty3'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 8
              Visible = False
              Width = 38
            end
            object dbePurchasePrice3: TcxDBCalcEdit
              Left = 236
              Top = 81
              BeepOnEnter = False
              DataBinding.DataField = 'price3'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 9
              Visible = False
              Width = 145
            end
            object dbePurchaseMinQty4: TcxDBCalcEdit
              Left = 127
              Top = 99
              BeepOnEnter = False
              DataBinding.DataField = 'minqty4'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 10
              Visible = False
              Width = 38
            end
            object dbePurchaseQty4: TcxDBCalcEdit
              Left = 192
              Top = 99
              BeepOnEnter = False
              DataBinding.DataField = 'qty4'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 11
              Visible = False
              Width = 38
            end
            object dbePurchasePrice4: TcxDBCalcEdit
              Left = 236
              Top = 99
              BeepOnEnter = False
              DataBinding.DataField = 'price4'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 12
              Visible = False
              Width = 145
            end
            object dbePurchaseMinQty5: TcxDBCalcEdit
              Left = 127
              Top = 117
              BeepOnEnter = False
              DataBinding.DataField = 'minqty5'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 13
              Visible = False
              Width = 38
            end
            object dbePurchaseQty5: TcxDBCalcEdit
              Left = 192
              Top = 117
              BeepOnEnter = False
              DataBinding.DataField = 'qty5'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 14
              Visible = False
              Width = 38
            end
            object dbePurchasePrice5: TcxDBCalcEdit
              Left = 236
              Top = 117
              BeepOnEnter = False
              DataBinding.DataField = 'price5'
              DataBinding.DataSource = dsPurchasePriceList
              TabOrder = 15
              Visible = False
              Width = 145
            end
            object btnPurchasePriceEdit: TcxButton
              Left = 385
              Top = 45
              Width = 48
              Height = 48
              Action = actPurchasePriceEdit
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 16
            end
            object btnPurchasePricePost: TcxButton
              Left = 432
              Top = 45
              Width = 48
              Height = 48
              Action = actPurchasePricePost
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 17
            end
            object btnPurchasePriceCancel: TcxButton
              Left = 479
              Top = 45
              Width = 48
              Height = 48
              Action = actPurchasePriceCancel
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 18
            end
          end
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
          object cgvPrevDisplayItemId: TcxGridDBColumn
            Caption = 'Id Internal'
            DataBinding.FieldName = 'itemid'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayItemCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ItemCode'
            Visible = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 64
          end
          object cgvPrevDisplayItemName: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'ItemName'
            Width = 64
          end
          object cgvPrevDisplayItemCategoryId: TcxGridDBColumn
            Caption = 'Kel. Stok'
            DataBinding.FieldName = 'ItemCategoryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItemCategory
            Properties.KeyFieldNames = 'ItemCategoryId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayType: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'Type'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayUnitMeasure: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'UnitMeasure'
            Visible = False
          end
          object cgvPrevDisplayStatusProduction: TcxGridDBColumn
            Caption = 'Kel. Produksi'
            DataBinding.FieldName = 'StatusProduction'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevStatusProduction
            Properties.KeyFieldNames = 'StatusProduction'
            Properties.ListFieldItem = dmInventory.cgvPrevStatusProductionName
            Visible = False
            GroupIndex = 0
          end
          object cgvPrevDisplayFlagInactive: TcxGridDBColumn
            Caption = 'Inactive'
            DataBinding.FieldName = 'FlagInactive'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayFlagProcessOpname: TcxGridDBColumn
            Caption = 'Opname'
            DataBinding.FieldName = 'flagprocessopname'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qryItem
    OnDataChange = dsDefaultDataChange
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object dsItemMinStock: TDataSource [6]
    DataSet = qryItemMinStock
    Left = 168
    Top = 176
  end
  object dsItemImage: TDataSource [7]
    DataSet = qryItemImage
    Left = 168
    Top = 144
  end
  object qryGetItemCode: TADOQuery [8]
    Connection = dmGlobal.conReadOnly
    Parameters = <>
    SQL.Strings = (
      'select max(ItemId) + 1'
      'from Item')
    Left = 136
    Top = 272
  end
  object pmLuas: TPopupMenu [9]
    OnPopup = pmLuasPopup
    Left = 232
    Top = 112
    object mniLuasKotak: TMenuItem
      Caption = 'Kotak'
      OnClick = mniLuasKotakClick
    end
  end
  object pmVolume: TPopupMenu [10]
    OnPopup = pmVolumePopup
    Left = 264
    Top = 112
    object mniVolumeBalok: TMenuItem
      Caption = 'Balok'
      OnClick = mniVolumeBalokClick
    end
  end
  object pmBerat: TPopupMenu [11]
    OnPopup = pmBeratPopup
    Left = 296
    Top = 112
  end
  object qryItemImage: TADOQuery [12]
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    BeforeInsert = qryItemImageBeforeInsert
    BeforePost = qryItemImageBeforePost
    OnNewRecord = qryItemImageNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ItemId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from ItemImage'
      'where ItemId = :ItemId')
    Left = 136
    Top = 144
  end
  object qryItemMinStock: TADOQuery [13]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryItemMinStockBeforeInsert
    BeforePost = qryItemMinStockBeforePost
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from ItemMinStock'
      'where ItemId = :ItemId')
    Left = 136
    Top = 176
  end
  object qryPurchasePriceList: TADOQuery [14]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPurchasePriceListBeforeInsert
    BeforePost = qryPurchasePriceListBeforePost
    OnNewRecord = qryPurchasePriceListNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PurchasePriceList'
      'where ItemId = :ItemId')
    Left = 136
    Top = 208
  end
  object dsPurchasePriceList: TDataSource [15]
    DataSet = qryPurchasePriceList
    Left = 168
    Top = 208
  end
  object qrySalePriceList: TADOQuery [16]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySalePriceListBeforeInsert
    BeforePost = qrySalePriceListBeforePost
    OnNewRecord = qrySalePriceListNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from SalePriceList'
      'where ItemId = :ItemId')
    Left = 136
    Top = 240
  end
  object dsSalePriceList: TDataSource [17]
    DataSet = qrySalePriceList
    Left = 168
    Top = 240
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [18]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [19]
    object actCopyItem: TAction
      Caption = 'Copy'
      Hint = 'Copy Data'
      ImageIndex = 13
      OnExecute = actCopyItemExecute
    end
    object actPurchasePriceEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dsPurchasePriceList
    end
    object actPurchasePricePost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 8
      DataSource = dsPurchasePriceList
    end
    object actPurchasePriceCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 9
      DataSource = dsPurchasePriceList
    end
    object actSalePriceEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dsSalePriceList
    end
    object actSalePricePost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 8
      DataSource = dsSalePriceList
    end
    object actSalePriceCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 9
      DataSource = dsSalePriceList
    end
  end
end
