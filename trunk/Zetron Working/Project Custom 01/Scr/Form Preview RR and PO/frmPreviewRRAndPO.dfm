object fmPreviewRRAndPO: TfmPreviewRRAndPO
  Left = 94
  Top = 129
  Caption = 'Preview Penerimaan (RR) dan Indent Pembelian (PO)'
  ClientHeight = 528
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cgPreviewRRAndPO: TcxGrid
    Left = 0
    Top = 65
    Width = 871
    Height = 422
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cgvCompare: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPreviewRRAndPO
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cgvCompareStylesGetContentStyle
      Bands = <
        item
          Caption = 'Receiving Record'
        end
        item
          Caption = 'Purchase Order'
        end>
      object cgvCompareIdSuppliesRR: TcxGridDBBandedColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'IdSuppliesRR'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvCompareIdSuppliesRR2: TcxGridDBBandedColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'IdSuppliesRR'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvCompareQtyRR: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QtyRR'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvCompareIdSuppliesPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdSuppliesPO'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvCompareQtyPO: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QtyPO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvCompareOutstandingQty: TcxGridDBBandedColumn
        Caption = 'Sisa Qty'
        DataBinding.FieldName = 'OutstandingQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvComparedcPrice: TcxGridDBBandedColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'dcPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cgvComparedcDisc: TcxGridDBBandedColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'dcDisc'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cgvComparedcDiscPrice: TcxGridDBBandedColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'dcDiscPrice'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cgvPrevPurchaseOrderHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cgvPrevPurchaseOrderHdFocusedRecordChanged
      DataController.DataSource = dsPrevPurchaseOrderHd
      DataController.DetailKeyFieldNames = 'vcIdPurchaseOrder'
      DataController.KeyFieldNames = 'vcIdPurchaseOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Preview.Column = cgvPrevPurchaseOrderHdtxMemo
      Preview.Visible = True
      object cgvPrevPurchaseOrderHdvcIdPurchaseOrder: TcxGridDBColumn
        Caption = 'PO'
        DataBinding.FieldName = 'vcIdPurchaseOrder'
        Options.Filtering = False
        Width = 98
      end
      object cgvPrevPurchaseOrderHdvcIdSupplier: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'vcIdSupplier'
        Visible = False
      end
      object cgvPrevPurchaseOrderHddtPurchaseOrderDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtPurchaseOrderDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Width = 108
      end
      object cgvPrevPurchaseOrderHdvcContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'vcContactPerson'
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHdvcSupplierSalesOrder: TcxGridDBColumn
        Caption = 'Supplier SO'
        DataBinding.FieldName = 'vcSupplierSalesOrder'
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcAmount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'dcAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcDisc: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'dcDisc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcDiscAmount: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'dcDiscAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcTax: TcxGridDBColumn
        Caption = 'Pajak %'
        DataBinding.FieldName = 'dcTax'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcTaxAmount: TcxGridDBColumn
        Caption = 'Pajak'
        DataBinding.FieldName = 'dcTaxAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHddcTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'dcTotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderHdtxMemo: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'txMemo'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Filtering = False
      end
    end
    object cgvPrevPurchaseOrderDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchaseOrderDt
      DataController.DetailKeyFieldNames = 'vcIdPurchaseOrder'
      DataController.MasterKeyFieldNames = 'vcIdPurchaseOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPurchaseOrderDtinNo: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'inNo'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderDtvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
        Options.Filtering = False
        Width = 83
      end
      object cgvPrevPurchaseOrderDtvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
        Options.Filtering = False
        Width = 102
      end
      object cgvPrevPurchaseOrderDtdtShippingDate: TcxGridDBColumn
        Caption = 'Tanggal Pengiriman'
        DataBinding.FieldName = 'dtShippingDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Width = 95
      end
      object cgvPrevPurchaseOrderDtinQty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'inQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 46
      end
      object cgvPrevPurchaseOrderDtdcPrice: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'dcPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 124
      end
      object cgvPrevPurchaseOrderDtdcDiscItem: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'dcDiscItem'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 34
      end
      object cgvPrevPurchaseOrderDtdcDiscItemPrice: TcxGridDBColumn
        Caption = 'Disc '
        DataBinding.FieldName = 'dcDiscItemPrice'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 124
      end
      object cgvPrevPurchaseOrderDtdcAmount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'dcAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 124
      end
      object cgvPrevPurchaseOrderDtinOutstandingQty: TcxGridDBColumn
        Caption = 'Sisa Qty Order'
        DataBinding.FieldName = 'inOutstandingQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
      end
      object cgvPrevPurchaseOrderDtQtyPI: TcxGridDBColumn
        Caption = 'Qty PI'
        DataBinding.FieldName = 'QtyPI'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgvPrevReceivingRecordHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cgvPrevReceivingRecordHdFocusedRecordChanged
      DataController.DataSource = dsPrevReceivingRecordHd
      DataController.DetailKeyFieldNames = 'vcIdReceivingRecord'
      DataController.KeyFieldNames = 'vcIdReceivingRecord'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cgvPrevReceivingRecordHdStylesGetContentStyle
      object cgvPrevReceivingRecordHdvcIdReceivingRecord: TcxGridDBColumn
        Caption = 'RR'
        DataBinding.FieldName = 'vcIdReceivingRecord'
        Options.Filtering = False
        Width = 110
      end
      object cgvPrevReceivingRecordHddtReceivingRecordDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtReceivingRecordDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Width = 120
      end
      object cgvPrevReceivingRecordHdvcWarehouseName: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'vcWarehouseName'
        Options.Filtering = False
        Width = 100
      end
      object cgvPrevReceivingRecordHdvcSupplierName: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'vcSupplierName'
        Options.Filtering = False
      end
      object cgvPrevReceivingRecordHdvcSupplierDeliveryOrder: TcxGridDBColumn
        Caption = 'Supplier DO '
        DataBinding.FieldName = 'vcSupplierDeliveryOrder'
        Options.Filtering = False
        Width = 119
      end
      object cgvPrevReceivingRecordHdvcSupplierPurchaseOrder: TcxGridDBColumn
        Caption = 'Supplier PO'
        DataBinding.FieldName = 'vcSupplierPurchaseOrder'
        Options.Filtering = False
        Width = 126
      end
      object cgvPrevReceivingRecordHdvcIdPurchaseInvoice: TcxGridDBColumn
        Caption = 'PI'
        DataBinding.FieldName = 'vcIdPurchaseInvoice'
        Options.Filtering = False
      end
    end
    object cgvPrevReceivingRecordDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevReceivingRecordDt
      DataController.DetailKeyFieldNames = 'vcIdReceivingRecord'
      DataController.MasterKeyFieldNames = 'vcIdReceivingRecord'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevReceivingRecordDtvcIdReceivingRecord: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdReceivingRecord'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevReceivingRecordDtinNo: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'inNo'
        Options.Filtering = False
      end
      object cgvPrevReceivingRecordDtvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
        Options.Filtering = False
      end
      object cgvPrevReceivingRecordDtvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
        Options.Filtering = False
      end
      object cgvPrevReceivingRecordDtinQty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'inQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgPreviewRRAndPOLevel1: TcxGridLevel
      Caption = 'Receiving Record'
      GridView = cgvPrevReceivingRecordHd
      object cgPreviewRRAndPOLevel5: TcxGridLevel
        GridView = cgvPrevReceivingRecordDt
      end
    end
    object cgPreviewRRAndPOLevel2: TcxGridLevel
      Caption = 'Purchase Order'
      GridView = cgvPrevPurchaseOrderHd
      object cgPreviewRRAndPOLevel4: TcxGridLevel
        GridView = cgvPrevPurchaseOrderDt
      end
    end
    object cgPreviewRRAndPOLevel3: TcxGridLevel
      Caption = 'Compare'
      GridView = cgvCompare
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 487
    Width = 871
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnOk: TcxButton
      Left = 96
      Top = 4
      Width = 81
      Height = 33
      Action = actOk
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 176
      Top = 4
      Width = 81
      Height = 33
      Action = actCancel
      TabOrder = 1
    end
    object btnRefresh: TcxButton
      Left = 0
      Top = 4
      Width = 81
      Height = 33
      Action = actRefresh
      TabOrder = 2
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      871
      65)
    object lblIdRecivingRecord: TLabel
      Left = 600
      Top = 8
      Width = 16
      Height = 13
      Caption = 'RR'
      Transparent = True
    end
    object lblIdPurchaseOrder: TLabel
      Left = 744
      Top = 8
      Width = 15
      Height = 13
      Caption = 'PO'
      Transparent = True
    end
    object bvlBevel1: TBevel
      Left = 0
      Top = 32
      Width = 874
      Height = 9
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object shpConflict: TShape
      Left = 8
      Top = 40
      Width = 17
      Height = 17
      Shape = stRoundRect
    end
    object lblConflict: TLabel
      Left = 32
      Top = 40
      Width = 130
      Height = 13
      Caption = 'Barang tidak ada dalam PO'
      Transparent = True
    end
    object shpConflict2: TShape
      Left = 176
      Top = 40
      Width = 17
      Height = 17
      Shape = stRoundRect
    end
    object lblConflict2: TLabel
      Left = 200
      Top = 40
      Width = 168
      Height = 13
      Caption = 'Qty RR lebih besar daripada qty PO'
      Transparent = True
    end
    object lblSupplier: TLabel
      Left = 155
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Supplier'
      Transparent = True
    end
    object lblType: TLabel
      Left = 8
      Top = 8
      Width = 21
      Height = 13
      Caption = 'Tipe'
      Transparent = True
    end
    object shpLocked: TShape
      Left = 384
      Top = 40
      Width = 17
      Height = 17
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 408
      Top = 40
      Width = 121
      Height = 13
      Caption = 'RR yang telah digunakan'
      Transparent = True
    end
    object lblIdPurchaseInvoice: TLabel
      Left = 464
      Top = 8
      Width = 10
      Height = 13
      Caption = 'PI'
      Transparent = True
    end
    object lblInformation: TLabel
      Left = 576
      Top = 37
      Width = 230
      Height = 20
      Caption = 'Data belum dapat disimpan !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtIdRecivingRecord: TcxTextEdit
      Left = 624
      Top = 8
      BeepOnEnter = False
      TabOrder = 2
      Text = 'edtIdRecivingRecord'
      Width = 97
    end
    object edtIdPurchaseOrder: TcxTextEdit
      Left = 768
      Top = 8
      BeepOnEnter = False
      TabOrder = 3
      Text = 'edtIdPurchaseOrder'
      Width = 97
    end
    object edtSupplierName: TcxTextEdit
      Left = 201
      Top = 8
      BeepOnEnter = False
      TabOrder = 1
      Text = 'edtSupplierName'
      Width = 233
    end
    object cbType: TcxImageComboBox
      Left = 36
      Top = 8
      BeepOnEnter = False
      Properties.Items = <
        item
          Description = 'Without PO'
          ImageIndex = 3
          Value = '0'
        end
        item
          Description = 'With PO'
          ImageIndex = 4
          Value = '1'
        end>
      Properties.OnInitPopup = cbTypePropertiesInitPopup
      TabOrder = 0
      Width = 105
    end
    object edtIdPurchaseInvoice: TcxTextEdit
      Left = 480
      Top = 8
      BeepOnEnter = False
      TabOrder = 4
      Text = 'edtIdPurchaseInvoice'
      Width = 97
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Preview RR And PO.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 8
    Top = 120
  end
  object dsPrevPurchaseOrderHd: TDataSource
    DataSet = qryPrevPurchaseOrderHd
    Left = 136
    Top = 152
  end
  object dsPrevPurchaseOrderDt: TDataSource
    DataSet = qryPrevPurchaseOrderDt
    Left = 136
    Top = 184
  end
  object qryPrevPurchaseOrderHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdSupplier'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = 'AGK TNK'
      end>
    SQL.Strings = (
      'select * '
      'from tbIMPurchaseOrderHd'
      'where chStatusApprove = '#39'3'#39
      'and vcIdSupplier = :IdSupplier')
    Left = 104
    Top = 152
  end
  object qryPrevPurchaseOrderDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.*, b.vcSuppliesName,'
      '  (select IsNull(sum(z.inQty), 0)'
      '  from tbIMPurchaseInvoiceDt z'
      
        '  left join tbIMPurchaseInvoiceHd x on z.vcIdPurchaseInvoice = x' +
        '.vcIdPurchaseInvoice'
      '  where x.vcIdPurchaseOrder = a.vcIdPurchaseOrder'
      '  and z.vcIdSupplies = a.vcIdSupplies'
      '  and x.chStatusApprove <> '#39'5'#39') as QtyPI'
      'from tbIMPurchaseOrderDt a'
      'left join  tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'left join tbIMPurchaseOrderHd c on a.vcIdPurchaseOrder = c.vcIdP' +
        'urchaseOrder'
      'where c.chStatusApprove < 5'
      'order by a.vcIdPurchaseOrder, a.inNo')
    Left = 104
    Top = 184
  end
  object ActionList1: TActionList
    Left = 72
    Top = 120
    object actRefresh: TAction
      Caption = '&Refresh'
      OnExecute = actRefreshExecute
    end
    object actOk: TAction
      Caption = '&Ok'
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = '&Batal'
      OnExecute = actCancelExecute
    end
  end
  object qryPrevReceivingRecordHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.*, b.vcWarehouseName'
      'from tbIMReceivingRecordHd a'
      'inner join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'2'#39
      'and not (a.vcIdReceivingRecord like '#39'RRMT%'#39')'
      'and not (a.vcIdReceivingRecord like '#39'RRSR%'#39')')
    Left = 8
    Top = 152
  end
  object dsPrevReceivingRecordHd: TDataSource
    DataSet = qryPrevReceivingRecordHd
    Left = 40
    Top = 152
  end
  object dsPrevReceivingRecordDt: TDataSource
    DataSet = qryPrevReceivingRecordDt
    Left = 40
    Top = 184
  end
  object qryPrevReceivingRecordDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.*, b.vcSuppliesName '
      'from tbIMReceivingRecordDt a'
      'inner join  tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      'order by a.vcIdReceivingRecord, a.inNo')
    Left = 8
    Top = 184
  end
  object qryPreviewRRAndPO: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPurchaseOrder'
        DataType = ftString
        Size = 1
        Value = '%'
      end
      item
        Name = 'IdReceivingRecord'
        DataType = ftString
        Size = 1
        Value = '%'
      end>
    SQL.Strings = (
      'select '
      '  a.vcIdSupplies as IdSuppliesRR,'
      '  a.inQty as QtyRR,'
      '  b.vcIdSupplies as IdSuppliesPO,  '
      '  b.inQty as QtyPO,'
      '  b.inOutstandingQty as OutstandingQty, '
      '  b.dcPrice, b.dcDiscItem, b.dcDiscItemPrice'
      'from tbIMReceivingRecordDt a'
      'left join tbIMPurchaseOrderDt b on '
      
        '  (a.vcIdSupplies = b.vcIdSupplies and b.vcIdPurchaseOrder = :Id' +
        'PurchaseOrder)'
      'where a.vcIdReceivingRecord = :IdReceivingRecord')
    Left = 200
    Top = 152
  end
  object dsPreviewRRAndPO: TDataSource
    DataSet = qryPreviewRRAndPO
    Left = 232
    Top = 152
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Preview RR And PO.cfg'
    Sorting = False
    Version = '1.3'
    Left = 40
    Top = 120
  end
end
