object fmPreviewSalesInvoice: TfmPreviewSalesInvoice
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 50
    Align = alTop
    TabOrder = 2
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
  object cgPreviewSalesInvoice: TcxGrid
    Left = 0
    Top = 83
    Width = 692
    Height = 388
    Align = alClient
    TabOrder = 3
    object cgvPrevSalesInvoiceHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSalesInvoiceHd
      DataController.DetailKeyFieldNames = 'vcIdSalesInvoice'
      DataController.KeyFieldNames = 'vcIdSalesInvoice'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cgvPrevSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn
        Caption = 'SI'
        DataBinding.FieldName = 'vcIdSalesInvoice'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceHddtSalesInvoiceDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'dtSalesInvoiceDate'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceHdvcIdDeliveryOrder: TcxGridDBColumn
        Caption = 'DO'
        DataBinding.FieldName = 'vcIdDeliveryOrder'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceHdvcIdCustomer: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'vcIdCustomer'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvCustomer
        Properties.KeyFieldNames = 'vcIdCustomer'
        Properties.ListFieldItem = dmInventory.cgvCustomervcCustomerName
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceHddcDisc: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'dcDisc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceHddcTax: TcxGridDBColumn
        Caption = 'Pajak'
        DataBinding.FieldName = 'dcTax'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cgvPrevSalesInvoiceDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSalesInvoiceDt
      DataController.DetailKeyFieldNames = 'vcIdSalesInvoice'
      DataController.MasterKeyFieldNames = 'vcIdSalesInvoice'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cgvPrevSalesInvoiceDtinNo: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'inNo'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceDtvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceDtvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceDtinQty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'inQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
      object cgvPrevSalesInvoiceDtinCurrentQty: TcxGridDBColumn
        Caption = 'Sisa Qty Retur'
        DataBinding.FieldName = 'inCurrentQty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgPreviewSalesInvoiceLevel1: TcxGridLevel
      GridView = cgvPrevSalesInvoiceHd
      object cgPreviewSalesInvoiceLevel2: TcxGridLevel
        GridView = cgvPrevSalesInvoiceDt
      end
    end
  end
  object qryPrevSalesInvoiceHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
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
    SQL.Strings = (
      'select '
      '  a.vcIdSalesInvoice, a.dtSalesInvoiceDate,'
      '  a.vcIdDeliveryOrder,a.vcIdCustomer, a.dcDisc, a.dcTax'
      'from tbIMSalesInvoiceHd a'
      'where (a.chStatusApprove = '#39'3'#39' or a.chStatusApprove = '#39'6'#39') '
      'and dtSalesInvoiceDate between :StartDate and :EndDate')
    Left = 136
    Top = 112
  end
  object dsPrevSalesInvoiceHd: TDataSource
    DataSet = qryPrevSalesInvoiceHd
    Left = 168
    Top = 112
  end
  object qryPrevSalesInvoiceDt: TADOQuery
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
      'from tbIMSalesInvoiceDt a'
      'inner join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'
      
        'inner join tbIMSalesInvoiceHd c on a.vcIdSalesInvoice = c.vcIdSa' +
        'lesInvoice'
      'where c.dtSalesInvoiceDate between :StartDate and :EndDate'
      'order by a.vcIdSalesInvoice, a.inNo')
    Left = 136
    Top = 144
  end
  object dsPrevSalesInvoiceDt: TDataSource
    DataSet = qryPrevSalesInvoiceDt
    Left = 168
    Top = 144
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Preview Sales Invoice.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Preview Sales Invoice.cfg'
    Sorting = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object qryGetSIDate: TADOQuery
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
      'select  dtSalesInvoiceDate'
      'from tbIMSalesInvoiceHd'
      'where vcIdSalesInvoice = :IdSalesInvoice')
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
