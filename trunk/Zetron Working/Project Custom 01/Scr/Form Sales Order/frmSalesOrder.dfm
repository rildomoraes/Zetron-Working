inherited fmSalesOrder: TfmSalesOrder
  Caption = 'Indent Penjualan'
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
          Height = 121
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            121)
          object lblSalesOrderDate: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
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
            Top = 6
            Width = 80
            Height = 13
            Caption = 'Indent Penjualan'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 7
            Top = 96
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object lblSalesName: TLabel
            Left = 7
            Top = 78
            Width = 46
            Height = 13
            Caption = 'Salesman'
            Transparent = True
          end
          object lblCustomerPO: TLabel
            Left = 7
            Top = 60
            Width = 94
            Height = 13
            Caption = 'No Indent Customer'
            Transparent = True
          end
          object dblcCustomer: TcxDBExtLookupComboBox
            Left = 111
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
          object dbeSalesOrderDate: TcxDBDateEdit
            Left = 111
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'dtSalesOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dbeIdSalesOrder: TcxDBTextEdit
            Left = 111
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSalesOrder'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 111
            Top = 94
            BeepOnEnter = False
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 5
            Width = 161
          end
          object dbeCustomerPO: TcxDBTextEdit
            Left = 111
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'vcCustomerPurchaseOrder'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 291
            Top = 6
            Width = 444
            Height = 109
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 6
            ClientRectBottom = 103
            ClientRectLeft = 3
            ClientRectRight = 438
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
                Height = 77
                Width = 435
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
                Height = 77
                Width = 435
              end
            end
          end
          object dblcSalesName: TcxDBExtLookupComboBox
            Left = 111
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'vcSalesName'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSalesman
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmInventory.cgvSalesmanEmployeeName
            TabOrder = 4
            Width = 161
          end
        end
        object cgSalesOrderDt: TcxGrid
          Left = 0
          Top = 121
          Width = 740
          Height = 229
          Align = alClient
          TabOrder = 1
          object cgvSalesOrderDt: TcxGridDBBandedTableView
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
            DataController.DataSource = dsIMSalesOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvSalesOrderDtinNo
              end
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'dcAmount'
                Column = cgvSalesOrderDtdcAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvSalesOrderDtDataControllerSummaryAfterSummary
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
            object cgvSalesOrderDtvcIdPurchaseOrder: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vcIdPurchaseOrder'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtinNo: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtvcIdSupplies: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtvcIdSupplies2: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtvcIdSupplies3: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtdtShippingDate: TcxGridDBBandedColumn
              Caption = 'Tgl Pengiriman'
              DataBinding.FieldName = 'dtShippingDate'
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtinQty: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtdcPrice: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtdcDiscItem: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtdcDiscItemPrice: TcxGridDBBandedColumn
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
            object cgvSalesOrderDtdcAmount: TcxGridDBBandedColumn
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
          object cgSalesOrderDtLevel1: TcxGridLevel
            GridView = cgvSalesOrderDt
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
            Left = 53
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'dcDisc'
            DataBinding.DataSource = dsDefault
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 0
            Width = 65
          end
          object dbeDiscAmount: TcxDBCurrencyEdit
            Left = 117
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
      object cgSalesOrderHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvSalesOrderHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.DetailKeyFieldNames = 'vcIdPurchaseOrder'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvSalesOrderHdStylesGetContentStyle
          object cgvSalesOrderHdvcIdSalesOrder: TcxGridDBColumn
            Caption = 'Indent'
            DataBinding.FieldName = 'vcIdSalesOrder'
            Width = 80
          end
          object cgvSalesOrderHddtSalesOrderDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesOrderDate'
            Width = 80
          end
          object cgvSalesOrderHdvcIdCustomer: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcIdCustomer'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvCustomer
            Properties.KeyFieldNames = 'vcIdCustomer'
            Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
          end
          object cgvSalesOrderHdchStatusApprove: TcxGridDBColumn
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
        object cgSalesOrderHdLevel1: TcxGridLevel
          GridView = cgvSalesOrderHd
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
    DataSet = dtsIMSalesOrderHd
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object dtsIMSalesOrderHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMSalesOrderHdBeforeEdit
    BeforePost = dtsIMSalesOrderHdBeforePost
    OnNewRecord = dtsIMSalesOrderHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMSalesOrderHd'#13#10'where (chStatusApprove = :Appr' +
      'ove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :Reje' +
      'ct'#13#10'or chStatusApprove = :Done)'#13#10'and dtSalesOrderDate between :S' +
      'tartDate and :EndDate'#13#10'order by chStatusApprove, vcIdSalesOrder'
    MasterFields = 'vcIdSalesOrder'
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
  object dtsIMSalesOrderDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = dtsIMSalesOrderDtBeforePost
    AfterPost = dtsIMSalesOrderDtAfterPost
    BeforeDelete = dtsIMSalesOrderDtBeforeDelete
    AfterDelete = dtsIMSalesOrderDtAfterDelete
    OnNewRecord = dtsIMSalesOrderDtNewRecord
    CommandText = 'select *'#13#10'from tbIMSalesOrderDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSalesOrder'
    MasterFields = 'vcIdSalesOrder'
    Parameters = <>
    Left = 137
    Top = 144
  end
  object dsIMSalesOrderDt: TDataSource
    DataSet = dtsIMSalesOrderDt
    OnDataChange = dsIMSalesOrderDtDataChange
    Left = 169
    Top = 144
  end
  object spSalesOrderValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spSalesOrderValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdSalesOrder'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 137
    Top = 176
  end
  object qryGetSOInfo: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdSalesOrder'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove'
      'from tbIMSalesOrderHd '
      'where vcIdSalesOrder = :vcIdSalesOrder')
    Left = 136
    Top = 208
  end
end
