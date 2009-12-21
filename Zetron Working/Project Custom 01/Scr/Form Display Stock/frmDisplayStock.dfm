inherited fmDisplayStock: TfmDisplayStock
  Caption = 'Display Stok'
  ClientHeight = 571
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  object pnlHeader: TPanel [1]
    Left = 0
    Top = 50
    Width = 792
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      792
      31)
    object shpMinStock: TShape
      Left = 720
      Top = 6
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      Shape = stRoundRect
    end
    object lblMinStock: TLabel
      Left = 743
      Top = 8
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Min Stok'
      Transparent = True
    end
    object lblWarehouse: TLabel
      Left = 8
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Gudang'
      Transparent = True
    end
    object lcbIdWarehouse: TcxExtLookupComboBox
      Left = 53
      Top = 6
      Properties.View = cgvPrevWarehouse
      Properties.KeyFieldNames = 'vcIdWarehouse'
      Properties.ListFieldItem = cgvPrevWarehousevcWarehouseName
      Properties.OnEditValueChanged = lcbIdWarehousePropertiesEditValueChanged
      TabOrder = 0
      Width = 185
    end
    object chkHideEmptyStock: TcxCheckBox
      Left = 246
      Top = 6
      Caption = 'Sembunyikan stok kosong'
      ParentColor = False
      Properties.OnChange = chkHideEmptyStockPropertiesChange
      State = cbsChecked
      TabOrder = 1
      Transparent = True
      Width = 161
    end
  end
  object pnlDetail: TPanel [2]
    Left = 0
    Top = 81
    Width = 792
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cgStockOnHandHd: TcxGrid
      Left = 0
      Top = 0
      Width = 792
      Height = 323
      Align = alClient
      TabOrder = 0
      object cgvPrevStockOnHandHd: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPrevStockOnHandHd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;-#,##0.00'
            Kind = skSum
            FieldName = 'dcEndValue'
            Column = cgvPrevStockOnHandHddcEndValue
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        Styles.OnGetContentStyle = cgvPrevStockOnHandHdStylesGetContentStyle
        object cgvPrevStockOnHandHdvcIdWarehouse: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'vcIdWarehouse'
          Visible = False
          VisibleForCustomization = False
        end
        object cgvPrevStockOnHandHdvcWarehouseName: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'vcWarehouseName'
          Width = 104
        end
        object cgvPrevStockOnHandHdvcIdSupplies: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'vcIdSupplies'
        end
        object cgvPrevStockOnHandHdvcSuppliesName: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'vcSuppliesName'
        end
        object cgvPrevStockOnHandHdvcIdSuppliesCategory: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'vcIdSuppliesCategory'
          Visible = False
        end
        object cgvPrevStockOnHandHdvcMerk: TcxGridDBColumn
          Caption = 'Merek'
          DataBinding.FieldName = 'vcMerk'
          Visible = False
        end
        object cgvPrevStockOnHandHdvcType: TcxGridDBColumn
          Caption = 'Tipe'
          DataBinding.FieldName = 'vcType'
          Visible = False
        end
        object cgvPrevStockOnHandHdinMinStock: TcxGridDBColumn
          Caption = 'Min Stok'
          DataBinding.FieldName = 'inMinStock'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = False
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHdinEndQty: TcxGridDBColumn
          Caption = 'Qty Akhir'
          DataBinding.FieldName = 'inEndQty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.Alignment.Horz = taCenter
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHdinEndQtyReady: TcxGridDBColumn
          Caption = 'Qty Ready'
          DataBinding.FieldName = 'inEndQtyReady'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.Alignment.Horz = taCenter
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHddcEndValue: TcxGridDBColumn
          Caption = 'Nilai Akhir'
          DataBinding.FieldName = 'dcEndValue'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHddcPrice: TcxGridDBColumn
          Caption = 'Harga (AVG)'
          DataBinding.FieldName = 'dcPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
          Width = 64
        end
        object cgvPrevStockOnHandHddcPrice1: TcxGridDBColumn
          Caption = 'Eceran'
          DataBinding.FieldName = 'dcPrice1Rp'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHddcPrice2: TcxGridDBColumn
          Caption = 'Dealer'
          DataBinding.FieldName = 'dcPrice2Rp'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevStockOnHandHddcPrice3: TcxGridDBColumn
          Caption = 'Cabang'
          DataBinding.FieldName = 'dcPrice3Rp'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
      end
      object cgStockOnHandHdLevel1: TcxGridLevel
        GridView = cgvPrevStockOnHandHd
      end
    end
    object splDetailBottom: TcxSplitter
      Left = 0
      Top = 323
      Width = 792
      Height = 8
      HotZoneClassName = 'TcxXPTaskBarStyle'
      AlignSplitter = salBottom
      Control = cgStockOnHandDt
    end
    object cgStockOnHandDt: TcxGrid
      Left = 0
      Top = 331
      Width = 792
      Height = 159
      Align = alBottom
      TabOrder = 2
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cgvPrevStockOnHandDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPrevStockOnHandDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvPrevStockOnHandDtvcIdSupplies: TcxGridDBColumn
          DataBinding.FieldName = 'vcIdSupplies'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cgvPrevStockOnHandDtvcSuppliesName: TcxGridDBColumn
          DataBinding.FieldName = 'vcSuppliesName'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
        end
        object cgvPrevStockOnHandDtvcIdWarehouse: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'vcIdWarehouse'
          Visible = False
          Options.Filtering = False
        end
        object cgvPrevStockOnHandDtdtDate: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'dtDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 70
        end
        object cgvPrevStockOnHandDtdcPrice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'dcPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
          Width = 90
        end
        object cgvPrevStockOnHandDtinQty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'inQty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Options.Filtering = False
          Width = 50
        end
      end
      object cgvPrevPurchasePrice: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPrevPurchasePrice
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cgvPrevPurchasePricevcSupplierName: TcxGridDBColumn
          Caption = 'Supplier'
          DataBinding.FieldName = 'vcSupplierName'
        end
        object cgvPrevPurchasePricevcCityName: TcxGridDBColumn
          Caption = 'Kota'
          DataBinding.FieldName = 'CityName'
          Visible = False
        end
        object cgvPrevPurchasePricedcPrice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'dcPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevPurchasePricedcDiscItem: TcxGridDBColumn
          Caption = 'Disc %'
          DataBinding.FieldName = 'dcDiscItem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevPurchasePricedcDiscItemPrice: TcxGridDBColumn
          Caption = 'Disc'
          DataBinding.FieldName = 'dcDiscItemPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Filtering = False
        end
        object cgvPrevPurchasePricevcLastPurchaseInvoice: TcxGridDBColumn
          Caption = 'Nota Terakhir'
          DataBinding.FieldName = 'vcLastPurchaseInvoice'
          Options.Filtering = False
          Width = 70
        end
        object cgvPrevPurchasePricedtPurchaseInvoiceDate: TcxGridDBColumn
          Caption = 'Tgl Nota'
          DataBinding.FieldName = 'dtPurchaseInvoiceDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Filtering = False
          Width = 64
        end
        object cgvPrevPurchasePriceinQty: TcxGridDBColumn
          Caption = 'Qty Nota'
          DataBinding.FieldName = 'inQty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Options.Filtering = False
        end
      end
      object cgvPrevSalePrice: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPrevSalePrice
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cgvPrevSalePricevcCustomerName: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'vcCustomerName'
        end
        object cgvPrevSalePricevcCityName: TcxGridDBColumn
          Caption = 'Kota'
          DataBinding.FieldName = 'CityName'
        end
        object cgvPrevSalePricedcPrice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'dcPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevSalePricedcDiscItem: TcxGridDBColumn
          Caption = 'Disc %'
          DataBinding.FieldName = 'dcDiscItem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
        end
        object cgvPrevSalePricedcDiscItemPrice: TcxGridDBColumn
          Caption = 'Disc'
          DataBinding.FieldName = 'dcDiscItemPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Filtering = False
        end
        object cgvPrevSalePricevcLastSalesInvoice: TcxGridDBColumn
          Caption = 'Nota Terakhir'
          DataBinding.FieldName = 'vcLastSalesInvoice'
          Options.Filtering = False
          Width = 64
        end
        object cgvPrevSalePricedtSalesInvoiceDate: TcxGridDBColumn
          Caption = 'Tgl Nota'
          DataBinding.FieldName = 'dtSalesInvoiceDate'
          Options.Filtering = False
          Width = 64
        end
        object cgvPrevSalePriceinQty: TcxGridDBColumn
          Caption = 'Qty Nota'
          DataBinding.FieldName = 'inQty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Options.Filtering = False
        end
      end
      object cgStockOnHandDtLevel1: TcxGridLevel
        Caption = 'Stok Detail'
        GridView = cgvPrevStockOnHandDt
      end
      object cgStockOnHandDtLevel2: TcxGridLevel
        Caption = 'Harga Beli'
        GridView = cgvPrevPurchasePrice
      end
      object cgStockOnHandDtLevel3: TcxGridLevel
        Caption = 'Harga Jual'
        GridView = cgvPrevSalePrice
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dtsPrevStockOnHandHd: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'declare'#13#10'  @US money, @YEN money'#13#10#13#10'  select @US =cast(SetupValu' +
      'e as money) '#13#10'  from Setup '#13#10'  where SetupId = '#39'OPT14'#39#13#10#13#10'  sele' +
      'ct @YEN =cast(SetupValue as money) '#13#10'  from Setup '#13#10'  where Setu' +
      'pId = '#39'OPT15'#39#13#10#13#10'select'#13#10'  a.vcIdWarehouse, '#13#10'  c.vcWarehouseNam' +
      'e,'#13#10'  b.vcIdSupplies, b.vcSuppliesName, '#13#10'  b.vcIdSuppliesCatego' +
      'ry, b.vcMerk, b.vcType, '#13#10'  IsNull(d.inMinStock, 0) as inMinStoc' +
      'k, '#13#10'  a.inEndQty, a.inEndQtyReady, a.dcEndValue,'#13#10'  (case a.inE' +
      'ndQty '#13#10'    when 0 then 0 '#13#10'    else a.dcEndValue/a.inEndQty '#13#10' ' +
      ' end) as dcPrice,'#13#10'  (case b.chStatusCurrency1'#13#10'    when '#39'1'#39' the' +
      'n b.dcPrice1 * @US'#13#10'    when '#39'2'#39' then b.dcPrice1 * @Yen'#13#10'    els' +
      'e b.dcPrice1'#13#10'  end) as dcPrice1Rp, '#13#10'  (case b.chStatusCurrency' +
      '2'#13#10'    when '#39'1'#39' then b.dcPrice2 * @US'#13#10'    when '#39'2'#39' then b.dcPri' +
      'ce2 * @YEN'#13#10'    else b.dcPrice2'#13#10'  end) as dcPrice2Rp, '#13#10'  (case' +
      ' b.chStatusCurrency3'#13#10'    when '#39'1'#39' then b.dcPrice3 * @US'#13#10'    wh' +
      'en '#39'2'#39' then b.dcPrice3 * @YEN'#13#10'    else b.dcPrice3'#13#10'  end) as dc' +
      'Price3Rp'#13#10'  from tbIMStockOnHandHd a'#13#10'  left join tbIMSupplies b' +
      ' on a.vcIdSupplies = b.vcIdSupplies'#13#10'  left join tbGNWarehouse c' +
      ' on a.vcIdWarehouse = c.vcIdWarehouse'#13#10'  left join tbIMSuppliesM' +
      'inStock d on (a.vcIdSupplies = d.vcIdSupplies and a.vcIdWarehous' +
      'e = d.vcIdWarehouse)'#13#10'  where a.vcIdWarehouse like :IdWarehouse'#13 +
      #10'  and a.inEndQty >= :HideEmptyStock'#13#10'  order by a.vcIdSupplies,' +
      ' a.vcIdWarehouse'
    Parameters = <
      item
        Name = 'IdWarehouse'
        Size = -1
        Value = Null
      end
      item
        Name = 'HideEmptyStock'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 144
  end
  object dtsPrevStockOnHandDt: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*, b.vcSuppliesName'#13#10'from tbIMStockOnHandDt a'#13#10'inne' +
      'r join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'#13#10
    DataSource = dsPrevStockOnHandHd
    IndexFieldNames = 'vcIdSupplies;vcIdWarehouse'
    MasterFields = 'vcIdSupplies;vcIdWarehouse'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dtsPrevPurchasePrice: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  b.vcSupplierName, c.CityName,'#13#10'  a.vcIdSupplies, e.dc' +
      'Price, e.dcDiscItem, e.dcDiscItemPrice,'#13#10'  a.vcLastPurchaseInvoi' +
      'ce, d.dtPurchaseInvoiceDate,'#13#10'  e.inQty'#13#10'from tbIMPurchasePrice ' +
      'a'#13#10'left join tbGNSupplier b on a.vcIdSupplier = b.vcIdSupplier'#13#10 +
      'left join City c on b.vcIdCity = c.CityId'#13#10'left join tbIMPurchas' +
      'eInvoiceHd d on a.vcLastPurchaseInvoice = d.vcIdPurchaseInvoice ' +
      #13#10'left join tbIMPurchaseInvoiceDt e on '#13#10'  (d.vcIdPurchaseInvoic' +
      'e = e.vcIdPurchaseInvoice and a.vcIdSupplies = e.vcIdSupplies)'#13#10 +
      'order by b.vcSupplierName'
    DataSource = dsPrevStockOnHandHd
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 208
    Top = 176
  end
  object dtsPrevSalePrice: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  b.vcCustomerName, c.CityName,'#13#10'  a.vcIdSupplies, e.dc' +
      'Price, e.dcDiscItem, e.dcDiscItemPrice,'#13#10'  a.vcLastSalesInvoice,' +
      ' d.dtSalesInvoiceDate, e.inQty'#13#10'from tbIMSalePrice a'#13#10'left join ' +
      'tbGNCustomer b on a.vcIdCustomer = b.vcIdCustomer'#13#10'left join Cit' +
      'y c on b.vcIdCity = c.CityId'#13#10'left join tbIMSalesInvoiceHd d on ' +
      'a.vcLastSalesInvoice = d.vcIdSalesInvoice'#13#10'left join tbIMSalesIn' +
      'voiceDt e on'#13#10'  (d.vcIdSalesInvoice = e.vcIdSalesInvoice and a.v' +
      'cIdSupplies = e.vcIdSupplies)'#13#10'order by b.vcCustomerName'
    DataSource = dsPrevStockOnHandHd
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 280
    Top = 176
  end
  object dsPrevStockOnHandHd: TDataSource
    DataSet = dtsPrevStockOnHandHd
    Left = 168
    Top = 144
  end
  object dsPrevStockOnHandDt: TDataSource
    DataSet = dtsPrevStockOnHandDt
    Left = 168
    Top = 176
  end
  object dsPrevPurchasePrice: TDataSource
    DataSet = dtsPrevPurchasePrice
    Left = 240
    Top = 176
  end
  object dsPrevSalePrice: TDataSource
    DataSet = dtsPrevSalePrice
    Left = 312
    Top = 176
  end
  object dtsPrevStockOnHandHdTotal: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'declare'#13#10'  @US money, @YEN money'#13#10#13#10'  select @US =cast(SetupValu' +
      'e as money) '#13#10'  from Setup '#13#10'  where SetupId = '#39'OPT14'#39#13#10#13#10'  sele' +
      'ct @YEN =cast(SetupValue as money) '#13#10'  from Setup '#13#10'  where Setu' +
      'pId = '#39'OPT15'#39#13#10#13#10'select'#13#10'  '#39'%'#39' as vcIdWarehouse, '#13#10'  '#39'All'#39' as vc' +
      'WarehouseName,'#13#10'  a.vcIdSupplies, a.vcSuppliesName, '#13#10'  a.vcIdSu' +
      'ppliesCategory, a.vcMerk, a.vcType, '#13#10'  IsNull(a.inMinStock, 0) ' +
      'as inMinStock,'#13#10'  IsNull(dbo.fnGetSuppliesTotalEndQty(a.vcIdSupp' +
      'lies), 0) as inEndQty,'#13#10'  IsNull(dbo.fnGetSuppliesTotalEndQtyRea' +
      'dy(a.vcIdSupplies), 0) as inEndQtyReady,'#13#10'  IsNull(dbo.fnGetSupp' +
      'liesTotalEndValue(a.vcIdSupplies), 0)  as dcEndValue,'#13#10'  (case d' +
      'bo.fnGetSuppliesTotalEndQty(vcIdSupplies)'#13#10'    when 0 then 0'#13#10'  ' +
      '  else dbo.fnGetSuppliesTotalEndValue(vcIdSupplies)/dbo.fnGetSup' +
      'pliesTotalEndQty(vcIdSupplies)'#13#10'  end) as dcPrice,'#13#10'  (case a.ch' +
      'StatusCurrency1'#13#10'    when '#39'1'#39' then a.dcPrice1 * @US'#13#10'    when '#39'2' +
      #39' then a.dcPrice1 * @YEN'#13#10'    else a.dcPrice1'#13#10'  end) as dcPrice' +
      '1Rp, '#13#10'  (case a.chStatusCurrency2'#13#10'    when '#39'1'#39' then a.dcPrice2' +
      ' * @US'#13#10'    when '#39'2'#39' then a.dcPrice2 * @YEN'#13#10'    else a.dcPrice2' +
      #13#10'  end) as dcPrice2Rp, '#13#10'  (case a.chStatusCurrency3'#13#10'    when ' +
      #39'1'#39' then a.dcPrice3 * @US'#13#10'    when '#39'2'#39' then a.dcPrice3 * @YEN'#13#10 +
      '    else a.dcPrice3'#13#10'  end) as dcPrice3Rp'#13#10'from tbIMSupplies a'#13#10 +
      'order by vcIdSupplies, vcIdWarehouse'
    Parameters = <>
    Left = 208
    Top = 144
  end
  object dsPrevStockOnHandHdTotal: TDataSource
    DataSet = dtsPrevStockOnHandHdTotal
    Left = 240
    Top = 144
  end
  object dsPrevWarehouse: TDataSource
    DataSet = dtsPrevWarehouse
    Left = 168
    Top = 209
  end
  object gvrDisplayStock: TcxGridViewRepository
    Left = 104
    Top = 208
    object cgvPrevWarehouse: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevWarehouse
      DataController.KeyFieldNames = 'vcIdWarehouse'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevWarehousevcIdWarehouse: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdWarehouse'
        Visible = False
      end
      object cgvPrevWarehousevcWarehouseName: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'vcWarehouseName'
        Options.Filtering = False
      end
      object cgvPrevWarehousevcContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'vcContactPerson'
        Options.Filtering = False
      end
    end
  end
  object dtsPrevWarehouse: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  '#39'%'#39' as vcIdWarehouse, '#39'All'#39' as vcWarehouseName, '
      '  '#39'All Warehouse'#39' as vcContactPerson,'
      '  0 as inOrder '
      ''
      'union all'
      ''
      'select '
      '  vcIdWarehouse, vcWarehouseName, vcContactPerson,'
      '  1 as inOrder'
      'from tbGNWarehouse'
      ''
      'union all'
      ''
      'select '
      '  '#39'#'#39' as vcIdWarehouse, '#39'Consolidation'#39' as vcWarehouseName, '
      '  '#39'Consolidation'#39' as vcContactPerson,'
      '  2 as inOrder '
      ''
      'order by inOrder, vcWarehouseName')
    Left = 136
    Top = 209
  end
end
