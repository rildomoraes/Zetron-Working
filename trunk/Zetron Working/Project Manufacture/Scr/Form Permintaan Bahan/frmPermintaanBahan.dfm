inherited fmPermintaanBahan: TfmPermintaanBahan
  Caption = 'Form Permintaan & Penerimaan Bahan'
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
          Height = 121
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 9
            Width = 45
            Height = 13
            Caption = 'No BPPB'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 61
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label2: TLabel
            Left = 312
            Top = 24
            Width = 32
            Height = 13
            Caption = 'Proses'
            Transparent = True
          end
          object Label3: TLabel
            Left = 312
            Top = 60
            Width = 31
            Height = 13
            Caption = 'Dibuat'
            Transparent = True
          end
          object Label4: TLabel
            Left = 312
            Top = 78
            Width = 54
            Height = 13
            Caption = 'Diserahkan'
            Transparent = True
          end
          object Label1: TLabel
            Left = 312
            Top = 6
            Width = 51
            Height = 13
            Caption = 'Jenis Kayu'
            Transparent = True
          end
          object Label5: TLabel
            Left = 7
            Top = 25
            Width = 38
            Height = 13
            Caption = 'No SPK'
            Transparent = True
          end
          object Label6: TLabel
            Left = 7
            Top = 43
            Width = 38
            Height = 13
            Caption = 'No LHP'
            Transparent = True
          end
          object Label7: TLabel
            Left = 312
            Top = 42
            Width = 61
            Height = 13
            Caption = 'Asal Gudang'
            Transparent = True
          end
          object Label8: TLabel
            Left = 312
            Top = 96
            Width = 63
            Height = 13
            Caption = 'Diterima Oleh'
            Transparent = True
          end
          object dbeSPKDate: TcxDBDateEdit
            Left = 71
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dbeSPKId: TcxDBTextEdit
            Left = 71
            Top = 6
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 110
          end
          object dbeDibuat: TcxDBDateEdit
            Left = 385
            Top = 57
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 2
            Width = 144
          end
          object dblcProses: TcxDBExtLookupComboBox
            Left = 385
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 202
          end
          object dbeDisetujui: TcxDBDateEdit
            Left = 385
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 4
            Width = 144
          end
          object dblcMaterial: TcxDBExtLookupComboBox
            Left = 385
            Top = 3
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 202
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 71
            Top = 22
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 6
            Width = 110
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 71
            Top = 40
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 110
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
            Left = 385
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 202
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
            Left = 385
            Top = 93
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 9
            Width = 202
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
end
