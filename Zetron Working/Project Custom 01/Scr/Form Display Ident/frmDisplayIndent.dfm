inherited fmDisplayIndent: TfmDisplayIndent
  Caption = 'Display Indent'
  ClientHeight = 471
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
  end
  object pcDisplayIndent: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 692
    Height = 421
    ActivePage = tsPO
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 415
    ClientRectLeft = 3
    ClientRectRight = 686
    ClientRectTop = 26
    object tsPO: TcxTabSheet
      Caption = 'Order Pembelian (PO)'
      ImageIndex = 0
      object cgPOHd: TcxGrid
        Left = 0
        Top = 0
        Width = 683
        Height = 235
        Align = alClient
        TabOrder = 0
        object cgvPrevPOOutstandingHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPOOutstandingHd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevPOOutstandingHdvcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
          end
          object cgvPrevPOOutstandingHdvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
          end
          object cgvPrevPOOutstandingHdvcType: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'vcType'
          end
          object cgvPrevPOOutstandingHdinOrderQty: TcxGridDBColumn
            Caption = 'Qty Order'
            DataBinding.FieldName = 'inOrderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Options.Sorting = False
          end
          object cgvPrevPOOutstandingHdinOutstandingQty: TcxGridDBColumn
            Caption = 'Sisa Qty Order'
            DataBinding.FieldName = 'inOutstandingQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Options.Sorting = False
          end
        end
        object cgPOHdLevel1: TcxGridLevel
          Caption = 'Order Pembelian (PO)'
          GridView = cgvPrevPOOutstandingHd
        end
      end
      object cgPODt: TcxGrid
        Left = 0
        Top = 239
        Width = 683
        Height = 150
        Align = alBottom
        TabOrder = 1
        object cgvPrevPOOutstandingDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPOOutstandingDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Preview.Column = cgvPrevPOOutstandingDttxMemo
          Preview.Visible = True
          object cgvPrevPOOutstandingDtvcIdSupplies: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSupplies'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object cgvPrevPOOutstandingDtvcIdPurchaseOrder: TcxGridDBColumn
            Caption = 'PO'
            DataBinding.FieldName = 'vcIdPurchaseOrder'
            Options.Editing = False
          end
          object cgvPrevPOOutstandingDtdtPurchaseOrderDate: TcxGridDBColumn
            Caption = 'Tgl PO'
            DataBinding.FieldName = 'dtPurchaseOrderDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Editing = False
          end
          object cgvPrevPOOutstandingDtdtShippingDate: TcxGridDBColumn
            Caption = 'Tgl Kirim'
            DataBinding.FieldName = 'dtShippingDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Editing = False
          end
          object cgvPrevPOOutstandingDtvcSupplierName: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
            Options.Editing = False
          end
          object cgvPrevPOOutstandingDtvcCityName: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityName'
            Options.Editing = False
          end
          object cgvPrevPOOutstandingDtinOrderQty: TcxGridDBColumn
            Caption = 'Qty Order'
            DataBinding.FieldName = 'inOrderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cgvPrevPOOutstandingDtinOutstandingQty: TcxGridDBColumn
            Caption = 'Sisa Qty Order'
            DataBinding.FieldName = 'inOutstandingQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cgvPrevPOOutstandingDttxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Filtering = False
          end
        end
        object cgPODtLevel1: TcxGridLevel
          Caption = 'Order Pembelian Detail (PO)'
          GridView = cgvPrevPOOutstandingDt
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 235
        Width = 683
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = cgPODt
      end
    end
    object tsSO: TcxTabSheet
      Caption = 'Order Penjualan (SO)'
      ImageIndex = 1
      object cgSOHd: TcxGrid
        Left = 0
        Top = 0
        Width = 683
        Height = 235
        Align = alClient
        TabOrder = 0
        object cgvPrevSOOutstandingHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSOOutstandingHd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevSOOutstandingHdvcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
          end
          object cgvPrevSOOutstandingHdvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
          end
          object cgvPrevSOOutstandingHdvcType: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'vcType'
          end
          object cgvPrevSOOutstandingHdinOrderQty: TcxGridDBColumn
            Caption = 'Qty Order'
            DataBinding.FieldName = 'inOrderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevSOOutstandingHdinOutstandingQty: TcxGridDBColumn
            Caption = 'Sisa Qty Order'
            DataBinding.FieldName = 'inOutstandingQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Options.Moving = False
          end
        end
        object cgSOHdLevel1: TcxGridLevel
          Caption = 'Order Penjualan (SO)'
          GridView = cgvPrevSOOutstandingHd
        end
      end
      object cgSODt: TcxGrid
        Left = 0
        Top = 239
        Width = 683
        Height = 150
        Align = alBottom
        TabOrder = 1
        object cgvPrevSOOutstandingDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSOOutstandingDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Preview.Column = cgvPrevSOOutstandingDttxMemo
          Preview.Visible = True
          object cgvPrevSOOutstandingDtvcIdSupplies: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSupplies'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object cgvPrevSOOutstandingDtvcIdSalesOrder: TcxGridDBColumn
            Caption = 'SO'
            DataBinding.FieldName = 'vcIdSalesOrder'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtdtSalesOrderDate: TcxGridDBColumn
            Caption = 'Tgl SO'
            DataBinding.FieldName = 'dtSalesOrderDate'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtdtShippingDate: TcxGridDBColumn
            Caption = 'Tgl Kirim'
            DataBinding.FieldName = 'dtShippingDate'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtvcCustomerName: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcCustomerName'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtvcCityName: TcxGridDBColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'CityName'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtSalesName: TcxGridDBColumn
            Caption = 'Salesman'
            DataBinding.FieldName = 'SalesName'
            Options.Editing = False
          end
          object cgvPrevSOOutstandingDtinOrderQty: TcxGridDBColumn
            Caption = 'Qty Order'
            DataBinding.FieldName = 'inOrderQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevSOOutstandingDtinOutstandingQty: TcxGridDBColumn
            Caption = 'Sisa Qty Order'
            DataBinding.FieldName = 'inOutstandingQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cgvPrevSOOutstandingDttxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Filtering = False
          end
        end
        object cgSODtLevel1: TcxGridLevel
          Caption = 'Order Penjualan Detail (SO)'
          GridView = cgvPrevSOOutstandingDt
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 235
        Width = 683
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = cgSODt
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dtsPrevPOOutstandingHd: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.vcIdSupplies, b.vcSuppliesName, b.vcType,'#13#10'  sum(a.' +
      'inOutstandingQty) as inOutstandingQty, sum(a.inQty) as inOrderQt' +
      'y'#13#10'from tbIMPurchaseOrderDt a'#13#10'inner join tbIMSupplies b on  a.v' +
      'cIdSupplies = b.vcIdSupplies'#13#10'inner join tbIMPurchaseOrderHd c o' +
      'n a.vcIdPurchaseOrder = c.vcIdPurchaseOrder '#13#10'where c.chStatusAp' +
      'prove = '#39'3'#39#13#10'group by a.vcIdSupplies, b.vcSuppliesName, b.vcType' +
      #13#10'order by a.vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsPrevPOOutstandingHd: TDataSource
    DataSet = dtsPrevPOOutstandingHd
    Left = 168
    Top = 144
  end
  object dtsPrevPOOutstandingDt: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.vcIdSupplies, a.dtShippingDate, a.vcIdPurchaseOrder' +
      ', '#13#10'  b.dtPurchaseOrderDate, c.vcSupplierName, d.CityName, '#13#10'  a' +
      '.inOutstandingQty, a.inQty as inOrderQty, b.txMemo'#13#10'from tbIMPur' +
      'chaseOrderDt a'#13#10'inner join tbIMPurchaseOrderHd b on a.vcIdPurcha' +
      'seOrder = b.vcIdPurchaseOrder '#13#10'inner join tbGNSupplier c on  b.' +
      'vcIdSupplier = c.vcIdSupplier'#13#10'inner join City d on c.vcIdCity =' +
      ' d.CityId'#13#10'where b.chStatusApprove = '#39'3'#39#13#10'order by a.vcIdSupplie' +
      's, a.dtShippingDate'
    DataSource = dsPrevPOOutstandingHd
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsPrevPOOutstandingDt: TDataSource
    DataSet = dtsPrevPOOutstandingDt
    Left = 168
    Top = 176
  end
  object dtsPrevSOOutstandingHd: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.vcIdSupplies, b.vcSuppliesName, b.vcType,'#13#10'  sum(a.' +
      'inOutstandingQty) as inOutstandingQty, sum(a.inQty) as inOrderQt' +
      'y'#13#10'from tbIMSalesOrderDt a'#13#10'inner join tbIMSupplies b on  a.vcId' +
      'Supplies = b.vcIdSupplies'#13#10'inner join tbIMSalesOrderHd c on a.vc' +
      'IdSalesOrder = c.vcIdSalesOrder '#13#10'where c.chStatusApprove = '#39'2'#39#13 +
      #10'group by a.vcIdSupplies, b.vcSuppliesName, b.vcType'#13#10'order by a' +
      '.vcIdSupplies'
    Parameters = <>
    Left = 208
    Top = 144
  end
  object dsPrevSOOutstandingHd: TDataSource
    DataSet = dtsPrevSOOutstandingHd
    Left = 240
    Top = 144
  end
  object dtsPrevSOOutstandingDt: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.vcIdSupplies, a.dtShippingDate, a.vcIdSalesOrder, '#13 +
      #10'  b.dtSalesOrderDate, c.vcCustomerName, d.CityName, '#13#10'  a.inOut' +
      'standingQty, a.inQty as inOrderQty, b.txMemo,'#13#10'  f.EmployeeName ' +
      'as SalesName'#13#10'from tbIMSalesOrderDt a'#13#10'inner join tbIMSalesOrder' +
      'Hd b on a.vcIdSalesOrder = b.vcIdSalesOrder '#13#10'inner join tbGNCus' +
      'tomer c on  b.vcIdCustomer = c.vcIdCustomer'#13#10'inner join City d o' +
      'n c.vcIdCity = d.CityId'#13#10'inner join tbIMSalesOrderHd e on a.vcId' +
      'SalesOrder = e.vcIdSalesOrder'#13#10'left join Employee f on e.vcSales' +
      'Name = f.EmployeeId'#13#10'where b.chStatusApprove = '#39'2'#39#13#10'order by a.v' +
      'cIdSupplies, a.dtShippingDate'
    DataSource = dsPrevSOOutstandingHd
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 208
    Top = 176
  end
  object dsPrevSOOutstandingDt: TDataSource
    DataSet = dtsPrevSOOutstandingDt
    Left = 240
    Top = 176
  end
end
