inherited fmReceivingRecord: TfmReceivingRecord
  Caption = 'Penerimaan Barang (RR)'
  ExplicitWidth = 780
  ExplicitHeight = 495
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
          object lblReceivingRecordDate: TLabel
            Left = 7
            Top = 26
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdReceivingRecord: TLabel
            Left = 7
            Top = 8
            Width = 73
            Height = 13
            Caption = 'No Penerimaan'
            Transparent = True
          end
          object lblSupplierDO: TLabel
            Left = 7
            Top = 81
            Width = 81
            Height = 13
            Caption = 'Supplier DO (opt)'
            Transparent = True
          end
          object lblIdWarehouse: TLabel
            Left = 7
            Top = 44
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object lblIdPurchaseOrder: TLabel
            Left = 7
            Top = 99
            Width = 39
            Height = 13
            Caption = 'PO (opt)'
            Transparent = True
          end
          object lblSupplierName: TLabel
            Left = 7
            Top = 63
            Width = 38
            Height = 13
            Caption = 'Supplier'
            Transparent = True
          end
          object dbeReceivingRecordDate: TcxDBDateEdit
            Left = 96
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'dtReceivingRecordDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 161
          end
          object dbeIdReceivingRecord: TcxDBTextEdit
            Left = 96
            Top = 6
            TabStop = False
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdReceivingRecord'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeSupplierDO: TcxDBTextEdit
            Left = 96
            Top = 78
            BeepOnEnter = False
            DataBinding.DataField = 'vcSupplierDeliveryOrder'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 161
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 96
            Top = 42
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvWarehouse
            Properties.KeyFieldNames = 'vcIdWarehouse'
            Properties.ListFieldItem = cgvWarehousevcWarehouseName
            Properties.ReadOnly = False
            Style.Color = clWindow
            TabOrder = 2
            Width = 161
          end
          object dbeIdPurchaseOrder: TcxDBTextEdit
            Left = 96
            Top = 96
            BeepOnEnter = False
            DataBinding.DataField = 'vcSupplierPurchaseOrder'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 161
          end
          object dbeSupplierName: TcxDBTextEdit
            Left = 96
            Top = 60
            BeepOnEnter = False
            DataBinding.DataField = 'vcSupplierName'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 272
            Top = 6
            Width = 468
            Height = 109
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 6
            ClientRectBottom = 103
            ClientRectLeft = 3
            ClientRectRight = 462
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
                Width = 459
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
                Width = 459
              end
            end
          end
        end
        object cgReceivingRecordDt: TcxGrid
          Left = 0
          Top = 121
          Width = 567
          Height = 266
          Align = alClient
          TabOrder = 1
          object cgvReceivingRecordDt: TcxGridDBTableView
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
            DataController.DataSource = dsIMReceivingRecordDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvReceivingRecordDtinNo
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvReceivingRecordDtvcIdReceivingRecord: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdReceivingRecord'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
            end
            object cgvReceivingRecordDtinNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'inNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MinValue = 1.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
            end
            object cgvReceivingRecordDtvcIdSupplies: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvReceivingRecordDtvcIdSupplies2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvReceivingRecordDtvcIdSupplies3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvReceivingRecordDtinQty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
              Options.Filtering = False
              Options.Sorting = False
            end
          end
          object cgReceivingRecordDtLevel1: TcxGridLevel
            GridView = cgvReceivingRecordDt
          end
        end
        object cgReceivingRecordNt: TcxGrid
          Left = 571
          Top = 121
          Width = 169
          Height = 266
          Align = alRight
          TabOrder = 2
          object cgvReceivingRecordNt: TcxGridDBTableView
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
            DataController.DataSource = dsIMReceivingRecordNt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvReceivingRecordNtvcIdReceivingRecord: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdReceivingRecord'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvReceivingRecordNtvcIdSupplies: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvReceivingRecordNtvcIdMachine: TcxGridDBColumn
              Caption = 'No Mesin'
              DataBinding.FieldName = 'vcIdMachine'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 137
            end
          end
          object cgReceivingRecordNtLevel1: TcxGridLevel
            GridView = cgvReceivingRecordNt
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 567
          Top = 121
          Width = 4
          Height = 266
          HotZoneClassName = 'TcxXPTaskBarStyle'
          AlignSplitter = salRight
          Control = cgReceivingRecordNt
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgReceivingRecordHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 121
        object cgvReceivingRecordHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvReceivingRecordHdStylesGetContentStyle
          object cgvReceivingRecordHdvcIdReceivingRecord: TcxGridDBColumn
            Caption = 'RR'
            DataBinding.FieldName = 'vcIdReceivingRecord'
            Width = 80
          end
          object cgvReceivingRecordHddtReceivingRecordDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtReceivingRecordDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object cgvReceivingRecordHdvcSupplierName: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'vcSupplierName'
          end
          object cgvReceivingRecordHdchStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'chStatusApprove'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvStatusApprove
            Properties.KeyFieldNames = 'chStatusApprove'
            Properties.ListFieldItem = dmInventory.cgvStatusApprovevcStatusName
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.IncSearch = False
            Options.SortByDisplayText = isbtOff
          end
        end
        object cgReceivingRecordHdLevel1: TcxGridLevel
          GridView = cgvReceivingRecordHd
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
    DataSet = dtsIMReceivingRecordHd
    OnStateChange = dsDefaultStateChange
  end
  object dtsIMReceivingRecordHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeEdit = dtsIMReceivingRecordHdBeforeEdit
    BeforePost = dtsIMReceivingRecordHdBeforePost
    OnNewRecord = dtsIMReceivingRecordHdNewRecord
    CommandText = 
      'select * '#13#10'from tbIMReceivingRecordHd'#13#10'where (chStatusApprove = ' +
      ':Approve1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = ' +
      ':Reject'#13#10'or chStatusApprove = :Done)'#13#10'and dtReceivingRecordDate ' +
      'between :StartDate and :EndDate'#13#10'and vcIdWarehouse in '#13#10'  (selec' +
      't vcIdWarehouse '#13#10'  from tbGNWarehouse'#13#10'  where StatusWarehouse ' +
      'like :StatusWarehouse'#13#10'  and vcIdWarehouse like :CurrentWarehous' +
      'e)'#13#10'order by chStatusApprove, vcIdReceivingRecord'#13#10#13#10
    IndexFieldNames = 'vcIdReceivingRecord'
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
        Value = Null
      end
      item
        Name = 'StartDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'StatusWarehouse'
        Size = -1
        Value = Null
      end
      item
        Name = 'CurrentWarehouse'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dtsIMReceivingRecordDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMReceivingRecordDtBeforeInsert
    BeforeEdit = dtsIMReceivingRecordDtBeforeEdit
    BeforeDelete = dtsIMReceivingRecordDtBeforeDelete
    OnNewRecord = dtsIMReceivingRecordDtNewRecord
    CommandText = 'select * '#13#10'from tbIMReceivingRecordDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdReceivingRecord'
    MasterFields = 'vcIdReceivingRecord'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dtsIMReceivingRecordNt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = dtsIMReceivingRecordNtBeforeInsert
    BeforeEdit = dtsIMReceivingRecordNtBeforeEdit
    BeforeDelete = dtsIMReceivingRecordNtBeforeDelete
    CommandText = 'select *'#13#10'from tbIMReceivingRecordNt'#13#10
    DataSource = dsIMReceivingRecordDt
    IndexFieldNames = 'vcIdReceivingRecord;vcIdSupplies'
    MasterFields = 'vcIdReceivingRecord;vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsIMReceivingRecordDt: TDataSource
    DataSet = dtsIMReceivingRecordDt
    Left = 168
    Top = 144
  end
  object dsIMReceivingRecordNt: TDataSource
    DataSet = dtsIMReceivingRecordNt
    Left = 168
    Top = 176
  end
  object qryPrevWarehouse: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'StatusWarehouse'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'CurrentWarehouse'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from tbGNWarehouse'
      'where StatusWarehouse like :StatusWarehouse'
      'and vcIdWarehouse like :CurrentWarehouse')
    Left = 136
    Top = 208
  end
  object qryGetRRInfo: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdReceivingRecord'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    SQL.Strings = (
      'select chStatusApprove, chFlagMutation '
      'from tbIMReceivingRecordHd'
      'where vcIdReceivingRecord = :vcIdReceivingRecord')
    Left = 136
    Top = 240
  end
  object gvrInventory: TcxGridViewRepository
    Left = 136
    Top = 80
    object cgvWarehouse: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevWarehouse
      DataController.KeyFieldNames = 'vcIdWarehouse'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvWarehousevcIdWarehouse: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdWarehouse'
        Visible = False
      end
      object cgvWarehousevcWarehouseName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vcWarehouseName'
      end
      object cgvWarehousevcContactPerson: TcxGridDBColumn
        Caption = 'Contact'
        DataBinding.FieldName = 'vcContactPerson'
      end
      object cgvWarehousevcAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'vcAddress'
        Visible = False
      end
      object cgvWarehousevcIdCity: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'vcIdCity'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
        Visible = False
      end
    end
  end
  object dsPrevWarehouse: TDataSource
    DataSet = qryPrevWarehouse
    Left = 168
    Top = 208
  end
end
