inherited fmDisplayItemPrice2: TfmDisplayItemPrice2
  Caption = 'Item Price 2'
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 1
    Top = 55
    Width = 588
    Height = 94
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 28
      Height = 13
      Caption = 'Kode:'
    end
    object Label2: TLabel
      Left = 8
      Top = 21
      Width = 31
      Height = 13
      Caption = 'Nama:'
    end
    object Label3: TLabel
      Left = 8
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Barcode:'
    end
    object Label4: TLabel
      Left = 8
      Top = 59
      Width = 44
      Height = 13
      Caption = 'Kategori:'
    end
    object dbeItemName: TcxTextEdit
      Left = 65
      Top = 18
      TabOrder = 0
      OnKeyDown = dbeItemIdKeyDown
      Width = 121
    end
    object dbeBarcodeId: TcxTextEdit
      Left = 65
      Top = 36
      TabOrder = 1
      OnKeyDown = dbeItemIdKeyDown
      Width = 121
    end
    object dbeKategori: TcxExtLookupComboBox
      Left = 65
      Top = 54
      Properties.View = cgvItemCategory
      Properties.KeyFieldNames = 'itemcategoryid'
      Properties.ListFieldItem = cgvItemCategoryitemcategoryname
      TabOrder = 2
      OnKeyDown = dbeItemIdKeyDown
      Width = 121
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 155
    Width = 588
    Height = 200
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1itemid: TcxGridDBColumn
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cxGrid1DBTableView1itemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cxGrid1DBTableView1itemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cxGrid1DBTableView1itemnamechinese: TcxGridDBColumn
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
      object cxGrid1DBTableView1barcodeid: TcxGridDBColumn
        DataBinding.FieldName = 'barcodeid'
        Visible = False
      end
      object cxGrid1DBTableView1barcodename: TcxGridDBColumn
        DataBinding.FieldName = 'barcodename'
        Visible = False
      end
      object cxGrid1DBTableView1itemcategoryid: TcxGridDBColumn
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvItemCategory
        Properties.KeyFieldNames = 'itemcategoryid'
        Properties.ListFieldItem = cgvItemCategoryitemcategoryname
      end
      object cxGrid1DBTableView1employeeid: TcxGridDBColumn
        DataBinding.FieldName = 'employeeid'
        Visible = False
      end
      object cxGrid1DBTableView1type: TcxGridDBColumn
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure'
        Visible = False
      end
      object cxGrid1DBTableView1register: TcxGridDBColumn
        DataBinding.FieldName = 'register'
        Visible = False
      end
      object cxGrid1DBTableView1minstockqty: TcxGridDBColumn
        DataBinding.FieldName = 'minstockqty'
        Visible = False
      end
      object cxGrid1DBTableView1maxstockqty: TcxGridDBColumn
        DataBinding.FieldName = 'maxstockqty'
        Visible = False
      end
      object cxGrid1DBTableView1reorderqty: TcxGridDBColumn
        DataBinding.FieldName = 'reorderqty'
        Visible = False
      end
      object cxGrid1DBTableView1margin: TcxGridDBColumn
        DataBinding.FieldName = 'margin'
        Visible = False
      end
      object cxGrid1DBTableView1minsaleprice: TcxGridDBColumn
        DataBinding.FieldName = 'minsaleprice'
        Visible = False
      end
      object cxGrid1DBTableView1pricelist: TcxGridDBColumn
        DataBinding.FieldName = 'pricelist'
        Visible = False
      end
      object cxGrid1DBTableView1lastpi: TcxGridDBColumn
        DataBinding.FieldName = 'lastpi'
        Visible = False
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
        Visible = False
      end
      object cxGrid1DBTableView1statussource: TcxGridDBColumn
        DataBinding.FieldName = 'statussource'
        Visible = False
      end
      object cxGrid1DBTableView1statusitem: TcxGridDBColumn
        DataBinding.FieldName = 'statusitem'
        Visible = False
      end
      object cxGrid1DBTableView1statuscostmethod: TcxGridDBColumn
        DataBinding.FieldName = 'statuscostmethod'
        Visible = False
      end
      object cxGrid1DBTableView1flagprintbarcode: TcxGridDBColumn
        DataBinding.FieldName = 'flagprintbarcode'
        Visible = False
      end
      object cxGrid1DBTableView1flagprintprice: TcxGridDBColumn
        DataBinding.FieldName = 'flagprintprice'
        Visible = False
      end
      object cxGrid1DBTableView1flaginactive: TcxGridDBColumn
        DataBinding.FieldName = 'flaginactive'
        Visible = False
      end
      object cxGrid1DBTableView1flagterdaftar: TcxGridDBColumn
        DataBinding.FieldName = 'flagterdaftar'
        Visible = False
      end
      object cxGrid1DBTableView1flagbahasaindonesia: TcxGridDBColumn
        DataBinding.FieldName = 'flagbahasaindonesia'
        Visible = False
      end
      object cxGrid1DBTableView1flagcouple: TcxGridDBColumn
        DataBinding.FieldName = 'flagcouple'
        Visible = False
      end
      object cxGrid1DBTableView1flagpurchasereturn: TcxGridDBColumn
        DataBinding.FieldName = 'flagpurchasereturn'
        Visible = False
      end
      object cxGrid1DBTableView1flagsalesreturn: TcxGridDBColumn
        DataBinding.FieldName = 'flagsalesreturn'
        Visible = False
      end
      object cxGrid1DBTableView1flagprocessopname: TcxGridDBColumn
        DataBinding.FieldName = 'flagprocessopname'
        Visible = False
      end
      object cxGrid1DBTableView1itemid_1: TcxGridDBColumn
        DataBinding.FieldName = 'itemid_1'
        Visible = False
      end
      object cxGrid1DBTableView1employeeid_1: TcxGridDBColumn
        DataBinding.FieldName = 'employeeid_1'
        Visible = False
      end
      object cxGrid1DBTableView1price1: TcxGridDBColumn
        Caption = 'Harga 1'
        DataBinding.FieldName = 'price1'
      end
      object cxGrid1DBTableView1price2: TcxGridDBColumn
        Caption = 'Harga 2'
        DataBinding.FieldName = 'price2'
      end
      object cxGrid1DBTableView1price3: TcxGridDBColumn
        Caption = 'Harga 3'
        DataBinding.FieldName = 'price3'
      end
      object cxGrid1DBTableView1price4: TcxGridDBColumn
        Caption = 'Harga 4'
        DataBinding.FieldName = 'price4'
      end
      object cxGrid1DBTableView1price5: TcxGridDBColumn
        Caption = 'Harga 5'
        DataBinding.FieldName = 'price5'
      end
      object cxGrid1DBTableView1qty1: TcxGridDBColumn
        DataBinding.FieldName = 'qty1'
        Visible = False
      end
      object cxGrid1DBTableView1qty2: TcxGridDBColumn
        DataBinding.FieldName = 'qty2'
        Visible = False
      end
      object cxGrid1DBTableView1qty3: TcxGridDBColumn
        DataBinding.FieldName = 'qty3'
        Visible = False
      end
      object cxGrid1DBTableView1qty4: TcxGridDBColumn
        DataBinding.FieldName = 'qty4'
        Visible = False
      end
      object cxGrid1DBTableView1qty5: TcxGridDBColumn
        DataBinding.FieldName = 'qty5'
        Visible = False
      end
      object cxGrid1DBTableView1minqty1: TcxGridDBColumn
        DataBinding.FieldName = 'minqty1'
        Visible = False
      end
      object cxGrid1DBTableView1minqty2: TcxGridDBColumn
        DataBinding.FieldName = 'minqty2'
        Visible = False
      end
      object cxGrid1DBTableView1minqty3: TcxGridDBColumn
        DataBinding.FieldName = 'minqty3'
        Visible = False
      end
      object cxGrid1DBTableView1minqty4: TcxGridDBColumn
        DataBinding.FieldName = 'minqty4'
        Visible = False
      end
      object cxGrid1DBTableView1minqty5: TcxGridDBColumn
        DataBinding.FieldName = 'minqty5'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure1: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure1'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure2: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure2'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure3: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure3'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure4: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure4'
        Visible = False
      end
      object cxGrid1DBTableView1unitmeasure5: TcxGridDBColumn
        DataBinding.FieldName = 'unitmeasure5'
        Visible = False
      end
      object cxGrid1DBTableView1lastmodified: TcxGridDBColumn
        DataBinding.FieldName = 'lastmodified'
        Visible = False
      end
      object cxGrid1DBTableView1newprice1: TcxGridDBColumn
        DataBinding.FieldName = 'newprice1'
        Visible = False
      end
      object cxGrid1DBTableView1newprice2: TcxGridDBColumn
        DataBinding.FieldName = 'newprice2'
        Visible = False
      end
      object cxGrid1DBTableView1newprice3: TcxGridDBColumn
        DataBinding.FieldName = 'newprice3'
        Visible = False
      end
      object cxGrid1DBTableView1newprice4: TcxGridDBColumn
        DataBinding.FieldName = 'newprice4'
        Visible = False
      end
      object cxGrid1DBTableView1newprice5: TcxGridDBColumn
        DataBinding.FieldName = 'newprice5'
        Visible = False
      end
      object cxGrid1DBTableView1effectivedate: TcxGridDBColumn
        DataBinding.FieldName = 'effectivedate'
        Visible = False
      end
      object cxGrid1DBTableView1approvedate: TcxGridDBColumn
        DataBinding.FieldName = 'approvedate'
        Visible = False
      end
      object cxGrid1DBTableView1flagupdown1: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown1'
        Visible = False
      end
      object cxGrid1DBTableView1flagupdown2: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown2'
        Visible = False
      end
      object cxGrid1DBTableView1flagupdown3: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown3'
        Visible = False
      end
      object cxGrid1DBTableView1flagupdown4: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown4'
        Visible = False
      end
      object cxGrid1DBTableView1flagupdown5: TcxGridDBColumn
        DataBinding.FieldName = 'flagupdown5'
        Visible = False
      end
      object cxGrid1DBTableView1statusapprove: TcxGridDBColumn
        DataBinding.FieldName = 'statusapprove'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dbeItemId: TcxTextEdit [3]
    Left = 66
    Top = 55
    TabOrder = 3
    OnKeyDown = dbeItemIdKeyDown
    Width = 121
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryPrevItem: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'Select * '
      'from item a '
      'left join price b on a.itemid=b.itemid '
      'where a.itemname like :itemname'
      'and a.itemidexternal like :itemidexternal'
      'and (a.barcodeid like :barcodeid or a.barcodeid is null)'
      'and a.itemcategoryid like :category')
    Left = 352
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'itemname'
        Value = #39'SISIR%'#39
      end
      item
        DataType = ftString
        Name = 'itemidexternal'
      end
      item
        DataType = ftString
        Name = 'barcodeid'
      end
      item
        DataType = ftString
        Name = 'category'
      end>
  end
  object dsPrevItem: TDataSource
    DataSet = qryPrevItem
    Left = 392
    Top = 216
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 448
    Top = 104
    object cgvItemCategory: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmInventory.dsPrevItemCategory
      DataController.KeyFieldNames = 'itemcategoryid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvItemCategoryitemcategoryid: TcxGridDBColumn
        DataBinding.FieldName = 'itemcategoryid'
      end
      object cgvItemCategoryitemcategoryname: TcxGridDBColumn
        DataBinding.FieldName = 'itemcategoryname'
      end
    end
  end
end
