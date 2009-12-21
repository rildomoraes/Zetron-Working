inherited fmAssets: TfmAssets
  Caption = 'Assets'
  ClientHeight = 327
  ClientWidth = 581
  ExplicitWidth = 589
  ExplicitHeight = 361
  DesignSize = (
    581
    327)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 581
    ExplicitWidth = 581
  end
  inherited dxDockSite1: TdxDockSite
    Width = 581
    Height = 277
    ExplicitWidth = 581
    ExplicitHeight = 277
    DockType = 0
    OriginalWidth = 581
    OriginalHeight = 277
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 553
      Height = 277
      ExplicitWidth = 553
      ExplicitHeight = 277
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 553
        Height = 277
        ExplicitWidth = 553
        ExplicitHeight = 277
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 553
        Height = 277
        ExplicitWidth = 553
        ExplicitHeight = 277
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 549
          Height = 65
          Align = alTop
          TabOrder = 0
          object lblCountryId: TLabel
            Left = 9
            Top = 6
            Width = 54
            Height = 13
            Caption = 'Kode Asset'
            Transparent = True
          end
          object lblCountryName: TLabel
            Left = 9
            Top = 24
            Width = 57
            Height = 13
            Caption = 'Nama Asset'
            Transparent = True
          end
          object Label9: TLabel
            Left = 187
            Top = 4
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbeKodeAsset: TcxDBTextEdit
            Left = 100
            Top = 3
            DataBinding.DataField = 'kodeassets'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 81
          end
          object dbeNamaAsset: TcxDBTextEdit
            Left = 100
            Top = 21
            DataBinding.DataField = 'namaassets'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 185
          end
        end
        object cgSubAssets: TcxGrid
          Left = 0
          Top = 65
          Width = 549
          Height = 208
          Align = alClient
          TabOrder = 1
          object cgvSubAssets: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSubAssets
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
            NewItemRow.Visible = True
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvSubAssetskodesubassets: TcxGridDBColumn
              Caption = 'Kode Sub Asset *'
              DataBinding.FieldName = 'kodesubassets'
              Width = 133
            end
            object cgvSubAssetsnamasubassets: TcxGridDBColumn
              Caption = 'Nama Sub Asset'
              DataBinding.FieldName = 'namasubassets'
            end
            object cgvSubAssetsKODEASSETS: TcxGridDBColumn
              Caption = 'KODEASSETS *'
              DataBinding.FieldName = 'KODEASSETS'
              Width = 99
            end
          end
          object cgSubAssetsLevel1: TcxGridLevel
            GridView = cgvSubAssets
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 277
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgAssets: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 255
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvAssets: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvAssetskodeassets: TcxGridDBColumn
            Caption = 'Kode Asset'
            DataBinding.FieldName = 'kodeassets'
            Width = 72
          end
          object cgvAssetsnamaassets: TcxGridDBColumn
            Caption = 'Nama Asset'
            DataBinding.FieldName = 'namaassets'
          end
        end
        object cgAssetsLevel1: TcxGridLevel
          GridView = cgvAssets
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 64
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 64
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 64
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryAssets
    Left = 360
    Top = 64
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 64
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsSubAssets: TDataSource
    DataSet = qrySubAssets
    Left = 360
    Top = 96
  end
  object qrySubAssets: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from SubAssets')
    Left = 324
    Top = 96
  end
end
