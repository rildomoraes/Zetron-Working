inherited fmDisplayOtherTransaction: TfmDisplayOtherTransaction
  Caption = 'Display Transaksi Lain-Lain'
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
          FieldName = 'statusapprove'
          Column = cgvDisplaystatusapprove
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
      object cgvDisplayothertransactiondate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'othertransactiondate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayothertransactionid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'othertransactionid'
      end
      object cgvDisplaytransactiontypename: TcxGridDBColumn
        Caption = 'Transaksi'
        DataBinding.FieldName = 'transactiontypename'
      end
      object cgvDisplayWarehouseSourceName: TcxGridDBColumn
        Caption = 'Asal'
        DataBinding.FieldName = 'WarehouseSourceName'
        Width = 150
      end
      object cgvDisplayWarehouseDestName: TcxGridDBColumn
        Caption = 'Tujuan'
        DataBinding.FieldName = 'WarehouseDestName'
        Width = 150
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'OtherTransactionId'
      DataController.MasterKeyFieldNames = 'OtherTransactionId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvDisplayDtothertransactionid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'othertransactionid'
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
      object cgvDisplayDtitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cgvDisplayDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvDisplayDttype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cgvDisplayDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
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
      object cgvDisplayDtprice: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
      '  a.*, '
      '  b.WarehouseName as WarehouseSourceName, '
      '  c.WarehouseName as WarehouseDestName,'
      '  d.TransactionTypeName'
      'from OtherTransactionHd a'
      'left join Warehouse b on a.WarehouseSource = b.WarehouseId'
      'left join Warehouse c on a.WarehouseDest = c.WarehouseId'
      
        'left join TransactionType d on a.TransactionTypeId = d.Transacti' +
        'onTypeId'
      'where extract(year from a.OtherTransactionDate) = :Year'
      'and extract(month from a.OtherTransactionDate) = :Month'
      'order by a.OtherTransactionId')
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
      '  a.*, b.ItemIdExternal, b.ItemName, c.EmployeeName'
      'from OtherTransactionDt a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join Employee c on a.EmployeeId = c.EmployeeId'
      
        'left join OtherTransactionHd d on a.OtherTransactionId = d.Other' +
        'TransactionId'
      'where extract(year from d.OtherTransactionDate) = :Year'
      'and extract(month from d.OtherTransactionDate) = :Month'
      'order by a.OtherTransactionId'
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
