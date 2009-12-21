inherited fmSalesReturn: TfmSalesReturn
  Caption = 'Retur Penjualan'
  ExplicitWidth = 320
  ExplicitHeight = 240
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
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblCustomer: TLabel
            Left = 9
            Top = 9
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblSalesReturnDate: TLabel
            Left = 346
            Top = 9
            Width = 89
            Height = 13
            Caption = 'Tgl && Jatuh Tempo'
            Transparent = True
          end
          object lblWarehouse: TLabel
            Left = 346
            Top = 45
            Width = 41
            Height = 13
            Caption = 'Gudang '
            Transparent = True
          end
          object lblVendorPurchaseReturnId: TLabel
            Left = 346
            Top = 27
            Width = 81
            Height = 13
            Caption = 'No Retur Internal'
            Transparent = True
          end
          object lblOutlet: TLabel
            Left = 346
            Top = 63
            Width = 28
            Height = 13
            Caption = 'Outlet'
            Transparent = True
          end
          object dblcCustomerId: TcxDBExtLookupComboBox
            Left = 58
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerId
            Properties.OnEditValueChanged = dblcCustomerIdPropertiesEditValueChanged
            TabOrder = 0
            Width = 72
          end
          object dblcCustomerId2: TcxDBExtLookupComboBox
            Left = 129
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
            TabOrder = 1
            Width = 202
          end
          object dbeSalesReturnDate: TcxDBDateEdit
            Left = 449
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'Salesreturndate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 6
            Width = 110
          end
          object dbeSalesReturnId: TcxDBTextEdit
            Left = 449
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'Salesreturnid'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbeSalesReturnIdPropertiesEditValueChanged
            TabOrder = 8
            Width = 110
          end
          object dblcbWarehouseId: TcxDBExtLookupComboBox
            Left = 449
            Top = 43
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
            TabOrder = 10
            Width = 281
          end
          object dblcOutletId: TcxDBExtLookupComboBox
            Left = 449
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            TabOrder = 11
            Width = 281
          end
          object dbeSalesReturnIdInternal: TcxDBTextEdit
            Left = 558
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'SalesReturnIdInternal'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 9
            Width = 172
          end
          object dbeInvoiceDueDay: TcxDBSpinEdit
            Left = 558
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'InvoiceDueDay'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Increment = 5.000000000000000000
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 7
            Width = 81
          end
          object edtAddress: TcxMemo
            Left = 58
            Top = 25
            Style.Color = clWhite
            TabOrder = 2
            Height = 37
            Width = 273
          end
          object edtCityName: TcxExtLookupComboBox
            Left = 58
            Top = 61
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Style.Color = clWhite
            TabOrder = 3
            Width = 273
          end
          object edtProvinceName: TcxExtLookupComboBox
            Left = 58
            Top = 79
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Style.Color = clWhite
            TabOrder = 4
            Width = 153
          end
          object edtCountryName: TcxExtLookupComboBox
            Left = 210
            Top = 79
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Style.Color = clWhite
            TabOrder = 5
            Width = 121
          end
        end
        object cgSalesReturnDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 184
          Align = alClient
          TabOrder = 1
          object cgvSalesReturnDt: TcxGridDBBandedTableView
            NavigatorButtons.OnButtonClick = cgvSalesReturnDtNavigatorButtonsButtonClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Post.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSalesReturnDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'No'
                Column = cgvSalesReturnDtNo
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'amountinvoice'
                Column = cgvSalesReturnDtAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvSalesReturnDtDataControllerSummaryAfterSummary
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
                Caption = 'Item'
                FixedKind = fkLeft
              end
              item
              end>
            object cgvSalesReturnDtNo: TcxGridDBBandedColumn
              Caption = ' No'
              DataBinding.FieldName = 'no'
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtSalesReturnId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SalesReturnId'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtSalesinvoiceid: TcxGridDBBandedColumn
              Caption = 'Nota'
              DataBinding.FieldName = 'Salesinvoiceid'
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtItemId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtItemId2: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtItemId3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtItemId4: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtitemtext: TcxGridDBBandedColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtExpiredDate: TcxGridDBBandedColumn
              Caption = 'Expired'
              DataBinding.FieldName = 'ExpiredDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.CellMerging = True
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtQty: TcxGridDBBandedColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'PriceInvoice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtDiscItem: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'DiscItemInvoice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtDiscItemPrice: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'DiscItemPriceInvoice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtDiscItem2: TcxGridDBBandedColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'disciteminvoice2'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtDiscItemPrice2: TcxGridDBBandedColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'discitempriceinvoice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtvoucheritem: TcxGridDBBandedColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheriteminvoice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtAmount: TcxGridDBBandedColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'AmountInvoice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSalesReturnDtemployeeid: TcxGridDBBandedColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cgSalesReturnDtLevel1: TcxGridLevel
            GridView = cgvSalesReturnDt
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 289
          Width = 740
          Height = 98
          ActivePage = tsAmount
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 74
          ClientRectRight = 740
          ClientRectTop = 0
          object tsAmount: TcxTabSheet
            Caption = 'Jumlah'
            ImageIndex = 0
            object lblDisc1: TLabel
              Left = 9
              Top = 6
              Width = 30
              Height = 13
              Caption = 'Disc 1'
              Transparent = True
            end
            object lbl2: TLabel
              Left = 103
              Top = 6
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lblDisc2: TLabel
              Left = 9
              Top = 24
              Width = 30
              Height = 13
              Caption = 'Disc 2'
              Transparent = True
            end
            object lbl4: TLabel
              Left = 103
              Top = 24
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lbl16: TLabel
              Left = 9
              Top = 42
              Width = 40
              Height = 13
              Caption = 'Voucher'
              Transparent = True
            end
            object lblPurchaseTax: TLabel
              Left = 219
              Top = 6
              Width = 22
              Height = 13
              Caption = 'PPN'
              Transparent = True
            end
            object lblPercent: TLabel
              Left = 313
              Top = 6
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object Label7: TLabel
              Left = 219
              Top = 42
              Width = 39
              Height = 13
              Caption = 'Lain-lain'
              Transparent = True
            end
            object lblTotal: TLabel
              Left = 430
              Top = 6
              Width = 29
              Height = 13
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblOutstanding: TLabel
              Left = 430
              Top = 42
              Width = 20
              Height = 13
              Caption = 'Sisa'
              Transparent = True
            end
            object Label1: TLabel
              Left = 219
              Top = 24
              Width = 35
              Height = 13
              Caption = 'PPh 22'
              Transparent = True
            end
            object Label2: TLabel
              Left = 313
              Top = 24
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object dbeDisc1: TcxDBSpinEdit
              Left = 57
              Top = 4
              BeepOnEnter = False
              DataBinding.DataField = 'Disc'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 10.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 0
              Width = 44
            end
            object edtDiscAmount: TcxCurrencyEdit
              Left = 115
              Top = 4
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 1
              Width = 88
            end
            object dbeDisc2: TcxDBSpinEdit
              Left = 57
              Top = 22
              BeepOnEnter = False
              DataBinding.DataField = 'Disc2'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 10.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 2
              Width = 44
            end
            object edtDiscAmount2: TcxCurrencyEdit
              Left = 115
              Top = 22
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 3
              Width = 88
            end
            object dbeVoucher: TcxDBTextEdit
              Left = 57
              Top = 40
              BeepOnEnter = False
              DataBinding.DataField = 'Voucher'
              DataBinding.DataSource = dsDefault
              Properties.Alignment.Horz = taRightJustify
              Properties.CharCase = ecUpperCase
              TabOrder = 4
              Width = 59
            end
            object dbeTax: TcxDBSpinEdit
              Left = 267
              Top = 4
              BeepOnEnter = False
              DataBinding.DataField = 'tax'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 10.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 6
              Width = 44
            end
            object edtTaxAmount: TcxCurrencyEdit
              Left = 325
              Top = 4
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 7
              Width = 88
            end
            object edtTotalAmount: TcxCurrencyEdit
              Left = 511
              Top = 4
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 11
              Width = 144
            end
            object btnPayment: TcxButton
              Left = 429
              Top = 22
              Width = 68
              Height = 19
              Action = actPay
              DropDownMenu = pmPayment
              Kind = cxbkDropDownButton
              Spacing = 0
              TabOrder = 12
              TabStop = False
            end
            object edtPayment: TcxCurrencyEdit
              Left = 511
              Top = 22
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 13
              Width = 144
            end
            object edtOutstandingTotalAmount: TcxCurrencyEdit
              Left = 511
              Top = 40
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 14
              Width = 144
            end
            object dbeMeterai: TcxDBCurrencyEdit
              Left = 267
              Top = 40
              BeepOnEnter = False
              DataBinding.DataField = 'meterai'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Nullable = False
              TabOrder = 10
              Width = 146
            end
            object dbePPH22: TcxDBSpinEdit
              Left = 267
              Top = 22
              BeepOnEnter = False
              DataBinding.DataField = 'pph22'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 10.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 8
              Width = 44
            end
            object edtPPH22Amount: TcxCurrencyEdit
              Left = 325
              Top = 22
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 9
              Width = 88
            end
            object dbeVoucherAmount: TcxDBCalcEdit
              Left = 115
              Top = 40
              BeepOnEnter = False
              DataBinding.DataField = 'voucheramount'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 88
            end
          end
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo Faktur'
            ImageIndex = 1
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 74
              Width = 740
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmInternalMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'internalmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 74
              Width = 740
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
              Column = cgvPrevDisplaytotalamount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'salesreturnid'
              Column = cgvPrevDisplaysalesreturnid
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
              Column = cgvPrevDisplaytotalamount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplaystatusapprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusapprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Unposting'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Posting'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
          end
          object cgvPrevDisplaysalesreturnid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'salesreturnid'
          end
          object cgvPrevDisplaysalesreturndate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salesreturndate'
          end
          object cgvPrevDisplaySalesReturnIdInternal: TcxGridDBColumn
            Caption = 'Retur Internal'
            DataBinding.FieldName = 'salesreturnidinternal'
            Visible = False
          end
          object cgvPrevDisplaycustomerid: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customerid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          end
          object cgvPrevDisplaywarehouseid: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'warehouseid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
            Visible = False
          end
          object cgvPrevDisplayoutletid: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            Visible = False
          end
          object cgvPrevDisplayinvoicedueday: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'invoicedueday'
            Visible = False
          end
          object cgvPrevDisplayamount: TcxGridDBColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydisc: TcxGridDBColumn
            Caption = 'Disc 1 (%)'
            DataBinding.FieldName = 'disc'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydiscamount: TcxGridDBColumn
            Caption = 'Disc 1'
            DataBinding.FieldName = 'discamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydisc2: TcxGridDBColumn
            Caption = 'Dsic 2 (%)'
            DataBinding.FieldName = 'disc2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydiscamount2: TcxGridDBColumn
            Caption = 'Disc 2'
            DataBinding.FieldName = 'discamount2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplayvoucher: TcxGridDBColumn
            Caption = 'Kode Voucher'
            DataBinding.FieldName = 'voucher'
            Visible = False
          end
          object cgvPrevDisplayvoucheramount: TcxGridDBColumn
            Caption = 'Voucher'
            DataBinding.FieldName = 'voucheramount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaytax: TcxGridDBColumn
            Caption = 'Tax (%)'
            DataBinding.FieldName = 'tax'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaytaxamount: TcxGridDBColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'taxamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaypph22: TcxGridDBColumn
            Caption = 'PPH 22 (%)'
            DataBinding.FieldName = 'pph22'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaypph22amount: TcxGridDBColumn
            Caption = 'PPH 22'
            DataBinding.FieldName = 'pph22amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaytotalamount: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'totalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplayoutstandingtotalamount: TcxGridDBColumn
            Caption = 'Outstanding'
            DataBinding.FieldName = 'outstandingtotalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object actPay: TAction
      Caption = 'Bayar'
      ShortCut = 114
      OnExecute = actPayExecute
    end
    object actListPayment: TAction
      Caption = 'Daftar Pembayaran'
      OnExecute = actListPaymentExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qrySalesReturnHd
    OnDataChange = dsDefaultDataChange
  end
  object dsSalesReturnDt: TDataSource
    DataSet = qrySalesReturnDt
    OnDataChange = dsSalesReturnDtDataChange
    Left = 168
    Top = 144
  end
  object pmPayment: TPopupMenu
    Left = 168
    Top = 176
    object mnuPay: TMenuItem
      Action = actPay
    end
    object mnuListPayment: TMenuItem
      Action = actListPayment
    end
  end
  object qrySalesReturnHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from SalesReturnHd'
      'where extract(year from SalesReturnDate) = :Year'
      'and extract(month from SalesReturnDate) = :Month'
      'order by SalesReturnId')
    MasterFields = 'salesreturnid'
    BeforeInsert = qrySalesReturnHdBeforeInsert
    BeforePost = qrySalesReturnHdBeforePost
    AfterPost = qrySalesReturnHdAfterPost
    AfterCancel = qrySalesReturnHdAfterCancel
    OnNewRecord = qrySalesReturnHdNewRecord
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object qrySalesReturnDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from SalesReturnDt'
      'where SalesReturnId = :SalesReturnId'
      'order by SalesReturnId, SalesInvoiceId, NoSI, ItemId, '
      '  ExpiredDate, PriceInvoice, DiscItemInvoice, '
      '  DiscItemPriceInvoice, VoucherItemInvoice, EmployeeId')
    MasterSource = dsDefault
    BeforeInsert = qrySalesReturnDtBeforeInsert
    BeforePost = qrySalesReturnDtBeforePost
    OnNewRecord = qrySalesReturnDtNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesReturnId'
      end>
  end
  object qryGetSalesReturnIdInternal: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select SalesReturnIdInternal'
      'from SalesReturnHd'
      'where SalesReturnIdInternal = :SalesReturnIdInternal'
      'and SalesReturnId <> :SalesReturnId'
      'and StatusApprove <> '#39'2'#39)
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesReturnIdInternal'
      end
      item
        DataType = ftUnknown
        Name = 'SalesReturnId'
      end>
  end
  object qryGetSRPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  sum(Amount) as TotalAmount '
      'from SalesReturnPaymentDt a'
      
        'left join SalesReturnPaymentHd b on a.SalesReturnPaymentId = b.S' +
        'alesReturnPaymentId'
      'where a.SalesReturnId = :SalesReturnId'
      'and b.StatusApprove = '#39'1'#39)
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesReturnId'
      end>
  end
end
