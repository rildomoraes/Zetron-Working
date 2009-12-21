inherited fmMutasi: TfmMutasi
  Caption = 'Pindah Lokasi'
  ClientHeight = 490
  ClientWidth = 729
  ExplicitWidth = 737
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 729
    ExplicitWidth = 729
  end
  inherited pnlCustom: TPanel
    Width = 729
    ExplicitWidth = 729
  end
  inherited dxDockSite1: TdxDockSite
    Width = 729
    Height = 415
    ExplicitWidth = 729
    ExplicitHeight = 415
    DockType = 0
    OriginalWidth = 729
    OriginalHeight = 415
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 701
      Height = 415
      ExplicitWidth = 701
      ExplicitHeight = 415
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 701
        Height = 415
        ExplicitWidth = 701
        ExplicitHeight = 415
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 701
        Height = 415
        ExplicitWidth = 701
        ExplicitHeight = 415
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 697
          Height = 105
          Align = alTop
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 1
            Top = 1
            Width = 695
            Height = 686
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 9
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Kode Mutasi *'
              Transparent = True
            end
            object Label2: TLabel
              Left = 9
              Top = 24
              Width = 80
              Height = 13
              Caption = 'Tanggal Mutasi *'
              Transparent = True
            end
            object Label3: TLabel
              Left = 9
              Top = 42
              Width = 61
              Height = 13
              Caption = 'Lokasi Asal *'
              Transparent = True
            end
            object Label4: TLabel
              Left = 9
              Top = 60
              Width = 74
              Height = 13
              Caption = 'Lokasi Tujuan *'
              Transparent = True
            end
            object dbeMutasiCode: TcxDBTextEdit
              Left = 98
              Top = 3
              DataBinding.DataField = 'MutasiCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbeMutasiCodePropertiesEditValueChanged
              TabOrder = 0
              Width = 121
            end
            object dbeStorageLocationSource: TcxDBExtLookupComboBox
              Left = 98
              Top = 39
              DataBinding.DataField = 'StorageLocationIdSource'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevStorageLocation
              Properties.KeyFieldNames = 'StorageLocationId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
              TabOrder = 2
              Width = 141
            end
            object dbeMutasiDate: TcxDBDateEdit
              Left = 98
              Top = 21
              DataBinding.DataField = 'MutasiDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
            object dbeStorageLocationDest: TcxDBExtLookupComboBox
              Left = 98
              Top = 57
              DataBinding.DataField = 'StorageLocationIdDest'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevStorageLocationDest
              Properties.KeyFieldNames = 'StorageLocationId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationDestStorageLocationName
              Properties.OnEditValueChanged = dbeStorageLocationDestPropertiesEditValueChanged
              TabOrder = 3
              Width = 141
            end
          end
        end
        object pnlOther: TPanel
          Left = 0
          Top = 105
          Width = 697
          Height = 231
          Align = alClient
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 1
            Top = 1
            Width = 695
            Height = 229
            ActivePage = tsDetail
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 223
            ClientRectLeft = 3
            ClientRectRight = 655
            ClientRectTop = 3
            object tsDetail: TcxTabSheet
              ImageIndex = 3
              object cgMutasiStorageDt: TcxGrid
                Left = 0
                Top = 0
                Width = 652
                Height = 220
                Align = alClient
                TabOrder = 0
                object cgvMutasiStorageDt: TcxGridDBTableView
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
                  DataController.DataSource = dsMutasiStorageDt
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'Qty'
                      Column = cgvMutasiStorageDtQty
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotalBerat'
                      Column = cgvMutasiStorageDtTotalBerat
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotalM3'
                      Column = cgvMutasiStorageDtTotalM3
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotM3Ton'
                      Column = cgvMutasiStorageDtTotM3Ton
                    end>
                  DataController.Summary.SummaryGroups = <>
                  DataController.Summary.OnAfterSummary = cgvMutasiStorageDtDataControllerSummaryAfterSummary
                  NewItemRow.Visible = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cgvMutasiStorageDtMutasiCode: TcxGridDBColumn
                    Caption = 'Kode Mutasi *'
                    DataBinding.FieldName = 'MutasiCode'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.CharCase = ecUpperCase
                    Visible = False
                  end
                  object cgvMutasiStorageDtMutasiNo: TcxGridDBColumn
                    Caption = 'No Mutasi *'
                    DataBinding.FieldName = 'MutasiNo'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.CharCase = ecUpperCase
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                    Width = 66
                  end
                  object cgvMutasiStorageDtItemReceiveCode: TcxGridDBColumn
                    Caption = 'Kode Penerimaan'
                    DataBinding.FieldName = 'ItemReceiveCode'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.CharCase = ecUpperCase
                    Properties.OnButtonClick = cgvMutasiStorageDtItemReceiveCodePropertiesButtonClick
                    Width = 118
                  end
                  object cgvMutasiStorageDtNo: TcxGridDBColumn
                    Caption = 'No '
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Width = 43
                  end
                  object cgvMutasiStorageDtPackingTransactionCode: TcxGridDBColumn
                    Caption = 'Kode Packing'
                    DataBinding.FieldName = 'PackingTransactionCode'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = False
                    Properties.OnButtonClick = cgvMutasiStorageDtPackingTransactionCodePropertiesButtonClick
                    Width = 101
                  end
                  object cgvMutasiStorageDtSuppliesCode: TcxGridDBColumn
                    Caption = 'Supplies Code *'
                    DataBinding.FieldName = 'SuppliesCode'
                    Options.Editing = False
                    Width = 89
                  end
                  object cgvMutasiStorageDtSuppliesName: TcxGridDBColumn
                    Caption = 'Supplies Name *'
                    DataBinding.FieldName = 'SuppliesName'
                    Options.Editing = False
                    Width = 104
                  end
                  object cgvMutasiStorageDtQty: TcxGridDBColumn
                    DataBinding.FieldName = 'Qty'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.UseThousandSeparator = True
                    Width = 84
                  end
                  object cgvMutasiStorageDtP: TcxGridDBColumn
                    DataBinding.FieldName = 'P'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Properties.UseThousandSeparator = True
                    Options.Editing = False
                    Width = 61
                  end
                  object cgvMutasiStorageDtL: TcxGridDBColumn
                    DataBinding.FieldName = 'L'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Properties.UseThousandSeparator = True
                    Options.Editing = False
                    Width = 58
                  end
                  object cgvMutasiStorageDtT: TcxGridDBColumn
                    DataBinding.FieldName = 'T'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Properties.UseThousandSeparator = True
                    Options.Editing = False
                    Width = 52
                  end
                  object cgvMutasiStorageDtBerat: TcxGridDBColumn
                    DataBinding.FieldName = 'Berat'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Width = 61
                  end
                  object cgvMutasiStorageDtUnitMeasure: TcxGridDBColumn
                    Caption = 'Unit'
                    DataBinding.FieldName = 'UnitMeasureId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Visible = False
                    Options.Editing = False
                    Width = 56
                  end
                  object cgvMutasiStorageDtTotalM3: TcxGridDBColumn
                    DataBinding.FieldName = 'TotalM3'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Properties.UseThousandSeparator = True
                    Options.Editing = False
                    Options.Focusing = False
                    Width = 68
                  end
                  object cgvMutasiStorageDtTotalBerat: TcxGridDBColumn
                    DataBinding.FieldName = 'TotalBerat'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Properties.ReadOnly = True
                    Properties.UseThousandSeparator = True
                    Options.Editing = False
                    Options.Focusing = False
                  end
                  object cgvMutasiStorageDtTotM3Ton: TcxGridDBColumn
                    DataBinding.FieldName = 'TotM3Ton'
                    Visible = False
                    Options.Editing = False
                  end
                end
                object cgMutasiStorageDtLevel1: TcxGridLevel
                  GridView = cgvMutasiStorageDt
                end
              end
            end
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              object dbmInternalMemo: TcxDBMemo
                Left = 0
                Top = 25
                Align = alClient
                DataBinding.DataField = 'internalmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 195
                Width = 652
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 652
                Height = 25
                Align = alTop
                Caption = 'Internal Memo'
                TabOrder = 1
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object dbmStatementMemo: TcxDBMemo
                Left = 0
                Top = 25
                Align = alClient
                DataBinding.DataField = 'statementmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 195
                Width = 652
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 652
                Height = 25
                Align = alTop
                Caption = 'Statement Memo'
                TabOrder = 1
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 652
                Height = 220
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
                  DataController.DataSource = dsLogMutasi
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
        object pnlSummary: TPanel
          Left = 0
          Top = 336
          Width = 697
          Height = 75
          Align = alBottom
          TabOrder = 2
          object Label19: TLabel
            Left = 13
            Top = 11
            Width = 52
            Height = 13
            Caption = 'Total Collie'
            Transparent = True
          end
          object Label20: TLabel
            Left = 242
            Top = 11
            Width = 42
            Height = 13
            Caption = 'Total M3'
            Transparent = True
          end
          object Label21: TLabel
            Left = 242
            Top = 29
            Width = 46
            Height = 13
            Caption = 'Total Ton'
            Transparent = True
          end
          object Label22: TLabel
            Left = 242
            Top = 47
            Width = 73
            Height = 13
            Caption = 'Total M3 + Ton'
            Transparent = True
          end
          object dbeCollie: TcxCurrencyEdit
            Left = 104
            Top = 7
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 121
          end
          object dbeM3: TcxCurrencyEdit
            Left = 344
            Top = 7
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 121
          end
          object dbeTon: TcxCurrencyEdit
            Left = 344
            Top = 25
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 121
          end
          object dbeM3Ton: TcxCurrencyEdit
            Left = 344
            Top = 43
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 121
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvDisplayMutasiCode: TcxGridDBColumn
            DataBinding.FieldName = 'MutasiCode'
          end
          object cgvDisplayMutasiDate: TcxGridDBColumn
            DataBinding.FieldName = 'MutasiDate'
          end
          object cgvDisplayStorageLocationIdSource: TcxGridDBColumn
            DataBinding.FieldName = 'StorageLocationIdSource'
          end
          object cgvDisplayStorageLocationIdDest: TcxGridDBColumn
            DataBinding.FieldName = 'StorageLocationIdDest'
          end
          object cgvDisplayEmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
          end
          object cgvDisplayStatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
          end
          object cgvDisplayInternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
          end
          object cgvDisplayCounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
          end
          object cgvDisplayStatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
          end
          object cgvDisplayDaftarMuatKapalCode: TcxGridDBColumn
            DataBinding.FieldName = 'DaftarMuatKapalCode'
          end
        end
        object cgDisplayLevel1: TcxGridLevel
          GridView = cgvDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 576
    Top = 88
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 608
    Top = 88
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 640
    Top = 88
  end
  inherited dsDefault: TDataSource
    DataSet = qryMutasiStorageHd
    Left = 576
    Top = 152
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 672
    Top = 88
  end
  inherited pmPrint: TPopupMenu
    Left = 608
    Top = 120
  end
  object qryMutasiStorageHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryMutasiStorageHdBeforeInsert
    BeforePost = qryMutasiStorageHdBeforePost
    AfterPost = qryMutasiStorageHdAfterPost
    BeforeDelete = qryMutasiStorageHdBeforeDelete
    AfterDelete = qryMutasiStorageHdAfterDelete
    OnNewRecord = qryMutasiStorageHdNewRecord
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
      'from MutasiStorageHd'
      'where MutasiDate between :StartDate and :EndDate'
      'order by MutasiCode;')
    Left = 576
    Top = 120
  end
  object qryMutasiStorageDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryMutasiStorageDtBeforeInsert
    BeforePost = qryMutasiStorageDtBeforePost
    AfterPost = qryMutasiStorageDtAfterPost
    BeforeDelete = qryMutasiStorageDtBeforeDelete
    AfterDelete = qryMutasiStorageDtAfterDelete
    OnNewRecord = qryMutasiStorageDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'MutasiCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      'case'
      ' when totalm3>totalberat then totalm3 '
      ' else totalberat '
      'end as TotM3Ton'
      'from MutasiStorageDt'
      'where MutasiCode = :MutasiCode')
    Left = 544
    Top = 120
  end
  object dsMutasiStorageDt: TDataSource
    DataSet = qryMutasiStorageDt
    OnDataChange = dsMutasiStorageDtDataChange
    Left = 544
    Top = 152
  end
  object qryPrevPackingTransaction: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select b.PackingCode, b.PackingName,'
      '          a.PackingTransactionCode, a.PackingTransactionDate,'
      '          a.PackingAlias, a.Price, a.P, a.L, a.T'
      'from PackingTransactionHd a'
      'left join Packing b on a.PackingId=b.PackingId')
    Left = 512
    Top = 120
  end
  object dsPrevPackingTransaction: TDataSource
    DataSet = qryPrevPackingTransaction
    Left = 512
    Top = 152
  end
  object qryPrevStorageLocationSource: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from storagelocation a'
      'where a.storagelocationid in '
      ' (select storagelocationid from stock)')
    Left = 480
    Top = 120
  end
  object dsPrevStorageLocationSource: TDataSource
    DataSet = qryPrevStorageLocationSource
    Left = 480
    Top = 152
  end
  object qryGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select dbo.fnGetId('#39'MUTASI'#39','#39#39','#39#39') as GenCounter')
    Left = 608
    Top = 152
  end
  object mdSearchMutasi1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 352
    Top = 128
  end
  object qryFindDaftarMuatKapal: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'storagelocationid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select a.daftarmuatkapalcode'
      'from daftarmuatkapal a'
      'left join ship b on a.shipid=b.shipid'
      'where a.daftarmuatkapalclose is null '
      'and cast(b.storagelocationid as varchar)=:storagelocationid')
    Left = 352
    Top = 96
  end
  object qryLogMutasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog'
      'where TableName='#39'MutasiStorageHd'#39' or TableName='#39'MutasiStorageDt'#39
      'order by TransactionDate')
    Left = 448
    Top = 120
  end
  object dsLogMutasi: TDataSource
    DataSet = qryLogMutasi
    Left = 448
    Top = 152
  end
end
