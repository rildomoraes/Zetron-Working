inherited fmBeritaAcara: TfmBeritaAcara
  Caption = 'Berita Acara'
  ClientHeight = 527
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 452
    ExplicitHeight = 452
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 452
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 452
      ExplicitHeight = 452
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 452
        ExplicitHeight = 452
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 452
        ExplicitHeight = 452
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 93
            Height = 13
            Caption = 'Kode Berita Acara *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 42
            Width = 83
            Height = 13
            Caption = 'Kode Bongkaran '
            Transparent = True
          end
          object Label3: TLabel
            Left = 9
            Top = 60
            Width = 33
            Height = 13
            Caption = 'Merek '
            Transparent = True
          end
          object Label4: TLabel
            Left = 11
            Top = 91
            Width = 3
            Height = 13
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 24
            Width = 103
            Height = 13
            Caption = 'Tanggal Berita Acara '
            Transparent = True
          end
          object dbeBeritaAcaraCode: TcxDBTextEdit
            Left = 122
            Top = 3
            DataBinding.DataField = 'BeritaAcaraCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object dblcBongkaranCode: TcxDBExtLookupComboBox
            Left = 122
            Top = 39
            DataBinding.DataField = 'BongkaranCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevBongkaran
            Properties.KeyFieldNames = 'BongkaranCode'
            Properties.ListFieldItem = cgvPrevBongkaranBongkaranCode
            TabOrder = 2
            Width = 145
          end
          object dblcMerek: TcxDBExtLookupComboBox
            Left = 122
            Top = 57
            DataBinding.DataField = 'MerekId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevMerek
            Properties.KeyFieldNames = 'MerekId'
            Properties.ListFieldItem = cgvPrevMerekMerekName
            TabOrder = 3
            Width = 145
          end
          object dbeBeritaAcaraDate: TcxDBDateEdit
            Left = 122
            Top = 21
            DataBinding.DataField = 'BeritaAcaraDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 121
          end
        end
        object pnlOtherInfo: TPanel
          Left = 0
          Top = 344
          Width = 740
          Height = 104
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 0
            Top = 0
            Width = 740
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
            ClientRectRight = 702
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
                Width = 702
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
                Width = 702
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 702
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
                  DataController.DataSource = dsLogBeritaAcara
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
          Top = 81
          Width = 740
          Height = 263
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object cgBeritaAcaraDt: TcxGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 263
            Align = alClient
            TabOrder = 0
            object cgvBeritaAcaraDt: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsBeritaAcaraDt
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'Qty'
                  Column = cgvBeritaAcaraDtQty
                end
                item
                  Kind = skSum
                  FieldName = 'Berat'
                  Column = cgvBeritaAcaraDtBerat
                end
                item
                  Kind = skSum
                  FieldName = 'TotalBerat'
                  Column = cgvBeritaAcaraDtTotalBerat
                end
                item
                  Kind = skSum
                  FieldName = 'TotalM3'
                  Column = cgvBeritaAcaraDtTotalM3
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cgvBeritaAcaraDtBeritaAcaraCode: TcxGridDBColumn
                DataBinding.FieldName = 'BeritaAcaraCode'
                Visible = False
              end
              object cgvBeritaAcaraDtSuppliesCode: TcxGridDBColumn
                Caption = 'Supplies Code *'
                DataBinding.FieldName = 'SuppliesCode'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 87
              end
              object cgvBeritaAcaraDtSuppliesName: TcxGridDBColumn
                Caption = 'Supplies Name *'
                DataBinding.FieldName = 'SuppliesName'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 109
              end
              object cgvBeritaAcaraDtStorageLocationId: TcxGridDBColumn
                Caption = 'Lokasi Penyimpanan'
                DataBinding.FieldName = 'StorageLocationId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.View = cgvPrevStorageLocation
                Properties.KeyFieldNames = 'StorageLocationId'
                Properties.ListFieldItem = cgvPrevStorageLocationStorageLocationName
                Width = 136
              end
              object cgvBeritaAcaraDtQty: TcxGridDBColumn
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 53
              end
              object cgvBeritaAcaraDtQtyKonosemen: TcxGridDBColumn
                DataBinding.FieldName = 'QtyKonosemen'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 91
              end
              object cgvBeritaAcaraDtQtySelisih: TcxGridDBColumn
                DataBinding.FieldName = 'QtySelisih'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 74
              end
              object cgvBeritaAcaraDtQtyOutStanding: TcxGridDBColumn
                DataBinding.FieldName = 'QtyOutStanding'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 101
              end
              object cgvBeritaAcaraDtBerat: TcxGridDBColumn
                DataBinding.FieldName = 'Berat'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 49
              end
              object cgvBeritaAcaraDtP: TcxGridDBColumn
                DataBinding.FieldName = 'P'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 35
              end
              object cgvBeritaAcaraDtL: TcxGridDBColumn
                DataBinding.FieldName = 'L'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 37
              end
              object cgvBeritaAcaraDtT: TcxGridDBColumn
                DataBinding.FieldName = 'T'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 33
              end
              object cgvBeritaAcaraDtTotalBerat: TcxGridDBColumn
                DataBinding.FieldName = 'TotalBerat'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvBeritaAcaraDtTotalM3: TcxGridDBColumn
                DataBinding.FieldName = 'TotalM3'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvBeritaAcaraDtUnitMeasure: TcxGridDBColumn
                DataBinding.FieldName = 'UnitMeasure'
              end
            end
            object cgBeritaAcaraDtLevel1: TcxGridLevel
              GridView = cgvBeritaAcaraDt
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
      object cgPrevBeritaAcara: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevBeritaAcara: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevBeritaAcaraBeritaAcaraCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'BeritaAcaraCode'
          end
          object cgvPrevBeritaAcaraBeritaAcaraDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'BeritaAcaraDate'
          end
          object cgvPrevBeritaAcaraBongkaranCode: TcxGridDBColumn
            DataBinding.FieldName = 'BongkaranCode'
            Visible = False
          end
          object cgvPrevBeritaAcaraMerekId: TcxGridDBColumn
            Caption = 'Merek'
            DataBinding.FieldName = 'MerekId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevMerek
            Properties.KeyFieldNames = 'MerekId'
            Properties.ListFieldItem = cgvPrevMerekMerekName
          end
          object cgvPrevBeritaAcaraTotalM3: TcxGridDBColumn
            Caption = 'Total M3'
            DataBinding.FieldName = 'TotalM3'
          end
          object cgvPrevBeritaAcaraTotalBerat: TcxGridDBColumn
            Caption = 'Total Berat'
            DataBinding.FieldName = 'TotalBerat'
          end
          object cgvPrevBeritaAcaraEmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
          object cgvPrevBeritaAcaraStatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
            Visible = False
          end
          object cgvPrevBeritaAcaraInternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
            Visible = False
          end
          object cgvPrevBeritaAcaraCounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
            Visible = False
          end
          object cgvPrevBeritaAcaraStatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
            Visible = False
          end
        end
        object cgPrevBeritaAcaraLevel1: TcxGridLevel
          GridView = cgvPrevBeritaAcara
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 616
    Top = 56
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 648
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 680
    Top = 56
  end
  inherited dsDefault: TDataSource
    DataSet = qryBeritaAcaraHd
    Left = 616
    Top = 120
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 712
    Top = 56
  end
  inherited pmPrint: TPopupMenu
    Left = 648
    Top = 88
  end
  object qryBeritaAcaraHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryBeritaAcaraHdBeforeInsert
    BeforePost = qryBeritaAcaraHdBeforePost
    AfterPost = qryBeritaAcaraHdAfterPost
    BeforeDelete = qryBeritaAcaraHdBeforeDelete
    AfterDelete = qryBeritaAcaraHdAfterDelete
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
      'select *'
      'from BeritaAcaraHd'
      'where BeritaAcaraDate between :StartDate and :EndDate'
      'order by BeritaAcaraCode')
    Left = 616
    Top = 88
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 584
    Top = 120
    object cgvPrevMerek: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevMerek
      DataController.KeyFieldNames = 'MerekId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevMerekMerekId: TcxGridDBColumn
        DataBinding.FieldName = 'MerekId'
        Visible = False
      end
      object cgvPrevMerekMerekCode: TcxGridDBColumn
        DataBinding.FieldName = 'MerekCode'
        Visible = False
      end
      object cgvPrevMerekMerekName: TcxGridDBColumn
        Caption = 'Nama Merek'
        DataBinding.FieldName = 'MerekName'
      end
      object cgvPrevMerekRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevMerekCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
      end
    end
    object cgvPrevBongkaran: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevBongkaran
      DataController.KeyFieldNames = 'BongkaranCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevBongkaranBongkaranCode: TcxGridDBColumn
        DataBinding.FieldName = 'BongkaranCode'
      end
      object cgvPrevBongkaranArrivalDate: TcxGridDBColumn
        DataBinding.FieldName = 'ArrivalDate'
      end
      object cgvPrevBongkaranBongkaranDateStart: TcxGridDBColumn
        DataBinding.FieldName = 'BongkaranDateStart'
        Visible = False
      end
      object cgvPrevBongkaranBongkaranDateEnd: TcxGridDBColumn
        DataBinding.FieldName = 'BongkaranDateEnd'
        Visible = False
      end
      object cgvPrevBongkaranKerani: TcxGridDBColumn
        DataBinding.FieldName = 'Kerani'
        Visible = False
      end
      object cgvPrevBongkaranKomprador: TcxGridDBColumn
        DataBinding.FieldName = 'Komprador'
        Visible = False
      end
      object cgvPrevBongkaranShipId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipId'
        Visible = False
      end
      object cgvPrevBongkaranRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevBongkaranEmployeeId: TcxGridDBColumn
        DataBinding.FieldName = 'EmployeeId'
        Visible = False
      end
      object cgvPrevBongkaranStatementMemo: TcxGridDBColumn
        DataBinding.FieldName = 'StatementMemo'
        Visible = False
      end
      object cgvPrevBongkaranInternalMemo: TcxGridDBColumn
        DataBinding.FieldName = 'InternalMemo'
        Visible = False
      end
      object cgvPrevBongkaranCounterPrint: TcxGridDBColumn
        DataBinding.FieldName = 'CounterPrint'
        Visible = False
      end
      object cgvPrevBongkaranStatusApprove: TcxGridDBColumn
        DataBinding.FieldName = 'StatusApprove'
        Visible = False
      end
    end
    object cgvPrevStorageLocation: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevStorageLocation
      DataController.KeyFieldNames = 'StorageLocationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
      end
      object cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationCode'
        Visible = False
      end
      object cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn
        Caption = 'Lokasi Penyimpanan'
        DataBinding.FieldName = 'StorageLocationName'
      end
      object cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn
        DataBinding.FieldName = 'FlagShipStorage'
        Visible = False
      end
    end
  end
  object qryPrevBongkaran: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from BongkaranHd')
    Left = 544
    Top = 88
  end
  object qryPrevMerek: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Merek')
    Left = 512
    Top = 88
  end
  object dsPrevBongkaran: TDataSource
    DataSet = qryPrevBongkaran
    Left = 544
    Top = 120
  end
  object dsPrevMerek: TDataSource
    DataSet = qryPrevMerek
    Left = 512
    Top = 120
  end
  object qryBeritaAcaraDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryBeritaAcaraDtBeforeInsert
    BeforePost = qryBeritaAcaraDtBeforePost
    AfterPost = qryBeritaAcaraDtAfterPost
    BeforeDelete = qryBeritaAcaraDtBeforeDelete
    AfterDelete = qryBeritaAcaraDtAfterDelete
    OnNewRecord = qryBeritaAcaraDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'BeritaAcaraCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from BeritaAcaraDt'
      'where BeritaAcaraCode = :BeritaAcaraCode')
    Left = 480
    Top = 88
  end
  object dsBeritaAcaraDt: TDataSource
    DataSet = qryBeritaAcaraDt
    OnDataChange = dsBeritaAcaraDtDataChange
    Left = 480
    Top = 120
  end
  object qryLogBeritaAcara: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog'
      'where TableName='#39'BeritaAcaraHd'#39' or TableName='#39'BeritaAcaraDt'#39
      'order by TransactionDate')
    Left = 448
    Top = 88
  end
  object dsLogBeritaAcara: TDataSource
    DataSet = qryLogBeritaAcara
    Left = 448
    Top = 120
  end
end
