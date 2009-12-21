inherited fmSPKBOM: TfmSPKBOM
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
        inherited pnlTop: TPanel
          inherited dbeSPKDate: TcxDBDateEdit
            ExplicitWidth = 151
            Width = 151
          end
          inherited dblcSalesOrderId: TcxDBExtLookupComboBox
            DataBinding.DataField = 'SalesOrderCode'
          end
        end
        object pcMemo: TcxPageControl
          Left = 0
          Top = 304
          Width = 740
          Height = 83
          ActivePage = tsExternalMemo
          Align = alBottom
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 59
          ClientRectRight = 740
          ClientRectTop = 0
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo External'
            ImageIndex = 1
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 59
              Width = 740
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            object dbeMemoInternal: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'InternalMemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 59
              Width = 740
            end
          end
        end
        object cgSPKDt: TcxGrid
          Left = 0
          Top = 67
          Width = 740
          Height = 237
          Align = alClient
          TabOrder = 2
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cgvSPKDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSPKDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'No'
                Column = cgvSPKDtNo
              end
              item
                Kind = skSum
                FieldName = 'Qty'
                Column = cgvSPKDtQty
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvSPKDtSPKCode: TcxGridDBColumn
              DataBinding.FieldName = 'SPKCode'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvSPKDtNo: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxSpinEditProperties'
              Width = 30
            end
            object cgvSPKDtItemId: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.View = dmInventory.cgvPrevItemBOM
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemBOMItemCode
              Visible = False
            end
            object cgvSPKDtItemName: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemBOM
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemBOMItemName
            end
            object cgvSPKDtItemBOM: TcxGridDBColumn
              Caption = 'No BOM'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemBOM
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemBOMBillMaterialNumber
              Visible = False
            end
            object cgvSPKDtQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvSPKDtItemUnitMeasure: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemBOM
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemBOMUnitMasure
              Properties.ReadOnly = True
            end
            object cgvSPKDtDescription: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'Description'
              Visible = False
            end
            object cgvSPKDtEmployeeId: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Visible = False
            end
          end
          object cgvSPKItem: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSPKItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            Bands = <
              item
                Caption = 'Bahan'
                FixedKind = fkLeft
              end
              item
                Caption = 'Ukuran'
              end>
            object cgvSPKItemSPKCode: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SPKCode'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSPKItemNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'No'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSPKItemItemId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureItemCode
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSPKItemItemName: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureItemName
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSPKItemItemCategoryId: TcxGridDBBandedColumn
              Caption = 'Kel. Stok'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureItemCategoryId
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSPKItemMaterialId: TcxGridDBBandedColumn
              Caption = 'Material'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureMaterialId
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSPKItemQtySPK: TcxGridDBBandedColumn
              Caption = 'Qty SPK'
              DataBinding.FieldName = 'QtySPK'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSPKItemQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSPKItemT: TcxGridDBBandedColumn
              Caption = 'T'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureT
              Options.Editing = False
              Options.Moving = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSPKItemL: TcxGridDBBandedColumn
              Caption = 'L'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureL
              Options.Editing = False
              Options.Moving = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSPKItemP: TcxGridDBBandedColumn
              Caption = 'P'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemWithMeasure
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemWithMeasureP
              Options.Editing = False
              Options.Moving = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cgvSPKRendemen: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSPKRendemen
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvSPKRendemenSPKCode: TcxGridDBColumn
              DataBinding.FieldName = 'SPKCode'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvSPKRendemenMaterialId: TcxGridDBColumn
              Caption = 'Material'
              DataBinding.FieldName = 'MaterialId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevMaterial
              Properties.KeyFieldNames = 'MaterialId'
              Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            end
            object cgvSPKRendemenRendemen: TcxGridDBColumn
              Caption = 'Rendemen (%)'
              DataBinding.FieldName = 'Rendemen'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgSPKDtLevel1: TcxGridLevel
            Caption = 'Barang Jadi'
            GridView = cgvSPKDt
          end
          object cgSPKDtLevel2: TcxGridLevel
            Caption = 'Bahan Baku'
            GridView = cgvSPKItem
          end
          object cgSPKDtLevel3: TcxGridLevel
            Caption = 'Rendemen Persiapan Bahan'
            GridView = cgvSPKRendemen
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        Width = 296
        Height = 369
      end
    end
  end
  inherited qrySPKHd: TADODataSet
    IndexFieldNames = 'SPKCode'
    MasterFields = 'SPKCode'
  end
  object qrySPKRendemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySPKRendemenBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'SPKCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from SPKRendemen'
      'where SPKCode = :SPKCode')
    Left = 136
    Top = 208
  end
  object dsSPKRendemen: TDataSource
    DataSet = qrySPKRendemen
    Left = 168
    Top = 208
  end
  object qrySPKItem: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySPKItemBeforeInsert
    DataSource = dsSPKDt
    Parameters = <
      item
        Name = 'SPKCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'No'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from SPKItem'
      'where SPKCode = :SPKCode'
      'and No = :No')
    Left = 136
    Top = 176
  end
  object dsSPKItem: TDataSource
    DataSet = qrySPKItem
    Left = 168
    Top = 176
  end
  object qrySPKDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySPKDtBeforeInsert
    BeforePost = qrySPKDtBeforePost
    AfterPost = qrySPKDtAfterPost
    AfterDelete = qrySPKDtAfterDelete
    OnNewRecord = qrySPKDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'SPKCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from SPKDt'
      'where SPKCode = :SPKCode')
    Left = 136
    Top = 144
  end
  object dsSPKDt: TDataSource
    DataSet = qrySPKDt
    Left = 168
    Top = 144
  end
end
