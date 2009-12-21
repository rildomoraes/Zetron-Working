inherited fmDisplayPaidTransaction: TfmDisplayPaidTransaction
  Caption = 'Display Nota Lunas'
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
  inherited pnlCustom: TPanel
    Width = 692
    ExplicitLeft = 0
    ExplicitWidth = 692
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
  end
  object pcDisplayPaidTransaction: TcxPageControl [2]
    Left = 0
    Top = 75
    Width = 692
    Height = 396
    ActivePage = tsPI
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 390
    ClientRectLeft = 3
    ClientRectRight = 686
    ClientRectTop = 26
    object tsPI: TcxTabSheet
      Caption = 'Nota Pembelian (PI)'
      ImageIndex = 0
      object cgPIHd: TcxGrid
        Left = 0
        Top = 0
        Width = 683
        Height = 210
        Align = alClient
        TabOrder = 0
        object cgvPrevPIHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPIHd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.##;(#,##0.##)'
              Kind = skSum
              FieldName = 'dcTotalAmount'
              Column = cgvPrevPIHddcTotalAmount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevPIHdvcIdPurchaseInvoice: TcxGridDBColumn
            Caption = 'PI'
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
          end
          object cgvPrevPIHddtPurchaseInvoiceDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtPurchaseInvoiceDate'
          end
          object cgvPrevPIHdinInvoiceDueDay: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'inInvoiceDueDay'
            Visible = False
          end
          object cgvPrevPIHdvcSupplierName: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
          end
          object cgvPrevPIHdvcIdReceivingRecord: TcxGridDBColumn
            Caption = 'RR'
            DataBinding.FieldName = 'vcIdReceivingRecord'
            Options.Filtering = False
          end
          object cgvPrevPIHdvcIdPurchaseOrder: TcxGridDBColumn
            Caption = 'PO'
            DataBinding.FieldName = 'vcIdPurchaseOrder'
            Options.Filtering = False
          end
          object cgvPrevPIHddcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIHddcDisc: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDisc'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIHddcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIHddcTax: TcxGridDBColumn
            Caption = 'Pajak %'
            DataBinding.FieldName = 'dcTax'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIHddcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIHddcTotalAmount: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'dcTotalAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIHdtxNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'txNotes'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIHdtxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
          end
        end
        object cgPIHdLevel1: TcxGridLevel
          Caption = 'Nota Pembelian (PI)'
          GridView = cgvPrevPIHd
        end
      end
      object cgPIDt: TcxGrid
        Left = 0
        Top = 214
        Width = 683
        Height = 150
        Align = alBottom
        TabOrder = 1
        object cgvPrevPIDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPIDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Preview.Visible = True
          object cgvPrevPIDtvcIdPurchaseInvoice: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdPurchaseInvoice'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object cgvPrevPIDtinNo: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'inNo'
            Options.Filtering = False
          end
          object cgvPrevPIDtvcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
            Options.Filtering = False
          end
          object cgvPrevPIDtvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
            Options.Filtering = False
          end
          object cgvPrevPIDtinQty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'inQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIDtdcPrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevPIDtdcDiscItem: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDiscItem'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIDtdcDiscItemPrice: TcxGridDBColumn
            Caption = 'Disc Harga'
            DataBinding.FieldName = 'dcDiscItemPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIDtdcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIDtdcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevPIDtdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
        end
        object cgPIDtLevel1: TcxGridLevel
          Caption = 'Nota Pembelian Detail (PI)'
          GridView = cgvPrevPIDt
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 210
        Width = 683
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = cgPIDt
      end
    end
    object tsSI: TcxTabSheet
      Caption = 'Nota Penjualan (SI)'
      ImageIndex = 1
      object cgSIHd: TcxGrid
        Left = 0
        Top = 0
        Width = 683
        Height = 210
        Align = alClient
        TabOrder = 0
        object cgvPrevSIHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSIHd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.##;(#,##0.##)'
              Kind = skSum
              FieldName = 'dcTotalAmount'
              Column = cgvPrevSIHddcTotalAmount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevSIHdvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'SI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
          end
          object cgvPrevSIHddtSalesInvoiceDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtSalesInvoiceDate'
          end
          object cgvPrevSIHdvcCustomerName: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcCustomerName'
          end
          object cgvPrevSIHdvcIdSalesOrder: TcxGridDBColumn
            Caption = 'SO'
            DataBinding.FieldName = 'vcIdSalesOrder'
            Options.Filtering = False
          end
          object cgvPrevSIHdvcIdDeliveryOrder: TcxGridDBColumn
            Caption = 'DO'
            DataBinding.FieldName = 'vcIdDeliveryOrder'
            Options.Filtering = False
          end
          object cgvPrevSIHddtDeliveryScheduleDate: TcxGridDBColumn
            Caption = 'Tgl DO'
            DataBinding.FieldName = 'dtDeliveryScheduleDate'
            Options.Filtering = False
          end
          object cgvPrevSIHdinInvoiceDueDay: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'inInvoiceDueDay'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHddcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIHddcDisc: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDisc'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIHddcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHddcTax: TcxGridDBColumn
            Caption = 'Pajak %'
            DataBinding.FieldName = 'dcTax'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIHddcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHddcTotalAmount: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'dcTotalAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIHdSalesName: TcxGridDBColumn
            Caption = 'Salesman'
            DataBinding.FieldName = 'SalesName'
            Options.Filtering = False
          end
          object cgvPrevSIHdtxNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'txNotes'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHdtxMemo: TcxGridDBColumn
            Caption = 'Memo'
            DataBinding.FieldName = 'txMemo'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHdvcDeliveryOrderAddress: TcxGridDBColumn
            Caption = 'Alamat DO'
            DataBinding.FieldName = 'vcDeliveryOrderAddress'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHdvcDeliveryOrderNotes: TcxGridDBColumn
            Caption = 'Notes DO'
            DataBinding.FieldName = 'vcDeliveryOrderNotes'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIHdvcEmployeeName: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'vcEmployeeName'
            Visible = False
            Options.Filtering = False
          end
        end
        object cgSIHdLevel1: TcxGridLevel
          Caption = 'Nota Penjualan (SI)'
          GridView = cgvPrevSIHd
        end
      end
      object cgSIDt: TcxGrid
        Left = 0
        Top = 214
        Width = 683
        Height = 150
        Align = alBottom
        TabOrder = 1
        object cgvPrevSIDt: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSIDt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Preview.Visible = True
          object cgvPrevSIDtvcIdSalesInvoice: TcxGridDBColumn
            DataBinding.FieldName = 'vcIdSalesInvoice'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevSIDtinNo: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'inNo'
            Options.Filtering = False
          end
          object cgvPrevSIDtvcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
            Options.Filtering = False
          end
          object cgvPrevSIDtvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
            Options.Filtering = False
          end
          object cgvPrevSIDtinQty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'inQty'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIDtdcPrice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'dcPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
          object cgvPrevSIDtdcPricePrint: TcxGridDBColumn
            Caption = 'Harga Print'
            DataBinding.FieldName = 'dcPricePrint'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIDtdcDiscItem: TcxGridDBColumn
            Caption = 'Disc %'
            DataBinding.FieldName = 'dcDiscItem'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIDtdcDiscItemPrice: TcxGridDBColumn
            Caption = 'Disc Harga'
            DataBinding.FieldName = 'dcDiscItemPrice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIDtdcDiscAmount: TcxGridDBColumn
            Caption = 'Disc'
            DataBinding.FieldName = 'dcDiscAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIDtdcTaxAmount: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'dcTaxAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Filtering = False
          end
          object cgvPrevSIDtdcAmount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'dcAmount'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
          end
        end
        object cgSIDtLevel1: TcxGridLevel
          Caption = 'Nota Penjualan Detail (SI)'
          GridView = cgvPrevSIDt
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 210
        Width = 683
        Height = 4
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = cgSIDt
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dtsPrevPIHd: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10' a.*,'#13#10' b.vcSupplierName'#13#10'from tbIMPurchaseInvoiceHd a'#13 +
      #10'inner join tbGNSupplier b on  a.vcIdSupplier = b.vcIdSupplier'#13#10 +
      'where a.chStatusApprove = '#39'6'#39#13#10'and dtPurchaseInvoiceDate between' +
      ' :StartDate and :EndDate'#13#10'order by a.vcIdPurchaseInvoice'
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
    Left = 136
    Top = 144
  end
  object dsPrevPIHd: TDataSource
    DataSet = dtsPrevPIHd
    Left = 168
    Top = 144
  end
  object dtsPrevPIDt: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10' a.*,'#13#10' c.vcSuppliesName'#13#10'from tbIMPurchaseInvoiceDt a'#13 +
      #10'left join tbIMPurchaseInvoiceHd b on a.vcIdPurchaseInvoice = b.' +
      'vcIdPurchaseInvoice'#13#10'left join tbIMSupplies c on  a.vcIdSupplies' +
      ' = c.vcIdSupplies'#13#10'where b.chStatusApprove = '#39'6'#39#13#10'order by a.inN' +
      'o'
    DataSource = dsPrevPIHd
    IndexFieldNames = 'vcIdPurchaseInvoice'
    MasterFields = 'vcIdPurchaseInvoice'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsPrevPIDt: TDataSource
    DataSet = dtsPrevPIDt
    Left = 168
    Top = 176
  end
  object dtsPrevSIHd: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10' a.*,'#13#10' b.vcCustomerName, c.vcWarehouseName,'#13#10' d.Employ' +
      'eeName as SalesName'#13#10'from tbIMSalesInvoiceHd a'#13#10'left join tbGNCu' +
      'stomer b on  a.vcIdCustomer = b.vcIdCustomer'#13#10'left join tbGNWare' +
      'house c on  a.vcIdWarehouse = c.vcIdWarehouse'#13#10'left join Employe' +
      'e d on  a.vcSalesName = d.EmployeeId'#13#10'where a.chStatusApprove = ' +
      #39'6'#39#13#10'and dtSalesInvoiceDate between :StartDate and :EndDate'#13#10'ord' +
      'er by a.vcIdSalesInvoice'
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
    Left = 232
    Top = 144
  end
  object dsPrevSIHd: TDataSource
    DataSet = dtsPrevSIHd
    Left = 264
    Top = 144
  end
  object dtsPrevSIDt: TADODataSet
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    CommandText = 
      'select '#13#10' a.*,'#13#10' c.vcSuppliesName'#13#10'from tbIMSalesInvoiceDt a'#13#10'le' +
      'ft join tbIMSalesInvoiceHd b on a.vcIdSalesInvoice = b.vcIdSales' +
      'Invoice'#13#10'left join tbIMSupplies c on  a.vcIdSupplies = c.vcIdSup' +
      'plies'#13#10'where b.chStatusApprove = '#39'6'#39#13#10'order by a.inNo'
    DataSource = dsPrevSIHd
    IndexFieldNames = 'vcIdSalesInvoice'
    MasterFields = 'vcIdSalesInvoice'
    Parameters = <>
    Left = 232
    Top = 176
  end
  object dsPrevSIDt: TDataSource
    DataSet = dtsPrevSIDt
    Left = 264
    Top = 176
  end
end
