inherited fmPOManufactureLog: TfmPOManufactureLog
  Caption = 'Order Pembelian Log'
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
              object Label5: TLabel [6]
                Left = 187
                Top = 78
                Width = 75
                Height = 13
                Caption = 'Perhitungan M3'
                Transparent = True
              end
              object dbeStatusLogCalculate: TcxDBImageComboBox
                Left = 269
                Top = 75
                DataBinding.DataField = 'StatusLogCalculate'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'Rumus'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'Tabel'
                    Value = '1'
                  end>
                TabOrder = 7
                Width = 88
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
              PropertiesClassName = 'TcxSpinEditProperties'
              Width = 30
            end
            object cgvPurchaseOrderDtItemId: TcxGridDBColumn
              Caption = 'Log'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmTimber.cgvPrevItemLog
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmTimber.cgvPrevItemLogItemName
            end
            object cgvPurchaseOrderDtSpecId: TcxGridDBColumn
              Caption = 'Group Ukuran'
              DataBinding.FieldName = 'SpecId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevOrderSpec
              Properties.KeyFieldNames = 'SpecId'
              Properties.ListFieldItem = cgvPrevOrderSpecSpecCode
            end
            object cgvPurchaseOrderDtGroupQtyId: TcxGridDBColumn
              Caption = 'Group Qty'
              DataBinding.FieldName = 'GroupQtyId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevGroupQty
              Properties.KeyFieldNames = 'GroupQtyId'
              Properties.ListFieldItem = cgvPrevGroupQtyGroupQtyCode
            end
            object cgvPurchaseOrderDtPrice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'PricePrint'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvPurchaseOrderDtDescription: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'Description'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Width = 150
            end
            object cgvPurchaseOrderDtEmployeeId: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              Visible = False
            end
          end
          object cgPurchaseOrderGroupQty: TcxGridDBTableView
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
            object cgPurchaseOrderGroupQtyPurchaseOrderId: TcxGridDBColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgPurchaseOrderGroupQtyGroupQtyId: TcxGridDBColumn
              DataBinding.FieldName = 'GroupQtyId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgPurchaseOrderGroupQtyGroupQtyCode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'GroupQtyCode'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object cgPurchaseOrderGroupQtyGroupQty: TcxGridDBColumn
              Caption = 'Kubikasi'
              DataBinding.FieldName = 'GroupQty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgPurchaseOrderSpec: TcxGridDBTableView
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
            object cgPurchaseOrderSpecPurchaseOrderId: TcxGridDBColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgPurchaseOrderSpecSpecId: TcxGridDBColumn
              DataBinding.FieldName = 'SpecId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgPurchaseOrderSpecSpecCode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'SpecCode'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object cgPurchaseOrderSpecDAvgInv: TcxGridDBColumn
              Caption = 'Diameter'
              DataBinding.FieldName = 'DAvgInv'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgPurchaseOrderSpecDAvgInvMax: TcxGridDBColumn
              Caption = 'Diameter Max'
              DataBinding.FieldName = 'DAvgInvMax'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgPurchaseOrderSpecPInv: TcxGridDBColumn
              Caption = 'Panjang'
              DataBinding.FieldName = 'PInv'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgPurchaseOrderSpecPMaxInv: TcxGridDBColumn
              Caption = 'Panjang Max'
              DataBinding.FieldName = 'PMaxInv'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgPurchaseOrderSpecPInterval: TcxGridDBColumn
              Caption = 'Interval Panjang'
              DataBinding.FieldName = 'PInterval'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Group Ukuran'
            GridView = cgPurchaseOrderSpec
          end
          object cgPurchaseOrderDtLevel2: TcxGridLevel
            Caption = 'Group Qty'
            GridView = cgPurchaseOrderGroupQty
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
    object cgvPrevOrderSpec: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPurchaseOrderSpec
      DataController.KeyFieldNames = 'SpecId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevOrderSpecSpecId: TcxGridDBColumn
        DataBinding.FieldName = 'SpecId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevOrderSpecSpecCode: TcxGridDBColumn
        Caption = 'Kode Ukuran'
        DataBinding.FieldName = 'SpecCode'
      end
    end
    object cgvPrevGroupQty: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPurchaseOrderGroupQty
      DataController.KeyFieldNames = 'GroupQtyId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupQtyGroupQtyId: TcxGridDBColumn
        DataBinding.FieldName = 'GroupQtyId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevGroupQtyGroupQtyCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'GroupQtyCode'
      end
      object cgvPrevGroupQtyGroupQty: TcxGridDBColumn
        Caption = 'Kubikasi'
        DataBinding.FieldName = 'GroupQty'
        PropertiesClassName = 'TcxCalcEditProperties'
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
  inherited qryPurchaseOrderDt: TADOQuery
    CursorType = ctStatic
  end
  object qryPurchaseOrderGroupQty: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPurchaseOrderGroupQtyBeforeInsert
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
  object qryPurchaseOrderSpec: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPurchaseOrderSpecBeforeInsert
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
end
