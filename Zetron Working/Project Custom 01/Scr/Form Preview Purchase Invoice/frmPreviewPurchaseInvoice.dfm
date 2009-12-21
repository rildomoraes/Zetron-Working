object fmPreviewPurchaseInvoice: TfmPreviewPurchaseInvoice
  Left = 0
  Top = 0
  Caption = 'Preview Nota Pembelian (PI)'
  ClientHeight = 471
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 41
    TabOrder = 0
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 50
    Width = 692
    Height = 33
    Align = alTop
    TabOrder = 1
    object lblPeriod: TLabel
      Left = 8
      Top = 10
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 48
      Top = 7
      Properties.Items.Strings = (
        'Januari'
        'Februari'
        'Maret'
        'April'
        'Mei'
        'Juni'
        'Juli'
        'Agustus'
        'September'
        'Oktober'
        'November'
        'Desember')
      TabOrder = 0
      Text = 'cbMonth'
      Width = 81
    end
    object cbYear: TcxComboBox
      Left = 128
      Top = 7
      TabOrder = 1
      Text = 'cbYear'
      Width = 57
    end
  end
  object cgPreviewPurchaseInvoice: TcxGrid
    Left = 0
    Top = 83
    Width = 692
    Height = 388
    Align = alClient
    TabOrder = 2
    object cgvPrevPurchaseInvoiceHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchaseInvoiceHd
      DataController.DetailKeyFieldNames = 'vcIdPurchaseInvoice'
      DataController.KeyFieldNames = 'vcIdPurchaseInvoice'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn
        Caption = 'PI'
        DataBinding.FieldName = 'vcIdPurchaseInvoice'
        Options.Filtering = False
        Width = 118
      end
      object cgvPrevPurchaseInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtPurchaseInvoiceDate'
        Options.Filtering = False
        Width = 144
      end
      object cgvPrevPurchaseInvoiceHdvcIdReceivingRecord: TcxGridDBColumn
        Caption = 'RR'
        DataBinding.FieldName = 'vcIdReceivingRecord'
        Options.Filtering = False
        Width = 155
      end
      object cgvPrevPurchaseInvoiceHdvcIdSupplier: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'vcIdSupplier'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvSupplier
        Properties.KeyFieldNames = 'vcIdSupplier'
        Properties.ListFieldItem = dmInventory.cgvSuppliervcSupplierName
        Options.Filtering = False
        Width = 117
      end
      object cgvPrevPurchaseInvoiceHddcDisc: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'dcDisc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
      object cgvPrevPurchaseInvoiceHddcTax: TcxGridDBColumn
        Caption = 'Pajak'
        DataBinding.FieldName = 'dcTax'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgvPrevPurchaseInvoiceDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchaseInvoiceDt
      DataController.DetailKeyFieldNames = 'vcIdPurchaseInvoice'
      DataController.MasterKeyFieldNames = 'vcIdPurchaseInvoice'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cgvPrevPurchaseInvoiceDtinNo: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'inNo'
        Options.Filtering = False
      end
      object cgvPrevPurchaseInvoiceDtvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
        Options.Filtering = False
      end
      object cgvPrevPurchaseInvoiceDtvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
        Options.Filtering = False
      end
      object cgvPrevPurchaseInvoiceDtinQty: TcxGridDBColumn
        Caption = 'Qty Nota'
        DataBinding.FieldName = 'inQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
      object cgvPrevPurchaseInvoiceDtinCurrentQty: TcxGridDBColumn
        Caption = 'Sisa Qty Retur'
        DataBinding.FieldName = 'inCurrentQty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgPreviewPurchaseInvoiceLevel1: TcxGridLevel
      GridView = cgvPrevPurchaseInvoiceHd
      object cgPreviewPurchaseInvoiceLevel2: TcxGridLevel
        GridView = cgvPrevPurchaseInvoiceDt
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 50
    Align = alTop
    TabOrder = 3
    object bvlSpacer1: TBevel
      Left = 145
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
    end
    object btnClose: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actClose
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
      Action = actReset
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
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
    object btnOk: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actOk
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  object qryPrevPurchaseInvoiceHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
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
    SQL.Strings = (
      'select '
      '  a.vcIdPurchaseInvoice, a.dtPurchaseInvoiceDate,'
      '  a.vcIdReceivingRecord,a.vcIdSupplier, a.dcDisc, a.dcTax'
      'from tbIMPurchaseInvoiceHd a'
      'where (a.chStatusApprove = '#39'2'#39' or a.chStatusApprove = '#39'6'#39') '
      'and dtPurchaseInvoiceDate between :StartDate and :EndDate')
    Left = 136
    Top = 112
  end
  object dsPrevPurchaseInvoiceHd: TDataSource
    DataSet = qryPrevPurchaseInvoiceHd
    Left = 168
    Top = 112
  end
  object qryPrevPurchaseInvoiceDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
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
    SQL.Strings = (
      'select '
      '  a.*, b.vcSuppliesName '
      'from tbIMPurchaseInvoiceDt a'
      'inner join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'inner join tbIMPurchaseInvoiceHd c on a.vcIdPurchaseInvoice = c.' +
        'vcIdPurchaseInvoice'
      'where c.dtPurchaseInvoiceDate between :StartDate and :EndDate'
      'order by a.vcIdPurchaseInvoice, a.inNo')
    Left = 136
    Top = 144
  end
  object dsPrevPurchaseInvoiceDt: TDataSource
    DataSet = qryPrevPurchaseInvoiceDt
    Left = 168
    Top = 144
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Preview Purchase Invoice.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Preview Purchase Invoice.cfg'
    Sorting = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object qryGetPIDate: TADOQuery
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
      'select  dtPurchaseInvoiceDate'
      'from tbIMPurchaseInvoiceHd'
      'where vcIdPurchaseInvoice = :IdPurchaseInvoice')
    Left = 200
    Top = 112
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon24
    Left = 136
    Top = 80
    object actClose: TAction
      Caption = 'Keluar'
      ImageIndex = 2
      OnExecute = actCloseExecute
    end
    object actReset: TAction
      Caption = 'Reset'
      ImageIndex = 4
      OnExecute = actResetExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 1
      OnExecute = actRefreshExecute
    end
    object actOk: TAction
      Caption = 'Ok'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
  end
end
