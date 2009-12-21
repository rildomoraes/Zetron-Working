inherited fmDailyKurs: TfmDailyKurs
  Caption = 'Kurs Harian'
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Top = 75
    Height = 291
    ExplicitTop = 75
    ExplicitHeight = 291
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 291
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 291
      ExplicitHeight = 291
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblMataUang: TLabel
          Left = 8
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Mata Uang'
          Transparent = True
        end
        object lblKurs: TLabel
          Left = 8
          Top = 42
          Width = 21
          Height = 13
          Caption = 'Kurs'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 6
          Width = 39
          Height = 13
          Caption = 'Tgl Kurs'
          Transparent = True
        end
        object lblEmployeeId: TLabel
          Left = 8
          Top = 60
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object Label9: TLabel
          Left = 203
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
        object Label1: TLabel
          Left = 148
          Top = 22
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
        object dblcMataUang: TcxDBExtLookupComboBox
          Left = 75
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'CurrencyId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevCurrencyMaster
          Properties.KeyFieldNames = 'currencyid'
          Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyid
          Style.ButtonTransparency = ebtAlways
          TabOrder = 1
          Width = 67
        end
        object dbeKurs: TcxDBCurrencyEdit
          Left = 75
          Top = 39
          BeepOnEnter = False
          DataBinding.DataField = 'KursValue'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 121
        end
        object dbeKursDate: TcxDBDateEdit
          Left = 75
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'KursDate'
          DataBinding.DataSource = dsDefault
          Style.ButtonTransparency = ebtAlways
          TabOrder = 0
          Width = 121
        end
        object dblcEmployeeId: TcxDBExtLookupComboBox
          Left = 75
          Top = 57
          BeepOnEnter = False
          DataBinding.DataField = 'EmployeeId'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevEmployee
          Properties.KeyFieldNames = 'EmployeeId'
          Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 3
          Width = 120
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 291
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 269
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayCurrencyId: TcxGridDBColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'CurrencyId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCurrencyMaster
            Properties.KeyFieldNames = 'currencyid'
            Properties.ListFieldItem = dmGlobal.cgvPrevCurrencyMastercurrencyname
            Visible = False
            GroupIndex = 0
            Width = 82
          end
          object cgvPrevDisplayKursDate: TcxGridDBColumn
            Caption = 'Tgl Kurs '
            DataBinding.FieldName = 'KursDate'
            Width = 77
          end
          object cgvPrevDisplayKursValue: TcxGridDBColumn
            Caption = 'Kurs'
            DataBinding.FieldName = 'KursValue'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevDisplayEmployeeId: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 2
    object lblPeriod: TLabel
      Left = 7
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 2
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 124
      Top = 2
      BeepOnEnter = False
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [3]
    Left = 400
    Top = 144
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [4]
    Left = 432
    Top = 144
  end
  inherited dsDefault: TDataSource [5]
    DataSet = qryDailyKurs
    Left = 368
    Top = 176
  end
  inherited dxDockingManager1: TdxDockingManager [6]
    Left = 464
    Top = 144
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [7]
    Left = 400
    Top = 176
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [8]
    Left = 368
    Top = 144
  end
  object qryDailyKurs: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryDailyKursBeforePost
    OnNewRecord = qryDailyKursNewRecord
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
      'from DailyKurs'
      'where KursDate between :StartDate and :EndDate'
      'order by KursDate')
    Left = 336
    Top = 176
  end
end
