inherited fmPurchaseInvoiceEnt: TfmPurchaseInvoiceEnt
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object btnPrintBarcode: TcxButton
      Left = 581
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPrintBarcode
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
  end
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
          inherited Label6: TLabel
            Left = 7
            Top = 99
            ExplicitLeft = 7
            ExplicitTop = 99
          end
          inherited lblOutlet: TLabel
            Top = 63
            ExplicitTop = 63
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
          inherited dbePurchaseInvoiceDate: TcxDBDateEdit
            TabOrder = 8
          end
          inherited dbeInvoiceDueDay: TcxDBSpinEdit
            TabOrder = 9
          end
          inherited dbchkFlagKonsinyasi: TcxDBCheckBox
            TabOrder = 10
          end
          inherited dbePurchaseInvoiceId: TcxDBTextEdit
            TabOrder = 11
          end
          inherited dbeVendorPurchaseInvoiceId: TcxDBTextEdit
            TabOrder = 12
          end
          inherited dblcbWarehouseId: TcxDBExtLookupComboBox
            TabOrder = 13
          end
          inherited dbeSalesman: TcxDBTextEdit
            Left = 58
            Top = 97
            TabOrder = 7
            ExplicitLeft = 58
            ExplicitTop = 97
            ExplicitWidth = 273
            Width = 273
          end
          inherited dblcOutletId: TcxDBExtLookupComboBox
            Top = 61
            ExplicitTop = 61
          end
          inherited dblcProject: TcxDBExtLookupComboBox
            Top = 61
            ExplicitTop = 61
          end
          object dblcPurchaseCategoryId: TcxDBExtLookupComboBox
            Left = 449
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'purchasecategoryid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevPurchaseCategory
            Properties.KeyFieldNames = 'purchasecategoryid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPurchaseCategorypurchasecategoryname
            Style.Color = clWindow
            TabOrder = 16
            Width = 281
          end
          object dblcCurrencyId: TcxDBExtLookupComboBox
            Left = 449
            Top = 97
            BeepOnEnter = False
            DataBinding.DataField = 'currencyid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGlobal.cgvPrevCurrencyMaster
            Properties.KeyFieldNames = 'currencyid'
            Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
            TabOrder = 17
            Width = 76
          end
          object dbeKurs: TcxDBCurrencyEdit
            Left = 522
            Top = 97
            DataBinding.DataField = 'kurs'
            DataBinding.DataSource = dsDefault
            TabOrder = 18
            Width = 117
          end
        end
        inherited cgPurchaseInvoiceDt: TcxGrid
          Top = 121
          Height = 153
          ExplicitTop = 121
          ExplicitHeight = 153
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgDisplay: TcxGrid
        Width = 296
        Height = 369
      end
    end
  end
  inherited ActionList1: TActionList
    object actPrintBarcode: TAction
      Caption = 'Barcode'
      ImageIndex = 17
      OnExecute = actPrintBarcodeExecute
    end
  end
end
