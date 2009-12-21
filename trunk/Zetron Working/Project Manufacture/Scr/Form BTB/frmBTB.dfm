inherited fmBTB: TfmBTB
  Caption = 'Form BTB'
  ClientHeight = 596
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      ExplicitHeight = 19
    end
  end
  inherited dxDockSite1: TdxDockSite
    Height = 521
    ExplicitHeight = 521
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 521
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 521
      ExplicitHeight = 521
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 521
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 521
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cgBTB: TcxGrid
          Left = 0
          Top = 57
          Width = 740
          Height = 460
          Align = alClient
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          ExplicitLeft = -1
          ExplicitTop = 56
          object cgvBTB: TcxGridDBBandedTableView
            NavigatorButtons.OnButtonClick = cgvBTBNavigatorButtonsButtonClick
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
            DataController.DataSource = dsDefaultDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cgvBTBBTBId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BTBId'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvBTBNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'No'
              Width = 171
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvBTBTallySheetId: TcxGridDBBandedColumn
              Caption = 'No Palet'
              DataBinding.FieldName = 'TallySheetId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvTallySheet
              Properties.KeyFieldNames = 'TallySheetId'
              Properties.ListFieldItem = cgvTallySheetTallySheetCode
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvBTBColumn1: TcxGridDBBandedColumn
              Caption = 'No Periode'
              DataBinding.FieldName = 'TallySheetId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvTallySheet
              Properties.KeyFieldNames = 'TallySheetId'
              Properties.ListFieldItem = cgvTallySheetpurchaseinvoicecode
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvBTBColumn3: TcxGridDBBandedColumn
              Caption = 'Qty'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvBTBColumn2: TcxGridDBBandedColumn
              Caption = 'M3'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cgvBTBSJ: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBTBSJ
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            object cgvBTBSJBTBId: TcxGridDBColumn
              DataBinding.FieldName = 'BTBId'
            end
            object cgvBTBSJSJId: TcxGridDBColumn
              DataBinding.FieldName = 'SJId'
            end
            object cgvBTBSJSJDate: TcxGridDBColumn
              DataBinding.FieldName = 'SJDate'
            end
            object cgvBTBSJNoPolisi: TcxGridDBColumn
              DataBinding.FieldName = 'NoPolisi'
            end
            object cgvBTBSJKendaraan: TcxGridDBColumn
              DataBinding.FieldName = 'Kendaraan'
            end
            object cgvBTBSJNoFAKO: TcxGridDBColumn
              DataBinding.FieldName = 'NoFAKO'
            end
            object cgvBTBSJNoCont: TcxGridDBColumn
              DataBinding.FieldName = 'NoCont'
            end
            object cgvBTBSJDescription: TcxGridDBColumn
              DataBinding.FieldName = 'Description'
            end
          end
          object cgBTBDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgBTBDBTableView1Column1: TcxGridDBColumn
              Caption = 'T'
            end
            object cgBTBDBTableView1Column2: TcxGridDBColumn
              Caption = 'L'
            end
            object cgBTBDBTableView1Column3: TcxGridDBColumn
              Caption = 'P'
            end
            object cgBTBDBTableView1Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cgBTBDBTableView1Column4: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cgBTBLevel1: TcxGridLevel
            Caption = 'Palet'
            GridView = cgvBTB
            object cgBTBLevel3: TcxGridLevel
              GridView = cgBTBDBTableView1
            end
          end
          object cgBTBLevel2: TcxGridLevel
            Caption = 'Surat Jalan'
            GridView = cgvBTBSJ
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 57
          Align = alTop
          TabOrder = 1
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 34
            Height = 13
            Caption = 'No BTB'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 24
            Width = 38
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label2: TLabel
            Left = 351
            Top = 6
            Width = 36
            Height = 13
            Caption = 'Sumber'
            Transparent = True
          end
          object Label1: TLabel
            Left = 351
            Top = 28
            Width = 33
            Height = 13
            Caption = 'Tujuan'
            Transparent = True
          end
          object dbeBTBId: TcxDBTextEdit
            Left = 86
            Top = 2
            BeepOnEnter = False
            DataBinding.DataField = 'BTBCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 110
          end
          object dbeBTBDate: TcxDBDateEdit
            Left = 86
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'BTBDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dblcWarehouseSource: TcxDBExtLookupComboBox
            Left = 399
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseIdSource'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
            Properties.OnEditValueChanged = dblcWarehouseSourcePropertiesEditValueChanged
            TabOrder = 2
            Width = 145
          end
          object dblcWarehouseDest: TcxDBExtLookupComboBox
            Left = 399
            Top = 28
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseIdDest'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
            TabOrder = 3
            Width = 145
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 521
      ExplicitHeight = 521
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryBTBHd
  end
  object qryBTBHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBTBHdBeforePost
    CommandText = 
      'select *'#13#10'from BTBHd'#13#10'where BTBDate between :StartDate and :EndD' +
      'ate'#13#10
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dsDefaultDt: TDataSource
    DataSet = qryBTBDt
    Left = 168
    Top = 144
  end
  object qryBTBDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryBTBDtNewRecord
    CommandText = 'select *'#13#10'from BTBDt '#13#10'where BTBId = :BTBId'
    DataSource = dsDefault
    IndexFieldNames = 'BTBId'
    MasterFields = 'BTBId'
    Parameters = <
      item
        Name = 'BTBId'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Value = Null
      end>
    Left = 136
    Top = 144
  end
  object qryTallySheet: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select a.*,b.purchaseinvoicecode'#13#10'from TallySheet a '#13#10'left join ' +
      'Purchaseinvoice b on a.purchaseinvoiceid=b.purchaseinvoiceid'#13#10'wh' +
      'ere a.warehouseid is null'#13#10#13#10
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsTallySheet: TDataSource
    DataSet = qryTallySheet
    Left = 168
    Top = 176
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 168
    object cgvTallySheet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTallySheet
      DataController.KeyFieldNames = 'TallySheetId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvTallySheetTallySheetId: TcxGridDBColumn
        DataBinding.FieldName = 'TallySheetId'
      end
      object cgvTallySheetTallySheetCode: TcxGridDBColumn
        DataBinding.FieldName = 'TallySheetCode'
      end
      object cgvTallySheetTotalQty: TcxGridDBColumn
        DataBinding.FieldName = 'TotalQty'
      end
      object cgvTallySheetTotalLuas: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuas'
      end
      object cgvTallySheetTotalVolume: TcxGridDBColumn
        DataBinding.FieldName = 'TotalVolume'
      end
      object cgvTallySheetTotalBerat: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBerat'
      end
      object cgvTallySheetLastTransaction: TcxGridDBColumn
        DataBinding.FieldName = 'LastTransaction'
      end
      object cgvTallySheetMaterialId: TcxGridDBColumn
        DataBinding.FieldName = 'MaterialId'
      end
      object cgvTallySheetPurchaseInvoiceId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseInvoiceId'
      end
      object cgvTallySheetWarehouseId: TcxGridDBColumn
        DataBinding.FieldName = 'WarehouseId'
      end
      object cgvTallySheetpurchaseinvoicecode: TcxGridDBColumn
        DataBinding.FieldName = 'purchaseinvoicecode'
      end
    end
  end
  object dsBTBSJ: TDataSource
    DataSet = qryBTBSJ
    Left = 168
    Top = 208
  end
  object qryBTBSJ: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from BTBSJ '#13#10'where BTBId = :BTBId'#13#10#13#10
    DataSource = dsDefault
    IndexFieldNames = 'BTBId'
    MasterFields = 'BTBId'
    Parameters = <
      item
        Name = 'BTBId'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 136
    Top = 208
  end
end
