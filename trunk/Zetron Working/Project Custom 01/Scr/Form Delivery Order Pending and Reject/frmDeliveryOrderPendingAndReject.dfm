inherited fmDeliveryOrderPendingAndReject: TfmDeliveryOrderPendingAndReject
  Caption = 'DO'
  ClientHeight = 571
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
    inherited bvlSpacer1: TBevel
      Left = 145
      ExplicitLeft = 145
    end
    object Bevel2: TBevel [1]
      Left = 271
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 123
      ExplicitTop = -2
    end
    object Bevel3: TBevel [2]
      Left = 397
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 145
      ExplicitTop = -2
    end
    object btnPending: TcxButton
      Left = 155
      Top = 1
      Width = 58
      Height = 48
      Align = alLeft
      Action = actPending
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnRelease: TcxButton
      Left = 213
      Top = 1
      Width = 58
      Height = 48
      Align = alLeft
      Action = actRelease
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object btnReject: TcxButton
      Left = 281
      Top = 1
      Width = 58
      Height = 48
      Align = alLeft
      Action = actReject
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object btnUnReject: TcxButton
      Left = 339
      Top = 1
      Width = 58
      Height = 48
      Align = alLeft
      Action = actUnReject
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 6
    end
    object btnRefresh: TcxButton
      Left = 97
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object pnlCustom: TPanel [1]
    Left = 0
    Top = 50
    Width = 792
    Height = 25
    Align = alTop
    TabOrder = 1
    object lblPeriod: TLabel
      Left = 7
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object shpPending: TShape
      Left = 216
      Top = 3
      Width = 17
      Height = 17
      Shape = stRoundRect
    end
    object lblPending: TLabel
      Left = 240
      Top = 4
      Width = 38
      Height = 13
      Caption = 'Pending'
      Transparent = True
    end
    object shpReject: TShape
      Left = 306
      Top = 3
      Width = 17
      Height = 17
      Shape = stRoundRect
    end
    object lblReject: TLabel
      Left = 330
      Top = 4
      Width = 31
      Height = 13
      Caption = 'Reject'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 2
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 124
      Top = 2
      BeepOnEnter = False
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  object cgDeliveryOrderHd: TcxGrid [2]
    Left = 0
    Top = 75
    Width = 496
    Height = 496
    Align = alClient
    TabOrder = 2
    object cgvDeliveryOrderHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsIMDeliveryOrderHd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      Styles.OnGetContentStyle = cgvDeliveryOrderHdStylesGetContentStyle
      object cgvDeliveryOrderHdchStatusApprove: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'chStatusApprove'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvStatusApprove
        Properties.KeyFieldNames = 'chStatusApprove'
        Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.IncSearch = False
        Options.SortByDisplayText = isbtOff
      end
      object cgvDeliveryOrderHdchFlagPending: TcxGridDBColumn
        Caption = 'Pending'
        DataBinding.FieldName = 'chFlagPending'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Normal'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Pending'
            Value = '1'
          end>
      end
      object cgvDeliveryOrderHdvcIdDeliveryOrder: TcxGridDBColumn
        Caption = 'DO'
        DataBinding.FieldName = 'vcIdDeliveryOrder'
        Width = 80
      end
      object cgvDeliveryOrderHddtDeliveryOrderDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtDeliveryOrderDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 120
      end
      object cgvDeliveryOrderHdvcIdWarehouse: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'vcIdWarehouse'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvWarehouse
        Properties.KeyFieldNames = 'vcIdWarehouse'
        Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
      end
      object cgvDeliveryOrderHdvcIdSalesInvoice: TcxGridDBColumn
        Caption = 'SI'
        DataBinding.FieldName = 'vcIdSalesInvoice'
      end
      object cgvDeliveryOrderHdvcCustomerName: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'vcCustomerName'
      end
      object cgvDeliveryOrderHdvcCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'vcCategoryName'
      end
      object cgvDeliveryOrderHdvcAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'vcAddress'
        Visible = False
      end
      object cgvDeliveryOrderHddcTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'dcTotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDeliveryOrderHddcOutstandingTotalAmount: TcxGridDBColumn
        Caption = 'Sisa Tagihan'
        DataBinding.FieldName = 'dcOutstandingTotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDeliveryOrderHdvcSalesName: TcxGridDBColumn
        Caption = 'Salesman'
        DataBinding.FieldName = 'vcSalesName'
      end
      object cgvDeliveryOrderHdinCounterPrint: TcxGridDBColumn
        Caption = 'Print Copies'
        DataBinding.FieldName = 'inCounterPrint'
      end
      object cgvDeliveryOrderHdchFlagMutasi: TcxGridDBColumn
        Caption = 'DO Mutasi'
        DataBinding.FieldName = 'chFlagMutasi'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
    end
    object cgDeliveryOrderHdLevel1: TcxGridLevel
      GridView = cgvDeliveryOrderHd
    end
  end
  object pnlDetail: TPanel [3]
    Left = 496
    Top = 75
    Width = 296
    Height = 496
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    object cgDeliveryOrderDt: TcxGrid
      Left = 0
      Top = 241
      Width = 296
      Height = 255
      Align = alClient
      TabOrder = 0
      object cgvDeliveryOrderDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsIMDeliveryOrderDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            FieldName = 'inNo'
            Column = cgvDeliveryOrderDtinNo
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cgvDeliveryOrderDtvcIdDeliveryOrder: TcxGridDBColumn
          DataBinding.FieldName = 'vcIdDeliveryOrder'
          PropertiesClassName = 'TcxSpinEditProperties'
          Visible = False
          Options.Filtering = False
          Options.Sorting = False
          VisibleForCustomization = False
        end
        object cgvDeliveryOrderDtinNo: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'inNo'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MinValue = 1.000000000000000000
          Properties.SpinButtons.Position = sbpHorzLeftRight
          Options.Filtering = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 37
        end
        object cgvDeliveryOrderDtvcIdSupplies: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'vcIdSupplies'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
          Options.Filtering = False
          Options.Sorting = False
        end
        object cgvDeliveryOrderDtvcIdSupplies2: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'vcIdSupplies'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
          Options.Filtering = False
          Options.Sorting = False
        end
        object cgvDeliveryOrderDtvcIdSupplies3: TcxGridDBColumn
          Caption = 'Tipe'
          DataBinding.FieldName = 'vcIdSupplies'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmInventory.cgvSupplies
          Properties.KeyFieldNames = 'vcIdSupplies'
          Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
          Options.Filtering = False
          Options.Sorting = False
        end
        object cgvDeliveryOrderDtinQty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'inQty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
          Options.Filtering = False
          Options.Sorting = False
        end
        object cgvDeliveryOrderDtdtSystemStamp: TcxGridDBColumn
          DataBinding.FieldName = 'dtSystemStamp'
          Visible = False
          Options.Filtering = False
          Options.Sorting = False
          VisibleForCustomization = False
        end
      end
      object cgDeliveryOrderDtLevel1: TcxGridLevel
        GridView = cgvDeliveryOrderDt
      end
    end
    object pcNotes: TcxPageControl
      Left = 0
      Top = 0
      Width = 296
      Height = 241
      ActivePage = tsInfo
      Align = alTop
      TabOrder = 1
      ClientRectBottom = 235
      ClientRectLeft = 3
      ClientRectRight = 290
      ClientRectTop = 26
      object tsInfo: TcxTabSheet
        Caption = 'Info'
        ImageIndex = 3
        DesignSize = (
          287
          209)
        object lblIdWarehouse: TLabel
          Left = 8
          Top = 44
          Width = 37
          Height = 13
          Caption = 'Gudang'
          Transparent = True
        end
        object lblIdDeliveryOrder: TLabel
          Left = 8
          Top = 8
          Width = 15
          Height = 13
          Caption = 'DO'
          Transparent = True
        end
        object lblDeliveryOrderDate: TLabel
          Left = 8
          Top = 26
          Width = 38
          Height = 13
          Caption = 'Tanggal'
          Transparent = True
        end
        object lblCustomerName: TLabel
          Left = 8
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Customer'
          Transparent = True
        end
        object lblCustomerSO: TLabel
          Left = 8
          Top = 80
          Width = 63
          Height = 13
          Caption = 'Customer SO'
          Transparent = True
        end
        object lblCustomerSI: TLabel
          Left = 8
          Top = 98
          Width = 59
          Height = 13
          Caption = 'Customer SI'
          Transparent = True
        end
        object lblActualDeliveryDate: TLabel
          Left = 8
          Top = 116
          Width = 107
          Height = 13
          Caption = 'Ralisasi Tgl Pengiriman'
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 8
          Top = 136
          Width = 40
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object lblInvoiceOutstanding: TLabel
          Left = 8
          Top = 184
          Width = 60
          Height = 13
          Caption = 'Sisa Tagihan'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 8
          Top = 151
          Width = 273
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsBottomLine
        end
        object lblInvoiceAmount: TLabel
          Left = 8
          Top = 166
          Width = 38
          Height = 13
          Caption = 'Tagihan'
          Transparent = True
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 120
          Top = 132
          TabStop = False
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ReadOnly = True
          Style.Color = clWindow
          TabOrder = 0
          Width = 161
        end
        object dbeActualDeliveryDate: TcxDBDateEdit
          Left = 120
          Top = 114
          BeepOnEnter = False
          DataBinding.DataField = 'dtActualDeliveryDate'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.Kind = ckDateTime
          TabOrder = 1
          Width = 161
        end
        object dbeCustomerSI: TcxDBTextEdit
          Left = 120
          Top = 96
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSalesInvoice'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          TabOrder = 2
          Width = 161
        end
        object dbeCustomerSO: TcxDBTextEdit
          Left = 120
          Top = 78
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdSalesOrder'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          TabOrder = 3
          Width = 161
        end
        object dbeCustomerName: TcxDBTextEdit
          Left = 120
          Top = 60
          BeepOnEnter = False
          DataBinding.DataField = 'vcCustomerName'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          TabOrder = 4
          Width = 161
        end
        object dblcIdWarehouse: TcxDBExtLookupComboBox
          Left = 120
          Top = 42
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdWarehouse'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 5
          Width = 161
        end
        object dbeDeliveryOrderDate: TcxDBDateEdit
          Left = 120
          Top = 24
          BeepOnEnter = False
          DataBinding.DataField = 'dtDeliveryOrderDate'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.Kind = ckDateTime
          TabOrder = 6
          Width = 161
        end
        object dbeIdDeliveryOrder: TcxDBTextEdit
          Left = 120
          Top = 6
          TabStop = False
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdDeliveryOrder'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ReadOnly = True
          Style.Color = clWindow
          TabOrder = 7
          Width = 161
        end
        object dbeOutstandingTotalAmount: TcxDBCurrencyEdit
          Left = 120
          Top = 184
          BeepOnEnter = False
          DataBinding.DataField = 'dcOutstandingTotalAmount'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          TabOrder = 8
          Width = 161
        end
        object dbeTotalAmount: TcxDBCurrencyEdit
          Left = 120
          Top = 166
          BeepOnEnter = False
          DataBinding.DataField = 'dcTotalAmount'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          TabOrder = 9
          Width = 161
        end
      end
      object tsNotes: TcxTabSheet
        Caption = 'Notes'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbmNotes: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'txNotes'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 209
          Width = 287
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
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 209
          Width = 287
        end
      end
      object tsDeliveryAddress: TcxTabSheet
        Caption = 'Alamat DO'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbmAddress: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'txAddress'
          DataBinding.DataSource = dsIMDeliveryOrderHd
          Properties.ScrollBars = ssBoth
          Properties.WordWrap = False
          TabOrder = 0
          Height = 209
          Width = 287
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh (F5)'
      ImageIndex = 1
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
    object actPending: TAction
      Caption = 'Pending'
      Hint = 'Pending (F3)'
      ImageIndex = 23
      ShortCut = 114
      OnExecute = actPendingExecute
    end
    object actRelease: TAction
      Caption = 'Release'
      Hint = 'Release (F4)'
      ImageIndex = 22
      ShortCut = 115
      OnExecute = actReleaseExecute
    end
    object actReject: TAction
      Caption = 'Reject'
      Hint = 'Reject (F6)'
      ImageIndex = 7
      ShortCut = 117
      OnExecute = actRejectExecute
    end
    object actUnReject: TAction
      Caption = 'UnReject'
      Hint = 'UnReject (F7)'
      ImageIndex = 21
      ShortCut = 118
      OnExecute = actUnRejectExecute
    end
  end
  object dtsIMDeliveryOrderHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*,'#13#10'  b.dcTotalAmount,'#13#10'  b.dcOutstandingTotalAmoun' +
      't,'#13#10'  c.vcAddress, '#13#10'  d.vcCategoryName, e.EmployeeName as vcSal' +
      'esName'#13#10'from tbIMDeliveryOrderHd a'#13#10'left join tbIMSalesInvoiceHd' +
      ' b on a.vcIdSalesInvoice = b.vcIdSalesInvoice '#13#10'left join tbGNCu' +
      'stomer c on b.vcIdCustomer = c.vcIdCustomer'#13#10'left join tbGNCateg' +
      'ory d on c.vcIdCategory = d.vcIdCategory'#13#10'left join Employee e o' +
      'n b.vcSalesName = e.EmployeeId'#13#10'where a.chStatusApprove = :Appro' +
      've'#13#10'and a.dtDeliveryOrderDate between :StartDate and :EndDate'#13#10'a' +
      'nd a.vcIdWarehouse in '#13#10'  (select x.vcIdWarehouse '#13#10'  from tbGNW' +
      'arehouse x'#13#10'  where x.StatusWarehouse like :StatusWarehouse'#13#10'  a' +
      'nd x.vcIdWarehouse like :CurrentWarehouse)'#13#10'order by a.chStatusA' +
      'pprove, a.vcIdDeliveryOrder'#13#10#13#10
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
        Name = 'StartDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'StatusWarehouse'
        Size = -1
        Value = Null
      end
      item
        Name = 'CurrentWarehouse'
        Size = -1
        Value = Null
      end>
    Left = 168
    Top = 112
  end
  object dsIMDeliveryOrderHd: TDataSource
    DataSet = dtsIMDeliveryOrderHd
    Left = 200
    Top = 112
  end
  object dtsIMDeliveryOrderDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from tbIMDeliveryOrderDt'#13#10
    DataSource = dsIMDeliveryOrderHd
    IndexFieldNames = 'vcIdDeliveryOrder'
    MasterFields = 'vcIdDeliveryOrder'
    Parameters = <>
    Left = 168
    Top = 144
  end
  object dsIMDeliveryOrderDt: TDataSource
    DataSet = dtsIMDeliveryOrderDt
    Left = 200
    Top = 144
  end
end
