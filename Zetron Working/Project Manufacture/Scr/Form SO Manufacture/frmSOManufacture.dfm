inherited fmSOManufacture: TfmSOManufacture
  Caption = 'Form Sales Order'
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblVendor: TLabel
            Left = 7
            Top = 42
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 32
            Height = 13
            Caption = 'No SO'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label2: TLabel
            Left = 304
            Top = 6
            Width = 86
            Height = 13
            Caption = 'Tanggal Shipment'
            Transparent = True
          end
          object Label3: TLabel
            Left = 304
            Top = 24
            Width = 87
            Height = 13
            Caption = 'Tanggal Diketahui'
            Transparent = True
          end
          object Label5: TLabel
            Left = 304
            Top = 60
            Width = 56
            Height = 13
            Caption = 'Mengetahui'
            Transparent = True
          end
          object Label1: TLabel
            Left = 7
            Top = 60
            Width = 33
            Height = 13
            Caption = 'Tujuan'
            Transparent = True
          end
          object Label4: TLabel
            Left = 304
            Top = 42
            Width = 88
            Height = 13
            Caption = 'Lokasi Pembuatan'
            Transparent = True
          end
          object dblcCustomerId: TcxDBExtLookupComboBox
            Left = 86
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Style.ButtonTransparency = ebtAlways
            TabOrder = 0
            Width = 202
          end
          object dbePurchaseOrderDate: TcxDBDateEdit
            Left = 86
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Style.ButtonTransparency = ebtAlways
            TabOrder = 1
            Width = 110
          end
          object dbePurchaseOrderId: TcxDBTextEdit
            Left = 86
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 110
          end
          object dbeEndPeriod: TcxDBDateEdit
            Left = 402
            Top = 21
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Style.ButtonTransparency = ebtAlways
            TabOrder = 3
            Width = 121
          end
          object dbeDocument: TcxDBTextEdit
            Left = 402
            Top = 57
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 121
          end
          object dbmInternalMemo: TcxDBMemo
            Left = 529
            Top = 26
            DataBinding.DataField = 'internalmemo'
            DataBinding.DataSource = dsDefault
            Properties.ScrollBars = ssVertical
            TabOrder = 5
            Height = 52
            Width = 209
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 86
            Top = 57
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 121
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 402
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Style.ButtonTransparency = ebtAlways
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 402
            Top = 39
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 121
          end
        end
        object cgPurchaseOrderDt: TcxGrid
          Left = 0
          Top = 89
          Width = 740
          Height = 298
          Align = alClient
          TabOrder = 1
          ExplicitLeft = -1
          ExplicitTop = 88
          object cgvPurchaseOrderBalok: TcxGridDBBandedTableView
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
                Column = cgvPurchaseOrderBalokNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Bands = <
              item
              end
              item
                Caption = 'Cutting'
              end
              item
                Caption = 'Invoice'
              end
              item
              end>
            object cgvPurchaseOrderBalokNo: TcxGridDBBandedColumn
              Caption = ' No'
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokItemId: TcxGridDBBandedColumn
              Caption = 'Jenis Kayu'
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokTCutting: TcxGridDBBandedColumn
              Caption = 'T'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokLCutting: TcxGridDBBandedColumn
              Caption = 'L'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPCutting: TcxGridDBBandedColumn
              Caption = 'P'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokColumn1: TcxGridDBBandedColumn
              Caption = 'Pcs'
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokColumn2: TcxGridDBBandedColumn
              Caption = 'M3'
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokTInvoice: TcxGridDBBandedColumn
              Caption = 'T'
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokLInvoice: TcxGridDBBandedColumn
              Caption = 'L'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPMinInvoice: TcxGridDBBandedColumn
              Caption = 'P'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokPMaxInvoice: TcxGridDBBandedColumn
              Caption = 'Pcs'
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokInterval: TcxGridDBBandedColumn
              Caption = 'M3'
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseOrderBalokKet: TcxGridDBBandedColumn
              Caption = 'Ket'
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cgPurchaseOrderDtLevel1: TcxGridLevel
            Caption = 'Sawn Timber / Square'
            GridView = cgvPurchaseOrderBalok
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
