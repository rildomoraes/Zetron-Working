inherited fmBahasa: TfmBahasa
  Caption = 'Bahasa'
  ExplicitHeight = 400
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
        object lblCountryId: TLabel
          Left = 9
          Top = 6
          Width = 64
          Height = 13
          Caption = 'Kode Bahasa'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 9
          Top = 24
          Width = 67
          Height = 13
          Caption = 'Nama Bahasa'
          Transparent = True
        end
        object Label9: TLabel
          Left = 165
          Top = 4
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbeKodeBahasa: TcxDBTextEdit
          Left = 99
          Top = 3
          DataBinding.DataField = 'kodebahasa'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 60
        end
        object dbeNamaBahasa: TcxDBTextEdit
          Left = 99
          Top = 21
          DataBinding.DataField = 'namabahasa'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 180
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
      object cgBahasa: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvBahasa: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvBahasakodebahasa: TcxGridDBColumn
            Caption = 'Kode Bahasa'
            DataBinding.FieldName = 'kodebahasa'
            Width = 81
          end
          object cgvBahasanamabahasa: TcxGridDBColumn
            Caption = 'Nama Bahasa'
            DataBinding.FieldName = 'namabahasa'
            Width = 153
          end
        end
        object cgBahasaLevel1: TcxGridLevel
          GridView = cgvBahasa
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 64
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
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 64
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 64
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryBahasa
    Left = 448
    Top = 96
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 64
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
