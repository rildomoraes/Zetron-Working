inherited fmBongkaran: TfmBongkaran
  Caption = 'Bongkaran'
  ClientWidth = 710
  ExplicitWidth = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 710
    ExplicitWidth = 710
  end
  inherited pnlCustom: TPanel
    Width = 710
    ExplicitWidth = 710
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
    Width = 710
    ExplicitWidth = 710
    DockType = 0
    OriginalWidth = 710
    OriginalHeight = 391
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 682
      ExplicitWidth = 682
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 682
        ExplicitWidth = 682
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 682
        ExplicitWidth = 682
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 678
          Height = 153
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitTop = 2
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 87
            Height = 13
            Caption = 'Kode Bongkaran *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 42
            Width = 107
            Height = 13
            Caption = 'Tanggal Kedatangan *'
            Transparent = True
          end
          object Label3: TLabel
            Left = 9
            Top = 60
            Width = 110
            Height = 13
            Caption = 'Tanggal Mulai Bongkar'
            Transparent = True
          end
          object Label4: TLabel
            Left = 9
            Top = 78
            Width = 119
            Height = 13
            Caption = 'Tanggal Selesai Bongkar'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 96
            Width = 37
            Height = 13
            Caption = 'Kerani *'
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 114
            Width = 51
            Height = 13
            Caption = 'Komprador'
            Transparent = True
          end
          object Label7: TLabel
            Left = 9
            Top = 24
            Width = 58
            Height = 13
            Caption = 'Nama Kapal'
            Transparent = True
          end
          object Label8: TLabel
            Left = 9
            Top = 132
            Width = 77
            Height = 13
            Caption = 'Pelabuhan Must'
            Transparent = True
          end
          object dbeBongkaranCode: TcxDBTextEdit
            Left = 152
            Top = 3
            DataBinding.DataField = 'BongkaranCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object dbeArrivalDate: TcxDBDateEdit
            Left = 152
            Top = 39
            DataBinding.DataField = 'ArrivalDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 121
          end
          object dbeBongkaranDateStart: TcxDBDateEdit
            Left = 152
            Top = 57
            DataBinding.DataField = 'BongkaranDateStart'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 121
          end
          object dbeBongkaranDateEnd: TcxDBDateEdit
            Left = 152
            Top = 75
            DataBinding.DataField = 'BongkaranDateEnd'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 121
          end
          object dblcKerani: TcxDBExtLookupComboBox
            Left = 152
            Top = 93
            DataBinding.DataField = 'Kerani'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevShipCrew
            Properties.KeyFieldNames = 'ShipCrewId'
            Properties.ListFieldItem = cgvPrevShipCrewShipCrewName
            TabOrder = 4
            Width = 145
          end
          object dblcKomprador: TcxDBExtLookupComboBox
            Left = 152
            Top = 111
            DataBinding.DataField = 'Komprador'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevShipCrew
            Properties.KeyFieldNames = 'ShipCrewId'
            Properties.ListFieldItem = cgvPrevShipCrewShipCrewName
            TabOrder = 5
            Width = 145
          end
          object dblcKapal: TcxDBExtLookupComboBox
            Left = 152
            Top = 21
            DataBinding.DataField = 'ShipId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = cgvPrevShipShipName
            TabOrder = 6
            Width = 145
          end
          object dblcRoute: TcxDBExtLookupComboBox
            Left = 152
            Top = 129
            DataBinding.DataField = 'RouteId'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Properties.View = cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = cgvPrevRouteRouteName
            TabOrder = 7
            Width = 145
          end
        end
        object pnlOtherInfo: TPanel
          Left = 0
          Top = 153
          Width = 678
          Height = 234
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 0
            Top = 0
            Width = 678
            Height = 234
            ActivePage = tsDipendencies
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 228
            ClientRectLeft = 3
            ClientRectRight = 638
            ClientRectTop = 3
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              object dbmInternalMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'internalmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 225
                Width = 635
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object dbmStatementMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'statementmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 225
                Width = 635
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 635
                Height = 225
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
                  DataController.DataSource = dsLogBongkaran
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
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevBongkaran: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevBongkaran: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevBongkaranBongkaranCode: TcxGridDBColumn
            Caption = 'Kode Bongkaran'
            DataBinding.FieldName = 'BongkaranCode'
            Width = 102
          end
          object cgvPrevBongkaranArrivalDate: TcxGridDBColumn
            Caption = 'Tanggal Kedatangan'
            DataBinding.FieldName = 'ArrivalDate'
            Width = 108
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
            Caption = 'Nama Kapal'
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = cgvPrevShipShipName
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
        object cgPrevBongkaranLevel1: TcxGridLevel
          GridView = cgvPrevBongkaran
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 616
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 648
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 680
  end
  inherited dsDefault: TDataSource
    DataSet = qryBongkaranHd
    Left = 616
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 712
  end
  inherited pmPrint: TPopupMenu
    Left = 648
  end
  object qryBongkaranHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryBongkaranHdBeforeInsert
    BeforePost = qryBongkaranHdBeforePost
    AfterPost = qryBongkaranHdAfterPost
    BeforeDelete = qryBongkaranHdBeforeDelete
    AfterDelete = qryBongkaranHdAfterDelete
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
      'select * '
      'from BongkaranHd'
      'where arrivalDate between :StartDate and :EndDate'
      'order by BongkaranCode')
    Left = 584
    Top = 112
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 584
    Top = 144
    object cgvPrevShipCrew: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevShipCrew
      DataController.KeyFieldNames = 'ShipCrewId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevShipCrewShipCrewId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewId'
        Visible = False
      end
      object cgvPrevShipCrewShipCrewCode: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewCode'
        Visible = False
      end
      object cgvPrevShipCrewShipCrewName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewName'
      end
      object cgvPrevShipCrewStatusPosition: TcxGridDBColumn
        DataBinding.FieldName = 'StatusPosition'
        Visible = False
      end
    end
    object cgvPrevShip: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevShip
      DataController.KeyFieldNames = 'ShipId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevShipShipId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipId'
        Visible = False
      end
      object cgvPrevShipShipCrewId: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCrewId'
        Visible = False
      end
      object cgvPrevShipStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
      end
      object cgvPrevShipShipCode: TcxGridDBColumn
        DataBinding.FieldName = 'ShipCode'
        Visible = False
      end
      object cgvPrevShipShipName: TcxGridDBColumn
        DataBinding.FieldName = 'ShipName'
      end
      object cgvPrevShipEngineName: TcxGridDBColumn
        DataBinding.FieldName = 'EngineName'
        Visible = False
      end
      object cgvPrevShipOrigin: TcxGridDBColumn
        DataBinding.FieldName = 'Origin'
        Visible = False
      end
      object cgvPrevShipYearMade: TcxGridDBColumn
        DataBinding.FieldName = 'YearMade'
        Visible = False
      end
      object cgvPrevShipP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        Visible = False
      end
      object cgvPrevShipL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        Visible = False
      end
      object cgvPrevShipT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        Visible = False
      end
      object cgvPrevShipGrossTon: TcxGridDBColumn
        DataBinding.FieldName = 'GrossTon'
        Visible = False
      end
      object cgvPrevShipNettoTon: TcxGridDBColumn
        DataBinding.FieldName = 'NettoTon'
        Visible = False
      end
      object cgvPrevShipFlagMuat: TcxGridDBColumn
        DataBinding.FieldName = 'FlagMuat'
        Visible = False
      end
    end
    object cgvPrevRoute: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevRoute
      DataController.KeyFieldNames = 'RouteId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevRouteRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevRouteRouteCode: TcxGridDBColumn
        DataBinding.FieldName = 'RouteCode'
        Visible = False
      end
      object cgvPrevRouteRouteName: TcxGridDBColumn
        DataBinding.FieldName = 'RouteName'
      end
      object cgvPrevRouteDepatureCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DepatureCityId'
      end
      object cgvPrevRouteDestinationCityId: TcxGridDBColumn
        DataBinding.FieldName = 'DestinationCityId'
      end
    end
  end
  object qryLogBongkaran: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog'
      'where TableName='#39'BongkaranHd'#39
      'order by TransactionDate')
    Left = 584
    Top = 176
  end
  object dsLogBongkaran: TDataSource
    DataSet = qryLogBongkaran
    Left = 616
    Top = 176
  end
end
