inherited fmDisplaySalesInvoice: TfmDisplaySalesInvoice
  Caption = 'Display Nota Penjualan'
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
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skCount
          Column = cgvDisplaystatusapprove
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'TotalAmount'
          Column = cgvDisplayTotalAmount
          DisplayText = 'Total'
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'outstandingtotalamount'
          Column = cgvDisplayoutstandingtotalamount
          DisplayText = 'Sisa'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skCount
          Column = cgvDisplaystatusapprove
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'TotalAmount'
          Column = cgvDisplayTotalAmount
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'OutstandingTotalAmount'
          Column = cgvDisplayoutstandingtotalamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
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
        Width = 40
      end
      object cgvDisplaySalesinvoiceid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'Salesinvoiceid'
      end
      object cgvDisplaysalesinvoiceidinternal: TcxGridDBColumn
        Caption = 'Nota Internal'
        DataBinding.FieldName = 'salesinvoiceidinternal'
      end
      object cgvDisplaySalesinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'Salesinvoicedate'
      end
      object cgvDisplayinvoicedueday: TcxGridDBColumn
        Caption = 'Jatuh Tempo'
        DataBinding.FieldName = 'invoicedueday'
        Width = 84
      end
      object cgvDisplayCustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Customername'
        Width = 125
      end
      object cgvDisplaywarehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        Width = 120
      end
      object cgvDisplayoutletname: TcxGridDBColumn
        Caption = 'Outlet'
        DataBinding.FieldName = 'outletname'
        Width = 120
      end
      object cgvDisplayTotal: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDisc: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'Disc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDiscAmount: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'DiscAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDisc2: TcxGridDBColumn
        Caption = 'Disc 2 %'
        DataBinding.FieldName = 'Disc2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDiscAmount2: TcxGridDBColumn
        Caption = 'Disc 2'
        DataBinding.FieldName = 'DiscAmount2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayvoucher: TcxGridDBColumn
        Caption = 'No Voucher '
        DataBinding.FieldName = 'voucher'
        Visible = False
      end
      object cgvDisplayvoucheramount: TcxGridDBColumn
        Caption = 'Voucher'
        DataBinding.FieldName = 'voucheramount'
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
      object cgvDisplayoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = dmGlobal.stYellowLight
      end
      object cgvDisplayflagkonsinyasi: TcxGridDBColumn
        Caption = 'Konsinyasi'
        DataBinding.FieldName = 'flagkonsinyasi'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
        Width = 72
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'SalesInvoiceId'
      DataController.MasterKeyFieldNames = 'SalesInvoiceId'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skCount
          Position = spFooter
          FieldName = 'no'
          Column = cgvDisplayDtno
          DisplayText = 'No'
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'amount'
          Column = cgvDisplayDtamount
          DisplayText = 'Jumlah'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skCount
          FieldName = 'no'
          Column = cgvDisplayDtno
          DisplayText = 'No'
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'amount'
          Column = cgvDisplayDtamount
          DisplayText = 'Jumlah'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvDisplayDtSalesinvoiceid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'Salesinvoiceid'
        Visible = False
      end
      object cgvDisplayDtno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvDisplayDtItemIdExternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemIdExternal'
      end
      object cgvDisplayDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvDisplayDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
      object cgvDisplayDtitemtext: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'itemtext'
      end
      object cgvDisplayDttype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cgvDisplayDtexpireddate: TcxGridDBColumn
        Caption = 'Expired'
        DataBinding.FieldName = 'expireddate'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
      end
      object cgvDisplayDtqty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDtqtyreturnleft: TcxGridDBColumn
        Caption = 'Qty Retur'
        DataBinding.FieldName = 'qtyreturnleft'
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
      '  a.*, b.CustomerName, c.WarehouseName, d.OutletName,'
      
        '  (a.SalesInvoiceDate +  a.InvoiceDueDay) as SalesInvoiceDueDate' +
        '  '
      'from SalesInvoiceHd a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'left join Warehouse c on a.WarehouseId = c.WarehouseId'
      'left join Outlet d on a.OutletId = d.OutletId'
      'where extract(year from a.SalesInvoiceDate) = :Year'
      'and extract(month from a.SalesInvoiceDate) = :Month'
      'order by a.SalesInvoiceId')
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
      'from SalesInvoiceDt a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join Employee c on a.EmployeeId = c.EmployeeId'
      
        'left join SalesInvoiceHd d on a.SalesInvoiceId = d.SalesInvoiceI' +
        'd'
      'where extract(year from d.SalesInvoiceDate) = :Year'
      'and extract(month from d.SalesInvoiceDate) = :Month'
      'order by a.SalesInvoiceId')
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
