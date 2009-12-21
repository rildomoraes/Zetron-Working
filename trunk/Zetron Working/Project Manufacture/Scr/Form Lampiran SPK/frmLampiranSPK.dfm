inherited fmLampiranSPK: TfmLampiranSPK
  Caption = 'Form Lampiran SPK'
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
          ExplicitLeft = -1
          ExplicitTop = -1
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 84
            Height = 13
            Caption = 'No Lampiran SPK'
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
          object Label7: TLabel
            Left = 7
            Top = 42
            Width = 19
            Height = 13
            Caption = 'Jam'
            Transparent = True
          end
          object Label2: TLabel
            Left = 312
            Top = 6
            Width = 32
            Height = 13
            Caption = 'Proses'
            Transparent = True
          end
          object Label3: TLabel
            Left = 312
            Top = 24
            Width = 31
            Height = 13
            Caption = 'Dibuat'
            Transparent = True
          end
          object Label4: TLabel
            Left = 312
            Top = 42
            Width = 40
            Height = 13
            Caption = 'Disetujui'
            Transparent = True
          end
          object dbeSPKDate: TcxDBDateEdit
            Left = 96
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dbeSPKId: TcxDBTextEdit
            Left = 96
            Top = 3
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 110
          end
          object dbeDibuat: TcxDBDateEdit
            Left = 369
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 2
            Width = 144
          end
          object dblcProses: TcxDBExtLookupComboBox
            Left = 369
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 202
          end
          object dbeDisetujui: TcxDBDateEdit
            Left = 369
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 4
            Width = 144
          end
          object dbeSPKTime: TcxDBDateEdit
            Left = 96
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 5
            Width = 110
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
