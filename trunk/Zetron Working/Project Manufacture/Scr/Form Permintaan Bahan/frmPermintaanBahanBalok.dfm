inherited fmPermintaanBahanBalok: TfmPermintaanBahanBalok
  Caption = 'Form Permintaan & Penerimaan Bahan (Sawn Timber)'
  ExplicitLeft = -307
  ExplicitTop = -86
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
        object pnlSawnTimber: TPanel
          Left = 0
          Top = 121
          Width = 740
          Height = 266
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 89
          ExplicitHeight = 298
          object cgHasilGradeCutting: TcxGrid
            Left = 373
            Top = 0
            Width = 367
            Height = 266
            Align = alClient
            TabOrder = 1
            object cgvHasilGradeCutting: TcxGridDBBandedTableView
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
                  Column = cgvHasilGradeCuttingNoPalet
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeCuttingM3Cutting
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeCuttingQty
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Barang yang Tersedia'
                end>
              object cgvHasilGradeCuttingNoPalet: TcxGridDBBandedColumn
                Caption = 'No Palet'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingTCutting: TcxGridDBBandedColumn
                Caption = 'T'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingLCutting: TcxGridDBBandedColumn
                Caption = 'L'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingPCutting: TcxGridDBBandedColumn
                Caption = 'P'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingQty: TcxGridDBBandedColumn
                Caption = ' Qty'
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingM3Cutting: TcxGridDBBandedColumn
                Caption = 'M3'
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingGrade: TcxGridDBBandedColumn
                Caption = 'Supplier'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
            end
            object cgHasilGradeCuttingLevel1: TcxGridLevel
              GridView = cgvHasilGradeCutting
            end
          end
          object cgHasilGradeInvoice: TcxGrid
            Left = 0
            Top = 0
            Width = 365
            Height = 266
            Align = alLeft
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 6
            object cgvHasilGradeInvoice: TcxGridDBBandedTableView
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
                  Column = cgvHasilGradeInvoiceColumn1
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeInvoiceKubikasiInvoice
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeInvoiceColumn1
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Barang yang diminta'
                end>
              object cgvHasilGradeInvoiceTInvoice: TcxGridDBBandedColumn
                Caption = 'T1'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceColumn3: TcxGridDBBandedColumn
                Caption = 'T2'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceLInvoice: TcxGridDBBandedColumn
                Caption = 'L1'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceColumn1: TcxGridDBBandedColumn
                Caption = 'L2'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoicePInvoice: TcxGridDBBandedColumn
                Caption = 'P1'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceColumn2: TcxGridDBBandedColumn
                Caption = 'P2'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceKubikasiInvoice: TcxGridDBBandedColumn
                Caption = 'M3'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
            end
            object cgHasilGradeInvoiceLevel1: TcxGridLevel
              GridView = cgvHasilGradeInvoice
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 365
            Top = 0
            Width = 8
            Height = 266
            HotZoneClassName = 'TcxXPTaskBarStyle'
            Control = cgHasilGradeInvoice
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
end
