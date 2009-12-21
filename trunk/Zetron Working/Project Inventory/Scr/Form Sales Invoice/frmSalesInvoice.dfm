inherited fmSalesInvoice: TfmSalesInvoice
  Caption = 'Nota Penjualan'
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
          TabOrder = 0
          object lblCustomer: TLabel
            Left = 7
            Top = 9
            Width = 57
            Height = 13
            AutoSize = False
            Caption = 'Customer'
            Transparent = True
          end
          object lblSalesInvoiceId: TLabel
            Left = 346
            Top = 9
            Width = 89
            Height = 13
            Caption = 'Tgl && Jatuh Tempo'
            Transparent = True
          end
          object lblVendorPurchaseInvoiceId: TLabel
            Left = 346
            Top = 27
            Width = 90
            Height = 13
            Caption = 'No Nota && External'
            Transparent = True
          end
          object lblWarehouse: TLabel
            Left = 346
            Top = 45
            Width = 38
            Height = 13
            Caption = 'Gudang'
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
            Left = 127
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerId'
            DataBinding.DataSource = dsDefault
            ParentFont = False
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
            TabOrder = 1
            Width = 202
          end
          object edtAddress: TcxMemo
            Left = 58
            Top = 25
            Style.Color = clWhite
            TabOrder = 2
            Height = 39
            Width = 271
          end
          object edtCityName: TcxExtLookupComboBox
            Left = 58
            Top = 61
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Style.Color = clWhite
            TabOrder = 3
            Width = 271
          end
          object edtProvinceName: TcxExtLookupComboBox
            Left = 58
            Top = 79
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Style.Color = clWhite
            TabOrder = 4
            Width = 151
          end
          object edtCountryName: TcxExtLookupComboBox
            Left = 206
            Top = 79
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Style.Color = clWhite
            TabOrder = 5
            Width = 123
          end
          object dbeSalesInvoiceDate: TcxDBDateEdit
            Left = 448
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'SalesInvoiceDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 6
            Width = 110
          end
          object dbeInvoiceDueDay: TcxDBSpinEdit
            Left = 555
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
          object dbeSalesInvoiceId: TcxDBTextEdit
            Left = 448
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'SalesInvoiceId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbeSalesInvoiceIdPropertiesEditValueChanged
            TabOrder = 8
            Width = 110
          end
          object dbeSalesInvoiceIdInternal: TcxDBTextEdit
            Left = 555
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'SalesInvoiceIdInternal'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 9
            Width = 172
          end
          object dblcbWarehouseId: TcxDBExtLookupComboBox
            Left = 448
            Top = 43
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
            TabOrder = 10
            Width = 279
          end
        end
        object cgSalesInvoiceDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 171
          Align = alClient
          TabOrder = 1
          object cgvSalesInvoiceDt: TcxGridDBBandedTableView
            PopupMenu = pmGrid
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = dmGlobal.imgIcon16
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.ImageIndex = 4
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSalesInvoiceDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvSalesInvoiceDtNo
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'Amount'
                Column = cgvSalesInvoiceDtAmount
              end
              item
                Format = '#,##0.;-#,##0.'
                Kind = skSum
                FieldName = 'qty'
                Column = cgvSalesInvoiceDtQty
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvSalesInvoiceDtDataControllerSummaryAfterSummary
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Styles.OnGetContentStyle = cgvSalesInvoiceDtStylesGetContentStyle
            Bands = <
              item
                Caption = 'Item'
                FixedKind = fkLeft
              end
              item
              end>
            object cgvSalesInvoiceDtSalesInvoiceId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'SalesInvoiceId'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtNo: TcxGridDBBandedColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 43
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtItemId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtItemId2: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtItemId3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtItemId4: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtitemtext: TcxGridDBBandedColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtExpiredDate: TcxGridDBBandedColumn
              Caption = 'Expired'
              DataBinding.FieldName = 'ExpiredDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtsalesorderid: TcxGridDBBandedColumn
              Caption = 'SO'
              DataBinding.FieldName = 'salesorderid'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtsalesorderno: TcxGridDBBandedColumn
              Caption = 'SO No '
              DataBinding.FieldName = 'salesorderno'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtQty: TcxGridDBBandedColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtPriceDisplay: TcxGridDBBandedColumn
              Caption = 'Harga Faktur'
              DataBinding.FieldName = 'PriceDisplay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtDiscItem: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'DiscItem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtDiscItemPrice: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'DiscItemPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtDiscItem2: TcxGridDBBandedColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'discitem2'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtDiscItemPrice2: TcxGridDBBandedColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'discitemprice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtvoucheritem: TcxGridDBBandedColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheritem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtAmount: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'Amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtemployeeid: TcxGridDBBandedColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cgvSalesInvoiceDtStatusColor: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'statuscolor'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
          end
          object cgSalesInvoiceDtLevel1: TcxGridLevel
            GridView = cgvSalesInvoiceDt
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 276
          Width = 740
          Height = 111
          ActivePage = tsAmount
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 87
          ClientRectRight = 740
          ClientRectTop = 0
          object tsAmount: TcxTabSheet
            Caption = 'Jumlah'
            ImageIndex = 0
            object lblDisc1: TLabel
              Left = 9
              Top = 7
              Width = 30
              Height = 13
              Caption = 'Disc 1'
              Transparent = True
            end
            object lbl2: TLabel
              Left = 104
              Top = 7
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lblDisc2: TLabel
              Left = 9
              Top = 25
              Width = 30
              Height = 13
              Caption = 'Disc 2'
              Transparent = True
            end
            object lbl4: TLabel
              Left = 104
              Top = 25
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lbl16: TLabel
              Left = 9
              Top = 43
              Width = 40
              Height = 13
              Caption = 'Voucher'
              Transparent = True
            end
            object lblPurchaseTax: TLabel
              Left = 9
              Top = 61
              Width = 22
              Height = 13
              Caption = 'PPN'
              Transparent = True
            end
            object lblPercent: TLabel
              Left = 104
              Top = 61
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
            end
            object lblTotal: TLabel
              Left = 430
              Top = 25
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
              Top = 61
              Width = 20
              Height = 13
              Caption = 'Sisa'
              Transparent = True
            end
            object Label3: TLabel
              Left = 219
              Top = 7
              Width = 39
              Height = 13
              Caption = 'No PPN'
              Transparent = True
            end
            object Label4: TLabel
              Left = 219
              Top = 25
              Width = 40
              Height = 13
              Caption = 'Tgl PPN'
              Transparent = True
            end
            object lblPPh22: TLabel
              Left = 219
              Top = 43
              Width = 35
              Height = 13
              Caption = 'PPh 22'
              Transparent = True
              Visible = False
            end
            object lblPPh22Percent: TLabel
              Left = 314
              Top = 43
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
              Visible = False
            end
            object lblOther: TLabel
              Left = 219
              Top = 61
              Width = 39
              Height = 13
              Caption = 'Lain-lain'
              Transparent = True
              Visible = False
            end
            object lblRoundUp: TLabel
              Left = 429
              Top = 7
              Width = 56
              Height = 13
              Caption = 'Pembulatan'
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
              Width = 61
            end
            object dbeTax: TcxDBSpinEdit
              Left = 57
              Top = 58
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
              Left = 115
              Top = 58
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 7
              Width = 88
            end
            object edtTotalAmount: TcxCurrencyEdit
              Left = 511
              Top = 22
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 14
              Width = 144
            end
            object btnPayment: TcxButton
              Left = 428
              Top = 41
              Width = 68
              Height = 19
              Action = actPay
              DropDownMenu = pmPayment
              Kind = cxbkDropDownButton
              Spacing = 0
              TabOrder = 15
              TabStop = False
            end
            object edtPayment: TcxCurrencyEdit
              Left = 511
              Top = 40
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 16
              Width = 144
            end
            object edtOutstandingTotalAmount: TcxCurrencyEdit
              Left = 511
              Top = 58
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 17
              Width = 144
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
            object dbetaxnumber: TcxDBTextEdit
              Left = 267
              Top = 4
              DataBinding.DataField = 'taxnumber'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 8
              Width = 146
            end
            object dbetaxdate: TcxDBDateEdit
              Left = 267
              Top = 22
              DataBinding.DataField = 'taxdate'
              DataBinding.DataSource = dsDefault
              TabOrder = 9
              Width = 146
            end
            object dbePPH22: TcxDBSpinEdit
              Left = 267
              Top = 40
              BeepOnEnter = False
              DataBinding.DataField = 'pph22'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 10.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 10
              Visible = False
              Width = 44
            end
            object edtPPH22Amount: TcxCurrencyEdit
              Left = 325
              Top = 40
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 11
              Visible = False
              Width = 88
            end
            object dbeMeterai: TcxDBCurrencyEdit
              Left = 267
              Top = 58
              BeepOnEnter = False
              DataBinding.DataField = 'meterai'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Nullable = False
              TabOrder = 12
              Visible = False
              Width = 146
            end
            object edtRoundUp: TcxCurrencyEdit
              Left = 511
              Top = 4
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 13
              Width = 144
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
              Height = 87
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
              Height = 87
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
        Width = 296
        Height = 365
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplaysalesinvoiceid
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
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplaysalesinvoiceid
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
          object cgvPrevDisplaysalesinvoiceid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'salesinvoiceid'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevDisplaysalesinvoicedate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salesinvoicedate'
          end
          object cgvPrevDisplaycustomerid: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'customerid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          end
          object cgvPrevDisplaysalesinvoiceidinternal: TcxGridDBColumn
            Caption = 'Nota Internal'
            DataBinding.FieldName = 'salesinvoiceidinternal'
            Visible = False
          end
          object cgvPrevDisplaysalescategoryid: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'salescategoryid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevSalesCategory
            Properties.KeyFieldNames = 'salescategoryid'
            Properties.ListFieldItem = dmGeneral.cgvPrevSalesCategorysalescategoryname
            Visible = False
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
          object cgvPrevDisplayprojectid: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
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
            Caption = 'Disc 1'
            DataBinding.FieldName = 'disc'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydiscamount: TcxGridDBColumn
            Caption = 'Disc 1 (%)'
            DataBinding.FieldName = 'discamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydisc2: TcxGridDBColumn
            Caption = 'Disc 2'
            DataBinding.FieldName = 'disc2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydiscamount2: TcxGridDBColumn
            Caption = 'Disc 2 (%)'
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
            Caption = 'Tax'
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
      Hint = 'Bayar'
      ShortCut = 114
      OnExecute = actPayExecute
    end
    object actListPayment: TAction
      Caption = 'Daftar Pembayaran'
    end
    object actStockInfo: TAction
      Caption = 'Info Stok'
      OnExecute = actStockInfoExecute
    end
    object actPriceInfo: TAction
      Caption = 'Info Harga'
      OnExecute = actPriceInfoExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qrySalesInvoiceHd
    OnDataChange = dsDefaultDataChange
  end
  object dsSalesInvoiceDt: TDataSource
    DataSet = qrySalesInvoiceDt
    OnDataChange = dsSalesInvoiceDtDataChange
    Left = 168
    Top = 144
  end
  object pmPayment: TPopupMenu
    Left = 232
    Top = 112
    object mnuPay: TMenuItem
      Action = actPay
    end
    object mnuListPayment: TMenuItem
      Action = actListPayment
    end
  end
  object pmGrid: TPopupMenu
    Left = 264
    Top = 112
    object DisplayStockInfo1: TMenuItem
      Action = actStockInfo
    end
    object DisplayPriceInfo1: TMenuItem
      Action = actPriceInfo
    end
  end
  object qrySalesInvoiceHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from SalesInvoiceHd'
      'where SalesInvoiceId in'
      '  (select SalesInvoiceId'
      '  from SalesInvoiceHd x'
      
        '  left join SalesCategory y on y.SalesCategoryId = x.SalesCatego' +
        'ryId'
      '  where extract(year from SalesInvoiceDate) = :Year'
      '  and extract(month from SalesInvoiceDate) = :Month'
      '  and y.FlagAutomatic like :FlagAutomatic)'
      'order by SalesInvoiceId')
    MasterFields = 'salesinvoiceid'
    BeforeInsert = qrySalesInvoiceHdBeforeInsert
    BeforeEdit = qrySalesInvoiceHdBeforeEdit
    BeforePost = qrySalesInvoiceHdBeforePost
    AfterPost = qrySalesInvoiceHdAfterPost
    AfterCancel = qrySalesInvoiceHdAfterCancel
    OnNewRecord = qrySalesInvoiceHdNewRecord
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
      end
      item
        DataType = ftUnknown
        Name = 'FlagAutomatic'
      end>
  end
  object qryGetSalesInvoiceIdInternal: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select SalesInvoiceIdInternal'
      'from SalesInvoiceHd'
      'where SalesInvoiceIdInternal = :SalesInvoiceIdInternal'
      'and SalesInvoiceId <> :SalesInvoiceId'
      'and StatusApprove <> '#39'2'#39)
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceIdInternal'
      end
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceId'
      end>
  end
  object qryGetSIPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  sum(Amount) as TotalAmount '
      'from SalesPaymentDt a'
      'left join SalesPayment b on a.SalesPaymentId = b.SalesPaymentId'
      'where a.SalesInvoiceId = :SalesInvoiceId'
      'and b.StatusApprove = '#39'1'#39)
    Left = 200
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceId'
      end>
  end
  object qrySalesInvoiceDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from SalesInvoiceDt'
      'where SalesInvoiceId = :SalesInvoiceId')
    MasterSource = dsDefault
    BeforeInsert = qrySalesInvoiceDtBeforeInsert
    BeforeEdit = qrySalesInvoiceDtBeforeEdit
    BeforePost = qrySalesInvoiceDtBeforePost
    OnNewRecord = qrySalesInvoiceDtNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesInvoiceId'
      end>
  end
  object qryGetSalePrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from SalePrice'
      'where CustomerId = :CustomerId'
      'and ItemId = :ItemId')
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetPriceList: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select Price1'
      'from Price'
      'where ItemId = :ItemId')
    Left = 232
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetStockOnHandQty: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select EndQty'
      'from StockOnHand'
      'where WarehouseId = :WarehouseId'
      'and ItemId = :ItemId')
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'WarehouseId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetItemInfo: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select MinSalePrice, Margin, StatusItem, FlagInactive'
      'from Item'
      'where ItemId = :ItemId')
    Left = 296
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetSalesCategory: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from SalesCategory'
      'where SalesCategoryId = :SalesCategoryId')
    Left = 232
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesCategoryId'
      end>
  end
end
