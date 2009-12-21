object fmPhysicalCounter: TfmPhysicalCounter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Counter Fisik Mesin'
  ClientHeight = 373
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 17
  object cgDisplayResult: TcxGrid
    Left = 0
    Top = 0
    Width = 494
    Height = 373
    Align = alClient
    TabOrder = 0
    object cgvDisplayResult: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPhysicalCounter
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'enginecode'
          Column = cgvDisplayResultenginecode
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvDisplayResultenginecode: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'enginecode'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevEngine
        Properties.KeyFieldNames = 'enginecode'
        Properties.ListFieldItem = cgvPrevEngineenginename
        Options.Editing = False
        Width = 100
      end
      object cgvDisplayResultjobcode: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'jobcode'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevJobType
        Properties.KeyFieldNames = 'jobcode'
        Properties.ListFieldItem = cgvPrevJobTypejobname
        Options.Editing = False
        Width = 150
      end
      object cgvDisplayResultcounterdate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'counterdate'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvDisplayResultshiftcode: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shiftcode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvDisplayResultvaluestart: TcxGridDBColumn
        Caption = 'Awal'
        DataBinding.FieldName = 'valuestart'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayResultvalueend: TcxGridDBColumn
        Caption = 'Akhir'
        DataBinding.FieldName = 'valueend'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayResultemployeeid: TcxGridDBColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeeid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevEmployee
        Properties.KeyFieldNames = 'EmployeeId'
        Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        Visible = False
        Options.Editing = False
      end
    end
    object cgDisplayResultLevel1: TcxGridLevel
      GridView = cgvDisplayResult
    end
  end
  object qryPhysicalCounter: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PhysicalCounter'
      'where CounterDate = :CounterDate'
      'and ShiftCode = :ShiftCode'
      'order by EngineCode, JobCode')
    BeforePost = qryPhysicalCounterBeforePost
    OnNewRecord = qryPhysicalCounterNewRecord
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CounterDate'
      end
      item
        DataType = ftUnknown
        Name = 'ShiftCode'
      end>
  end
  object dsPhysicalCounter: TDataSource
    DataSet = qryPhysicalCounter
    Left = 168
    Top = 112
  end
  object qryPrevJobType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from JobType')
    Left = 136
    Top = 144
  end
  object dsPrevJobType: TDataSource
    DataSet = qryPrevJobType
    Left = 168
    Top = 144
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 144
    object cgvPrevJobType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevJobType
      DataController.KeyFieldNames = 'jobcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevJobTypejobcode: TcxGridDBColumn
        DataBinding.FieldName = 'jobcode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevJobTypejobname: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'jobname'
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
        Caption = 'Mesin'
        DataBinding.FieldName = 'enginename'
      end
      object cgvPrevEngineenginegroupcode: TcxGridDBColumn
        DataBinding.FieldName = 'enginegroupcode'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  object qryPrevEngine: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from Engine')
    Left = 136
    Top = 176
  end
  object dsPrevEngine: TDataSource
    DataSet = qryPrevEngine
    Left = 168
    Top = 176
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Physical Counter.cfg'
    Sorting = False
    Version = '1.3'
    Left = 136
    Top = 80
  end
  object qryPrevEngineJob: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from EngineJob')
    Left = 200
    Top = 112
  end
end
