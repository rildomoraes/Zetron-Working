inherited fmOutSourcing: TfmOutSourcing
  Caption = 'Out Sourcing'
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
          Width = 90
          Height = 13
          Caption = 'Kode Out Sourcing'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 9
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 43
          Width = 32
          Height = 13
          Caption = 'Warna'
          Transparent = True
        end
        object Label9: TLabel
          Left = 169
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
        object Label2: TLabel
          Left = 294
          Top = 22
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
        object dbeKodeOutSourcing: TcxDBTextEdit
          Left = 103
          Top = 3
          DataBinding.DataField = 'kodeoutsourcing'
          DataBinding.DataSource = dmGeneral.dsPrevOutSourcing
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 60
        end
        object dbeNama: TcxDBTextEdit
          Left = 103
          Top = 21
          DataBinding.DataField = 'namaoutsourcing'
          DataBinding.DataSource = dmGeneral.dsPrevOutSourcing
          TabOrder = 1
          Width = 185
        end
        object dbcWarna: TcxDBColorComboBox
          Left = 103
          Top = 39
          DataBinding.DataField = 'warna'
          DataBinding.DataSource = dmGeneral.dsPrevOutSourcing
          Properties.AllowSelectColor = True
          Properties.ColorValueFormat = cxcvInteger
          Properties.CustomColors = <>
          Properties.ShowDescriptions = False
          TabOrder = 2
          Width = 121
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
      object cgOutSourcing: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvOutSourcing: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsPrevOutSourcing
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvOutSourcingkodeoutsourcing: TcxGridDBColumn
            Caption = 'Kode OutSourcing'
            DataBinding.FieldName = 'kodeoutsourcing'
            Width = 95
          end
          object cgvOutSourcingnamaoutsourcing: TcxGridDBColumn
            Caption = 'Nama OutSourcing'
            DataBinding.FieldName = 'namaoutsourcing'
            Width = 111
          end
          object cgvOutSourcingwarna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'warna'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
          end
        end
        object cgOutSourcingLevel1: TcxGridLevel
          GridView = cgvOutSourcing
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 376
    Top = 216
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
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 408
    Top = 216
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 440
    Top = 216
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryOutSourcing
    Left = 376
    Top = 248
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 472
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 408
    Top = 248
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
