inherited fmChamberIn: TfmChamberIn
  Caption = 'Chamber In'
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 56
            Height = 13
            Caption = 'No Laporan'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 24
            Width = 31
            Height = 13
            Caption = 'Lokasi'
            Transparent = True
          end
          object Label1: TLabel
            Left = 276
            Top = 6
            Width = 74
            Height = 13
            Caption = 'Tanggal Masuk'
            Transparent = True
          end
          object Label2: TLabel
            Left = 276
            Top = 25
            Width = 119
            Height = 13
            Caption = 'Rencana Tanggal Keluar'
            Transparent = True
          end
          object dbeChamberInCode: TcxDBTextEdit
            Left = 68
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'ProductionInCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 202
          end
          object dblcWareHouseId: TcxDBExtLookupComboBox
            Left = 68
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseId'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 202
          end
          object dbeChamberInDate: TcxDBDateEdit
            Left = 401
            Top = 6
            BeepOnEnter = False
            DataBinding.DataField = 'ChamberInDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 2
            Width = 110
          end
          object dbeChamberInPlanOutDate: TcxDBDateEdit
            Left = 400
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'ChamberInPlanOutDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 3
            Width = 110
          end
        end
        object cgChamberDt: TcxGrid
          Left = 0
          Top = 73
          Width = 740
          Height = 231
          Align = alClient
          TabOrder = 1
          ExplicitTop = 49
          ExplicitHeight = 255
          object cgvChamberDt: TcxGridDBTableView
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
            DataController.DataSource = dsChamberDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvChamberDtChamberInId: TcxGridDBColumn
              DataBinding.FieldName = 'ChamberInId'
              Visible = False
            end
            object cgvChamberDtNo: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              Visible = False
            end
            object cgvChamberDtTallySheetId: TcxGridDBColumn
              Caption = 'No Tally'
              DataBinding.FieldName = 'TallySheetId'
              Width = 88
            end
          end
          object cgChamberDtLevel1: TcxGridLevel
            Caption = 'Log'
            GridView = cgvChamberDt
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 304
          Width = 740
          Height = 83
          ActivePage = tsInternalMemo
          Align = alBottom
          TabOrder = 2
          TabPosition = tpBottom
          ClientRectBottom = 54
          ClientRectLeft = 3
          ClientRectRight = 734
          ClientRectTop = 3
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo External'
            ImageIndex = 1
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'StatementMemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 51
              Width = 731
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            object dbeMemoInternal: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'InternalMemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 51
              Width = 731
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
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryChamberInHd
  end
  object qryChamberInHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select *'#13#10'from ProductionInHd'#13#10'where ProductionInDate between :S' +
      'tartDate and :EndDate'
    Parameters = <
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
      end>
    Left = 136
    Top = 112
  end
  object qryChamberInDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ProductionInDt'
    DataSource = dsDefault
    IndexFieldNames = 'ChamberInId'
    MasterFields = 'ChamberInId'
    Parameters = <>
    Left = 136
    Top = 152
  end
  object dsChamberDt: TDataSource
    DataSet = qryChamberInDt
    Left = 168
    Top = 152
  end
end
