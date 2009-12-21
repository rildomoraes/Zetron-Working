inherited fmEngine: TfmEngine
  Caption = 'Mesin'
  ExplicitWidth = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 69
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblCategoryId: TLabel
            Left = 8
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Kode '
            Transparent = True
          end
          object lblCategoryName: TLabel
            Left = 8
            Top = 26
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object lblEngineGroup: TLabel
            Left = 8
            Top = 44
            Width = 60
            Height = 13
            Caption = 'Group Mesin'
            Transparent = True
          end
          object dbeEngineCode: TcxDBTextEdit
            Left = 74
            Top = 5
            DataBinding.DataField = 'enginecode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 119
          end
          object dbeEngineName: TcxDBTextEdit
            Left = 74
            Top = 23
            DataBinding.DataField = 'enginename'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 185
          end
          object dbeEngineGroup: TcxDBExtLookupComboBox
            Left = 74
            Top = 41
            DataBinding.DataField = 'enginegroupcode'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevEngineGroup
            Properties.KeyFieldNames = 'enginegroupcode'
            Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupenginegroupname
            TabOrder = 2
            Width = 185
          end
        end
        object cgEngineJob: TcxGrid
          Left = 0
          Top = 69
          Width = 560
          Height = 243
          Align = alClient
          TabOrder = 1
          object cgvEngineJob: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsEngineJob
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvEngineJobenginecode: TcxGridDBColumn
              DataBinding.FieldName = 'enginecode'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvEngineJobjobcode: TcxGridDBColumn
              Caption = 'Tipe Pekerjaan'
              DataBinding.FieldName = 'jobcode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevJobType
              Properties.KeyFieldNames = 'jobcode'
              Properties.ListFieldItem = dmInventory.cgvPrevJobTypejobname
              Width = 112
            end
            object cgvEngineJobdefaultcogs: TcxGridDBColumn
              Caption = 'Default HPP'
              DataBinding.FieldName = 'defaultcogs'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgEngineJobLevel1: TcxGridLevel
            GridView = cgvEngineJob
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 290
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object CategoryId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'enginecode'
            Width = 101
          end
          object CategoryName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'enginename'
            Width = 109
          end
          object cgvPrevDisplayenginegroupcode: TcxGridDBColumn
            Caption = 'GroupMesin'
            DataBinding.FieldName = 'enginegroupcode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevEngineGroup
            Properties.KeyFieldNames = 'enginegroupcode'
            Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupenginegroupname
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryEngine
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryEngineJob: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from EngineJob'
      'where EngineCode = :EngineCode')
    MasterSource = dsDefault
    DetailFields = 'enginecode'
    OnNewRecord = qryEngineJobNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EngineCode'
      end>
  end
  object dsEngineJob: TDataSource
    DataSet = qryEngineJob
    Left = 168
    Top = 144
  end
end
