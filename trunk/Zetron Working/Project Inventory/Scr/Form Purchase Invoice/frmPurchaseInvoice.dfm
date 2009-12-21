inherited fmPurchaseInvoice: TfmPurchaseInvoice
  Caption = 'Nota Pembelian'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited btnPrev: TcxButton
      ExplicitLeft = 475
    end
    inherited btnNext: TcxButton
      ExplicitLeft = 523
    end
    inherited btnPost: TcxButton
      ExplicitLeft = 369
    end
    inherited btnCancel: TcxButton
      ExplicitLeft = 417
    end
    inherited btnVoid: TcxButton
      ExplicitLeft = 311
    end
  end
  inherited pnlCustom: TPanel
    object lblFixed: TLabel [3]
      Left = 647
      Top = 5
      Width = 115
      Height = 13
      Caption = 'Barang Kondisi Tertentu'
      Transparent = True
    end
    object Image1: TImage [4]
      Left = 623
      Top = 4
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
        F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
        00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
        FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
        F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
        FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
        F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
        FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
        F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
        FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
        F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
        FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
        F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
        FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
        F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
        FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
        F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
        FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
        F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
        FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
        F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
        FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
        F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
        FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
        F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
        FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
        F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
        FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 107
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblVendor: TLabel
            Left = 7
            Top = 9
            Width = 34
            Height = 13
            Caption = 'Vendor'
            Transparent = True
          end
          object lblPurchaseInvoiceId: TLabel
            Left = 346
            Top = 9
            Width = 89
            Height = 13
            Caption = 'Tgl && Jatuh Tempo'
            Transparent = True
          end
          object lblVendorPurchaseInvoiceId: TLabel
            Left = 346
            Top = 28
            Width = 90
            Height = 13
            Caption = 'No Nota && External'
            Transparent = True
          end
          object lblWarehouse: TLabel
            Left = 346
            Top = 46
            Width = 41
            Height = 13
            Caption = 'Gudang '
            Transparent = True
          end
          object dblcVendorId: TcxDBExtLookupComboBox
            Left = 58
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorId
            Properties.OnEditValueChanged = dblcVendorIdPropertiesEditValueChanged
            Style.Color = clWindow
            Style.PopupBorderStyle = epbsDefault
            StyleFocused.Color = clWindow
            TabOrder = 0
            Width = 72
          end
          object dblcVendorId2: TcxDBExtLookupComboBox
            Left = 127
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
            Style.Color = clWindow
            TabOrder = 1
            Width = 204
          end
          object dbePurchaseInvoiceDate: TcxDBDateEdit
            Left = 449
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseInvoiceDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            Style.Color = clWindow
            TabOrder = 6
            Width = 110
          end
          object dbeInvoiceDueDay: TcxDBSpinEdit
            Left = 556
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'InvoiceDueDay'
            DataBinding.DataSource = dsDefault
            Properties.AssignedValues.MinValue = True
            Properties.Increment = 5.000000000000000000
            Properties.SpinButtons.Position = sbpHorzLeftRight
            Style.Color = clWindow
            TabOrder = 7
            Width = 83
          end
          object dbchkFlagKonsinyasi: TcxDBCheckBox
            Left = 639
            Top = 8
            Caption = 'Konsinyasi'
            DataBinding.DataField = 'FlagKonsinyasi'
            DataBinding.DataSource = dsDefault
            ParentBackground = False
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Color = clWhite
            TabOrder = 8
            Transparent = True
            Width = 91
          end
          object dbePurchaseInvoiceId: TcxDBTextEdit
            Left = 449
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseInvoiceId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbePurchaseInvoiceIdPropertiesEditValueChanged
            Style.Color = clWindow
            TabOrder = 9
            Width = 110
          end
          object dbeVendorPurchaseInvoiceId: TcxDBTextEdit
            Left = 556
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'VendorPurchaseInvoiceId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.Color = clWindow
            TabOrder = 10
            Width = 174
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
            Style.Color = clWindow
            TabOrder = 11
            Width = 281
          end
          object edtAddress: TcxMemo
            Left = 58
            Top = 25
            Style.Color = clWindow
            TabOrder = 2
            Height = 39
            Width = 273
          end
          object edtCityName: TcxExtLookupComboBox
            Left = 58
            Top = 61
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            Style.Color = clWindow
            TabOrder = 3
            Width = 273
          end
          object edtProvinceName: TcxExtLookupComboBox
            Left = 58
            Top = 79
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
            Style.Color = clWindow
            TabOrder = 4
            Width = 153
          end
          object edtCountryName: TcxExtLookupComboBox
            Left = 208
            Top = 79
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Style.Color = clWindow
            TabOrder = 5
            Width = 123
          end
        end
        object cgPurchaseInvoiceDt: TcxGrid
          Left = 0
          Top = 107
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
            NavigatorButtons.SaveBookmark.Visible = False
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
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
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
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
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
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
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
            object cgvPurchaseInvoiceDtpurchaseorderid: TcxGridDBBandedColumn
              Caption = 'PO'
              DataBinding.FieldName = 'purchaseorderid'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cgvPurchaseInvoiceDtpurchaseorderno: TcxGridDBBandedColumn
              Caption = 'PO No'
              DataBinding.FieldName = 'purchaseorderno'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 9
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
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 274
          Width = 740
          Height = 113
          ActivePage = tsAmount
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 89
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
              Top = 5
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
              Left = 430
              Top = 5
              Width = 39
              Height = 13
              Caption = 'Lain-lain'
              Transparent = True
            end
            object lblTotal: TLabel
              Left = 430
              Top = 24
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
              Top = 60
              Width = 20
              Height = 13
              Caption = 'Sisa'
              Transparent = True
            end
            object Label3: TLabel
              Left = 219
              Top = 24
              Width = 39
              Height = 13
              Caption = 'No PPN'
              Transparent = True
            end
            object Label4: TLabel
              Left = 219
              Top = 42
              Width = 40
              Height = 13
              Caption = 'Tgl PPN'
              Transparent = True
            end
            object Label1: TLabel
              Left = 219
              Top = 60
              Width = 35
              Height = 13
              Caption = 'PPh 22'
              Transparent = True
              Visible = False
            end
            object Label2: TLabel
              Left = 313
              Top = 60
              Width = 8
              Height = 13
              Caption = '%'
              Transparent = True
              Visible = False
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
              Left = 113
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
              Left = 113
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
              Top = 22
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 13
              Width = 144
            end
            object btnPayment: TcxButton
              Left = 429
              Top = 40
              Width = 68
              Height = 19
              Action = actPay
              DropDownMenu = pmPayment
              Kind = cxbkDropDownButton
              Spacing = 0
              TabOrder = 14
              TabStop = False
            end
            object edtPayment: TcxCurrencyEdit
              Left = 511
              Top = 40
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 15
              Width = 144
            end
            object edtOutstandingTotalAmount: TcxCurrencyEdit
              Left = 511
              Top = 58
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 16
              Width = 144
            end
            object dbeMeterai: TcxDBCurrencyEdit
              Left = 511
              Top = 4
              BeepOnEnter = False
              DataBinding.DataField = 'meterai'
              DataBinding.DataSource = dsDefault
              Properties.AssignedValues.MinValue = True
              Properties.Nullable = False
              TabOrder = 12
              Width = 144
            end
            object dbeVoucherAmount: TcxDBCalcEdit
              Left = 113
              Top = 40
              BeepOnEnter = False
              DataBinding.DataField = 'voucheramount'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 88
            end
            object dbetaxnumber: TcxDBTextEdit
              Left = 267
              Top = 22
              DataBinding.DataField = 'taxnumber'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 8
              Width = 146
            end
            object dbetaxdate: TcxDBDateEdit
              Left = 267
              Top = 40
              DataBinding.DataField = 'taxdate'
              DataBinding.DataSource = dsDefault
              TabOrder = 9
              Width = 146
            end
            object dbePPH22: TcxDBSpinEdit
              Left = 267
              Top = 58
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
              Top = 58
              BeepOnEnter = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 11
              Visible = False
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
              Height = 89
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
              Height = 89
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
      object cgDisplay: TcxGrid
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
          object cgvPrevDisplaypurchasecategoryid: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'purchasecategoryid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPurchaseCategory
            Properties.KeyFieldNames = 'purchasecategoryid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPurchaseCategorypurchasecategoryname
            Visible = False
          end
          object cgvPrevDisplayvendorid: TcxGridDBColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
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
    object actListPayment: TAction
      Caption = 'Daftar Pembayaran'
      OnExecute = actListPaymentExecute
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
    Left = 264
    Top = 112
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
  object qryPurchaseInvoiceHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PurchaseInvoiceHd'
      'where extract(year from PurchaseInvoiceDate) = :Year'
      'and extract(month from PurchaseInvoiceDate) = :Month'
      'order by PurchaseInvoiceId')
    MasterFields = 'purchaseinvoiceid'
    BeforeInsert = qryPurchaseInvoiceHdBeforeInsert
    BeforePost = qryPurchaseInvoiceHdBeforePost
    AfterPost = qryPurchaseInvoiceHdAfterPost
    AfterCancel = qryPurchaseInvoiceHdAfterCancel
    OnNewRecord = qryPurchaseInvoiceHdNewRecord
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
  object qryGetVendorPurchaseInvoiceId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select VendorPurchaseInvoiceId'
      'from PurchaseInvoiceHd'
      'where VendorPurchaseInvoiceId = :VendorPurchaseInvoiceId'
      'and PurchaseInvoiceId <> :PurchaseInvoiceId'
      'and StatusApprove <> '#39'2'#39)
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorPurchaseInvoiceId'
      end
      item
        DataType = ftUnknown
        Name = 'PurchaseInvoiceId'
      end>
  end
  object qryGetPIPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  sum(Amount) as TotalAmount '
      'from PurchasePaymentDt a'
      
        'left join PurchasePayment b on a.PurchasePaymentId = b.PurchaseP' +
        'aymentId'
      'where a.PurchaseInvoiceId = :PurchaseInvoiceId'
      'and b.StatusApprove = '#39'1'#39)
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseInvoiceId'
      end>
  end
  object qryPurchaseInvoiceDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PurchaseInvoiceDt'
      'order by No')
    MasterSource = dsDefault
    MasterFields = 'purchaseinvoiceid'
    DetailFields = 'purchaseinvoiceid'
    BeforeInsert = qryPurchaseInvoiceDtBeforeInsert
    BeforeEdit = qryPurchaseInvoiceDtBeforeEdit
    BeforePost = qryPurchaseInvoiceDtBeforePost
    AfterPost = qryPurchaseInvoiceDtAfterPost
    OnNewRecord = qryPurchaseInvoiceDtNewRecord
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseInvoiceId'
      end>
  end
  object qryGetPurchasePrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select Price, DiscItem, DiscItemPrice'
      'from PurchasePrice'
      'where VendorId = :VendorId'
      'and ItemId = :ItemId')
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryGetLowerVendorPrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select c.ItemName, b.VendorName, a.Price'
      'from PurchasePrice a'
      'left join Vendor b on a.VendorId = b.VendorId'
      'left join Item c on a.ItemId = c.ItemId'
      'where a.ItemId = :ItemId'
      'and a.VendorId <> :VendorId'
      'and a.Price < :Price')
    Left = 296
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'Price'
      end>
  end
  object qryGetPurchaseCategory: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from PurchaseCategory'
      'where PurchaseCategoryId = :PurchaseCategoryId')
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseCategoryId'
      end>
  end
end
