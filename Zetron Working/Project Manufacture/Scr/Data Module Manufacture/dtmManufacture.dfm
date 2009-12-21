object dmManufacture: TdmManufacture
  OldCreateOrder = False
  Height = 456
  Width = 740
  object qryProductionUnit: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryProductionUnitBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from ProductionUnit')
    Left = 80
    Top = 56
  end
  object gvrManufacture: TcxGridViewRepository
    Left = 80
    Top = 8
    object cgvProductionUnit: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsProductionUnit
      DataController.KeyFieldNames = 'ProductionUnitId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvProductionUnitProductionUnitId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvProductionUnitProductionUnitCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ProductionUnitCode'
        Visible = False
      end
      object cgvProductionUnitProductionUnitName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ProductionUnitName'
      end
      object cgvProductionUnitWarehouseId: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'WarehouseId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
      end
    end
    object cgvEngine: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsEngine
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvEngineEngineId: TcxGridDBColumn
        DataBinding.FieldName = 'EngineId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvEngineEngineCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'EngineCode'
      end
      object cgvEngineEngineName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'EngineName'
      end
      object cgvEngineProductionUnitId: TcxGridDBColumn
        Caption = 'Unit'
        DataBinding.FieldName = 'ProductionUnitId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvProductionUnit
        Properties.KeyFieldNames = 'ProductionUnitId'
        Properties.ListFieldItem = cgvProductionUnitProductionUnitName
      end
    end
  end
  object dsProductionUnit: TDataSource
    DataSet = qryProductionUnit
    Left = 192
    Top = 56
  end
  object qryEngine: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryEngineBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Engine')
    Left = 80
    Top = 104
  end
  object dsEngine: TDataSource
    DataSet = qryEngine
    Left = 192
    Top = 104
  end
end
