inherited fmSalesReturn: TfmSalesReturn
  Caption = 'Retur Penjualan (SR)'
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
        object cgSalesReturnDt: TcxGrid
          Left = 0
          Top = 161
          Width = 740
          Height = 189
          Align = alClient
          TabOrder = 1
          object cgvSalesReturnDt: TcxGridDBBandedTableView
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
            DataController.DataSource = dsIMSalesReturnDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvSalesReturnDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvSalesReturnDtdcAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvSalesReturnDtDataControllerSummaryAfterSummary
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
            object cgvSalesReturnDtvcIdSalesReturn: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdSalesReturn'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtinNo: TcxGridDBBandedColumn
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
            object cgvSalesReturnDtvcIdSupplies: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcIdSupplies
              Properties.OnInitPopup = cgvSalesReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtvcIdSupplies1: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcSuppliesName
              Properties.OnInitPopup = cgvSalesReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 163
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtvcIdSupplies2: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcType
              Properties.OnInitPopup = cgvSalesReturnDtvcIdSuppliesPropertiesInitPopup
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtinQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 54
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtdcPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'dcPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 84
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtdcDisc: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'dcDiscItem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtdcDiscAmount: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'dcDiscItemPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtdcAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'dcAmount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cgSalesReturnDtLevel1: TcxGridLevel
            GridView = cgvSalesReturnDt
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
        object pnlDetailTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 161
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            161)
          object lblIdPurchaseReturn: TLabel
            Left = 8
            Top = 10
            Width = 76
            Height = 13
            Caption = 'Retur Penjualan'
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
            Width = 73
            Height = 13
            Caption = 'Nota Penjualan'
            Transparent = True
          end
          object lblIdSupplier: TLabel
            Left = 8
            Top = 64
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 8
            Top = 136
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object shpRRApprove: TShape
            Left = 108
            Top = 98
            Width = 17
            Height = 17
            Shape = stRoundRect
          end
          object lblIdReceivingRecord: TLabel
            Left = 8
            Top = 100
            Width = 93
            Height = 13
            Caption = 'Penerimaan Barang'
            Transparent = True
          end
          object lblIdWarehouse: TLabel
            Left = 8
            Top = 82
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object pcNotes: TcxPageControl
            Left = 311
            Top = 9
            Width = 414
            Height = 146
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            ClientRectBottom = 140
            ClientRectLeft = 3
            ClientRectRight = 408
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
                Height = 114
                Width = 405
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
                Height = 114
                Width = 405
              end
            end
          end
          object dbeIdSalesReturn: TcxDBTextEdit
            Left = 128
            Top = 8
            DataBinding.DataField = 'vcIdSalesReturn'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.OnEditValueChanged = dbeIdSalesReturnPropertiesEditValueChanged
            TabOrder = 1
            Width = 161
          end
          object dbeSalesReturnDate: TcxDBDateEdit
            Left = 128
            Top = 26
            DataBinding.DataField = 'dtSalesReturnDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 161
          end
          object dblcIdCustomer: TcxDBExtLookupComboBox
            Left = 128
            Top = 62
            DataBinding.DataField = 'vcIdCustomer'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
            Properties.PostPopupValueOnTab = True
            Style.ButtonTransparency = ebtHideInactive
            TabOrder = 3
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 128
            Top = 134
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 161
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 128
            Top = 80
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 5
            Width = 161
          end
          object dbeIdRefRR: TcxDBTextEdit
            Left = 128
            Top = 98
            DataBinding.DataField = 'vcIdRefRR'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 161
          end
          object btnSalesInvoice: TcxButton
            Left = 269
            Top = 44
            Width = 19
            Height = 19
            Caption = '...'
            TabOrder = 7
            OnClick = btnSalesInvoiceClick
          end
          object dbeIdSalesInvoice: TcxDBTextEdit
            Left = 128
            Top = 44
            DataBinding.DataField = 'vcIdSalesInvoice'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 141
          end
          object dbchWarehouseStatus: TcxDBCheckBox
            Left = 128
            Top = 117
            Caption = 'Tidak Terima Barang'
            DataBinding.DataField = 'chFlagWarehouse'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.DisplayChecked = '1'
            Properties.DisplayUnchecked = '0'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 9
            Transparent = True
            Width = 141
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
      object cgSalesReturnHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvSalesReturnHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvSalesReturnHdStylesGetContentStyle
          object cgvSalesReturnHdvcIdSalesReturn: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'vcIdSalesReturn'
            Width = 107
          end
          object cgvSalesReturnHddtSalesReturnDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesReturnDate'
            Width = 109
          end
          object cgvSalesReturnHdvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
            Visible = False
          end
          object cgvSalesReturnHdvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            Visible = False
          end
          object cgvSalesReturnHdtxNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'txNotes'
            Visible = False
          end
          object cgvSalesReturnHdtxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            Visible = False
          end
          object cgvSalesReturnHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
            Width = 137
          end
          object cgvSalesReturnHdchStatusApprove: TcxGridDBColumn
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
        object cgSalesReturnHdLevel1: TcxGridLevel
          GridView = cgvSalesReturnHd
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
    DataSet = dtsIMSalesReturnHd
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object dtsIMSalesReturnHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMSalesReturnHdBeforeEdit
    BeforePost = dtsIMSalesReturnHdBeforePost
    OnNewRecord = dtsIMSalesReturnHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMSalesReturnHd'#13#10'where (chStatusApprove = :App' +
      'rove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :Rej' +
      'ect'#13#10'or chStatusApprove = :Done)'#13#10'and dtSalesReturnDate between ' +
      ':StartDate and :EndDate'#13#10'order by vcIdSalesReturn'
    MasterFields = 'vcIdSalesReturn'
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
  object dtsIMSalesReturnDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMSalesReturnDtBeforeInsert
    BeforeEdit = dtsIMSalesReturnDtBeforeEdit
    BeforePost = dtsIMSalesReturnDtBeforePost
    AfterPost = dtsIMSalesReturnDtAfterPost
    BeforeDelete = dtsIMSalesReturnDtBeforeDelete
    OnNewRecord = dtsIMSalesReturnDtNewRecord
    CommandText = 'select *'#13#10'from tbIMSalesReturnDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSalesReturn'
    MasterFields = 'vcIdSalesReturn'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMSalesReturnDt: TDataSource
    DataSet = dtsIMSalesReturnDt
    OnDataChange = dsIMSalesReturnDtDataChange
    Left = 168
    Top = 144
  end
  object spSalesReturnValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spSalesReturnValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdSalesReturn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@Approval'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object qryGetSRTotalAmount: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'vcIdSalesReturn'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select sum(dcAmount) as Amount'
      'from tbIMSalesReturnDt'
      'where vcIdSalesReturn = :vcIdSalesReturn')
    Left = 168
    Top = 176
  end
  object gvrSalesReturn: TcxGridViewRepository
    Left = 104
    Top = 208
    object cgvPrevSupplies: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSuppliesSI
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
        Caption = 'Harga SI'
        DataBinding.FieldName = 'dcPrice'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevSuppliesdcDiscItem: TcxGridDBColumn
        Caption = 'Disc SI'
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
  object qryPrevSuppliesSI: TADOQuery
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
        Name = 'IdSalesInvoice'
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
      'from tbIMSalesInvoiceDt a'
      'left join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'left join tbIMStockOnHandHd c on (a.vcIdSupplies = c.vcIdSupplie' +
        's'
      '  and c.vcIdWarehouse = :IdWarehouse)'
      'where a.vcIdSalesInvoice = :IdSalesInvoice')
    Left = 136
    Top = 208
  end
  object dsPrevSuppliesSI: TDataSource
    DataSet = qryPrevSuppliesSI
    Left = 168
    Top = 208
  end
  object qryGetSICustomer: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdSalesInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.vcIdCustomer'
      'from tbIMSalesInvoiceHd a'
      'where a.vcIdSalesInvoice = :IdSalesInvoice')
    Left = 200
    Top = 176
  end
  object qryGetRRStatus: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdReceivingRecord'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove'
      'from tbIMReceivingRecordHd'
      'where vcIdReceivingRecord = :IdReceivingRecord')
    Left = 232
    Top = 176
  end
end
