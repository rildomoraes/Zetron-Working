inherited fmOtherTransaction: TfmOtherTransaction
  Caption = 'Transaksi Lain-Lain'
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
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            105)
          object lblIdOtherTransaction: TLabel
            Left = 8
            Top = 10
            Width = 92
            Height = 13
            Caption = 'Transaksi Lain-Lain'
            Transparent = True
          end
          object lblOtherTransactionDate: TLabel
            Left = 8
            Top = 28
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblTransactionType: TLabel
            Left = 8
            Top = 46
            Width = 70
            Height = 13
            Caption = 'Tipe Transaksi'
            Transparent = True
          end
          object lblIdWarehouseSource: TLabel
            Left = 8
            Top = 64
            Width = 41
            Height = 13
            Caption = 'Gudang '
            Transparent = True
          end
          object lblIdWarehouseDestination: TLabel
            Left = 8
            Top = 82
            Width = 74
            Height = 13
            Caption = 'Gudang Tujuan'
            Transparent = True
            Visible = False
          end
          object dbeIdOtherTransaction: TcxDBTextEdit
            Left = 109
            Top = 8
            DataBinding.DataField = 'vcIdOtherTransaction'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 161
          end
          object dbeOtherTransactionDate: TcxDBDateEdit
            Left = 109
            Top = 26
            DataBinding.DataField = 'dtOtherTransactionDate'
            DataBinding.DataSource = dsDefault
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dblcIdWarehouseSource: TcxDBExtLookupComboBox
            Left = 109
            Top = 62
            DataBinding.DataField = 'vcIdWarehouseSource'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            Properties.OnEditValueChanged = dblcIdWarehouseSourcePropertiesEditValueChanged
            TabOrder = 3
            Width = 161
          end
          object dblcIdWarehouseDest: TcxDBExtLookupComboBox
            Left = 109
            Top = 80
            DataBinding.DataField = 'vcIdWarehouseDest'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 4
            Visible = False
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 288
            Top = 6
            Width = 437
            Height = 93
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 5
            ClientRectBottom = 87
            ClientRectLeft = 3
            ClientRectRight = 431
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
                Height = 61
                Width = 428
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
                Height = 61
                Width = 428
              end
            end
          end
          object dblcIdTransactionType: TcxDBExtLookupComboBox
            Left = 109
            Top = 44
            DataBinding.DataField = 'vcIdTransactionType'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvPrevTransactionType
            Properties.KeyFieldNames = 'vcIdTransactionType'
            Properties.ListFieldItem = cgvPrevTransactionTypevcTransactionName
            Properties.OnEditValueChanged = dblcIdTransactionTypePropertiesEditValueChanged
            TabOrder = 2
            Width = 161
          end
        end
        object cgOtherTransactionDt: TcxGrid
          Left = 0
          Top = 105
          Width = 740
          Height = 282
          Align = alClient
          TabOrder = 1
          object cgvOtherTransactionDt: TcxGridDBTableView
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
            DataController.DataSource = dsIMOtherTransactionDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cgvOtherTransactionDtinNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvOtherTransactionDtvcIdOtherTransaction: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdOtherTransaction'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvOtherTransactionDtinNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Width = 30
            end
            object cgvOtherTransactionDtvcIdSupplies: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcIdSupplies
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvOtherTransactionDtvcIdSupplies2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcSuppliesName
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvOtherTransactionDtvcIdSupplies3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcType
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvOtherTransactionDtinQty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
            end
            object cgvOtherTransactionDtdcPrice: TcxGridDBColumn
              Caption = 'Harga'
              DataBinding.FieldName = 'dcPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
            end
          end
          object cgOtherTransactionDtLevel1: TcxGridLevel
            GridView = cgvOtherTransactionDt
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgOtherTransactionHd: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvOtherTransactionHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvOtherTransactionHdStylesGetContentStyle
          object cgvOtherTransactionHdvcIdOtherTransaction: TcxGridDBColumn
            Caption = 'OT'
            DataBinding.FieldName = 'vcIdOtherTransaction'
          end
          object cgvOtherTransactionHddtOtherTransactionDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtOtherTransactionDate'
          end
          object cgvOtherTransactionHdvcIdWarehouseSource: TcxGridDBColumn
            Caption = 'Gudang '
            DataBinding.FieldName = 'vcIdWarehouseSource'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cgvOtherTransactionHdchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            Options.SortByDisplayText = isbtOff
            SortIndex = 0
            SortOrder = soAscending
            Width = 53
          end
        end
        object cgOtherTransactionHdLevel1: TcxGridLevel
          GridView = cgvOtherTransactionHd
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
    DataSet = dtsIMOtherTransactionHd
  end
  object dtsIMOtherTransactionHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMOtherTransactionHdBeforeEdit
    BeforePost = dtsIMOtherTransactionHdBeforePost
    AfterPost = dtsIMOtherTransactionHdAfterPost
    OnNewRecord = dtsIMOtherTransactionHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMOtherTransactionHd'#13#10'where (chStatusApprove =' +
      ' :Approve1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove =' +
      ' :Reject'#13#10'or chStatusApprove = :Done)'#13#10'and dtOtherTransactionDat' +
      'e between :StartDate and :EndDate'#13#10'order by vcIdOtherTransaction'
    Parameters = <
      item
        Name = 'Approve1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Approve2'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Reject'
        DataType = ftString
        Size = 1
        Value = '5'
      end
      item
        Name = 'Done'
        DataType = ftString
        Size = 1
        Value = '6'
      end
      item
        Name = 'StartDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDate'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dtsIMOtherTransactionDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMOtherTransactionDtBeforeInsert
    BeforeEdit = dtsIMOtherTransactionDtBeforeEdit
    BeforePost = dtsIMOtherTransactionDtBeforePost
    BeforeDelete = dtsIMOtherTransactionDtBeforeDelete
    OnNewRecord = dtsIMOtherTransactionDtNewRecord
    CommandText = 'select *'#13#10'from tbIMOtherTransactionDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdOtherTransaction'
    MasterFields = 'vcIdOtherTransaction'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object spOtherTransactionValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spOtherTransactionValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdOtherTransaction'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object dsIMOtherTransactionDt: TDataSource
    DataSet = dtsIMOtherTransactionDt
    Left = 168
    Top = 144
  end
  object qrySetDetailPrice: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'IdOtherTransaction'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'update tbIMOtherTransactionDt'
      'set dcPrice = 0'
      'where vcIdOtherTransaction = :IdOtherTransaction')
    Left = 168
    Top = 208
  end
  object qryGetTransactionTypeStatus: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'vcIdTransactionType'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  chStatusTransaction'
      'from tbIMTransactionType'
      'where vcIdTransactionType = :vcIdTransactionType')
    Left = 136
    Top = 208
  end
  object gvrOtherTransaction: TcxGridViewRepository
    Left = 104
    Top = 240
    object cgvPrevTransactionType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTransactionType
      DataController.KeyFieldNames = 'vcIdTransactionType'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevTransactionTypevcIdTransactionType: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdTransactionType'
        Visible = False
        Options.Filtering = False
      end
      object cgvPrevTransactionTypevcTransactionName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'vcTransactionName'
        Options.Filtering = False
      end
      object cgvPrevTransactionTypechStatusTransaction: TcxGridDBColumn
        DataBinding.FieldName = 'chStatusTransaction'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'In'
            ImageIndex = 5
            Value = '0'
          end
          item
            Description = 'Out'
            ImageIndex = 6
            Value = '1'
          end
          item
            Description = 'Mutation'
            ImageIndex = 7
            Value = '2'
          end>
        Visible = False
      end
    end
    object cgvPrevSupplies: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSupplies
      DataController.KeyFieldNames = 'vcIdSupplies'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
      end
      object cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcSuppliesName'
      end
      object cgvPrevSuppliesvcType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'vcType'
      end
      object cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn
        Caption = 'Stok Ready'
        DataBinding.FieldName = 'inEndQtyReady'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
  end
  object qryPrevSupplies: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdWarehouse'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  a.vcIdSupplies, a.vcSuppliesName, a.vcType,'
      '  IsNull(b.inEndQtyReady, 0) as inEndQtyReady'
      'from tbIMSupplies a'
      
        'left join tbIMStockOnHandHd b on (a.vcIdSupplies = b.vcIdSupplie' +
        's '
      '  and b.vcIdWarehouse = :vcIdWarehouse)'
      'where a.chFlagService = '#39'0'#39)
    Left = 136
    Top = 240
  end
  object dsPrevSupplies: TDataSource
    DataSet = qryPrevSupplies
    Left = 168
    Top = 240
  end
  object qryPrevTransactionType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from tbIMTransactionType'
      'where chFlagFix <> 1')
    Left = 136
    Top = 272
  end
  object dsPrevTransactionType: TDataSource
    DataSet = qryPrevTransactionType
    Left = 168
    Top = 272
  end
end
