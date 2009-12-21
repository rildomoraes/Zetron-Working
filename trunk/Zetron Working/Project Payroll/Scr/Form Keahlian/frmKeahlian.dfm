inherited fmKeahlian: TfmKeahlian
  Caption = 'Keahlian'
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
          Width = 69
          Height = 13
          Caption = 'Kode Keahlian'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 9
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Nama Keahlian'
          Transparent = True
        end
        object Label9: TLabel
          Left = 163
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
        object dbeKodeKeahlian: TcxDBTextEdit
          Left = 97
          Top = 3
          DataBinding.DataField = 'kodekeahlian'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 60
        end
        object dbeNamaKeahlian: TcxDBTextEdit
          Left = 97
          Top = 21
          DataBinding.DataField = 'namakeahlian'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 180
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgKeahlian: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvKeahlian: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvKeahliankodekeahlian: TcxGridDBColumn
            Caption = 'Kode Keahlian'
            DataBinding.FieldName = 'kodekeahlian'
            Width = 97
          end
          object cgvKeahliannamakeahlian: TcxGridDBColumn
            Caption = 'Nama Keahlian'
            DataBinding.FieldName = 'namakeahlian'
          end
        end
        object cgKeahlianLevel1: TcxGridLevel
          GridView = cgvKeahlian
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 56
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
    Left = 488
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 56
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryKeahlian
    Left = 456
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 56
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 88
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
