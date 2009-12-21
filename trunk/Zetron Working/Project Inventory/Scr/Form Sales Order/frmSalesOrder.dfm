inherited fmSalesOrder: TfmSalesOrder
  Caption = 'Order Penjualan'
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
            Left = 8
            Top = 9
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblSalesOrderId: TLabel
            Left = 352
            Top = 28
            Width = 89
            Height = 13
            Caption = 'No PO && PO Intern'
            Transparent = True
          end
          object lblOutlet: TLabel
            Left = 352
            Top = 46
            Width = 28
            Height = 13
            Caption = 'Outlet'
            Transparent = True
          end
          object lblTanggal: TLabel
            Left = 352
            Top = 10
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblProject: TLabel
            Left = 352
            Top = 64
            Width = 33
            Height = 13
            Caption = 'Proyek'
            Transparent = True
          end
          object dblcCustomerId: TcxDBExtLookupComboBox
            Left = 64
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
            Left = 135
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
          object dbeSalesOrderDate: TcxDBDateEdit
            Left = 449
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'SalesOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 6
            Width = 110
          end
          object dbeSalesOrderId: TcxDBTextEdit
            Left = 449
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'SalesOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbeSalesOrderIdPropertiesEditValueChanged
            TabOrder = 7
            Width = 110
          end
          object dblcOutletId: TcxDBExtLookupComboBox
            Left = 449
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            TabOrder = 9
            Width = 281
          end
          object dbeCustomerSalesOrderId: TcxDBTextEdit
            Left = 558
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerSalesOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 8
            Width = 172
          end
          object dblcProjectId: TcxDBExtLookupComboBox
            Left = 449
            Top = 62
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            TabOrder = 10
            Width = 281
          end
          object edtAddress: TcxMemo
            Left = 64
            Top = 25
            Style.Color = clWhite
            TabOrder = 2
            Height = 37
            Width = 273
          end
          object edtCityName: TcxExtLookupComboBox
            Left = 64
            Top = 61
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Style.Color = clWhite
            TabOrder = 3
            Width = 273
          end
          object edtProvinceName: TcxExtLookupComboBox
            Left = 64
            Top = 79
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Style.Color = clWhite
            TabOrder = 4
            Width = 153
          end
          object edtCountryName: TcxExtLookupComboBox
            Left = 216
            Top = 79
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Style.Color = clWhite
            TabOrder = 5
            Width = 121
          end
        end
        object cgSalesOrderDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 184
          Align = alClient
          TabOrder = 1
          object cgvSalesOrderDt: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSalesOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvSalesOrderDtNo
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'Amount'
                Column = cgvSalesOrderDtAmount
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvSalesOrderDtDataControllerSummaryAfterSummary
            NewItemRow.Visible = True
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
            object cgvSalesOrderDtSalesOrderId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SalesOrderId'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtNo: TcxGridDBBandedColumn
              Caption = ' No'
              DataBinding.FieldName = 'No'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 43
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtItemId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtItemId2: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtItemId3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtItemId4: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtitemtext: TcxGridDBBandedColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtQty: TcxGridDBBandedColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtDiscItem: TcxGridDBBandedColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'DiscItem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtDiscItemPrice: TcxGridDBBandedColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'DiscItemPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtDiscItem2: TcxGridDBBandedColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'discitem2'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtDiscItemPrice2: TcxGridDBBandedColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'discitemprice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtvoucheritem: TcxGridDBBandedColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheritem'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtAmount: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'Amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cgvSalesOrderDtemployeeid: TcxGridDBBandedColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cgSalesOrderDtLevel1: TcxGridLevel
            GridView = cgvSalesOrderDt
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
            object lblTotal: TLabel
              Left = 219
              Top = 42
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
              Left = 267
              Top = 40
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
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
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'PO = 0'
              Kind = skCount
              FieldName = 'Salesorderid'
              Column = cgvPrevDisplaySalesorderid
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
              FieldName = 'Salesorderid'
              Column = cgvPrevDisplaySalesorderid
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
          object cgvPrevDisplaySalesorderid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'Salesorderid'
          end
          object cgvPrevDisplaySalesorderdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'Salesorderdate'
          end
          object cgvPrevDisplayCustomerid: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'Customerid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmGeneral.cgvPrevCustomerCustomerName
          end
          object cgvPrevDisplayCustomerSalesorderid: TcxGridDBColumn
            Caption = 'PO External'
            DataBinding.FieldName = 'CustomerSalesorderid'
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
            Caption = 'Disc 2 (%)'
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
          object cgvPrevDisplayemployeeid: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeeid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevEmployee
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qrySalesOrderHd
    OnDataChange = dsDefaultDataChange
  end
  object dsSalesOrderDt: TDataSource
    DataSet = qrySalesOrderDt
    OnDataChange = dsSalesOrderDtDataChange
    Left = 168
    Top = 144
  end
  object qrySalesOrderHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from SalesOrderHd'
      'where extract(year from SalesOrderDate) = :Year'
      'and extract(month from SalesOrderDate) = :Month'
      'order by SalesOrderId')
    MasterFields = 'salesorderid'
    BeforeInsert = qrySalesOrderHdBeforeInsert
    BeforePost = qrySalesOrderHdBeforePost
    AfterPost = qrySalesOrderHdAfterPost
    AfterCancel = qrySalesOrderHdAfterCancel
    OnNewRecord = qrySalesOrderHdNewRecord
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
  object qrySalesOrderDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from SalesOrderDt'
      'where SalesOrderId = :SalesOrderId')
    MasterSource = dsDefault
    BeforeInsert = qrySalesOrderDtBeforeInsert
    BeforePost = qrySalesOrderDtBeforePost
    AfterPost = qrySalesOrderDtAfterPost
    OnNewRecord = qrySalesOrderDtNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesOrderId'
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
    Top = 144
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
end
