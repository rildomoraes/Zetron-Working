object dmInventory: TdmInventory
  OldCreateOrder = False
  Height = 499
  Width = 909
  object dsItemCategory: TDataSource
    DataSet = qryItemCategory
    Left = 168
    Top = 344
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 400
    Top = 56
  end
  object gvrInventory: TcxGridViewRepository
    Left = 48
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
      DataController.DataSource = dsItemCategory
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
      DataController.DataSource = dsItem
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cgvPrevItemItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemFlagInactive: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'FlagInactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            ImageIndex = 6
            Value = '0'
          end
          item
            ImageIndex = 8
            Value = '1'
          end>
        Width = 30
      end
      object cgvPrevItemItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
        Width = 150
      end
      object cgvPrevItemItemName: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ItemName'
        Width = 300
      end
      object cgvPrevItemUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
        Width = 80
      end
      object cgvPrevItemTypeName: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Visible = False
        VisibleForCustomization = False
        Width = 100
      end
      object cgvPrevItemItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = cgvPrevItemCategoryItemCategoryName
        Visible = False
        VisibleForCustomization = False
        Width = 100
      end
      object cgvPrevItemMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = cgvPrevMaterialMaterialName
      end
      object cgvPrevItemStatusDimensi: TcxGridDBColumn
        Caption = 'Pengukuran'
        DataBinding.FieldName = 'StatusDimensi'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevStatusDimensi
        Properties.KeyFieldNames = 'StatusDimensi'
        Properties.ListFieldItem = cgvPrevStatusDimensiName
        Width = 60
      end
      object cgvPrevItemFlagTally: TcxGridDBColumn
        Caption = 'Tally'
        DataBinding.FieldName = 'FlagTally'
      end
    end
    object cgvPrevItemWithMeasure: TcxGridDBTableView
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
      DataController.DataSource = dsItem
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cgvPrevItemWithMeasureItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemWithMeasureFlagInactive: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'FlagInactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            ImageIndex = 6
            Value = '0'
          end
          item
            ImageIndex = 8
            Value = '1'
          end>
        Width = 30
      end
      object cgvPrevItemWithMeasureItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
        Width = 150
      end
      object cgvPrevItemWithMeasureItemName: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'ItemName'
        Width = 300
      end
      object cgvPrevItemWithMeasureUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
        Width = 80
      end
      object cgvPrevItemWithMeasureType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'Type'
        Visible = False
        VisibleForCustomization = False
        Width = 100
      end
      object cgvPrevItemWithMeasureItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = cgvPrevItemCategoryItemCategoryName
        Visible = False
        VisibleForCustomization = False
        Width = 100
      end
      object cgvPrevItemWithMeasureMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = cgvPrevMaterialMaterialName
      end
      object cgvPrevItemWithMeasureStatusDimensi: TcxGridDBColumn
        Caption = 'Pengukuran'
        DataBinding.FieldName = 'StatusDimensi'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevStatusDimensi
        Properties.KeyFieldNames = 'StatusDimensi'
        Properties.ListFieldItem = cgvPrevStatusDimensiName
        Width = 60
      end
      object cgvPrevItemWithMeasureT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevItemWithMeasureL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvPrevItemWithMeasureP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgvPrevItemPenolong: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemPenolong
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemPenolongItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemPenolongItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 80
      end
      object cgvPrevItemPenolongMaterialId: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Width = 80
      end
      object cgvPrevItemPenolongItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Width = 80
      end
      object cgvPrevItemPenolongItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemPenolongItemProperty1: TcxGridDBColumn
        Caption = 'Kondisi'
        DataBinding.FieldName = 'ItemProperty1'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'AD'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'KD'
            Value = '1'
          end>
        Width = 80
      end
      object cgvPrevItemPenolongBeratJenis: TcxGridDBColumn
        Caption = 'Berat Jenis'
        DataBinding.FieldName = 'BeratJenis'
        Visible = False
      end
      object cgvPrevItemPenolongUnitMeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
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
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
    object cgvPrevBarcode: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItem
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevBarcodeitemid: TcxGridDBColumn
        DataBinding.FieldName = 'itemid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevBarcodeitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        Visible = False
      end
      object cgvPrevBarcodebarcodeid: TcxGridDBColumn
        Caption = 'Barcode'
        DataBinding.FieldName = 'barcodeid'
      end
      object cgvPrevBarcodeitemname: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'itemname'
        Visible = False
      end
      object cgvPrevBarcodeitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
    end
    object cgvPrevVendor: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsVendor
      DataController.KeyFieldNames = 'VendorId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevVendorVendorId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'VendorId'
        Visible = False
        VisibleForCustomization = False
        Width = 80
      end
      object cgvPrevVendorVendorCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'VendorCode'
        Width = 80
      end
      object cgvPrevVendorVendorName: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'VendorName'
        Width = 150
      end
      object cgvPrevVendorAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'Address'
        Width = 150
      end
      object cgvPrevVendorCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
        Width = 100
      end
      object cgvPrevVendorCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'categoryid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'categoryid'
        Properties.ListColumns = <
          item
            FieldName = 'categoryname'
          end>
        Properties.ListSource = dsVendorCategory
      end
      object cgvPrevVendorDepositBalance: TcxGridDBColumn
        Caption = 'Deposit'
        DataBinding.FieldName = 'depositbalance'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
    end
    object cgvPrevCustomer: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsCustomer
      DataController.KeyFieldNames = 'CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCustomerCustomerId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'CustomerId'
        Visible = False
        VisibleForCustomization = False
        Width = 80
      end
      object cgvPrevCustomerCustomerCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'CustomerCode'
        Width = 80
      end
      object cgvPrevCustomerCustomerName: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'CustomerName'
        Width = 150
      end
      object cgvPrevCustomerAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'Address'
        Width = 150
      end
      object cgvPrevCustomerCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
        Width = 100
      end
      object cgvPrevCustomerCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'categoryid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'categoryid'
        Properties.ListColumns = <
          item
            FieldName = 'categoryname'
          end>
        Properties.ListSource = dsVendorCategory
      end
      object cgvPrevCustomerDepositBalance: TcxGridDBColumn
        Caption = 'Deposit'
        DataBinding.FieldName = 'depositbalance'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
    end
    object cgvPrevWarehouse: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsWarehouse
      DataController.KeyFieldNames = 'WarehouseId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevWarehouseflaginactive: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'flaginactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            ImageIndex = 6
            Value = '0'
          end
          item
            ImageIndex = 8
            Value = '1'
          end>
        Visible = False
        Width = 30
      end
      object cgvPrevWarehouseWarehouseId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'WarehouseId'
        Visible = False
        Width = 100
      end
      object cgvPrevWarehouseWarehouseName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'WarehouseName'
        Width = 150
      end
      object cgvPrevWarehouseCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
      object cgvPrevWarehouseContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'ContactPerson'
        Width = 150
      end
    end
    object cgvPrevShipping: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsShipping
      DataController.KeyFieldNames = 'ShippingId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevShippingShippingId: TcxGridDBColumn
        DataBinding.FieldName = 'ShippingId'
        Visible = False
      end
      object cgvPrevShippingShippingCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ShippingCode'
      end
      object cgvPrevShippingShippingName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ShippingName'
      end
      object cgvPrevShippingAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'address'
      end
      object cgvPrevShippingCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
      object cgvPrevShippingContactName: TcxGridDBColumn
        Caption = 'Contact'
        DataBinding.FieldName = 'ContactName'
      end
    end
    object cgvPrevVendorShipping: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.KeyFieldNames = 'ShippingId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevVendorShippingShippingName: TcxGridDBColumn
        Caption = 'Pengiriman'
        DataBinding.FieldName = 'ShippingName'
      end
      object cgvPrevVendorShippingContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'ContactPerson'
      end
      object cgvPrevVendorShippingAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'Address'
      end
      object cgvPrevVendorShippingCityName: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityName'
        Visible = False
      end
    end
    object cgvPrevCustomerShipping: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.KeyFieldNames = 'ShippingId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCustomerShippingShippingName: TcxGridDBColumn
        Caption = 'Pegiriman'
        DataBinding.FieldName = 'ShippingName'
      end
      object cgvPrevCustomerShippingContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'ContactPerson'
      end
      object cgvPrevCustomerShippingAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'Address'
      end
      object cgvPrevCustomerShippingCityName: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityName'
        Visible = False
      end
    end
    object cgvPrevPurchaseCategory: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.KeyFieldNames = 'purchasecategoryid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevPurchaseCategorypurchasecategoryid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'purchasecategoryid'
      end
      object cgvPrevPurchaseCategorypurchasecategoryname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'purchasecategoryname'
      end
      object cgvPrevPurchaseCategoryPrefix: TcxGridDBColumn
        Caption = ' Prefix'
        DataBinding.FieldName = 'prefix'
        Visible = False
      end
    end
    object cgvPrevMaterial: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMaterial
      DataController.KeyFieldNames = 'MaterialId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevMaterialMaterialId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'MaterialId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevMaterialMaterialCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'MaterialCode'
        Visible = False
      end
      object cgvPrevMaterialMaterialName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'MaterialName'
      end
    end
    object cgvPrevRoughSize: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevRoughSizeRoughSizeId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'RoughSizeId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevRoughSizeRoughSizeName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'RoughSizeName'
      end
      object cgvPrevRoughSizeMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = cgvPrevMaterialMaterialName
      end
    end
    object cgvPrevVendorCategory: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsVendorCategory
      DataController.KeyFieldNames = 'VendorCategoryId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevVendorCategoryVendorCategoryId: TcxGridDBColumn
        DataBinding.FieldName = 'VendorCategoryId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevVendorCategoryCategoryName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'CategoryName'
      end
    end
    object cgvPrevCustomerCategory: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCustomerCategory
      DataController.KeyFieldNames = 'CustomerCategoryId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCustomerCategoryCustomerCategoryId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerCategoryId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevCustomerCategoryCategoryName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'CategoryName'
      end
    end
    object cgvPrevStatusProduction: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevStatusProduction
      DataController.KeyFieldNames = 'StatusProduction'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevStatusProductionStatusProduction: TcxGridDBColumn
        DataBinding.FieldName = 'StatusProduction'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevStatusProductionName: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'Name'
      end
    end
    object cgvPrevItemBOM: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemBOM
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemBOMItemId: TcxGridDBColumn
        Caption = 'Barang'
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemBOMItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
      end
      object cgvPrevItemBOMItemName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'ItemName'
      end
      object cgvPrevItemBOMUnitMasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasure'
      end
      object cgvPrevItemBOMBillMaterialNumber: TcxGridDBColumn
        Caption = 'BOM'
        DataBinding.FieldName = 'BillMaterialNumber'
      end
      object cgvPrevItemBOMDrawNo: TcxGridDBColumn
        Caption = 'Draw No'
        DataBinding.FieldName = 'DrawNo'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemBOMBillMaterialDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'BillMaterialDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cgvPrevTallyman: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTallyman
      DataController.KeyFieldNames = 'TallymanId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevTallymanTallymanCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'TallymanCode'
      end
      object cgvPrevTallymanTallymanName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'TallymanName'
      end
    end
    object cgvPrevGrader: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGrader
      DataController.KeyFieldNames = 'GraderId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGraderGraderCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'GraderCode'
      end
      object cgvPrevGraderGraderName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'GraderName'
      end
    end
    object cgvPrevKoorGrader: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsKoorGrader
      DataController.KeyFieldNames = 'KoorGraderId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevKoorGraderKoorGraderCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'KoorGraderCode'
      end
      object cgvPrevKoorGraderKoorGraderName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'KoorGraderName'
      end
    end
    object cgvPrevStatusDimensi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevStatusDimensi
      DataController.KeyFieldNames = 'StatusDimensi'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevStatusDimensiStatusDimensi: TcxGridDBColumn
        DataBinding.FieldName = 'StatusDimensi'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevStatusDimensiName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        Width = 80
      end
      object cgvPrevStatusDimensiDescription: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'Description'
        Width = 80
      end
    end
    object cgvPrevOutlet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsOutlet
      DataController.KeyFieldNames = 'OutletId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevOutletOutletId: TcxGridDBColumn
        DataBinding.FieldName = 'OutletId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevOutletOutletCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'OutletCode'
      end
      object cgvPrevOutletOutletName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'OutletName'
      end
      object cgvPrevOutletCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
    end
    object cgvPrevProject: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsProject
      DataController.KeyFieldNames = 'ProjectId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevProjectProjectId: TcxGridDBColumn
        DataBinding.FieldName = 'ProjectId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevProjectProjectCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ProjectCode'
      end
      object cgvPrevProjectProjectName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ProjectName'
      end
      object cgvPrevProjectDateStart: TcxGridDBColumn
        Caption = 'Tgl Awal'
        DataBinding.FieldName = 'DateStart'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevProjectDateEnd: TcxGridDBColumn
        Caption = 'Tgl Akhir'
        DataBinding.FieldName = 'DateEnd'
        PropertiesClassName = 'TcxDateEditProperties'
      end
    end
  end
  object dsPrevTransactionType: TDataSource
    DataSet = qryPrevTransactionType
    Left = 544
    Top = 408
  end
  object dsPrevOutstandingPI: TDataSource
    DataSet = qryPrevOutstandingPI
    Left = 808
    Top = 312
  end
  object dsPrevOutstandingSI: TDataSource
    DataSet = qryPrevOutstandingSI
    Left = 808
    Top = 408
  end
  object dsPrevItemCouple: TDataSource
    DataSet = qryPrevItemCouple
    Left = 544
    Top = 312
  end
  object dsPrevItemCoupleDt: TDataSource
    DataSet = qryPrevItemCoupleDt
    Left = 544
    Top = 360
  end
  object dsPrevOutstandingPR: TDataSource
    DataSet = qryPrevOutstandingPR
    Left = 808
    Top = 360
  end
  object dsPrevOutstandingSR: TDataSource
    DataSet = qryPrevOutstandingSR
    Left = 808
    Top = 456
  end
  object dsWarehouse: TDataSource
    DataSet = qryWarehouse
    Left = 168
    Top = 296
  end
  object dsVendorCategory: TDataSource
    DataSet = qryVendorCategory
    Left = 168
    Top = 56
  end
  object dsVendor: TDataSource
    DataSet = qryVendor
    Left = 168
    Top = 104
  end
  object dsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 168
    Top = 200
  end
  object dsShipping: TDataSource
    DataSet = qryShipping
    Left = 168
    Top = 248
  end
  object qryPrevTransactionType: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select *,'
      '  (case StatusTransaction '
      '    when '#39'0'#39' then '#39'In'#39
      '    when '#39'1'#39' then '#39'Out'#39
      '    else '#39'Transfer'#39
      '  end) as StatusTransactionName'
      'from TransactionType'
      'where FlagFix like :FlagFix')
    Left = 424
    Top = 408
  end
  object qryPrevOutstandingPI: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
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
    Left = 688
    Top = 312
  end
  object qryPrevOutstandingSI: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
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
    Left = 688
    Top = 408
  end
  object qryPrevItemCouple: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforeOpen = qryPrevItemCoupleBeforeOpen
    BeforeRefresh = qryPrevItemCoupleBeforeOpen
    Parameters = <>
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
    Left = 424
    Top = 312
  end
  object qryPrevItemCoupleDt: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforeOpen = qryPrevItemCoupleDtBeforeOpen
    BeforeRefresh = qryPrevItemCoupleDtBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where FlagCouple <> '#39'1'#39
      'and FlagInactive like :FlagInactive'
      'order by ItemIdExternal')
    Left = 424
    Top = 360
  end
  object qryPrevOutstandingPR: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
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
    Left = 688
    Top = 360
  end
  object qryPrevOutstandingSR: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
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
    Left = 688
    Top = 456
  end
  object qryGetItemName: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ItemName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end>
    SQL.Strings = (
      'select ItemName '
      'from item'
      'where ItemName = :ItemName')
    Left = 688
    Top = 264
  end
  object qryGetBarcodeId: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'BarcodeId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end>
    SQL.Strings = (
      'select BarcodeId'
      'from item'
      'where BarcodeId = :BarcodeId')
    Left = 808
    Top = 264
  end
  object qryItemCategory: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemCategory')
    Left = 48
    Top = 344
  end
  object qryItem: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorLocation = clUseServer
    BeforeOpen = qryItemBeforeOpen
    BeforePost = qryItemBeforePost
    BeforeRefresh = qryItemBeforeRefresh
    OnNewRecord = qryItemNewRecord
    Parameters = <
      item
        Name = 'FlagInactive'
        DataType = ftString
        Size = 1
        Value = '%'
      end>
    SQL.Strings = (
      'select *'
      'from Item'
      'where FlagInactive Like :FlagInactive')
    Left = 280
    Top = 56
  end
  object qryWarehouse: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Warehouse')
    Left = 48
    Top = 296
  end
  object qryVendorCategory: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from VendorCategory'
      'order by CategoryName')
    Left = 48
    Top = 56
  end
  object qryVendor: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryVendorBeforeOpen
    OnNewRecord = qryVendorNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Vendor')
    Left = 48
    Top = 104
  end
  object qryCustomer: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryCustomerBeforeOpen
    OnNewRecord = qryCustomerNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Customer')
    Left = 48
    Top = 200
  end
  object qryShipping: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryShippingBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select * from Shipping')
    Left = 48
    Top = 248
  end
  object qryMaterial: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Material')
    Left = 48
    Top = 392
  end
  object dsMaterial: TDataSource
    DataSet = qryMaterial
    Left = 168
    Top = 392
  end
  object qryCustomerCategory: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from CustomerCategory'
      'order by CategoryName')
    Left = 48
    Top = 152
  end
  object dsCustomerCategory: TDataSource
    DataSet = qryCustomerCategory
    Left = 168
    Top = 152
  end
  object dsPrevStatusProduction: TDataSource
    DataSet = qryPrevStatusProduction
    Left = 656
    Top = 104
  end
  object qryPrevStatusProduction: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '#39'0'#39' as StatusProduction, '#39'Bahan Baku'#39' as Name'
      'union all'
      'select '#39'1'#39' as StatusProduction, '#39'Bahan Penolong'#39' as Name'
      'union all'
      'select '#39'2'#39' as StatusProduction, '#39'Barang Setengah Jadi'#39' as Name'
      'union all'
      'select '#39'3'#39' as StatusProduction, '#39'Barang Jadi'#39' as Name')
    Left = 528
    Top = 104
  end
  object qryPrevItemPenolong: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where StatusProduction = '#39'1'#39' -- Bahan Penolong')
    Left = 528
    Top = 152
  end
  object dsPrevItemPenolong: TDataSource
    DataSet = qryPrevItemPenolong
    Left = 656
    Top = 152
  end
  object qryPrevItemBOM: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  b.ItemCode, b.ItemName, b.UnitMeasure,'
      '  a.*'
      'from BillMaterialHd a'
      'left join Item b on a.ItemId = b.ItemId')
    Left = 528
    Top = 200
  end
  object dsPrevItemBOM: TDataSource
    DataSet = qryPrevItemBOM
    Left = 656
    Top = 200
  end
  object dsGrader: TDataSource
    DataSet = qryGrader
    Left = 400
    Top = 200
  end
  object qryGrader: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Grader'
      '')
    Left = 280
    Top = 200
  end
  object qryTallyman: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from TallyMan'
      '')
    Left = 280
    Top = 104
  end
  object dsTallyman: TDataSource
    DataSet = qryTallyman
    Left = 400
    Top = 104
  end
  object dsKoorGrader: TDataSource
    DataSet = qryKoorGrader
    Left = 400
    Top = 152
  end
  object qryKoorGrader: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from KoorGrader'
      '')
    Left = 280
    Top = 152
  end
  object qryPrevStatusDimensi: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select '#39'0'#39' as StatusDimensi, '#39'Pcs'#39' as Name, '#39'Per Barang'#39' as Desc' +
        'ription'
      'union all'
      'select '#39'1'#39' as StatusDimensi, '#39'M2'#39' as Name, '#39'Luas'#39' as Description'
      'union all'
      
        'select '#39'2'#39' as StatusDimensi, '#39'M3'#39' as Name, '#39'Volume'#39' as Descripti' +
        'on'
      'union all'
      
        'select '#39'3'#39' as StatusDimensi, '#39'Berat'#39' as Name, '#39'Berat'#39' as Descrip' +
        'tion')
    Left = 528
    Top = 56
  end
  object dsPrevStatusDimensi: TDataSource
    DataSet = qryPrevStatusDimensi
    Left = 656
    Top = 56
  end
  object qryExecuteUpdatePrice: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'update Price'
      'set '
      '  Price1 = NewPrice1,'
      '  Price2 = NewPrice2,'
      '  Price3 = NewPrice3,'
      '  Price4 = NewPrice4,'
      '  Price5 = NewPrice5,'
      '  StatusApprove = '#39'0'#39
      'where StatusApprove = '#39'2'#39
      'and EffectiveDate <= cast(:tglberlaku as datewithouttime)'
      '')
    Left = 168
    Top = 8
  end
  object qryOutlet: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryOutletBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Outlet')
    Left = 280
    Top = 248
  end
  object dsOutlet: TDataSource
    DataSet = qryOutlet
    Left = 400
    Top = 248
  end
  object qryProject: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Project')
    Left = 280
    Top = 296
  end
  object dsProject: TDataSource
    DataSet = qryProject
    Left = 400
    Top = 296
  end
end
