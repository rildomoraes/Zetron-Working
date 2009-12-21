inherited fmPOManufactureBalok: TfmPOManufactureBalok
  Left = 46
  Caption = 'Order Pembelian Sawn Timber'
  Position = poDesigned
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
        inherited pnlHeader: TPanel
          inherited pcBody: TcxPageControl
            inherited tsInfo: TcxTabSheet
              object Label1: TLabel [5]
                Left = 6
                Top = 78
                Width = 51
                Height = 13
                Caption = 'Jenis Kayu'
                Transparent = True
              end
              object dblcJenisKayu: TcxDBExtLookupComboBox
                Left = 70
                Top = 75
                BeepOnEnter = False
                DataBinding.DataField = 'MaterialId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevMaterial
                Properties.KeyFieldNames = 'MaterialId'
                Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
                TabOrder = 6
                Width = 107
              end
            end
            inherited tsDipendencies: TcxTabSheet
              ExplicitWidth = 362
              ExplicitHeight = 105
            end
          end
        end
        object cgPurchaseOrderDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 282
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cgvPurchaseOrderDt: TcxGridDBTableView
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
            DataController.DataSource = dsPurchaseOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'No'
                Column = cgvPurchaseOrderDtNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvPurchaseOrderDtPurchaseOrderId: TcxGridDBColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvPurchaseOrderDtNo: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              Width = 30
            end
            object cgvPurchaseOrderDtItemId: TcxGridDBColumn
              Caption = 'Barang'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmTimber.cgvPrevItemBalok
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmTimber.cgvPrevItemBalokItemName
            end
            object cgvPurchaseOrderDtSpecId: TcxGridDBColumn
              Caption = 'Group Ukuran'
              DataBinding.FieldName = 'SpecId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevPOSpec
              Properties.KeyFieldNames = 'SpecId'
              Properties.ListFieldItem = cgvPrevPOSpecSpecCode
            end
            object cgvPurchaseOrderDtGroupQtyId: TcxGridDBColumn
              Caption = 'Group Qty'
              DataBinding.FieldName = 'GroupQtyId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevPOGroupQty
              Properties.KeyFieldNames = 'GroupQtyId'
              Properties.ListFieldItem = cgvPrevPOGroupQtyGroupQtyCode
            end
            object cgvPurchaseOrderDtPrice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'PricePrint'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvPurchaseOrderDtDescription: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'Description'
              Visible = False
            end
            object cgvPurchaseOrderDtEmployeeId: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              Visible = False
            end
          end
          object cgvPurchaseOrderGroupQty: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPurchaseOrderGroupQty
            DataController.KeyFieldNames = 'GroupQtyId'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvPurchaseOrderGroupQtyGroupQtyId: TcxGridDBColumn
              DataBinding.FieldName = 'GroupQtyId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvPurchaseOrderGroupQtyPurchaseOrderId: TcxGridDBColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvPurchaseOrderGroupQtyGroupQtyCode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'GroupQtyCode'
            end
            object cgvPurchaseOrderGroupQtyGroupQty: TcxGridDBColumn
              Caption = 'Kubikasi (M3)'
              DataBinding.FieldName = 'GroupQty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgvPurchaseOrderSpec: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPurchaseOrderSpec
            DataController.KeyFieldNames = 'SpecId'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            Bands = <
              item
              end
              item
                Caption = 'Cutting'
              end
              item
                Caption = 'Invoice'
              end>
            object cgvPurchaseOrderSpecSpecId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SpecId'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPurchaseOrderId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecSpecCode: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'SpecCode'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecTCut: TcxGridDBBandedColumn
              Caption = 'T'
              DataBinding.FieldName = 'TCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecTMaxCut: TcxGridDBBandedColumn
              Caption = 'T Max'
              DataBinding.FieldName = 'TMaxCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecLCut: TcxGridDBBandedColumn
              Caption = 'L'
              DataBinding.FieldName = 'LCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecLMaxCut: TcxGridDBBandedColumn
              Caption = 'L Max'
              DataBinding.FieldName = 'LMaxCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPCut: TcxGridDBBandedColumn
              Caption = 'P'
              DataBinding.FieldName = 'PCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPMaxCut: TcxGridDBBandedColumn
              Caption = 'P Max'
              DataBinding.FieldName = 'PMaxCut'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecTInv: TcxGridDBBandedColumn
              Caption = 'T'
              DataBinding.FieldName = 'TInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecTMaxInv: TcxGridDBBandedColumn
              Caption = 'T Max'
              DataBinding.FieldName = 'TMaxInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecTInterval: TcxGridDBBandedColumn
              Caption = 'T Interval'
              DataBinding.FieldName = 'TInterval'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecLInv: TcxGridDBBandedColumn
              Caption = 'L'
              DataBinding.FieldName = 'LInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecLMaxInv: TcxGridDBBandedColumn
              Caption = 'L Max'
              DataBinding.FieldName = 'LMaxInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecLInterval: TcxGridDBBandedColumn
              Caption = 'L Interval'
              DataBinding.FieldName = 'LInterval'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPInv: TcxGridDBBandedColumn
              Caption = 'P'
              DataBinding.FieldName = 'PInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPMaxInv: TcxGridDBBandedColumn
              Caption = 'P Max'
              DataBinding.FieldName = 'PMaxInv'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderSpecPInterval: TcxGridDBBandedColumn
              Caption = 'P Interval'
              DataBinding.FieldName = 'PInterval'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Moving = False
              Position.BandIndex = 2
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Group Ukuran'
            GridView = cgvPurchaseOrderSpec
          end
          object cgPurchaseOrderDtLevel2: TcxGridLevel
            Caption = 'Group Qty'
            GridView = cgvPurchaseOrderGroupQty
          end
          object cgPurchaseOrderDtLevel3: TcxGridLevel
            Caption = 'Barang'
            GridView = cgvPurchaseOrderDt
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        inherited cgvPrevDisplay: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplayPurchaseOrderDate
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'PurchaseOrderCode'
              Column = cgvPrevDisplayPurchaseOrderDate
            end>
        end
      end
    end
  end
  inherited qryPurchaseOrderHd: TADODataSet [8]
  end
  inherited dsPurchaseOrderDt: TDataSource [9]
  end
  inherited pmPrint: TPopupMenu [10]
  end
  inherited dsPrevVendorContact: TDataSource
    Top = 240
  end
  inherited cxGridViewRepository1: TcxGridViewRepository
    Top = 240
    object cgvPrevPOSpec: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPurchaseOrderSpec
      DataController.KeyFieldNames = 'SpecId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPOSpecSpecId: TcxGridDBColumn
        DataBinding.FieldName = 'SpecId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOSpecPurchaseOrderId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOSpecSpecCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'SpecCode'
      end
      object cgvPrevPOSpecTCut: TcxGridDBColumn
        Caption = 'T Cut'
        DataBinding.FieldName = 'TCut'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
      object cgvPrevPOSpecLCut: TcxGridDBColumn
        Caption = 'L Cut'
        DataBinding.FieldName = 'LCut'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
      object cgvPrevPOSpecPCut: TcxGridDBColumn
        Caption = 'P Cut'
        DataBinding.FieldName = 'PCut'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
      object cgvPrevPOSpecTInv: TcxGridDBColumn
        DataBinding.FieldName = 'TInv'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
      object cgvPrevPOSpecLInv: TcxGridDBColumn
        Caption = 'L Inv'
        DataBinding.FieldName = 'LInv'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
      object cgvPrevPOSpecPInv: TcxGridDBColumn
        Caption = 'P Inv'
        DataBinding.FieldName = 'PInv'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 50
      end
    end
    object cgvPrevPOGroupQty: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPurchaseOrderGroupQty
      DataController.KeyFieldNames = 'GroupQtyId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPOGroupQtyGroupQtyId: TcxGridDBColumn
        DataBinding.FieldName = 'GroupQtyId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOGroupQtyPurchaseOrderId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOGroupQtyGroupQtyCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'GroupQtyCode'
      end
      object cgvPrevPOGroupQtyGroupQty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'GroupQty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
  end
  inherited qryPrevVendorContact: TADOQuery
    Top = 240
  end
  object dsPurchaseOrderGroupQty: TDataSource [15]
    DataSet = qryPurchaseOrderGroupQty
    Left = 168
    Top = 208
  end
  object dsPurchaseOrderSpec: TDataSource [16]
    DataSet = qryPurchaseOrderSpec
    Left = 168
    Top = 176
  end
  object qryPurchaseOrderGroupQty: TADOQuery [17]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryPurchaseOrderGroupQtyNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PurchaseOrderGroupQty'
      'where PurchaseOrderCode = :PurchaseOrderCode')
    Left = 136
    Top = 208
  end
  object qryPurchaseOrderSpec: TADOQuery [18]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    AfterPost = qryPurchaseOrderSpecAfterPost
    OnNewRecord = qryPurchaseOrderSpecNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PurchaseOrderSpec'
      'where PurchaseOrderCode = :PurchaseOrderCode')
    Left = 136
    Top = 176
  end
  inherited qryPurchaseOrderDt: TADOQuery
    CursorType = ctStatic
  end
end
