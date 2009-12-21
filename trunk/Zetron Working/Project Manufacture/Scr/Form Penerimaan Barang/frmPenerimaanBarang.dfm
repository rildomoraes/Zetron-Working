inherited fmPenerimaanBarang: TfmPenerimaanBarang
  Caption = 'Penerimaan Barang'
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
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 0
            Top = 0
            Width = 340
            Height = 105
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lblReceivingDate: TLabel
              Left = 9
              Top = 24
              Width = 39
              Height = 13
              Caption = 'Tanggal'
              Transparent = True
            end
            object lblReceivingCode: TLabel
              Left = 9
              Top = 60
              Width = 73
              Height = 13
              Caption = 'No Penerimaan'
              Transparent = True
            end
            object lblWarehouseId: TLabel
              Left = 9
              Top = 42
              Width = 38
              Height = 13
              Caption = 'Gudang'
              Transparent = True
            end
            object lblPurchaseOrder: TLabel
              Left = 9
              Top = 78
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
            object dbeReceivingRecordDate: TcxDBDateEdit
              Left = 90
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'ReceivingRecordDate'
              DataBinding.DataSource = dsDefault
              Properties.DateButtons = [btnToday]
              Properties.SaveTime = False
              TabOrder = 1
              Width = 157
            end
            object dbeReceivingRecordCode: TcxDBTextEdit
              Left = 90
              Top = 57
              BeepOnEnter = False
              DataBinding.DataField = 'ReceivingRecordCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 243
            end
            object dblcWarehouse: TcxDBExtLookupComboBox
              Left = 90
              Top = 39
              BeepOnEnter = False
              DataBinding.DataField = 'WarehouseId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmInventory.cgvPrevWarehouse
              Properties.KeyFieldNames = 'WarehouseId'
              Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
              TabOrder = 0
              Width = 243
            end
            object dblcVendorId: TcxDBExtLookupComboBox
              Left = 90
              Top = 3
              BeepOnEnter = False
              DataBinding.DataField = 'VendorId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmInventory.cgvPrevVendor
              Properties.KeyFieldNames = 'VendorId'
              Properties.ListFieldItem = dmInventory.cgvPrevVendorVendorName
              Style.Color = clWindow
              TabOrder = 4
              Width = 243
            end
            object dbePurchaseOrder: TcxDBButtonEdit
              Left = 90
              Top = 75
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderCode'
              DataBinding.DataSource = dsDefault
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbePurchaseOrderPropertiesButtonClick
              TabOrder = 3
              Width = 243
            end
          end
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
            TabOrder = 1
            TabPosition = tpRight
            ClientRectBottom = 99
            ClientRectLeft = 3
            ClientRectRight = 360
            ClientRectTop = 3
            object tsInfo: TcxTabSheet
              ImageIndex = 0
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblTallyman: TLabel
                Left = 6
                Top = 6
                Width = 42
                Height = 13
                Caption = 'Tallyman'
                Transparent = True
              end
              object dblcTallyman: TcxDBExtLookupComboBox
                Left = 70
                Top = 3
                BeepOnEnter = False
                DataBinding.DataField = 'TallymanId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevTallyman
                Properties.KeyFieldNames = 'TallymanId'
                Properties.ListFieldItem = dmInventory.cgvPrevTallymanTallymanName
                TabOrder = 0
                Width = 240
              end
            end
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
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
                Height = 96
                Width = 357
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              ExplicitLeft = 0
              ExplicitTop = 0
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
                Height = 96
                Width = 357
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
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
              FieldName = 'salesinvoiceid'
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
              FieldName = 'ReceivingRecordCode'
              Column = cgvPrevDisplayReceivingRecordCode
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'StatusApprove'
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
          object cgvPrevDisplayReceivingRecordCode: TcxGridDBColumn
            Caption = 'No Penerimaan'
            DataBinding.FieldName = 'ReceivingRecordCode'
          end
          object cgvPrevDisplayReceivingRecordDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'ReceivingRecordDate'
          end
          object cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'WarehouseId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmInventory.cgvPrevWarehouseWarehouseName
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn
            Caption = 'No PO'
            DataBinding.FieldName = 'PurchaseOrderCode'
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
    DataSet = qryReceivingRecordHd
    OnDataChange = dsDefaultDataChange
  end
  object qryReceivingRecordHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryReceivingRecordHdBeforePost
    OnNewRecord = qryReceivingRecordHdNewRecord
    CommandText = 
      'select *'#13#10'from ReceivingRecordHd'#13#10'where ReceivingRecordDate betw' +
      'een :StartDate and :EndDate'
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
    Left = 136
    Top = 112
  end
  object dsReceivingRecordDt: TDataSource
    DataSet = qryReceivingRecordDt
    Left = 168
    Top = 144
  end
  object dsReceivingRecordSJ: TDataSource
    DataSet = qryReceivingRecordSJ
    Left = 168
    Top = 176
  end
  object qryReceivingRecordDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ReceivingRecordCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from ReceivingRecordDt'
      'where ReceivingRecordCode = :ReceivingRecordCode')
    Left = 136
    Top = 144
  end
  object qryReceivingRecordSJ: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ReceivingRecordCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from ReceivingRecordSJ'
      'where ReceivingRecordCode = :ReceivingRecordCode')
    Left = 136
    Top = 176
  end
  object sbPurchaseOrder: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conReadOnly
    ColumnOptions = <
      item
        ColumnName = 'PurchaseOrderCode'
        Caption = 'No PO'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'PurchaseOrderDate'
        Caption = 'Tgl PO'
        PropertiesClass = pcDateTime
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'VendorName'
        Caption = 'Vendor'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'VendorId'
        Caption = 'VendorId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Parameters = <
      item
        Name = 'VendorId'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    ShowKeyword = True
    SQL.Strings = (
      'Select a.PurchaseOrderCode, a.PurchaseOrderDate, b.VendorName'
      'From PurchaseOrderHd a Left Join'
      '  Vendor b On a.VendorId = b.VendorId'
      'Where a.VendorId = :VendorId')
    Title = 'Order Pembelian'
    Version = '1.0'
    SettingFilename = 'Setting sbPurchaseOrder.cfg'
    Left = 200
    Top = 176
  end
end
