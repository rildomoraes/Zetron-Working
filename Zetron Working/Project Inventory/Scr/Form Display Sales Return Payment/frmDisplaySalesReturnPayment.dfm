inherited fmDisplaySalesReturnPayment: TfmDisplaySalesReturnPayment
  Caption = 'Display Pembayaran Retur Penjualan'
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
          FieldName = 'SalesReturnPaymentid'
          Column = cgvDisplaySalesReturnPaymentid
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
      object cgvDisplaySalesReturnPaymentid: TcxGridDBColumn
        Caption = 'Kode Pembayaran'
        DataBinding.FieldName = 'SalesReturnPaymentid'
        Width = 115
      end
      object cgvDisplaySalesReturnPaymentdate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'SalesReturnPaymentdate'
        Width = 127
      end
      object cgvDisplayCustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Customername'
      end
      object cgvDisplayTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = dmGlobal.stYellowLight
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'SalesReturnPaymentid'
      DataController.MasterKeyFieldNames = 'SalesReturnPaymentid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'amount'
          Column = cgvDisplayDtamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvDisplayDtSalesReturnPaymentid: TcxGridDBColumn
        DataBinding.FieldName = 'SalesReturnPaymentid'
        Visible = False
      end
      object cgvDisplayDtno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        SortIndex = 0
        SortOrder = soAscending
        Width = 30
      end
      object cgvDisplayDtSalesReturnid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'SalesReturnid'
      end
      object cgvDisplayDttotalamount: TcxGridDBColumn
        Caption = 'Tagihan'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayDtpaymenttypename: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'paymenttypename'
      end
      object cgvDisplayDtgironumber: TcxGridDBColumn
        Caption = 'Giro'
        DataBinding.FieldName = 'gironumber'
      end
      object cgvDisplayDtamount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayDtreferenceid: TcxGridDBColumn
        Caption = 'Referensi'
        DataBinding.FieldName = 'referenceid'
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
      '  a.SalesReturnPaymentId, a.SalesReturnPaymentDate,'
      '  b.CustomerName, '
      '  (select sum(z.amount) from SalesReturnPaymentDt z'
      
        '  where z.SalesReturnPaymentId = a.SalesReturnPaymentId) as Tota' +
        'lAmount,'
      '  a.StatusApprove'
      'from SalesReturnPaymentHd a'
      'left join Customer b on a.CustomerId = b.CustomerId'
      'where extract(year from a.SalesReturnPaymentDate) = :Year'
      'and extract(month from a.SalesReturnPaymentDate) = :Month'
      'order by a.SalesReturnPaymentId')
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
      'select'
      '  a.*, e.TotalAmount,'
      '  c.EmployeeName, PaymentTypeName'
      'from SalesReturnPaymentDt a'
      
        'left join SalesReturnPaymentHd b on  a.SalesReturnPaymentId = b.' +
        'SalesReturnPaymentId'
      'left join Employee c on  a.EmployeeId = c.EmployeeId'
      'left join PaymentType d on  a.PaymentTypeId = d.PaymentTypeId'
      'left join SalesReturnHd e on a.SalesReturnId = e.SalesReturnId'
      'where extract(year from b.SalesReturnPaymentDate) = :Year'
      'and extract(month from b.SalesReturnPaymentDate) = :Month'
      'order by a.SalesReturnPaymentId')
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
