inherited fmKoorGrader: TfmKoorGrader
  Caption = 'Koordinator Grader'
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
        object lblCityId: TLabel
          Left = 9
          Top = 6
          Width = 28
          Height = 13
          Caption = 'Kode '
          Transparent = True
        end
        object lblCityName: TLabel
          Left = 9
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object dbeKoorGraderCode: TcxDBTextEdit
          Left = 46
          Top = 5
          DataBinding.DataField = 'KoorGraderCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeKoorGraderName: TcxDBTextEdit
          Left = 46
          Top = 23
          DataBinding.DataField = 'KoorGraderName'
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
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
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
          object cgvPrevDisplayKoorGraderCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'KoorGraderCode'
          end
          object cgvPrevDisplayKoorGraderName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'KoorGraderName'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qryKoorGrader
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
