inherited fmGroupGaji: TfmGroupGaji
  Caption = 'Form Group Gaji'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 317
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
        ExplicitLeft = -3
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Label1: TLabel
          Left = 10
          Top = 12
          Width = 59
          Height = 13
          Caption = 'Kode Group '
          Transparent = True
        end
        object Label2: TLabel
          Left = 10
          Top = 34
          Width = 62
          Height = 13
          Caption = 'Nama Group '
          Transparent = True
        end
        object dbeKodeGroupGaji: TcxDBTextEdit
          Left = 75
          Top = 9
          BeepOnEnter = False
          DataBinding.DataField = 'kodegroupgaji'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 65
        end
        object dbeNamaGroupGaji: TcxDBTextEdit
          Left = 75
          Top = 31
          BeepOnEnter = False
          DataBinding.DataField = 'namagroupgaji'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 225
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 317
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 295
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 0
        object cgvExplorer: TcxGridDBTableView
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
          object cgvExplorerkodegroupgaji: TcxGridDBColumn
            Caption = 'Kode Group'
            DataBinding.FieldName = 'kodegroupgaji'
            Width = 83
          end
          object cgvExplorernamagroupgaji: TcxGridDBColumn
            Caption = 'Nama Group'
            DataBinding.FieldName = 'namagroupgaji'
            Width = 102
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmgeneral.qryGroupGaji
    Left = 448
    Top = 80
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 48
    inherited actInsert: TDataSetInsert
      Enabled = False
    end
    inherited actEdit: TDataSetEdit
      Enabled = False
    end
    inherited actDelete: TDataSetDelete
      Enabled = False
    end
    inherited actPost: TDataSetPost
      Enabled = False
    end
    inherited actCancel: TDataSetCancel
      Enabled = False
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 48
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 48
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 48
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 80
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
