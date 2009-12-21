inherited fmSalesInvoicePro: TfmSalesInvoicePro
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      ExplicitHeight = 19
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
          object lblOutlet: TLabel [4]
            Left = 346
            Top = 81
            Width = 73
            Height = 13
            Caption = 'Outlet && Proyek'
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
          inherited dbeSalesInvoiceDate: TcxDBDateEdit
            TabOrder = 7
          end
          inherited dbeInvoiceDueDay: TcxDBSpinEdit
            TabOrder = 8
          end
          inherited dbeSalesInvoiceId: TcxDBTextEdit
            TabOrder = 9
          end
          inherited dbeSalesInvoiceIdInternal: TcxDBTextEdit
            TabOrder = 10
          end
          inherited dblcbWarehouseId: TcxDBExtLookupComboBox
            TabOrder = 11
          end
          object dblcShippingId: TcxDBExtLookupComboBox
            Left = 58
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'ShippingId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevCustomerShipping
            Properties.KeyFieldNames = 'ShippingId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerShippingShippingName
            TabOrder = 6
            Width = 271
          end
          object dblcOutletId: TcxDBExtLookupComboBox
            Left = 448
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            TabOrder = 13
            Width = 145
          end
          object dblcProject: TcxDBExtLookupComboBox
            Left = 590
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            TabOrder = 14
            Width = 137
          end
          object dblcSalesmanId: TcxDBExtLookupComboBox
            Left = 448
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'SalesmanId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevSalesman
            Properties.KeyFieldNames = 'employeeid'
            Properties.ListFieldItem = dmGeneral.cgvPrevSalesmanemployeename
            TabOrder = 12
            Width = 279
          end
        end
        inherited cgSalesInvoiceDt: TcxGrid
          inherited cgvSalesInvoiceDt: TcxGridDBBandedTableView
            NavigatorButtons.OnButtonClick = cgvSalesInvoiceDtNavigatorButtonsButtonClick
          end
        end
        inherited cxPageControl1: TcxPageControl
          inherited tsAmount: TcxTabSheet
            inherited lblTotal: TLabel
              Left = 429
              ExplicitLeft = 429
            end
            inherited lblOutstanding: TLabel
              Left = 429
              ExplicitLeft = 429
            end
            inherited lblPPh22: TLabel
              Visible = True
            end
            inherited lblPPh22Percent: TLabel
              Visible = True
            end
            inherited btnPayment: TcxButton
              Left = 429
              ExplicitLeft = 429
            end
            inherited dbePPH22: TcxDBSpinEdit
              Visible = True
            end
            inherited edtPPH22Amount: TcxCurrencyEdit
              Visible = True
            end
            inherited dbeMeterai: TcxDBCurrencyEdit
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
