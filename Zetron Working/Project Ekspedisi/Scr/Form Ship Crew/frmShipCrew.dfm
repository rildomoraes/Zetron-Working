inherited fmShipCrew: TfmShipCrew
  Caption = 'Crew Kapal'
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
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 150
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 7
            Top = 6
            Width = 32
            Height = 13
            Caption = 'Kode *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 7
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Nama *'
            Transparent = True
          end
          object dbeCrewCode: TcxDBTextEdit
            Left = 52
            Top = 3
            DataBinding.DataField = 'ShipCrewCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object dbeCrewName: TcxDBTextEdit
            Left = 52
            Top = 21
            DataBinding.DataField = 'ShipCrewName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 151
          end
          object PPosisi: TPanel
            Left = 1
            Top = 117
            Width = 558
            Height = 32
            Align = alBottom
            Color = 13474046
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object LPosisi: TLabel
              Left = 1
              Top = 1
              Width = 191
              Height = 30
              Align = alLeft
              Caption = 'Lokasi Jabatan / Status'
              Color = 12894974
              ParentColor = False
              Transparent = True
              Layout = tlCenter
              ExplicitHeight = 20
            end
            object LWaktu: TLabel
              Left = 501
              Top = 1
              Width = 56
              Height = 30
              Align = alRight
              Caption = 'Alasan'
              Transparent = True
              Layout = tlCenter
              ExplicitHeight = 20
            end
          end
          object cxImage1: TcxImage
            Left = 405
            Top = 6
            TabOrder = 3
            Height = 100
            Width = 140
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 150
          Width = 560
          Height = 162
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object cxGrid2: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 160
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Visible = True
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = True
              NavigatorButtons.Cancel.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'Tgl Mutasi'
              end
              object cxGridDBTableView1Column3: TcxGridDBColumn
                Caption = 'Lokasi'
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
                Caption = 'Posisi'
                Width = 151
              end
              object cxGridDBTableView1Column4: TcxGridDBColumn
                Caption = 'Status'
              end
              object cxGridDBTableView1Column5: TcxGridDBColumn
                Caption = 'Keterangan'
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
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
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgShipCrew: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgShipCrewShipCrewId: TcxGridDBColumn
            DataBinding.FieldName = 'ShipCrewId'
            Visible = False
            VisibleForCustomization = False
          end
          object cgShipCrewShipCrewCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ShipCrewCode'
            Width = 69
          end
          object cgShipCrewShipCrewName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ShipCrewName'
            Width = 133
          end
          object cgShipCrewPositionId: TcxGridDBColumn
            Caption = 'Posisi'
            DataBinding.FieldName = 'PositionId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.View = dmEkspedisi.cgvPrevPositionCrew
            Properties.KeyFieldNames = 'PositionId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevPositionCrewPositionName
          end
          object cgShipCrewStorageLocationId: TcxGridDBColumn
            DataBinding.FieldName = 'StorageLocationId'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cgShipCrew
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 232
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 400
    Top = 232
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 432
    Top = 232
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryShipCrew
    Left = 368
    Top = 264
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 464
    Top = 232
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 400
    Top = 264
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
