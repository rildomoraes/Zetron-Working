inherited fmSalesReturnItem: TfmSalesReturnItem
  Caption = 'Item Retur Penjualan'
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer12: TBevel [1]
      Left = 203
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 177
      ExplicitTop = 2
    end
    object btnProcess: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnOk: TcxButton
      Left = 537
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actShow
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object pnl: TPanel
      Left = 213
      Top = 1
      Width = 324
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 5
      object lblPeriod: TLabel
        Left = 6
        Top = 5
        Width = 36
        Height = 13
        Caption = 'Periode'
        Transparent = True
      end
      object Label1: TLabel
        Left = 130
        Top = 5
        Width = 15
        Height = 13
        Caption = 's/d'
        Transparent = True
      end
      object lblItem: TLabel
        Left = 6
        Top = 23
        Width = 34
        Height = 13
        Caption = 'Barang'
        Transparent = True
      end
      object edtDateStart: TcxDateEdit
        Left = 48
        Top = 3
        BeepOnEnter = False
        TabOrder = 0
        Width = 78
      end
      object edtDateEnd: TcxDateEdit
        Left = 149
        Top = 3
        BeepOnEnter = False
        TabOrder = 1
        Width = 78
      end
      object lcbItem: TcxExtLookupComboBox
        Left = 48
        Top = 21
        Properties.View = cgvItem
        Properties.KeyFieldNames = 'itemid'
        Properties.ListFieldItem = cgvItemitemname
        TabOrder = 2
        Width = 267
      end
    end
  end
  object cgMasterSetup: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    Align = alClient
    TabOrder = 1
    object cgvSalesInvoiceReturn: TcxGridTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvSalesInvoiceReturnSalesInvoiceDate: TcxGridColumn
        Caption = 'Tanggal'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnSalesInvoiceId: TcxGridColumn
        Caption = 'Nota Beli'
        Options.Editing = False
        Width = 85
      end
      object cgvSalesInvoiceReturnSalesInvoiceIdInternal: TcxGridColumn
        Caption = 'Nota Internal'
        Visible = False
      end
      object cgvSalesInvoiceReturnNo: TcxGridColumn
        Caption = 'No'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Width = 30
      end
      object cgvSalesInvoiceReturnExpiredDate: TcxGridColumn
        Caption = 'Expired'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
        Options.Editing = False
        Width = 97
      end
      object cgvSalesInvoiceReturnQty: TcxGridColumn
        Caption = 'Qty jual'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Width = 95
      end
      object cgvSalesInvoiceReturnPrice: TcxGridColumn
        Caption = 'Harga Jual'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Width = 93
      end
      object cgvSalesInvoiceReturnDiscItem: TcxGridColumn
        Caption = 'Disc %'
        PropertiesClassName = 'TcxSpinEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnDiscItemPrice: TcxGridColumn
        Caption = 'Disc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnDiscItem2: TcxGridColumn
        Caption = 'Disc2 %'
        PropertiesClassName = 'TcxSpinEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnDiscItemPrice2: TcxGridColumn
        Caption = 'Disc2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnVoucherItem: TcxGridColumn
        Caption = 'Voucher'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        Options.Editing = False
      end
      object cgvSalesInvoiceReturnQtyMinus: TcxGridColumn
        Caption = 'Qty Stok Minus'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        Options.Editing = False
        Styles.Content = dmGlobal.stRedLight
      end
      object cgvSalesInvoiceReturnQtyReturnLeft: TcxGridColumn
        Caption = 'Telah Di Retur'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        Options.Editing = False
        Width = 95
      end
      object cgvSalesInvoiceReturnQtyCanReturn: TcxGridColumn
        Caption = 'Qty Bisa Di Retur'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Styles.Content = dmGlobal.stPurpleLight
        Width = 97
      end
      object cgvSalesInvoiceReturnQtyReturn: TcxGridColumn
        Caption = 'Qty Retur'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ImmediatePost = True
        Properties.OnValidate = cgvSalesInvoiceReturnQtyReturnPropertiesValidate
        Options.Filtering = False
        Width = 95
      end
    end
    object cgvItem: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemReturn
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvItemitemid: TcxGridDBColumn
        Caption = 'Kode Internal'
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cgvItemitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        Width = 150
      end
      object cgvItemitemname: TcxGridDBColumn
        Caption = 'Nama '
        DataBinding.FieldName = 'itemname'
        SortIndex = 0
        SortOrder = soAscending
        Width = 300
      end
      object cgvItemitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
        Width = 150
      end
      object cgvItemtype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Visible = False
        Width = 100
      end
      object cgvItemitemcategoryname: TcxGridDBColumn
        Caption = 'Kategori '
        DataBinding.FieldName = 'itemcategoryname'
        Width = 100
      end
      object cgvItemjumlah: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'jumlah'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 100
      end
    end
    object cgMasterSetupLevel1: TcxGridLevel
      GridView = cgvSalesInvoiceReturn
    end
  end
  inherited ActionList1: TActionList
    object actPost: TAction
      Caption = 'Simpan'
      Hint = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
    object actShow: TAction
      Caption = 'Show'
      ImageIndex = 0
      OnExecute = actShowExecute
    end
  end
  object dsPrevItemReturn: TDataSource
    DataSet = qryPrevItemReturn
    Left = 200
    Top = 112
  end
  object qryPrevItemReturn: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  c.ItemId, c.ItemIdExternal, c.ItemName, c.ItemNameChinese, '
      '  c.Type, d.ItemCategoryName, sum(a.QtyReturnLeft) as Jumlah'
      'from SalesInvoiceDt a'
      
        'left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceI' +
        'd'
      'left join Item c on a.ItemId = c.ItemId'
      'left join ItemCategory d on c.ItemCategoryId = d.ItemCategoryId'
      'where a.QtyReturnLeft > 0'
      'and b.CustomerId = :CustomerId '
      'and c.FlagSalesReturn = '#39'1'#39
      
        'group by c.ItemId, c.ItemIdExternal, c.ItemName, c.ItemNameChine' +
        'se, c.Type, d.ItemCategoryName'
      'order by c.ItemName, c.ItemId')
    Left = 168
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qrySalesInvoiceReturn: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, '
      '  b.SalesInvoiceDate, b.SalesInvoiceIdInternal,'
      '  (a.Qty - a.QtyReturnLeft) as QtyReturn,'
      '  (select IsCurrencyNull(sum(z.Qty), 0)'
      '  from TransactionDt z'
      '  left join Transaction x on z.TransactionId = x.TransactionId'
      '  where z.Qty < 0'
      '  and x.ReferenceId = b.SalesInvoiceId'
      '  and x.No = a.No) as QtyMinus'
      'from SalesInvoiceDt a'
      
        'left join SalesInvoiceHd b on (a.SalesInvoiceId = b.SalesInvoice' +
        'Id)'
      'left join Item c on (a.ItemId = c.ItemId)'
      'where a.QtyReturnLeft > 0'
      'and b.CustomerId = :CustomerId'
      'and a.ItemId = :ItemId'
      'and b.SalesInvoiceDate between :DateStart and :DateEnd'
      'and c.FlagSalesReturn = '#39'1'#39
      'order by a.SalesInvoiceId')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end
      item
        DataType = ftUnknown
        Name = 'DateStart'
      end
      item
        DataType = ftUnknown
        Name = 'DateEnd'
      end>
  end
  object qryInsertSalesReturnDtFIFO: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from spInsertSalesReturnDtFIFO('
      '  cast(:ASalesReturnId as varchar),'
      '  cast(:ASalesInvoiceId as varchar),'
      '  :ANoSI,'
      '  :AItemId,'
      '  cast(:AQtyReturn as quantity),'
      '  cast(:AEmployeeId as varchar));')
    AutoCalcFields = False
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ASalesReturnId'
      end
      item
        DataType = ftUnknown
        Name = 'ASalesInvoiceId'
      end
      item
        DataType = ftUnknown
        Name = 'ANoSI'
      end
      item
        DataType = ftUnknown
        Name = 'AItemId'
      end
      item
        DataType = ftUnknown
        Name = 'AQtyReturn'
      end
      item
        DataType = ftUnknown
        Name = 'AEmployeeId'
      end>
  end
end
