inherited fmEngineGroup: TfmEngineGroup
  Caption = 'Group Mesin'
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
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object dbeJobId: TcxDBTextEdit
          Left = 45
          Top = 5
          DataBinding.DataField = 'enginegroupcode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 116
        end
        object dbeJobName: TcxDBTextEdit
          Left = 45
          Top = 23
          DataBinding.DataField = 'enginegroupname'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
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
          object CategoryId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'enginegroupcode'
            Width = 101
          end
          object CategoryName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'enginegroupname'
            Width = 109
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryEngineGroup
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
