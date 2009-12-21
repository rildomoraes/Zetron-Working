inherited fmDisplayPrice: TfmDisplayPrice
  Caption = 'fmDisplayPrice'
  ClientHeight = 492
  ClientWidth = 710
  ExplicitWidth = 718
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 710
    ExplicitWidth = 710
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 710
    Height = 442
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1itemid: TcxGridDBColumn
        Caption = 'ID Barang'
        DataBinding.FieldName = 'itemid'
      end
      object cxGrid1DBTableView1itemidexternal: TcxGridDBColumn
        Caption = 'ID Eksternal Barang'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cxGrid1DBTableView1itemname: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'itemname'
      end
      object cxGrid1DBTableView1itemnamechinese: TcxGridDBColumn
        Caption = 'Nama Mandarin Barang'
        DataBinding.FieldName = 'itemnamechinese'
        Width = 76
      end
      object cxGrid1DBTableView1barcodeid: TcxGridDBColumn
        Caption = 'ID Barcode'
        DataBinding.FieldName = 'barcodeid'
      end
      object cxGrid1DBTableView1barcodename: TcxGridDBColumn
        Caption = 'Nama Barcode'
        DataBinding.FieldName = 'barcodename'
      end
      object cxGrid1DBTableView1itemcategoryid: TcxGridDBColumn
        Caption = 'ID Kategori'
        DataBinding.FieldName = 'itemcategoryid'
      end
      object cxGrid1DBTableView1employeeid: TcxGridDBColumn
        Caption = 'ID Employee'
        DataBinding.FieldName = 'employeeid'
      end
      object cxGrid1DBTableView1type: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
      end
      object cxGrid1DBTableView1unitmeasure: TcxGridDBColumn
        Caption = 'Satuan Unit'
        DataBinding.FieldName = 'unitmeasure'
      end
      object cxGrid1DBTableView1register: TcxGridDBColumn
        Caption = 'Register'
        DataBinding.FieldName = 'register'
      end
      object cxGrid1DBTableView1minstockqty: TcxGridDBColumn
        Caption = 'Jumlah Min Stock'
        DataBinding.FieldName = 'minstockqty'
        Width = 86
      end
      object cxGrid1DBTableView1maxstockqty: TcxGridDBColumn
        Caption = 'Jumlah Max Stock'
        DataBinding.FieldName = 'maxstockqty'
        Width = 82
      end
      object cxGrid1DBTableView1reorderqty: TcxGridDBColumn
        Caption = 'Jumlah Reorder'
        DataBinding.FieldName = 'reorderqty'
        Width = 89
      end
      object cxGrid1DBTableView1margin: TcxGridDBColumn
        Caption = 'Margin'
        DataBinding.FieldName = 'margin'
        Width = 44
      end
      object cxGrid1DBTableView1minsaleprice: TcxGridDBColumn
        Caption = 'Harga Min Sale'
        DataBinding.FieldName = 'minsaleprice'
      end
      object cxGrid1DBTableView1pricelist: TcxGridDBColumn
        Caption = 'List Harga'
        DataBinding.FieldName = 'pricelist'
      end
      object cxGrid1DBTableView1lastpi: TcxGridDBColumn
        Caption = 'Data Pembelian Terakhir'
        DataBinding.FieldName = 'lastpi'
        Width = 136
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo'
      end
      object cxGrid1DBTableView1statussource: TcxGridDBColumn
        Caption = 'Status Source'
        DataBinding.FieldName = 'statussource'
        Width = 82
      end
      object cxGrid1DBTableView1statusitem: TcxGridDBColumn
        Caption = 'Status Barang'
        DataBinding.FieldName = 'statusitem'
        Width = 87
      end
      object cxGrid1DBTableView1statuscostmethod: TcxGridDBColumn
        Caption = 'Status Cost Method'
        DataBinding.FieldName = 'statuscostmethod'
      end
      object cxGrid1DBTableView1flagprintbarcode: TcxGridDBColumn
        DataBinding.FieldName = 'flagprintbarcode'
        Width = 95
      end
      object cxGrid1DBTableView1flagprintprice: TcxGridDBColumn
        DataBinding.FieldName = 'flagprintprice'
      end
      object cxGrid1DBTableView1flaginactive: TcxGridDBColumn
        DataBinding.FieldName = 'flaginactive'
      end
      object cxGrid1DBTableView1flagterdaftar: TcxGridDBColumn
        DataBinding.FieldName = 'flagterdaftar'
      end
      object cxGrid1DBTableView1flagbahasaindonesia: TcxGridDBColumn
        DataBinding.FieldName = 'flagbahasaindonesia'
      end
      object cxGrid1DBTableView1flagcouple: TcxGridDBColumn
        DataBinding.FieldName = 'flagcouple'
      end
      object cxGrid1DBTableView1flagpurchasereturn: TcxGridDBColumn
        DataBinding.FieldName = 'flagpurchasereturn'
      end
      object cxGrid1DBTableView1flagsalesreturn: TcxGridDBColumn
        DataBinding.FieldName = 'flagsalesreturn'
      end
      object cxGrid1DBTableView1flagprocessopname: TcxGridDBColumn
        DataBinding.FieldName = 'flagprocessopname'
      end
      object cxGrid1DBTableView1itemid_1: TcxGridDBColumn
        DataBinding.FieldName = 'itemid_1'
      end
      object cxGrid1DBTableView1employeeid_1: TcxGridDBColumn
        DataBinding.FieldName = 'employeeid_1'
      end
      object cxGrid1DBTableView1price1: TcxGridDBColumn
        Caption = 'Harga1'
        DataBinding.FieldName = 'price1'
      end
      object cxGrid1DBTableView1price2: TcxGridDBColumn
        Caption = 'Harga2'
        DataBinding.FieldName = 'price2'
      end
      object cxGrid1DBTableView1price3: TcxGridDBColumn
        Caption = 'Harga3'
        DataBinding.FieldName = 'price3'
      end
      object cxGrid1DBTableView1price4: TcxGridDBColumn
        Caption = 'Harga4'
        DataBinding.FieldName = 'price4'
      end
      object cxGrid1DBTableView1price5: TcxGridDBColumn
        Caption = 'Harga5'
        DataBinding.FieldName = 'price5'
      end
      object cxGrid1DBTableView1qty1: TcxGridDBColumn
        Caption = 'Jumlah1'
        DataBinding.FieldName = 'qty1'
      end
      object cxGrid1DBTableView1qty2: TcxGridDBColumn
        Caption = 'Jumlah2'
        DataBinding.FieldName = 'qty2'
      end
      object cxGrid1DBTableView1qty3: TcxGridDBColumn
        Caption = 'Jumlah3'
        DataBinding.FieldName = 'qty3'
      end
      object cxGrid1DBTableView1qty4: TcxGridDBColumn
        Caption = 'Jumlah4'
        DataBinding.FieldName = 'qty4'
      end
      object cxGrid1DBTableView1qty5: TcxGridDBColumn
        Caption = 'Jumlah5'
        DataBinding.FieldName = 'qty5'
      end
      object cxGrid1DBTableView1minqty1: TcxGridDBColumn
        Caption = 'Jumlah Min1'
        DataBinding.FieldName = 'minqty1'
      end
      object cxGrid1DBTableView1minqty2: TcxGridDBColumn
        Caption = 'Jumlah Min2'
        DataBinding.FieldName = 'minqty2'
      end
      object cxGrid1DBTableView1minqty3: TcxGridDBColumn
        Caption = 'Jumlah Min3'
        DataBinding.FieldName = 'minqty3'
      end
      object cxGrid1DBTableView1minqty4: TcxGridDBColumn
        Caption = 'Jumlah Min4'
        DataBinding.FieldName = 'minqty4'
      end
      object cxGrid1DBTableView1minqty5: TcxGridDBColumn
        Caption = 'Jumlah Min5'
        DataBinding.FieldName = 'minqty5'
      end
      object cxGrid1DBTableView1unitmeasure1: TcxGridDBColumn
        Caption = 'Satuan Unit1'
        DataBinding.FieldName = 'unitmeasure1'
      end
      object cxGrid1DBTableView1unitmeasure2: TcxGridDBColumn
        Caption = 'Satuan Unit2'
        DataBinding.FieldName = 'unitmeasure2'
      end
      object cxGrid1DBTableView1unitmeasure3: TcxGridDBColumn
        Caption = 'Satuan Unit3'
        DataBinding.FieldName = 'unitmeasure3'
      end
      object cxGrid1DBTableView1unitmeasure4: TcxGridDBColumn
        Caption = 'Satuan Unit4'
        DataBinding.FieldName = 'unitmeasure4'
      end
      object cxGrid1DBTableView1unitmeasure5: TcxGridDBColumn
        Caption = 'Satuan Unit5'
        DataBinding.FieldName = 'unitmeasure5'
      end
      object cxGrid1DBTableView1lastmodified: TcxGridDBColumn
        Caption = 'Last Modified'
        DataBinding.FieldName = 'lastmodified'
      end
      object cxGrid1DBTableView1newprice1: TcxGridDBColumn
        Caption = 'Harga Baru1'
        DataBinding.FieldName = 'newprice1'
      end
      object cxGrid1DBTableView1newprice2: TcxGridDBColumn
        Caption = 'Harga Baru2'
        DataBinding.FieldName = 'newprice2'
      end
      object cxGrid1DBTableView1newprice3: TcxGridDBColumn
        Caption = 'Harga Baru3'
        DataBinding.FieldName = 'newprice3'
      end
      object cxGrid1DBTableView1newprice4: TcxGridDBColumn
        Caption = 'Harga Baru4'
        DataBinding.FieldName = 'newprice4'
      end
      object cxGrid1DBTableView1newprice5: TcxGridDBColumn
        Caption = 'Harga Baru5'
        DataBinding.FieldName = 'newprice5'
      end
      object cxGrid1DBTableView1effectivedate: TcxGridDBColumn
        Caption = 'Tanggal Efektif'
        DataBinding.FieldName = 'effectivedate'
      end
      object cxGrid1DBTableView1approvedate: TcxGridDBColumn
        Caption = 'Tanggal Persetujuan'
        DataBinding.FieldName = 'approvedate'
      end
      object cxGrid1DBTableView1flagupdown1: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown1'
      end
      object cxGrid1DBTableView1flagupdown2: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown2'
      end
      object cxGrid1DBTableView1flagupdown3: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown3'
      end
      object cxGrid1DBTableView1flagupdown4: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown4'
      end
      object cxGrid1DBTableView1flagupdown5: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown5'
      end
      object cxGrid1DBTableView1statusapprove: TcxGridDBColumn
        Caption = 'Status Persetujuan'
        DataBinding.FieldName = 'statusapprove'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 600
    Top = 408
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 632
    Top = 408
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 664
    Top = 408
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 600
    Top = 440
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object UniQuery1: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from item a'
      'left join price b on a.itemid=b.itemid')
    Left = 536
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 568
    Top = 232
  end
end
