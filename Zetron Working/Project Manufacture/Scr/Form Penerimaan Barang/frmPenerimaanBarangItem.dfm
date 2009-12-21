inherited fmPenerimaanBarangItem: TfmPenerimaanBarangItem
  Caption = 'Penerimaan Barang '
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
        object PcReceivingRecordDetail: TcxPageControl
          Left = 0
          Top = 105
          Width = 740
          Height = 282
          ActivePage = tsItem
          Align = alClient
          TabOrder = 1
          ClientRectBottom = 282
          ClientRectRight = 740
          ClientRectTop = 24
          object tsItem: TcxTabSheet
            Caption = 'Barang'
            ImageIndex = 0
            object cgReceivingRecordDt: TcxGrid
              Left = 0
              Top = 0
              Width = 335
              Height = 258
              Align = alLeft
              TabOrder = 0
              RootLevelOptions.DetailTabsPosition = dtpTop
              object cgvReceivingRecordDt: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Append.Visible = False
                NavigatorButtons.Refresh.Visible = True
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsReceivingRecordDt
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'TotalQty'
                    Column = cgvReceivingRecordDtTotalQty
                  end
                  item
                    Kind = skCount
                    FieldName = 'No'
                    Column = cgvReceivingRecordDtNo
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object cgvReceivingRecordDtReceivingRecordCode: TcxGridDBColumn
                  DataBinding.FieldName = 'ReceivingRecordCode'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvReceivingRecordDtNo: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                end
                object cgvReceivingRecordDtItemId: TcxGridDBColumn
                  Caption = 'Barang'
                  DataBinding.FieldName = 'ItemId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvPrevItem
                  Properties.KeyFieldNames = 'ItemId'
                  Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
                end
                object cgvReceivingRecordDtTotalQty: TcxGridDBColumn
                  Caption = 'Total Qty'
                  DataBinding.FieldName = 'TotalQty'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                end
                object cgvReceivingRecordDtTotalLuas: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalLuas'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                end
                object cgvReceivingRecordDtTotalVolume: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalVolume'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                end
                object cgvReceivingRecordDtTotalBerat: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalBerat'
                  Visible = False
                end
              end
              object cgReceivingRecordDtLevel1: TcxGridLevel
                Caption = 'Barang Non Tally'
                GridView = cgvReceivingRecordDt
              end
            end
            object cgTallySheet: TcxGrid
              Left = 343
              Top = 0
              Width = 397
              Height = 258
              Align = alClient
              TabOrder = 1
              RootLevelOptions.DetailTabsPosition = dtpTop
              ExplicitLeft = 0
              ExplicitWidth = 740
              object cgvLPBDetailTallySheet: TcxGridDBTableView
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
                DataController.DataSource = dsTallysheet
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvLPBDetailTallySheetTallySheetCode: TcxGridDBColumn
                  DataBinding.FieldName = 'TallySheetCode'
                end
                object cgvLPBDetailTallySheetTotalQty: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalQty'
                end
                object cgvLPBDetailTallySheetTotalLuas: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalLuas'
                end
                object cgvLPBDetailTallySheetTotalVolume: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalVolume'
                end
                object cgvLPBDetailTallySheetTotalBerat: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalBerat'
                end
                object cgvLPBDetailTallySheetLastTransaction: TcxGridDBColumn
                  DataBinding.FieldName = 'LastTransaction'
                end
                object cgvLPBDetailTallySheetPurchaseInvoiceId: TcxGridDBColumn
                  DataBinding.FieldName = 'PurchaseInvoiceId'
                end
                object cgvLPBDetailTallySheetWarehouseId: TcxGridDBColumn
                  DataBinding.FieldName = 'WarehouseId'
                end
                object cgvLPBDetailTallySheetDateUse: TcxGridDBColumn
                  DataBinding.FieldName = 'DateUse'
                end
                object cgvLPBDetailTallySheetFlagUse: TcxGridDBColumn
                  DataBinding.FieldName = 'FlagUse'
                end
                object cgvLPBDetailTallySheetItemId: TcxGridDBColumn
                  DataBinding.FieldName = 'ItemId'
                end
                object cgvLPBDetailTallySheetLastRef: TcxGridDBColumn
                  DataBinding.FieldName = 'LastRef'
                end
              end
              object cgvLPBDetailTallySheetDt: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsTallySheetDt
                DataController.DetailKeyFieldNames = 'TallySheetId'
                DataController.KeyFieldNames = 'No'
                DataController.MasterKeyFieldNames = 'TallySheetId'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                object cgvLPBDetailTallySheetDtTallySheetId: TcxGridDBColumn
                  DataBinding.FieldName = 'TallySheetId'
                end
                object cgvLPBDetailTallySheetDtNo: TcxGridDBColumn
                  DataBinding.FieldName = 'No'
                end
                object cgvLPBDetailTallySheetDtT: TcxGridDBColumn
                  DataBinding.FieldName = 'T'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtL: TcxGridDBColumn
                  DataBinding.FieldName = 'L'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtP: TcxGridDBColumn
                  DataBinding.FieldName = 'P'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtD1: TcxGridDBColumn
                  DataBinding.FieldName = 'D1'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtD2: TcxGridDBColumn
                  DataBinding.FieldName = 'D2'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtDRata: TcxGridDBColumn
                  DataBinding.FieldName = 'DRata'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtM3: TcxGridDBColumn
                  DataBinding.FieldName = 'M3'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtBerat: TcxGridDBColumn
                  DataBinding.FieldName = 'Berat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtQty: TcxGridDBColumn
                  DataBinding.FieldName = 'Qty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvLPBDetailTallySheetDtLuas: TcxGridDBColumn
                  DataBinding.FieldName = 'Luas'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
              end
              object cgTallySheetLevel1: TcxGridLevel
                Caption = 'Barang Tally'
              end
              object cgTallySheetLevel2: TcxGridLevel
                Caption = 'Detail Tally'
                GridView = cgvLPBDetailTallySheet
                object cgTallySheetLevel3: TcxGridLevel
                  GridView = cgvLPBDetailTallySheetDt
                end
              end
            end
            object cxSplitter1: TcxSplitter
              Left = 335
              Top = 0
              Width = 8
              Height = 258
              HotZoneClassName = 'TcxXPTaskBarStyle'
              ExplicitLeft = 368
              ExplicitTop = 80
              ExplicitHeight = 100
            end
          end
          object tsSJ: TcxTabSheet
            Caption = 'Surat Jalan'
            ImageIndex = 2
            object cgReceivingRecordSJ: TcxGrid
              Left = 0
              Top = 0
              Width = 740
              Height = 258
              Align = alClient
              TabOrder = 0
              object cgvReceivingRecordSJ: TcxGridDBTableView
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
                DataController.DataSource = dsReceivingRecordSJ
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    FieldName = 'SJId'
                    Column = cgvReceivingRecordSJSJCode
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object cgvReceivingRecordSJReceivingRecordCode: TcxGridDBColumn
                  DataBinding.FieldName = 'ReceivingRecordCode'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvReceivingRecordSJSJCode: TcxGridDBColumn
                  Caption = 'No SJ'
                  DataBinding.FieldName = 'SJCode'
                end
                object cgvReceivingRecordSJSJDate: TcxGridDBColumn
                  Caption = 'Tgl'
                  DataBinding.FieldName = 'SJDate'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Kind = ckDateTime
                end
                object cgvReceivingRecordSJNoPolisi: TcxGridDBColumn
                  Caption = 'No Polisi'
                  DataBinding.FieldName = 'NoPolisi'
                end
                object cgvReceivingRecordSJKendaraan: TcxGridDBColumn
                  DataBinding.FieldName = 'Kendaraan'
                end
                object cgvReceivingRecordSJNoFAKO: TcxGridDBColumn
                  Caption = 'No FA KO'
                  DataBinding.FieldName = 'NoFAKO'
                end
                object cgvReceivingRecordSJFAKODate: TcxGridDBColumn
                  DataBinding.FieldName = 'FAKODate'
                end
                object cgvReceivingRecordSJNoCont: TcxGridDBColumn
                  Caption = 'No Cont'
                  DataBinding.FieldName = 'NoCont'
                end
                object cgvReceivingRecordSJInternalMemo: TcxGridDBColumn
                  Caption = 'Memo'
                  DataBinding.FieldName = 'InternalMemo'
                end
              end
              object cgReceivingRecordSJLevel1: TcxGridLevel
                GridView = cgvReceivingRecordSJ
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitLeft = 0
      ExplicitHeight = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        Height = 369
        ExplicitWidth = 296
        ExplicitHeight = 369
        inherited cgvPrevDisplay: TcxGridDBTableView
          inherited cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Properties.Images = nil
          end
          inherited cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
          end
        end
      end
    end
  end
  inherited dsDefault: TDataSource [5]
  end
  inherited dxDockingManager1: TdxDockingManager [6]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [7]
  end
  inherited qryReceivingRecordHd: TADODataSet [8]
    AfterPost = qryReceivingRecordHdAfterPost
    CommandText = 
      'select * '#13#10'from ReceivingRecordHd '#13#10'where ReceivingRecordDate be' +
      'tween :StartDate and :EndDate'
  end
  inherited pmPrint: TPopupMenu [9]
  end
  object qryPrevItemPO: TADODataSet [11]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  b.ItemId, b.ItemCode, b.ItemName,'#13#10'  a.qty, a.qtyouts' +
      'tanding'#13#10'from PurchaseOrderDt a '#13#10'left join Item b on a.ItemId=b' +
      '.ItemId'#13#10'where PurchaseOrderCode=:PurchaseOrderCode'
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 536
    Top = 240
  end
  object dsPrevItemPO: TDataSource [12]
    DataSet = qryPrevItemPO
    Left = 568
    Top = 240
  end
  object qryTallysheet: TADODataSet [13]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    AfterPost = qryTallysheetAfterPost
    OnNewRecord = qryTallysheetNewRecord
    CommandText = 
      'select *'#13#10'from TallySheet'#13#10'where TallySheetCode in '#13#10'(select Tal' +
      'lySheetCode '#13#10'  from TallySheetHistory '#13#10'  where ReferenceCode =' +
      ' :ReferenceCode'#13#10'  and StatusTransaction = '#39'0'#39#13#10')'
    Parameters = <
      item
        Name = 'ReferenceCode'
        Size = -1
        Value = Null
      end>
    Left = 504
    Top = 120
  end
  object dsTallysheet: TDataSource [14]
    DataSet = qryTallysheet
    Left = 536
    Top = 120
  end
  object qryTallySheetDt: TADODataSet [15]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryTallySheetDtNewRecord
    CommandText = 'select *'#13#10'from TallySheetDt'
    DataSource = dsTallysheet
    IndexFieldNames = 'TallySheetCode'
    MasterFields = 'TallySheetCode'
    Parameters = <>
    Left = 504
    Top = 152
  end
  object dsTallySheetDt: TDataSource [16]
    DataSet = qryTallySheetDt
    OnDataChange = dsTallySheetDtDataChange
    Left = 536
    Top = 152
  end
  inherited dsReceivingRecordSJ: TDataSource
    Left = 296
    Top = 144
  end
  object qryTallySheetHistory: TADODataSet [18]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from TallySheetHistory'
    DataSource = dsTallysheet
    IndexFieldNames = 'TallySheetCode'
    MasterFields = 'TallySheetCode'
    Parameters = <>
    Left = 432
    Top = 272
  end
  object dsTableHistory: TDataSource [19]
    DataSet = qryTallySheetHistory
    Left = 464
    Top = 272
  end
  inherited qryReceivingRecordDt: TADOQuery
    OnNewRecord = qryReceivingRecordDtNewRecord
  end
  inherited qryReceivingRecordSJ: TADOQuery
    Left = 264
    Top = 144
  end
  inherited sbPurchaseOrder: TIvSearchBoxADO
    Left = 136
  end
end
