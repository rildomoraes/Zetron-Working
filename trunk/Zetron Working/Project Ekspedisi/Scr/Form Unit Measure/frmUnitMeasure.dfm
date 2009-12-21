inherited fmUnitMeasure: TfmUnitMeasure
  Caption = 'Satuan'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited btnInsert: TcxButton
      ExplicitLeft = 199
      ExplicitTop = -1
    end
    inherited btnEdit: TcxButton
      ExplicitLeft = 251
      ExplicitTop = 1
    end
  end
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
        object dbeUnitMeasureCode: TcxDBTextEdit
          Left = 49
          Top = 3
          DataBinding.DataField = 'UnitMeasureCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object dbeUnitMeasureName: TcxDBTextEdit
          Left = 49
          Top = 21
          DataBinding.DataField = 'UnitMeasureName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgUnitMeasure: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevUnitMeasure: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevUnitMeasureUnitMeasureCode: TcxGridDBColumn
            Caption = 'Kode Satuan'
            DataBinding.FieldName = 'UnitMeasureCode'
            Width = 80
          end
          object cgvPrevUnitMeasureUnitMeasureName: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'UnitMeasureName'
          end
        end
        object cgUnitMeasureLevel1: TcxGridLevel
          GridView = cgvPrevUnitMeasure
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 400
    Top = 224
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 432
    Top = 224
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 464
    Top = 224
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryUnitMeasure
    Left = 400
    Top = 256
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 496
    Top = 224
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 432
    Top = 256
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
