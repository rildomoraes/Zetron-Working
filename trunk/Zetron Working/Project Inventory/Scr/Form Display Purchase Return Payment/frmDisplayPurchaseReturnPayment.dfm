inherited fmDisplayPurchaseReturnPayment: TfmDisplayPurchaseReturnPayment
  Caption = 'Display Pembayaran Retur Pembelian'
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
          FieldName = 'PurchaseReturnPaymentid'
          Column = cgvDisplayPurchaseReturnPaymentid
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
      object cgvDisplayPurchaseReturnPaymentid: TcxGridDBColumn
        Caption = 'Kode Pembayaran'
        DataBinding.FieldName = 'PurchaseReturnPaymentid'
        Width = 115
      end
      object cgvDisplayPurchaseReturnPaymentdate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'PurchaseReturnPaymentdate'
        Width = 127
      end
      object cgvDisplayvendorname: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'vendorname'
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
      DataController.DetailKeyFieldNames = 'PurchaseReturnPaymentid'
      DataController.MasterKeyFieldNames = 'PurchaseReturnPaymentid'
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
      object cgvDisplayDtPurchaseReturnPaymentid: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseReturnPaymentid'
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
      object cgvDisplayDtpurchaseReturnid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'purchaseReturnid'
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
      '  a.PurchaseReturnPaymentId, a.PurchaseReturnPaymentDate,'
      '  b.VendorName, '
      '  (select sum(z.amount) from PurchaseReturnPaymentDt z'
      
        '  where z.PurchaseReturnPaymentId = a.PurchaseReturnPaymentId) a' +
        's TotalAmount,'
      '  a.StatusApprove'
      'from PurchaseReturnPaymentHd a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'where extract(year from a.PurchaseReturnPaymentDate) = :Year'
      'and extract(month from a.PurchaseReturnPaymentDate) = :Month'
      'order by a.PurchaseReturnPaymentId')
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
      'from PurchaseReturnPaymentDt a'
      
        'left join PurchaseReturnPaymentHd b on  a.PurchaseReturnPaymentI' +
        'd = b.PurchaseReturnPaymentId'
      'left join Employee c on  a.EmployeeId = c.EmployeeId'
      'left join PaymentType d on  a.PaymentTypeId = d.PaymentTypeId'
      
        'left join PurchaseReturnHd e on a.PurchaseReturnId = e.PurchaseR' +
        'eturnId'
      'where extract(year from b.PurchaseReturnPaymentDate) = :Year'
      'and extract(month from b.PurchaseReturnPaymentDate) = :Month'
      'order by a.PurchaseReturnPaymentId')
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
