inherited fmPOManufactureItem: TfmPOManufactureItem
  ExplicitWidth = 780
  ExplicitHeight = 500
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
              inherited chkFlagClose: TcxDBCheckBox
                ExplicitHeight = 21
              end
            end
            inherited tsInternalMemo: TcxTabSheet
              ExplicitWidth = 362
              ExplicitHeight = 105
            end
            inherited tsStatementMemo: TcxTabSheet
              ExplicitWidth = 362
              ExplicitHeight = 105
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
          object cgvPurchaseOrderItem: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = True
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
            Bands = <
              item
                Caption = 'Barang'
              end
              item
                Caption = 'Harga / Satuan'
              end
              item
                Caption = 'Total'
              end>
            object cgvPurchaseOrderItemPurchaseOrderId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PurchaseOrderId'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemNo: TcxGridDBBandedColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemItemId: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemUnitMeasure: TcxGridDBBandedColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Options.Editing = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemQtyPrint: TcxGridDBBandedColumn
              Caption = 'Qty/Sat'
              DataBinding.FieldName = 'QtyPrint'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Styles.Content = dmGlobal.stRedLight
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemStatusDimensiPrice: TcxGridDBBandedColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'StatusDimensiPrice'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevStatusDimensi
              Properties.KeyFieldNames = 'StatusDimensi'
              Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
              Options.Filtering = False
              Options.Moving = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemPricePrint: TcxGridDBBandedColumn
              Caption = '@ Harga'
              DataBinding.FieldName = 'PricePrint'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Options.Moving = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemItemTax: TcxGridDBBandedColumn
              Caption = 'PPN'
              DataBinding.FieldName = 'ItemTax'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemItemTaxPrice: TcxGridDBBandedColumn
              Caption = 'PPN (Rp)'
              DataBinding.FieldName = 'ItemTaxPrice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'Amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.ReadOnly = True
              Styles.Content = dmGlobal.stRedLight
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemDescription: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'Description'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Width = 150
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderItemEmployeeId: TcxGridDBBandedColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Properties.ReadOnly = True
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Log'
            GridView = cgvPurchaseOrderItem
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = -300
      Height = 391
      ExplicitHeight = 391
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
    AfterPost = qryPurchaseOrderHdAfterPost
  end
  inherited dsPurchaseOrderDt: TDataSource [9]
  end
  inherited pmPrint: TPopupMenu [10]
  end
  inherited qryGetItemPrice: TADOQuery
    SQL.Strings = (
      'select '
      
        '  a.M2, a.M3, a.Berat, a.StatusPurchasePricing, a.StatusPurchase' +
        'Dimensi,'
      '  b.Price1,'
      
        '  c.Price, c.DiscItem, c.DiscItemPrice, c.DiscItem2, c.DiscItemP' +
        'rice2'
      'from Item a'
      'left join PurchasePriceList b on a.ItemId = b.ItemId '
      
        'left join PurchasePrice c on (a.ItemId = c.ItemId and c.VendorId' +
        ' = :VendorId)'
      'where a.ItemId = :ItemId')
  end
  inherited qryPurchaseOrderDt: TADOQuery
    CursorType = ctStatic
  end
  object qryGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Mode'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        Size = -1
        Value = Null
      end
      item
        Name = 'prm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select dbo.fnGetId(:Mode,:tgl,:prm) as GenCounter')
    Left = 136
    Top = 264
  end
  object qrySetCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Mode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'prm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'exec dbo.spSetId :Mode,:tgl,:prm')
    Left = 136
    Top = 320
  end
end
