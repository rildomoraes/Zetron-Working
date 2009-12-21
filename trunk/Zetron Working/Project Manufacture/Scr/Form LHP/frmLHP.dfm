inherited fmLHP: TfmLHP
  Caption = 'Form Laporan Hasil Produksi'
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
          Height = 137
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblPurchaseOrderId: TLabel
            Left = 8
            Top = 8
            Width = 38
            Height = 13
            Caption = 'No LHP'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 27
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label2: TLabel
            Left = 7
            Top = 79
            Width = 32
            Height = 13
            Caption = 'Proses'
            Transparent = True
          end
          object Label3: TLabel
            Left = 312
            Top = 61
            Width = 31
            Height = 13
            Caption = 'Dibuat'
            Transparent = True
          end
          object Label4: TLabel
            Left = 312
            Top = 79
            Width = 69
            Height = 13
            Caption = 'Diperiksa Oleh'
            Transparent = True
          end
          object Label1: TLabel
            Left = 312
            Top = 43
            Width = 51
            Height = 13
            Caption = 'Jenis Kayu'
            Transparent = True
          end
          object Label5: TLabel
            Left = 7
            Top = 97
            Width = 38
            Height = 13
            Caption = 'No SPK'
            Transparent = True
          end
          object Label6: TLabel
            Left = 7
            Top = 43
            Width = 47
            Height = 13
            Caption = 'Jam Mulai'
            Transparent = True
          end
          object Label8: TLabel
            Left = 312
            Top = 115
            Width = 74
            Height = 13
            Caption = 'Yang Menerima'
            Transparent = True
          end
          object Label9: TLabel
            Left = 7
            Top = 61
            Width = 56
            Height = 13
            Caption = 'Jam Selesai'
            Transparent = True
          end
          object Label7: TLabel
            Left = 312
            Top = 98
            Width = 68
            Height = 13
            Caption = 'Yang Memberi'
            Transparent = True
          end
          object Label10: TLabel
            Left = 312
            Top = 7
            Width = 45
            Height = 13
            Caption = 'No BPPB'
            Transparent = True
          end
          object Label11: TLabel
            Left = 312
            Top = 25
            Width = 39
            Height = 13
            Caption = 'No BRB'
            Transparent = True
          end
          object dbeSPKDate: TcxDBDateEdit
            Left = 71
            Top = 24
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dbeSPKId: TcxDBTextEdit
            Left = 71
            Top = 6
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 110
          end
          object dbeDibuat: TcxDBDateEdit
            Left = 396
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 2
            Width = 144
          end
          object dblcProses: TcxDBExtLookupComboBox
            Left = 71
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 202
          end
          object dbeDisetujui: TcxDBDateEdit
            Left = 396
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 4
            Width = 144
          end
          object dblcMaterial: TcxDBExtLookupComboBox
            Left = 396
            Top = 40
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Style.Color = clGradientInactiveCaption
            TabOrder = 5
            Width = 202
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 71
            Top = 94
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 6
            Width = 110
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 71
            Top = 40
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 110
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
            Left = 396
            Top = 112
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 8
            Width = 202
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 71
            Top = 58
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 9
            Width = 110
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
            Left = 396
            Top = 94
            BeepOnEnter = False
            DataBinding.DataField = 'VendorId'
            DataBinding.DataSource = dsDefault
            TabOrder = 10
            Width = 202
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 396
            Top = 4
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clGradientInactiveCaption
            TabOrder = 11
            Width = 110
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 396
            Top = 22
            BeepOnEnter = False
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clGradientInactiveCaption
            TabOrder = 12
            Width = 110
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 137
          Width = 740
          Height = 167
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'No Palet'
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = 'T'
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = 'L'
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = 'P'
            end
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cxGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cxGrid1DBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView2Column1: TcxGridDBColumn
              Caption = 'No Palet'
            end
            object cxGrid1DBTableView2Column2: TcxGridDBColumn
              Caption = 'T'
            end
            object cxGrid1DBTableView2Column3: TcxGridDBColumn
              Caption = 'L'
            end
            object cxGrid1DBTableView2Column4: TcxGridDBColumn
              Caption = 'P'
            end
            object cxGrid1DBTableView2Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cxGrid1DBTableView2Column6: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cxGrid1DBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView3Column1: TcxGridDBColumn
              Caption = 'No Palet'
            end
            object cxGrid1DBTableView3Column2: TcxGridDBColumn
              Caption = 'T'
            end
            object cxGrid1DBTableView3Column3: TcxGridDBColumn
              Caption = 'L'
            end
            object cxGrid1DBTableView3Column4: TcxGridDBColumn
              Caption = 'P'
            end
            object cxGrid1DBTableView3Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cxGrid1DBTableView3Column6: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cxGrid1DBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView4Column1: TcxGridDBColumn
              Caption = 'No Palet'
            end
            object cxGrid1DBTableView4Column2: TcxGridDBColumn
              Caption = 'T'
            end
            object cxGrid1DBTableView4Column3: TcxGridDBColumn
              Caption = 'L'
            end
            object cxGrid1DBTableView4Column4: TcxGridDBColumn
              Caption = 'P'
            end
            object cxGrid1DBTableView4Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cxGrid1DBTableView4Column6: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cxGrid1DBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView5Column1: TcxGridDBColumn
              Caption = 'No Palet'
            end
            object cxGrid1DBTableView5Column2: TcxGridDBColumn
              Caption = 'T'
            end
            object cxGrid1DBTableView5Column3: TcxGridDBColumn
              Caption = 'L'
            end
            object cxGrid1DBTableView5Column4: TcxGridDBColumn
              Caption = 'P'
            end
            object cxGrid1DBTableView5Column5: TcxGridDBColumn
              Caption = 'Qty'
            end
            object cxGrid1DBTableView5Column6: TcxGridDBColumn
              Caption = 'M3'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            Caption = 'Bahan'
            GridView = cxGrid1DBTableView1
          end
          object cxGrid1Level2: TcxGridLevel
            Caption = 'Hasil Baik'
            GridView = cxGrid1DBTableView2
          end
          object cxGrid1Level3: TcxGridLevel
            Caption = 'Afkir'
            GridView = cxGrid1DBTableView3
          end
          object cxGrid1Level4: TcxGridLevel
            Caption = 'Sisa Potong'
            GridView = cxGrid1DBTableView4
          end
          object cxGrid1Level5: TcxGridLevel
            Caption = 'Miss'
            GridView = cxGrid1DBTableView5
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
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryProductionInHd
  end
  object qryProductionInHd: TADODataSet
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
  object qryProductionInDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryProductionInDtBeforeInsert
    CommandText = 'select * '#13#10'from ProductionInDt'
    DataSource = dsDefault
    IndexFieldNames = 'ChamberInId'
    MasterFields = 'ChamberInId'
    Parameters = <>
    Left = 136
    Top = 152
  end
  object dsProductionInDt: TDataSource
    DataSet = qryProductionInDt
    Left = 168
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = qryProductionOutHd
    Left = 168
    Top = 192
  end
  object qryProductionOutHd: TADODataSet
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
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = qryProductionOutDt
    Left = 168
    Top = 232
  end
  object qryProductionOutDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryProductionOutDtBeforeInsert
    CommandText = 'select * '#13#10'from ProductionInDt'
    DataSource = DataSource1
    IndexFieldNames = 'ChamberInId'
    MasterFields = 'ChamberInId'
    Parameters = <>
    Left = 136
    Top = 232
  end
end
