inherited fmSPKTimber: TfmSPKTimber
  Caption = 'Form SPK Kayu'
  ExplicitWidth = 780
  ExplicitHeight = 495
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
        inherited pnlTop: TPanel
          object Label4: TLabel [6]
            Left = 497
            Top = 6
            Width = 37
            Height = 13
            Caption = 'Material'
          end
          inherited dbeSPKDate: TcxDBDateEdit
            ExplicitHeight = 19
          end
          inherited dbeSPKId: TcxDBTextEdit
            ExplicitHeight = 19
          end
          inherited dblcSalesOrderId: TcxDBExtLookupComboBox
            ExplicitHeight = 19
          end
          inherited dbeProductionDate: TcxDBDateEdit
            ExplicitHeight = 19
          end
          inherited dbeFinishDate: TcxDBDateEdit
            ExplicitHeight = 19
          end
          object dblcMaterial: TcxDBExtLookupComboBox [12]
            Left = 540
            Top = 4
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevMaterial
            Properties.KeyFieldNames = 'MaterialId'
            Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            TabOrder = 6
            Width = 175
          end
          inherited dbeColorCode: TcxDBTextEdit
            ExplicitHeight = 19
          end
        end
        object pnlDetail: TPanel
          Left = 0
          Top = 67
          Width = 740
          Height = 320
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object cgRawMaterial: TcxGrid
            Left = 0
            Top = 0
            Width = 350
            Height = 320
            Align = alLeft
            TabOrder = 0
            object cgvRawMaterial: TcxGridDBBandedTableView
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
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Bahan Baku'
                end>
              object cgvRawMaterialT: TcxGridDBBandedColumn
                Caption = ' T'
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvRawMaterialL: TcxGridDBBandedColumn
                Caption = ' L'
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvRawMaterialP: TcxGridDBBandedColumn
                Caption = ' P'
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvRawMaterialQty: TcxGridDBBandedColumn
                Caption = ' Qty'
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvRawMaterialM3: TcxGridDBBandedColumn
                Caption = ' M3'
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
            end
            object cgRawMaterialLevel1: TcxGridLevel
              GridView = cgvRawMaterial
            end
          end
          object cgFinishGood: TcxGrid
            Left = 354
            Top = 0
            Width = 386
            Height = 320
            Align = alClient
            TabOrder = 1
            object cgvFinishGood: TcxGridDBBandedTableView
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
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Barang Jadi'
                end>
              object cgvFinishGoodT: TcxGridDBBandedColumn
                Caption = ' T'
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvFinishGoodL: TcxGridDBBandedColumn
                Caption = ' L'
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvFinishGoodP: TcxGridDBBandedColumn
                Caption = ' P'
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvFinishGoodPcs: TcxGridDBBandedColumn
                Caption = ' Pcs'
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvFinishGoodM3: TcxGridDBBandedColumn
                Caption = ' M3'
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cgvFinishGoodKeterangan: TcxGridDBBandedColumn
                Caption = ' Ket'
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
            end
            object cgFinishGoodLevel1: TcxGridLevel
              GridView = cgvFinishGood
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 350
            Top = 0
            Width = 4
            Height = 320
            HotZoneClassName = 'TcxXPTaskBarStyle'
            Control = cgRawMaterial
          end
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
      inherited cgPrevDisplay: TcxGrid
        Width = 300
        Height = 140
      end
    end
  end
end
