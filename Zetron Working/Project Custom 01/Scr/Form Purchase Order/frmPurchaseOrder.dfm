inherited fmPurchaseOrder: TfmPurchaseOrder
  Caption = 'Order Pembelian (PO)'
  ExplicitWidth = 780
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited dbeEmployee: TcxDBTextEdit
      ExplicitHeight = 19
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
        object pnlDetailTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 123
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            123)
          object lblPurchaseOrderDate: TLabel
            Left = 7
            Top = 28
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdSupplier: TLabel
            Left = 7
            Top = 46
            Width = 38
            Height = 13
            Caption = 'Supplier'
            Transparent = True
          end
          object lblIdPurchaseOrder: TLabel
            Left = 7
            Top = 10
            Width = 82
            Height = 13
            Caption = 'Indent Pembelian'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 7
            Top = 100
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object lblContactPerson: TLabel
            Left = 7
            Top = 82
            Width = 73
            Height = 13
            Caption = 'Contact Person'
            Transparent = True
          end
          object lblSupplierSO: TLabel
            Left = 7
            Top = 64
            Width = 88
            Height = 13
            Caption = 'No Indent Supplier'
            Transparent = True
          end
          object dblcSupplier: TcxDBExtLookupComboBox
            Left = 111
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSupplier'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
            TabOrder = 2
            Width = 161
          end
          object dbePurchaseOrderDate: TcxDBDateEdit
            Left = 111
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'dtPurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dbeIdPurchaseOrder: TcxDBTextEdit
            Left = 111
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdPurchaseOrder'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 111
            Top = 98
            BeepOnEnter = False
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 5
            Width = 161
          end
          object dbeContactPerson: TcxDBTextEdit
            Left = 111
            Top = 80
            BeepOnEnter = False
            DataBinding.DataField = 'vcContactPerson'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 288
            Top = 6
            Width = 437
            Height = 111
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 6
            ClientRectBottom = 105
            ClientRectLeft = 3
            ClientRectRight = 431
            ClientRectTop = 26
            object tsNotes: TcxTabSheet
              Caption = 'Notes'
              ImageIndex = 0
              object dbmNotes: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txNotes'
                DataBinding.DataSource = dsDefault
                Properties.ReadOnly = True
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 79
                Width = 428
              end
            end
            object tsMemo: TcxTabSheet
              Caption = 'Memo'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dbMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txMemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 79
                Width = 428
              end
            end
          end
          object dbeSupplierSO: TcxDBTextEdit
            Left = 111
            Top = 62
            BeepOnEnter = False
            DataBinding.DataField = 'vcSupplierSalesOrder'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 161
          end
        end
        object cgPurchaseOrderDt: TcxGrid
          Left = 0
          Top = 123
          Width = 740
          Height = 227
          Align = alClient
          TabOrder = 1
          object cgvPurchaseOrderDt: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsIMPurchaseOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvPurchaseOrderDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvPurchaseOrderDtdcAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvPurchaseOrderDtDataControllerSummaryAfterSummary
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
                Caption = 'Supplies'
              end
              item
              end>
            object cgvPurchaseOrderDtvcIdPurchaseOrder: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdPurchaseOrder'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtinNo: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 38
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtvcIdSupplies: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtvcIdSupplies2: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtvcIdSupplies3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtdtShippingDate: TcxGridDBBandedColumn
              Caption = 'Tgl Pengiriman'
              DataBinding.FieldName = 'dtShippingDate'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtinQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtdcPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'dcPrice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtdcDiscItem: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'dcDiscItem'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtdcDiscItemPrice: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'dcDiscItemPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderDtdcAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'dcAmount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            GridView = cgvPurchaseOrderDt
          end
        end
        object pnlDetailBottom: TPanel
          Left = 0
          Top = 350
          Width = 740
          Height = 37
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            740
            37)
          object lblTax: TLabel
            Left = 226
            Top = 10
            Width = 35
            Height = 13
            Caption = 'Tax (%)'
            Transparent = True
          end
          object lblTotal: TLabel
            Left = 442
            Top = 10
            Width = 24
            Height = 13
            Caption = 'Total'
            Transparent = True
          end
          object lblDisc: TLabel
            Left = 7
            Top = 10
            Width = 38
            Height = 13
            Caption = 'Disc (%)'
            Transparent = True
          end
          object dbeTax: TcxDBSpinEdit
            Left = 266
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcTax'
            DataBinding.DataSource = dsDefault
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 1
            Width = 65
          end
          object dbeDisc: TcxDBSpinEdit
            Left = 50
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcDisc'
            DataBinding.DataSource = dsDefault
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 0
            Width = 65
          end
          object dbeDiscAmount: TcxDBCurrencyEdit
            Left = 114
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcDiscAmount'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 105
          end
          object dbeTaxAmount: TcxDBCurrencyEdit
            Left = 330
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcTaxAmount'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 105
          end
          object dbeTotalAmount: TcxDBCurrencyEdit
            Left = 474
            Top = 5
            Anchors = [akLeft, akTop, akRight]
            BeepOnEnter = False
            DataBinding.DataField = 'dcTotalAmount'
            DataBinding.DataSource = dsDefault
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 180
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPurchaseOrderHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPurchaseOrderHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.DetailKeyFieldNames = 'vcIdPurchaseOrder'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvPurchaseOrderHdStylesGetContentStyle
          object cgvPurchaseOrderHdvcIdPurchaseOrder: TcxGridDBColumn
            Caption = 'Indent'
            DataBinding.FieldName = 'vcIdPurchaseOrder'
            Width = 80
          end
          object cgvPurchaseOrderHddtPurchaseOrderDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchaseOrderDate'
            Width = 80
          end
          object cgvPurchaseOrderHdvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcIdSupplier'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cgvPurchaseOrderHdchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Options.SortByDisplayText = isbtOff
          end
        end
        object cgPurchaseOrderHdLevel1: TcxGridLevel
          GridView = cgvPurchaseOrderHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Top = 81
    inherited actApprove: TAction
      OnExecute = actApproveExecute
    end
    inherited actRevision: TAction
      OnExecute = actRevisionExecute
    end
    inherited actNotes: TAction
      OnExecute = actNotesExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dtsIMPurchaseOrderHd
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object dtsIMPurchaseOrderHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMPurchaseOrderHdBeforeEdit
    BeforePost = dtsIMPurchaseOrderHdBeforePost
    OnNewRecord = dtsIMPurchaseOrderHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMPurchaseOrderHd'#13#10'where (chStatusApprove = :A' +
      'pprove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :R' +
      'eject'#13#10'or chStatusApprove = :Done)'#13#10'and dtPurchaseOrderDate betw' +
      'een :StartDate and :EndDate'#13#10'order by chStatusApprove, vcIdPurch' +
      'aseOrder'
    MasterFields = 'vcIdPurchaseOrder'
    Parameters = <
      item
        Name = 'Approve1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Approve2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Done'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'StartDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDate'
        Size = -1
        Value = Null
      end>
    Left = 137
    Top = 114
  end
  object dtsIMPurchaseOrderDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMPurchaseOrderDtBeforeInsert
    BeforeEdit = dtsIMPurchaseOrderDtBeforeEdit
    BeforePost = dtsIMPurchaseOrderDtBeforePost
    AfterPost = dtsIMPurchaseOrderDtAfterPost
    BeforeDelete = dtsIMPurchaseOrderDtBeforeDelete
    AfterDelete = dtsIMPurchaseOrderDtAfterDelete
    OnNewRecord = dtsIMPurchaseOrderDtNewRecord
    CommandText = 'select *'#13#10'from tbIMPurchaseOrderDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdPurchaseOrder'
    MasterFields = 'vcIdPurchaseOrder'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMPurchaseOrderDt: TDataSource
    DataSet = dtsIMPurchaseOrderDt
    OnDataChange = dsIMPurchaseOrderDtDataChange
    Left = 168
    Top = 144
  end
  object spPurchaseOrderValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spPurchaseOrderValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPurchaseOrder'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 137
    Top = 176
  end
  object qryGetPOInfo: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdPurchaseOrder'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove'
      'from tbIMPurchaseOrderHd '
      'where vcIdPurchaseOrder = :vcIdPurchaseOrder')
    Left = 136
    Top = 208
  end
end
