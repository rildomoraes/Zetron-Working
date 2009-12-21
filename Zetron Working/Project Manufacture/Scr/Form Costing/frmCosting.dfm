inherited fmCosting: TfmCosting
  Caption = 'Costing'
  ClientHeight = 471
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 500
  DesignSize = (
    692
    471)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
  end
  inherited dxDockSite1: TdxDockSite
    Top = 75
    Width = 692
    Height = 396
    ExplicitTop = 75
    ExplicitWidth = 692
    ExplicitHeight = 396
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 396
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 664
      Height = 396
      ExplicitWidth = 664
      ExplicitHeight = 396
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 664
        Height = 396
        ExplicitWidth = 664
        ExplicitHeight = 396
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 664
        Height = 396
        ExplicitWidth = 664
        ExplicitHeight = 396
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 660
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblItemId: TLabel
            Left = 7
            Top = 41
            Width = 34
            Height = 13
            Caption = 'Produk'
            Transparent = True
          end
          object lblCostingCode: TLabel
            Left = 7
            Top = 6
            Width = 52
            Height = 13
            Caption = 'No Costing'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 23
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label1: TLabel
            Left = 373
            Top = 41
            Width = 172
            Height = 13
            Caption = '* Barang yang memiliki bill of material'
            Transparent = True
          end
          object dbePurchaseOrderDate: TcxDBDateEdit
            Left = 69
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'CostingDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Style.ButtonTransparency = ebtAlways
            TabOrder = 1
            Width = 110
          end
          object dbePurchaseOrderId: TcxDBTextEdit
            Left = 69
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'CostingCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 0
            Width = 202
          end
          object dblcVendorId: TcxDBExtLookupComboBox
            Left = 69
            Top = 39
            DataBinding.DataField = 'ItemId'
            DataBinding.DataSource = dsDefault
            Properties.Alignment.Horz = taLeftJustify
            Properties.View = dmInventory.cgvPrevItemBOM
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemBOMItemName
            TabOrder = 2
            Width = 298
          end
        end
        object cgCostingItem: TcxGrid
          Left = 0
          Top = 65
          Width = 660
          Height = 183
          Align = alClient
          TabOrder = 1
          object cgvCostingItem: TcxGridDBBandedTableView
            NavigatorButtons.OnButtonClick = cgvCostingItemNavigatorButtonsButtonClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsCostingItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cgvCostingItemStylesGetContentStyle
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Caption = 'Harga Beli'
                Visible = False
              end
              item
                Caption = 'Harga Stok'
                Visible = False
              end
              item
                Caption = 'Harga Costing'
              end
              item
                Caption = 'Costing'
              end>
            object cgvCostingItemCostingCode: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CostingCode'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvCostingItemItemId: TcxGridDBBandedColumn
              Caption = 'Barang'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvCostingItemQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvCostingItemStatusDimensi: TcxGridDBBandedColumn
              Caption = 'Sat. Costing'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.OnInitPopup = cgvCostingItemItemId2PropertiesInitPopup
              Options.Editing = False
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvCostingItemFlagItemBOM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FlagItemBOM'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvCostingItemCurrencyIdCosting: TcxGridDBBandedColumn
              Caption = 'Mata Uang'
              DataBinding.FieldName = 'CurrencyIdCosting'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvCostingItemCostingPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'CostingPrice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              VisibleForCustomization = False
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvCostingItemUnitMeasureCosting: TcxGridDBBandedColumn
              Caption = 'Sat. Stok'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Options.Editing = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvCostingItemCurrencyIdPurchase: TcxGridDBBandedColumn
              Caption = 'Mata Uang Beli'
              DataBinding.FieldName = 'CurrencyIdPurchase'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvCostingItemPurchasePrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'PurchasePrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              VisibleForCustomization = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvCostingItemUnitMeasurePurchase: TcxGridDBBandedColumn
              Caption = 'Sat. Stok'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvCostingItemCurrencyIdStock: TcxGridDBBandedColumn
              Caption = 'Mata Uang Stok'
              DataBinding.FieldName = 'CurrencyIdStock'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvCostingItemStockPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'StockPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              VisibleForCustomization = False
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvCostingItemUnitMeasureStock: TcxGridDBBandedColumn
              Caption = 'Sat. Stok'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Options.Editing = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvCostingItemPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvCostingItemStatusDimensi2: TcxGridDBBandedColumn
              Caption = 'Sat. Costing'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Options.Editing = False
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvCostingItemRendemen: TcxGridDBBandedColumn
              Caption = 'Rendemen (%)'
              DataBinding.FieldName = 'Rendemen'
              PropertiesClassName = 'TcxSpinEditProperties'
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvCostingItemPriceRendemen: TcxGridDBBandedColumn
              Caption = 'Harga Rendemen'
              DataBinding.FieldName = 'PriceRendemen'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 4
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvCostingItemAmountRendemen: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'AmountRendemen'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              VisibleForCustomization = False
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cgCostingItemLevel1: TcxGridLevel
            Caption = 'Bahan Baku'
            GridView = cgvCostingItem
          end
        end
        object cgCostingEstimate: TcxGrid
          Left = 0
          Top = 256
          Width = 660
          Height = 136
          Align = alBottom
          TabOrder = 2
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cgvCostingEstimate: TcxGridDBTableView
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
            DataController.DataSource = dsCostingEstimate
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvCostingEstimateCostingCode: TcxGridDBColumn
              DataBinding.FieldName = 'CostingCode'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvCostingEstimateNo: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              SortIndex = 0
              SortOrder = soAscending
              Width = 38
            end
            object cgvCostingEstimateCurrencyId: TcxGridDBColumn
              Caption = 'Mata Uang'
              DataBinding.FieldName = 'CurrencyId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
              Width = 65
            end
            object cgvCostingEstimateEstimatePercent: TcxGridDBColumn
              Caption = 'Perkiraan (%)'
              DataBinding.FieldName = 'EstimatePercent'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 84
            end
            object cgvCostingEstimateValueAdded: TcxGridDBColumn
              Caption = 'Nilai Tambahan'
              DataBinding.FieldName = 'ValueAdded'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 79
            end
          end
          object cgvCostingKurs: TcxGridDBTableView
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
            DataController.DataSource = dsCostingKurs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvCostingKursCostingCode: TcxGridDBColumn
              DataBinding.FieldName = 'CostingCode'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvCostingKursCurrencyId: TcxGridDBColumn
              Caption = 'Mata Uang'
              DataBinding.FieldName = 'CurrencyId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevCurrencyMaster
              Properties.KeyFieldNames = 'currencyid'
              Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
            end
            object cgvCostingKursKurs: TcxGridDBColumn
              DataBinding.FieldName = 'Kurs'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgCostingEstimateLevel1: TcxGridLevel
            Caption = 'Kurs Mata Uang'
            GridView = cgvCostingKurs
          end
          object cgCostingEstimateLevel2: TcxGridLevel
            Caption = 'Perkiraan'
            GridView = cgvCostingEstimate
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 248
          Width = 660
          Height = 8
          HotZoneClassName = 'TcxXPTaskBarStyle'
          AlignSplitter = salBottom
          Control = cgCostingEstimate
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 396
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgCosting: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 374
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvCosting: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvCostingCostingCode: TcxGridDBColumn
            Caption = 'No Costing'
            DataBinding.FieldName = 'CostingCode'
          end
          object cgvCostingCostingDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'CostingDate'
          end
          object cgvCostingItemName: TcxGridDBColumn
            Caption = 'Barang'
            DataBinding.FieldName = 'ItemId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
        end
        object cgCostingLevel1: TcxGridLevel
          GridView = cgvCosting
        end
      end
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 692
    Height = 25
    Align = alTop
    TabOrder = 2
    DesignSize = (
      692
      25)
    object lblStatusApprove: TLabel
      Left = 7
      Top = 4
      Width = 31
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lblCounterPrint: TLabel
      Left = 159
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Copies'
      Transparent = True
    end
    object lblEmployeeId: TLabel
      Left = 238
      Top = 4
      Width = 40
      Height = 13
      Caption = 'Pegawai'
      Transparent = True
    end
    object dblcStatusApprove: TcxDBImageComboBox
      Left = 44
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'StatusApprove'
      DataBinding.DataSource = dsDefault
      Properties.Items = <
        item
          Description = 'Entry'
          ImageIndex = 7
          Value = '0'
        end
        item
          Description = 'Approve'
          ImageIndex = 6
          Value = '1'
        end
        item
          Description = 'Void'
          ImageIndex = 8
          Value = '2'
        end>
      Style.Color = clWindow
      TabOrder = 0
      Width = 100
    end
    object dbeCounterPrint: TcxDBTextEdit
      Left = 194
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'counterprint'
      DataBinding.DataSource = dsDefault
      TabOrder = 1
      Width = 27
    end
    object dblcEmployeeId: TcxDBExtLookupComboBox
      Left = 282
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'EmployeeId'
      DataBinding.DataSource = dsDefault
      Properties.View = dmGlobal.cgvPrevEmployee
      Properties.KeyFieldNames = 'EmployeeId'
      Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
      Style.BorderStyle = ebsOffice11
      Style.Color = clWindow
      Style.ButtonTransparency = ebtHideUnselected
      TabOrder = 2
      Width = 120
    end
    object chkFlagClose: TcxDBCheckBox
      Left = 698
      Top = 2
      Anchors = [akTop, akRight]
      Caption = 'Close PO'
      DataBinding.DataField = 'FlagClose'
      ParentColor = False
      Properties.NullStyle = nssInactive
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 3
      Transparent = True
      Width = 69
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryCostingHd
  end
  object qryCostingHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryCostingHdBeforePost
    AfterPost = qryCostingHdAfterPost
    OnNewRecord = qryCostingHdNewRecord
    CommandText = 'select *'#13#10'from CostingHd'
    MasterFields = 'CostingCode'
    Parameters = <>
    Left = 136
    Top = 112
  end
  object dsCostingItem: TDataSource
    DataSet = qryCostingItem
    OnStateChange = dsCostingItemStateChange
    OnDataChange = dsCostingItemDataChange
    Left = 168
    Top = 144
  end
  object dsCostingEstimate: TDataSource
    DataSet = qryCostingEstimate
    Left = 232
    Top = 176
  end
  object spInsertingCostingItem: TADOStoredProc
    Connection = dmGlobal.conReadOnly
    ProcedureName = 'spInsertingCostingItem;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CostingId'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Value = Null
      end>
    Left = 136
    Top = 208
  end
  object dsCostingKurs: TDataSource
    DataSet = qryCostingKurs
    Left = 168
    Top = 176
  end
  object qryCostingItem: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryCostingItemBeforeInsert
    BeforeDelete = qryCostingItemBeforeDelete
    OnNewRecord = qryCostingItemNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'CostingCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from CostingItem'
      'where CostingCode = :CostingCode')
    Left = 136
    Top = 144
  end
  object qryCostingKurs: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforeInsert = qryCostingKursBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'CostingCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from CostingKurs'
      'where CostingCode = :CostingCode')
    Left = 136
    Top = 176
  end
  object qryCostingEstimate: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforeInsert = qryCostingEstimateBeforeInsert
    OnNewRecord = qryCostingEstimateNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'CostingCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from CostingEstimate'
      'where CostingCode = :CostingCode')
    Left = 200
    Top = 176
  end
end
