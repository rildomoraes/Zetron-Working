inherited fmPacking: TfmPacking
  Caption = 'Packing'
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
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Kode *'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 24
          Width = 35
          Height = 13
          Caption = 'Nama *'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 49
          Top = 3
          DataBinding.DataField = 'PackingCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 49
          Top = 21
          DataBinding.DataField = 'PackingName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1PackingID: TcxGridDBColumn
            DataBinding.FieldName = 'PackingID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1PackingCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'PackingCode'
            Width = 139
          end
          object cxGrid1DBTableView1PackingName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'PackingName'
            Width = 115
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 296
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 296
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 296
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryPacking
    Left = 448
    Top = 328
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 296
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 328
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
