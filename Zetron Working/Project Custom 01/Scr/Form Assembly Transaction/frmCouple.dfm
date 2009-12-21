inherited fmCouple: TfmCouple
  Caption = 'Transaksi Couple / Assembly'
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object pnlProgressBar: TPanel
      Left = 581
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 11
      object Label6: TLabel
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
  inherited pnlCustom: TPanel
    object Image1: TImage [3]
      Left = 631
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
    object lblFixed: TLabel [4]
      Left = 655
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Qty Minus'
      Transparent = True
    end
  end
  inherited dxDockSite1: TdxDockSite
    ExplicitWidth = 768
    ExplicitHeight = 387
    DockType = 0
    OriginalWidth = 768
    OriginalHeight = 387
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 740
      Height = 387
      ExplicitWidth = 740
      ExplicitHeight = 387
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 740
        Height = 387
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 740
        Height = 387
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnTop: TPanel
          Left = 0
          Top = 0
          Width = 736
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblPurchaseInvoiceId: TLabel
            Left = 9
            Top = 9
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblWarehouseSource: TLabel
            Left = 9
            Top = 45
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object lblItemId: TLabel
            Left = 322
            Top = 9
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object lblItem: TLabel
            Left = 322
            Top = 28
            Width = 34
            Height = 13
            Caption = 'Barang'
            Transparent = True
          end
          object lblQuantityProcess: TLabel
            Left = 322
            Top = 46
            Width = 50
            Height = 13
            Caption = 'Qty && HPP'
            Transparent = True
          end
          object lblTotalCOGS: TLabel
            Left = 322
            Top = 64
            Width = 49
            Height = 13
            Caption = 'Total HPP'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 63
            Width = 33
            Height = 13
            Caption = 'Proyek'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 26
            Width = 63
            Height = 13
            Caption = 'No Transaksi'
            Transparent = True
          end
          object dbeCoupleDate: TcxDBDateEdit
            Left = 84
            Top = 7
            BeepOnEnter = False
            DataBinding.DataField = 'coupledate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 0
            Width = 110
          end
          object dbeCoupleId: TcxDBTextEdit
            Left = 84
            Top = 25
            BeepOnEnter = False
            DataBinding.DataField = 'coupleid'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 110
          end
          object dblcbWarehouseId: TcxDBExtLookupComboBox
            Left = 84
            Top = 43
            BeepOnEnter = False
            DataBinding.DataField = 'warehouseid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
            TabOrder = 2
            Width = 219
          end
          object dblcItemId: TcxDBExtLookupComboBox
            Left = 382
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'itemid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevItemCouple
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemCoupleitemidexternal
            TabOrder = 3
            Width = 219
          end
          object dblcItemName: TcxDBExtLookupComboBox
            Left = 382
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'itemid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevItemCouple
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemCoupleItemName
            TabOrder = 4
            Width = 219
          end
          object edtCOGS: TcxCurrencyEdit
            Left = 478
            Top = 44
            BeepOnEnter = False
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 6
            Width = 123
          end
          object dbeTotalCOGS: TcxDBCurrencyEdit
            Left = 382
            Top = 62
            BeepOnEnter = False
            DataBinding.DataField = 'TotalCOGS'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dbeTotalCOGSPropertiesEditValueChanged
            TabOrder = 7
            Width = 127
          end
          object btnCalcCOGS: TcxButton
            Left = 510
            Top = 63
            Width = 91
            Height = 19
            Hint = 'Update Item'
            Caption = 'Hitung Ulang'
            TabOrder = 8
            TabStop = False
            OnClick = btnCalcCOGSClick
            Spacing = 0
          end
          object dblcProject: TcxDBExtLookupComboBox
            Left = 84
            Top = 61
            BeepOnEnter = False
            DataBinding.DataField = 'ProjectId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            TabOrder = 9
            Width = 219
          end
          object dbeQty: TcxDBCalcEdit
            Left = 382
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'qty'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 97
          end
        end
        object cgCoupleDt: TcxGrid
          Left = 0
          Top = 89
          Width = 736
          Height = 196
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cgvCoupleDt: TcxGridDBTableView
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
            OnFocusedRecordChanged = cgvCoupleDtFocusedRecordChanged
            DataController.DataSource = dsCoupleDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'No'
                Column = cgvCoupleDtno
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvCoupleDtcoupleid: TcxGridDBColumn
              Caption = 'Couple'
              DataBinding.FieldName = 'coupleid'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
            object cgvCoupleDtno: TcxGridDBColumn
              Caption = ' No'
              DataBinding.FieldName = 'no'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 45
            end
            object cgvCoupleDtitemid1: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
              Options.Filtering = False
            end
            object cgvCoupleDtitemid2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
              Options.Filtering = False
            end
            object cgvCoupleDtitemid3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemType
              Visible = False
              Options.Filtering = False
            end
            object cgvCoupleDtitemid4: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'itemid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemitemnamechinese
              Visible = False
              Options.Filtering = False
            end
            object cgvCoupleDtqty: TcxGridDBColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
            end
            object cgvCoupleDtqtycouple: TcxGridDBColumn
              Caption = 'Qty Proses'
              DataBinding.FieldName = 'qtycouple'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
            object cgvCoupleDtcogs: TcxGridDBColumn
              Caption = 'HPP (Manual)'
              DataBinding.FieldName = 'cogs'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
            object cgvCoupleDttotalcogs: TcxGridDBColumn
              Caption = 'Total HPP'
              DataBinding.FieldName = 'totalcogs'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cgvTransactionDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsTransactionDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'itemidexternal'
                Column = cgvTransactionDtitemidexternal
              end
              item
                Format = '#,##0.00;-#,##0.00'
                Kind = skSum
                FieldName = 'totalcogs'
                Column = cgvTransactionDttotalcogs
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cgvTransactionDtStylesGetContentStyle
            object cgvTransactionDtitemidexternal: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'itemidexternal'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 106
            end
            object cgvTransactionDtitemname: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'itemname'
              Options.Filtering = False
              Width = 168
            end
            object cgvTransactionDtitemnamechinese: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'itemnamechinese'
              Visible = False
              Options.Filtering = False
            end
            object cgvTransactionDttype: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'type'
              Visible = False
              Options.Filtering = False
            end
            object cgvTransactionDtdatecogs: TcxGridDBColumn
              Caption = 'Tgl HPP'
              DataBinding.FieldName = 'datecogs'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Filtering = False
              Width = 80
            end
            object cgvTransactionDtqty: TcxGridDBColumn
              Caption = ' Qty'
              DataBinding.FieldName = 'qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
            end
            object cgvTransactionDtcogs: TcxGridDBColumn
              Caption = 'HPP'
              DataBinding.FieldName = 'cogs'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
            end
            object cgvTransactionDttotalcogs: TcxGridDBColumn
              Caption = 'Total HPP'
              DataBinding.FieldName = 'totalcogs'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
            end
          end
          object cgCoupleDtLevel1: TcxGridLevel
            Caption = '1.Item'
            GridView = cgvCoupleDt
          end
          object cgCoupleDtLevel2: TcxGridLevel
            Caption = '2. HPP (View Only)'
            GridView = cgvTransactionDt
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 285
          Width = 736
          Height = 98
          ActivePage = tsExternalMemo
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 75
          ClientRectRight = 736
          ClientRectTop = 0
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo Faktur'
            ImageIndex = 1
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 75
              Width = 736
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            object dbmInternalMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'internalmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 75
              Width = 736
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 387
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgExplorer: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 118
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'coupleid'
              Column = cgvExplorercoupleid
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvExplorerstatusapprove: TcxGridDBColumn
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
          object cgvExplorercoupleid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'coupleid'
          end
          object cgvExplorercoupledate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'coupledate'
          end
          object cgvExplorerwarehouseid: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'warehouseid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevWarehouse
            Properties.KeyFieldNames = 'WarehouseId'
            Properties.ListFieldItem = dmGeneral.cgvPrevWarehouseWarehouseName
          end
          object cgvExploreritemid: TcxGridDBColumn
            Caption = 'Barang'
            DataBinding.FieldName = 'itemid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
            Visible = False
          end
          object cgvExplorerprojectid: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'projectid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevProject
            Properties.KeyFieldNames = 'projectid'
            Properties.ListFieldItem = dmGeneral.cgvPrevProjectprojectname
            Visible = False
          end
        end
        object cgExplorerLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryCoupleHd
  end
  object qryCoupleHd: TZQuery
    Connection = dmGlobal.zconGlobal
    BeforeInsert = qryCoupleHdBeforeInsert
    BeforeEdit = qryCoupleHdBeforeEdit
    BeforePost = qryCoupleHdBeforePost
    AfterPost = qryCoupleHdAfterPost
    AfterCancel = qryCoupleHdAfterCancel
    OnNewRecord = qryCoupleHdNewRecord
    SQL.Strings = (
      'select * '
      'from CoupleHd'
      'where extract(year from CoupleDate) = :Year'
      'and extract(month from CoupleDate) = :Month'
      'order by CoupleId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Year'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptUnknown
      end>
    LinkedFields = 'coupleid'
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptUnknown
      end>
  end
  object qryCoupleDt: TZQuery
    Connection = dmGlobal.zconGlobal
    AfterPost = qryCoupleDtAfterPost
    OnNewRecord = qryCoupleDtNewRecord
    SQL.Strings = (
      'select * '
      'from CoupleDt'
      'where CoupleId = :CoupleId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
    DataSource = dsDefault
    MasterFields = 'coupleid'
    MasterSource = dsDefault
    LinkedFields = 'coupleid'
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
  end
  object dsCoupleDt: TDataSource
    DataSet = qryCoupleDt
    OnDataChange = dsCoupleDtDataChange
    Left = 168
    Top = 144
  end
  object qryTransactionDt: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select '
      '  c.ItemIdExternal, c.ItemName, c.Type, c.ItemNameChinese,'
      
        '  a.DateCOGS, a.Qty, a.COGS, a.TotalCOGS, b.ReferenceId as Coupl' +
        'eId'
      'from TransactionDt a'
      'left join Transaction b on a.TransactionId = b.TransactionId'
      'left join Item c on b.ItemId = c.ItemId'
      'where b.ReferenceId = :CoupleId'
      ''
      'union all'
      ''
      'select'
      '  b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese,'
      
        '  a.TransactionDate as DateCOGS, a.Qty, a.Price as COGS, (a.Qty ' +
        '* a.Price) as TotalCOGS,'
      '  a.ReferenceId as CoupleId'
      'from Transaction a'
      'left join Item b on a.ItemId = b.ItemId'
      'where a.ReferenceId = :CoupleId'
      'and a.TransactionTypeId = '#39'TY010'#39
      'and (b.StatusItem = '#39'0'#39' or b.StatusItem = '#39'2'#39')'
      ''
      'order by ItemIdExternal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
    DataSource = dsDefault
    MasterFields = 'coupleid'
    MasterSource = dsDefault
    LinkedFields = 'coupleid'
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
  end
  object dsTransactionDt: TDataSource
    DataSet = qryTransactionDt
    Left = 168
    Top = 176
  end
  object qryGetStatusItem: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select StatusItem'
      'from Item'
      'where ItemId = :ItemId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end>
  end
  object qryGetItemDetail: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select * '
      'from ItemDt'
      'where ItemId = :ItemId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end>
  end
  object qryDeleteDetail: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'delete from CoupleDt'
      'where CoupleId = :CoupleId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
  end
  object qryInsertDetail: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'insert into CoupleDt'
      '  (CoupleId, No, ItemId, Qty, QtyCouple, COGS, TotalCOGS)'
      'values'
      '  (:CoupleId, :No, :ItemId, :Qty, :QtyCouple, :COGS, :TotalCOGS)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'No'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Qty'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QtyCouple'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'COGS'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'TotalCOGS'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'No'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Qty'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QtyCouple'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'COGS'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'TotalCOGS'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateCOGSCoupleHd: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select * '
      'from spUpdateCOGSCoupleHd(:CoupleId)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CoupleId'
        ParamType = ptUnknown
      end>
  end
end
