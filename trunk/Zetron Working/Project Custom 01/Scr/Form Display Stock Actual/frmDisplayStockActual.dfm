inherited fmDisplayStockActual: TfmDisplayStockActual
  Caption = 'Stok Fisik'
  ClientHeight = 571
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
  end
  object pnlHeader: TPanel [1]
    Left = 0
    Top = 50
    Width = 792
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -200
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
      Properties.OnChange = chkHideEmptyStockPropertiesChange
      State = cbsChecked
      TabOrder = 1
      Transparent = True
      Width = 161
    end
  end
  object cgStockOnHandHd: TcxGrid [2]
    Left = 0
    Top = 81
    Width = 792
    Height = 490
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -320
    ExplicitTop = -114
    ExplicitWidth = 912
    ExplicitHeight = 481
    object cgvPrevStockOnHandHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevStockOnHandHd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
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
        Visible = False
        GroupIndex = 0
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
      object cgvPrevStockOnHandHdvcIdUnitOfMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'vcIdUnitOfMeasure'
        Visible = False
      end
      object cgvPrevStockOnHandHdinMinStock: TcxGridDBColumn
        Caption = 'Min Stok'
        DataBinding.FieldName = 'inMinStock'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
      object cgvPrevStockOnHandHdinEndQty: TcxGridDBColumn
        Caption = 'Qty Fisik'
        DataBinding.FieldName = 'inEndQty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevWarehouse
      DataController.KeyFieldNames = 'vcIdWarehouse'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdWarehouse'
        Visible = False
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'vcWarehouseName'
        Options.Filtering = False
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'vcContactPerson'
        Options.Filtering = False
      end
      object cgvPrevWarehouseinOrder: TcxGridDBColumn
        DataBinding.FieldName = 'inOrder'
        Visible = False
      end
    end
    object cgvPrevSupplier: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.KeyFieldNames = 'vcIdSupplier'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSuppliervcIdSupplier: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdSupplier'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevSuppliervcSupplierName: TcxGridDBColumn
        DataBinding.FieldName = 'vcSupplierName'
        Options.Filtering = False
      end
      object cgvPrevSuppliervcAddress: TcxGridDBColumn
        DataBinding.FieldName = 'vcAddress'
        Options.Filtering = False
      end
      object cgvPrevSuppliervcCityName: TcxGridDBColumn
        DataBinding.FieldName = 'vcCityName'
        Options.Filtering = False
      end
      object cgvPrevSupplierinOrder: TcxGridDBColumn
        DataBinding.FieldName = 'inOrder'
        Visible = False
        Options.Filtering = False
      end
    end
    object cgvPrevCustomer: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.KeyFieldNames = 'vcIdCustomer'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCustomervcIdCustomer: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdCustomer'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevCustomervcCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'vcCustomerName'
        Options.Filtering = False
      end
      object cgvPrevCustomervcAddress: TcxGridDBColumn
        DataBinding.FieldName = 'vcAddress'
        Options.Filtering = False
      end
      object cgvPrevCustomervcCityName: TcxGridDBColumn
        DataBinding.FieldName = 'vcCityName'
        Options.Filtering = False
      end
      object cgvPrevCustomerinOrder: TcxGridDBColumn
        DataBinding.FieldName = 'inOrder'
        Visible = False
        Options.Filtering = False
      end
    end
    object cgStockOnHandHdLevel1: TcxGridLevel
      GridView = cgvPrevStockOnHandHd
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
      'declare'#13#10'  @IdWarehouse varchar(12), @HideEmptyStock integer'#13#10#13#10 +
      'set @IdWarehouse = :IdWarehouse'#13#10'set @HideEmptyStock = :HideEmpt' +
      'yStock'#13#10#13#10'select'#13#10'  z.vcIdWarehouse, z.vcWarehouseName, z.vcIdSu' +
      'pplies, z.vcSuppliesName, '#13#10'  z.vcIdSuppliesCategory, z.vcMerk, ' +
      'z.vcType, z.vcIdUnitOfMeasure, '#13#10'  z.inMinStock, sum(z.inEndQty)' +
      ' as inEndQty'#13#10'from (select'#13#10'  a.vcIdWarehouse, c.vcWarehouseName' +
      ','#13#10'  b.vcIdSupplies, b.vcSuppliesName, '#13#10'  b.vcIdSuppliesCategor' +
      'y, b.vcMerk, b.vcType, b.vcIdUnitOfMeasure, '#13#10'  IsNull(d.inMinSt' +
      'ock, 0) as inMinStock, a.inEndQty'#13#10'from tbIMStockOnHandHd a'#13#10'lef' +
      't join tbIMSupplies b on a.vcIdSupplies = b.vcIdSupplies'#13#10'left j' +
      'oin tbGNWarehouse c on a.vcIdWarehouse = c.vcIdWarehouse'#13#10'left j' +
      'oin tbIMSuppliesMinStock d on (a.vcIdSupplies = d.vcIdSupplies a' +
      'nd a.vcIdWarehouse = d.vcIdWarehouse)'#13#10'where a.vcIdWarehouse lik' +
      'e @IdWarehouse'#13#10'and a.inEndQty >= @HideEmptyStock'#13#10#13#10'union all'#13#10 +
      ' '#13#10'select '#13#10'  b.vcIdWarehouse, d.vcWarehouseName,'#13#10'  a.vcIdSuppl' +
      'ies, c.vcSuppliesName, '#13#10'  c.vcIdSuppliesCategory, c.vcMerk, c.v' +
      'cType, c.vcIdUnitOfMeasure, '#13#10'  IsNull(e.inMinStock, 0) as inMin' +
      'Stock, a.inQty as inEndQty'#13#10'from tbIMReceivingRecordDt a'#13#10'left j' +
      'oin tbIMReceivingRecordHd b on a.vcIdReceivingRecord = b.vcIdRec' +
      'eivingRecord'#13#10'left join tbIMSupplies c on a.vcIdSupplies = c.vcI' +
      'dSupplies'#13#10'left join tbGNWarehouse d on b.vcIdWarehouse = d.vcId' +
      'Warehouse'#13#10'left join tbIMSuppliesMinStock e on (a.vcIdSupplies =' +
      ' e.vcIdSupplies and b.vcIdWarehouse = e.vcIdWarehouse)'#13#10'where b.' +
      'vcIdWarehouse like @IdWarehouse'#13#10'and b.chStatusApprove = '#39'2'#39#13#10#13#10 +
      'union all'#13#10#13#10'select '#13#10'  b.vcIdWarehouse, d.vcWarehouseName,'#13#10'  a' +
      '.vcIdSupplies, c.vcSuppliesName, '#13#10'  c.vcIdSuppliesCategory, c.v' +
      'cMerk, c.vcType, c.vcIdUnitOfMeasure, '#13#10'  IsNull(e.inMinStock, 0' +
      ') as inMinStock, a.inQty as inEndQty'#13#10'from tbIMDeliveryOrderDt a' +
      #13#10'left join tbIMDeliveryOrderHd b on a.vcIdDeliveryOrder = b.vcI' +
      'dDeliveryOrder'#13#10'left join tbIMSupplies c on a.vcIdSupplies = c.v' +
      'cIdSupplies'#13#10'left join tbGNWarehouse d on b.vcIdWarehouse = d.vc' +
      'IdWarehouse'#13#10'left join tbIMSuppliesMinStock e on (a.vcIdSupplies' +
      ' = e.vcIdSupplies and b.vcIdWarehouse = e.vcIdWarehouse)'#13#10'where ' +
      'b.vcIdWarehouse like @IdWarehouse'#13#10'and b.chStatusApprove = '#39'0'#39') ' +
      'as z'#13#10'group by'#13#10'  z.vcIdWarehouse, z.vcWarehouseName, z.vcIdSupp' +
      'lies, z.vcSuppliesName, '#13#10'  z.vcIdSuppliesCategory, z.vcMerk, z.' +
      'vcType, z.vcIdUnitOfMeasure, '#13#10'  z.inMinStock'#13#10'order by z.vcIdWa' +
      'rehouse, z.vcIdSupplies'
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
  object dsPrevStockOnHandHd: TDataSource
    DataSet = dtsPrevStockOnHandHd
    Left = 168
    Top = 144
  end
  object dsPrevWarehouse: TDataSource
    DataSet = dtsPrevWarehouse
    Left = 168
    Top = 177
  end
  object gvrDisplayStock: TcxGridViewRepository
    Left = 104
    Top = 176
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
        DataBinding.FieldName = 'vcWarehouseName'
        Options.Filtering = False
      end
      object cgvPrevWarehousevcContactPerson: TcxGridDBColumn
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
      'order by inOrder, vcWarehouseName')
    Left = 136
    Top = 177
  end
end
