inherited fmPOManufacture: TfmPOManufacture
  Caption = 'Order Pembelian'
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
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object pcBody: TcxPageControl
            Left = 340
            Top = 0
            Width = 400
            Height = 105
            ActivePage = tsInfo
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 105
            ClientRectRight = 362
            ClientRectTop = 0
            object tsInfo: TcxTabSheet
              ImageIndex = 0
              DesignSize = (
                362
                105)
              object lblCurrency: TLabel
                Left = 6
                Top = 24
                Width = 53
                Height = 13
                Caption = 'Mata Uang'
                Transparent = True
              end
              object lblKurs: TLabel
                Left = 149
                Top = 24
                Width = 21
                Height = 13
                Caption = 'Kurs'
                Transparent = True
              end
              object lblNoOrderExt: TLabel
                Left = 6
                Top = 6
                Width = 55
                Height = 13
                Caption = 'No External'
                Transparent = True
              end
              object lblOutlet: TLabel
                Left = 6
                Top = 42
                Width = 28
                Height = 13
                Caption = 'Outlet'
                Transparent = True
              end
              object lblProject: TLabel
                Left = 6
                Top = 60
                Width = 33
                Height = 13
                Caption = 'Proyek'
                Transparent = True
              end
              object dblcCurrencyId: TcxDBExtLookupComboBox
                Left = 70
                Top = 21
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
                Top = 21
                DataBinding.DataField = 'kurs'
                DataBinding.DataSource = dsDefault
                TabOrder = 3
                Width = 81
              end
              object dbePurchaseOrderIdExt: TcxDBTextEdit
                Left = 70
                Top = 3
                BeepOnEnter = False
                DataBinding.DataField = 'PurchaseOrderExternal'
                DataBinding.DataSource = dsDefault
                Properties.CharCase = ecUpperCase
                Properties.ReadOnly = False
                TabOrder = 0
                Width = 187
              end
              object dblcOutletId: TcxDBExtLookupComboBox
                Left = 70
                Top = 39
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
              object chkFlagClose: TcxDBCheckBox
                Left = 290
                Top = 3
                TabStop = False
                Anchors = [akTop, akRight]
                Caption = 'Close PO'
                DataBinding.DataField = 'FlagClose'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssInactive
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 1
                Transparent = True
                Width = 69
              end
              object dblcProject: TcxDBExtLookupComboBox
                Left = 70
                Top = 57
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
            end
            object tsAddress: TcxTabSheet
              ImageIndex = 1
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
                TabOrder = 0
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
                TabOrder = 1
                Width = 273
              end
              object edtProvinceName: TcxExtLookupComboBox
                Left = 65
                Top = 75
                Properties.View = dmGlobal.cgvPrevProvince
                Properties.KeyFieldNames = 'ProvinceId'
                Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
                Style.Color = clWindow
                TabOrder = 2
                Width = 153
              end
              object edtCountryName: TcxExtLookupComboBox
                Left = 215
                Top = 75
                Properties.View = dmGlobal.cgvPrevCountry
                Properties.KeyFieldNames = 'CountryId'
                Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
                Style.Color = clWindow
                TabOrder = 3
                Width = 123
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
                TabOrder = 4
                Width = 273
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
                Height = 105
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
                Height = 105
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
                Height = 105
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
            Height = 105
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblTermin: TLabel
              Left = 9
              Top = 78
              Width = 32
              Height = 13
              Caption = 'Termin'
              Transparent = True
            end
            object lblPeriodeKirim: TLabel
              Left = 9
              Top = 60
              Width = 40
              Height = 13
              Caption = 'Tgl Kirim'
              Transparent = True
            end
            object lblSampaiDengan: TLabel
              Left = 187
              Top = 60
              Width = 16
              Height = 13
              Caption = 's/d'
              Transparent = True
            end
            object lblPurchaseOrderId: TLabel
              Left = 9
              Top = 42
              Width = 32
              Height = 13
              Caption = 'No PO'
              Transparent = True
            end
            object lblVendor: TLabel
              Left = 9
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Supplier'
              Transparent = True
            end
            object lblVendorPurchaseOrderId: TLabel
              Left = 9
              Top = 24
              Width = 39
              Height = 13
              Caption = 'Tanggal'
              Transparent = True
            end
            object dbeEndDate: TcxDBDateEdit
              Left = 212
              Top = 57
              BeepOnEnter = False
              DataBinding.DataField = 'TglKirimAkhir'
              DataBinding.DataSource = dsDefault
              Properties.SaveTime = False
              Properties.ShowTime = False
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 4
              Width = 121
            end
            object dbePaymentTerm: TcxDBMRUEdit
              Left = 60
              Top = 75
              BeepOnEnter = False
              DataBinding.DataField = 'PaymentTerm'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 273
            end
            object dbePurchaseOrderDate: TcxDBDateEdit
              Left = 60
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderDate'
              DataBinding.DataSource = dsDefault
              Properties.DateButtons = [btnClear, btnNow]
              Properties.Kind = ckDateTime
              Style.ButtonTransparency = ebtAlways
              TabOrder = 1
              Width = 157
            end
            object dbeStartDate: TcxDBDateEdit
              Left = 60
              Top = 57
              BeepOnEnter = False
              DataBinding.DataField = 'TglKirimAwal'
              DataBinding.DataSource = dsDefault
              Properties.SaveTime = False
              Properties.ShowTime = False
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 3
              Width = 121
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
            object dbePurchaseOrderCode: TcxDBButtonEdit
              Left = 60
              Top = 39
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderCode'
              DataBinding.DataSource = dsDefault
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 273
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplayPurchaseOrderCode
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'PurchaseOrderCode'
              Column = cgvPrevDisplayPurchaseOrderCode
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusapprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Uncheck'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Approved'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
          end
          object cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'PurchaseOrderCode'
          end
          object cgvPrevDisplayPurchaseOrderDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'PurchaseOrderDate'
          end
          object cgvPrevDisplayVendorId: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'VendorId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmInventory.cgvPrevVendorVendorName
          end
          object cgvPrevDisplayPurchaseOrderExternal: TcxGridDBColumn
            Caption = 'SO Supplier'
            DataBinding.FieldName = 'PurchaseOrderExternal'
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
    DataSet = qryPurchaseOrderHd
  end
  object qryPurchaseOrderHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPurchaseOrderHdBeforePost
    OnNewRecord = qryPurchaseOrderHdNewRecord
    CommandText = 
      'select *'#13#10'from PurchaseOrderHd'#13#10'where PurchaseOrderDate between ' +
      ':StartDate and :EndDate'#13#10'and StatusPurchaseOrder like :StatusPur' +
      'chaseOrder'#13#10'and FlagAT like :FlagAT'#13#10'order by PurchaseOrderCode'
    MasterFields = 'PurchaseOrderCode'
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
      end
      item
        Name = 'StatusPurchaseOrder'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'FlagAT'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dsPurchaseOrderDt: TDataSource
    DataSet = qryPurchaseOrderDt
    OnDataChange = dsPurchaseOrderDtDataChange
    Left = 168
    Top = 144
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
  object qryGetItemPrice: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'VendorId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemId'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        '  a.M2, a.M3, a.Berat, a.StatusPurchasePricing, a.StatusPurchase' +
        'Dimensi,'
      '  b.Price1, '
      
        '  c.Price, c.DiscItem, c.DiscItemPrice, c.DiscItem2, c.DiscItemP' +
        'rice2'
      'from Item a'
      'left join PurchasePriceList b on a.ItemId = b.ItemId '
      
        'left join PurchasePrice c on (a.ItemId = c.ItemId and c.VendorId' +
        ' = :VendorId)'
      'where a.ItemId = :ItemId')
    Left = 136
    Top = 208
  end
  object qryPurchaseOrderDt: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforeInsert = qryPurchaseOrderDtBeforeInsert
    BeforePost = qryPurchaseOrderDtBeforePost
    OnNewRecord = qryPurchaseOrderDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from PurchaseOrderDt'
      'where PurchaseOrderCode = :PurchaseOrderCode')
    Left = 136
    Top = 144
  end
end
