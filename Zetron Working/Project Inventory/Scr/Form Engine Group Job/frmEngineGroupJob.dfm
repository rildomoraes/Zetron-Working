inherited fmEngineGroupJob: TfmEngineGroupJob
  Caption = 'Pekerjaan Group Mesin'
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
        object lblJobType: TLabel
          Left = 8
          Top = 44
          Width = 48
          Height = 13
          Caption = 'Pekerjaan'
          Transparent = True
        end
        object lblCategoryId: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Kode '
          Transparent = True
        end
        object lblGroupEngine: TLabel
          Left = 8
          Top = 26
          Width = 60
          Height = 13
          Caption = 'Group Mesin'
          Transparent = True
        end
        object dbeEngineGroup: TcxDBExtLookupComboBox
          Left = 75
          Top = 23
          DataBinding.DataField = 'enginegroupcode'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevEngineGroup
          Properties.KeyFieldNames = 'enginegroupcode'
          Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupenginegroupname
          TabOrder = 1
          Width = 185
        end
        object dbeEngineGroupJobCode: TcxDBTextEdit
          Left = 75
          Top = 5
          DataBinding.DataField = 'enginegroupjobcode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 185
        end
        object dbeJobTypeCode: TcxDBExtLookupComboBox
          Left = 75
          Top = 41
          DataBinding.DataField = 'jobcode'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevJobType
          Properties.KeyFieldNames = 'jobcode'
          Properties.ListFieldItem = dmInventory.cgvPrevJobTypejobname
          TabOrder = 0
          Width = 185
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
          object cgvPrevDisplayEngineGroupJobCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'enginegroupjobcode'
          end
          object cgvPrevDisplayenginegroupcode: TcxGridDBColumn
            Caption = 'Group Mesin'
            DataBinding.FieldName = 'enginegroupcode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevEngineGroup
            Properties.KeyFieldNames = 'enginegroupcode'
            Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupenginegroupname
          end
          object cgvPrevDisplayjobcode: TcxGridDBColumn
            Caption = 'Pekerjaan'
            DataBinding.FieldName = 'jobcode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevJobType
            Properties.KeyFieldNames = 'jobcode'
            Properties.ListFieldItem = dmInventory.cgvPrevJobTypejobname
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
    DataSet = dmInventory.qryEngineGroupJob
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
