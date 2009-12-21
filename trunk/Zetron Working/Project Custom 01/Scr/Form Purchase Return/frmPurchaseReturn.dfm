inherited fmPurchaseReturn: TfmPurchaseReturn
  Caption = 'Retur Pembelian (PR)'
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
          Height = 145
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            145)
          object lblIdPurchaseReturn: TLabel
            Left = 8
            Top = 10
            Width = 95
            Height = 13
            Caption = 'No Retur Pembelian'
            Transparent = True
          end
          object lblPurchaseReturnDate: TLabel
            Left = 8
            Top = 28
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdPurchaseInvoice: TLabel
            Left = 8
            Top = 46
            Width = 75
            Height = 13
            Caption = 'Nota Pembelian'
            Transparent = True
          end
          object lblIdSupplier: TLabel
            Left = 8
            Top = 64
            Width = 38
            Height = 13
            Caption = 'Supplier'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 8
            Top = 118
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object lblIdDeliveryOrder: TLabel
            Left = 8
            Top = 100
            Width = 53
            Height = 13
            Caption = 'Surat Jalan'
            Transparent = True
          end
          object cxLabel1: TLabel
            Left = 8
            Top = 82
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Color = clBtnFace
            ParentColor = False
            Transparent = True
          end
          object pcNotes: TcxPageControl
            Left = 296
            Top = 6
            Width = 429
            Height = 133
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            ClientRectBottom = 127
            ClientRectLeft = 3
            ClientRectRight = 423
            ClientRectTop = 26
            object tsNotes: TcxTabSheet
              Caption = 'Notes'
              ImageIndex = 0
              object dbmNotes: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                Anchors = [akTop, akRight, akBottom]
                DataBinding.DataField = 'txNotes'
                DataBinding.DataSource = dsDefault
                Properties.ReadOnly = True
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 101
                Width = 420
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
                Height = 101
                Width = 420
              end
            end
            object tsDeliveryAddress: TcxTabSheet
              Caption = 'Alamat DO'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dbmDeliveryAddress: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderAddress'
                DataBinding.DataSource = dsDefault
                TabOrder = 0
                Height = 101
                Width = 420
              end
            end
            object tsNotesDeliveryOrder: TcxTabSheet
              Caption = 'Notes DO'
              ImageIndex = 3
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dbmNotesDeliveryOrder: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderNotes'
                DataBinding.DataSource = dsDefault
                TabOrder = 0
                Height = 101
                Width = 420
              end
            end
          end
          object dbeIdPurchaseReturn: TcxDBTextEdit
            Left = 120
            Top = 8
            DataBinding.DataField = 'vcIdPurchaseReturn'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.OnEditValueChanged = dbeIdPurchaseReturnPropertiesEditValueChanged
            TabOrder = 1
            Width = 161
          end
          object dbePurchaseReturnDate: TcxDBDateEdit
            Left = 120
            Top = 26
            DataBinding.DataField = 'dtPurchaseReturnDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 161
          end
          object dblcIdSupplier: TcxDBExtLookupComboBox
            Left = 120
            Top = 62
            DataBinding.DataField = 'vcIdSupplier'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
            Style.ButtonTransparency = ebtHideInactive
            TabOrder = 3
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 120
            Top = 116
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 161
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 120
            Top = 80
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 5
            Width = 161
          end
          object dbeIdRefDO: TcxDBTextEdit
            Left = 120
            Top = 98
            DataBinding.DataField = 'vcIdRefDO'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 161
          end
          object btnPurchaseInvoice: TcxButton
            Left = 263
            Top = 44
            Width = 19
            Height = 19
            Caption = '...'
            TabOrder = 7
            OnClick = btnPurchaseInvoiceClick
          end
          object dbeIdPurchaseInvoice: TcxDBTextEdit
            Left = 120
            Top = 44
            DataBinding.DataField = 'vcIdPurchaseInvoice'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 143
          end
        end
        object cgPurchaseReturnDt: TcxGrid
          Left = 0
          Top = 145
          Width = 740
          Height = 205
          Align = alClient
          TabOrder = 1
          object cgvPurchaseReturnDt: TcxGridDBBandedTableView
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
            DataController.DataSource = dsIMPurchaseReturnDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvPurchaseReturnDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvPurchaseReturnDtdcAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvPurchaseReturnDtDataControllerSummaryAfterSummary
            NewItemRow.Visible = True
            OptionsCustomize.ColumnFiltering = False
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
                Caption = 'Supplies'
                Width = 384
              end
              item
                Width = 204
              end>
            object cgvPurchaseReturnDtvcIdPurchaseReturn: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdPurchaseReturn'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtinNo: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              SortIndex = 0
              SortOrder = soAscending
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtvcIdSupplies: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcIdSupplies
              Properties.OnInitPopup = cgvPurchaseReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtvcIdSupplies1: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcSuppliesName
              Properties.OnInitPopup = cgvPurchaseReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 163
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtvcIdSupplies2: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcType
              Properties.OnInitPopup = cgvPurchaseReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtinQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 54
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtdcPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'dcPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 84
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtdcDisc: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'dcDiscItem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtdcDiscAmount: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'dcDiscItemPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseReturnDtdcAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'dcAmount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cgPurchaseReturnDtLevel1: TcxGridLevel
            GridView = cgvPurchaseReturnDt
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
            Left = 240
            Top = 10
            Width = 35
            Height = 13
            Caption = 'Tax (%)'
            Transparent = True
          end
          object lblTotal: TLabel
            Left = 471
            Top = 10
            Width = 24
            Height = 13
            Caption = 'Total'
            Transparent = True
          end
          object lblDisc: TLabel
            Left = 5
            Top = 10
            Width = 38
            Height = 13
            Caption = 'Disc (%)'
            Transparent = True
          end
          object dbeTax: TcxDBSpinEdit
            Left = 282
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
            Left = 346
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcTaxAmount'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 105
          end
          object dbeTotalAmount: TcxDBCurrencyEdit
            Left = 504
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
      object cgPurchaseReturnHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPurchaseReturnHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPurchaseReturnHdStylesGetContentStyle
          object cgvPurchaseReturnHdvcIdPurchaseReturn: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'vcIdPurchaseReturn'
            Width = 107
          end
          object cgvPurchaseReturnHddtPurchaseReturnDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchaseReturnDate'
            Width = 109
          end
          object cgvPurchaseReturnHdvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
          end
          object cgvPurchaseReturnHdvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcIdSupplier'
            Visible = False
          end
          object cgvPurchaseReturnHdtxNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'txNotes'
            Visible = False
          end
          object cgvPurchaseReturnHdtxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            Visible = False
          end
          object cgvPurchaseReturnHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
            Width = 137
          end
          object cgvPurchaseReturnHdchStatusApprove: TcxGridDBColumn
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
            Width = 50
          end
        end
        object cgPurchaseReturnHdLevel1: TcxGridLevel
          GridView = cgvPurchaseReturnHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
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
    DataSet = dtsIMPurchaseReturnHd
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object dtsIMPurchaseReturnHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMPurchaseReturnHdBeforeEdit
    BeforePost = dtsIMPurchaseReturnHdBeforePost
    OnNewRecord = dtsIMPurchaseReturnHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMPurchaseReturnHd'#13#10'where (chStatusApprove = :' +
      'Approve1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :' +
      'Reject'#13#10'or chStatusApprove = :Done)'#13#10'and dtPurchaseReturnDate be' +
      'tween :StartDate and :EndDate'#13#10'order by vcIdPurchaseReturn'
    MasterFields = 'vcIdPurchaseReturn'
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
  object dtsIMPurchaseReturnDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMPurchaseReturnDtBeforeInsert
    BeforeEdit = dtsIMPurchaseReturnDtBeforeEdit
    BeforePost = dtsIMPurchaseReturnDtBeforePost
    AfterPost = dtsIMPurchaseReturnDtAfterPost
    BeforeDelete = dtsIMPurchaseReturnDtBeforeDelete
    OnNewRecord = dtsIMPurchaseReturnDtNewRecord
    CommandText = 'select *'#13#10'from tbIMPurchaseReturnDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdPurchaseReturn'
    MasterFields = 'vcIdPurchaseReturn'
    Parameters = <>
    Left = 137
    Top = 144
  end
  object dsIMPurchaseReturnDt: TDataSource
    DataSet = dtsIMPurchaseReturnDt
    OnDataChange = dsIMPurchaseReturnDtDataChange
    Left = 169
    Top = 144
  end
  object spPurchaseReturnValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spPurchaseReturnValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPurchaseReturn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object qryGetPRTotalAmount: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'vcIdPurchaseReturn'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select sum(dcAmount) as Amount'
      'from tbIMPurchaseReturnDt'
      'where vcIdPurchaseReturn = :vcIdPurchaseReturn')
    Left = 168
    Top = 176
  end
  object gvrPurchaseReturn: TcxGridViewRepository
    Left = 104
    Top = 208
    object cgvPrevSupplies: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSuppliesPI
      DataController.KeyFieldNames = 'vcIdSupplies'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
      end
      object cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
      end
      object cgvPrevSuppliesvcType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'vcType'
      end
      object cgvPrevSuppliesdcPrice: TcxGridDBColumn
        Caption = 'Harga PI'
        DataBinding.FieldName = 'dcPrice'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevSuppliesdcDiscItem: TcxGridDBColumn
        Caption = 'Disc PI'
        DataBinding.FieldName = 'dcDiscItem'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn
        Caption = 'Stok Ready'
        DataBinding.FieldName = 'inEndQtyReady'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
  end
  object qryPrevSuppliesPI: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdWarehouse'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'IdPurchaseInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  a.vcIdSupplies, b.vcSuppliesName, b.vcType, '
      '  c.inEndQtyReady, a.dcPrice, a.dcDiscItem'
      'from tbIMPurchaseInvoiceDt a'
      'left join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'left join tbIMStockOnHandHd c on (a.vcIdSupplies = c.vcIdSupplie' +
        's'
      '  and c.vcIdWarehouse = :IdWarehouse)'
      'where a.vcIdPurchaseInvoice = :IdPurchaseInvoice')
    Left = 136
    Top = 208
  end
  object dsPrevSuppliesPI: TDataSource
    DataSet = qryPrevSuppliesPI
    Left = 168
    Top = 208
  end
  object qryGetPISupplier: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPurchaseInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.vcIdSupplier'
      'from tbIMPurchaseInvoiceHd a'
      'where a.vcIdPurchaseInvoice = :IdPurchaseInvoice')
    Left = 200
    Top = 176
  end
end
