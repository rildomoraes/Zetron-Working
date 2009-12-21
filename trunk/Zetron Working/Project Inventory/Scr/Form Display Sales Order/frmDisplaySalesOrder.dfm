inherited fmDisplaySalesOrder: TfmDisplaySalesOrder
  Caption = 'Display Order Penjualan'
  PixelsPerInch = 96
  TextHeight = 13
  object cgDisplay: TcxGrid [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 2
    object cgvDisplay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = cgvDisplaystatusapprove
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'TotalAmount'
          Column = cgvDisplayTotalAmount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cgvDisplaystatusapprove: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'statusapprove'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            Description = 'Unposting'
            ImageIndex = 7
            Value = '0'
          end
          item
            Description = 'Posting'
            ImageIndex = 6
            Value = '1'
          end
          item
            Description = 'Void'
            ImageIndex = 8
            Value = '2'
          end>
        Width = 30
      end
      object cgvDisplaySalesOrderid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'SalesOrderid'
      end
      object cgvDisplaySalesOrderdate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'SalesOrderdate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayCustomerSalesOrderid: TcxGridDBColumn
        Caption = 'Nota Customer'
        DataBinding.FieldName = 'CustomerSalesOrderid'
        Width = 89
      end
      object cgvDisplayCustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Customername'
        Width = 125
      end
      object cgvDisplayTotal: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaydisc: TcxGridDBColumn
        Caption = 'Disc 1 %'
        DataBinding.FieldName = 'disc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplaydiscamount: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'discamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDisc2: TcxGridDBColumn
        Caption = 'Disc 2 %'
        DataBinding.FieldName = 'disc2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDiscAmount2: TcxGridDBColumn
        Caption = 'Disc 2'
        DataBinding.FieldName = 'discamount2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaytax: TcxGridDBColumn
        Caption = 'Tax %'
        DataBinding.FieldName = 'tax'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        Width = 51
      end
      object cgvDisplaytaxamount: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'taxamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'SalesOrderId'
      DataController.MasterKeyFieldNames = 'SalesOrderId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvDisplayDtSalesOrderid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'SalesOrderid'
        Visible = False
      end
      object cgvDisplayDtno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
      end
      object cgvDisplayDtitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cgvDisplayDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvDisplayDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
      end
      object cgvDisplayDtitemtext: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'itemtext'
      end
      object cgvDisplayDtitemtype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'itemtype'
      end
      object cgvDisplayDtqty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDtqtyoutstanding: TcxGridDBColumn
        Caption = 'Qty Outstanding'
        DataBinding.FieldName = 'qtyoutstanding'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDtprice: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayDtdiscitem: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'discitem'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDtdiscitemprice: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'discitemprice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDtdiscitem2: TcxGridDBColumn
        Caption = 'Disc2 %'
        DataBinding.FieldName = 'discitem2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDtdiscitemprice2: TcxGridDBColumn
        Caption = 'Disc2'
        DataBinding.FieldName = 'discitemprice2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDtamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayDtemployeename: TcxGridDBColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeename'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplay
      object cgDisplayLevel2: TcxGridLevel
        GridView = cgvDisplayDt
      end
    end
  end
  object dsDisplay: TDataSource [6]
    DataSet = qryDisplay
    Left = 200
    Top = 144
  end
  object dsDisplayDt: TDataSource [7]
    DataSet = qryDisplayDt
    Left = 200
    Top = 176
  end
  object qryDisplay: TUniQuery [8]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.*, b.CustomerName '
      'from SalesOrderHd a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'where extract(year from a.SalesOrderDate) = :Year'
      'and extract(month from a.SalesOrderDate) = :Month'
      'order by a.SalesOrderId')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object qryDisplayDt: TUniQuery [9]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, '
      '  b.ItemIdExternal, b.ItemName, '
      '  b.Type, b.ItemNameChinese,  '
      '  c.EmployeeName'
      'from SalesOrderDt a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join Employee c on a.EmployeeId = c.EmployeeId'
      'left join SalesOrderHd d on a.SalesOrderId = d.SalesOrderId'
      'where extract(year from d.SalesOrderDate) = :Year'
      'and extract(month from d.SalesOrderDate) = :Month'
      '')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
