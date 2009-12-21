inherited fmMutation: TfmMutation
  Caption = 'Mutasi Barang'
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
          Height = 129
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            129)
          object lblIdMutation: TLabel
            Left = 8
            Top = 10
            Width = 59
            Height = 13
            Caption = 'Kode Mutasi'
            Transparent = True
          end
          object lblMutationDate: TLabel
            Left = 8
            Top = 28
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdWarehouseSource: TLabel
            Left = 8
            Top = 46
            Width = 61
            Height = 13
            Caption = 'Gudang Asal'
            Transparent = True
          end
          object lblIdWarehouseDestination: TLabel
            Left = 8
            Top = 64
            Width = 74
            Height = 13
            Caption = 'Gudang Tujuan'
            Transparent = True
          end
          object lblIdReceivingRecord: TLabel
            Left = 8
            Top = 100
            Width = 16
            Height = 13
            Caption = 'RR'
            Transparent = True
          end
          object lblIdDeliveryOrder: TLabel
            Left = 8
            Top = 82
            Width = 16
            Height = 13
            Caption = 'DO'
            Transparent = True
          end
          object shpRRApprove: TShape
            Left = 72
            Top = 99
            Width = 17
            Height = 17
            Shape = stRoundRect
          end
          object shpDOApprove: TShape
            Left = 72
            Top = 81
            Width = 17
            Height = 17
            Shape = stRoundRect
          end
          object dbeIdMutation: TcxDBTextEdit
            Left = 92
            Top = 8
            DataBinding.DataField = 'vcIdMutation'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dbeIdMutationPropertiesEditValueChanged
            TabOrder = 0
            Width = 161
          end
          object dbeMutationDate: TcxDBDateEdit
            Left = 92
            Top = 26
            DataBinding.DataField = 'dtMutationDate'
            DataBinding.DataSource = dsDefault
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dblcIdWarehouseSource: TcxDBExtLookupComboBox
            Left = 92
            Top = 44
            DataBinding.DataField = 'vcIdWarehouseSource'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            Properties.OnEditValueChanged = dblcIdWarehouseSourcePropertiesEditValueChanged
            TabOrder = 2
            Width = 161
          end
          object dblcIdWarehouseDest: TcxDBExtLookupComboBox
            Left = 92
            Top = 62
            DataBinding.DataField = 'vcIdWarehouseDest'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
            TabOrder = 3
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 272
            Top = 6
            Width = 453
            Height = 117
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 6
            ClientRectBottom = 111
            ClientRectLeft = 3
            ClientRectRight = 447
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
                Height = 85
                Width = 444
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
                Height = 85
                Width = 444
              end
            end
            object tsDeliveryAddress: TcxTabSheet
              Caption = 'Alamat DO'
              ImageIndex = 2
              object dbmDeliveryAddress: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderAddress'
                DataBinding.DataSource = dsDefault
                TabOrder = 0
                Height = 85
                Width = 444
              end
            end
            object tsNotesDeliveryOrder: TcxTabSheet
              Caption = 'Notes DO'
              ImageIndex = 3
              object dbmDeliveryOrderNotes: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'vcDeliveryOrderNotes'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 85
                Width = 444
              end
            end
          end
          object dbeIdRefRR: TcxDBTextEdit
            Left = 92
            Top = 98
            DataBinding.DataField = 'vcIdRefRR'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 161
          end
          object dbeIdRefDO: TcxDBTextEdit
            Left = 92
            Top = 80
            DataBinding.DataField = 'vcIdRefDO'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 161
          end
        end
        object cgMutationDt: TcxGrid
          Left = 0
          Top = 129
          Width = 740
          Height = 258
          Align = alClient
          TabOrder = 1
          object cgvMutationDt: TcxGridDBTableView
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
            DataController.DataSource = dsIMMutationDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cgvMutationDtinNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvMutationDtvcIdMutation: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdMutation'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvMutationDtinNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Options.Filtering = False
              Width = 30
            end
            object cgvMutationDtvcIdSupplies: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcIdSupplies
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvMutationDtvcIdSupplies2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcSuppliesName
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvMutationDtvcIdSupplies3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = cgvPrevSuppliesvcType
              Properties.OnInitPopup = cgvIdSuppliesPropertiesInitPopup
              Options.Filtering = False
            end
            object cgvMutationDtinQty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Filtering = False
            end
          end
          object cgMutationDtLevel1: TcxGridLevel
            GridView = cgvMutationDt
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
      object cgMutationHd: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvMutationHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvMutationHdStylesGetContentStyle
          object cgvMutationHdvcIdMutation: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdMutation'
          end
          object cgvMutationHddtMutationDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtMutationDate'
          end
          object cgvMutationHdvcIdWarehouseSource: TcxGridDBColumn
            Caption = 'Gudang Asal'
            DataBinding.FieldName = 'vcIdWarehouseSource'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
          end
          object cgvMutationHdchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 53
          end
        end
        object cgMutationHdLevel1: TcxGridLevel
          GridView = cgvMutationHd
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
    DataSet = dtsIMMutationHd
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsDefaultDataChange
  end
  object dtsIMMutationHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMMutationHdBeforeEdit
    BeforePost = dtsIMMutationHdBeforePost
    OnNewRecord = dtsIMMutationHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMMutationHd'#13#10'where (chStatusApprove = :Approv' +
      'e1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :Reject' +
      #13#10'or chStatusApprove = :Done)'#13#10'and dtMutationDate between :Start' +
      'Date and :EndDate'#13#10'order by vcIdMutation'
    Parameters = <
      item
        Name = 'Approve1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'Approve2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '1'
      end
      item
        Name = 'Reject'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '5'
      end
      item
        Name = 'Done'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
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
  object dtsIMMutationDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMMutationDtBeforeInsert
    BeforeEdit = dtsIMMutationDtBeforeEdit
    BeforePost = dtsIMMutationDtBeforePost
    BeforeDelete = dtsIMMutationDtBeforeDelete
    OnNewRecord = dtsIMMutationDtNewRecord
    CommandText = 'select *'#13#10'from tbIMMutationDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdMutation'
    MasterFields = 'vcIdMutation'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsIMMutationDt: TDataSource
    DataSet = dtsIMMutationDt
    Left = 168
    Top = 144
  end
  object spMutationValidation: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spMutationValidation;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdMutation'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@Approval'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object qryDeleteDetail: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdMutation'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'delete from tbIMMutationDt a           '
      'where a.vcIdMutation = :vcIdMutation')
    Left = 168
    Top = 176
  end
  object qryGetRRStatus: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdReceivingRecord'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove'
      'from tbIMReceivingRecordHd'
      'where vcIdReceivingRecord = :IdReceivingRecord')
    Left = 200
    Top = 176
  end
  object qryGetDOStatus: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'IdDeliveryOrder'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove'
      'from tbIMDeliveryOrderHd'
      'where vcIdDeliveryOrder = :IdDeliveryOrder')
    Left = 232
    Top = 176
  end
  object gvrOtherTransaction: TcxGridViewRepository
    Left = 104
    Top = 208
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
    Top = 208
  end
  object dsPrevSupplies: TDataSource
    DataSet = qryPrevSupplies
    Left = 168
    Top = 208
  end
end
