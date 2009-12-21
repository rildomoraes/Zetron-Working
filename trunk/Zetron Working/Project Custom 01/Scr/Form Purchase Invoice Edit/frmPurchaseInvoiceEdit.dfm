inherited fmPurchaseInvoiceEdit: TfmPurchaseInvoiceEdit
  Caption = 'Nota Pembelian (PI) - Edit '
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
        object cgPurchaseInvoiceDt: TcxGrid
          Left = 0
          Top = 193
          Width = 740
          Height = 157
          Align = alClient
          TabOrder = 1
          object cgvPurchaseInvoiceDt: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsIMPurchaseInvoiceDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvPurchaseInvoiceDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvPurchaseInvoiceDtdcAmount
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
                Caption = 'Supplies'
                FixedKind = fkLeft
              end
              item
              end>
            object cgvPurchaseInvoiceDtvcIdPurchaseInvoice: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdPurchaseInvoice'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtinNo: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtvcIdSupplies: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtvcIdSupplies2: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtvcIdSupplies3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtinQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtdcPrice: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtdcDiscItem: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'dcDiscItem'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtdcDiscItemPrice: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtdcAmount: TcxGridDBBandedColumn
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
          object cgPurchaseInvoiceDtLevel1: TcxGridLevel
            GridView = cgvPurchaseInvoiceDt
          end
        end
        object pnlDetailTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 193
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            193)
          object lblPurchaseInvoiceDate: TLabel
            Left = 7
            Top = 24
            Width = 116
            Height = 13
            Caption = 'Tanggal && Jatuh Tempo '
            Transparent = True
          end
          object lblIdPurchaseInvoice: TLabel
            Left = 7
            Top = 6
            Width = 75
            Height = 13
            Caption = 'Nota Pembelian'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 7
            Top = 168
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object lblIdReceivingRecord: TLabel
            Left = 7
            Top = 96
            Width = 93
            Height = 13
            Caption = 'Penerimaan Barang'
            Transparent = True
          end
          object lblIdSupplier: TLabel
            Left = 7
            Top = 42
            Width = 38
            Height = 13
            Caption = 'Supplier'
            Transparent = True
          end
          object lblIdPurchaseOrder: TLabel
            Left = 7
            Top = 78
            Width = 82
            Height = 13
            Caption = 'Indent Pembelian'
            Transparent = True
          end
          object lblType: TLabel
            Left = 7
            Top = 60
            Width = 73
            Height = 13
            Caption = 'Tipe Pembelian'
            Transparent = True
          end
          object lblInvoiceDueDay: TLabel
            Left = 7
            Top = 150
            Width = 101
            Height = 13
            Caption = 'No Nota dari Supplier'
            Transparent = True
          end
          object lblSupplierDO: TLabel
            Left = 7
            Top = 114
            Width = 117
            Height = 13
            Caption = 'Surat Jalan dari  Supplier'
            Transparent = True
          end
          object lblSupplierPO: TLabel
            Left = 7
            Top = 132
            Width = 108
            Height = 13
            Caption = 'No Indent dari Supplier'
            Transparent = True
          end
          object dblcIdSupplier: TcxDBExtLookupComboBox
            Left = 130
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSupplier'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
            TabOrder = 3
            Width = 161
          end
          object dbePurchaseInvoiceDate: TcxDBDateEdit
            Left = 130
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'dtPurchaseInvoiceDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 105
          end
          object dbeIdPurchaseInvoice: TcxDBTextEdit
            Left = 130
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdPurchaseInvoice'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 130
            Top = 166
            BeepOnEnter = False
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 10
            Width = 161
          end
          object dbicType: TcxDBImageComboBox
            Left = 130
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'chFlagPO'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Normal'
                ImageIndex = 3
                Value = '0'
              end
              item
                Description = 'Melalui Indent'
                ImageIndex = 4
                Value = '1'
              end>
            TabOrder = 4
            Width = 161
          end
          object dbeInvoiceDueDay: TcxDBSpinEdit
            Left = 234
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'inInvoiceDueDay'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 2
            Width = 57
          end
          object pcNotes: TcxPageControl
            Left = 311
            Top = 6
            Width = 429
            Height = 181
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 11
            ClientRectBottom = 175
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
                DataBinding.DataField = 'txNotes'
                DataBinding.DataSource = dsDefault
                Properties.ReadOnly = True
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 149
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
              object dbmMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txMemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 149
                Width = 420
              end
            end
          end
          object dbeIdPurchaseOrder: TcxDBTextEdit
            Left = 130
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdPurchaseOrder'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 161
          end
          object dbeIdReceivingRecord: TcxDBTextEdit
            Left = 130
            Top = 94
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdReceivingRecord'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 161
          end
          object dblcSupplierDO: TcxDBExtLookupComboBox
            Left = 130
            Top = 112
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdReceivingRecord'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevReceivingRecordHd
            Properties.KeyFieldNames = 'vcIdReceivingRecord'
            Properties.ListFieldItem = dmInventory.cgvPrevReceivingRecordHdvcSupplierDeliveryOrder
            TabOrder = 7
            Width = 161
          end
          object dblcSupplierPO: TcxDBExtLookupComboBox
            Left = 130
            Top = 130
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdReceivingRecord'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevReceivingRecordHd
            Properties.KeyFieldNames = 'vcIdReceivingRecord'
            Properties.ListFieldItem = dmInventory.cgvPrevReceivingRecordHdvcSupplierPurchaseOrder
            TabOrder = 8
            Width = 161
          end
          object dbePurchaseInvoiceSupplier: TcxDBTextEdit
            Left = 130
            Top = 148
            BeepOnEnter = False
            DataBinding.DataField = 'vcPurchaseInvoiceSupplier'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.Color = clWindow
            TabOrder = 9
            Width = 161
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
      object cgPurchaseInvoiceHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPurchaseInvoiceHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvPurchaseInvoiceHdStylesGetContentStyle
          object cgvPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Width = 80
          end
          object cgvPurchaseInvoiceHddtDatePurchaseInvoice: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchaseInvoiceDate'
            Width = 80
          end
          object cgvPurchaseInvoiceHdvcIdSupplier: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcIdSupplier'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
          end
          object cgvPurchaseInvoiceHdvcIdSupplier2: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'vcIdSupplier'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvSupplier
            Properties.KeyFieldNames = 'vcIdSupplier'
            Properties.ListFieldItem = dmInventory.cgvSuppliervcIdCategory
            Options.Editing = False
          end
          object cgvPurchaseInvoiceHdchFlagPrint: TcxGridDBColumn
            Caption = 'Print'
            DataBinding.FieldName = 'chFlagPrint'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPurchaseInvoiceHdchStatusApprove: TcxGridDBColumn
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
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cgPurchaseInvoiceHdLevel1: TcxGridLevel
          GridView = cgvPurchaseInvoiceHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actNotes: TAction
      OnExecute = actNotesExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dtsIMPurchaseInvoiceHd
  end
  object dtsIMPurchaseInvoiceHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from tbIMPurchaseInvoiceHd'#13#10'where (chStatusApprove = ' +
      ':Approve'#13#10'or chStatusApprove = :Done)'#13#10'and dtPurchaseInvoiceDate' +
      ' between :StartDate and :EndDate'#13#10'order by chStatusApprove, vcId' +
      'PurchaseInvoice'#13#10
    IndexFieldNames = 'vcIdPurchaseInvoice'
    Parameters = <
      item
        Name = 'Approve'
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
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dtsIMPurchaseInvoiceDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMPurchaseInvoiceDtBeforeEdit
    BeforePost = dtsIMPurchaseInvoiceDtBeforePost
    AfterPost = dtsIMPurchaseInvoiceDtAfterPost
    CommandText = 'select *'#13#10'from tbIMPurchaseInvoiceDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMPurchaseInvoiceDt: TDataSource
    DataSet = dtsIMPurchaseInvoiceDt
    Left = 168
    Top = 144
  end
  object qryGetTotalAmount: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'vcIdPurchaseInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select sum(dcAmount) as Amount'
      'from tbIMPurchaseInvoiceDt'
      'where vcIdPurchaseInvoice = :vcIdPurchaseInvoice')
    Left = 136
    Top = 176
  end
  object qryGetTotalQty: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'vcIdSupplies'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select IsNull(sum(inEndQty), 0) '
      'from tbIMStockOnhandHd'
      'where vcIdSupplies = :vcIdSupplies')
    Left = 168
    Top = 176
  end
  object qryUpdateHPP: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'HPPAdded'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'vcIdSupplies'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'update tbIMStockOnHandDt'
      'set dcPrice = dcPrice + :HPPAdded'
      'where vcIdSupplies = :vcIdSupplies')
    Left = 168
    Top = 208
  end
  object qryInsTransactionAP: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdReference'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'dtDateTransaction'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'vcIdSupplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'vcIdTransactionType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'dcAmount'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'vcDescription'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'insert into tbACTransactionAP'
      
        '  (vcIdReference, dtDateTransaction, vcIdSupplier, vcIdTransacti' +
        'onType, dcAmount, vcDescription)'
      'values'
      
        '  (:vcIdReference, :dtDateTransaction, :vcIdSupplier, :vcIdTrans' +
        'actionType, :dcAmount, :vcDescription)')
    Left = 200
    Top = 208
  end
  object qryUpdStockOnHandHd: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdSupplies'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update tbIMStockOnHandHd'
      'set dcEndValue = '
      '  (select sum(x.dcPrice * x.inQty) '
      '  from tbIMStockOnHandDt x'
      '  where x.vcIdSupplies = z.vcIdSupplies'
      '  and x.vcIdWarehouse = z.vcIdWarehouse)'
      'from tbIMStockOnHandHd z'
      'where z.vcIdSupplies = :vcIdSupplies')
    Left = 232
    Top = 208
  end
  object spPurchaseEditingProcess: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spPurchaseEditingProcess;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@PurchaseDownPaymentDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IdSupplier'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@AmountSave'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        Precision = 19
        Value = Null
      end
      item
        Name = '@EmployeeName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end>
    Left = 136
    Top = 208
  end
end
