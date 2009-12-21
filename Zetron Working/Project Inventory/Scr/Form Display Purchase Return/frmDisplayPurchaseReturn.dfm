inherited fmDisplayPurchaseReturn: TfmDisplayPurchaseReturn
  Caption = 'Display Retur Pembelian'
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
      object cgvDisplaypurchaseinvoiceid: TcxGridDBColumn
        Caption = 'Retur'
        DataBinding.FieldName = 'purchasereturnid'
      end
      object cgvDisplayvendorpurchasereturnid: TcxGridDBColumn
        Caption = 'Retur External'
        DataBinding.FieldName = 'vendorpurchasereturnid'
      end
      object cgvDisplaypurchaseinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'purchasereturndate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayvendorname: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'vendorname'
        Width = 125
      end
      object cgvDisplaywarehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        Width = 120
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
      object cgvDisplaydiscamount2: TcxGridDBColumn
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
      object cgvDisplayoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'PurchasereturnId'
      DataController.MasterKeyFieldNames = 'PurchasereturnId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvDisplayDtpurchasereturnid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'purchasereturnid'
        Visible = False
        Width = 64
      end
      object cgvDisplayDtno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        FooterAlignmentHorz = taRightJustify
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvDisplayDtpurchaseinvoiceid: TcxGridDBColumn
        Caption = 'Nota Beli'
        DataBinding.FieldName = 'purchaseinvoiceid'
      end
      object cgvDisplayDtItemIdExternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemIdExternal'
        Width = 64
      end
      object cgvDisplayDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
        Width = 64
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
        FooterAlignmentHorz = taRightJustify
        Width = 64
      end
      object cgvDisplayDtprice: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'price'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taRightJustify
        Width = 64
      end
      object cgvDisplayDtdiscitem: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'discitem'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 64
      end
      object cgvDisplayDtdiscitemprice: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'discitemprice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        FooterAlignmentHorz = taRightJustify
        Width = 64
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
        FooterAlignmentHorz = taRightJustify
        Width = 64
      end
      object cgvDisplayDtemployeename: TcxGridDBColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeename'
        Width = 64
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
      '  a.*, b.VendorName, c.WarehouseName  '
      'from PurchaseReturnHd a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join Warehouse c on a.WarehouseId = c.WarehouseId'
      'where extract(year from a.PurchaseReturnDate) = :Year'
      'and extract(month from a.PurchaseReturnDate) = :Month'
      'order by a.PurchaseReturnId')
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
      '  a.*, b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese, '
      '  c.EmployeeName'
      'from PurchaseReturnDt a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join Employee c on a.EmployeeId = c.EmployeeId'
      
        'left join PurchaseReturnHd d on a.PurchaseReturnId = d.PurchaseR' +
        'eturnId'
      'where extract(year from d.PurchaseReturnDate) = :Year'
      'and extract(month from d.PurchaseReturnDate) = :Month'
      'order by a.PurchaseReturnId')
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
