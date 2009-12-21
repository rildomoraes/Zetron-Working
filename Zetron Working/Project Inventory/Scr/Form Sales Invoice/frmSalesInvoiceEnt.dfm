inherited fmSalesInvoiceEnt: TfmSalesInvoiceEnt
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
          Height = 121
          ExplicitHeight = 121
          inherited lblOutlet: TLabel
            Top = 63
            ExplicitTop = 63
          end
          inherited Label6: TLabel
            Left = 7
            Top = 99
            ExplicitLeft = 7
            ExplicitTop = 99
          end
          object lblSalesCategory: TLabel [6]
            Left = 346
            Top = 81
            Width = 89
            Height = 13
            Caption = 'Kategori Penjualan'
            Transparent = True
          end
          object Label8: TLabel [7]
            Left = 346
            Top = 99
            Width = 97
            Height = 18
            AutoSize = False
            Caption = 'Mata Uang && Kurs'
            Transparent = True
          end
          inherited dbeSalesInvoiceDate: TcxDBDateEdit
            TabOrder = 8
          end
          inherited dbeInvoiceDueDay: TcxDBSpinEdit
            TabOrder = 9
          end
          inherited dbeSalesInvoiceId: TcxDBTextEdit
            TabOrder = 10
          end
          inherited dbeSalesInvoiceIdInternal: TcxDBTextEdit
            TabOrder = 11
          end
          inherited dblcbWarehouseId: TcxDBExtLookupComboBox
            TabOrder = 12
          end
          inherited dblcOutletId: TcxDBExtLookupComboBox
            Top = 61
            ExplicitTop = 61
          end
          inherited dblcProject: TcxDBExtLookupComboBox
            Top = 61
            ExplicitTop = 61
          end
          object dblcSalesCategoryId: TcxDBExtLookupComboBox [22]
            Left = 448
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'salescategoryid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevSalesCategory
            Properties.KeyFieldNames = 'salescategoryid'
            Properties.ListFieldItem = dmGeneral.cgvPrevSalesCategorysalescategoryname
            TabOrder = 15
            Width = 279
          end
          object dblcCurrencyId: TcxDBExtLookupComboBox [23]
            Left = 448
            Top = 97
            BeepOnEnter = False
            DataBinding.DataField = 'currencyid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGlobal.cgvPrevCurrencyMaster
            Properties.KeyFieldNames = 'currencyid'
            Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
            TabOrder = 16
            Width = 76
          end
          object dbeKurs: TcxDBCurrencyEdit [24]
            Left = 521
            Top = 97
            DataBinding.DataField = 'kurs'
            DataBinding.DataSource = dsDefault
            TabOrder = 17
            Width = 117
          end
          inherited dblcSalesmanId: TcxDBExtLookupComboBox
            Left = 58
            Top = 97
            TabOrder = 7
            ExplicitLeft = 58
            ExplicitTop = 97
            ExplicitWidth = 271
            Width = 271
          end
        end
        inherited cgSalesInvoiceDt: TcxGrid
          Top = 121
          Height = 155
          ExplicitTop = 121
          ExplicitHeight = 155
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
end
