inherited fmSalesInvoiceEdit: TfmSalesInvoiceEdit
  Caption = 'Nota Penjualan (SI) - Edit'
  ExplicitWidth = 780
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 21
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 21
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 21
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 21
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      ExplicitHeight = 21
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
          Height = 193
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            193)
          object lblSalesInvoiceDate: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdSalesInvoice: TLabel
            Left = 7
            Top = 6
            Width = 73
            Height = 13
            Caption = 'Nota Penjualan'
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
          object lblIdCustomer: TLabel
            Left = 7
            Top = 42
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblIdSalesOrder: TLabel
            Left = 7
            Top = 96
            Width = 80
            Height = 13
            Caption = 'Indent Penjualan'
            Transparent = True
          end
          object lblType: TLabel
            Left = 7
            Top = 78
            Width = 71
            Height = 13
            Caption = 'Tipe Penjualan'
            Transparent = True
          end
          object lblInvoiceDueDay: TLabel
            Left = 7
            Top = 150
            Width = 62
            Height = 13
            Caption = 'Jatuh Tempo'
            Transparent = True
          end
          object lblWarehouse: TLabel
            Left = 7
            Top = 60
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object lblDeliverySchedule: TLabel
            Left = 7
            Top = 132
            Width = 70
            Height = 13
            Caption = 'Tgl Pengiriman'
            Transparent = True
          end
          object lblSalesName: TLabel
            Left = 7
            Top = 114
            Width = 46
            Height = 13
            Caption = 'Salesman'
            Transparent = True
          end
          object dblcIdCustomer: TcxDBExtLookupComboBox
            Left = 102
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdCustomer'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
            TabOrder = 2
            Width = 161
          end
          object dbeSalesInvoiceDate: TcxDBDateEdit
            Left = 102
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'dtSalesInvoiceDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dbeIdSalesInvoice: TcxDBTextEdit
            Left = 102
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSalesInvoice'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 102
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
            Left = 102
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'chFlagSO'
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
            Left = 102
            Top = 148
            BeepOnEnter = False
            DataBinding.DataField = 'inInvoiceDueDay'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.SpinButtons.Position = sbpHorzLeftRight
            Properties.SpinButtons.ShowFastButtons = True
            TabOrder = 8
            Width = 105
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 102
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 3
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 280
            Top = 6
            Width = 465
            Height = 163
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 12
            ClientRectBottom = 163
            ClientRectRight = 465
            ClientRectTop = 24
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
                Height = 139
                Width = 465
              end
            end
            object tsMemo: TcxTabSheet
              Caption = 'Memo'
              ImageIndex = 1
              object dbmMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txMemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 139
                Width = 465
              end
            end
            object tsDeliveryAddress: TcxTabSheet
              Caption = 'Alamat DO'
              ImageIndex = 2
              object dbmAddress: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderAddress'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssBoth
                Properties.WordWrap = False
                TabOrder = 0
                Height = 139
                Width = 465
              end
            end
            object tsNotesDeliveryOrder: TcxTabSheet
              Caption = 'Notes DO'
              ImageIndex = 3
              object dbmNotesDeliveryOrder: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderNotes'
                DataBinding.DataSource = dsDefault
                TabOrder = 0
                Height = 139
                Width = 465
              end
            end
          end
          object dbeDeliverySchedule: TcxDBDateEdit
            Left = 102
            Top = 130
            BeepOnEnter = False
            DataBinding.DataField = 'dtDeliveryScheduleDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnNow]
            Properties.Kind = ckDateTime
            TabOrder = 7
            Width = 161
          end
          object dbeIdSalesOrder: TcxDBTextEdit
            Left = 102
            Top = 94
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSalesOrder'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 161
          end
          object dblcSalesName: TcxDBExtLookupComboBox
            Left = 102
            Top = 112
            BeepOnEnter = False
            DataBinding.DataField = 'vcSalesName'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSalesman
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmInventory.cgvSalesmanEmployeeName
            TabOrder = 6
            Width = 161
          end
          object dbchPendingDO: TcxDBCheckBox
            Left = 280
            Top = 169
            Caption = 'Pending DO'
            DataBinding.DataField = 'chFlagPendingDO'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 11
            Transparent = True
            Width = 93
          end
          object dbeRef: TcxDBTextEdit
            Left = 206
            Top = 148
            BeepOnEnter = False
            DataBinding.DataField = 'vcRef'
            DataBinding.DataSource = dsDefault
            TabOrder = 9
            Width = 57
          end
          object dbchFlagManual: TcxDBCheckBox
            Left = 388
            Top = 169
            Caption = 'Nota Manual'
            DataBinding.DataField = 'chFlagManual'
            DataBinding.DataSource = dsDefault
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 13
            Transparent = True
            Width = 90
          end
        end
        object cgSalesInvoiceDt: TcxGrid
          Left = 0
          Top = 193
          Width = 740
          Height = 157
          Align = alClient
          TabOrder = 1
          object cgvSalesInvoiceDt: TcxGridDBBandedTableView
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
            DataController.DataSource = dsIMSalesInvoiceDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvSalesInvoiceDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvSalesInvoiceDtdcAmount
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
            object cgvSalesInvoiceDtvcIdSalesInvoice: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdSalesInvoice'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtinNo: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Options.Sorting = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtvcIdSupplies: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtvcIdSupplies2: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtvcIdSupplies3: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtinQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtdcPrice: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtdcPricePrint: TcxGridDBBandedColumn
              Caption = 'Harga Cetak'
              DataBinding.FieldName = 'dcPricePrint'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtdcDiscItem: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtdcDiscItemPrice: TcxGridDBBandedColumn
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
            object cgvSalesInvoiceDtdcAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'dcAmount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cgSalesInvoiceDtLevel1: TcxGridLevel
            GridView = cgvSalesInvoiceDt
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
      Height = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgSalesInvoiceHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 118
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvSalesInvoiceHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvSalesInvoiceHdStylesGetContentStyle
          object cgvSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'Id PI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
            Width = 80
          end
          object cgvSalesInvoiceHddtDateSalesInvoice: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'dtSalesInvoiceDate'
            Width = 80
          end
          object cgvSalesInvoiceHdvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          end
          object cgvSalesInvoiceHdvcIdCustomer2: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'vcIdCustomer'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcIdCategory
            Options.Editing = False
          end
          object cgvSalesInvoiceHdchFlagPrint: TcxGridDBColumn
            DataBinding.FieldName = 'chFlagPrint'
            Visible = False
          end
          object cgvSalesInvoiceHdchStatusApprove: TcxGridDBColumn
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
        object cgSalesInvoiceHdLevel1: TcxGridLevel
          GridView = cgvSalesInvoiceHd
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
    DataSet = dtsIMSalesInvoiceHd
  end
  object dtsIMSalesInvoiceHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from tbIMSalesInvoiceHd'#13#10'where (chStatusApprove = :Ap' +
      'prove'#13#10'or chStatusApprove = :Done)'#13#10'and dtSalesInvoiceDate betwe' +
      'en :StartDate and :EndDate'#13#10'order by chStatusApprove, vcIdSalesI' +
      'nvoice'
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
  object dtsIMSalesInvoiceDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMSalesInvoiceDtBeforeEdit
    BeforePost = dtsIMSalesInvoiceDtBeforePost
    AfterPost = dtsIMSalesInvoiceDtAfterPost
    CommandText = 'select *'#13#10'from tbIMSalesInvoiceDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSalesInvoice'
    MasterFields = 'vcIdSalesInvoice'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMSalesInvoiceDt: TDataSource
    DataSet = dtsIMSalesInvoiceDt
    Left = 168
    Top = 144
  end
  object qryGetTotalAmount: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdSalesInvoice'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select sum(dcAmount) as Amount'
      'from tbIMSalesInvoiceDt'
      'where vcIdSalesInvoice = :vcIdSalesInvoice')
    Left = 136
    Top = 176
  end
  object qryInsTransactionAR: TADOQuery
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
        Name = 'vcIdCustomer'
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
      'insert into tbACTransactionAR'
      
        '  (vcIdReference, dtDateTransaction, vcIdCustomer, vcIdTransacti' +
        'onType, dcAmount, vcDescription)'
      'values'
      
        '  (:vcIdReference, :dtDateTransaction, :vcIdCustomer, :vcIdTrans' +
        'actionType, :dcAmount, :vcDescription)')
    Left = 168
    Top = 176
  end
  object qryUpdTransactionRevenue: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'SalesPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'vcIdSalesInvoice'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
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
      'declare @SalesPrice money'
      ''
      'set @SalesPrice = :SalesPrice'
      ''
      'update tbACTransactionRevenue'
      'set dcSalesPrice = @SalesPrice,'
      '  dcTotalSales = inQty * @SalesPrice,'
      '  dcRevenue = (inQty * @SalesPrice) - dcTotalHPP'
      'where vcIdReference = :vcIdSalesInvoice'
      'and vcIdSupplies = :vcIdSupplies')
    Left = 200
    Top = 176
  end
  object spSalesEditingProcess: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spSalesEditingProcess;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@SalesDownPaymentDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IdCustomer'
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
