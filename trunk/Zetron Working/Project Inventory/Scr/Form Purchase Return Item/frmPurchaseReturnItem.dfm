inherited fmPurchaseReturnItem: TfmPurchaseReturnItem
  Caption = 'Item Retur Pembelian'
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
      Left = 449
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
      Width = 236
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
        Width = 179
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
    object cgvPurchaseInvoiceReturn: TcxGridTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPurchaseInvoiceReturnPurchaseInvoiceDate: TcxGridColumn
        Caption = 'Tanggal'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnPurchaseInvoiceId: TcxGridColumn
        Caption = 'Nota Beli'
        Options.Editing = False
        Width = 85
      end
      object cgvPurchaseInvoiceReturnVendorPurchaseInvoiceId: TcxGridColumn
        Caption = 'Nota External'
        Visible = False
      end
      object cgvPurchaseInvoiceReturnNo: TcxGridColumn
        Caption = 'No'
        Options.Editing = False
        Options.Filtering = False
        Width = 30
      end
      object cgvPurchaseInvoiceReturnExpiredDate: TcxGridColumn
        Caption = 'Expired'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
        Options.Editing = False
        Width = 97
      end
      object cgvPurchaseInvoiceReturnQty: TcxGridColumn
        Caption = 'Qty Beli'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Width = 95
      end
      object cgvPurchaseInvoiceReturnPrice: TcxGridColumn
        Caption = 'Harga Beli'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        Options.Editing = False
        Width = 93
      end
      object cgvPurchaseInvoiceReturnDiscItem: TcxGridColumn
        Caption = 'Disc %'
        PropertiesClassName = 'TcxSpinEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnDiscItemPrice: TcxGridColumn
        Caption = 'Disc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnDiscItem2: TcxGridColumn
        Caption = 'Disc2 %'
        PropertiesClassName = 'TcxSpinEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnDiscItemPrice2: TcxGridColumn
        Caption = 'Disc2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnVoucherItem: TcxGridColumn
        Caption = 'Voucher'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        Options.Editing = False
      end
      object cgvPurchaseInvoiceReturnQtyReturnLeft: TcxGridColumn
        Caption = 'Qty Bisa Di Retur'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Styles.Content = dmGlobal.stYellowLight
        Width = 95
      end
      object cgvPurchaseInvoiceReturnQtyReturn: TcxGridColumn
        Caption = 'Qty Retur'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ImmediatePost = True
        Properties.OnValidate = cgvPurchaseInvoiceReturnQtyReturnPropertiesValidate
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
        Caption = 'Nama'
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
      GridView = cgvPurchaseInvoiceReturn
    end
  end
  inherited ActionList1: TActionList
    object actPost: TAction
      Caption = 'Simpan'
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
    Left = 168
    Top = 112
  end
  object qryPrevItemReturn: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  c.ItemId, c.ItemIdExternal, c.ItemName, c.ItemNameChinese, '
      '  c.Type, d.ItemCategoryName, sum(a.QtyReturnLeft) as Jumlah'
      'from PurchaseInvoiceDt a'
      
        'left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.Purchas' +
        'eInvoiceId'
      'left join Item c on a.ItemId = c.ItemId'
      'left join ItemCategory d on c.ItemCategoryId = d.ItemCategoryId'
      'where a.QtyReturnLeft > 0'
      'and b.VendorId = :VendorId '
      'and c.FlagPurchaseReturn = '#39'1'#39
      
        'group by c.ItemId, c.ItemIdExternal, c.ItemName, c.ItemNameChine' +
        'se, '
      '  c.Type, d.ItemCategoryName'
      'order by c.ItemName, c.ItemIdExternal')
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  object qryPurchaseInvoiceReturn: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, '
      '  b.PurchaseInvoiceDate, b.VendorPurchaseInvoiceId'
      'from PurchaseInvoiceDt a'
      
        'left join PurchaseInvoiceHd b on (a.PurchaseInvoiceId = b.Purcha' +
        'seInvoiceId)'
      'left join Item c on (a.ItemId = c.ItemId)'
      'where a.QtyReturnLeft > 0'
      'and b.VendorId = :VendorId'
      'and a.ItemId = :ItemId'
      'and b.PurchaseInvoiceDate between :DateStart and :DateEnd'
      'and c.FlagPurchaseReturn = '#39'1'#39
      'order by a.PurchaseInvoiceId')
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
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
  object qryPurchaseReturnDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PurchaseReturnDt'
      'where PurchaseReturnId = :PurchaseReturnId')
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseReturnId'
      end>
  end
end
