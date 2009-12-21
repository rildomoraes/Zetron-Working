inherited fmShipDailyLog: TfmShipDailyLog
  Caption = 'ShipDailyLog'
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
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
        object Label1: TLabel
          Left = 18
          Top = 6
          Width = 3
          Height = 13
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 89
          Align = alTop
          TabOrder = 0
          object Label5: TLabel
            Left = 9
            Top = 6
            Width = 35
            Height = 13
            Caption = 'Nama *'
            Transparent = True
          end
          object Label4: TLabel
            Left = 9
            Top = 24
            Width = 46
            Height = 13
            Caption = 'Tanggal *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 42
            Width = 34
            Height = 13
            Caption = 'Posisi *'
            Transparent = True
          end
          object Label3: TLabel
            Left = 9
            Top = 60
            Width = 38
            Height = 13
            Caption = 'Cuaca *'
            Transparent = True
          end
          object dbeShipId: TcxDBExtLookupComboBox
            Left = 59
            Top = 3
            DataBinding.DataField = 'ShipId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmEkspedisi.cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevShipShipName
            TabOrder = 0
            Width = 145
          end
          object dbeShipLogDate: TcxDBDateEdit
            Left = 59
            Top = 21
            DataBinding.DataField = 'ShipLogDate'
            DataBinding.DataSource = dsDefault
            Properties.Kind = ckDateTime
            TabOrder = 1
            Width = 158
          end
          object dbeShipPosition: TcxDBTextEdit
            Left = 59
            Top = 39
            DataBinding.DataField = 'ShipPosition'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 158
          end
          object dbeStatusWeather: TcxDBImageComboBox
            Left = 59
            Top = 57
            DataBinding.DataField = 'StatusWeather'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Cerah'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Berawan'
                Value = '1'
              end
              item
                Description = 'Hujan'
                Value = '2'
              end>
            TabOrder = 3
            Width = 158
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 89
          Width = 560
          Height = 223
          Align = alClient
          TabOrder = 1
          object cxGrid2: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 221
            Align = alClient
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPrevDailyLog
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView1ShipId: TcxGridDBColumn
                DataBinding.FieldName = 'ShipId'
              end
              object cxGrid2DBTableView1ShipLogDate: TcxGridDBColumn
                DataBinding.FieldName = 'ShipLogDate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Kind = ckDateTime
                Width = 75
              end
              object cxGrid2DBTableView1ShipPosition: TcxGridDBColumn
                DataBinding.FieldName = 'ShipPosition'
                Width = 77
              end
              object cxGrid2DBTableView1StatusWeather: TcxGridDBColumn
                DataBinding.FieldName = 'StatusWeather'
                Width = 81
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      Height = 316
      Visible = True
      ExplicitHeight = 316
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ShipId: TcxGridDBColumn
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cxGrid1DBTableView1ShipLogDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'ShipLogDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
          end
          object cxGrid1DBTableView1ShipPosition: TcxGridDBColumn
            Caption = 'Posisi'
            DataBinding.FieldName = 'ShipPosition'
          end
          object cxGrid1DBTableView1StatusWeather: TcxGridDBColumn
            Caption = 'Cuaca'
            DataBinding.FieldName = 'StatusWeather'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Cerah'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Berawan'
                Value = '1'
              end
              item
                Description = 'Hujan'
                Value = '2'
              end>
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 88
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 400
    Top = 88
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 432
    Top = 88
  end
  inherited dsDefault: TDataSource
    DataSet = qryShipDailyLog
    Left = 368
    Top = 120
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 464
    Top = 88
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 400
    Top = 120
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryShipDailyLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ShipDailyLog')
    Left = 400
    Top = 176
  end
  object qryPrevDailyLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ShipDailyLog')
    Left = 400
    Top = 224
  end
  object dsPrevDailyLog: TDataSource
    DataSet = qryPrevDailyLog
    Left = 488
    Top = 176
  end
end
