inherited fmLogDictionary: TfmLogDictionary
  Caption = 'Log Dictionary'
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    ExplicitTop = 58
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 560
          Height = 312
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitTop = -1
          object cgvLogDictionary: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cgvLogDictionaryFocusedRecordChanged
            DataController.DataSource = dsDefault
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cgvLogDictionaryTableName: TcxGridDBColumn
              Caption = 'Table'
              DataBinding.FieldName = 'TableName'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvTables
              Properties.KeyFieldNames = 'name'
              Properties.ListFieldItem = cgvTablesname
              Width = 79
            end
            object cgvLogDictionaryFieldName: TcxGridDBColumn
              Caption = 'Field'
              DataBinding.FieldName = 'FieldName'
              Width = 127
            end
            object cgvLogDictionaryValue1: TcxGridDBColumn
              Caption = 'Nilai 1'
              DataBinding.FieldName = 'Value1'
              Width = 55
            end
            object cgvLogDictionaryValue2: TcxGridDBColumn
              Caption = 'Nilai 2'
              DataBinding.FieldName = 'Value2'
              Width = 117
            end
            object cgvLogDictionaryDisplayFieldName: TcxGridDBColumn
              Caption = 'Nama Field yang ditampilkan'
              DataBinding.FieldName = 'DisplayFieldName'
              Width = 127
            end
            object cgvLogDictionaryReferenceFieldDisplay: TcxGridDBColumn
              Caption = 'Field Referensi Yang Ditampilkan'
              DataBinding.FieldName = 'ReferenceFieldDisplay'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvReferenceFieldDisplay
              Properties.KeyFieldNames = 'name'
              Properties.ListFieldItem = cgvReferenceFieldDisplayname
              Width = 128
            end
            object cgvLogDictionaryReferenceKeyField: TcxGridDBColumn
              Caption = 'Field Key Reference'
              DataBinding.FieldName = 'ReferenceKeyField'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvReferenceKeyFields
              Properties.KeyFieldNames = 'name'
              Properties.ListFieldItem = cgvReferenceKeyFieldsname
              Width = 112
            end
            object cgvLogDictionaryReferenceTableName: TcxGridDBColumn
              Caption = 'ReferenceTable'
              DataBinding.FieldName = 'ReferenceTableName'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvReferenceTables
              Properties.KeyFieldNames = 'name'
              Properties.ListFieldItem = cgvReferenceTablesname
              Width = 127
            end
            object cgvLogDictionaryKeyField: TcxGridDBColumn
              DataBinding.FieldName = 'KeyField'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvKeyFields
              Properties.KeyFieldNames = 'name'
              Properties.ListFieldItem = cgvKeyFieldsname
            end
            object cgvLogDictionaryDisplayKeyField: TcxGridDBColumn
              DataBinding.FieldName = 'DisplayKeyField'
            end
            object cgvLogDictionaryQueryName: TcxGridDBColumn
              DataBinding.FieldName = 'QueryName'
            end
          end
          object cgvReferenceTables: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDisplayReferenceTable
            DataController.KeyFieldNames = 'name'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvReferenceTablesname: TcxGridDBColumn
              DataBinding.FieldName = 'name'
            end
          end
          object cgvReferenceKeyFields: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDisplayReferenceKeyField
            DataController.KeyFieldNames = 'name'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvReferenceKeyFieldsname: TcxGridDBColumn
              DataBinding.FieldName = 'name'
            end
          end
          object cgvReferenceFieldDisplay: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDisplayReferenceFieldDisplay
            DataController.KeyFieldNames = 'name'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvReferenceFieldDisplayname: TcxGridDBColumn
              DataBinding.FieldName = 'name'
            end
          end
          object cgvTables: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDisplayTable
            DataController.KeyFieldNames = 'name'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvTablesname: TcxGridDBColumn
              DataBinding.FieldName = 'name'
            end
          end
          object cgvKeyFields: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDisplayKeyField
            DataController.KeyFieldNames = 'name'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvKeyFieldsname: TcxGridDBColumn
              DataBinding.FieldName = 'name'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cgvLogDictionary
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryLogDictionary
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryLogDictionary: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from LogDictionary')
    Left = 432
    Top = 80
  end
  object qryDisplayReferenceTable: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from sys.tables')
    Left = 432
    Top = 144
  end
  object qryDisplayReferenceKeyField: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDisplayReferenceTable
    Parameters = <
      item
        Name = 'object_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 43147199
      end>
    SQL.Strings = (
      'select * '
      'from sys.columns'
      'where object_id=:object_id')
    Left = 432
    Top = 200
  end
  object dsDisplayReferenceTable: TDataSource
    DataSet = qryDisplayReferenceTable
    OnStateChange = dsDefaultStateChange
    Left = 520
    Top = 144
  end
  object dsDisplayReferenceKeyField: TDataSource
    DataSet = qryDisplayReferenceKeyField
    OnStateChange = dsDefaultStateChange
    Left = 519
    Top = 200
  end
  object qryDisplayReferenceFieldDisplay: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDisplayReferenceTable
    Parameters = <
      item
        Name = 'object_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 43147199
      end>
    SQL.Strings = (
      'select * '
      'from sys.columns'
      'where object_id=:object_id')
    Left = 432
    Top = 256
  end
  object dsDisplayReferenceFieldDisplay: TDataSource
    DataSet = qryDisplayReferenceFieldDisplay
    OnStateChange = dsDefaultStateChange
    Left = 519
    Top = 256
  end
  object qryDisplayKeyField: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDisplayTable
    Parameters = <
      item
        Name = 'object_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 43147199
      end>
    SQL.Strings = (
      'select * '
      'from sys.columns'
      'where object_id=:object_id')
    Left = 224
    Top = 184
  end
  object dsDisplayKeyField: TDataSource
    DataSet = qryDisplayKeyField
    OnStateChange = dsDefaultStateChange
    Left = 255
    Top = 184
  end
  object qryDisplayTable: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from sys.tables')
    Left = 224
    Top = 146
  end
  object dsDisplayTable: TDataSource
    DataSet = qryDisplayTable
    OnStateChange = dsDefaultStateChange
    Left = 256
    Top = 147
  end
end
