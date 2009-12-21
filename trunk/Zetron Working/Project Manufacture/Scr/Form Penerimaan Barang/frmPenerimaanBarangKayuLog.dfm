inherited fmPenerimaanBarangKayuLog: TfmPenerimaanBarangKayuLog
  Caption = 'Penerimaan Kayu Log'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
        inherited pnlHeader: TPanel
          inherited pnlLeft: TPanel
            ExplicitHeight = 81
          end
          inherited pcBody: TcxPageControl
            ExplicitHeight = 81
            inherited tsInfo: TcxTabSheet
              ExplicitHeight = 81
              object Label1: TLabel [0]
                Left = 6
                Top = 62
                Width = 60
                Height = 13
                Caption = 'Total M3 Inv'
                Transparent = True
              end
              object cxDBCheckBox1: TcxDBCheckBox [2]
                Left = 6
                Top = 30
                Caption = 'No Kayu Muat'
                ParentColor = False
                TabOrder = 0
                Transparent = True
                Width = 95
              end
              object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [3]
                Left = 81
                Top = 54
                BeepOnEnter = False
                DataBinding.DataSource = dsDefault
                TabOrder = 1
                Width = 160
              end
              inherited dblcTallyman: TcxDBExtLookupComboBox
                TabOrder = 2
              end
            end
            inherited tsDipendencies: TcxTabSheet
              ExplicitWidth = 0
              ExplicitHeight = 0
              inherited cgDependencies: TcxGrid
                Height = 81
                ExplicitHeight = 81
              end
            end
          end
        end
        object cgLPB: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 282
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          ExplicitTop = 81
          ExplicitHeight = 306
          object cgvLPB: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Append.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
                Column = cgvLPBKubikasiLog
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Barang'
              end
              item
                Caption = 'Log'
              end
              item
              end>
            object cgvLPBBatchId: TcxGridDBBandedColumn
              Caption = 'No Log'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvLPBItemId: TcxGridDBBandedColumn
              Caption = 'Nama'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvLPBCondition: TcxGridDBBandedColumn
              Caption = 'Kondisi'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvLPBD1: TcxGridDBBandedColumn
              Caption = 'D1'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvLPBD2: TcxGridDBBandedColumn
              Caption = 'D2'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvLPBD3: TcxGridDBBandedColumn
              Caption = 'D3'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvLPBD4: TcxGridDBBandedColumn
              Caption = 'D4'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvLPBDInvoice: TcxGridDBBandedColumn
              Caption = 'D Rata'
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvLPBPLogInvoice: TcxGridDBBandedColumn
              Caption = 'P'
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvLPBKubikasiLog: TcxGridDBBandedColumn
              Caption = 'M3'
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvLPBQty: TcxGridDBBandedColumn
              Caption = 'Qty'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvLPBGrade: TcxGridDBBandedColumn
              Caption = 'Kwalitas'
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvLPBProsentase: TcxGridDBBandedColumn
              Caption = 'Prosentase'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cgvSJ: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cgvSJNoSJ
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvSJNoSJ: TcxGridDBColumn
              Caption = 'No SJ'
            end
            object cgvSJTanggal: TcxGridDBColumn
              Caption = 'Tanggal'
            end
            object cgvSJNoPolisi: TcxGridDBColumn
              Caption = 'No Polisi'
            end
            object cgvSJJenisKendaraan: TcxGridDBColumn
              Caption = 'Kendaraan'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Truk'
                  ImageIndex = 0
                  Value = 'Truk'
                end
                item
                  Description = 'Pickup'
                  Value = 'Pickup'
                end
                item
                  Description = 'Trailer'
                  Value = 'Trailer'
                end>
            end
            object cgvSJNoFAKO: TcxGridDBColumn
              Caption = 'No FA-KO'
            end
            object cgvSJNoCont: TcxGridDBColumn
              Caption = 'No Cont'
            end
            object cgvSJDescription: TcxGridDBColumn
              Caption = 'Keterangan'
            end
          end
          object cgLPBLevel1: TcxGridLevel
            Caption = 'Penerimaan'
            GridView = cgvLPB
          end
          object cgLPBLevel2: TcxGridLevel
            Caption = 'SJ && FA-KO'
            GridView = cgvSJ
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      Height = 140
      ExplicitLeft = 0
      ExplicitHeight = 140
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        inherited cgvPrevDisplay: TcxGridDBTableView
          inherited cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
          end
        end
      end
    end
  end
end
