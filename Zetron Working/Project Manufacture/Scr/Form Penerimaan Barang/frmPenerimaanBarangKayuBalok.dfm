inherited fmPenerimaanBarangKayuBalok: TfmPenerimaanBarangKayuBalok
  Caption = 'Penerimaan Kayu Balok'
  ClientHeight = 484
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 409
    ExplicitHeight = 409
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 409
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 409
      ExplicitHeight = 409
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 409
        ExplicitHeight = 409
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 409
        ExplicitHeight = 409
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        inherited pnlHeader: TPanel
          inherited pnlLeft: TPanel
            ExplicitHeight = 97
          end
          inherited pcBody: TcxPageControl
            ExplicitHeight = 97
            inherited tsInfo: TcxTabSheet
              ExplicitLeft = -1
              ExplicitTop = -2
              object lblNoKayuMuat: TLabel [0]
                Left = 6
                Top = 24
                Width = 68
                Height = 13
                Caption = 'No Kayu Muat'
                Transparent = True
              end
              object dbeRekapKayuMuat: TcxDBExtLookupComboBox [2]
                Left = 80
                Top = 21
                BeepOnEnter = False
                DataBinding.DataField = 'KayuMuatId'
                DataBinding.DataSource = dsDefault
                Properties.View = cgvPrevKayuMuat
                Properties.KeyFieldNames = 'kayumuatid'
                Properties.ListFieldItem = cgvPrevKayuMuatkayumuatcode
                Properties.OnEditValueChanged = dbeRekapKayuMuatPropertiesEditValueChanged
                TabOrder = 0
                Width = 230
              end
              inherited dblcTallyman: TcxDBExtLookupComboBox
                Left = 80
                TabOrder = 1
                ExplicitLeft = 80
                ExplicitWidth = 230
                Width = 230
              end
            end
            inherited tsInternalMemo: TcxTabSheet
              ExplicitHeight = 97
              inherited dbmInternalMemo: TcxDBMemo
                ExplicitHeight = 97
              end
            end
            inherited tsStatementMemo: TcxTabSheet
              ExplicitHeight = 97
              inherited dbmStatementMemo: TcxDBMemo
                ExplicitHeight = 97
              end
            end
            inherited tsDipendencies: TcxTabSheet
              ExplicitHeight = 97
              inherited cgDependencies: TcxGrid
                ExplicitHeight = 97
              end
            end
          end
        end
        object PcReceivingRecordDetail: TcxPageControl
          Left = 0
          Top = 105
          Width = 740
          Height = 300
          ActivePage = cxTabSheet1
          Align = alClient
          TabOrder = 1
          ExplicitTop = 97
          ExplicitHeight = 308
          ClientRectBottom = 300
          ClientRectRight = 740
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Barang'
            ImageIndex = 0
            ExplicitHeight = 284
            object cgLPB: TcxGrid
              Left = 0
              Top = 0
              Width = 740
              Height = 276
              Align = alClient
              TabOrder = 0
              ExplicitLeft = -3
              ExplicitTop = -3
              object cgvLPB: TcxGridDBBandedTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Append.Visible = True
                NavigatorButtons.Refresh.Visible = True
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    FieldName = 'ItemId'
                    Column = cgvLPBNo
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalQty'
                    Column = cgvLPBTotalQty
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalVolume'
                    Column = cgvLPBTotalVolume
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalBerat'
                    Column = cgvLPBTotalBerat
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalLuas'
                    Column = cgvLPBTotalLuas
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                  end>
                object cgvLPBReceivingRecordId: TcxGridDBBandedColumn
                  Caption = 'No Penerimaan'
                  DataBinding.FieldName = 'ReceivingRecordId'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cgvLPBNo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'No'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cgvLPBItemId: TcxGridDBBandedColumn
                  Caption = 'Barang'
                  DataBinding.FieldName = 'ItemId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevItemKayuMuat
                  Properties.KeyFieldNames = 'itemid'
                  Properties.ListFieldItem = cgvPrevItemKayuMuatitemname
                  Width = 174
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cgvLPBTransactionId: TcxGridDBBandedColumn
                  Caption = 'No Transaksi'
                  DataBinding.FieldName = 'TransactionId'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cgvLPBPrice: TcxGridDBBandedColumn
                  Caption = 'Harga'
                  DataBinding.FieldName = 'Price'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cgvLPBPricePrint: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PricePrint'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cgvLPBTotalQty: TcxGridDBBandedColumn
                  Caption = 'Total Qty'
                  DataBinding.FieldName = 'TotalQty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 87
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cgvLPBStatusDimensiPrice: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'StatusDimensiPrice'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cgvLPBTotalLuas: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TotalLuas'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cgvLPBTotalVolume: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TotalVolume'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cgvLPBTotalBerat: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TotalBerat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object cgvLPBAmount: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Amount'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
              end
              object cgLPBLevel1: TcxGridLevel
                Caption = 'penerimaan'
                GridView = cgvLPB
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Tally'
            ImageIndex = 2
            ExplicitHeight = 284
            object Splitter2: TSplitter
              Left = 329
              Top = 0
              Height = 276
              ExplicitLeft = 424
              ExplicitTop = 88
              ExplicitHeight = 100
            end
            object Splitter1: TSplitter
              Left = 332
              Top = 0
              Width = 2
              Height = 276
              ExplicitLeft = 309
              ExplicitHeight = 193
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 329
              Height = 276
              Align = alLeft
              Caption = 'Panel1'
              TabOrder = 0
              ExplicitHeight = 284
              object cgTallySheet: TcxGrid
                Left = 1
                Top = 25
                Width = 327
                Height = 250
                Align = alClient
                TabOrder = 0
                ExplicitTop = 31
                object cgvLPBDetailTallySheet: TcxGridDBTableView
                  NavigatorButtons.OnButtonClick = cgvLPBDetailTallySheetNavigatorButtonsButtonClick
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = dsTallysheet
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'TotalVolume'
                      Column = cgvLPBDetailTallySheetTotalVolume
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotalQty'
                      Column = cgvLPBDetailTallySheetTotalQty
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.Visible = True
                  OptionsData.Appending = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.FooterAutoHeight = True
                  OptionsView.FooterMultiSummaries = True
                  OptionsView.GroupByBox = False
                  OptionsView.GroupFooters = gfAlwaysVisible
                  object cgvLPBDetailTallySheetTallySheetId: TcxGridDBColumn
                    Caption = 'Tally Id'
                    DataBinding.FieldName = 'TallySheetId'
                    Visible = False
                  end
                  object cgvLPBDetailTallySheetTallySheetCode: TcxGridDBColumn
                    Caption = 'No Tally'
                    DataBinding.FieldName = 'TallySheetCode'
                  end
                  object cgvLPBDetailTallySheetTallySheetDate: TcxGridDBColumn
                    Caption = 'Tanggal Tally'
                    DataBinding.FieldName = 'TallySheetDate'
                  end
                  object cgvLPBDetailTallySheetTotalQty: TcxGridDBColumn
                    Caption = 'Total Pcs'
                    DataBinding.FieldName = 'TotalQty'
                    Width = 93
                  end
                  object cgvLPBDetailTallySheetTotalLuas: TcxGridDBColumn
                    Caption = 'Total Luas'
                    DataBinding.FieldName = 'TotalLuas'
                    Visible = False
                  end
                  object cgvLPBDetailTallySheetTotalVolume: TcxGridDBColumn
                    Caption = 'Total M3'
                    DataBinding.FieldName = 'TotalVolume'
                  end
                  object cgvLPBDetailTallySheetTotalBerat: TcxGridDBColumn
                    Caption = 'Total Berat'
                    DataBinding.FieldName = 'TotalBerat'
                    Visible = False
                  end
                  object cgvLPBDetailTallySheetPurchaseInvoiceId: TcxGridDBColumn
                    Caption = 'No Pembelian'
                    DataBinding.FieldName = 'PurchaseInvoiceId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Visible = False
                  end
                  object cgvLPBDetailTallySheetWarehouseId: TcxGridDBColumn
                    Caption = 'Lokasi'
                    DataBinding.FieldName = 'WarehouseId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Visible = False
                  end
                end
                object cgvLPBDetailTallySheetDt: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = dsTallySheetDt
                  DataController.DetailKeyFieldNames = 'TallySheetId'
                  DataController.KeyFieldNames = 'No'
                  DataController.MasterKeyFieldNames = 'TallySheetId'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'Qty'
                      Column = cgvLPBDetailTallySheetDtQty
                    end
                    item
                      Kind = skSum
                      FieldName = 'M3'
                      Column = cgvLPBDetailTallySheetDtM3
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.Visible = True
                  OptionsData.Appending = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.FooterAutoHeight = True
                  OptionsView.FooterMultiSummaries = True
                  OptionsView.GroupByBox = False
                  OptionsView.GroupFooterMultiSummaries = True
                  OptionsView.GroupFooters = gfAlwaysVisible
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
                object cxGridLevel1: TcxGridLevel
                  Caption = 'Penerimaan'
                  GridView = cgvLPBDetailTallySheet
                  object cgTallySheetLevel1: TcxGridLevel
                    GridView = cgvLPBDetailTallySheetDt
                  end
                end
              end
              object Panel3: TPanel
                Left = 1
                Top = 1
                Width = 327
                Height = 24
                Align = alTop
                Caption = 'Data Cutting'
                TabOrder = 1
              end
            end
            object Panel2: TPanel
              Left = 334
              Top = 0
              Width = 406
              Height = 276
              Align = alClient
              Caption = 'Panel2'
              TabOrder = 1
              ExplicitHeight = 284
              object cgRekapKayuMuat: TcxGrid
                Left = 1
                Top = 25
                Width = 404
                Height = 250
                Align = alClient
                TabOrder = 0
                ExplicitHeight = 258
                object cxGridLevel3: TcxGridLevel
                  Caption = 'Penerimaan'
                  GridView = cgvPrevRekapKayuMuatDt
                end
              end
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 404
                Height = 24
                Align = alTop
                Caption = 'Data Invoice'
                TabOrder = 1
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Surat Jalan'
            ImageIndex = 2
            ExplicitHeight = 284
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 740
              Height = 276
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 284
              object cxGrid2DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cgvSJ: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                object cgvSJReceivingRecordId: TcxGridDBColumn
                  Caption = 'No Penerimaan'
                  DataBinding.FieldName = 'ReceivingRecordId'
                  Visible = False
                  Width = 217
                end
                object cgvSJSJId: TcxGridDBColumn
                  Caption = 'No SJ'
                  DataBinding.FieldName = 'SJId'
                end
                object cgvSJSJDate: TcxGridDBColumn
                  Caption = 'Tanggal'
                  DataBinding.FieldName = 'SJDate'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 61
                end
                object cgvSJNoPolisi: TcxGridDBColumn
                  Caption = 'No Polisi'
                  DataBinding.FieldName = 'NoPolisi'
                end
                object cgvSJKendaraan: TcxGridDBColumn
                  DataBinding.FieldName = 'Kendaraan'
                end
                object cgvSJNoFAKO: TcxGridDBColumn
                  Caption = 'No FAKO'
                  DataBinding.FieldName = 'NoFAKO'
                end
                object cgvSJNoCont: TcxGridDBColumn
                  Caption = 'No Cont'
                  DataBinding.FieldName = 'NoCont'
                end
                object cgvSJDescription: TcxGridDBColumn
                  Caption = 'Keterangan'
                  DataBinding.FieldName = 'Description'
                end
              end
              object cxGridLevel2: TcxGridLevel
                Caption = 'Penerimaan'
                GridView = cgvSJ
              end
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
      inherited cgPrevDisplay: TcxGrid
        Width = 300
        Height = 140
        TabOrder = 1
        inherited cgvPrevDisplay: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'ReceivingRecordCode'
            end>
          inherited cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
          end
        end
        inherited cgPrevDisplayLevel1: TcxGridLevel
          GridView = nil
        end
      end
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
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
  end
  inherited dsPrevPurchaseOrder: TDataSource [9]
  end
  inherited cxGridViewRepository1: TcxGridViewRepository [10]
    object cgvRekapKayuMuat: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsRekapKayuMuat
      DataController.KeyFieldNames = 'KayuMuatId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvRekapKayuMuatKayuMuatId: TcxGridDBColumn
        DataBinding.FieldName = 'KayuMuatId'
        Visible = False
      end
      object cgvRekapKayuMuatKayuMuatCode: TcxGridDBColumn
        DataBinding.FieldName = 'KayuMuatCode'
      end
      object cgvRekapKayuMuatPurchaseOrderId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderId'
        Visible = False
      end
      object cgvRekapKayuMuatPurchaseOrderCode: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderCode'
      end
      object cgvRekapKayuMuatPurchaseOrderExternal: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderExternal'
      end
      object cgvRekapKayuMuatKayuMuatDate: TcxGridDBColumn
        DataBinding.FieldName = 'KayuMuatDate'
      end
      object cgvRekapKayuMuatFlagClose: TcxGridDBColumn
        DataBinding.FieldName = 'FlagClose'
      end
    end
    object cgvTally: TcxGridDBTableView
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cgvTallyTotalVolume
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvTallyReceivingRecordId: TcxGridDBColumn
        DataBinding.FieldName = 'ReceivingRecordId'
      end
      object cgvTallyNo: TcxGridDBColumn
        DataBinding.FieldName = 'No'
      end
      object cgvTallyItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
      end
      object cgvTallyTransactionId: TcxGridDBColumn
        DataBinding.FieldName = 'TransactionId'
      end
      object cgvTallyPrice: TcxGridDBColumn
        DataBinding.FieldName = 'Price'
      end
      object cgvTallyPricePrint: TcxGridDBColumn
        DataBinding.FieldName = 'PricePrint'
      end
      object cgvTallyTotalQty: TcxGridDBColumn
        DataBinding.FieldName = 'TotalQty'
      end
      object cgvTallyTotalLuas: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuas'
      end
      object cgvTallyTotalVolume: TcxGridDBColumn
        DataBinding.FieldName = 'TotalVolume'
      end
      object cgvTallyTotalBerat: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBerat'
      end
      object cgvTallyAmount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
      end
    end
    object cgvPrevItemPeriode: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemPeriode
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevItemPeriodeitemid: TcxGridDBColumn
        DataBinding.FieldName = 'itemid'
      end
      object cgvPrevItemPeriodeitemname: TcxGridDBColumn
        DataBinding.FieldName = 'itemname'
      end
    end
    object cgvPrevPurchaseInvoice: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.KeyFieldNames = 'purchaseinvoiceid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevPurchaseInvoicepurchaseinvoiceid: TcxGridDBColumn
        DataBinding.FieldName = 'purchaseinvoiceid'
        Visible = False
      end
      object cgvPrevPurchaseInvoicepurchaseinvoicecode: TcxGridDBColumn
        Caption = 'No Periode'
        DataBinding.FieldName = 'purchaseinvoicecode'
      end
      object cgvPrevPurchaseInvoicevendorname: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'vendorname'
      end
    end
    object cgvTallySheet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
    end
    object cgvPrevKayuMuat: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevKayuMuat
      DataController.KeyFieldNames = 'kayumuatid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevKayuMuatkayumuatcode: TcxGridDBColumn
        Caption = 'No Kayu Muat'
        DataBinding.FieldName = 'kayumuatcode'
      end
      object cgvPrevKayuMuatlokasimuat: TcxGridDBColumn
        Caption = 'Lokasi Muat'
        DataBinding.FieldName = 'lokasimuat'
      end
      object cgvPrevKayuMuatvendorcode: TcxGridDBColumn
        Caption = 'Kode Vendor'
        DataBinding.FieldName = 'vendorcode'
      end
      object cgvPrevKayuMuatvendorname: TcxGridDBColumn
        Caption = 'Nama Vendor'
        DataBinding.FieldName = 'vendorname'
      end
      object cgvPrevKayuMuatTotal_Nilai: TcxGridDBColumn
        Caption = 'Total Nilai'
        DataBinding.FieldName = 'Total_Nilai'
      end
      object cgvPrevKayuMuatpurchaseordercode: TcxGridDBColumn
        Caption = 'No PO'
        DataBinding.FieldName = 'purchaseordercode'
      end
      object cgvPrevKayuMuatpurchaseinvoicecode: TcxGridDBColumn
        Caption = 'No PI'
        DataBinding.FieldName = 'purchaseinvoicecode'
      end
    end
    object cgvPrevItemKayuMuat: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemKayuMuat
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevItemKayuMuatitemid: TcxGridDBColumn
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cgvPrevItemKayuMuatitemcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemcode'
      end
      object cgvPrevItemKayuMuatitemname: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'itemname'
      end
    end
    object cgvPrevRekapKayuMuatDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevRekapKayuMuat
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'M3'
          Column = cgvPrevRekapKayuMuatDtM3
          DisplayText = 'M3'
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'pcs'
          Column = cgvPrevRekapKayuMuatDtpcs
          DisplayText = 'Pcs'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'M3'
          Column = cgvPrevRekapKayuMuatDtM3
        end
        item
          Kind = skSum
          FieldName = 'pcs'
          Column = cgvPrevRekapKayuMuatDtpcs
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cgvPrevRekapKayuMuatDtNoTally: TcxGridDBColumn
        Caption = 'No Tally'
        DataBinding.FieldName = 'NoTally'
      end
      object cgvPrevRekapKayuMuatDtT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
      end
      object cgvPrevRekapKayuMuatDtL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
      end
      object cgvPrevRekapKayuMuatDtP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
      end
      object cgvPrevRekapKayuMuatDtpcs: TcxGridDBColumn
        Caption = 'Pcs'
        DataBinding.FieldName = 'pcs'
      end
      object cgvPrevRekapKayuMuatDtM3: TcxGridDBColumn
        DataBinding.FieldName = 'M3'
      end
    end
  end
  inherited dsReceivingRecordDt: TDataSource [11]
  end
  inherited dsReceivingRecordSJ: TDataSource [12]
  end
  inherited pmPrint: TPopupMenu [13]
  end
  object qryRekapKayuMuat: TADODataSet [14]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'SELECT     KayuMuatHd.KayuMuatId, KayuMuatHd.KayuMuatCode, Purch' +
      'aseOrderHd.PurchaseOrderId, PurchaseOrderHd.PurchaseOrderCode, '#13 +
      #10'                      PurchaseOrderHd.PurchaseOrderExternal, Ka' +
      'yuMuatHd.KayuMuatDate, PurchaseOrderHd.FlagClose, KayuMuatHd.War' +
      'ehouseId'#13#10'FROM         KayuMuatHd INNER JOIN'#13#10'                  ' +
      '    PurchaseOrderHd ON KayuMuatHd.PurchaseOrderId = PurchaseOrde' +
      'rHd.PurchaseOrderId'#13#10'WHERE     (PurchaseOrderHd.FlagClose = '#39'0'#39')' +
      ' AND (KayuMuatHd.WarehouseId = :warehouseid) AND (PurchaseOrderH' +
      'd.PurchaseOrderId = :purchaseorderid)'
    Parameters = <
      item
        Name = 'WarehouseId'
        Attributes = [paSigned]
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'purchaseorderid'
        Attributes = [paSigned]
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 224
    Top = 400
  end
  object dsRekapKayuMuat: TDataSource [15]
    DataSet = qryRekapKayuMuat
    Left = 256
    Top = 400
  end
  object qryPrevItemPeriode: TADODataSet [16]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select distinct c.itemid,d.itemname '#13#10'from kayumuatdt a '#13#10'left j' +
      'oin kayumuathd b on a.kayumuatid=b.kayumuatid'#13#10'left join gradere' +
      'sultinvoicedt c on a.tallysheetgradeid=c.tallysheetgradeid'#13#10'left' +
      ' join item d on c.itemid=d.itemid '#13#10'where b.purchaseinvoiceid=:p' +
      'urchaseinvoiceid'
    Parameters = <
      item
        Name = 'purchaseinvoiceid'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 224
    Top = 432
  end
  object dsPrevItemPeriode: TDataSource [17]
    DataSet = qryPrevItemPeriode
    Left = 256
    Top = 432
  end
  object qryPrevKayuMuat: TADODataSet [18]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select kayumuatid,kayumuatcode,lokasimuat,d.vendorcode,d.vendorn' +
      'ame,'#13#10'(select sum(isnull(c.price,0)) as total'#13#10'from kayumuathd a' +
      ' '#13#10'left join kayumuatdt b on a.kayumuatid=b.kayumuatid'#13#10'left joi' +
      'n graderesultinvoicedt c on b.tallysheetgradeid=c.tallysheetgrad' +
      'eid'#13#10'where a.kayumuatid=aa.kayumuatid)as Total_Nilai,b.purchaseo' +
      'rdercode,c.purchaseinvoicecode,'#13#10'b.purchaseorderid,c.purchaseinv' +
      'oiceid'#13#10'from kayumuathd aa'#13#10'left join purchaseorderhd b on aa.pu' +
      'rchaseorderid=b.purchaseorderid'#13#10'left join purchaseinvoice c on ' +
      'aa.purchaseinvoiceid=c.purchaseinvoiceid'#13#10'left join vendor d on ' +
      'b.vendorid=d.vendorid'#13#10'where aa.statuskayumuat='#39'0'#39
    Parameters = <>
    Left = 688
    Top = 80
  end
  object dsPrevKayuMuat: TDataSource [19]
    DataSet = qryPrevKayuMuat
    Left = 720
    Top = 80
  end
  object qryTallysheet: TADODataSet [20]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    AfterPost = qryTallysheetAfterPost
    OnNewRecord = qryTallysheetNewRecord
    CommandText = 
      'select *'#13#10'from TallySheet'#13#10'where tallysheetid in '#13#10'(select tally' +
      'sheetid from tallysheethistory '#13#10' where referenceid=:referenceid' +
      #13#10' and statustransaction='#39'0'#39#13#10')'
    Parameters = <
      item
        Name = 'referenceid'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Left = 376
    Top = 376
  end
  object dsTallysheet: TDataSource [21]
    DataSet = qryTallysheet
    Left = 408
    Top = 376
  end
  object qryTallySheetDt: TADODataSet [22]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    AfterPost = qryTallySheetDtAfterPost
    OnNewRecord = qryTallySheetDtNewRecord
    CommandText = 'select *'#13#10'from TallySheetDt'
    DataSource = dsTallysheet
    IndexFieldNames = 'TallySheetId'
    MasterFields = 'TallySheetId'
    Parameters = <>
    Left = 376
    Top = 432
  end
  object dsTallySheetDt: TDataSource [23]
    DataSet = qryTallySheetDt
    OnDataChange = dsTallySheetDtDataChange
    Left = 400
    Top = 432
  end
  object qryTallySheetHistory: TADODataSet [24]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from TallySheetHistory'
    DataSource = dsTallysheet
    IndexFieldNames = 'TallySheetId'
    MasterFields = 'TallySheetId'
    Parameters = <>
    Left = 408
    Top = 200
  end
  object dsTableHistory: TDataSource [25]
    DataSet = qryTallySheetHistory
    Left = 440
    Top = 200
  end
  object qryPrevItemKayuMuat: TADODataSet [26]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select distinct d.itemid,e.itemcode,e.itemname'#13#10'from kayumuathd ' +
      'a'#13#10'left join kayumuatdt b on a.kayumuatid=b.kayumuatid'#13#10'left joi' +
      'n tallysheetgrade c on b.tallysheetgradeid=c.tallysheetgradeid'#13#10 +
      'left join purchaseorderdt d on a.purchaseorderid=d.purchaseorder' +
      'id'#13#10'left join item e on d.itemid=e.itemid'#13#10'where a.kayumuatid=:k' +
      'ayumuatid'
    Parameters = <
      item
        Name = 'kayumuatid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 688
    Top = 112
  end
  object dsPrevItemKayuMuat: TDataSource [27]
    DataSet = qryPrevItemKayuMuat
    Left = 720
    Top = 112
  end
  object dsPrevRekapKayuMuat: TDataSource [28]
    DataSet = qryPrevRekapKayuMuat
    Left = 720
    Top = 152
  end
  object qryPrevRekapKayuMuat: TADODataSet [29]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select d.tallysheetgradecode as NoTally,c.tinv as T,c.linv as L,' +
      'c.pinv as P,c.qty as pcs, c.m3inv as M3'#13#10'from kayumuathd a'#13#10'left' +
      ' join kayumuatdt b on a.kayumuatid=b.kayumuatid'#13#10'left join grade' +
      'resultinvoicedt c on b.tallysheetgradeid=c.tallysheetgradeid '#13#10'l' +
      'eft join tallysheetgrade d on b.tallysheetgradeid=d.tallysheetgr' +
      'adeid'#13#10'where a.kayumuatid=:kayumuatid'
    Parameters = <
      item
        Name = 'kayumuatid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 688
    Top = 152
  end
  object qryUpdateTallySheet: TADOQuery [30]
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tallysheetid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'update tallysheet'
      
        'set totalqty=(select sum(qty) from tallysheetdt where tallysheet' +
        '.tallysheetid=tallysheetdt.tallysheetid),'
      
        'totalvolume=(select sum(m3) from tallysheetdt where tallysheet.t' +
        'allysheetid=tallysheetdt.tallysheetid)'
      'where tallysheet.tallysheetid=:tallysheetid')
    Left = 472
    Top = 352
  end
  object qryUpdateReceivingRecord: TADOQuery [32]
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'receivingrecordid'
        Size = -1
        Value = Null
      end
      item
        Name = 'no'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update receivingrecorddt'
      'set '
      'totalqty=('
      'select sum(totalqty)'
      'from TallySheet'
      'where tallysheetid in '
      '(select tallysheetid from tallysheethistory '
      ' where referenceid=receivingrecorddt.receivingrecordid'
      ' and statustransaction='#39'0'#39
      ')'
      '),'
      'totalvolume=('
      'select sum(totalvolume)'
      'from TallySheet'
      'where tallysheetid in'
      '(select tallysheetid from tallysheethistory'
      ' where referenceid=receivingrecorddt.receivingrecordid'
      ' and statustransaction='#39'0'#39
      '))'
      
        'where receivingrecorddt.receivingrecordid=:receivingrecordid and' +
        ' receivingrecorddt.no=:no')
    Left = 472
    Top = 392
  end
end
