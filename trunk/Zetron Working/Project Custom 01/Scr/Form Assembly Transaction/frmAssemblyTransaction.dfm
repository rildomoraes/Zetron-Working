inherited fmAssemblyTransaction: TfmAssemblyTransaction
  Caption = 'Transaksi Couple'
  ExplicitWidth = 780
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited dbeEmployee: TcxDBTextEdit
      ExplicitHeight = 19
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
        object pnlDetailTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 121
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            121)
          object lblIdJobAssembly: TLabel
            Left = 8
            Top = 8
            Width = 76
            Height = 13
            Caption = 'Kode Pekerjaan'
            Transparent = True
          end
          object lblWarehouse: TLabel
            Left = 8
            Top = 44
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object lblDate: TLabel
            Left = 8
            Top = 26
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label1: TLabel
            Left = 8
            Top = 62
            Width = 56
            Height = 13
            Caption = 'Barang Jadi'
            Transparent = True
          end
          object Label2: TLabel
            Left = 8
            Top = 80
            Width = 16
            Height = 13
            Caption = 'Qty'
            Transparent = True
          end
          object Label3: TLabel
            Left = 8
            Top = 98
            Width = 32
            Height = 13
            Caption = 'Proses'
            Transparent = True
          end
          object pcNotes: TcxPageControl
            Left = 328
            Top = 6
            Width = 397
            Height = 109
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 6
            ClientRectBottom = 103
            ClientRectLeft = 3
            ClientRectRight = 391
            ClientRectTop = 26
            object tsNotes: TcxTabSheet
              Caption = 'Notes'
              ImageIndex = 0
              object dbmNotes: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txNotes'
                DataBinding.DataSource = dsDefault
                Properties.ReadOnly = True
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 77
                Width = 388
              end
            end
            object tsMemo: TcxTabSheet
              Caption = 'Memo'
              ImageIndex = 1
              object dbMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txMemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 77
                Width = 388
              end
            end
          end
          object dbeIdAssemblyTransaction: TcxDBTextEdit
            Left = 104
            Top = 6
            DataBinding.DataField = 'vcIdAssemblyTransaction'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 161
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 104
            Top = 42
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 2
            Width = 161
          end
          object dbeDate: TcxDBDateEdit
            Left = 104
            Top = 24
            DataBinding.DataField = 'dtAssemblyTransactionDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 161
          end
          object dbeSuppliesId: TcxDBExtLookupComboBox
            Left = 104
            Top = 60
            DataBinding.DataField = 'vcIdSupplies'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvPrevSuppliesCouple
            Properties.KeyFieldNames = 'vcIdSupplies'
            Properties.ListFieldItem = cgvPrevSuppliesCouplevcSuppliesName
            TabOrder = 3
            Width = 212
          end
          object dbeQty: TcxDBCalcEdit
            Left = 104
            Top = 78
            DataBinding.DataField = 'inQty'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 101
          end
          object dbeAssemblyTransactionType: TcxDBImageComboBox
            Left = 104
            Top = 96
            DataBinding.DataField = 'chAssemblyTransactionType'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Couple'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'UnCouple'
                Value = '1'
              end>
            TabOrder = 5
            Width = 101
          end
        end
        object cgAssemblyTransactionDt: TcxGrid
          Left = 0
          Top = 121
          Width = 740
          Height = 266
          Align = alClient
          TabOrder = 1
          object cgvAssemblyTransactionDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsIMAssemblyTransactionDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvAssemblyTransactionDtvcIdAssemblyTransaction: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdAssemblyTransaction'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvAssemblyTransactionDtinNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Options.Filtering = False
              Width = 30
            end
            object cgvAssemblyTransactionDtvcIdSupplies: TcxGridDBColumn
              Caption = 'Bahan Baku'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
              Options.Filtering = False
            end
            object cgvAssemblyTransactionDtinQty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
            end
            object cgvAssemblyTransactionDtinQtyCouple: TcxGridDBColumn
              Caption = 'Qty Proses'
              DataBinding.FieldName = 'inQtyCouple'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
            object cgvAssemblyTransactionDtdcPrice: TcxGridDBColumn
              Caption = 'HPP (Manual)'
              DataBinding.FieldName = 'dcPrice'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
            object cgvAssemblyTransactionDtdcAmount: TcxGridDBColumn
              Caption = 'Total HPP'
              DataBinding.FieldName = 'dcAmount'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cgAssemblyTransactionDtLevel1: TcxGridLevel
            GridView = cgvAssemblyTransactionDt
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
      object cgIMAssemblyTransactionHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvAssemblyTransactionHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvAssemblyTransactionHdStylesGetContentStyle
          object cgvAssemblyTransactionHdchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Options.SortByDisplayText = isbtOff
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvAssemblyTransactionHdvcIdAssemblyTransaction: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdAssemblyTransaction'
            Width = 64
          end
          object cgvAssemblyTransactionHddtAssemblyTransactionDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtAssemblyTransactionDate'
            Width = 64
          end
          object cgvAssemblyTransactionHdvcIdWarehouse: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'vcIdWarehouse'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            Visible = False
          end
          object cgvAssemblyTransactionHdchAssemblyTransactionStatus: TcxGridDBColumn
            Caption = 'Proses'
            DataBinding.FieldName = 'chAssemblyTransactionType'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Uncouple'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Couple'
                Value = 1
              end>
            Width = 90
          end
        end
        object cgIMAssemblyTransactionHdLevel1: TcxGridLevel
          GridView = cgvAssemblyTransactionHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actApprove: TAction
      OnExecute = actApproveExecute
    end
    inherited actRevision: TAction
      OnExecute = actRevisionExecute
    end
    inherited actNotes: TAction
      OnExecute = actNotesExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dtsIMAssemblyTransactionHd
    OnStateChange = dsDefaultStateChange
  end
  object dtsIMAssemblyTransactionHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMAssemblyTransactionHdBeforeInsert
    BeforeEdit = dtsIMAssemblyTransactionHdBeforeEdit
    BeforePost = dtsIMAssemblyTransactionHdBeforePost
    AfterPost = dtsIMAssemblyTransactionHdAfterPost
    OnNewRecord = dtsIMAssemblyTransactionHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMAssemblyTransactionHd'#13#10'where (chStatusApprov' +
      'e = :Approve1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprov' +
      'e = :Reject'#13#10'or chStatusApprove = :Done)'#13#10'and dtAssemblyTransact' +
      'ionDate between :StartDate and :EndDate'#13#10'order by chStatusApprov' +
      'e, vcIdAssemblyTransaction'
    Parameters = <
      item
        Name = 'Approve1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Approve2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Done'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
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
  object dtsIMAssemblyTransactionDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = dtsIMAssemblyTransactionDtNewRecord
    CommandText = 'select * from tbIMAssemblyTransactionDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdAssemblyTransaction'
    MasterFields = 'vcIdAssemblyTransaction'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMAssemblyTransactionDt: TDataSource
    DataSet = dtsIMAssemblyTransactionDt
    OnDataChange = dsIMAssemblyTransactionDtDataChange
    Left = 168
    Top = 144
  end
  object qryPrevSuppliesCouple: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  vcIdSupplies, vcSuppliesName, '
      '  vcIdSuppliesCategory, vcType'
      'from tbIMSupplies'
      'where FlagCouple = '#39'1'#39
      'order by vcIdSupplies')
    Left = 136
    Top = 176
  end
  object dsPrevSuppliesCouple: TDataSource
    DataSet = qryPrevSuppliesCouple
    Left = 168
    Top = 176
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 176
    object cgvPrevSuppliesCouple: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSuppliesCouple
      DataController.KeyFieldNames = 'vcIdSupplies'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSuppliesCouplevcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
      end
      object cgvPrevSuppliesCouplevcSuppliesName: TcxGridDBColumn
        Caption = 'Barang'
        DataBinding.FieldName = 'vcSuppliesName'
      end
      object cgvPrevSuppliesCouplevcIdSuppliesCategory: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'vcIdSuppliesCategory'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvSuppliesCategory
        Properties.KeyFieldNames = 'vcIdSuppliesCategory'
        Properties.ListFieldItem = dmInventory.cgvSuppliesCategoryvcIdSuppliesCategory
      end
      object cgvPrevSuppliesCouplevcType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'vcType'
      end
    end
    object cgvPrevWarehouseCouple: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevWarehouseCouple
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevWarehouseCouplevcIdWarehouse: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdWarehouse'
      end
      object cgvPrevWarehouseCouplevcWarehouseName: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'vcWarehouseName'
      end
      object cgvPrevWarehouseCouplevcContactPerson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'vcContactPerson'
      end
      object cgvPrevWarehouseCoupleCityName: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityName'
      end
    end
  end
  object qryPrevWarehouseCouple: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  a.vcIdWarehouse, a.vcWarehouseName, a.vcContactPerson,'
      '  b.CityName'
      'from tbGNWarehouse a'
      'left join City b on a.vcIdCity = b.CityId'
      'where chFlagCouple = '#39'1'#39)
    Left = 136
    Top = 208
  end
  object dsPrevWarehouseCouple: TDataSource
    DataSet = qryPrevWarehouseCouple
    Left = 168
    Top = 208
  end
  object qryGetItemDetail: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdSuppliesParent'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from tbIMSuppliesDt'
      'where vcIdSuppliesParent = :IdSuppliesParent')
    Left = 136
    Top = 240
  end
  object qryGetStatusItem: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdSupplies'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'from tbIMSupplies'
      'where vcIdSupplies = :IdSupplies')
    Left = 168
    Top = 240
  end
  object qryValidateQtyReady: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdAssemblyTransaction'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select d.vcSuppliesName '
      'from tbIMAssemblyTransactionDt a'
      
        'left join tbIMAssemblyTransactionHd b on a.vcIdAssemblyTransacti' +
        'on = b.vcIdAssemblyTransaction'
      
        'left join tbIMStockOnHandHd c on (a.vcIdSupplies = c.vcIdSupplie' +
        's and b.vcIdWarehouse = c.vcIdWarehouse)'
      'left join tbIMSupplies d on a.vcIdSupplies = d.vcIdSupplies'
      'where a.vcIdAssemblyTransaction = :IdAssemblyTransaction'
      'and a.inQtyCouple > c.inEndQtyReady'
      'and d.chFlagService <> '#39'1'#39)
    Left = 200
    Top = 240
  end
  object qryUpdateQtyReady: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'IdAssemblyTransaction'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'update tbIMStockOnHandHd'
      'set tbIMStockOnHandHd.inEndQtyReady = '
      
        '  tbIMStockOnHandHd.inEndQtyReady - tbIMAssemblyTransactionDt.in' +
        'QtyCouple'
      'from tbIMStockOnHandHd'
      '  inner join tbIMAssemblyTransactionDt'
      
        '  on (tbIMStockOnHandHd.vcIdSupplies = tbIMAssemblyTransactionDt' +
        '.vcIdSupplies '
      
        '  and tbIMStockOnHandHd.vcIdWarehouse = tbIMAssemblyTransactionD' +
        't.vcIdWarehouse)'
      
        'where tbIMAssemblyTransactionDt.vcIdAssemblyTransaction = :IdAss' +
        'emblyTransaction')
    Left = 232
    Top = 240
  end
  object qryUpdateQtyReadyVoid: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'IdAssemblyTransaction'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'update tbIMStockOnHandHd'
      'set tbIMStockOnHandHd.inEndQtyReady = '
      
        '  tbIMStockOnHandHd.inEndQtyReady + tbIMAssemblyTransactionDt.in' +
        'QtyCouple'
      'from tbIMStockOnHandHd'
      '  inner join tbIMAssemblyTransactionDt'
      
        '  on (tbIMStockOnHandHd.vcIdSupplies = tbIMAssemblyTransactionDt' +
        '.vcIdSupplies '
      
        '  and tbIMStockOnHandHd.vcIdWarehouse = tbIMAssemblyTransactionD' +
        't.vcIdWarehouse)'
      
        'where tbIMAssemblyTransactionDt.vcIdAssemblyTransaction = :IdAss' +
        'emblyTransaction')
    Left = 264
    Top = 240
  end
end
