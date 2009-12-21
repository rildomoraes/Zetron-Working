inherited fmDeliveryOrderReprint: TfmDeliveryOrderReprint
  Caption = 'DO Reprint '
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
          Height = 153
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            740
            153)
          object lblIdDeliveryOrder: TLabel
            Left = 7
            Top = 6
            Width = 16
            Height = 13
            Caption = 'DO'
            Transparent = True
          end
          object lblDeliveryOrderDate: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object lblIdWarehouse: TLabel
            Left = 7
            Top = 42
            Width = 38
            Height = 13
            Caption = 'Gudang'
            Transparent = True
          end
          object lblCustomerName: TLabel
            Left = 7
            Top = 60
            Width = 44
            Height = 13
            Caption = 'Customer'
            Transparent = True
          end
          object lblCustomerSO: TLabel
            Left = 7
            Top = 78
            Width = 62
            Height = 13
            Caption = 'Customer SO'
            Transparent = True
          end
          object lblCustomerSI: TLabel
            Left = 7
            Top = 96
            Width = 57
            Height = 13
            Caption = 'Customer SI'
            Transparent = True
          end
          object lblActualDeliveryDate: TLabel
            Left = 7
            Top = 114
            Width = 85
            Height = 13
            Caption = 'Realisasi Tgl Kirim'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 7
            Top = 132
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object dbeDeliveryOrderDate: TcxDBDateEdit
            Left = 102
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'dtDeliveryOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.Kind = ckDateTime
            TabOrder = 1
            Width = 161
          end
          object dbeIdDeliveryOrder: TcxDBTextEdit
            Left = 102
            Top = 4
            TabStop = False
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdDeliveryOrder'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 0
            Width = 161
          end
          object dbeEmployeeName: TcxDBTextEdit
            Left = 102
            Top = 130
            TabStop = False
            BeepOnEnter = False
            DataBinding.DataField = 'vcEmployeeName'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            Style.Color = clWindow
            TabOrder = 6
            Width = 161
          end
          object dbeCustomerSO: TcxDBTextEdit
            Left = 102
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSalesOrder'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 161
          end
          object dblcIdWarehouse: TcxDBExtLookupComboBox
            Left = 102
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdWarehouse'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = False
            Style.Color = clWindow
            TabOrder = 2
            Width = 161
          end
          object dbeCustomerSI: TcxDBTextEdit
            Left = 102
            Top = 94
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSalesInvoice'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 161
          end
          object dbeCustomerName: TcxDBTextEdit
            Left = 102
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'vcCustomerName'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 161
          end
          object pcNotes: TcxPageControl
            Left = 280
            Top = 6
            Width = 445
            Height = 147
            ActivePage = tsNotes
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 7
            ClientRectBottom = 141
            ClientRectLeft = 3
            ClientRectRight = 439
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
                Height = 115
                Width = 436
              end
            end
            object tsMemo: TcxTabSheet
              Caption = 'Memo'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dbmMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txMemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 115
                Width = 436
              end
            end
            object tsDeliveryAddress: TcxTabSheet
              Caption = 'Alamat DO'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object dbmAddress: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'txAddress'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssBoth
                Properties.WordWrap = False
                TabOrder = 0
                Height = 115
                Width = 436
              end
            end
          end
          object dbeActualDeliveryDate: TcxDBDateEdit
            Left = 102
            Top = 112
            BeepOnEnter = False
            DataBinding.DataField = 'dtActualDeliveryDate'
            DataBinding.DataSource = dsDefault
            Properties.Kind = ckDateTime
            TabOrder = 8
            Width = 161
          end
        end
        object cgDeliveryOrderDt: TcxGrid
          Left = 0
          Top = 153
          Width = 561
          Height = 234
          Align = alClient
          TabOrder = 1
          object cgvDeliveryOrderDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsIMDeliveryOrderDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'inNo'
                Column = cgvDeliveryOrderDtinNo
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvDeliveryOrderDtvcIdDeliveryOrder: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdDeliveryOrder'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
            end
            object cgvDeliveryOrderDtinNo: TcxGridDBColumn
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
            object cgvDeliveryOrderDtvcIdSupplies: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcIdSupplies
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvDeliveryOrderDtvcIdSupplies2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcSuppliesName
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvDeliveryOrderDtvcIdSupplies3: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'vcIdSupplies'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvSupplies
              Properties.KeyFieldNames = 'vcIdSupplies'
              Properties.ListFieldItem = dmInventory.cgvSuppliesvcType
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvDeliveryOrderDtinQty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'inQty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
              Options.Filtering = False
              Options.Sorting = False
            end
            object cgvDeliveryOrderDtdtSystemStamp: TcxGridDBColumn
              DataBinding.FieldName = 'dtSystemStamp'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
            end
          end
          object cgDeliveryOrderDtLevel1: TcxGridLevel
            GridView = cgvDeliveryOrderDt
          end
        end
        object cgDeliveryOrderNt: TcxGrid
          Left = 561
          Top = 153
          Width = 179
          Height = 234
          Align = alRight
          TabOrder = 2
          object cgvDeliveryOrderNt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsIMDeliveryOrderNt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cgvDeliveryOrderNtvcIdReceivingRecord: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdReceivingRecord'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvDeliveryOrderNtvcIdSupplies: TcxGridDBColumn
              DataBinding.FieldName = 'vcIdSupplies'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvDeliveryOrderNtvcIdMachine: TcxGridDBColumn
              Caption = 'No Mesin'
              DataBinding.FieldName = 'vcIdMachine'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 152
            end
            object cgvDeliveryOrderNtdtSystemStamp: TcxGridDBColumn
              DataBinding.FieldName = 'dtSystemStamp'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cgDeliveryOrderNtLevel1: TcxGridLevel
            GridView = cgvDeliveryOrderNt
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
      object cgDeliveryOrderHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 320
        Align = alClient
        TabOrder = 0
        object cgvDeliveryOrderHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Styles.OnGetContentStyle = cgvDeliveryOrderHdStylesGetContentStyle
          object cgvDeliveryOrderHdvcIdDeliveryOrder: TcxGridDBColumn
            Caption = 'DO'
            DataBinding.FieldName = 'vcIdDeliveryOrder'
            Width = 80
          end
          object cgvDeliveryOrderHddtDeliveryOrderDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'dtDeliveryOrderDate'
            Width = 120
          end
          object cgvDeliveryOrderHdvcCustomerName: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'vcCustomerName'
          end
          object cgvDeliveryOrderHdchStatusApprove: TcxGridDBColumn
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
          object cgvDeliveryOrderHdchFlagPending: TcxGridDBColumn
            Caption = 'Pending'
            DataBinding.FieldName = 'chFlagPending'
            Visible = False
          end
          object cgvDeliveryOrderHdchFlagManual: TcxGridDBColumn
            Caption = 'Manual'
            DataBinding.FieldName = 'chFlagManual'
            Visible = False
          end
          object cgvDeliveryOrderHdvcIdSalesOrder: TcxGridDBColumn
            Caption = 'SO'
            DataBinding.FieldName = 'vcIdSalesOrder'
          end
          object cgvDeliveryOrderHdvcIdSalesInvoice: TcxGridDBColumn
            Caption = 'SI'
            DataBinding.FieldName = 'vcIdSalesInvoice'
          end
          object cgvDeliveryOrderHdinCounterPrint: TcxGridDBColumn
            Caption = 'Print Copies'
            DataBinding.FieldName = 'inCounterPrint'
          end
        end
        object cgDeliveryOrderHdLevel1: TcxGridLevel
          GridView = cgvDeliveryOrderHd
        end
      end
      object pnlHeaderTop: TPanel
        Left = 0
        Top = 320
        Width = 296
        Height = 49
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object shpApproved: TShape
          Left = 77
          Top = 5
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object lblApproved: TLabel
          Left = 101
          Top = 5
          Width = 46
          Height = 13
          Caption = 'Approved'
          Transparent = True
        end
        object lblReject: TLabel
          Left = 180
          Top = 5
          Width = 31
          Height = 13
          Caption = 'Reject'
          Transparent = True
        end
        object shpReject: TShape
          Left = 157
          Top = 5
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object lblDone: TLabel
          Left = 245
          Top = 5
          Width = 26
          Height = 13
          Caption = 'Done'
          Transparent = True
        end
        object shpDone: TShape
          Left = 221
          Top = 5
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object shpPending: TShape
          Left = 5
          Top = 5
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object lblPending: TLabel
          Left = 29
          Top = 5
          Width = 39
          Height = 13
          Caption = 'Pending'
          Transparent = True
        end
        object shpManual: TShape
          Left = 5
          Top = 28
          Width = 17
          Height = 17
          Shape = stRoundRect
        end
        object Label2: TLabel
          Left = 29
          Top = 28
          Width = 61
          Height = 13
          Caption = 'Nota Manual'
          Transparent = True
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dtsIMDeliveryOrderHd
  end
  object dtsIMDeliveryOrderHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from tbIMDeliveryOrderHd'#13#10'where (chStatusApprove = :A' +
      'pprove1'#13#10'or chStatusApprove = :Approve2'#13#10'or chStatusApprove = :R' +
      'eject'#13#10'or chStatusApprove = :Done)'#13#10'and dtDeliveryOrderDate betw' +
      'een :StartDate and :EndDateand and vcIdWarehouse in '#13#10'  (select ' +
      'vcIdWarehouse '#13#10'  from tbGNWarehouse'#13#10'  where StatusWarehouse li' +
      'ke :StatusWarehouse'#13#10'  and vcIdWarehouse like :CurrentWarehouse)' +
      #13#10'order by chStatusApprove, vcIdDeliveryOrder'#13#10#13#10
    IndexFieldNames = 'vcIdDeliveryOrder'
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
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDateand'
        Size = -1
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
  object dtsIMDeliveryOrderDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from tbIMDeliveryOrderDt'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'vcIdDeliveryOrder'
    MasterFields = 'vcIdDeliveryOrder'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dtsIMDeliveryOrderNt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from tbIMDeliveryOrderNt'#13#10
    DataSource = dsIMDeliveryOrderDt
    IndexFieldNames = 'vcIdDeliveryOrder;vcIdSupplies'
    MasterFields = 'vcIdDeliveryOrder;vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsIMDeliveryOrderDt: TDataSource
    DataSet = dtsIMDeliveryOrderDt
    Left = 168
    Top = 144
  end
  object dsIMDeliveryOrderNt: TDataSource
    DataSet = dtsIMDeliveryOrderNt
    Left = 168
    Top = 176
  end
end
