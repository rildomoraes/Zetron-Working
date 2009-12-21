inherited fmDisplayStock: TfmDisplayStock
  Caption = 'Display Stok'
  ClientHeight = 471
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  object pcStockOnHand: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 792
    Height = 390
    ActivePage = tsStock
    Align = alClient
    TabOrder = 1
    OnChange = pcStockOnHandChange
    ClientRectBottom = 384
    ClientRectLeft = 3
    ClientRectRight = 786
    ClientRectTop = 26
    object tsStock: TcxTabSheet
      Caption = 'Stok'
      ImageIndex = 0
      object cgStockBalance: TcxGrid
        Left = 0
        Top = 27
        Width = 783
        Height = 331
        ParentCustomHint = False
        Align = alClient
        TabOrder = 0
        object cgvPrevStockBalance: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevStockBalance
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'QtyBalance'
              Column = cgvPrevStockBalanceQtyBalance
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'ValueBalance'
              Column = cgvPrevStockBalanceValueBalance
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QtyBalance'
              Column = cgvPrevStockBalanceQtyBalance
            end
            item
              Kind = skSum
              FieldName = 'ValueBalance'
              Column = cgvPrevStockBalanceValueBalance
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Bands = <
            item
              Caption = 'Barang'
              FixedKind = fkLeft
              Width = 318
            end
            item
              Caption = 'Stock'
            end
            item
              Caption = 'Nilai'
            end
            item
              Caption = 'PO'
            end
            item
              Caption = 'SO'
            end
            item
              Caption = 'Info'
              Width = 201
            end
            item
              Caption = 'Price List Beli'
            end
            item
              Caption = 'Price List Jual'
            end>
          object cgvPrevStockBalanceWarehouseId: TcxGridDBBandedColumn
            Caption = 'Kode Gudang'
            DataBinding.FieldName = 'WarehouseId'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceWarehouseName: TcxGridDBBandedColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'WarehouseName'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceItemId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ItemId'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceItemCode: TcxGridDBBandedColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ItemCode'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceItemName: TcxGridDBBandedColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ItemName'
            SortIndex = 0
            SortOrder = soAscending
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyOpening: TcxGridDBBandedColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'QtyOpening'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyIn: TcxGridDBBandedColumn
            Caption = 'Masuk'
            DataBinding.FieldName = 'QtyIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyOut: TcxGridDBBandedColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'QtyOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyBalance: TcxGridDBBandedColumn
            Caption = 'Akhir'
            DataBinding.FieldName = 'QtyBalance'
            PropertiesClassName = 'TcxCalcEditProperties'
            Styles.Content = dmGlobal.stGreenLight
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceValueOpening: TcxGridDBBandedColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'ValueOpening'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceValueIn: TcxGridDBBandedColumn
            Caption = 'Masuk'
            DataBinding.FieldName = 'ValueIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceValueOut: TcxGridDBBandedColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'ValueOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceValueBalance: TcxGridDBBandedColumn
            Caption = 'Akhir'
            DataBinding.FieldName = 'ValueBalance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyPOOpening: TcxGridDBBandedColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'QtyPOOpening'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyPOIn: TcxGridDBBandedColumn
            Caption = 'Baru'
            DataBinding.FieldName = 'QtyPOIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyPOOut: TcxGridDBBandedColumn
            Caption = 'Terkirim'
            DataBinding.FieldName = 'QtyPOOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtyPOBalance: TcxGridDBBandedColumn
            Caption = 'Akhir'
            DataBinding.FieldName = 'QtyPOBalance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtySOOpening: TcxGridDBBandedColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'QtySOOpening'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtySOIn: TcxGridDBBandedColumn
            Caption = 'Baru'
            DataBinding.FieldName = 'QtySOIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtySOOut: TcxGridDBBandedColumn
            Caption = 'Terkirim'
            DataBinding.FieldName = 'QtySOOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceQtySOBalance: TcxGridDBBandedColumn
            Caption = 'Akhir'
            DataBinding.FieldName = 'QtySOBalance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalancePriceAVG: TcxGridDBBandedColumn
            Caption = 'Harga (AVG)'
            DataBinding.FieldName = 'PriceAVG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceItemCategoryName: TcxGridDBBandedColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'ItemCategoryName'
            Visible = False
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceUnitMeasure: TcxGridDBBandedColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'UnitMeasure'
            Visible = False
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceMinStockQty: TcxGridDBBandedColumn
            Caption = 'Minimum Stok '
            DataBinding.FieldName = 'MinStockQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalancePurchasePriceListPrice1: TcxGridDBBandedColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'PurchasePriceListPrice1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalancePurchasePriceListQty1: TcxGridDBBandedColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'PurchasePriceListQty1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Moving = False
            VisibleForCustomization = False
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalancePurchasePriceListMinQty1: TcxGridDBBandedColumn
            Caption = 'Qty Min'
            DataBinding.FieldName = 'PurchasePriceListMinQty1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Moving = False
            VisibleForCustomization = False
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalancePurchasePriceListEffectiveDate: TcxGridDBBandedColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'PurchasePriceListEffectiveDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceSalePriceListPrice1: TcxGridDBBandedColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'SalePriceListPrice1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceSalePriceListQty1: TcxGridDBBandedColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'SalePriceListQty1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceSalePriceListMinQty1: TcxGridDBBandedColumn
            Caption = 'Qty Min'
            DataBinding.FieldName = 'SalePriceListMinQty1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockBalanceSalePriceListEffectiveDate: TcxGridDBBandedColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'SalePriceListEffectiveDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 7
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cgStockBalance1: TcxGridLevel
          GridView = cgvPrevStockBalance
        end
      end
      object pnlCustom: TPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblWarehouse: TLabel
          Left = 207
          Top = 5
          Width = 37
          Height = 13
          Caption = 'Gudang'
          Transparent = True
        end
        object lblCategory: TLabel
          Left = 438
          Top = 5
          Width = 40
          Height = 13
          Caption = 'Kategori'
          Transparent = True
        end
        object Label1: TLabel
          Left = 7
          Top = 5
          Width = 36
          Height = 13
          Caption = 'Periode'
          Transparent = True
        end
        object lcbWarehouse: TcxExtLookupComboBox
          Left = 248
          Top = 3
          Properties.View = cgvPrevWarehouseStock
          Properties.KeyFieldNames = 'WarehouseId'
          Properties.ListFieldItem = cgvPrevWarehouseStockWarehouseName
          TabOrder = 2
          Width = 179
        end
        object ccbCategoryId: TcxCheckComboBox
          Left = 483
          Top = 3
          BeepOnEnter = False
          Properties.DropDownSizeable = True
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          TabOrder = 3
          Width = 179
        end
        object btnShow: TcxButton
          Left = 668
          Top = 2
          Width = 82
          Height = 21
          Action = actShow
          Spacing = 0
          TabOrder = 4
        end
        object cbMonth: TcxComboBox
          Left = 47
          Top = 3
          BeepOnEnter = False
          TabOrder = 0
          Text = 'cbMonth'
          Width = 80
        end
        object cbYear: TcxComboBox
          Left = 126
          Top = 3
          BeepOnEnter = False
          TabOrder = 1
          Text = 'cbYear'
          Width = 70
        end
      end
    end
    object tsStockCard: TcxTabSheet
      Caption = 'Kartu Stok'
      ImageIndex = 1
      object cgPrevStockCard: TcxGrid
        Left = 0
        Top = 33
        Width = 783
        Height = 325
        Align = alClient
        TabOrder = 0
        object cgvPrevStockCard2: TcxGridBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.;-#,##0.'
              Kind = skSum
              Column = cgvPrevStockCard2QtyIn
            end
            item
              Format = '#,##0.;-#,##0.'
              Kind = skSum
              Column = cgvPrevStockCard2QtyOut
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevStockCard2ValueIn
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevStockCard2ValueOut
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
          object cgvPrevStockCard2Date: TcxGridBandedColumn
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
          object cgvPrevStockCard2TransactionTypeName: TcxGridBandedColumn
            Caption = 'Transaksi'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCard2ReferenceId: TcxGridBandedColumn
            Caption = 'Ref'
            Visible = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCard2ReferenceIdExternal: TcxGridBandedColumn
            Caption = 'Ref Ext'
            Visible = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevStockCard2ReferenceName: TcxGridBandedColumn
            Caption = 'Nama'
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevStockCard2ItemText: TcxGridBandedColumn
            Caption = 'Keterangan'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevStockCard2QtyIn: TcxGridBandedColumn
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
          object cgvPrevStockCard2QtyOut: TcxGridBandedColumn
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
          object cgvPrevStockCard2QtyBalance: TcxGridBandedColumn
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
          object cgvPrevStockCard2ValueIn: TcxGridBandedColumn
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
          object cgvPrevStockCard2ValueOut: TcxGridBandedColumn
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
          object cgvPrevStockCard2ValueBalance: TcxGridBandedColumn
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
          object cgvPrevStockCard2ValueAVG: TcxGridBandedColumn
            Caption = 'AVG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Sorting = False
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cgvPrevStockCard: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevStockCard
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.GroupByBox = False
          Bands = <
            item
              Options.Moving = False
            end
            item
              Caption = 'Qty'
              Options.Moving = False
            end
            item
              Caption = 'Nilai'
              Options.Moving = False
            end>
          object cgvPrevStockCardTransactionDate: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'TransactionDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardTransactionTypeName: TcxGridDBBandedColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'TransactionTypeName'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardReferenceCode: TcxGridDBBandedColumn
            Caption = 'Reference'
            DataBinding.FieldName = 'ReferenceCode'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyIn: TcxGridDBBandedColumn
            Caption = 'Masuk'
            DataBinding.FieldName = 'QtyIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyOut: TcxGridDBBandedColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'QtyOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardQtyBalance: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'QtyBalance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueIn: TcxGridDBBandedColumn
            Caption = 'Masuk'
            DataBinding.FieldName = 'ValueIn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueOut: TcxGridDBBandedColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'ValueOut'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevStockCardValueBalance: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'ValueBalance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Moving = False
            Position.BandIndex = 2
            Position.ColIndex = 2
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
        Width = 783
        Height = 33
        Align = alTop
        Color = 15790320
        TabOrder = 1
        DesignSize = (
          783
          33)
        object lblPeriod: TLabel
          Left = 8
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Periode'
          Transparent = True
        end
        object Label2: TLabel
          Left = 215
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object cbMonthStockCard: TcxComboBox
          Left = 48
          Top = 6
          BeepOnEnter = False
          Properties.DropDownRows = 12
          Style.Color = clWindow
          TabOrder = 0
          Width = 89
        end
        object cbYearStockCard: TcxComboBox
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
          BeepOnEnter = False
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsPrevStockBalance
          TabOrder = 2
          Width = 377
        end
        object dbeWarehouseName: TcxDBTextEdit
          Left = 632
          Top = 6
          Anchors = [akLeft, akTop, akRight]
          BeepOnEnter = False
          DataBinding.DataField = 'WarehouseName'
          DataBinding.DataSource = dsPrevStockBalance
          TabOrder = 3
          Width = 145
        end
      end
    end
    object tsInfoItem: TcxTabSheet
      Caption = 'Info Barang'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = 15790320
        TabOrder = 0
        DesignSize = (
          783
          33)
        object Label3: TLabel
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
          BeepOnEnter = False
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsPrevStockBalance
          TabOrder = 0
          Width = 579
        end
        object dbeWarehouseName2: TcxDBTextEdit
          Left = 632
          Top = 6
          Anchors = [akLeft, akTop, akRight]
          BeepOnEnter = False
          DataBinding.DataField = 'WarehouseName'
          DataBinding.DataSource = dsPrevStockBalance
          TabOrder = 1
          Width = 145
        end
      end
      object pcInfoBarang: TcxPageControl
        Left = 0
        Top = 33
        Width = 783
        Height = 325
        ActivePage = tsTallySheet
        Align = alClient
        TabOrder = 1
        OnChange = pcInfoBarangChange
        ClientRectBottom = 319
        ClientRectLeft = 3
        ClientRectRight = 777
        ClientRectTop = 26
        object tsTallySheet: TcxTabSheet
          Caption = 'Detail'
          ImageIndex = 0
          object cgPrevTallySheet: TcxGrid
            Left = 0
            Top = 0
            Width = 520
            Height = 293
            Align = alClient
            TabOrder = 0
            object cgvPrevTallySheet: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPrevTallySheet
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'TallySheetCode'
                  Column = cgvPrevTallySheetTallySheetCode
                end
                item
                  Kind = skSum
                  FieldName = 'TotalQty'
                  Column = cgvPrevTallySheetTotalQty
                end
                item
                  Kind = skSum
                  FieldName = 'TotalVolume'
                  Column = cgvPrevTallySheetTotalVolume
                end
                item
                  Kind = skSum
                  FieldName = 'TotalLuas'
                  Column = cgvPrevTallySheetTotalLuas
                end
                item
                  Kind = skSum
                  FieldName = 'TotalBerat'
                  Column = cgvPrevTallySheetTotalBerat
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvPrevTallySheetTallySheetId: TcxGridDBColumn
                DataBinding.FieldName = 'TallySheetId'
                Visible = False
                VisibleForCustomization = False
              end
              object cgvPrevTallySheetItemId: TcxGridDBColumn
                DataBinding.FieldName = 'ItemId'
                Visible = False
                VisibleForCustomization = False
              end
              object cgvPrevTallySheetWarehouseId: TcxGridDBColumn
                Caption = 'Gudang'
                DataBinding.FieldName = 'WarehouseId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = dmInventory.cgvPrevWarehouse
                Properties.KeyFieldNames = 'WarehouseId'
                Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
                Visible = False
              end
              object cgvPrevTallySheetTallySheetCode: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'TallySheetCode'
              end
              object cgvPrevTallySheetTallySheetDate: TcxGridDBColumn
                Caption = 'Tanggal'
                DataBinding.FieldName = 'TallySheetDate'
                PropertiesClassName = 'TcxDateEditProperties'
              end
              object cgvPrevTallySheetTotalQty: TcxGridDBColumn
                Caption = 'Total Qty'
                DataBinding.FieldName = 'TotalQty'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvPrevTallySheetTotalLuas: TcxGridDBColumn
                Caption = 'Total M2'
                DataBinding.FieldName = 'TotalLuas'
                PropertiesClassName = 'TcxCalcEditProperties'
                Visible = False
              end
              object cgvPrevTallySheetTotalVolume: TcxGridDBColumn
                Caption = 'Total M3'
                DataBinding.FieldName = 'TotalVolume'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvPrevTallySheetTotalBerat: TcxGridDBColumn
                Caption = 'Total Berat'
                DataBinding.FieldName = 'TotalBerat'
                PropertiesClassName = 'TcxCalcEditProperties'
                Visible = False
              end
              object cgvPrevTallySheetPurchaseInvoiceId: TcxGridDBColumn
                Caption = 'No Nota'
                DataBinding.FieldName = 'PurchaseInvoiceId'
                Visible = False
              end
              object cgvPrevTallySheetLastRef: TcxGridDBColumn
                Caption = 'No Mutasi'
                DataBinding.FieldName = 'LastRef'
                Visible = False
              end
              object cgvPrevTallySheetLastTransaction: TcxGridDBColumn
                Caption = 'Tgl Mutasi'
                DataBinding.FieldName = 'LastTransaction'
                Visible = False
              end
              object cgvPrevTallySheetTallymanId: TcxGridDBColumn
                Caption = 'Tallyman'
                DataBinding.FieldName = 'TallymanId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = dmInventory.cgvPrevTallyman
                Properties.KeyFieldNames = 'TallymanId'
                Properties.ListFieldItem = dmInventory.cgvPrevTallymanTallymanName
              end
            end
            object cgPrevTallySheetLevel1: TcxGridLevel
              GridView = cgvPrevTallySheet
            end
          end
          object cgPrevTallySheetDt: TcxGrid
            Left = 524
            Top = 0
            Width = 250
            Height = 293
            Align = alRight
            TabOrder = 1
            object cgvPrevTallySheetDt: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPrevTallySheetDt
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'No'
                  Column = cgvPrevTallySheetDtNo
                end
                item
                  Kind = skSum
                  FieldName = 'Qty'
                  Column = cgvPrevTallySheetDtQty
                end
                item
                  Kind = skSum
                  FieldName = 'M3'
                  Column = cgvPrevTallySheetDtM3
                end
                item
                  Kind = skSum
                  FieldName = 'Luas'
                  Column = cgvPrevTallySheetDtLuas
                end
                item
                  Kind = skSum
                  FieldName = 'Berat'
                  Column = cgvPrevTallySheetDtBerat
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvPrevTallySheetDtTallySheetId: TcxGridDBColumn
                DataBinding.FieldName = 'TallySheetId'
                Visible = False
                VisibleForCustomization = False
              end
              object cgvPrevTallySheetDtNo: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                Visible = False
                Width = 30
              end
              object cgvPrevTallySheetDtT: TcxGridDBColumn
                DataBinding.FieldName = 'T'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 40
              end
              object cgvPrevTallySheetDtL: TcxGridDBColumn
                DataBinding.FieldName = 'L'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 40
              end
              object cgvPrevTallySheetDtP: TcxGridDBColumn
                DataBinding.FieldName = 'P'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 40
              end
              object cgvPrevTallySheetDtD1: TcxGridDBColumn
                DataBinding.FieldName = 'D1'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Visible = False
                Width = 40
              end
              object cgvPrevTallySheetDtD2: TcxGridDBColumn
                DataBinding.FieldName = 'D2'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Visible = False
                Width = 40
              end
              object cgvPrevTallySheetDtDRata: TcxGridDBColumn
                DataBinding.FieldName = 'DRata'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Visible = False
                Width = 40
              end
              object cgvPrevTallySheetDtQty: TcxGridDBColumn
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cgvPrevTallySheetDtM3: TcxGridDBColumn
                DataBinding.FieldName = 'M3'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cgvPrevTallySheetDtLuas: TcxGridDBColumn
                Caption = 'M2'
                DataBinding.FieldName = 'Luas'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Visible = False
              end
              object cgvPrevTallySheetDtBerat: TcxGridDBColumn
                DataBinding.FieldName = 'Berat'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Visible = False
              end
            end
            object cgPrevTallySheetDtLevel1: TcxGridLevel
              GridView = cgvPrevTallySheetDt
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 520
            Top = 0
            Width = 4
            Height = 293
            HotZoneClassName = 'TcxXPTaskBarStyle'
            AlignSplitter = salRight
            Control = cgPrevTallySheetDt
          end
        end
        object tsStockOnHandValue: TcxTabSheet
          Caption = 'Nilai'
          ImageIndex = 1
          object cgPrevSOHValue: TcxGrid
            Left = 0
            Top = 31
            Width = 774
            Height = 262
            Align = alClient
            TabOrder = 0
            object cgvPrevSOHValue: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              DataController.DataSource = dsPrevStockOnHandValue
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'COGSQty'
                  Column = cgvPrevSOHValueCOGSQty
                end
                item
                  Kind = skSum
                  FieldName = 'COGSValue'
                  Column = cgvPrevSOHValueCOGSValue
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvPrevSOHValueWarehouseId: TcxGridDBColumn
                Caption = 'Gudang'
                DataBinding.FieldName = 'WarehouseId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = dmInventory.cgvPrevWarehouse
                Properties.KeyFieldNames = 'WarehouseId'
                Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
                Visible = False
                Options.Filtering = False
              end
              object cgvPrevSOHValueItemId: TcxGridDBColumn
                Caption = 'Kode Item'
                DataBinding.FieldName = 'ItemId'
                Visible = False
                Options.Editing = False
                VisibleForCustomization = False
              end
              object cgvPrevSOHValueCOGSDate: TcxGridDBColumn
                Caption = 'Tanggal'
                DataBinding.FieldName = 'COGSDate'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.CellMerging = True
                SortIndex = 0
                SortOrder = soAscending
              end
              object cgvPrevSOHValueCOGSQty: TcxGridDBColumn
                Caption = ' Qty'
                DataBinding.FieldName = 'COGSQty'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Filtering = False
              end
              object cgvPrevSOHValueCOGSValue: TcxGridDBColumn
                Caption = 'Harga'
                DataBinding.FieldName = 'COGSValue'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Filtering = False
              end
              object cgvPrevSOHValueTotalCOGS: TcxGridDBColumn
                Caption = 'Total'
                DataBinding.FieldName = 'TotalCOGS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Filtering = False
              end
            end
            object cgPrevSOHValueLevel1: TcxGridLevel
              GridView = cgvPrevSOHValue
            end
          end
          object pnlClosingDate: TPanel
            Left = 0
            Top = 0
            Width = 774
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblClosingDate: TLabel
              Left = 8
              Top = 8
              Width = 73
              Height = 13
              Caption = 'Tanggal Proses'
              Transparent = True
            end
            object edtNewClosingDate: TcxDateEdit
              Left = 87
              Top = 6
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 0
              Width = 164
            end
          end
        end
        object tsPurchasePrice: TcxTabSheet
          Caption = 'Harga Beli'
          ImageIndex = 2
          object cgPrevPurchasePrice: TcxGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 293
            Align = alClient
            TabOrder = 0
            RootLevelOptions.DetailTabsPosition = dtpTop
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
            object cgPrevPurchasePriceLevel1: TcxGridLevel
              Caption = 'Price List'
            end
            object cgPrevPurchasePriceLevel2: TcxGridLevel
              Caption = 'Per Supplier'
              GridView = cgvPrevPurchasePrice
            end
          end
        end
        object tsSalePrice: TcxTabSheet
          Caption = 'Harga Jual'
          ImageIndex = 3
          object cgPrevSalePrice: TcxGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 293
            Align = alClient
            TabOrder = 0
            RootLevelOptions.DetailTabsPosition = dtpTop
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
            object cgPrevSalePriceLevel1: TcxGridLevel
              Caption = 'Price List'
            end
            object cgPrevSalePriceLevel2: TcxGridLevel
              Caption = 'Per Customer'
              GridView = cgvPrevSalePrice
            end
          end
        end
        object tsExpired: TcxTabSheet
          Caption = 'Expired'
          ImageIndex = 4
          object cgPrevStockExpired: TcxGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 293
            Align = alClient
            TabOrder = 0
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
            object cgPrevStockExpiredLevel1: TcxGridLevel
              GridView = cgvPrevStockExpired
            end
          end
        end
        object tsImage: TcxTabSheet
          Caption = 'Gambar'
          ImageIndex = 5
          object cgPrevItemImage: TcxGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 293
            Align = alClient
            TabOrder = 0
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
            object cgPrevItemImageLevel1: TcxGridLevel
              GridView = cgvPrevItemImage
            end
          end
        end
      end
    end
  end
  object pnlLegend: TPanel [2]
    Left = 0
    Top = 440
    Width = 792
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
  inherited ActionList1: TActionList
    object actShow: TAction
      Caption = 'Show'
      OnExecute = actShowExecute
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryPrevStockBalance: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tahun'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bulan'
        Size = -1
        Value = Null
      end
      item
        Name = 'WarehouseId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @Tahun integer,'
      '  @Bulan integer,'
      '  @WarehouseId varchar'
      ''
      'set @Tahun = :Tahun'
      'set @Bulan = :Bulan'
      'set @WarehouseId = :WarehouseId'
      ''
      'select'
      '  a.*,'
      '  IsNull(b.MinStockQty, 0) as MinStockQty,'
      '  IsNull(c.QtyBalance, 0) as QtyOpening,'
      '  IsNull(d.QtyIn, 0) as QtyIn,'
      '  IsNull(d.QtyOut, 0) as QtyOut,'
      '  IsNull(d.QtyBalance, 0) as QtyBalance,'
      '  IsNull(c.ValueBalance, 0) as ValueOpening,'
      '  IsNull(d.ValueIn, 0) as ValueIn,'
      '  IsNull(d.ValueOut, 0) as ValueOut,'
      '  IsNull(d.ValueBalance, 0) as ValueBalance,'
      
        '  (case when d.QtyBalance <> 0 then d.ValueBalance / d.QtyBalanc' +
        'e else 0 end) as PriceAVG,'
      '  IsNull(e.QtyPOBalance, 0) as QtyPOOpening,'
      '  IsNull(f.QtyPOIn, 0) as QtyPOIn,'
      '  IsNull(f.QtyPOOut, 0) as QtyPOOut,'
      '  IsNull(f.QtyPOBalance, 0) as QtyPOBalance,'
      '  IsNull(e.QtySOBalance, 0) as QtySOOpening,'
      '  IsNull(f.QtySOIn, 0) as QtySOIn,'
      '  IsNull(f.QtySOOut, 0) as QtySOOut,'
      '  IsNull(f.QtySOBalance, 0) as QtySOBalance,'
      '  g.Price1 as PurchasePriceListPrice1, '
      '  g.Qty1 as PurchasePriceListQty1, '
      '  g.MinQty1 as PurchasePriceMinQty1, '
      '  g.EffectiveDate as PurchasePriceEffectiveDate,'
      '  h.Price1 as SalePriceListPrice1, '
      '  h.Qty1 as SalePriceListQty1, '
      '  h.MinQty1 as SalePriceListMinQty1, '
      '  h.EffectiveDate as SalePriceListEffectiveDate'
      'from vwItemWarehouse a'
      'left join ItemMinStock b on'
      '  (b.ItemId = a.ItemId and b.WarehouseId = a.WarehouseId)'
      'left join StockBalance c on'
      '  (c.ItemId = a.ItemId and c.WarehouseId = a.WarehouseId'
      '  and c.Tahun = @Tahun - floor(2/(1 + @Bulan))'
      '  and c.Bulan = (@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'
      'left join StockBalance d on'
      '  (d.ItemId = a.ItemId and d.WarehouseId = a.WarehouseId'
      '  and d.Tahun = @Tahun and d.Bulan = @Bulan)'
      'left join ItemOrderBalance e on'
      '  (e.ItemId = a.ItemId'
      '  and e.Tahun = @Tahun - floor(2/(1 + @Bulan))'
      '  and e.Bulan = (@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'
      'left join ItemOrderBalance f on'
      
        '  (f.ItemId = a.ItemId and f.Tahun = @Tahun and f.Bulan = @Bulan' +
        ')'
      'left join PurchasePriceList g on g.ItemId = a.ItemId'
      'left join SalePriceList h on h.ItemId = a.ItemId'
      'where a.WarehouseId like @WarehouseId')
    Left = 136
    Top = 144
  end
  object dsPrevStockBalance: TDataSource
    DataSet = qryPrevStockBalance
    Left = 168
    Top = 144
  end
  object dsPrevWarehouseStock: TDataSource
    DataSet = qryPrevWarehouseStock
    Left = 168
    Top = 208
  end
  object qryPrevWarehouseStock: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        '  cast(WarehouseId as varchar) as WarehouseId, CityId, Warehouse' +
        'Code, WarehouseName,'
      '  1 as OrderNo'
      'from Warehouse'
      'union all'
      'select '
      '  '#39'#'#39' as WarehouseId, null as CityId, '
      
        '  '#39'TOTAL'#39' as WarehouseCode, '#39'Total Semua Gudang'#39' as WarehouseNam' +
        'e,'
      '  2 as OrderNo'
      'union all'
      'select '
      '  '#39'%'#39' as WarehouseId, null as CityId, '
      '  '#39'ALL'#39' as WarehouseCode, '#39'Semua Gudang'#39' as WarehouseName,'
      '  0 as OrderNo'
      'order by OrderNo')
    Left = 136
    Top = 208
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 208
    object cgvPrevWarehouseStock: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevWarehouseStock
      DataController.KeyFieldNames = 'WarehouseId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevWarehouseStockWarehouseId: TcxGridDBColumn
        DataBinding.FieldName = 'WarehouseId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevWarehouseStockWarehouseCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'WarehouseCode'
      end
      object cgvPrevWarehouseStockWarehouseName: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'WarehouseName'
      end
      object cgvPrevWarehouseStockCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
      object cgvPrevWarehouseStockOrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNo'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cgvPrevItemCategory: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemCategoryStock
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevItemCategoryItemCategoryId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemCategoryId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemCategoryItemCategoryCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCategoryCode'
      end
      object cgvPrevItemCategoryItemCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryName'
      end
    end
  end
  object qryPrevItemCategoryStock: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  cast(ItemCategoryId as varchar) as ItemCategoryId, '
      '  ItemCategoryCode, ItemCategoryName,'
      '  1 as OrderNo'
      'from ItemCategory'
      'union all'
      'select '
      '  '#39'%'#39' as ItemCategoryId, '#39'ALL'#39' as ItemCategoryCode, '
      '  '#39'Semua Kategori'#39' as ItemCategoryName,'
      '  0 as OrderNo'
      'order by OrderNo, ItemCategoryName')
    Left = 136
    Top = 240
  end
  object dsPrevItemCategoryStock: TDataSource
    DataSet = qryPrevItemCategoryStock
    Left = 168
    Top = 240
  end
  object qryPrevStockCard: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'WarehouseId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'Year'
        Size = -1
        Value = Null
      end
      item
        Name = 'Month'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @WarehouseId int,'
      '  @ItemId int,'
      '  @Year int,'
      '  @Month int,'
      '  @YearOpening int,'
      '  @MonthOpening int'
      ''
      'set @WarehouseId = :WarehouseId'
      'set @ItemId = :ItemId'
      'set @Year = :Year'
      'set @Month = :Month'
      ''
      'if @Month > 1'
      'begin'
      '  set @YearOpening = @Year'
      '  set @MonthOpening = @Month - 1'
      'end'
      'else'
      'begin'
      '  set @YearOpening = @Year - 1'
      '  set @MonthOpening = 12'
      'end'
      ''
      'select'
      
        '  cast(cast(@Year as char(4)) + '#39'/'#39' + cast(@Month as char(2))+ '#39 +
        '/01'#39' as datetime) + DateAdd(ms, 0, 0) as TransactionDate, '
      '  '#39'Saldo awal'#39' as TransactionTypeName, '
      '  cast(0 as float) as QtyIn, '
      '  cast(0 as float) as QtyOut, '
      '  IsNull((select a.QtyBalance'
      '  from StockBalance a'
      '  where a.WarehouseId = @WarehouseId'
      '  and a.ItemId = @ItemId'
      '  and a.Tahun = @YearOpening'
      '  and a.Bulan = @MonthOpening), 0) as QtyBalance,'
      '  cast(0 as float) as ValueIn, '
      '  cast(0 as float) as ValueOut, '
      '  IsNull((select a.ValueBalance'
      '  from StockBalance a'
      '  where a.WarehouseId = @WarehouseId'
      '  and a.ItemId = @ItemId'
      '  and a.Tahun = @YearOpening'
      '  and a.Bulan = @MonthOpening), 0) as ValueBalance'
      ''
      'union all'
      ''
      'select '
      '  a.TransactionDate, b.TransactionTypeName,'
      
        '  (case when (b.StatusTransaction = '#39'0'#39') then a.TotalQty else 0 ' +
        'end) as QtyIn,'
      
        '  (case when (b.StatusTransaction = '#39'1'#39') then a.TotalQty else 0 ' +
        'end) as QtyOut,'
      '  (c.QtyBalance + IsNull(d.QtyBalance, 0)) as QtyBalance,'
      '  cast(0 as float) as ValueIn, --XXXX'
      '  cast(0 as float) as ValueOut,--XXXX '
      '  cast(0 as float) as ValueBalance--XXXX'
      'from TransactionRecord a'
      
        'left join TransactionType b on b.TransactionTypeId = a.Transacti' +
        'onTypeId'
      
        'left join TransactionBalance c on c.TransactionId = a.Transactio' +
        'nId'
      'left join StockBalance d on '
      '  (d.ItemId = a.ItemId and d.WarehouseId = a.WarehouseId'
      
        '  and d.Tahun = year(a.TransactionDate) - floor(2/(1 + month(a.T' +
        'ransactionDate)))'
      
        '  and d.Bulan = (month(a.TransactionDate) - 1) + (floor(2/(1 + m' +
        'onth(a.TransactionDate)) * 12)))'
      'where a.WarehouseId = @WarehouseId'
      'and a.ItemId = @ItemId'
      'and Year(a.TransactionDate) = @Year'
      'and Month(a.TransactionDate) = @Month'
      ''
      'order by TransactionDate')
    Left = 216
    Top = 144
  end
  object dsPrevStockCard: TDataSource
    DataSet = qryPrevStockCard
    Left = 248
    Top = 144
  end
  object dsPrevTallySheet: TDataSource
    DataSet = qryPrevTallySheet
    Left = 328
    Top = 144
  end
  object qryPrevStockBalanceTotal: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tahun'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bulan'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @Tahun integer,'
      '  @Bulan integer'
      ''
      'set @Tahun = :Tahun'
      'set @Bulan = :Bulan'
      ''
      'select '
      
        '  a.ItemId, a.ItemCode, a.ItemName, a.UnitMeasure, a.ItemCategor' +
        'yId, a.ItemCategoryName,'
      '  sum(IsNull(b.MinStockQty, 0)) as MinStockQty,'
      '  sum(IsNull(c.QtyBalance, 0)) as QtyOpening,'
      '  sum(IsNull(d.QtyIn, 0)) as QtyIn,'
      '  sum(IsNull(d.QtyOut, 0)) as QtyOut,'
      '  sum(IsNull(d.QtyBalance, 0)) as QtyBalance,'
      '  sum(IsNull(c.ValueBalance, 0)) as ValueOpening,'
      '  sum(IsNull(d.ValueIn, 0)) as ValueIn,'
      '  sum(IsNull(d.ValueOut, 0)) as ValueOut,'
      '  sum(IsNull(d.ValueBalance, 0)) as ValueBalance,  '
      
        '  sum((case when d.QtyBalance <> 0 then d.ValueBalance / d.QtyBa' +
        'lance else 0 end)) as PriceAVG,'
      '  sum(IsNull(e.QtyPOBalance, 0)) as QtyPOOpening,'
      '  sum(IsNull(f.QtyPOIn, 0)) as QtyPOIn, '
      '  sum(IsNull(f.QtyPOOut, 0)) as QtyPOOut, '
      '  sum(IsNull(f.QtyPOBalance, 0)) as QtyPOBalance, '
      '  sum(IsNull(e.QtySOBalance, 0)) as QtySOOpening,'
      '  sum(IsNull(f.QtySOIn, 0)) as QtySOIn, '
      '  sum(IsNull(f.QtySOOut, 0)) as QtySOOut, '
      '  sum(IsNull(f.QtySOBalance, 0)) as QtySOBalance,'
      '  g.Price1 as PurchasePriceListPrice1, '
      '  g.Qty1 as PurchasePriceListQty1, '
      '  g.MinQty1 as PurchasePriceMinQty1, '
      '  g.EffectiveDate as PurchasePriceEffectiveDate,'
      '  h.Price1 as SalePriceListPrice1, '
      '  h.Qty1 as SalePriceListQty1, '
      '  h.MinQty1 as SalePriceListMinQty1, '
      '  h.EffectiveDate as SalePriceListEffectiveDate'
      'from vwItemWarehouse a'
      'left join ItemMinStock b on '
      '  (b.ItemId = a.ItemId and b.WarehouseId = a.WarehouseId)'
      'left join StockBalance c on '
      '  (c.ItemId = a.ItemId and c.WarehouseId = a.WarehouseId '
      '  and c.Tahun = @Tahun - floor(2/(1 + @Bulan))'
      '  and c.Bulan = (@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'
      'left join StockBalance d on '
      '  (d.ItemId = a.ItemId and d.WarehouseId = a.WarehouseId '
      '  and d.Tahun = @Tahun and d.Bulan = @Bulan)'
      'left join ItemOrderBalance e on '
      '  (e.ItemId = a.ItemId '
      '  and e.Tahun = @Tahun - floor(2/(1 + @Bulan))'
      '  and e.Bulan = (@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'
      'left join ItemOrderBalance f on '
      
        '  (f.ItemId = a.ItemId and f.Tahun = @Tahun and f.Bulan = @Bulan' +
        ')'
      'left join PurchasePriceList g on g.ItemId = a.ItemId'
      'left join SalePriceList h on h.ItemId = a.ItemId'
      'group by a.ItemId, a.ItemCode, a.ItemName, '
      '  a.UnitMeasure, a.ItemCategoryId, a.ItemCategoryName,'
      '  g.Price1, g.Qty1, g.MinQty1, g.EffectiveDate,'
      '  h.Price1, h.Qty1, h.MinQty1, h.EffectiveDate'
      '')
    Left = 136
    Top = 176
  end
  object sqlPrevStockBalance: TIvSQLStorage
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    DatabaseEngine = dbMsSql
    Dataset = qryPrevStockBalance
    SQLMsSQL = 
      'declare'#13#10'  @Tahun integer,'#13#10'  @Bulan integer,'#13#10'  @WarehouseId va' +
      'rchar'#13#10#13#10'set @Tahun = :Tahun'#13#10'set @Bulan = :Bulan'#13#10'set @Warehous' +
      'eId = :WarehouseId'#13#10#13#10'select'#13#10'  a.*,'#13#10'  IsNull(b.MinStockQty, 0)' +
      ' as MinStockQty,'#13#10'  IsNull(c.QtyBalance, 0) as QtyOpening,'#13#10'  Is' +
      'Null(d.QtyIn, 0) as QtyIn,'#13#10'  IsNull(d.QtyOut, 0) as QtyOut,'#13#10'  ' +
      'IsNull(d.QtyBalance, 0) as QtyBalance,'#13#10'  IsNull(c.ValueBalance,' +
      ' 0) as ValueOpening,'#13#10'  IsNull(d.ValueIn, 0) as ValueIn,'#13#10'  IsNu' +
      'll(d.ValueOut, 0) as ValueOut,'#13#10'  IsNull(d.ValueBalance, 0) as V' +
      'alueBalance,'#13#10'  (case when d.QtyBalance <> 0 then d.ValueBalance' +
      ' / d.QtyBalance else 0 end) as PriceAVG,'#13#10'  IsNull(e.QtyPOBalanc' +
      'e, 0) as QtyPOOpening,'#13#10'  IsNull(f.QtyPOIn, 0) as QtyPOIn,'#13#10'  Is' +
      'Null(f.QtyPOOut, 0) as QtyPOOut,'#13#10'  IsNull(f.QtyPOBalance, 0) as' +
      ' QtyPOBalance,'#13#10'  IsNull(e.QtySOBalance, 0) as QtySOOpening,'#13#10'  ' +
      'IsNull(f.QtySOIn, 0) as QtySOIn,'#13#10'  IsNull(f.QtySOOut, 0) as Qty' +
      'SOOut,'#13#10'  IsNull(f.QtySOBalance, 0) as QtySOBalance,'#13#10'  g.Price1' +
      ' as PurchasePriceListPrice1, '#13#10'  g.Qty1 as PurchasePriceListQty1' +
      ', '#13#10'  g.MinQty1 as PurchasePriceMinQty1, '#13#10'  g.EffectiveDate as ' +
      'PurchasePriceEffectiveDate,'#13#10'  h.Price1 as SalePriceListPrice1, ' +
      #13#10'  h.Qty1 as SalePriceListQty1, '#13#10'  h.MinQty1 as SalePriceListM' +
      'inQty1, '#13#10'  h.EffectiveDate as SalePriceListEffectiveDate'#13#10'from ' +
      'vwItemWarehouse a'#13#10'left join ItemMinStock b on'#13#10'  (b.ItemId = a.' +
      'ItemId and b.WarehouseId = a.WarehouseId)'#13#10'left join StockBalanc' +
      'e c on'#13#10'  (c.ItemId = a.ItemId and c.WarehouseId = a.WarehouseId' +
      #13#10'  and c.Tahun = @Tahun - floor(2/(1 + @Bulan))'#13#10'  and c.Bulan ' +
      '= (@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'#13#10'left join StockB' +
      'alance d on'#13#10'  (d.ItemId = a.ItemId and d.WarehouseId = a.Wareho' +
      'useId'#13#10'  and d.Tahun = @Tahun and d.Bulan = @Bulan)'#13#10'left join I' +
      'temOrderBalance e on'#13#10'  (e.ItemId = a.ItemId'#13#10'  and e.Tahun = @T' +
      'ahun - floor(2/(1 + @Bulan))'#13#10'  and e.Bulan = (@Bulan - 1) + (fl' +
      'oor(2/(1 + @Bulan)) * 12))'#13#10'left join ItemOrderBalance f on'#13#10'  (' +
      'f.ItemId = a.ItemId and f.Tahun = @Tahun and f.Bulan = @Bulan)'#13#10 +
      'left join PurchasePriceList g on g.ItemId = a.ItemId'#13#10'left join ' +
      'SalePriceList h on h.ItemId = a.ItemId'#13#10'where a.WarehouseId like' +
      ' @WarehouseId'#13#10
    Version = '2.5'
    Left = 104
    Top = 144
  end
  object sqlPrevStockBalanceTotal: TIvSQLStorage
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    DatabaseEngine = dbMsSql
    Dataset = qryPrevStockBalanceTotal
    SQLMsSQL = 
      'declare'#13#10'  @Tahun integer,'#13#10'  @Bulan integer'#13#10#13#10'set @Tahun = :Ta' +
      'hun'#13#10'set @Bulan = :Bulan'#13#10#13#10'select '#13#10'  a.ItemId, a.ItemCode, a.I' +
      'temName, a.UnitMeasure, a.ItemCategoryId, a.ItemCategoryName,'#13#10' ' +
      ' sum(IsNull(b.MinStockQty, 0)) as MinStockQty,'#13#10'  sum(IsNull(c.Q' +
      'tyBalance, 0)) as QtyOpening,'#13#10'  sum(IsNull(d.QtyIn, 0)) as QtyI' +
      'n,'#13#10'  sum(IsNull(d.QtyOut, 0)) as QtyOut,'#13#10'  sum(IsNull(d.QtyBal' +
      'ance, 0)) as QtyBalance,'#13#10'  sum(IsNull(c.ValueBalance, 0)) as Va' +
      'lueOpening,'#13#10'  sum(IsNull(d.ValueIn, 0)) as ValueIn,'#13#10'  sum(IsNu' +
      'll(d.ValueOut, 0)) as ValueOut,'#13#10'  sum(IsNull(d.ValueBalance, 0)' +
      ') as ValueBalance,  '#13#10'  sum((case when d.QtyBalance <> 0 then d.' +
      'ValueBalance / d.QtyBalance else 0 end)) as PriceAVG,'#13#10'  sum(IsN' +
      'ull(e.QtyPOBalance, 0)) as QtyPOOpening,'#13#10'  sum(IsNull(f.QtyPOIn' +
      ', 0)) as QtyPOIn, '#13#10'  sum(IsNull(f.QtyPOOut, 0)) as QtyPOOut, '#13#10 +
      '  sum(IsNull(f.QtyPOBalance, 0)) as QtyPOBalance, '#13#10'  sum(IsNull' +
      '(e.QtySOBalance, 0)) as QtySOOpening,'#13#10'  sum(IsNull(f.QtySOIn, 0' +
      ')) as QtySOIn, '#13#10'  sum(IsNull(f.QtySOOut, 0)) as QtySOOut, '#13#10'  s' +
      'um(IsNull(f.QtySOBalance, 0)) as QtySOBalance,'#13#10'  g.Price1 as Pu' +
      'rchasePriceListPrice1, '#13#10'  g.Qty1 as PurchasePriceListQty1, '#13#10'  ' +
      'g.MinQty1 as PurchasePriceMinQty1, '#13#10'  g.EffectiveDate as Purcha' +
      'sePriceEffectiveDate,'#13#10'  h.Price1 as SalePriceListPrice1, '#13#10'  h.' +
      'Qty1 as SalePriceListQty1, '#13#10'  h.MinQty1 as SalePriceListMinQty1' +
      ', '#13#10'  h.EffectiveDate as SalePriceListEffectiveDate'#13#10'from vwItem' +
      'Warehouse a'#13#10'left join ItemMinStock b on '#13#10'  (b.ItemId = a.ItemI' +
      'd and b.WarehouseId = a.WarehouseId)'#13#10'left join StockBalance c o' +
      'n '#13#10'  (c.ItemId = a.ItemId and c.WarehouseId = a.WarehouseId '#13#10' ' +
      ' and c.Tahun = @Tahun - floor(2/(1 + @Bulan))'#13#10'  and c.Bulan = (' +
      '@Bulan - 1) + (floor(2/(1 + @Bulan)) * 12))'#13#10'left join StockBala' +
      'nce d on '#13#10'  (d.ItemId = a.ItemId and d.WarehouseId = a.Warehous' +
      'eId '#13#10'  and d.Tahun = @Tahun and d.Bulan = @Bulan)'#13#10'left join It' +
      'emOrderBalance e on '#13#10'  (e.ItemId = a.ItemId '#13#10'  and e.Tahun = @' +
      'Tahun - floor(2/(1 + @Bulan))'#13#10'  and e.Bulan = (@Bulan - 1) + (f' +
      'loor(2/(1 + @Bulan)) * 12))'#13#10'left join ItemOrderBalance f on '#13#10' ' +
      ' (f.ItemId = a.ItemId and f.Tahun = @Tahun and f.Bulan = @Bulan)' +
      #13#10'left join PurchasePriceList g on g.ItemId = a.ItemId'#13#10'left joi' +
      'n SalePriceList h on h.ItemId = a.ItemId'#13#10'group by a.ItemId, a.I' +
      'temCode, a.ItemName, '#13#10'  a.UnitMeasure, a.ItemCategoryId, a.Item' +
      'CategoryName,'#13#10'  g.Price1, g.Qty1, g.MinQty1, g.EffectiveDate,'#13#10 +
      '  h.Price1, h.Qty1, h.MinQty1, h.EffectiveDate'#13#10#13#10
    Version = '2.5'
    Left = 104
    Top = 176
  end
  object qryPrevTallySheet: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DatePeriod'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'WarehouseId'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemId'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @DatePeriod DateTime,'
      '  @WarehouseId varchar(5),'
      '  @ItemId numeric'
      ''
      'set @DatePeriod = :DatePeriod'
      'set @WarehouseId = :WarehouseId'
      'set @ItemId = :ItemId'
      ''
      'select *'
      'from TallySheet'
      'where TallySheetDate <= @DatePeriod'
      'and WarehouseId like @WarehouseId'
      'and ItemId = @ItemId'
      'and FlagUse = '#39'0'#39
      'or (FlagUse = '#39'1'#39' and DateUse > @DatePeriod)'
      '')
    Left = 296
    Top = 144
  end
  object dsPrevPurchasePrice: TDataSource
    DataSet = qryPrevPurchasePrice
    Left = 328
    Top = 208
  end
  object qryPrevPurchasePrice: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.VendorId, b.VendorName,'
      '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastPI,'
      '  a.DateModified as PurchaseInvoiceDate,'
      '  c.PurchaseInvoiceCode, c.PurchaseInvoiceVendor'
      '  --d.Qty, d.ItemText'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join PurchaseInvoiceHd c on a.LastPI = c.PurchaseInvoiceId'
      
        '-- left join PurchaseInvoiceDt d on (a.LastPI = d.PurchaseInvoic' +
        'eId and a.ItemId = d.ItemId and a.LastPINo = d.No)'
      'where a.ItemId = :ItemId'
      'order by a.DateModified desc, b.VendorName')
    Left = 296
    Top = 208
  end
  object dsPrevStockExpired: TDataSource
    DataSet = qryPrevStockExpired
    Left = 328
    Top = 273
  end
  object dsPrevSalePrice: TDataSource
    DataSet = qryPrevSalePrice
    Left = 328
    Top = 240
  end
  object dsPrevItemImage: TDataSource
    DataSet = qryPrevItemImage
    Left = 328
    Top = 304
  end
  object qryPrevStockExpired: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'WarehouseId'
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from StockExpired a'
      'where a.WarehouseId like :WarehouseId'
      'and a.ItemId = :ItemId'
      'and a.Qty <> 0')
    Left = 296
    Top = 273
  end
  object qryPrevSalePrice: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  a.CustomerId, b.CustomerName,'
      '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastSI,'
      '  a.DateModified as SalesInvoiceDate,'
      '  c.SalesInvoiceCode, c.SalesInvoiceCustomer'
      '  --d.Qty, d.ItemText'
      'from SalePrice a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'left join SalesInvoiceHd c on a.LastSI = c.SalesInvoiceId'
      
        '-- left join SalesInvoiceDt d on (a.LastSI = d.SalesInvoiceId an' +
        'd a.ItemId = d.ItemId and a.LastSINo = d.No)'
      'where a.ItemId = :ItemId'
      'order by a.DateModified desc, b.CustomerName')
    Left = 296
    Top = 240
  end
  object qryPrevItemImage: TADOQuery
    Connection = dmGlobal.conImage
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from ItemImage'
      'where ItemId = :ItemId'
      'order by no')
    Left = 296
    Top = 304
  end
  object dsPrevStockOnHandValue: TDataSource
    DataSet = qryPrevStockOnHandValue
    Left = 328
    Top = 176
  end
  object qryPrevStockOnHandValue: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'WarehouseId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*,  '
      '  (a.COGSValue * a.COGSQty) as TotalCOGS'
      'from StockOnHandValue a'
      'where cast(a.WarehouseId as varchar) like :WarehouseId'
      'and a.ItemId = :ItemId'
      'and a.COGSQty <> 0')
    Left = 296
    Top = 176
  end
  object qryPrevPurchasePriceList: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.VendorId, b.VendorName,'
      '  a.Price, a.DiscItem, a.DiscItemPrice, a.LastPI,'
      '  a.DateModified as PurchaseInvoiceDate,'
      '  c.PurchaseInvoiceCode, c.PurchaseInvoiceVendor'
      '  --d.Qty, d.ItemText'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join PurchaseInvoiceHd c on a.LastPI = c.PurchaseInvoiceId'
      
        '-- left join PurchaseInvoiceDt d on (a.LastPI = d.PurchaseInvoic' +
        'eId and a.ItemId = d.ItemId and a.LastPINo = d.No)'
      'where a.ItemId = :ItemId'
      'order by a.DateModified desc, b.VendorName')
    Left = 360
    Top = 208
  end
  object dsPrevPurchasePriceList: TDataSource
    DataSet = qryPrevPurchasePriceList
    Left = 392
    Top = 208
  end
  object qryPrevTallySheetDt: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    DataSource = dsPrevTallySheet
    Parameters = <
      item
        Name = 'TallySheetId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TallySheetDt'
      'where TallySheetId = :TallySheetId')
    Left = 360
    Top = 144
  end
  object dsPrevTallySheetDt: TDataSource
    DataSet = qryPrevTallySheetDt
    Left = 392
    Top = 144
  end
  object qryGetClosingDate: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <>
    SQL.Strings = (
      'select dbo.fnGetClosingDate()')
    Left = 136
    Top = 272
  end
end
