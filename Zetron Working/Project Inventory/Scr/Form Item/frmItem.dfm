inherited fmItem: TfmItem
  Caption = 'Barang'
  ClientHeight = 422
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 456
  DesignSize = (
    692
    422)
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
    Height = 372
    ExplicitWidth = 692
    ExplicitHeight = 372
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 372
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 664
      Height = 372
      ExplicitWidth = 664
      ExplicitHeight = 372
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 664
        Height = 372
        ExplicitWidth = 664
        ExplicitHeight = 372
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 664
        Height = 372
        ExplicitWidth = 664
        ExplicitHeight = 372
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pcItem: TcxPageControl
          Left = 0
          Top = 71
          Width = 660
          Height = 297
          ActivePage = tsGeneral
          Align = alClient
          TabOrder = 0
          TabPosition = tpBottom
          ClientRectBottom = 273
          ClientRectRight = 660
          ClientRectTop = 0
          object tsGeneral: TcxTabSheet
            Caption = 'General'
            ImageIndex = 4
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              660
              273)
            object lblBarcodeId: TLabel
              Left = 8
              Top = 10
              Width = 68
              Height = 13
              Caption = 'Kode Barcode'
              Transparent = True
            end
            object lblBarcodeName: TLabel
              Left = 8
              Top = 28
              Width = 71
              Height = 13
              Caption = 'Nama Barcode'
              Transparent = True
            end
            object lblType: TLabel
              Left = 8
              Top = 46
              Width = 24
              Height = 13
              Caption = 'Tipe '
              Transparent = True
            end
            object lblDescription1: TLabel
              Left = 8
              Top = 64
              Width = 55
              Height = 13
              Caption = 'Keterangan'
              Transparent = True
            end
            object lblUnitOfMeasure: TLabel
              Left = 8
              Top = 82
              Width = 34
              Height = 13
              Caption = 'Satuan'
              Transparent = True
            end
            object lblRegister: TLabel
              Left = 8
              Top = 100
              Width = 46
              Height = 13
              Caption = 'Registrasi'
              Transparent = True
            end
            object lblItemSource: TLabel
              Left = 8
              Top = 118
              Width = 57
              Height = 13
              Caption = 'Asal Barang'
              Transparent = True
            end
            object lblEmployeeName: TLabel
              Left = 8
              Top = 137
              Width = 41
              Height = 13
              Caption = 'Pegawai'
              Transparent = True
            end
            object dbeBarcodeId: TcxDBTextEdit
              Left = 88
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'barcodeid'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 185
            end
            object dbeBarcodeName: TcxDBTextEdit
              Left = 88
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'BarcodeName'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 185
            end
            object dbeType: TcxDBTextEdit
              Left = 88
              Top = 44
              BeepOnEnter = False
              DataBinding.DataField = 'Type'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 249
            end
            object dbeItemNameChinese: TcxDBTextEdit
              Left = 88
              Top = 62
              Anchors = [akLeft, akTop, akRight]
              BeepOnEnter = False
              DataBinding.DataField = 'itemnamechinese'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 563
            end
            object dbeUnitMeasure: TcxDBTextEdit
              Left = 88
              Top = 80
              BeepOnEnter = False
              DataBinding.DataField = 'UnitMeasure'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 121
            end
            object dbeRegister: TcxDBTextEdit
              Left = 88
              Top = 98
              BeepOnEnter = False
              DataBinding.DataField = 'Register'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 185
            end
            object dblcStatusSource: TcxDBImageComboBox
              Left = 88
              Top = 116
              BeepOnEnter = False
              DataBinding.DataField = 'StatusSource'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Import'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Local'
                  Value = '1'
                end
                item
                  Description = 'Freeland'
                  Value = '2'
                end>
              TabOrder = 6
              Width = 185
            end
            object dbeEmployeeId: TcxDBExtLookupComboBox
              Left = 88
              Top = 134
              BeepOnEnter = False
              DataBinding.DataField = 'EmployeeId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              TabOrder = 7
              Width = 185
            end
          end
          object tsStockInfo: TcxTabSheet
            Caption = 'Stok'
            ImageIndex = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblStatusItem: TLabel
              Left = 8
              Top = 10
              Width = 67
              Height = 13
              Caption = 'Status Barang'
              Transparent = True
            end
            object lblCostMethod: TLabel
              Left = 8
              Top = 28
              Width = 65
              Height = 13
              Caption = 'Metode Biaya'
              Transparent = True
            end
            object lblMargin: TLabel
              Left = 8
              Top = 46
              Width = 104
              Height = 13
              Caption = 'Default Margin / Laba'
              Transparent = True
            end
            object lblMarginPercent: TLabel
              Left = 231
              Top = 46
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lblMinStockOverAll: TLabel
              Left = 8
              Top = 82
              Width = 75
              Height = 13
              Caption = 'Global Min Stok'
              Transparent = True
            end
            object lblReorderQty: TLabel
              Left = 8
              Top = 100
              Width = 57
              Height = 13
              Caption = 'Reorder Qty'
              Transparent = True
            end
            object Label1: TLabel
              Left = 8
              Top = 118
              Width = 29
              Height = 13
              Caption = 'Memo'
              Transparent = True
            end
            object Label4: TLabel
              Left = 121
              Top = 65
              Width = 451
              Height = 13
              Caption = 
                '* Default margin / laba hanya digunakan pada barang dengan statu' +
                's item non-stok atau service'
              Transparent = True
            end
            object dblcStatusItem: TcxDBImageComboBox
              Left = 120
              Top = 8
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
              Width = 177
            end
            object dblcbStatusCostMethod: TcxDBImageComboBox
              Left = 120
              Top = 26
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
                end>
              TabOrder = 1
              Width = 177
            end
            object dbeMargin: TcxDBSpinEdit
              Left = 120
              Top = 44
              Hint = 
                'opsi ini hanya berguna apabila status item berupa non-stok atau ' +
                'service.'
              BeepOnEnter = False
              DataBinding.DataField = 'margin'
              DataBinding.DataSource = dsDefault
              Properties.MaxValue = 100.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.SpinButtons.ShowFastButtons = True
              TabOrder = 2
              Width = 105
            end
            object dbeMinStock: TcxDBCalcEdit
              Left = 120
              Top = 80
              BeepOnEnter = False
              DataBinding.DataField = 'MinStockQty'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 81
            end
            object dbeReorderQty: TcxDBCalcEdit
              Left = 120
              Top = 98
              BeepOnEnter = False
              DataBinding.DataField = 'ReorderQty'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 81
            end
            object dbmMemo: TcxDBMemo
              Left = 120
              Top = 116
              DataBinding.DataField = 'Memo'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Height = 102
              Width = 345
            end
          end
          object tsOptions: TcxTabSheet
            Caption = 'Options'
            ImageIndex = 1
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbchFlagSalesReturn: TcxDBCheckBox
              Left = 5
              Top = 14
              Caption = 'Dapat di retur penjualan'
              DataBinding.DataField = 'flagsalesreturn'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 1
              Transparent = True
              Width = 154
            end
            object dbchFlagPurchaseReturn: TcxDBCheckBox
              Left = 5
              Top = 37
              Caption = 'Dapat di retur pembelian'
              DataBinding.DataField = 'flagpurchasereturn'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 0
              Transparent = True
              Width = 154
            end
          end
          object tsMinStock: TcxTabSheet
            Caption = 'Min Stock / Gudang'
            ImageIndex = 5
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgMinStockWarehouse: TcxGrid
              Left = 0
              Top = 0
              Width = 660
              Height = 273
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
                  Properties.View = dmGeneral.cgvPrevWarehouse
                  Properties.KeyFieldNames = 'WarehouseId'
                  Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
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
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 660
          Height = 71
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lblSuppliesCategory: TLabel
            Left = 8
            Top = 7
            Width = 47
            Height = 13
            Caption = 'Kelompok'
            Transparent = True
          end
          object lblIdSupplies: TLabel
            Left = 8
            Top = 25
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblSuppliesName: TLabel
            Left = 8
            Top = 43
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object lblNameLength: TLabel
            Left = 455
            Top = 42
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
          object dblcItemCategoryId: TcxDBExtLookupComboBox
            Left = 72
            Top = 5
            BeepOnEnter = False
            DataBinding.DataField = 'ItemCategoryId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevItemCategory
            Properties.KeyFieldNames = 'ItemCategoryId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
            TabOrder = 0
            Width = 169
          end
          object dbeItemIdExternal: TcxDBTextEdit
            Left = 72
            Top = 23
            BeepOnEnter = False
            DataBinding.DataField = 'itemidexternal'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            OnKeyDown = dbeItemIdExternalKeyDown
            Width = 241
          end
          object dbeItemId: TcxDBTextEdit
            Left = 247
            Top = 23
            BeepOnEnter = False
            DataBinding.DataField = 'ItemId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Visible = False
            Width = 66
          end
          object btnGetId: TcxButton
            Left = 313
            Top = 23
            Width = 19
            Height = 19
            Hint = 'Auto Generate (F3)'
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
              6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
              934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
              BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
              B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
              FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
              4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
            TabOrder = 3
            TabStop = False
            OnClick = btnGetIdClick
          end
          object dbchkInactive: TcxDBCheckBox
            Left = 340
            Top = 23
            TabStop = False
            Caption = 'Non Aktif'
            DataBinding.DataField = 'FlagInactive'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 4
            Transparent = True
            Width = 75
          end
          object dbeItemName: TcxDBTextEdit
            Left = 72
            Top = 41
            BeepOnEnter = False
            DataBinding.DataField = 'ItemName'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dbeItemNamePropertiesEditValueChanged
            TabOrder = 5
            Width = 377
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
        Width = 296
        Height = 350
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayItemIdExternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
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
            Caption = 'Category'
            DataBinding.FieldName = 'ItemCategoryId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItemCategory
            Properties.KeyFieldNames = 'ItemCategoryId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayItemNameChinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'ItemNameChinese'
            Visible = False
          end
          object cgvPrevDisplayType: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'Type'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayUnitMeasure: TcxGridDBColumn
            Caption = 'Unit Measure'
            DataBinding.FieldName = 'UnitMeasure'
            Visible = False
          end
          object cgvPrevDisplayStatusSource: TcxGridDBColumn
            Caption = 'Asal Barang'
            DataBinding.FieldName = 'StatusSource'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Import'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Local'
                Value = '1'
              end
              item
                Description = 'Freeland'
                Value = '2'
              end>
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayStatusItem: TcxGridDBColumn
            Caption = 'Status Barang'
            DataBinding.FieldName = 'StatusItem'
            PropertiesClassName = 'TcxImageComboBoxProperties'
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
                Description = 'Non Stok - Item'
                Value = '2'
              end
              item
                Description = 'Konsinyasi'
                Value = '3'
              end>
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayStatusCostMethod: TcxGridDBColumn
            Caption = 'Cost Method'
            DataBinding.FieldName = 'StatusCostMethod'
            PropertiesClassName = 'TcxImageComboBoxProperties'
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
                Description = 'AVERAGE'
                Value = '2'
              end>
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayMinStockQty: TcxGridDBColumn
            Caption = 'Min Stock'
            DataBinding.FieldName = 'MinStockQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayReorderQty: TcxGridDBColumn
            Caption = 'Reorder Qty'
            DataBinding.FieldName = 'ReorderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayFlagPrintBarcode: TcxGridDBColumn
            Caption = 'Print Barcode'
            DataBinding.FieldName = 'FlagPrintBarcode'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayFlagPrintPrice: TcxGridDBColumn
            Caption = 'Print Price'
            DataBinding.FieldName = 'FlagPrintPrice'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
            Width = 64
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
    object actPriceEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Edit'
      Enabled = False
      Hint = 'Edit'
      ImageIndex = 6
    end
    object actPricePost: TDataSetPost
      Category = 'Dataset'
      Caption = 'Post'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 8
    end
    object actPriceCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancel'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 9
    end
    object actCopyItem: TAction
      Caption = 'Copy'
      Hint = 'Copy'
      ImageIndex = 13
      OnExecute = actCopyItemExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryItem
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsItemMinStock: TDataSource
    DataSet = qryItemMinStock
    Left = 168
    Top = 144
  end
  object qryGetItemIdExternal: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * from fnGetItemIdExternal(:ACategoryId)')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACategoryId'
      end>
  end
  object qryItemMinStock: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from ItemMinStock'
      'where itemid = :itemid')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryItemMinStockBeforeEdit
    BeforeEdit = qryItemMinStockBeforeEdit
    BeforePost = qryItemMinStockBeforePost
    OnNewRecord = qryItemMinStockNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
end
