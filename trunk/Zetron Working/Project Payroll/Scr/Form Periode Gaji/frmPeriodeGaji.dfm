inherited fmPeriodeGaji: TfmPeriodeGaji
  Caption = 'Form Periode Gaji'
  ClientHeight = 344
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 294
    ExplicitHeight = 294
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 294
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 294
      ExplicitHeight = 294
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 294
        ExplicitHeight = 294
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 294
        ExplicitHeight = 294
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 89
          Align = alTop
          TabOrder = 0
          object lblSuppliesCategory: TLabel
            Left = 15
            Top = 64
            Width = 36
            Height = 13
            Caption = 'Periode'
            Transparent = True
          end
          object Label1: TLabel
            Left = 15
            Top = 11
            Width = 64
            Height = 13
            Caption = 'Kode Periode'
            Transparent = True
          end
          object Label2: TLabel
            Left = 15
            Top = 37
            Width = 67
            Height = 13
            Caption = 'Nama Periode'
            Transparent = True
          end
          object Label3: TLabel
            Left = 215
            Top = 64
            Width = 20
            Height = 13
            Caption = 'S/D'
            Transparent = True
          end
          object dbeKodePeriode: TcxDBTextEdit
            Left = 84
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'kodeperiode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 101
          end
          object dbeNamaPeriode: TcxDBTextEdit
            Left = 84
            Top = 34
            BeepOnEnter = False
            DataBinding.DataField = 'namaperiode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 101
          end
          object dbeTglAwal: TcxDBDateEdit
            Left = 84
            Top = 61
            DataBinding.DataField = 'tglawal'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 121
          end
          object dbeTglAkhir: TcxDBDateEdit
            Left = 238
            Top = 61
            DataBinding.DataField = 'tglakhir'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 121
          end
        end
        object cgPeriodeGaji: TcxGrid
          Left = 0
          Top = 89
          Width = 560
          Height = 201
          Align = alClient
          TabOrder = 1
          object cgvPeriodeGaji: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dmgeneral.dsPeriodeGajiDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Disini Untuk Menambah Data'
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvPeriodeGajikodeperiode: TcxGridDBColumn
              Caption = 'Kode Periode'
              DataBinding.FieldName = 'kodeperiode'
              Visible = False
              Width = 69
            end
            object cgvPeriodeGajikodegroupgaji: TcxGridDBColumn
              Caption = 'Group Gaji'
              DataBinding.FieldName = 'kodegroupgaji'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmgeneral.cgvPrevGroupGaji
              Properties.KeyFieldNames = 'kodegroupgaji'
              Properties.ListFieldItem = dmgeneral.cgvPrevGroupGajinamagroupgaji
              Width = 150
            end
          end
          object cgPeriodeGajiLevel1: TcxGridLevel
            GridView = cgvPeriodeGaji
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 294
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 272
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
          object cgvExplorerkodeperiode: TcxGridDBColumn
            Caption = 'Kode Periode'
            DataBinding.FieldName = 'kodeperiode'
            Width = 69
          end
          object cgvExplorernamaperiode: TcxGridDBColumn
            Caption = 'Nama Periode'
            DataBinding.FieldName = 'namaperiode'
          end
          object cgvExplorertglawal: TcxGridDBColumn
            Caption = 'Tgl Awal'
            DataBinding.FieldName = 'tglawal'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvExplorertglakhir: TcxGridDBColumn
            Caption = 'Tgl Akhir'
            DataBinding.FieldName = 'tglakhir'
            PropertiesClassName = 'TcxDateEditProperties'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
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
  inherited dsDefault: TDataSource
    DataSet = dmgeneral.qryPeriodeGajiHd
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
