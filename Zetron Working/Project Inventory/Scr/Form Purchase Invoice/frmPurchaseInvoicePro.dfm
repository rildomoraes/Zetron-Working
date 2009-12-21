inherited fmPurchaseInvoicePro: TfmPurchaseInvoicePro
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
          Height = 105
          ExplicitHeight = 105
          object Label5: TLabel [4]
            Left = 7
            Top = 82
            Width = 43
            Height = 13
            AutoSize = False
            Caption = 'Shipping'
            Transparent = True
          end
          object Label6: TLabel [5]
            Left = 346
            Top = 63
            Width = 46
            Height = 13
            Caption = 'Salesman'
            Transparent = True
          end
          object lblOutlet: TLabel [6]
            Left = 346
            Top = 81
            Width = 73
            Height = 13
            Caption = 'Outlet && Proyek'
            Transparent = True
          end
          inherited dbePurchaseInvoiceDate: TcxDBDateEdit
            TabOrder = 7
          end
          inherited dbeInvoiceDueDay: TcxDBSpinEdit
            TabOrder = 8
          end
          inherited dbchkFlagKonsinyasi: TcxDBCheckBox
            TabOrder = 9
          end
          inherited dbePurchaseInvoiceId: TcxDBTextEdit
            TabOrder = 10
          end
          inherited dbeVendorPurchaseInvoiceId: TcxDBTextEdit
            TabOrder = 11
          end
          inherited dblcbWarehouseId: TcxDBExtLookupComboBox
            TabOrder = 12
          end
          object dblcShippingId: TcxDBExtLookupComboBox
            Left = 58
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'ShippingId'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 273
          end
          object dbeSalesman: TcxDBTextEdit
            Left = 449
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'Salesman'
            DataBinding.DataSource = dsDefault
            Style.Color = clWindow
            TabOrder = 13
            Width = 281
          end
          object dblcOutletId: TcxDBExtLookupComboBox
            Left = 449
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            Style.Color = clWindow
            TabOrder = 14
            Width = 141
          end
          object dblcProject: TcxDBExtLookupComboBox
            Left = 587
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            Style.Color = clWindow
            TabOrder = 15
            Width = 143
          end
        end
        inherited cgPurchaseInvoiceDt: TcxGrid
          Top = 105
          Height = 169
          ExplicitTop = 105
          ExplicitHeight = 169
          inherited cgvPurchaseInvoiceDt: TcxGridDBBandedTableView
            NavigatorButtons.OnButtonClick = cgvPurchaseInvoiceDtNavigatorButtonsButtonClick
            NavigatorButtons.SaveBookmark.Visible = True
          end
        end
        inherited cxPageControl1: TcxPageControl
          inherited tsAmount: TcxTabSheet
            inherited Label1: TLabel
              Visible = True
            end
            inherited Label2: TLabel
              Visible = True
            end
            inherited dbePPH22: TcxDBSpinEdit
              Visible = True
            end
            inherited edtPPH22Amount: TcxCurrencyEdit
              Visible = True
            end
          end
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
