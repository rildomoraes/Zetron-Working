object dmTimber: TdmTimber
  OldCreateOrder = False
  Height = 387
  Width = 563
  object qryPrevItemBalok: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryPrevItemBalokBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where ItemProperty2 = '#39'0'#39' -- Saw Timber / Square'
      'and StatusProduction = '#39'0'#39' -- Bahan Baku')
    Left = 320
    Top = 56
  end
  object dsPrevItemBalok: TDataSource
    DataSet = qryPrevItemBalok
    Left = 440
    Top = 56
  end
  object qryPrevItemLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryPrevItemLogBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where ItemProperty2 = '#39'1'#39' -- Log'
      'and StatusProduction = '#39'0'#39' -- Bahan Baku')
    Left = 320
    Top = 104
  end
  object dsPrevItemLog: TDataSource
    DataSet = qryPrevItemLog
    Left = 440
    Top = 104
  end
  object gvrInventory: TcxGridViewRepository
    Left = 72
    Top = 8
    object cgvPrevItemBalok: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemBalok
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemBalokItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemBalokItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemBalokItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 120
      end
      object cgvPrevItemBalokMaterialId: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
      end
      object cgvPrevItemBalokItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
      end
      object cgvPrevItemBalokItemProperty1: TcxGridDBColumn
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
    end
    object cgvPrevItemLog: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemLog
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemLogItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemLogItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemLogItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 120
      end
      object cgvPrevItemLogMaterialId: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
        Width = 80
      end
      object cgvPrevItemLogItemCategoryId: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
        Width = 80
      end
      object cgvPrevItemLogItemProperty1: TcxGridDBColumn
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
    end
    object cgvPeriodePembelian: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPurchaseInvoice
      DataController.KeyFieldNames = 'PurchaseInvoiceId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPeriodePembelianPurchaseInvoiceId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseInvoiceId'
      end
      object cgvPeriodePembelianVendorId: TcxGridDBColumn
        DataBinding.FieldName = 'VendorId'
      end
      object cgvPeriodePembelianEmployeeId: TcxGridDBColumn
        DataBinding.FieldName = 'EmployeeId'
      end
      object cgvPeriodePembelianPurchaseInvoiceCode: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseInvoiceCode'
      end
      object cgvPeriodePembelianPurchaseInvoiceDate: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseInvoiceDate'
      end
      object cgvPeriodePembelianSupplierInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierInvoiceNo'
      end
      object cgvPeriodePembelianCounterPrint: TcxGridDBColumn
        DataBinding.FieldName = 'CounterPrint'
      end
      object cgvPeriodePembelianInternalMemo: TcxGridDBColumn
        DataBinding.FieldName = 'InternalMemo'
      end
      object cgvPeriodePembelianLastModified: TcxGridDBColumn
        DataBinding.FieldName = 'LastModified'
      end
      object cgvPeriodePembelianStatementMemo: TcxGridDBColumn
        DataBinding.FieldName = 'StatementMemo'
      end
      object cgvPeriodePembelianStatusApprove: TcxGridDBColumn
        DataBinding.FieldName = 'StatusApprove'
      end
    end
    object cgvPrevTableLogHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTableLogHd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevTableLogHdTableLogId: TcxGridDBColumn
        DataBinding.FieldName = 'TableLogId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevTableLogHdTableLogName: TcxGridDBColumn
        Caption = 'Tabel Log'
        DataBinding.FieldName = 'TableLogName'
      end
    end
  end
  object qryRoughSize: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryRoughSizeBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select * from RoughSize'
      '')
    Left = 72
    Top = 56
  end
  object dsPrevRoughSize: TDataSource
    DataSet = qryRoughSize
    Left = 192
    Top = 56
  end
  object dsPrevPO: TDataSource
    DataSet = qryPrevPO
    Left = 440
    Top = 168
  end
  object qryPrevPO: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StatusPurchaseOrder'
        Size = -1
        Value = Null
      end
      item
        Name = 'PurchaseOrderId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.PurchaseOrderId,b.Vendorid,b.Vendorname,c.MaterialId,c.' +
        'MaterialName'
      'from PurchaseOrderHd a '
      'left join Vendor b on a.Vendorid=b.Vendorid '
      'left join Material c on a.Materialid=c.MaterialId'
      'where (a.FlagClose='#39'0'#39' '
      'and a.StatusPurchaseOrder = :StatusPurchaseOrder'
      ') or a.PurchaseOrderId=:PurchaseOrderId')
    Left = 320
    Top = 168
  end
  object qryPurchaseInvoice: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from purchaseinvoice')
    Left = 320
    Top = 216
  end
  object dsPurchaseInvoice: TDataSource
    DataSet = qryPurchaseInvoice
    Left = 440
    Top = 216
  end
  object qryTableLogHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryRoughSizeBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select * from TableLogHd'
      '')
    Left = 72
    Top = 104
  end
  object dsPrevTableLogHd: TDataSource
    DataSet = qryTableLogHd
    Left = 192
    Top = 104
  end
  object qryGetLogM3: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.MaterialId, '
      '  (b.D * b.DConstanta) D_Meter,'
      '  (b.P * b.PConstanta) P_Meter,'
      '  M3'
      'from TableLogMaterial a'
      'left join TableLogDt b on a.TableLogId = b.TableLogId')
    Left = 192
    Top = 8
  end
end
