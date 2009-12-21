object dmInventory: TdmInventory
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 490
  Width = 764
  object dsPrevItemCategory: TDataSource
    DataSet = qryItemCategory
    Left = 336
    Top = 56
  end
  object dsPrevItem: TDataSource
    DataSet = qryItem
    Left = 336
    Top = 104
  end
  object gvrInventory: TcxGridViewRepository
    Left = 192
    Top = 8
    object cgvPrevItemCategory: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Hint = 'Update'
      NavigatorButtons.SaveBookmark.ImageIndex = 0
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevItemCategory
      DataController.KeyFieldNames = 'ItemCategoryId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevItemCategoryItemCategoryId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCategoryId'
        Visible = False
      end
      object cgvPrevItemCategoryItemCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryName'
      end
    end
    object cgvPrevItem: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Hint = 'Update'
      NavigatorButtons.SaveBookmark.ImageIndex = 0
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevItem
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cgvPrevItemitemid: TcxGridDBColumn
        Caption = 'Kode Internal'
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cgvPrevItemflaginactive: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'flaginactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            Value = '0'
          end
          item
            ImageIndex = 8
            Value = '1'
          end>
        Width = 30
      end
      object cgvPrevItemItemIdExternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        Width = 150
      end
      object cgvPrevItemItemName: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ItemName'
        Width = 300
      end
      object cgvPrevItemitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Width = 150
      end
      object cgvPrevItemType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Width = 100
      end
      object cgvPrevItemItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = cgvPrevItemCategoryItemCategoryName
        Width = 100
      end
      object cgvPrevItemUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
        Visible = False
        Width = 80
      end
      object cgvPrevItemPriceList: TcxGridDBColumn
        Caption = 'Harga Standart'
        DataBinding.FieldName = 'pricelist'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevItemMemo: TcxGridDBColumn
        DataBinding.FieldName = 'Memo'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
      end
    end
    object cgvPrevItemCouple: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Hint = 'Update'
      NavigatorButtons.SaveBookmark.ImageIndex = 0
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevItemCouple
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cgvPrevItemCoupleItemId: TcxGridDBColumn
        Caption = 'Kode Internal'
        DataBinding.FieldName = 'ItemId'
        Visible = False
      end
      object cgvPrevItemCoupleitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cgvPrevItemCoupleItemName: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ItemName'
      end
      object cgvPrevItemCoupleItemCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryName'
        Visible = False
      end
      object cgvPrevItemCoupleUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
        Visible = False
        Width = 80
      end
      object cgvPrevItemCoupleType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Visible = False
      end
      object cgvPrevItemCoupleMemo: TcxGridDBColumn
        DataBinding.FieldName = 'Memo'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
      end
    end
    object cgvPrevItemCoupleDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      DataController.DataSource = dsPrevItemCoupleDt
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      object cgvPrevItemCoupleDtitemid: TcxGridDBColumn
        Caption = 'Kode Internal'
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cgvPrevItemCoupleDtflaginactive: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'flaginactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            Value = '0'
          end
          item
            ImageIndex = 8
            Value = '1'
          end>
        Width = 30
      end
      object cgvPrevItemCoupleDtItemIdExternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        Width = 150
      end
      object cgvPrevItemCoupleDtItemName: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ItemName'
        Width = 300
      end
      object cgvPrevItemCoupleDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Width = 150
      end
      object cgvPrevItemCoupleDtType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Visible = False
        Width = 100
      end
      object cgvPrevItemCoupleDtItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = cgvPrevItemCategoryItemCategoryName
        Visible = False
        Width = 100
      end
      object cgvPrevItemCoupleDtUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
        Visible = False
        Width = 80
      end
      object cgvPrevItemCoupleDtMemo: TcxGridDBColumn
        DataBinding.FieldName = 'Memo'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
      end
    end
    object cgvPrevTransactionType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Hint = 'Update'
      NavigatorButtons.SaveBookmark.ImageIndex = 0
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevTransactionType
      DataController.KeyFieldNames = 'TransactionTypeId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevTransactionTypeTransactionTypeId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'TransactionTypeId'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevTransactionTypeTransactionTypeName: TcxGridDBColumn
        Caption = 'Tipe Transaksi'
        DataBinding.FieldName = 'TransactionTypeName'
        Options.Filtering = False
      end
      object cgvPrevTransactionTypeStatusTransactionName: TcxGridDBColumn
        Caption = 'Proses'
        DataBinding.FieldName = 'StatusTransactionName'
        Options.Filtering = False
        Width = 100
      end
      object cgvPrevTransactionTypeStatusTransaction: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'StatusTransaction'
        Visible = False
      end
    end
    object cgvPrevOutstandingPI: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevOutstandingPI
      DataController.KeyFieldNames = 'PurchaseInvoiceId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutstandingPIpurchaseinvoiceid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'purchaseinvoiceid'
      end
      object cgvPrevOutstandingPIVendorPurchaseInvoiceId: TcxGridDBColumn
        Caption = 'Nota External'
        DataBinding.FieldName = 'VendorPurchaseInvoiceId'
      end
      object cgvPrevOutstandingPIpurchaseinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'purchaseinvoicedate'
      end
      object cgvPrevOutstandingPIInvoiceDueDate: TcxGridDBColumn
        Caption = 'Jatuh Tempo'
        DataBinding.FieldName = 'InvoiceDueDate'
      end
      object cgvPrevOutstandingPIcurrencyid: TcxGridDBColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'currencyid'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cgvPrevOutstandingPItotalamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevOutstandingPIoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvPrevOutstandingPR: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevOutstandingPR
      DataController.KeyFieldNames = 'purchasereturnid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutstandingPRpurchaseReturnid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'purchaseReturnid'
      end
      object cgvPrevOutstandingPRpurchaseReturndate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'purchaseReturndate'
      end
      object cgvPrevOutstandingPRInvoiceDueDate: TcxGridDBColumn
        Caption = 'Jatuh Tempo'
        DataBinding.FieldName = 'InvoiceDueDate'
      end
      object cgvPrevOutstandingPRcurrencyid: TcxGridDBColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'currencyid'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cgvPrevOutstandingPRtotalamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevOutstandingPRoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvPrevOutstandingSI: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevOutstandingSI
      DataController.KeyFieldNames = 'salesinvoiceid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutstandingSIsalesinvoiceid: TcxGridDBColumn
        Caption = 'No Faktur'
        DataBinding.FieldName = 'salesinvoiceid'
      end
      object cgvPrevOutstandingSISalesInvoiceIdInternal: TcxGridDBColumn
        Caption = 'Nota Internal'
        DataBinding.FieldName = 'salesinvoiceidinternal'
      end
      object cgvPrevOutstandingSIsalesinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'salesinvoicedate'
      end
      object cgvPrevOutstandingSIInvoiceDueDate: TcxGridDBColumn
        Caption = 'Jatuh Tempo'
        DataBinding.FieldName = 'InvoiceDueDate'
      end
      object cgvPrevOutstandingSIcurrencyid: TcxGridDBColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'currencyid'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cgvPrevOutstandingSItotalamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevOutstandingSIoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvPrevOutstandingSR: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevOutstandingSR
      DataController.KeyFieldNames = 'salesreturnid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutstandingSRsalesreturnid: TcxGridDBColumn
        Caption = 'No Faktur'
        DataBinding.FieldName = 'salesreturnid'
      end
      object cgvPrevOutstandingSRsalesreturndate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'salesreturndate'
      end
      object cgvPrevOutstandingSRInvoiceDueDate: TcxGridDBColumn
        Caption = 'Jatuh Tempo'
        DataBinding.FieldName = 'InvoiceDueDate'
      end
      object cgvPrevOutstandingSRcurrencyid: TcxGridDBColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'currencyid'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cgvPrevOutstandingSRtotalamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevOutstandingSRoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvPrevItemBarcode: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItem
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevItemBarcodeitemid: TcxGridDBColumn
        DataBinding.FieldName = 'itemid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemBarcodebarcodeid: TcxGridDBColumn
        Caption = 'Barcode'
        DataBinding.FieldName = 'barcodeid'
      end
      object cgvPrevItemBarcodeitemname: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'itemname'
      end
      object cgvPrevItemBarcodeitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
    end
    object cgvPrevJobType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevJobType
      DataController.KeyFieldNames = 'jobcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevJobTypejobcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'jobcode'
        Visible = False
      end
      object cgvPrevJobTypejobname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'jobname'
      end
    end
    object cgvPrevEngineGroup: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevEngineGroup
      DataController.KeyFieldNames = 'enginegroupcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevEngineGroupenginegroupcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'enginegroupcode'
      end
      object cgvPrevEngineGroupenginegroupname: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'enginegroupname'
      end
    end
    object cgvPrevEngineGroupJob: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevEngineGroupJob
      DataController.KeyFieldNames = 'enginegroupjobcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevEngineGroupJobenginegroupjobcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'enginegroupjobcode'
        Visible = False
      end
      object cgvPrevEngineGroupJobenginegroupcode: TcxGridDBColumn
        Caption = 'Group Mesin'
        DataBinding.FieldName = 'enginegroupcode'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevEngineGroup
        Properties.KeyFieldNames = 'enginegroupcode'
        Properties.ListFieldItem = cgvPrevEngineGroupenginegroupname
      end
      object cgvPrevEngineGroupJobjobcode: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'jobcode'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevJobType
        Properties.KeyFieldNames = 'jobcode'
        Properties.ListFieldItem = cgvPrevJobTypejobname
      end
    end
    object cgvPrevEngine: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevEngine
      DataController.KeyFieldNames = 'enginecode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevEngineenginecode: TcxGridDBColumn
        DataBinding.FieldName = 'enginecode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevEngineenginename: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'enginename'
      end
      object cgvPrevEngineenginegroupcode: TcxGridDBColumn
        DataBinding.FieldName = 'enginegroupcode'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cgvPrevShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevShift
      DataController.KeyFieldNames = 'shiftcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShiftshiftcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'shiftcode'
        Visible = False
      end
      object cgvPrevShiftshiftname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'shiftname'
      end
      object cgvPrevShiftstarttime: TcxGridDBColumn
        Caption = 'Jam Mulai'
        DataBinding.FieldName = 'starttime'
        PropertiesClassName = 'TcxTimeEditProperties'
        Visible = False
      end
      object cgvPrevShiftendtime: TcxGridDBColumn
        Caption = 'Jam Selesai'
        DataBinding.FieldName = 'endtime'
        PropertiesClassName = 'TcxTimeEditProperties'
        Visible = False
      end
    end
  end
  object dsPrevTransactionType: TDataSource
    DataSet = qryPrevTransactionType
    Left = 336
    Top = 248
  end
  object dsPrevOutstandingPI: TDataSource
    DataSet = qryPrevOutstandingPI
    Left = 624
    Top = 51
  end
  object dsPrevOutstandingSI: TDataSource
    DataSet = qryPrevOutstandingSI
    Left = 624
    Top = 147
  end
  object dsPrevItemCouple: TDataSource
    DataSet = qryPrevItemCouple
    Left = 336
    Top = 152
  end
  object dsPrevItemCoupleDt: TDataSource
    DataSet = qryPrevItemCoupleDt
    Left = 336
    Top = 200
  end
  object dsPrevOutstandingPR: TDataSource
    DataSet = qryPrevOutstandingPR
    Left = 624
    Top = 99
  end
  object dsPrevOutstandingSR: TDataSource
    DataSet = qryPrevOutstandingSR
    Left = 624
    Top = 195
  end
  object qryItemCategory: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from ItemCategory')
    Left = 192
    Top = 56
  end
  object qryPrevTransactionType: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *,'
      '  (case StatusTransaction '
      '    when '#39'0'#39' then '#39'In'#39
      '    when '#39'1'#39' then '#39'Out'#39
      '    else '#39'Transfer'#39
      '  end) as StatusTransactionName'
      'from TransactionType'
      'where FlagFix like :FlagFix')
    Left = 192
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagFix'
      end>
  end
  object qryPrevOutstandingPI: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.PurchaseInvoiceId, a.VendorPurchaseInvoiceId,'
      '  a.PurchaseInvoiceDate, a.TotalAmount,'
      '  a.OutstandingTotalAmount,'
      '  (a.PurchaseInvoiceDate + a.InvoiceDueDay) as InvoiceDueDate,'
      '  a.CurrencyId'
      'from PurchaseInvoiceHd a'
      'where a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove = '#39'1'#39
      'and a.VendorId like :VendorId'
      'or a.PurchaseInvoiceId in '
      '  (select PurchaseInvoiceId from PurchasePaymentDt'
      '  where PurchasePaymentId = :PurchasePaymentId)'
      'order by a.PurchaseInvoiceId')
    Left = 480
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'PurchasePaymentId'
      end>
  end
  object qryPrevOutstandingSI: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select'
      '  a.salesInvoiceId, a.SalesInvoiceIdInternal, '
      '  a.salesInvoiceDate, a.TotalAmount,'
      '  a.OutstandingTotalAmount,'
      '  (a.salesInvoiceDate + a.InvoiceDueDay) as InvoiceDueDate,'
      '  a.CurrencyId'
      'from salesInvoiceHd a'
      'where a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove = '#39'1'#39
      'and a.customerId like :customerId'
      'or a.salesInvoiceId in'
      '  (select salesInvoiceId from salesPaymentDt'
      '  where salesPaymentId = :salesPaymentId)'
      'order by a.SalesInvoiceId')
    Left = 480
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'customerId'
      end
      item
        DataType = ftUnknown
        Name = 'salesPaymentId'
      end>
  end
  object qryPrevItemCouple: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, '
      '  b.ItemCategoryName, '
      '  0 as inEndQty'
      'from Item a'
      'left join ItemCategory b on a.ItemCategoryId = b.ItemCategoryId'
      'where a.FlagInactive like :FlagInactive'
      'and a.FlagCouple = '#39'1'#39
      'order by a.ItemId')
    BeforeOpen = qryPrevItemCoupleBeforeOpen
    BeforeRefresh = qryPrevItemCoupleBeforeOpen
    Left = 192
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagInactive'
      end>
  end
  object qryPrevItemCoupleDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Item'
      'where FlagCouple <> '#39'1'#39
      'and FlagInactive like :FlagInactive'
      'order by ItemIdExternal')
    BeforeOpen = qryPrevItemCoupleDtBeforeOpen
    BeforeRefresh = qryPrevItemCoupleDtBeforeOpen
    Left = 192
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagInactive'
      end>
  end
  object qryPrevOutstandingPR: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.PurchaseReturnId, a.PurchaseReturnDate, a.TotalAmount,'
      '  a.OutstandingTotalAmount,'
      '  (a.PurchaseReturnDate + a.InvoiceDueDay) as InvoiceDueDate,'
      '  a.CurrencyId'
      'from PurchaseReturnHd a'
      'where a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove = '#39'1'#39
      'and a.VendorId like :VendorId'
      'or a.PurchaseReturnId in '
      '  (select PurchaseReturnId from PurchaseReturnPaymentDt'
      '  where PurchaseReturnPaymentId = :PurchaseReturnPaymentId)'
      'order by a.PurchaseReturnId')
    Left = 480
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'PurchaseReturnPaymentId'
      end>
  end
  object qryPrevOutstandingSR: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select'
      '  a.salesReturnId, a.salesReturnDate, a.TotalAmount,'
      '  a.OutstandingTotalAmount,'
      '  (a.SalesReturnDate + a.InvoiceDueDay) as InvoiceDueDate,'
      '  a.CurrencyId'
      'from SalesReturnHd a'
      'where a.OutstandingTotalAmount <> 0'
      'and a.StatusApprove = '#39'1'#39
      'and a.customerId like :customerId'
      'or a.SalesReturnId in'
      '  (select SalesReturnId from SalesReturnPaymentDt'
      '  where SalesReturnPaymentId = :SalesReturnPaymentId)'
      'order by a.SalesReturnId')
    Left = 480
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'customerId'
      end
      item
        DataType = ftUnknown
        Name = 'SalesReturnPaymentId'
      end>
  end
  object qryGetItemName: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select ItemName '
      'from Item'
      'where ItemName = :ItemName')
    Left = 56
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemName'
      end>
  end
  object qryGetBarcodeId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select BarcodeId'
      'from Item'
      'where BarcodeId = :BarcodeId')
    Left = 56
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BarcodeId'
      end>
  end
  object qryItem: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Item'
      'where FlagInactive Like :FlagInactive')
    MasterFields = 'ItemId'
    BeforeOpen = qryItemBeforeOpen
    BeforeEdit = qryItemBeforeEdit
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    AfterCancel = qryItemAfterCancel
    OnNewRecord = qryItemNewRecord
    BeforeRefresh = qryItemBeforeRefresh
    Left = 192
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlagInactive'
      end>
  end
  object qryExecuteUpdatePrice: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'update Price'
      'set '
      '  Price1 = NewPrice1,'
      '  Price2 = NewPrice2,'
      '  Price3 = NewPrice3,'
      '  Price4 = NewPrice4,'
      '  Price5 = NewPrice5,'
      '  Price6 = NewPrice6,'
      '  Price7 = NewPrice7,'
      '  StatusApprove = '#39'0'#39
      'where StatusApprove = '#39'2'#39
      'and EffectiveDate <= cast(:tglberlaku as datewithouttime)')
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglberlaku'
      end>
  end
  object qryGetLastItemId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select Last_Value'
      'from item_itemid_seq')
    Left = 56
    Top = 200
  end
  object qryUpdateLastItemId: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select setval('#39'public.item_itemid_seq'#39', :LastItemId, true)')
    Left = 56
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LastItemId'
      end>
  end
  object qryEngine: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Engine')
    MasterFields = 'enginecode'
    Left = 480
    Top = 392
  end
  object qryJobType: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from JobType')
    Left = 480
    Top = 344
  end
  object qryEngineGroupJob: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from EngineGroupJob')
    BeforeOpen = qryEngineGroupJobBeforeOpen
    Left = 480
    Top = 440
  end
  object dsPrevJobType: TDataSource
    DataSet = qryJobType
    Left = 624
    Top = 344
  end
  object qryEngineGroup: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from EngineGroup')
    MasterFields = 'enginegroup'
    Left = 480
    Top = 296
  end
  object dsPrevEngineGroup: TDataSource
    DataSet = qryEngineGroup
    Left = 624
    Top = 296
  end
  object dsPrevEngineGroupJob: TDataSource
    DataSet = qryEngineGroupJob
    Left = 624
    Top = 440
  end
  object dsPrevEngine: TDataSource
    DataSet = qryEngine
    Left = 624
    Top = 392
  end
  object qryGetItemInfo: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from Item'
      'where ItemId = :ItemId')
    Left = 56
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryShift: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Shift'
      'order by ShiftCode')
    Left = 192
    Top = 296
  end
  object dsPrevShift: TDataSource
    DataSet = qryShift
    Left = 336
    Top = 296
  end
end
