inherited fmSalesOrderItem: TfmSalesOrderItem
  Caption = 'Penjualan Barang Dari Order Penjualan'
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
      ExplicitLeft = 257
    end
    inherited bvlSpacer4: TBevel
      Left = 455
      ExplicitLeft = 455
      ExplicitTop = 4
    end
    object pnlProgressBar: TPanel
      Left = 319
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 5
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
    object btnProcess: TcxButton
      Left = 261
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 6
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
          object lblCustomer: TLabel
            Left = 8
            Top = 9
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblSalesOrderId: TLabel
            Left = 346
            Top = 28
            Width = 32
            Height = 13
            Caption = 'No PO'
            Transparent = True
          end
          object lblOutlet: TLabel
            Left = 346
            Top = 64
            Width = 28
            Height = 13
            Caption = 'Outlet'
            Transparent = True
          end
          object lblTanggal: TLabel
            Left = 346
            Top = 10
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblProject: TLabel
            Left = 346
            Top = 82
            Width = 33
            Height = 13
            Caption = 'Proyek'
            Transparent = True
          end
          object Label1: TLabel
            Left = 346
            Top = 46
            Width = 32
            Height = 13
            Caption = 'No PO'
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
          object dbeSalesOrderDate: TcxDBDateEdit
            Left = 410
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
            Left = 410
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
            Left = 410
            Top = 62
            BeepOnEnter = False
            DataBinding.DataField = 'outletid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            TabOrder = 9
            Width = 172
          end
          object dbeCustomerSalesOrderId: TcxDBTextEdit
            Left = 410
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'CustomerSalesOrderId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 8
            Width = 172
          end
          object dblcProjectId: TcxDBExtLookupComboBox
            Left = 410
            Top = 80
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            TabOrder = 10
            Width = 172
          end
          object dbeAddress: TcxDBMemo
            Left = 58
            Top = 25
            DataBinding.DataField = 'address'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Height = 37
            Width = 273
          end
          object dbeCityName: TcxDBTextEdit
            Left = 58
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'cityname'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 273
          end
          object dbeProvinceName: TcxDBTextEdit
            Left = 58
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'provincename'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 153
          end
          object dbeCountryName: TcxDBTextEdit
            Left = 210
            Top = 79
            BeepOnEnter = False
            DataBinding.DataField = 'countryname'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 121
          end
        end
        object cgPrevSalesOrderDt: TcxGrid
          Left = 0
          Top = 105
          Width = 610
          Height = 208
          Align = alClient
          TabOrder = 1
          object cgvPrevSalesOrderDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPrevSalesOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'RecId'
                Column = cgvPrevSalesOrderDtno
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvPrevSalesOrderDtSalesorderid: TcxGridDBColumn
              Caption = 'PO'
              DataBinding.FieldName = 'Salesorderid'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevSalesOrderDtno: TcxGridDBColumn
              Caption = 'No '
              DataBinding.FieldName = 'no'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 40
            end
            object cgvPrevSalesOrderDtitemid1: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevSalesOrderDtitemid2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevSalesOrderDtitemid3: TcxGridDBColumn
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
            object cgvPrevSalesOrderDtitemid4: TcxGridDBColumn
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
            object cgvPrevSalesOrderDtitemtext: TcxGridDBColumn
              Caption = 'Memo'
              DataBinding.FieldName = 'itemtext'
              Options.Editing = False
              Options.Sorting = False
            end
            object cgvPrevSalesOrderDtqty: TcxGridDBColumn
              Caption = 'Jumlah Order'
              DataBinding.FieldName = 'qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Width = 80
            end
            object cgvPrevSalesOrderDtqtyoutstanding: TcxGridDBColumn
              Caption = 'Sisa Order'
              DataBinding.FieldName = 'qtyoutstanding'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Width = 80
            end
            object cgvPrevSalesOrderDtprice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'price'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtdiscitem: TcxGridDBColumn
              Caption = 'Disc %'
              DataBinding.FieldName = 'discitem'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtdiscitemprice: TcxGridDBColumn
              Caption = 'Disc'
              DataBinding.FieldName = 'discitemprice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtdiscitem2: TcxGridDBColumn
              Caption = 'Disc2 %'
              DataBinding.FieldName = 'discitem'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtdiscitemprice2: TcxGridDBColumn
              Caption = 'Disc2'
              DataBinding.FieldName = 'discitemprice2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtvoucheritem: TcxGridDBColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'voucheritem'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtamount: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'amount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtemployeeid: TcxGridDBColumn
              Caption = 'Pegawai'
              DataBinding.FieldName = 'employeeid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              Visible = False
              Options.Editing = False
            end
            object cgvPrevSalesOrderDtqtyinvoice: TcxGridDBColumn
              Caption = 'Proses'
              DataBinding.FieldName = 'qtyinvoice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Styles.Content = dmGlobal.stPurpleLight
              Width = 80
            end
          end
          object cgPrevSalesOrderDtLevel1: TcxGridLevel
            GridView = cgvPrevSalesOrderDt
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
        object cgvPrevSalesOrderHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.KeyFieldNames = 'Salesorderid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevSalesOrderHdSalesorderid: TcxGridDBColumn
            Caption = 'No PO'
            DataBinding.FieldName = 'Salesorderid'
          end
          object cgvPrevSalesOrderHdSalesorderdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'Salesorderdate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevSalesOrderHdCustomerSalesorderid: TcxGridDBColumn
            Caption = 'PO Customer'
            DataBinding.FieldName = 'CustomerSalesorderid'
          end
          object cgvPrevSalesOrderHdoutletname: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletname'
            Visible = False
          end
          object cgvPrevSalesOrderHdprojectname: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectname'
            Visible = False
          end
          object cgvPrevSalesOrderHdtotalamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'totalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvPrevSalesOrderHdemployeename: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeename'
            Visible = False
          end
        end
        object cgExplorerLevel1: TcxGridLevel
          GridView = cgvPrevSalesOrderHd
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
    DataSet = qryPrevSalesOrderHd
  end
  object mdPrevSalesOrderDt: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = mdPrevSalesOrderDtBeforePost
    Left = 168
    Top = 144
  end
  object dsPrevSalesOrderDt: TDataSource
    DataSet = mdPrevSalesOrderDt
    Left = 200
    Top = 144
  end
  object qryPrevSalesOrderHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select'
      '  a.*,'
      '  e.CustomerName, e.Address,'
      '  f.CityName, g.ProvinceName, h.CountryName,'
      '  b.ProjectName, c.OutletName, d.EmployeeName'
      'from SalesOrderHd a'
      'left join Project b on a.ProjectId = b.ProjectId'
      'left join Outlet c on a.OutletId = c.OutletId'
      'left join Employee d on a.EmployeeId = d.EmployeeId'
      'left join Customer e on a.CustomerId = e.CustomerId'
      'left join City f on e.CityId = f.CityId'
      'left join Province g on g.ProvinceId = f.ProvinceId'
      'left join Country h on h.CountryId = g.CountryId'
      'where a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39)
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPrevSalesOrderDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, '
      '  0 as qtyinvoice'
      'from SalesOrderDt a '
      'where a.SalesOrderId = :SalesOrderId'
      'order by no')
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesOrderId'
      end>
  end
end
