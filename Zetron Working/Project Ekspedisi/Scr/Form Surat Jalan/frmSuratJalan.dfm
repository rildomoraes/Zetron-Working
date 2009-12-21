inherited fmSuratJalan: TfmSuratJalan
  Caption = 'SuratJalan'
  ClientHeight = 489
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 414
    ExplicitHeight = 414
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 414
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 414
      ExplicitHeight = 414
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 414
        ExplicitHeight = 414
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 414
        ExplicitHeight = 414
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
            Left = 9
            Top = 6
            Width = 88
            Height = 13
            Caption = 'Kode Surat Jalan *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 24
            Width = 102
            Height = 13
            Caption = 'Tanggal Surat Jalan *'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 42
            Width = 51
            Height = 13
            Caption = 'Penerima *'
            Transparent = True
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 124
            Top = 3
            DataBinding.DataField = 'SuratJalanCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 124
            Top = 21
            DataBinding.DataField = 'SuratJalanDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 124
            Top = 39
            DataBinding.DataField = 'Penerima'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 121
          end
        end
        object pnlOtherInfo: TPanel
          Left = 0
          Top = 304
          Width = 740
          Height = 106
          Align = alBottom
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 1
            Top = 1
            Width = 738
            Height = 104
            ActivePage = tsDipendencies
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 104
            ClientRectRight = 700
            ClientRectTop = 0
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
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
                Height = 104
                Width = 700
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
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
                Height = 104
                Width = 700
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 700
                Height = 104
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
                  DataController.DataSource = dsLogSuratJalan
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesUser: TcxGridDBColumn
                    DataBinding.FieldName = 'User'
                  end
                  object cgvDependenciesTransactionDate: TcxGridDBColumn
                    DataBinding.FieldName = 'TransactionDate'
                  end
                  object cgvDependenciesAction: TcxGridDBColumn
                    DataBinding.FieldName = 'Action'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cgvDependenciesTableName: TcxGridDBColumn
                    DataBinding.FieldName = 'TableName'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cgvDependenciesDescription: TcxGridDBColumn
                    DataBinding.FieldName = 'Description'
                  end
                  object cgvDependenciesKeyField: TcxGridDBColumn
                    DataBinding.FieldName = 'KeyField'
                  end
                end
                object cgDependenciesLevel1: TcxGridLevel
                  GridView = cgvDependencies
                end
              end
            end
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 73
          Width = 740
          Height = 231
          Align = alClient
          TabOrder = 2
          object cgSuratJalanDt: TcxGrid
            Left = 1
            Top = 1
            Width = 738
            Height = 229
            Align = alClient
            TabOrder = 0
            object cgvSuratJalanDt: TcxGridDBTableView
              NavigatorButtons.OnButtonClick = cgvSuratJalanDtNavigatorButtonsButtonClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsSuratJalanDt
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'Qty'
                  Column = cgvSuratJalanDtQty
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvSuratJalanDtSuratJalanCode: TcxGridDBColumn
                Caption = 'Kode Surat Jalan *'
                DataBinding.FieldName = 'SuratJalanCode'
                Visible = False
              end
              object cgvSuratJalanDtBeritaAcaraCode: TcxGridDBColumn
                Caption = 'Kode Berita Acara'
                DataBinding.FieldName = 'BeritaAcaraCode'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 101
              end
              object cgvSuratJalanDtSuppliesCode: TcxGridDBColumn
                Caption = 'Supplies Code'
                DataBinding.FieldName = 'SuppliesCode'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 91
              end
              object cgvSuratJalanDtSuppliesName: TcxGridDBColumn
                Caption = 'Supplies Name'
                DataBinding.FieldName = 'SuppliesName'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 162
              end
              object cgvSuratJalanDtQty: TcxGridDBColumn
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 65
              end
            end
            object cgSuratJalanDtLevel1: TcxGridLevel
              GridView = cgvSuratJalanDt
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
      object cgPrevSuratJalanHd: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 392
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevSuratJalanHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevSuratJalanHdSuratJalanCode: TcxGridDBColumn
            Caption = 'Kode Surat Jalan'
            DataBinding.FieldName = 'SuratJalanCode'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Width = 99
          end
          object cgvPrevSuratJalanHdSuratJalanDate: TcxGridDBColumn
            Caption = 'Tanggal Surat Jalan'
            DataBinding.FieldName = 'SuratJalanDate'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Width = 109
          end
          object cgvPrevSuratJalanHdTotalM3: TcxGridDBColumn
            DataBinding.FieldName = 'TotalM3'
            Visible = False
          end
          object cgvPrevSuratJalanHdTotalBerat: TcxGridDBColumn
            DataBinding.FieldName = 'TotalBerat'
            Visible = False
          end
          object cgvPrevSuratJalanHdEmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
          object cgvPrevSuratJalanHdStatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
            Visible = False
          end
          object cgvPrevSuratJalanHdInternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
            Visible = False
          end
          object cgvPrevSuratJalanHdCounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
            Visible = False
          end
          object cgvPrevSuratJalanHdStatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
            Visible = False
          end
          object cgvPrevSuratJalanHdPenerima: TcxGridDBColumn
            DataBinding.FieldName = 'Penerima'
            Width = 87
          end
        end
        object cgPrevSuratJalanHdLevel1: TcxGridLevel
          GridView = cgvPrevSuratJalanHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 608
    Top = 88
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 640
    Top = 88
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 672
    Top = 88
  end
  inherited dsDefault: TDataSource
    DataSet = qrySuratJalanHd
    Left = 576
    Top = 120
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 704
    Top = 88
  end
  inherited pmPrint: TPopupMenu
    Left = 640
    Top = 120
  end
  object qrySuratJalanHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySuratJalanHdBeforeInsert
    BeforePost = qrySuratJalanHdBeforePost
    AfterPost = qrySuratJalanHdAfterPost
    BeforeDelete = qrySuratJalanHdBeforeDelete
    AfterDelete = qrySuratJalanHdAfterDelete
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
    SQL.Strings = (
      'select * '
      'from SuratJalanHd'
      'where SuratJalanDate between :StartDate and :EndDate'
      'order by SuratJalanCode')
    Left = 576
    Top = 88
  end
  object qrySuratJalanDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySuratJalanDtBeforePost
    AfterPost = qrySuratJalanDtAfterPost
    BeforeDelete = qrySuratJalanDtBeforeDelete
    AfterDelete = qrySuratJalanDtAfterDelete
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'SuratJalanCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from SuratJalanDt'
      'where SuratJalanCode = :SuratJalanCode')
    Left = 544
    Top = 88
  end
  object dsSuratJalanDt: TDataSource
    DataSet = qrySuratJalanDt
    Left = 544
    Top = 120
  end
  object qryLogSuratJalan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog'
      'where TableName='#39'SuratJalanHd'#39' or TableName='#39'SuratJalanDt'#39
      'order by TransactionDate')
    Left = 512
    Top = 88
  end
  object dsLogSuratJalan: TDataSource
    DataSet = qryLogSuratJalan
    Left = 512
    Top = 120
  end
end
