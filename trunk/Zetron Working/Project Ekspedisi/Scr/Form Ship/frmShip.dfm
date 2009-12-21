inherited fmShip: TfmShip
  Caption = 'Kapal'
  ClientHeight = 532
  ClientWidth = 698
  ExplicitTop = -69
  ExplicitWidth = 706
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 698
    ExplicitWidth = 698
  end
  inherited dxDockSite1: TdxDockSite
    Width = 698
    Height = 482
    ExplicitWidth = 698
    ExplicitHeight = 482
    DockType = 0
    OriginalWidth = 698
    OriginalHeight = 482
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 670
      Height = 482
      ExplicitWidth = 670
      ExplicitHeight = 482
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 670
        Height = 482
        ExplicitWidth = 670
        ExplicitHeight = 482
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 670
        Height = 482
        ExplicitWidth = 670
        ExplicitHeight = 482
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 666
          Height = 153
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 11
            Top = 6
            Width = 32
            Height = 13
            Caption = 'Kode *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 11
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Nama *'
            Transparent = True
          end
          object Label4: TLabel
            Left = 11
            Top = 42
            Width = 38
            Height = 13
            Caption = 'Lokasi *'
            Transparent = True
          end
          object Label5: TLabel
            Left = 11
            Top = 60
            Width = 59
            Height = 13
            Caption = 'Nama Mesin'
            Transparent = True
          end
          object Label6: TLabel
            Left = 11
            Top = 78
            Width = 50
            Height = 13
            Caption = 'Asal Kapal'
            Transparent = True
          end
          object Label12: TLabel
            Left = 332
            Top = 78
            Width = 61
            Height = 13
            Caption = 'Berat Netto *'
            Transparent = True
          end
          object Label11: TLabel
            Left = 332
            Top = 60
            Width = 62
            Height = 13
            Caption = 'Berat Gross *'
            Transparent = True
          end
          object Label10: TLabel
            Left = 332
            Top = 42
            Width = 29
            Height = 13
            Caption = 'Tinggi'
            Transparent = True
          end
          object Label9: TLabel
            Left = 332
            Top = 24
            Width = 27
            Height = 13
            Caption = 'Lebar'
            Transparent = True
          end
          object Label8: TLabel
            Left = 332
            Top = 6
            Width = 39
            Height = 13
            Caption = 'Panjang'
            Transparent = True
          end
          object Label7: TLabel
            Left = 10
            Top = 97
            Width = 88
            Height = 13
            Caption = 'Tahun Pembuatan'
            Transparent = True
          end
          object dbeShipCode: TcxDBTextEdit
            Left = 121
            Top = 3
            DataBinding.DataField = 'ShipCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.OnEditValueChanged = dbeShipCodePropertiesEditValueChanged
            TabOrder = 0
            Width = 121
          end
          object dbeShipName: TcxDBTextEdit
            Left = 121
            Top = 21
            DataBinding.DataField = 'ShipName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 121
          end
          object dbeStorageLocation: TcxDBExtLookupComboBox
            Left = 121
            Top = 39
            DataBinding.DataField = 'StorageLocationId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = dmEkspedisi.cgvPrevStorageLocation
            Properties.KeyFieldNames = 'StorageLocationId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
            TabOrder = 2
            Width = 145
          end
          object dbeEngineName: TcxDBTextEdit
            Left = 121
            Top = 57
            DataBinding.DataField = 'EngineName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 121
          end
          object dbeOrigin: TcxDBTextEdit
            Left = 121
            Top = 75
            DataBinding.DataField = 'Origin'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 121
          end
          object dbeNettoTon: TcxDBCalcEdit
            Left = 439
            Top = 75
            DataBinding.DataField = 'NettoTon'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 72
          end
          object dbeGrossTon: TcxDBCalcEdit
            Left = 439
            Top = 57
            DataBinding.DataField = 'GrossTon'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 72
          end
          object dbeTinggi: TcxDBCalcEdit
            Left = 439
            Top = 39
            DataBinding.DataField = 'T'
            DataBinding.DataSource = dsDefault
            TabOrder = 7
            Width = 72
          end
          object dbeLebar: TcxDBCalcEdit
            Left = 439
            Top = 21
            DataBinding.DataField = 'L'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 72
          end
          object dbePanjang: TcxDBCalcEdit
            Left = 439
            Top = 3
            DataBinding.DataField = 'P'
            DataBinding.DataSource = dsDefault
            TabOrder = 9
            Width = 72
          end
          object dbeYearMade: TcxDBTextEdit
            Left = 121
            Top = 93
            DataBinding.DataField = 'YearMade'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 10
            Width = 40
          end
          object PPosisi: TPanel
            Left = 1
            Top = 120
            Width = 664
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
            TabOrder = 11
            object LPosisi: TLabel
              Left = 1
              Top = 1
              Width = 66
              Height = 30
              Align = alLeft
              Caption = 'Panjang'
              Color = 12894974
              ParentColor = False
              Transparent = True
              Layout = tlCenter
              ExplicitHeight = 20
            end
            object LWaktu: TLabel
              Left = 597
              Top = 1
              Width = 66
              Height = 30
              Align = alRight
              Caption = 'Panjang'
              Transparent = True
              Layout = tlCenter
              ExplicitHeight = 20
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 153
          Width = 666
          Height = 325
          Align = alClient
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 1
            Top = 1
            Width = 664
            Height = 323
            ActivePage = cxTabSheet1
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 317
            ClientRectLeft = 3
            ClientRectRight = 624
            ClientRectTop = 3
            object tsDetail: TcxTabSheet
              ImageIndex = 3
              object cgShipCrew: TcxGrid
                Left = 0
                Top = 25
                Width = 621
                Height = 289
                Align = alClient
                TabOrder = 0
                object cgvShipCrew: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = True
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsShipCrew
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Footer = True
                  object cgvShipCrewPositionName: TcxGridDBColumn
                    Caption = 'Posisi'
                    DataBinding.FieldName = 'PositionId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Properties.View = dmEkspedisi.cgvPrevPositionCrew
                    Properties.KeyFieldNames = 'PositionId'
                    Properties.ListFieldItem = dmEkspedisi.cgvPrevPositionCrewPositionName
                    Options.Editing = False
                  end
                  object cgvShipCrewShipCrewName: TcxGridDBColumn
                    Caption = 'Nama Crew'
                    DataBinding.FieldName = 'ShipCrewName'
                    Options.Editing = False
                    Width = 172
                  end
                end
                object cgShipCrewLevel1: TcxGridLevel
                  GridView = cgvShipCrew
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 621
                Height = 25
                Align = alTop
                Caption = 'Crew Kapal'
                TabOrder = 1
              end
            end
            object TcxTabSheet
              ImageIndex = 4
              object Panel6: TPanel
                Left = 0
                Top = 25
                Width = 621
                Height = 289
                Align = alClient
                Caption = 'Panel6'
                TabOrder = 0
                object Splitter1: TSplitter
                  Left = 204
                  Top = 1
                  Height = 287
                  ExplicitLeft = 360
                  ExplicitTop = 176
                  ExplicitHeight = 100
                end
                object cgShipProperty: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 203
                  Height = 287
                  Align = alLeft
                  TabOrder = 0
                  object cgvShipProperty: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    NavigatorButtons.First.Visible = False
                    NavigatorButtons.PriorPage.Visible = False
                    NavigatorButtons.Prior.Visible = False
                    NavigatorButtons.Next.Visible = False
                    NavigatorButtons.NextPage.Visible = False
                    NavigatorButtons.Last.Visible = False
                    NavigatorButtons.SaveBookmark.Visible = True
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    DataController.DataSource = dsShipProperty
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    NewItemRow.Visible = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object cgvShipPropertyProperty: TcxGridDBColumn
                      Caption = 'Master'
                      DataBinding.FieldName = 'Property'
                      Width = 164
                    end
                  end
                  object cxGridLevel2: TcxGridLevel
                    GridView = cgvShipProperty
                  end
                end
                object cgShipPropertyDetail: TcxGrid
                  Left = 207
                  Top = 1
                  Width = 413
                  Height = 287
                  Align = alClient
                  TabOrder = 1
                  object cgvShipPropertyDetail: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    NavigatorButtons.First.Visible = False
                    NavigatorButtons.PriorPage.Visible = False
                    NavigatorButtons.Prior.Visible = False
                    NavigatorButtons.Next.Visible = False
                    NavigatorButtons.NextPage.Visible = False
                    NavigatorButtons.Last.Visible = False
                    NavigatorButtons.SaveBookmark.Visible = True
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    DataController.DataSource = dsShipPropertyDetail
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    NewItemRow.Visible = True
                    OptionsView.Navigator = True
                    OptionsView.CellAutoHeight = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object cgvShipPropertyDetailDetail: TcxGridDBColumn
                      DataBinding.FieldName = 'Detail'
                      Width = 95
                    end
                    object cgvShipPropertyDetailValue: TcxGridDBColumn
                      Caption = 'Keterangan 1'
                      DataBinding.FieldName = 'Value'
                      PropertiesClassName = 'TcxMemoProperties'
                      Properties.ScrollBars = ssBoth
                      Properties.VisibleLineCount = 4
                      Width = 145
                    end
                    object cgvShipPropertyDetailKeterangan: TcxGridDBColumn
                      Caption = 'Keterangan 2'
                      DataBinding.FieldName = 'Keterangan'
                      PropertiesClassName = 'TcxMemoProperties'
                      Properties.ScrollBars = ssBoth
                      Width = 170
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cgvShipPropertyDetail
                  end
                end
              end
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 621
                Height = 25
                Align = alTop
                Caption = 'Data Kapal'
                TabOrder = 1
              end
            end
            object cxTabSheet2: TcxTabSheet
              ImageIndex = 4
              object cgShipHistory: TcxGrid
                Left = 0
                Top = 25
                Width = 621
                Height = 289
                Align = alClient
                TabOrder = 0
                object cgvShipHistory: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = True
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsShipHistory
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.Visible = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cgvShipHistoryCek: TcxGridDBColumn
                    DataBinding.FieldName = 'Cek'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                  end
                  object cgvShipHistoryHistoryDate: TcxGridDBColumn
                    Caption = 'Tanggal'
                    DataBinding.FieldName = 'HistoryDate'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.Kind = ckDateTime
                  end
                  object cgvShipHistoryKet1: TcxGridDBColumn
                    Caption = 'Keterangan 1'
                    DataBinding.FieldName = 'Ket1'
                  end
                  object cgvShipHistoryket2: TcxGridDBColumn
                    Caption = 'Keterangan 2'
                    DataBinding.FieldName = 'ket2'
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cgvShipHistory
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 621
                Height = 25
                Align = alTop
                Caption = 'Historis Maintenance'
                TabOrder = 1
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 25
                Width = 621
                Height = 289
                Align = alClient
                TabOrder = 0
                object cgvDependencies: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Delete.Visible = False
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = False
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsLog
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesLogId: TcxGridDBColumn
                    DataBinding.FieldName = 'LogId'
                  end
                  object cgvDependenciesUser: TcxGridDBColumn
                    DataBinding.FieldName = 'User'
                  end
                  object cgvDependenciesTransactionDate: TcxGridDBColumn
                    DataBinding.FieldName = 'TransactionDate'
                  end
                  object cgvDependenciesAction: TcxGridDBColumn
                    DataBinding.FieldName = 'Action'
                  end
                  object cgvDependenciesTableName: TcxGridDBColumn
                    DataBinding.FieldName = 'TableName'
                  end
                  object cgvDependenciesDescription: TcxGridDBColumn
                    DataBinding.FieldName = 'Description'
                  end
                end
                object cgDependenciesLevel1: TcxGridLevel
                  GridView = cgvDependencies
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 621
                Height = 25
                Align = alTop
                Caption = 'User Activity Log'
                TabOrder = 1
              end
            end
            object cxTabSheet1: TcxTabSheet
              ImageIndex = 4
              ExplicitLeft = 1
              object Splitter2: TSplitter
                Left = 340
                Top = 25
                Height = 289
                Align = alRight
                ExplicitLeft = 424
                ExplicitTop = 22
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 621
                Height = 25
                Align = alTop
                Caption = 'Gambar'
                TabOrder = 0
              end
              object ImgShip: TcxImage
                Left = 0
                Top = 25
                Align = alClient
                Properties.GraphicClassName = 'TJPEGImage'
                TabOrder = 1
                ExplicitLeft = 296
                ExplicitTop = 208
                ExplicitWidth = 140
                ExplicitHeight = 100
                Height = 289
                Width = 340
              end
              object Panel9: TPanel
                Left = 343
                Top = 25
                Width = 278
                Height = 289
                Align = alRight
                Caption = 'Panel9'
                TabOrder = 2
                object Splitter3: TSplitter
                  Left = 1
                  Top = 129
                  Width = 276
                  Height = 3
                  Cursor = crVSplit
                  Align = alTop
                  ExplicitWidth = 159
                end
                object CgShipImage: TcxGrid
                  Left = 1
                  Top = 132
                  Width = 276
                  Height = 156
                  Align = alClient
                  TabOrder = 0
                  ExplicitTop = 1
                  ExplicitWidth = 183
                  ExplicitHeight = 128
                  object cgvShipImage: TcxGridDBTableView
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
                    OnFocusedRecordChanged = cgvShipImageFocusedRecordChanged
                    DataController.DataSource = dsShipImage
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.Navigator = True
                    OptionsView.GroupByBox = False
                    object cgvShipImageNo: TcxGridDBColumn
                      DataBinding.FieldName = 'No'
                      Width = 20
                    end
                    object cgvShipImageDescription: TcxGridDBColumn
                      DataBinding.FieldName = 'Description'
                    end
                  end
                  object CgShipImagexGridLevel4: TcxGridLevel
                    GridView = cgvShipImage
                  end
                end
                object cxGrid2: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 276
                  Height = 128
                  Align = alTop
                  TabOrder = 1
                  ExplicitWidth = 183
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
                    OnFocusedRecordChanged = cgvShipImageFocusedRecordChanged
                    DataController.DataSource = dsShipImage
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.Navigator = True
                    OptionsView.GroupByBox = False
                    object cxGridDBColumn1: TcxGridDBColumn
                      DataBinding.FieldName = 'No'
                      Width = 20
                    end
                    object cxGridDBColumn2: TcxGridDBColumn
                      DataBinding.FieldName = 'Description'
                    end
                  end
                  object cxGridLevel4: TcxGridLevel
                    GridView = cxGridDBTableView1
                  end
                end
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 482
      ExplicitLeft = 0
      ExplicitHeight = 482
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 460
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ShipId: TcxGridDBColumn
            DataBinding.FieldName = 'ShipId'
            Visible = False
          end
          object cxGrid1DBTableView1ShipCrewId: TcxGridDBColumn
            Caption = 'Nahkoda'
            DataBinding.FieldName = 'ShipCrewId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn
            Caption = 'Penyimpanan'
            DataBinding.FieldName = 'StorageLocationId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cxGrid1DBTableView1ShipCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ShipCode'
          end
          object cxGrid1DBTableView1ShipName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ShipName'
          end
          object cxGrid1DBTableView1EngineName: TcxGridDBColumn
            Caption = 'Mesin'
            DataBinding.FieldName = 'EngineName'
            Visible = False
          end
          object cxGrid1DBTableView1Origin: TcxGridDBColumn
            Caption = 'Asal'
            DataBinding.FieldName = 'Origin'
            Visible = False
          end
          object cxGrid1DBTableView1YearMade: TcxGridDBColumn
            Caption = 'Tahun Pembuatan'
            DataBinding.FieldName = 'YearMade'
            Visible = False
          end
          object cxGrid1DBTableView1P: TcxGridDBColumn
            DataBinding.FieldName = 'P'
            Visible = False
          end
          object cxGrid1DBTableView1L: TcxGridDBColumn
            DataBinding.FieldName = 'L'
            Visible = False
          end
          object cxGrid1DBTableView1T: TcxGridDBColumn
            DataBinding.FieldName = 'T'
            Visible = False
          end
          object cxGrid1DBTableView1GrossTon: TcxGridDBColumn
            Caption = 'Berat Gross'
            DataBinding.FieldName = 'GrossTon'
            Visible = False
          end
          object cxGrid1DBTableView1NettoTon: TcxGridDBColumn
            Caption = 'Berat Netto'
            DataBinding.FieldName = 'NettoTon'
            Visible = False
          end
          object cxGrid1DBTableView1FlagMuat: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'FlagMuat'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Muat'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Tutup'
                Value = '0'
              end>
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 552
    Top = 64
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 584
    Top = 64
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 616
    Top = 64
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryShip
    Left = 552
    Top = 96
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 648
    Top = 64
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 584
    Top = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryShipCrew: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ShipCrew'#13#10'order by positionid'
    DataSource = dsDefault
    IndexFieldNames = 'StorageLocationId'
    MasterFields = 'StorageLocationId'
    Parameters = <>
    Left = 144
    Top = 256
  end
  object dsShipCrew: TDataSource
    DataSet = qryShipCrew
    Left = 248
    Top = 256
  end
  object dsShipProperty: TDataSource
    DataSet = qryShipProperty
    Left = 248
    Top = 304
  end
  object qryShipProperty: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ShipProperty'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'ShipId'
    MasterFields = 'ShipId'
    Parameters = <>
    Left = 144
    Top = 304
  end
  object dsShipPropertyDetail: TDataSource
    DataSet = qryShipPropertyDetail
    Left = 248
    Top = 352
  end
  object qryShipPropertyDetail: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ShipPropertyDetail'#13#10
    DataSource = dsShipProperty
    IndexFieldNames = 'ShipId;Property'
    MasterFields = 'ShipId;Property'
    Parameters = <>
    Left = 144
    Top = 352
  end
  object qryShipHistory: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryShipHistoryNewRecord
    CommandText = 'select * '#13#10'from ShipHistory'#13#10#13#10
    DataSource = dsDefault
    IndexFieldNames = 'ShipId'
    MasterFields = 'ShipId'
    Parameters = <>
    Left = 144
    Top = 400
  end
  object dsShipHistory: TDataSource
    DataSet = qryShipHistory
    Left = 248
    Top = 400
  end
  object qryLastPosition: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select a.shipcode,'#13#10'LastPosition=(select top 1 Shipposition from' +
      ' Shipdailylog where ShipId=a.ShipId order by ShipLogDate desc) ,' +
      #13#10'LastUpdate=(select top 1 ShipLogDate from Shipdailylog where S' +
      'hipId=a.ShipId order by ShipLogDate desc) '#13#10'from Ship a'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'shipcode'
    MasterFields = 'ShipCode'
    Parameters = <>
    Left = 424
    Top = 256
  end
  object qryLog: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from transactionlog'#13#10'where tablename='#39'Ship'#39
    Parameters = <>
    Left = 424
    Top = 304
  end
  object dsLog: TDataSource
    DataSet = qryLog
    Left = 488
    Top = 304
  end
  object qryShipImage: TADODataSet
    Active = True
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    OnNewRecord = qryShipImageNewRecord
    CommandText = 'select * '#13#10'from ShipImage'#13#10'where ShipId=ShipId'
    DataSource = dsDefault
    IndexFieldNames = 'ShipId'
    MasterFields = 'ShipId'
    Parameters = <>
    Left = 424
    Top = 360
  end
  object dsShipImage: TDataSource
    DataSet = qryShipImage
    Left = 488
    Top = 360
  end
  object OpenDialog1: TOpenDialog
    Left = 408
    Top = 96
  end
end
