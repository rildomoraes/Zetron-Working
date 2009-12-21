object dmEkspedisi: TdmEkspedisi
  OldCreateOrder = False
  Height = 555
  Width = 754
  object qryStorageLocation: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryStorageLocationBeforePost
    AfterPost = qryStorageLocationAfter
    AfterDelete = qryStorageLocationAfter
    Parameters = <>
    SQL.Strings = (
      'select * from StorageLocation')
    Left = 56
    Top = 64
  end
  object qryShipCrew: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryShipCrewBeforePost
    AfterPost = qryShipCrewAfter
    AfterDelete = qryShipCrewAfter
    Parameters = <>
    SQL.Strings = (
      'select * from ShipCrew')
    Left = 56
    Top = 112
  end
  object qryShip: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryShipBeforePost
    AfterPost = qryShipAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryShipAfter
    OnNewRecord = qryShipNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ship')
    Left = 56
    Top = 160
  end
  object gvrEkspedisi: TcxGridViewRepository
    Left = 56
    Top = 16
    object cgvPrevStorageLocation: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevStorageLocation
      DataController.KeyFieldNames = 'StorageLocationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'StorageLocationCode'
      end
      object cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'StorageLocationName'
      end
      object cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'FlagShipStorage'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Gudang'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Kapal'
            Value = '1'
          end>
      end
    end
    object cgvPrevShipCrew: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevShipCrew
      DataController.KeyFieldNames = 'ShipCrewId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShipCrewShipCrewId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewId'
      end
      object cgvPrevShipCrewShipCrewCode: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewCode'
      end
      object cgvPrevShipCrewShipCrewName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewName'
      end
      object cgvPrevShipCrewStatusPosition: TcxGridDBColumn
        DataBinding.FieldName = 'StatusPosition'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Nahkoda'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'ABK'
            Value = '1'
          end>
      end
    end
    object cgvPrevShip: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevShip
      DataController.KeyFieldNames = 'ShipId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShipShipId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipId'
      end
      object cgvPrevShipShipCrewId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewId'
      end
      object cgvPrevShipStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
      end
      object cgvPrevShipShipCode: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCode'
      end
      object cgvPrevShipShipName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipName'
      end
      object cgvPrevShipEngineName: TcxGridDBColumn
        DataBinding.FieldName = 'EngineName'
      end
      object cgvPrevShipOrigin: TcxGridDBColumn
        DataBinding.FieldName = 'Origin'
      end
      object cgvPrevShipYearMade: TcxGridDBColumn
        DataBinding.FieldName = 'YearMade'
      end
      object cgvPrevShipP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
      end
      object cgvPrevShipL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
      end
      object cgvPrevShipT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
      end
      object cgvPrevShipGrossTon: TcxGridDBColumn
        DataBinding.FieldName = 'GrossTon'
      end
      object cgvPrevShipNettoTon: TcxGridDBColumn
        DataBinding.FieldName = 'NettoTon'
      end
    end
    object cgvPrevRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevRoute
      DataController.KeyFieldNames = 'RouteId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevRouteRouteName: TcxGridDBColumn
        DataBinding.FieldName = 'RouteName'
      end
    end
    object cgvPrevMerekByRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevMerkbyRoute
      DataController.KeyFieldNames = 'MerekId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevMerekByRouteMerekCode: TcxGridDBColumn
        DataBinding.FieldName = 'MerekCode'
      end
      object cgvPrevMerekByRouteMerekName: TcxGridDBColumn
        DataBinding.FieldName = 'MerekName'
      end
    end
    object cgvPrevUnitMeasure: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsUnitMeasure
      DataController.KeyFieldNames = 'UnitMeasureId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevUnitMeasureUnitMeasureCode: TcxGridDBColumn
        Caption = 'Kode Sat'
        DataBinding.FieldName = 'UnitMeasureCode'
      end
      object cgvPrevUnitMeasureUnitMeasureName: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'UnitMeasureName'
      end
    end
    object cgvPrevStorageLocationDest: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsStorageLocationDest
      DataController.KeyFieldNames = 'StorageLocationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevStorageLocationDestStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
      end
      object cgvPrevStorageLocationDestStorageLocationCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'StorageLocationCode'
      end
      object cgvPrevStorageLocationDestStorageLocationName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'StorageLocationName'
      end
      object cgvPrevStorageLocationDestFlagShipStorage: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'FlagShipStorage'
      end
    end
    object cgvPrevPositionCrew: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPositionCrew
      DataController.KeyFieldNames = 'PositionId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPositionCrewPositionName: TcxGridDBColumn
        Caption = 'Posisi'
        DataBinding.FieldName = 'PositionName'
        Width = 251
      end
    end
    object cgvPrevCustomer: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCustomer
      DataController.KeyFieldNames = 'CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCustomerCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerName'
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
      object cgvPrevCustomerCategoryCategoryName: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'CategoryName'
      end
    end
    object cgvPrevPengirim: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPengirim
      DataController.KeyFieldNames = 'CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPengirimCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerName'
      end
    end
    object cgvPrevShipNahkoda: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsShipNahkoda
      DataController.KeyFieldNames = 'ShipCrewId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShipNahkodaShipName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipName'
      end
      object cgvPrevShipNahkodaShipCrewName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewName'
      end
    end
    object cgvprevItemList: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItemList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvprevItemListItemName: TcxGridDBColumn
        DataBinding.FieldName = 'ItemName'
      end
      object cgvprevItemListT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
      end
      object cgvprevItemListL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
      end
      object cgvprevItemListP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
      end
      object cgvprevItemListBerat: TcxGridDBColumn
        DataBinding.FieldName = 'Berat'
      end
      object cgvprevItemListTotalM3: TcxGridDBColumn
        DataBinding.FieldName = 'TotalM3'
      end
      object cgvprevItemListTotalBerat: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBerat'
      end
    end
    object cgvPrevDaftarMuatKapalRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDaftarMuatKapalRoute
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevDaftarMuatKapalRouteDaftarMuatKapalRouteCode: TcxGridDBColumn
        DataBinding.FieldName = 'DaftarMuatKapalRouteCode'
      end
      object cgvPrevDaftarMuatKapalRouteDaftarMuatKapalCode: TcxGridDBColumn
        DataBinding.FieldName = 'DaftarMuatKapalCode'
      end
      object cgvPrevDaftarMuatKapalRouteRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
      end
      object cgvPrevDaftarMuatKapalRouteTotalM3: TcxGridDBColumn
        DataBinding.FieldName = 'TotalM3'
      end
      object cgvPrevDaftarMuatKapalRouteTotalTon: TcxGridDBColumn
        DataBinding.FieldName = 'TotalTon'
      end
    end
  end
  object dsPrevStorageLocation: TDataSource
    DataSet = qryStorageLocation
    Left = 176
    Top = 64
  end
  object dsPrevShipCrew: TDataSource
    DataSet = qryShipCrew
    Left = 176
    Top = 112
  end
  object dsPrevShip: TDataSource
    DataSet = qryShip
    Left = 176
    Top = 160
  end
  object qryRoute: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryRouteBeforePost
    AfterPost = qryRouteAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryRouteAfter
    Parameters = <>
    SQL.Strings = (
      'select * from Route')
    Left = 288
    Top = 64
  end
  object dsPrevRoute: TDataSource
    DataSet = qryRoute
    Left = 432
    Top = 64
  end
  object qryShipDailyLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryShipDailyLogAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryShipDailyLogAfter
    Parameters = <>
    SQL.Strings = (
      'select * from ShipDailyLog')
    Left = 288
    Top = 112
  end
  object qryMerek: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryMerekAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryMerekAfter
    Parameters = <>
    SQL.Strings = (
      'select * from merek')
    Left = 288
    Top = 160
  end
  object qryTarifType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryTarifTypeBeforePost
    AfterPost = qryTarifTypeAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTarifTypeAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from TarifType')
    Left = 56
    Top = 208
  end
  object qryTarifItem: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryTarifItemAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTarifItemAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from TarifItem')
    Left = 352
    Top = 416
  end
  object qryShipRoute: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryShipRouteAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryShipRouteAfter
    Parameters = <>
    SQL.Strings = (
      'select * from ShipRoute;')
    Left = 352
    Top = 464
  end
  object dsPrevShipDailyLog: TDataSource
    DataSet = qryShipDailyLog
    Left = 432
    Top = 112
  end
  object dsPrevMerek: TDataSource
    DataSet = qryMerek
    Left = 432
    Top = 160
  end
  object dsTarifType: TDataSource
    DataSet = qryTarifType
    Left = 176
    Top = 208
  end
  object qryDaftarMuatKapal: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDaftarMuatKapalAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDaftarMuatKapalAfter
    Parameters = <>
    SQL.Strings = (
      'select * from DaftarMuatKapal;')
    Left = 56
    Top = 264
  end
  object dsDaftarMuatKapal: TDataSource
    DataSet = qryDaftarMuatKapal
    Left = 176
    Top = 264
  end
  object qryPacking: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPackingAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPackingAfter
    Parameters = <>
    SQL.Strings = (
      'select * from packing')
    Left = 288
    Top = 368
  end
  object dsPacking: TDataSource
    DataSet = qryPacking
    Left = 432
    Top = 368
  end
  object qryMerekByRoute: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryMerekByRouteAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryMerekByRouteAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Merek')
    Left = 288
    Top = 16
  end
  object dsPrevMerkbyRoute: TDataSource
    DataSet = qryMerekByRoute
    Left = 432
    Top = 16
  end
  object qryCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryCounterAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCounterAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Counter')
    Left = 56
    Top = 312
  end
  object dsCounter: TDataSource
    DataSet = qryCounter
    Left = 176
    Top = 312
  end
  object qryCounterHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryCounterHdAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCounterHdAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from CounterHd')
    Left = 288
    Top = 424
  end
  object dsCounterHd: TDataSource
    DataSet = qryCounterHd
    Left = 432
    Top = 424
  end
  object qryUnitMeasure: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryUnitMeasureBeforePost
    AfterPost = qryUnitMeasureAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryUnitMeasureAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from UnitMeasure')
    Left = 288
    Top = 320
  end
  object dsUnitMeasure: TDataSource
    DataSet = qryUnitMeasure
    Left = 432
    Top = 320
  end
  object qryGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mode'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        Size = -1
        Value = Null
      end
      item
        Name = 'param'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select dbo.fnGetId(:mode,:tgl,:param) as GenCounter')
    Left = 536
    Top = 16
  end
  object qryspGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'param'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'exec spSetId :mode,:tgl,:param')
    Left = 536
    Top = 72
  end
  object qryLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog')
    Left = 288
    Top = 208
  end
  object dsLog: TDataSource
    DataSet = qryLog
    Left = 432
    Top = 208
  end
  object qryStorageLocationDest: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryStorageLocationAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryStorageLocationAfter
    Parameters = <>
    SQL.Strings = (
      'select * from StorageLocation')
    Left = 536
    Top = 184
  end
  object dsStorageLocationDest: TDataSource
    DataSet = qryStorageLocationDest
    Left = 664
    Top = 184
  end
  object dsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 656
    Top = 304
  end
  object qryCustomer: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    OnNewRecord = qryCustomerNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Customer')
    Left = 536
    Top = 304
  end
  object qryCustomerCategory: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from CustomerCategory'
      'order by CategoryName')
    Left = 536
    Top = 256
  end
  object dsCustomerCategory: TDataSource
    DataSet = qryCustomerCategory
    Left = 656
    Top = 256
  end
  object dsPositionCrew: TDataSource
    DataSet = qryPositionCrew
    Left = 656
    Top = 360
  end
  object qryPositionCrew: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from PositionCrew'
      'order by PositionId')
    Left = 536
    Top = 360
  end
  object dsPengirim: TDataSource
    DataSet = qryPengirim
    Left = 656
    Top = 416
  end
  object qryPengirim: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Customer'
      'where (CustomerCategoryId='#39'2'#39') or (CustomerCategoryId='#39'3'#39')')
    Left = 536
    Top = 416
  end
  object qryShipNahkoda: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryShipAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryShipAfter
    Parameters = <
      item
        Name = 'shipid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.ShipId,a.ShipCode,a.ShipName,b.ShipCrewId,b.ShipCrewNam' +
        'e '
      'from ship a'
      
        'left join shipcrew b on a.storagelocationid=b.storagelocationid ' +
        'and b.positionid=1'
      'where cast(a.shipid as varchar)=:shipid')
    Left = 56
    Top = 376
  end
  object dsShipNahkoda: TDataSource
    DataSet = qryShipNahkoda
    Left = 176
    Top = 376
  end
  object qryLogDictionary: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from LogDictionary')
    Left = 281
    Top = 273
  end
  object dsLogDictionary: TDataSource
    DataSet = qryLogDictionary
    Left = 432
    Top = 272
  end
  object qryValue: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'value1'
        Size = -1
        Value = Null
      end
      item
        Name = 'value2'
        Size = -1
        Value = Null
      end
      item
        Name = 'value3'
        Size = -1
        Value = Null
      end
      item
        Name = 'value4'
        Size = -1
        Value = Null
      end
      item
        Name = 'value5'
        Size = -1
        Value = Null
      end
      item
        Name = 'value6'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select dbo.fnGetListDelimitedbyComma(:value1,dbo.fnGetIndexDelim' +
        'itedbyComma(:value2,:value3)) as lama,'
      
        'dbo.fnGetListDelimitedbyComma(:value4,dbo.fnGetIndexDelimitedbyC' +
        'omma(:value5,:value6)) as baru')
    Left = 353
    Top = 209
  end
  object qryGetValue: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'value1'
        Size = -1
        Value = Null
      end
      item
        Name = 'value2'
        Size = -1
        Value = Null
      end
      item
        Name = 'value3'
        Size = -1
        Value = Null
      end
      item
        Name = 'value4'
        Size = -1
        Value = Null
      end
      item
        Name = 'value5'
        Size = -1
        Value = Null
      end
      item
        Name = 'value6'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select dbo.fnGetListDelimitedbyComma(:value1,dbo.fnGetIndexDelim' +
        'itedbyComma(:value2,:value3))'
      'as lama,'
      
        'dbo.fnGetListDelimitedbyComma(:value4,dbo.fnGetIndexDelimitedbyC' +
        'omma(:value5,:value6))l'
      'as baru')
    Left = 353
    Top = 265
  end
  object dsItemList: TDataSource
    DataSet = qryItemList
    Left = 176
    Top = 432
  end
  object qryItemList: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ItemList')
    Left = 56
    Top = 432
  end
  object qryDaftarMuatKapalRoute: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from DaftarMuatKapalRoute')
    Left = 56
    Top = 488
  end
  object dsDaftarMuatKapalRoute: TDataSource
    DataSet = qryDaftarMuatKapalRoute
    Left = 176
    Top = 488
  end
end
