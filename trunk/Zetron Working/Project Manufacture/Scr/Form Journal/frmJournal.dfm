inherited fmJournal: TfmJournal
  Caption = 'Journal'
  ExplicitHeight = 500
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
          Height = 73
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 17
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Kode Jurnal'
            Transparent = True
          end
          object Label2: TLabel
            Left = 17
            Top = 39
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object dbeJournalDate: TcxDBDateEdit
            Left = 97
            Top = 35
            DataBinding.DataField = 'JournalDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 121
          end
          object dbeJournalId: TcxDBTextEdit
            Left = 97
            Top = 16
            DataBinding.DataField = 'JournalId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 121
          end
        end
        object pnlDetail: TPanel
          Left = 0
          Top = 73
          Width = 740
          Height = 314
          Align = alClient
          TabOrder = 1
          object cgJournalDt: TcxGrid
            Left = 1
            Top = 1
            Width = 738
            Height = 312
            Align = alClient
            TabOrder = 0
            object cgvJournalDt: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Refresh.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsJournalDt
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'Debit'
                  Column = cgvJournalDtDebit
                end
                item
                  Kind = skSum
                  FieldName = 'Credit'
                  Column = cgvJournalDtCredit
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvJournalDtJournalId: TcxGridDBColumn
                DataBinding.FieldName = 'JournalId'
                Visible = False
              end
              object cgvJournalDtCOAId: TcxGridDBColumn
                Caption = 'COA'
                DataBinding.FieldName = 'COAId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.View = cgvPrevCOA
                Properties.KeyFieldNames = 'COAId'
                Properties.ListFieldItem = cgvPrevCOACOACode
                Width = 67
              end
              object cgvJournalDtNo: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                Width = 35
              end
              object cgvJournalDtDescription: TcxGridDBColumn
                DataBinding.FieldName = 'Description'
                Width = 315
              end
              object cgvJournalDtDebit: TcxGridDBColumn
                DataBinding.FieldName = 'Debit'
              end
              object cgvJournalDtCredit: TcxGridDBColumn
                DataBinding.FieldName = 'Credit'
              end
            end
            object cgJournalDtLevel1: TcxGridLevel
              GridView = cgvJournalDt
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
  object Button1: TButton [3]
    Left = 342
    Top = 117
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  inherited ActionList1: TActionList
    Left = 608
    Top = 24
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 640
    Top = 24
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 672
    Top = 24
  end
  inherited dsDefault: TDataSource
    DataSet = qryJournalHd
    Left = 696
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 704
    Top = 24
  end
  inherited pmPrint: TPopupMenu
    Left = 640
    Top = 56
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = dxMemData1NewRecord
    Left = 448
    Top = 96
  end
  object qryJournalDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from JournalDt'
      'where JournalId='#39'xxx'#39)
    Left = 416
    Top = 96
  end
  object dsJournalDt: TDataSource
    DataSet = dxMemData1
    Left = 448
    Top = 128
  end
  object qryJournalHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryJournalHdBeforePost
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
    SQL.Strings = (
      'select *'
      'from JournalHd'
      'where JournalDate between :StartDate and :EndDate')
    Left = 696
    Top = 80
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 640
    Top = 96
    object cgvPrevCOA: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCOA
      DataController.KeyFieldNames = 'COAId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevCOACOAId: TcxGridDBColumn
        DataBinding.FieldName = 'COAId'
        Visible = False
      end
      object cgvPrevCOACOAIdParent: TcxGridDBColumn
        DataBinding.FieldName = 'COAIdParent'
        Visible = False
      end
      object cgvPrevCOACOACode: TcxGridDBColumn
        Caption = 'Kode COA'
        DataBinding.FieldName = 'COACode'
      end
      object cgvPrevCOACOAName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'COAName'
      end
      object cgvPrevCOAStatusType: TcxGridDBColumn
        DataBinding.FieldName = 'StatusType'
        Visible = False
      end
      object cgvPrevCOAGroupAcc: TcxGridDBColumn
        DataBinding.FieldName = 'GroupAcc'
        Visible = False
      end
    end
  end
  object qryPrevCOA: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ChartOfAccount')
    Left = 496
    Top = 96
  end
  object dsPrevCOA: TDataSource
    DataSet = qryPrevCOA
    Left = 496
    Top = 128
  end
  object dsInsertDt: TDataSource
    DataSet = qryJournalDt
    Left = 576
    Top = 96
  end
end
