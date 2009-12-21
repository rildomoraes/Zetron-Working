inherited fmPendidikan: TfmPendidikan
  Caption = 'Pendidikan'
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
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 81
          Height = 13
          Caption = 'Kode Pendidikan'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Jurusan'
          Transparent = True
        end
        object Label9: TLabel
          Left = 160
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
        object dbeKodePendidikan: TcxDBTextEdit
          Left = 94
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'kodependidikan'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 60
        end
        object dbeJurusan: TcxDBTextEdit
          Left = 94
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'jurusan'
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
      object cgPendidikan: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPendidikan: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvPendidikankodependidikan: TcxGridDBColumn
            Caption = 'Kode Pendidikan'
            DataBinding.FieldName = 'kodependidikan'
          end
          object cgvPendidikanjurusan: TcxGridDBColumn
            Caption = 'Jurusan'
            DataBinding.FieldName = 'jurusan'
          end
        end
        object cgPendidikanLevel1: TcxGridLevel
          GridView = cgvPendidikan
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 48
    Top = 224
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 80
    Top = 224
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 112
    Top = 224
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryPendidikan
    Left = 48
    Top = 256
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 144
    Top = 224
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 80
    Top = 256
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
