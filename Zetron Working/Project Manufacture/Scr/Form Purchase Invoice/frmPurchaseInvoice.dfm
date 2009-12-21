inherited fmPurchaseInvoice: TfmPurchaseInvoice
  Caption = 'Nota Pembelian'
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
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 120
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pcBody: TcxPageControl
            Left = 340
            Top = 0
            Width = 400
            Height = 120
            ActivePage = tsInfo
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 120
            ClientRectRight = 362
            ClientRectTop = 0
            object tsInfo: TcxTabSheet
              ImageIndex = 0
              object lblCurrency: TLabel
                Left = 6
                Top = 42
                Width = 53
                Height = 13
                Caption = 'Mata Uang'
                Transparent = True
              end
              object lblKurs: TLabel
                Left = 149
                Top = 42
                Width = 21
                Height = 13
                Caption = 'Kurs'
                Transparent = True
              end
              object lblPurchaseCategory: TLabel
                Left = 6
                Top = 24
                Width = 39
                Height = 13
                Caption = 'Kategori'
                Transparent = True
              end
              object lblOutlet: TLabel
                Left = 6
                Top = 60
                Width = 28
                Height = 13
                Caption = 'Outlet'
                Transparent = True
              end
              object lblProject: TLabel
                Left = 6
                Top = 78
                Width = 33
                Height = 13
                Caption = 'Proyek'
                Transparent = True
              end
              object lblPIExternal: TLabel
                Left = 7
                Top = 6
                Width = 55
                Height = 13
                Caption = 'No External'
                Transparent = True
              end
              object dblcCurrencyId: TcxDBExtLookupComboBox
                Left = 69
                Top = 39
                BeepOnEnter = False
                DataBinding.DataField = 'currencyid'
                DataBinding.DataSource = dsDefault
                Properties.View = dmGlobal.cgvPrevCurrencyMaster
                Properties.KeyFieldNames = 'currencyid'
                Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
                TabOrder = 2
                Width = 74
              end
              object dbeKurs: TcxDBCurrencyEdit
                Left = 176
                Top = 39
                DataBinding.DataField = 'kurs'
                DataBinding.DataSource = dsDefault
                TabOrder = 3
                Width = 81
              end
              object dblcPurchaseCategoryId: TcxDBExtLookupComboBox
                Left = 69
                Top = 21
                BeepOnEnter = False
                DataBinding.DataField = 'purchasecategoryid'
                DataBinding.DataSource = dsDefault
                Style.Color = clWindow
                TabOrder = 1
                Width = 273
              end
              object dblcOutletId: TcxDBExtLookupComboBox
                Left = 69
                Top = 57
                BeepOnEnter = False
                DataBinding.DataField = 'OutletId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevOutlet
                Properties.KeyFieldNames = 'OutletId'
                Properties.ListFieldItem = dmInventory.cgvPrevOutletOutletName
                Style.Color = clWindow
                TabOrder = 4
                Width = 141
              end
              object dblcProject: TcxDBExtLookupComboBox
                Left = 69
                Top = 75
                BeepOnEnter = False
                DataBinding.DataField = 'ProjectId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevProject
                Properties.KeyFieldNames = 'ProjectId'
                Properties.ListFieldItem = dmInventory.cgvPrevProjectProjectName
                Style.Color = clWindow
                TabOrder = 5
                Width = 141
              end
              object dbeVendorPurchaseInvoiceId: TcxDBTextEdit
                Left = 69
                Top = 3
                BeepOnEnter = False
                DataBinding.DataField = 'PurchaseInvoiceExt'
                DataBinding.DataSource = dsDefault
                Properties.CharCase = ecUpperCase
                Properties.ReadOnly = False
                Style.Color = clWindow
                TabOrder = 0
                Width = 188
              end
            end
            object tsAddress: TcxTabSheet
              ImageIndex = 1
              object lblShipping: TLabel
                Left = 6
                Top = 96
                Width = 41
                Height = 13
                Caption = 'Shipping'
                Transparent = True
              end
              object lblAddress: TLabel
                Left = 6
                Top = 24
                Width = 32
                Height = 13
                Caption = 'Alamat'
                Transparent = True
              end
              object lblContactPerson: TLabel
                Left = 6
                Top = 6
                Width = 37
                Height = 13
                Caption = 'Contact'
                Transparent = True
              end
              object edtAddress: TcxMemo
                Left = 65
                Top = 21
                Style.Color = clWindow
                TabOrder = 1
                Height = 39
                Width = 273
              end
              object edtCityName: TcxExtLookupComboBox
                Left = 65
                Top = 57
                Properties.View = dmGlobal.cgvPrevCity
                Properties.KeyFieldNames = 'CityId'
                Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
                Style.Color = clWindow
                TabOrder = 2
                Width = 273
              end
              object edtProvinceName: TcxExtLookupComboBox
                Left = 65
                Top = 75
                Properties.View = dmGlobal.cgvPrevProvince
                Properties.KeyFieldNames = 'ProvinceId'
                Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
                Style.Color = clWindow
                TabOrder = 3
                Width = 153
              end
              object edtCountryName: TcxExtLookupComboBox
                Left = 215
                Top = 57
                Properties.View = dmGlobal.cgvPrevCountry
                Properties.KeyFieldNames = 'CountryId'
                Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
                Style.Color = clWindow
                TabOrder = 4
                Width = 123
              end
              object dblcShippingId: TcxDBExtLookupComboBox
                Left = 65
                Top = 93
                BeepOnEnter = False
                DataBinding.DataField = 'ShippingId'
                DataBinding.DataSource = dsDefault
                TabOrder = 5
                Width = 273
              end
              object dbeContactPerson: TcxDBExtLookupComboBox
                Left = 65
                Top = 3
                BeepOnEnter = False
                DataBinding.DataField = 'VendorContactId'
                DataBinding.DataSource = dsDefault
                Properties.View = cgvPrevVendorContact
                Properties.KeyFieldNames = 'VendorContactId'
                Properties.ListFieldItem = cgvPrevVendorContactVendorContactName
                TabOrder = 0
                Width = 272
              end
            end
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              object dbmInternalMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'internalmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 120
                Width = 362
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object dbmStatementMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'statementmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 120
                Width = 362
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 362
                Height = 120
                Align = alClient
                TabOrder = 0
                object cgvDependencies: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Delete.Visible = False
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = False
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesTransaction: TcxGridDBColumn
                    Caption = 'Transaksi'
                    Options.Filtering = False
                  end
                  object cgvDependenciesCode: TcxGridDBColumn
                    Caption = 'Kode'
                    Options.Filtering = False
                  end
                  object cgvDependenciesDate: TcxGridDBColumn
                    Caption = 'Tanggal'
                    Options.Filtering = False
                  end
                end
                object cgDependenciesLevel1: TcxGridLevel
                  GridView = cgvDependencies
                end
              end
            end
          end
          object pnlLeft: TPanel
            Left = 0
            Top = 0
            Width = 340
            Height = 120
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            object lblVendor: TLabel
              Left = 9
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Supplier'
              Transparent = True
            end
            object lblPINo: TLabel
              Left = 9
              Top = 42
              Width = 40
              Height = 13
              Caption = 'No Nota'
              Transparent = True
            end
            object lblPurchaseDate: TLabel
              Left = 9
              Top = 24
              Width = 39
              Height = 13
              Caption = 'Tanggal'
              Transparent = True
            end
            object lblDueDate: TLabel
              Left = 223
              Top = 24
              Width = 62
              Height = 13
              Caption = 'Jatuh Tempo'
              Transparent = True
            end
            object lblWarehouse: TLabel
              Left = 9
              Top = 96
              Width = 41
              Height = 13
              Caption = 'Gudang '
              Transparent = True
            end
            object lblRR: TLabel
              Left = 9
              Top = 78
              Width = 37
              Height = 13
              Caption = 'No LPB'
              Transparent = True
            end
            object lblPONo: TLabel
              Left = 9
              Top = 60
              Width = 32
              Height = 13
              Caption = 'No PO'
              Transparent = True
            end
            object dblcVendorId: TcxDBExtLookupComboBox
              Left = 60
              Top = 3
              BeepOnEnter = False
              DataBinding.DataField = 'VendorId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmInventory.cgvPrevVendor
              Properties.KeyFieldNames = 'VendorId'
              Properties.ListFieldItem = dmInventory.cgvPrevVendorVendorName
              Style.Color = clWindow
              TabOrder = 0
              Width = 273
            end
            object dbePurchaseInvoiceId: TcxDBTextEdit
              Left = 60
              Top = 39
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseInvoiceCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = dbePurchaseInvoiceIdPropertiesEditValueChanged
              Style.Color = clWindow
              TabOrder = 3
              Width = 273
            end
            object dbePurchaseInvoiceDate: TcxDBDateEdit
              Left = 60
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseInvoiceDate'
              DataBinding.DataSource = dsDefault
              Properties.DateButtons = [btnToday]
              Properties.SaveTime = False
              Style.Color = clWindow
              TabOrder = 1
              Width = 157
            end
            object dbeInvoiceDueDay: TcxDBSpinEdit
              Left = 291
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'InvoiceDueDay'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Increment = 5.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Style.Color = clWindow
              TabOrder = 2
              Width = 42
            end
            object dblcbWarehouseId: TcxDBExtLookupComboBox
              Left = 60
              Top = 93
              BeepOnEnter = False
              DataBinding.DataField = 'WarehouseId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmInventory.cgvPrevWarehouse
              Properties.KeyFieldNames = 'WarehouseId'
              Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
              Style.Color = clWindow
              TabOrder = 4
              Width = 273
            end
            object dbeReceivingRecordId: TcxDBButtonEdit
              Left = 60
              Top = 75
              DataBinding.DataField = 'ReceivingRecordId'
              DataBinding.DataSource = dsDefault
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              TabOrder = 5
              Width = 273
            end
            object dbePurchaseOrderId: TcxDBExtLookupComboBox
              Left = 60
              Top = 57
              DataBinding.DataField = 'PurchaseOrderId'
              DataBinding.DataSource = dsDefault
              Properties.View = cgvPrevPurchaseOrder
              Properties.KeyFieldNames = 'PurchaseOrderId'
              Properties.ListFieldItem = cgvPrevPurchaseOrderPurchaseOrderCode
              TabOrder = 6
              Width = 273
            end
          end
        end
        object cgPurchaseInvoiceDt: TcxGrid
          Left = 0
          Top = 120
          Width = 740
          Height = 167
          Align = alClient
          TabOrder = 1
          object cgvPurchaseInvoiceDt: TcxGridDBBandedTableView
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
            NavigatorButtons.SaveBookmark.ImageIndex = 3
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPurchaseInvoiceDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvPurchaseInvoiceDtNo
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'Amount'
                Column = cgvPurchaseInvoiceDtAmount
              end
              item
                Format = '#,##0.;-#,##0.'
                Kind = skSum
                FieldName = 'qty'
                Column = cgvPurchaseInvoiceDtQty
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = cgvPurchaseInvoiceDtDataControllerSummaryAfterSummary
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Styles.OnGetContentStyle = cgvPurchaseInvoiceDtStylesGetContentStyle
            Bands = <
              item
                Caption = 'Item'
                FixedKind = fkLeft
              end
              item
              end>
            object cgvPurchaseInvoiceDtPurchaseInvoiceId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PurchaseInvoiceId'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtNo: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtItemId: TcxGridDBBandedColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtItemId2: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtItemId3: TcxGridDBBandedColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtItemId4: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtitemtext: TcxGridDBBandedColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtExpiredDate: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtQty: TcxGridDBBandedColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtPrice: TcxGridDBBandedColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtDiscItem: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtDiscItemPrice: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtDiscItem2: TcxGridDBBandedColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'discitem2'
              PropertiesClassName = 'TcxCalcEditProperties'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtDiscItemPrice2: TcxGridDBBandedColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'DiscItemPrice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtvoucheritem: TcxGridDBBandedColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheritem'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtAmount: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtemployeeid: TcxGridDBBandedColumn
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
            object cgvPurchaseInvoiceDtStatusColor: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'statuscolor'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
          object cgPurchaseInvoiceDtLevel1: TcxGridLevel
            GridView = cgvPurchaseInvoiceDt
          end
        end
        object pnlFooter: TPanel
          Left = 0
          Top = 287
          Width = 740
          Height = 100
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object lblTotal: TLabel
            Left = 430
            Top = 43
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
          object lblPurchaseTax: TLabel
            Left = 219
            Top = 7
            Width = 22
            Height = 13
            Caption = 'PPN'
            Transparent = True
          end
          object lblPercent: TLabel
            Left = 313
            Top = 7
            Width = 8
            Height = 13
            Caption = '%'
            Transparent = True
          end
          object lblOutstanding: TLabel
            Left = 430
            Top = 79
            Width = 20
            Height = 13
            Caption = 'Sisa'
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
          object lblDisc1: TLabel
            Left = 9
            Top = 7
            Width = 30
            Height = 13
            Caption = 'Disc 1'
            Transparent = True
          end
          object Label1: TLabel
            Left = 219
            Top = 61
            Width = 35
            Height = 13
            Caption = 'PPh 22'
            Transparent = True
          end
          object Label2: TLabel
            Left = 313
            Top = 61
            Width = 8
            Height = 13
            Caption = '%'
            Transparent = True
          end
          object Label3: TLabel
            Left = 219
            Top = 25
            Width = 39
            Height = 13
            Caption = 'No PPN'
            Transparent = True
          end
          object Label4: TLabel
            Left = 219
            Top = 43
            Width = 40
            Height = 13
            Caption = 'Tgl PPN'
            Transparent = True
          end
          object lblOtherAmountPlus: TLabel
            Left = 430
            Top = 7
            Width = 68
            Height = 13
            Caption = 'Biaya Lain-lain'
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
          object lbl2: TLabel
            Left = 103
            Top = 7
            Width = 8
            Height = 13
            Caption = '%'
            Transparent = True
          end
          object lbl4: TLabel
            Left = 103
            Top = 25
            Width = 8
            Height = 13
            Caption = '%'
            Transparent = True
          end
          object Label5: TLabel
            Left = 430
            Top = 25
            Width = 63
            Height = 13
            Caption = 'Disc Lain-lain'
            Transparent = True
          end
          object edtDiscAmount2: TcxCurrencyEdit
            Left = 113
            Top = 22
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 0
            Width = 88
          end
          object edtOutstandingTotalAmount: TcxCurrencyEdit
            Left = 511
            Top = 76
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 1
            Width = 144
          end
          object edtPayment: TcxCurrencyEdit
            Left = 511
            Top = 58
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 2
            Width = 144
          end
          object edtPPH22Amount: TcxCurrencyEdit
            Left = 325
            Top = 58
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 3
            Width = 88
          end
          object edtTaxAmount: TcxCurrencyEdit
            Left = 325
            Top = 4
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 4
            Width = 88
          end
          object edtTotalAmount: TcxCurrencyEdit
            Left = 511
            Top = 40
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 5
            Width = 144
          end
          object dbeTax: TcxDBSpinEdit
            Left = 267
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'PPN'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Increment = 10.000000000000000000
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 6
            Width = 44
          end
          object dbeTaxDate: TcxDBDateEdit
            Left = 267
            Top = 40
            DataBinding.DataField = 'PPNDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 7
            Width = 146
          end
          object dbetaxnumber: TcxDBTextEdit
            Left = 267
            Top = 22
            DataBinding.DataField = 'PPNAmount'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 8
            Width = 146
          end
          object dbeVoucher: TcxDBTextEdit
            Left = 57
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'Voucher'
            DataBinding.DataSource = dsDefault
            Properties.Alignment.Horz = taRightJustify
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            Width = 59
          end
          object dbeVoucherAmount: TcxDBCalcEdit
            Left = 113
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'voucheramount'
            DataBinding.DataSource = dsDefault
            TabOrder = 10
            Width = 88
          end
          object edtDiscAmount: TcxCurrencyEdit
            Left = 113
            Top = 4
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 11
            Width = 88
          end
          object btnPayment: TcxButton
            Left = 429
            Top = 59
            Width = 68
            Height = 19
            Action = actPay
            Spacing = 0
            TabOrder = 12
            TabStop = False
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
            TabOrder = 13
            Width = 44
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
            TabOrder = 14
            Width = 44
          end
          object dbeOtherAmountPlus: TcxDBCurrencyEdit
            Left = 511
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'OtherAmountPlus'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Nullable = False
            TabOrder = 15
            Width = 144
          end
          object dbePPH22: TcxDBSpinEdit
            Left = 267
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'PPH22'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Increment = 10.000000000000000000
            Properties.SpinButtons.Position = sbpHorzLeftRight
            TabOrder = 16
            Width = 44
          end
          object dbeOtherAmountMinus: TcxDBCurrencyEdit
            Left = 511
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'OtherAmountMinus'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Nullable = False
            TabOrder = 17
            Width = 144
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
      object cgDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
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
              FieldName = 'purchaseinvoiceid'
              Column = cgvPrevDisplaypurchaseinvoiceid
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
              FieldName = 'purchaseinvoiceid'
              Column = cgvPrevDisplaypurchaseinvoiceid
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
            Width = 64
          end
          object cgvPrevDisplaypurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'purchaseinvoiceid'
          end
          object cgvPrevDisplayvendorpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota External'
            DataBinding.FieldName = 'vendorpurchaseinvoiceid'
            Visible = False
          end
          object cgvPrevDisplaypurchaseinvoicedate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchaseinvoicedate'
          end
          object cgvPrevDisplayvendorid: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmInventory.cgvPrevVendorVendorName
          end
          object cgvPrevDisplaywarehouseid: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'warehouseid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cgvPrevDisplayoutletid: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cgvPrevDisplayprojectid: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
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
          object cgvPrevDisplayflagkonsinyasi: TcxGridDBColumn
            Caption = 'Konsinyasi'
            DataBinding.FieldName = 'flagkonsinyasi'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
        end
        object cgDisplayLevel1: TcxGridLevel
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
    object actStockInfo: TAction
      Caption = 'Info Stok'
      OnExecute = actStockInfoExecute
    end
    object actPriceInfo: TAction
      Caption = 'Info Harga'
      OnExecute = actPriceInfoExecute
    end
    object actCopyItem: TAction
      Caption = 'Copy Barang'
      OnExecute = actCopyItemExecute
    end
    object actPrintBarcode: TAction
      Caption = 'Barcode'
      ImageIndex = 17
      OnExecute = actPrintBarcodeExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryPurchaseInvoiceHd
    OnDataChange = dsDefaultDataChange
  end
  object dsPurchaseInvoiceDt: TDataSource
    DataSet = qryPurchaseInvoiceDt
    OnDataChange = dsPurchaseInvoiceDtDataChange
    Left = 168
    Top = 144
  end
  object pmGrid: TPopupMenu
    Left = 344
    Top = 248
    object DisplayStock1: TMenuItem
      Action = actStockInfo
    end
    object DisplayPrice1: TMenuItem
      Action = actPriceInfo
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopyItem1: TMenuItem
      Action = actCopyItem
    end
  end
  object qryGetVendorPurchaseInvoiceId: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'VendorPurchaseInvoiceId'
        Size = -1
        Value = Null
      end
      item
        Name = 'PurchaseInvoiceId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select VendorPurchaseInvoiceId'
      'from PurchaseInvoiceHd'
      'where VendorPurchaseInvoiceId = :VendorPurchaseInvoiceId'
      'and PurchaseInvoiceId <> :PurchaseInvoiceId'
      'and StatusApprove <> '#39'2'#39
      '')
    Left = 272
    Top = 256
  end
  object qryGetPIPayment: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'PurchaseInvoiceId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  sum(Amount) as TotalAmount '
      'from PurchasePaymentDt a'
      
        'left join PurchasePayment b on a.PurchasePaymentId = b.PurchaseP' +
        'aymentId'
      'where a.PurchaseInvoiceId = :PurchaseInvoiceId'
      'and b.StatusApprove = '#39'1'#39
      '')
    Left = 304
    Top = 256
  end
  object qryGetPurchasePrice: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select Price, DiscItem, DiscItemPrice'
      'from PurchasePrice'
      'where VendorId = :VendorId'
      'and ItemId = :ItemId'
      '')
    Left = 344
    Top = 216
  end
  object qryGetLowerVendorPrice: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select c.ItemName, b.VendorName, a.Price'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join Item c on a.ItemId = c.ItemId'
      'where a.ItemId = :ItemId'
      'and a.VendorId <> :VendorId'
      'and a.Price < :Price'
      '')
    Left = 304
    Top = 288
  end
  object qryGetPurchaseCategory: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'PurchaseCategoryId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from PurchaseCategory'
      'where PurchaseCategoryId = :PurchaseCategoryId'
      '')
    Left = 272
    Top = 288
  end
  object qryPurchaseInvoiceDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPurchaseInvoiceDtBeforeInsert
    BeforeEdit = qryPurchaseInvoiceDtBeforeEdit
    BeforePost = qryPurchaseInvoiceDtBeforePost
    AfterPost = qryPurchaseInvoiceDtAfterPost
    OnNewRecord = qryPurchaseInvoiceDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PurchaseInvoiceId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from PurchaseInvoiceDt'
      'where PurchaseInvoiceId = :PurchaseInvoiceId')
    Left = 136
    Top = 144
  end
  object qryPurchaseInvoiceHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPurchaseInvoiceHdBeforeInsert
    BeforePost = qryPurchaseInvoiceHdBeforePost
    AfterPost = qryPurchaseInvoiceHdAfterPost
    AfterCancel = qryPurchaseInvoiceHdAfterCancel
    OnNewRecord = qryPurchaseInvoiceHdNewRecord
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PurchaseInvoiceHd'
      'where PurchaseInvoiceDate between :StartDate and :EndDate'
      'order by PurchaseInvoiceId')
    Left = 136
    Top = 112
  end
  object qryPrevVendorContact: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select a.*'
      'from VendorContact a'
      'where a.VendorId = :VendorId')
    Left = 136
    Top = 176
  end
  object dsPrevVendorContact: TDataSource
    DataSet = qryPrevVendorContact
    Left = 168
    Top = 176
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 176
    object cgvPrevVendorContact: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevVendorContact
      DataController.KeyFieldNames = 'VendorContactId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevVendorContactVendorContactId: TcxGridDBColumn
        DataBinding.FieldName = 'VendorContactId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevVendorContactVendorId: TcxGridDBColumn
        DataBinding.FieldName = 'VendorId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevVendorContactVendorContactName: TcxGridDBColumn
        Caption = 'Contact'
        DataBinding.FieldName = 'VendorContactName'
      end
      object cgvPrevVendorContactPhoneNo: TcxGridDBColumn
        Caption = 'Phone'
        DataBinding.FieldName = 'PhoneNo'
      end
    end
    object cgvPrevPurchaseOrder: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchaseOrder
      DataController.KeyFieldNames = 'PurchaseOrderId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevPurchaseOrderPurchaseOrderId: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPurchaseOrderPurchaseOrderCode: TcxGridDBColumn
        Caption = 'No PO'
        DataBinding.FieldName = 'PurchaseOrderCode'
      end
      object cgvPrevPurchaseOrderPurchaseOrderExternal: TcxGridDBColumn
        Caption = 'No PO Ext'
        DataBinding.FieldName = 'PurchaseOrderExternal'
      end
      object cgvPrevPurchaseOrderPurchaseOrderDate: TcxGridDBColumn
        Caption = 'Tgl PO'
        DataBinding.FieldName = 'PurchaseOrderDate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevPurchaseOrderTglKirimAwal: TcxGridDBColumn
        Caption = 'Tgl Kirim Awal'
        DataBinding.FieldName = 'TglKirimAwal'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevPurchaseOrderTglKirimAkhir: TcxGridDBColumn
        Caption = 'Tgl Kirim Akhir'
        DataBinding.FieldName = 'TglKirimAkhir'
        PropertiesClassName = 'TcxDateEditProperties'
      end
    end
  end
  object qryPrevPurchaseOrder: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.PurchaseOrderId, a.PurchaseOrderCode, '
      '  a.PurchaseOrderExternal, a.PurchaseOrderDate, '
      '  a.TglKirimAwal, TglKirimAkhir'
      'from PurchaseOrderHd a '
      'where a.FlagClose = '#39'0'#39' '
      'and a.VendorId = :VendorId')
    Left = 136
    Top = 208
  end
  object dsPrevPurchaseOrder: TDataSource
    DataSet = qryPrevPurchaseOrder
    Left = 168
    Top = 208
  end
end
