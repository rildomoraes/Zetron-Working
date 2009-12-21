inherited fmPOManufacturePenolong: TfmPOManufacturePenolong
  Caption = 'Form PO Bahan Penolong'
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
          inherited dblcCurrencyId: TcxDBExtLookupComboBox
            Properties.OnEditValueChanged = nil
          end
        end
        object cgPurchaseOrderDt: TcxGrid [1]
          Left = 0
          Top = 105
          Width = 740
          Height = 199
          Align = alClient
          TabOrder = 1
          object cgvPurchaseOrderItem: TcxGridDBTableView
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
                Column = cgvPurchaseOrderItemNo
              end
              item
                Kind = skSum
                FieldName = 'Amount'
                Column = cgvPurchaseOrderItemAmount
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvPurchaseOrderItemNo: TcxGridDBColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              Width = 30
            end
            object cgvPurchaseOrderItemItemId: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemPenolong
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemPenolongItemName
            end
            object cgvPurchaseOrderItemQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvPurchaseOrderItemPrice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
            end
            object cgvPurchaseOrderItemPricePrint: TcxGridDBColumn
              Caption = 'Harga Satuan'
              DataBinding.FieldName = 'PricePrint'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvPurchaseOrderItemItemTax: TcxGridDBColumn
              Caption = 'PPN'
              DataBinding.FieldName = 'ItemTax'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
            end
            object cgvPurchaseOrderItemItemTaxPrice: TcxGridDBColumn
              Caption = 'PPN (Rp)'
              DataBinding.FieldName = 'ItemTaxPrice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
            end
            object cgvPurchaseOrderItemAmount: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'Amount'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvPurchaseOrderItemDescription: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'Description'
              Width = 150
            end
            object cgvPurchaseOrderItemEmployeeId: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Properties.ReadOnly = True
              Visible = False
            end
            object cgvPurchaseOrderItemStatusDimensiPrice: TcxGridDBColumn
              Caption = 'Satuan Harga'
              DataBinding.FieldName = 'StatusDimensiPrice'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevStatusDimensi
              Properties.KeyFieldNames = 'StatusDimensi'
              Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Log'
            GridView = cgvPurchaseOrderItem
          end
        end
        inherited cxPageControl1: TcxPageControl
          TabOrder = 2
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        Height = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited qryPurchaseOrderHd: TADODataSet [8]
  end
  inherited dsPurchaseOrderDt: TDataSource [9]
  end
  inherited pmPrint: TPopupMenu [10]
  end
  object qryGetPurchasePrice: TADOQuery [13]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'VendorId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      '  Price, DiscItem, DiscItemPrice'
      'from PurchasePrice'
      'where VendorId = :VendorId'
      'and ItemId = :ItemId')
    Left = 136
    Top = 208
  end
  object qryGetPurchasePriceList: TADOQuery [14]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
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
      'select Price1'
      'from PurchasePriceList'
      'where ItemId = :ItemId')
    Left = 168
    Top = 208
  end
end
