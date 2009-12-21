object fmPreviewSO: TfmPreviewSO
  Left = 94
  Top = 129
  Caption = 'Preview Indent Penjualan (SO)'
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
  object cgPreviewSO: TcxGrid
    Left = 0
    Top = 33
    Width = 871
    Height = 454
    Align = alClient
    TabOrder = 0
    object cgvPrevSalesOrderHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cgvPrevSalesOrderHdFocusedRecordChanged
      DataController.DataSource = dsPrevSalesOrderHd
      DataController.DetailKeyFieldNames = 'vcIdSalesOrder'
      DataController.KeyFieldNames = 'vcIdSalesOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Preview.Column = cgvPrevSalesOrderHdtxMemo
      Preview.Visible = True
      object cgvPrevSalesOrderHdvcIdSalesOrder: TcxGridDBColumn
        Caption = 'SO'
        DataBinding.FieldName = 'vcIdSalesOrder'
        Options.Filtering = False
        Width = 98
      end
      object cgvPrevSalesOrderHdvcIdCustomer: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'vcIdCustomer'
        Visible = False
      end
      object cgvPrevSalesOrderHddtSalesOrderDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtSalesOrderDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Width = 108
      end
      object cgvPrevSalesOrderHdSalesName: TcxGridDBColumn
        Caption = 'Salesman'
        DataBinding.FieldName = 'SalesName'
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHdvcCustomerSalesOrder: TcxGridDBColumn
        Caption = 'Customer SO'
        DataBinding.FieldName = 'vcCustomerSalesOrder'
        Options.Filtering = False
        Width = 80
      end
      object cgvPrevSalesOrderHddcAmount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'dcAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHddcDisc: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'dcDisc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHddcDiscAmount: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'dcDiscAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHddcTax: TcxGridDBColumn
        Caption = 'Pajak %'
        DataBinding.FieldName = 'dcTax'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHddcTaxAmount: TcxGridDBColumn
        Caption = 'Pajak'
        DataBinding.FieldName = 'dcTaxAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHddcTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'dcTotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSalesOrderHdtxMemo: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'txMemo'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Filtering = False
      end
    end
    object cgvPrevSalesOrderDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSalesOrderDt
      DataController.DetailKeyFieldNames = 'vcIdSalesOrder'
      DataController.MasterKeyFieldNames = 'vcIdSalesOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSalesOrderDtinNo: TcxGridDBColumn
        DataBinding.FieldName = 'inNo'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 39
      end
      object cgvPrevSalesOrderDtvcIdSupplies: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdSupplies'
        Options.Filtering = False
        Width = 83
      end
      object cgvPrevSalesOrderDtvcSuppliesName: TcxGridDBColumn
        DataBinding.FieldName = 'vcSuppliesName'
        Options.Filtering = False
        Width = 102
      end
      object cgvPrevSalesOrderDtdtShippingDate: TcxGridDBColumn
        DataBinding.FieldName = 'dtShippingDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Filtering = False
        Width = 95
      end
      object cgvPrevSalesOrderDtinQty: TcxGridDBColumn
        DataBinding.FieldName = 'inQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 46
      end
      object cgvPrevSalesOrderDtdcPrice: TcxGridDBColumn
        DataBinding.FieldName = 'dcPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 124
      end
      object cgvPrevSalesOrderDtdcDiscItem: TcxGridDBColumn
        DataBinding.FieldName = 'dcDiscItem'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 34
      end
      object cgvPrevSalesOrderDtdcDiscItemPrice: TcxGridDBColumn
        DataBinding.FieldName = 'dcDiscItemPrice'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 124
      end
      object cgvPrevSalesOrderDtdcAmount: TcxGridDBColumn
        DataBinding.FieldName = 'dcAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 124
      end
      object cgvPrevSalesOrderDtinOutstandingQty: TcxGridDBColumn
        DataBinding.FieldName = 'inOutstandingQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        FooterAlignmentHorz = taRightJustify
        Options.Filtering = False
      end
      object cgvPrevSalesOrderDtQtySI: TcxGridDBColumn
        Caption = 'Qty SI'
        DataBinding.FieldName = 'QtySI'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgPreviewSOLevel1: TcxGridLevel
      GridView = cgvPrevSalesOrderHd
      object cgPreviewSOLevel2: TcxGridLevel
        GridView = cgvPrevSalesOrderDt
      end
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
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lblIdSalesOrder: TLabel
      Left = 459
      Top = 8
      Width = 15
      Height = 13
      Caption = 'SO'
      Transparent = True
    end
    object lblCustomer: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Customer'
      Transparent = True
    end
    object lblIdSalesInvoice: TLabel
      Left = 320
      Top = 8
      Width = 10
      Height = 13
      Caption = 'SI'
      Transparent = True
    end
    object lblInformation: TLabel
      Left = 612
      Top = 5
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
    object edtIdSalesOrder: TcxTextEdit
      Left = 480
      Top = 8
      TabOrder = 1
      Text = 'edtIdSalesOrder'
      Width = 97
    end
    object edtCustomerName: TcxTextEdit
      Left = 64
      Top = 8
      TabOrder = 0
      Text = 'edtCustomerName'
      Width = 233
    end
    object edtIdSalesInvoice: TcxTextEdit
      Left = 336
      Top = 8
      TabOrder = 2
      Text = 'edtIdSalesInvoice'
      Width = 97
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Preview SO.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 8
    Top = 64
  end
  object dsPrevSalesOrderHd: TDataSource
    DataSet = qryPrevSalesOrderHd
    Left = 40
    Top = 96
  end
  object dsPrevSalesOrderDt: TDataSource
    DataSet = qryPrevSalesOrderDt
    Left = 40
    Top = 128
  end
  object qryPrevSalesOrderHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCustomer'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = ''
      end>
    SQL.Strings = (
      'select a.*, b.vcEmployeeName as SalesName'
      'from tbIMSalesOrderHd a'
      'left join tbGNEmployee b on a.vcSalesName = b.vcIdEmployee'
      'where a.chStatusApprove = '#39'2'#39
      'and a.vcIdCustomer = :IdCustomer')
    Left = 8
    Top = 96
  end
  object qryPrevSalesOrderDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.*, b.vcSuppliesName,'
      '  (select IsNull(sum(z.inQty), 0)'
      '  from tbIMSalesInvoiceDt z'
      
        '  left join tbIMSalesInvoiceHd x on z.vcIdSalesInvoice = x.vcIdS' +
        'alesInvoice'
      '  where x.vcIdSalesOrder = a.vcIdSalesOrder'
      '  and z.vcIdSupplies = a.vcIdSupplies'
      '  and x.chStatusApprove <> '#39'5'#39') as QtySI'
      'from tbIMSalesOrderDt a'
      'left join  tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'left join tbIMSalesOrderHd c on a.vcIdSalesOrder = c.vcIdSalesOr' +
        'der'
      'where c.chStatusApprove < 5'
      'order by a.vcIdSalesOrder, a.inNo')
    Left = 8
    Top = 128
  end
  object ActionList1: TActionList
    Left = 72
    Top = 64
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
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Preview SO.cfg'
    Sorting = False
    Version = '1.3'
    Left = 40
    Top = 64
  end
end
