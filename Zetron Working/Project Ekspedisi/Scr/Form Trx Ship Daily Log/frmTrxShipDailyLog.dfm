inherited fmTrxShipDailyLog: TfmTrxShipDailyLog
  Caption = 'Log Kapal'
  ClientHeight = 447
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      DataBinding.DataField = ''
    end
  end
  inherited dxDockSite1: TdxDockSite
    Height = 372
    ExplicitHeight = 372
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 372
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 372
      ExplicitHeight = 372
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 372
        ExplicitHeight = 372
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 372
        ExplicitHeight = 372
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 49
            Height = 13
            Caption = 'Tanggal * '
            Transparent = True
          end
          object dbeDate: TcxDateEdit
            Left = 64
            Top = 4
            Properties.OnEditValueChanged = dbeDatePropertiesEditValueChanged
            TabOrder = 0
            Width = 121
          end
        end
        object cgShipDailyLog: TcxGrid
          Left = 0
          Top = 33
          Width = 740
          Height = 335
          Align = alClient
          TabOrder = 1
          object cgvShipDailyLog: TcxGridDBTableView
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
            DataController.DataSource = dsDefault
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvShipDailyLogShipId: TcxGridDBColumn
              Caption = 'Nama Kapal *'
              DataBinding.FieldName = 'ShipId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevShip
              Properties.KeyFieldNames = 'ShipId'
              Properties.ListFieldItem = cgvPrevShipShipName
              Width = 131
            end
            object cgvShipDailyLogShipLogDate: TcxGridDBColumn
              DataBinding.FieldName = 'ShipLogDate'
              Visible = False
            end
            object cgvShipDailyLogShipPosition: TcxGridDBColumn
              Caption = 'Posisi *'
              DataBinding.FieldName = 'ShipPosition'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 107
            end
            object cgvShipDailyLogStatusWeather: TcxGridDBColumn
              Caption = 'Cuaca *'
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
              Width = 66
            end
            object cgvShipDailyLogEmployeeId: TcxGridDBColumn
              DataBinding.FieldName = 'EmployeeId'
              Visible = False
            end
            object cgvShipDailyLogDaftarMuatKapalCode: TcxGridDBColumn
              Caption = 'Kode Daftar Muat Kapal *'
              DataBinding.FieldName = 'DaftarMuatKapalCode'
              Width = 148
            end
            object cgvShipDailyLogStatementMemo: TcxGridDBColumn
              DataBinding.FieldName = 'StatementMemo'
              Visible = False
            end
            object cgvShipDailyLogInternalMemo: TcxGridDBColumn
              DataBinding.FieldName = 'InternalMemo'
              Visible = False
            end
            object cgvShipDailyLogCounterPrint: TcxGridDBColumn
              DataBinding.FieldName = 'CounterPrint'
              Visible = False
            end
            object cgvShipDailyLogStatusApprove: TcxGridDBColumn
              DataBinding.FieldName = 'StatusApprove'
              Visible = False
            end
            object cgvShipDailyLogKeterangan: TcxGridDBColumn
              DataBinding.FieldName = 'Keterangan'
              Width = 266
            end
          end
          object cgvPrevShip: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsPrevShip
            DataController.KeyFieldNames = 'ShipId'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cgvPrevShipShipId: TcxGridDBColumn
              DataBinding.FieldName = 'ShipId'
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
          object cgShipDailyLogLevel1: TcxGridLevel
            GridView = cgvShipDailyLog
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1ShipId: TcxGridDBColumn
            Caption = 'Kapal'
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevShip
            Properties.KeyFieldNames = 'ShipId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevShipShipName
          end
          object cxGridDBTableView1ShipLogDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'ShipLogDate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cxGridDBTableView1ShipPosition: TcxGridDBColumn
            Caption = 'Posisi'
            DataBinding.FieldName = 'ShipPosition'
          end
          object cxGridDBTableView1StatusWeather: TcxGridDBColumn
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
          object cxGridDBTableView1EmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevEmployee
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
          end
          object cxGridDBTableView1DaftarMuatKapalCode: TcxGridDBColumn
            DataBinding.FieldName = 'DaftarMuatKapalCode'
          end
          object cxGridDBTableView1StatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
          end
          object cxGridDBTableView1InternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
          end
          object cxGridDBTableView1CounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
          end
          object cxGridDBTableView1StatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 528
    Top = 280
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 568
    Top = 280
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 640
    Top = 280
  end
  inherited dsDefault: TDataSource
    DataSet = qryShipDailyLog
    Left = 608
    Top = 280
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 672
    Top = 280
  end
  inherited pmPrint: TPopupMenu
    Left = 496
    Top = 280
  end
  object qryShipDailyLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryShipDailyLogBeforeInsert
    BeforePost = qryShipDailyLogBeforePost
    OnNewRecord = qryShipDailyLogNewRecord
    Parameters = <
      item
        Name = 'Start'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'End'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from ShipDailyLog'
      'where ShipLogDate between :Start and :End')
    Left = 464
    Top = 280
  end
  object qryPrevShip: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Ship')
    Left = 464
    Top = 248
  end
  object dsPrevShip: TDataSource
    DataSet = qryPrevShip
    Left = 496
    Top = 248
  end
  object qryIsiLogDate: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'shiplogdate'
        Size = -1
        Value = Null
      end
      item
        Name = 'employeeid'
        Size = -1
        Value = Null
      end
      item
        Name = 'shiplogdate'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into shipdailylog (shipid,shiplogdate,employeeid,counterp' +
        'rint,statusapprove)'
      '('
      'select shipid,:shiplogdate,:employeeid,0,1 '
      'from ship'
      'where not shipid in '
      
        '(select shipid from shipdailylog where dbo.fngetdate(ShipLogDate' +
        ')=dbo.fngetdate(:shiplogdate))'
      ')')
    Left = 464
    Top = 208
  end
end
