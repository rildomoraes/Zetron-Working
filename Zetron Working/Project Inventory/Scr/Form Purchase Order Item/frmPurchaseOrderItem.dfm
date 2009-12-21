inherited fmPurchaseOrderItem: TfmPurchaseOrderItem
  Caption = 'Pembelian Barang Dari Order Pembelian'
  ClientWidth = 642
  FormStyle = fsNormal
  Visible = False
  ExplicitWidth = 650
  DesignSize = (
    642
    367)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 642
    ExplicitWidth = 642
    inherited bvlSpacer3: TBevel
      Left = 309
      ExplicitLeft = 309
    end
    inherited bvlSpacer4: TBevel
      Left = 455
      ExplicitLeft = 455
    end
    object btnProcess: TcxButton
      Left = 261
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object pnlProgressBar: TPanel
      Left = 319
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 6
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  inherited dxDockSite1: TdxDockSite
    Width = 642
    ExplicitWidth = 642
    DockType = 0
    OriginalWidth = 642
    OriginalHeight = 317
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 614
      ExplicitWidth = 614
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 614
        ExplicitWidth = 614
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 614
        ExplicitWidth = 614
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 610
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblVendor: TLabel
            Left = 9
            Top = 9
            Width = 34
            Height = 13
            Caption = 'Vendor'
            Transparent = True
          end
          object lblPurchaseOrderId: TLabel
            Left = 346
            Top = 27
            Width = 32
            Height = 13
            Caption = 'No PO'
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
          object lblVendorPurchaseOrderId: TLabel
            Left = 346
            Top = 9
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblProject: TLabel
            Left = 346
            Top = 81
            Width = 33
            Height = 13
            Caption = 'Proyek'
            Transparent = True
          end
          object Label1: TLabel
            Left = 346
            Top = 45
            Width = 50
            Height = 13
            Caption = 'No PO Ext'
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
            TabOrder = 0
            Width = 72
          end
          object dblcVendorId2: TcxDBExtLookupComboBox
            Left = 129
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevVendor
            Properties.KeyFieldNames = 'VendorId'
            Properties.ListFieldItem = dmGeneral.cgvPrevVendorVendorName
            TabOrder = 1
            Width = 202
          end
          object dbePurchaseOrderDate: TcxDBDateEdit
            Left = 410
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 2
            Width = 110
          end
          object dbePurchaseOrderId: TcxDBTextEdit
            Left = 410
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = dbePurchaseOrderIdPropertiesEditValueChanged
            TabOrder = 3
            Width = 110
          end
          object dblcOutletId: TcxDBExtLookupComboBox
            Left = 410
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            TabOrder = 5
            Width = 172
          end
          object dbeVendorPurchaseOrderId: TcxDBTextEdit
            Left = 410
            Top = 43
            BeepOnEnter = False
            DataBinding.DataField = 'VendorPurchaseOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 4
            Width = 172
          end
          object dblcProjectId: TcxDBExtLookupComboBox
            Left = 410
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            TabOrder = 6
            Width = 172
          end
          object dbeAddress: TcxDBMemo
            Left = 58
            Top = 25
            DataBinding.DataField = 'address'
            DataBinding.DataSource = dsDefault
            TabOrder = 7
            Height = 37
            Width = 273
          end
          object dbeCityName: TcxDBTextEdit
            Left = 58
            Top = 61
            DataBinding.DataField = 'cityname'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 273
          end
          object dbeProvinceName: TcxDBTextEdit
            Left = 58
            Top = 79
            DataBinding.DataField = 'provincename'
            DataBinding.DataSource = dsDefault
            TabOrder = 9
            Width = 153
          end
          object dbeCountryName: TcxDBTextEdit
            Left = 210
            Top = 79
            DataBinding.DataField = 'countryname'
            DataBinding.DataSource = dsDefault
            TabOrder = 10
            Width = 121
          end
        end
        object cgPrevPurchaseOrderDt: TcxGrid
          Left = 0
          Top = 105
          Width = 610
          Height = 208
          Align = alClient
          TabOrder = 1
          object cgvPrevPurchaseOrderDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPrevPurchaseOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'RecId'
                Column = cgvPrevPurchaseOrderDtno
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvPrevPurchaseOrderDtpurchaseorderid: TcxGridDBColumn
              Caption = 'PO'
              DataBinding.FieldName = 'purchaseorderid'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtno: TcxGridDBColumn
              Caption = 'No '
              DataBinding.FieldName = 'no'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 40
            end
            object cgvPrevPurchaseOrderDtitemid1: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtitemid2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtitemid3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtitemid4: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtitemtext: TcxGridDBColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtqty: TcxGridDBColumn
              Caption = 'Jumlah Order'
              DataBinding.FieldName = 'qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Sorting = False
              Width = 80
            end
            object cgvPrevPurchaseOrderDtqtyoutstanding: TcxGridDBColumn
              Caption = 'Sisa Order'
              DataBinding.FieldName = 'qtyoutstanding'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Sorting = False
              Width = 80
            end
            object cgvPrevPurchaseOrderDtprice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'price'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtdiscitem: TcxGridDBColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'discitem'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtdiscitemprice: TcxGridDBColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'discitemprice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtdiscitem2: TcxGridDBColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'discitem2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevPurchaseOrderDtdiscitemprice2: TcxGridDBColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'discitemprice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevPurchaseOrderDtvoucheritem: TcxGridDBColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheritem'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtamount: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtemployeeid: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevPurchaseOrderDtqtyinvoice: TcxGridDBColumn
              Caption = 'Proses'
              DataBinding.FieldName = 'qtyinvoice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Sorting = False
              Styles.Content = dmGlobal.stPurple
              Width = 80
            end
          end
          object cgPrevPurchaseOrderDtLevel1: TcxGridLevel
            GridView = cgvPrevPurchaseOrderDt
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
      object cgExplorer: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevPurchaseOrderHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.KeyFieldNames = 'purchaseorderid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevPurchaseOrderHdpurchaseorderid: TcxGridDBColumn
            Caption = 'No PO'
            DataBinding.FieldName = 'purchaseorderid'
          end
          object cgvPrevPurchaseOrderHdpurchaseorderdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchaseorderdate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevPurchaseOrderHdvendorpurchaseorderid: TcxGridDBColumn
            Caption = 'PO Vendor'
            DataBinding.FieldName = 'vendorpurchaseorderid'
          end
          object cgvPrevPurchaseOrderHdoutletname: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletname'
            Visible = False
          end
          object cgvPrevPurchaseOrderHdprojectname: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectname'
            Visible = False
          end
          object cgvPrevPurchaseOrderHdtotalamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'totalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevPurchaseOrderHdemployeename: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeename'
            Visible = False
          end
        end
        object cgExplorerLevel1: TcxGridLevel
          GridView = cgvPrevPurchaseOrderHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object actPost: TAction
      Caption = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryPrevPurchaseOrderHd
  end
  object mdPrevPurchaseOrderDt: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = mdPrevPurchaseOrderDtBeforePost
    Left = 168
    Top = 144
  end
  object dsPrevPurchaseOrderDt: TDataSource
    DataSet = mdPrevPurchaseOrderDt
    Left = 200
    Top = 144
  end
  object qryPrevPurchaseOrderHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select'
      '  a.*,'
      '  e.VendorName, e.Address,'
      '  f.CityName, g.ProvinceName, h.CountryName,'
      '  b.ProjectName, c.OutletName, d.EmployeeName'
      'from PurchaseOrderHd a'
      'left join Project b on a.ProjectId = b.ProjectId'
      'left join Outlet c on a.OutletId = c.OutletId'
      'left join Employee d on a.EmployeeId = d.EmployeeId'
      'left join Vendor e on a.VendorId = e.VendorId'
      'left join City f on e.CityId = f.CityId'
      'left join Province g on g.ProvinceId = f.ProvinceId'
      'left join Country h on h.CountryId = g.CountryId'
      'where a.VendorId = :VendorId'
      'and a.StatusApprove = '#39'1'#39)
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  object qryPrevPurchaseOrderDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, '
      '  0 as qtyinvoice'
      'from PurchaseOrderDt a '
      'where a.PurchaseOrderId = :PurchaseOrderId'
      'order by no')
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchaseOrderId'
      end>
  end
end
