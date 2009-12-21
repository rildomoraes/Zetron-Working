inherited fmGrader: TfmGrader
  Caption = 'Grader'
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
        object dbeGraderCode: TcxDBTextEdit
          Left = 46
          Top = 5
          DataBinding.DataField = 'GraderCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeGraderName: TcxDBTextEdit
          Left = 46
          Top = 23
          DataBinding.DataField = 'GraderName'
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
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayGraderCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'GraderCode'
          end
          object cgvPrevDisplayGraderName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'GraderName'
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
    DataSet = dmInventory.qryGrader
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
