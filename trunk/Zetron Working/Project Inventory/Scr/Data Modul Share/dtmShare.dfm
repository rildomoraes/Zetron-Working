object dmShare: TdmShare
  OldCreateOrder = False
  Height = 375
  Width = 453
  object qryGetEmployeeName: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select EmployeeName '
      'from Employee'
      'where EmployeeId = :EmployeeId')
    Left = 56
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EmployeeId'
      end>
  end
  object qryGetItemFlagInactive: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select FlagInactive'
      'from Item'
      'where ItemId = :ItemId')
    Left = 200
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetStatusItemIdExternal: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select ItemId, StatusItem'
      'from Item'
      'where ItemIdExternal = :ItemIdExternal')
    Left = 200
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemIdExternal'
      end>
  end
  object qryGetStatusItemId: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select StatusItem'
      'from Item'
      'where ItemId = :ItemId')
    Left = 200
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
end
