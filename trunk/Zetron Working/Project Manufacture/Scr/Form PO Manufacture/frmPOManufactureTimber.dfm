inherited fmPOManufactureTimber: TfmPOManufactureTimber
  Caption = 'Form PO Kayu'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited chkFlagClose: TcxDBCheckBox
      Top = 75
      ExplicitTop = 75
    end
  end
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
          object Label1: TLabel [7]
            Left = 304
            Top = 60
            Width = 51
            Height = 13
            Caption = 'Jenis Kayu'
            Transparent = True
          end
          object Label6: TLabel [8]
            Left = 304
            Top = 78
            Width = 67
            Height = 13
            Caption = 'Kubikasi Total'
            Transparent = True
          end
          inherited dblcStatusReceivingTerm: TcxDBImageComboBox
            TabOrder = 12
          end
          object dblcMaterial: TcxDBExtLookupComboBox
            Left = 402
            Top = 57
            BeepOnEnter = False
            DataBinding.DataField = 'MaterialId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevMaterial
            Properties.KeyFieldNames = 'MaterialId'
            Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            Style.ButtonTransparency = ebtAlways
            TabOrder = 10
            Width = 202
          end
          object dbeTotal: TcxDBCalcEdit
            Left = 402
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'GrandTotal'
            DataBinding.DataSource = dsDefault
            TabOrder = 11
            Width = 121
          end
        end
        object cgPurchaseOrderDt: TcxGrid [1]
          Left = 0
          Top = 105
          Width = 740
          Height = 199
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cgvPurchaseOrderBalok: TcxGridDBBandedTableView
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
            DataController.DataSource = dsPurchaseOrderDtBalok
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cgvPurchaseOrderBalokNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Bands = <
              item
              end
              item
                Caption = 'Cutting'
              end
              item
                Caption = 'Invoice'
              end
              item
              end
              item
                Caption = 'Prosentase'
              end>
            object cgvPurchaseOrderBalokNo: TcxGridDBBandedColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokKwalitas: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'ItemId'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokTCutting: TcxGridDBBandedColumn
              Caption = 'T'
              DataBinding.FieldName = 'TCut'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokLCutting: TcxGridDBBandedColumn
              Caption = 'L'
              DataBinding.FieldName = 'LCut'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPCutting: TcxGridDBBandedColumn
              Caption = 'P'
              DataBinding.FieldName = 'PCut'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokTInvoice: TcxGridDBBandedColumn
              Caption = 'T'
              DataBinding.FieldName = 'TInv'
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokLInvoice: TcxGridDBBandedColumn
              Caption = 'L'
              DataBinding.FieldName = 'LInv'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokLInterval: TcxGridDBBandedColumn
              Caption = 'L Interval'
              DataBinding.FieldName = 'LInvInterval'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPInvoice: TcxGridDBBandedColumn
              Caption = 'P'
              DataBinding.FieldName = 'PInv'
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPInterval: TcxGridDBBandedColumn
              Caption = 'P Interval'
              DataBinding.FieldName = 'PInvInterval'
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPrice: TcxGridDBBandedColumn
              Caption = 'Harga / M3'
              DataBinding.FieldName = 'Price'
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Qty'
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokKubikasi: TcxGridDBBandedColumn
              Caption = 'Kubikasi'
              DataBinding.FieldName = 'M3Inv'
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokFlagProsentase: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FlagUseProsentase'
              Width = 30
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cgvPurchaseOrderBalokProsentase: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'Prosentase'
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokEmployeeId: TcxGridDBBandedColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Properties.ReadOnly = True
              Visible = False
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cgvPurchaseOrderLog: TcxGridDBTableView
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
            DataController.DataSource = dsPurchaseOrderDtLog
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cgvPurchaseOrderLogNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvPurchaseOrderLogNo: TcxGridDBColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              Width = 30
            end
            object cgvPurchaseOrderLogKwalitas: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'ItemId'
            end
            object cgvPurchaseOrderLogDAvg: TcxGridDBColumn
              Caption = 'D Rata2'
              DataBinding.FieldName = 'DAvgInv'
            end
            object cgvPurchaseOrderLogPrice: TcxGridDBColumn
              Caption = 'Harga / M3'
              DataBinding.FieldName = 'Price'
            end
            object cgvPurchaseOrderLogQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
            end
            object cgvPurchaseOrderLogKubikasi: TcxGridDBColumn
              Caption = 'Kubikasi'
              DataBinding.FieldName = 'M3Inv'
            end
            object cgvPurchaseOrderLogEmployeeId: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'EmployeeId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Properties.ReadOnly = True
              Visible = False
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Sawn Timber / Square'
            GridView = cgvPurchaseOrderBalok
          end
          object cgPurchaseOrderDtLevel2: TcxGridLevel
            Caption = 'Log'
            GridView = cgvPurchaseOrderLog
          end
        end
        inherited cxPageControl1: TcxPageControl
          TabOrder = 2
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      Height = 140
      ExplicitLeft = 0
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
  object qryPurchaseOrderDtBalok: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPurchaseOrderDtBalokBeforePost
    CommandText = 
      'select *'#13#10'from PurchaseOrderDt'#13#10'where PurchaseOrderId = :Purchas' +
      'eOrderId'
    DataSource = dsDefault
    IndexFieldNames = 'PurchaseOrderId'
    MasterFields = 'PurchaseOrderId'
    Parameters = <
      item
        Name = 'PurchaseOrderId'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 136
    Top = 144
  end
  object dsPurchaseOrderDtBalok: TDataSource
    DataSet = qryPurchaseOrderDtBalok
    Left = 168
    Top = 144
  end
  object qryPurchaseOrderDtLog: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPurchaseOrderDtLogBeforePost
    CommandText = 
      'select *'#13#10'from PurchaseOrderDt'#13#10'where PurchaseOrderId = :Purchas' +
      'eOrderId'
    DataSource = dsDefault
    IndexFieldNames = 'PurchaseOrderId'
    MasterFields = 'PurchaseOrderId'
    Parameters = <
      item
        Name = 'PurchaseOrderId'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object dsPurchaseOrderDtLog: TDataSource
    DataSet = qryPurchaseOrderDtLog
    Left = 168
    Top = 176
  end
end
