object fmPreviewRRAndPO: TfmPreviewRRAndPO
  Left = 94
  Top = 129
  Caption = 'Pilih No Penerimaan dan No PO'
  ClientHeight = 466
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 50
    Width = 772
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblIdRecivingRecord: TLabel
      Left = 436
      Top = 8
      Width = 73
      Height = 13
      Caption = 'No Penerimaan'
      Transparent = True
    end
    object lblIdPurchaseOrder: TLabel
      Left = 629
      Top = 8
      Width = 32
      Height = 13
      Caption = 'No PO'
      Transparent = True
    end
    object lblSupplier: TLabel
      Left = 8
      Top = 7
      Width = 38
      Height = 13
      Caption = 'Supplier'
      Transparent = True
    end
    object edtIdRecivingRecord: TcxTextEdit
      Left = 515
      Top = 5
      BeepOnEnter = False
      TabOrder = 0
      Text = 'edtIdRecivingRecord'
      Width = 97
    end
    object edtIdPurchaseOrder: TcxTextEdit
      Left = 668
      Top = 5
      BeepOnEnter = False
      TabOrder = 1
      Text = 'edtIdPurchaseOrder'
      Width = 97
    end
    object edtSupplierName: TcxTextEdit
      Left = 52
      Top = 4
      BeepOnEnter = False
      TabOrder = 2
      Text = 'edtSupplierName'
      Width = 233
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 50
    Align = alTop
    TabOrder = 1
    ExplicitTop = 1
    object bvlSaparator2: TBevel
      Left = 155
      Top = 1
      Width = 9
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 202
      ExplicitTop = 3
    end
    object bvlSpacer1: TBevel
      Left = 97
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
    end
    object lblInformation: TLabel
      Left = 624
      Top = 12
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
    object btnClose: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actOk
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
    object btnReset: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object btnPost: TcxButton
      Left = 107
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
  object pnlLegend: TPanel
    Left = 0
    Top = 435
    Width = 772
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Image1: TImage
      Left = 8
      Top = 6
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
        F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
        00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
        FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
        F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
        FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
        F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
        FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
        F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
        FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
        F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
        FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
        F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
        FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
        F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
        FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
        F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
        FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
        F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
        FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
        F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
        FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
        F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
        FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
        F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
        FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
        F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
        FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
    end
    object lblConflict: TLabel
      Left = 32
      Top = 8
      Width = 130
      Height = 13
      Caption = 'Barang tidak ada dalam PO'
      Transparent = True
    end
    object lblConflict2: TLabel
      Left = 206
      Top = 8
      Width = 207
      Height = 13
      Caption = 'Qty penerimaan lebih besar daripada qty PO'
      Transparent = True
    end
    object Label1: TLabel
      Left = 456
      Top = 8
      Width = 123
      Height = 13
      Caption = 'Penerimaan telah terpakai'
      Transparent = True
    end
  end
  object pnlBody: TPanel
    Left = 0
    Top = 81
    Width = 772
    Height = 354
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object splBottom: TcxSplitter
      Left = 0
      Top = 224
      Width = 772
      Height = 8
      AlignSplitter = salBottom
      Control = cgCompare
      ExplicitTop = 240
    end
    object splLeft: TcxSplitter
      Left = 385
      Top = 0
      Width = 8
      Height = 224
      Control = cgReceivingRecord
      ExplicitHeight = 240
    end
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 385
      Height = 224
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitHeight = 240
      object cgReceivingRecord: TcxGrid
        Left = 0
        Top = 25
        Width = 385
        Height = 199
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitHeight = 236
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
            Caption = 'No Penerimaan'
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
        object cgReceivingRecordLevel1: TcxGridLevel
          Caption = 'Penerimaan Barang'
          GridView = cgvPrevReceivingRecordHd
          object cgReceivingRecordLevel5: TcxGridLevel
            GridView = cgvPrevReceivingRecordDt
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 25
        Align = alTop
        Caption = 'Penerimaan Barang'
        TabOrder = 1
      end
    end
    object pnlRight: TPanel
      Left = 393
      Top = 0
      Width = 379
      Height = 224
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 296
      ExplicitTop = 160
      ExplicitWidth = 185
      ExplicitHeight = 41
      object cgPurchaseOrder: TcxGrid
        Left = 1
        Top = 25
        Width = 377
        Height = 198
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 393
        ExplicitTop = 0
        ExplicitWidth = 379
        ExplicitHeight = 240
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
            Caption = 'No Order Pembelian'
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
        object cgPurchaseOrderLevel1: TcxGridLevel
          GridView = cgvPrevPurchaseOrderHd
          object cgPurchaseOrderLevel2: TcxGridLevel
            GridView = cgvPrevPurchaseOrderDt
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 377
        Height = 24
        Align = alTop
        Caption = 'Order Pembelian'
        TabOrder = 1
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 232
      Width = 772
      Height = 122
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object cgCompare: TcxGrid
        Left = 0
        Top = 25
        Width = 772
        Height = 97
        Align = alClient
        TabOrder = 0
        ExplicitTop = 248
        ExplicitHeight = 106
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
              Caption = 'Penerimaan Barang'
            end
            item
              Caption = 'Order Pembelian'
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
        object cgCompareLevel1: TcxGridLevel
          GridView = cgvCompare
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 772
        Height = 25
        Align = alTop
        Caption = 'Checking Penerimaan Barang dengan Order Pembelian'
        TabOrder = 1
      end
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
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PurchaseOrderHd'
      'where (StatusApprove = '#39'2'#39
      'and FlagUse = '#39'0'#39
      'and VendorId = :VendorId)'
      '')
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
    Images = dmGlobal.imgIcon24
    Left = 72
    Top = 120
    object actOk: TAction
      Caption = '&Ok'
      ImageIndex = 8
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = '&Batal'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
    object actRefresh: TAction
      Caption = '&Refresh'
      ImageIndex = 1
      OnExecute = actRefreshExecute
    end
  end
  object qryPrevReceivingRecordHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReceivingRecordId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, b.WarehouseName'
      'from ReceivingRecordHd a'
      'inner join Warehouse b on a.WarehouseId = b.WarehouseId'
      'where (a.StatusApprove = '#39'2'#39' -- Approve'
      'and a.StatusReceiving = '#39'1'#39' -- Pembelian'
      'and a.FlagUse = '#39'0'#39' -- Not use)'
      'or a.ReceivingRecordId = :ReceivingRecordId')
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
      'select * '
      'from ReceivingRecordDt'
      'order by No')
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
