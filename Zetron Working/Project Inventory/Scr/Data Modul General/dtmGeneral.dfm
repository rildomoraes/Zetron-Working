object dmGeneral: TdmGeneral
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 499
  Width = 652
  object dsPrevVendor: TDataSource
    DataSet = qryVendor
    Left = 176
    Top = 104
  end
  object dsPrevCustomer: TDataSource
    DataSet = qryCustomer
    Left = 176
    Top = 152
  end
  object dsPrevWarehouse: TDataSource
    DataSet = qryWarehouse
    Left = 176
    Top = 200
  end
  object gvrGeneral: TcxGridViewRepository
    Left = 48
    Top = 8
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
      DataController.DataSource = dsPrevVendor
      DataController.KeyFieldNames = 'VendorId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevVendorVendorId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'VendorId'
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
        Properties.ListSource = dsPrevCategory
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
      DataController.DataSource = dsPrevCustomer
      DataController.KeyFieldNames = 'CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCustomerCustomerId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'CustomerId'
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
        Properties.ListSource = dsPrevCategory
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
      DataController.DataSource = dsPrevWarehouse
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
    object cgvPrevOutlet: TcxGridDBTableView
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
      DataController.DataSource = dsPrevOutlet
      DataController.KeyFieldNames = 'OutletId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutletOutletId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'OutletId'
        Visible = False
        Width = 100
      end
      object cgvPrevOutletOutletName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'OutletName'
        SortIndex = 0
        SortOrder = soAscending
        Width = 150
      end
      object cgvPrevOutletCityId: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
      end
      object cgvPrevOutletContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'ContactPerson'
        Width = 150
      end
    end
    object cgvPrevCategory: TcxGridDBTableView
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
      DataController.DataSource = dsPrevCategory
      DataController.KeyFieldNames = 'CategoryId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCategoryCategoryId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'CategoryId'
        Visible = False
      end
      object cgvPrevCategoryCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'CategoryName'
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object cgvPrevProject: TcxGridDBTableView
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
      DataController.DataSource = dsPrevProject
      DataController.KeyFieldNames = 'projectid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevProjectprojectid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'projectid'
      end
      object cgvPrevProjectprojectname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'projectname'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvPrevProjectcontactperson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'contactperson'
      end
      object cgvPrevProjectdatestart: TcxGridDBColumn
        Caption = 'Tgl Mulai'
        DataBinding.FieldName = 'datestart'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
      end
      object cgvPrevProjectdateend: TcxGridDBColumn
        Caption = 'Tgl Berakhir'
        DataBinding.FieldName = 'dateend'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
      end
    end
    object cgvPrevSalesman: TcxGridDBTableView
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevSalesman
      DataController.KeyFieldNames = 'employeeid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevSalesmanemployeeid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'employeeid'
        Visible = False
      end
      object cgvPrevSalesmanemployeename: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'employeename'
        SortIndex = 0
        SortOrder = soAscending
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
      DataController.DataSource = dsPrevShipping
      DataController.KeyFieldNames = 'ShippingId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevShippingShippingId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ShippingId'
      end
      object cgvPrevShippingShippingName: TcxGridDBColumn
        Caption = 'Name'
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
      object cgvPrevShippingContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'ContactPerson'
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
      DataController.DataSource = dsPrevVendorShipping
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
      DataController.DataSource = dsPrevCustomerShipping
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
      DataController.DataSource = dsPrevPurchaseCategory
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
    object cgvPrevSalesCategory: TcxGridDBTableView
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
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevSalesCategory
      DataController.KeyFieldNames = 'salescategoryid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevSalesCategorysalescategoryid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'salescategoryid'
      end
      object cgvPrevSalesCategorysalescategoryname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'salescategoryname'
      end
      object cgvPrevSalesCategoryPrefix: TcxGridDBColumn
        Caption = ' Prefix'
        DataBinding.FieldName = 'prefix'
        Visible = False
      end
    end
  end
  object dsPrevCategory: TDataSource
    DataSet = qryCategory
    Left = 176
    Top = 56
  end
  object dsPrevStatusApprove: TDataSource
    DataSet = qryPrevStatusApprove
    Left = 432
    Top = 56
  end
  object dsPrevOutlet: TDataSource
    DataSet = qryOutlet
    Left = 176
    Top = 248
  end
  object dsPrevProject: TDataSource
    DataSet = qryProject
    Left = 176
    Top = 296
  end
  object dsPrevSalesman: TDataSource
    DataSet = qryPrevSalesman
    Left = 432
    Top = 104
  end
  object dsPrevShipping: TDataSource
    DataSet = qryShipping
    Left = 176
    Top = 344
  end
  object dsPrevVendorShipping: TDataSource
    DataSet = qryPrevVendorShipping
    Left = 432
    Top = 152
  end
  object dsPrevCustomerShipping: TDataSource
    DataSet = qryPrevCustomerShipping
    Left = 432
    Top = 200
  end
  object dsPrevPurchaseCategory: TDataSource
    DataSet = qryPurchaseCategory
    Left = 176
    Top = 392
  end
  object dsPrevSalesCategory: TDataSource
    DataSet = qrySalesCategory
    Left = 176
    Top = 440
  end
  object qryCustomer: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Customer')
    BeforeOpen = qryCustomerBeforeOpen
    BeforePost = qryCustomerBeforePost
    OnNewRecord = qryCustomerNewRecord
    BeforeRefresh = qryCustomerBeforeOpen
    Left = 48
    Top = 152
  end
  object qryCategory: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from Category order by CategoryId')
    Left = 48
    Top = 56
  end
  object qryVendor: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Vendor')
    BeforeOpen = qryVendorBeforeOpen
    BeforePost = qryVendorBeforePost
    OnNewRecord = qryVendorNewRecord
    BeforeRefresh = qryVendorBeforeOpen
    Left = 48
    Top = 104
  end
  object qryPrevStatusApprove: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '#39'0'#39' as chStatusApprove, '#39'Entry'#39' as vcStatusName'
      'union all'
      'select '#39'1'#39' as chStatusApprove, '#39'App - 1'#39' as vcStatusName'
      'union all'
      'select '#39'2'#39' as chStatusApprove, '#39'App - 2'#39' as vcStatusName'
      'union all'
      'select '#39'3'#39' as chStatusApprove, '#39'App - 3'#39' as vcStatusName'
      'union all'
      'select '#39'4'#39' as chStatusApprove, '#39'App - 4'#39' as vcStatusName'
      'union all'
      'select '#39'5'#39' as chStatusApprove, '#39'Reject'#39' as vcStatusName'
      'union all'
      'select '#39'6'#39' as chStatusApprove, '#39'Done'#39' as vcStatusName')
    Left = 304
    Top = 56
  end
  object qryPrevSalesman: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from Employee'
      'where FlagSalesman = '#39'1'#39
      'order by EmployeeName')
    Left = 304
    Top = 104
  end
  object qryWarehouse: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from Warehouse')
    OnNewRecord = qryWarehouseNewRecord
    Left = 48
    Top = 200
  end
  object qryOutlet: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from Outlet')
    Left = 48
    Top = 248
  end
  object qryProject: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from Project')
    Left = 48
    Top = 296
  end
  object qryShipping: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from Shipping')
    Left = 48
    Top = 344
  end
  object qryPrevVendorShipping: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ShippingId, b.ShippingName, '
      '  b.ContactPerson, b.Address, c.CityName '
      'from VendorShippingDetail a'
      'left join Shipping b on a.ShippingId = b.ShippingId'
      'left join City c on c.CityId = b.CityId'
      'where a.VendorId = :VendorId'
      '')
    Left = 304
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  object qryPrevCustomerShipping: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ShippingId, b.ShippingName, '
      '  b.ContactPerson, b.Address, c.CityName '
      'from CustomerShippingDetail a'
      'left join Shipping b on a.ShippingId = b.ShippingId'
      'left join City c on c.CityId = b.CityId '
      'where a.CustomerId = :CustomerId'
      '')
    Left = 304
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPurchaseCategory: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PurchaseCategory'
      '')
    BeforeDelete = qryPurchaseCategoryBeforeDelete
    OnNewRecord = qryPurchaseCategoryNewRecord
    Left = 48
    Top = 392
  end
  object qrySalesCategory: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from SalesCategory')
    BeforeDelete = qrySalesCategoryBeforeDelete
    OnNewRecord = qrySalesCategoryNewRecord
    Left = 48
    Top = 440
  end
  object qryWarehouseRack: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from WarehouseRack')
    Left = 304
    Top = 248
  end
  object dsPrevWarehouseRack: TDataSource
    DataSet = qryWarehouseRack
    Left = 432
    Top = 248
  end
end
