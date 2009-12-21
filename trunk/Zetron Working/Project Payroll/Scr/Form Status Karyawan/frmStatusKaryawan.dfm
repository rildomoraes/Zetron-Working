inherited fmStatusKaryawan: TfmStatusKaryawan
  Caption = 'Status Karyawan'
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
        object lblCountryId: TLabel
          Left = 9
          Top = 6
          Width = 58
          Height = 13
          Caption = 'Kode Status'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 9
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 43
          Width = 32
          Height = 13
          Caption = 'Warna'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 60
          Width = 62
          Height = 13
          Caption = 'Uang Makan'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 78
          Width = 74
          Height = 13
          Caption = 'Uang Transport'
          Transparent = True
        end
        object Label9: TLabel
          Left = 193
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
        object Label4: TLabel
          Left = 297
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
        object dbeKodeStatus: TcxDBTextEdit
          Left = 106
          Top = 3
          DataBinding.DataField = 'kodestatus'
          DataBinding.DataSource = dmGeneral.dsStatusKaryawan
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeNama: TcxDBTextEdit
          Left = 106
          Top = 21
          DataBinding.DataField = 'namastatus'
          DataBinding.DataSource = dmGeneral.dsStatusKaryawan
          TabOrder = 1
          Width = 185
        end
        object cxDBColorComboBox1: TcxDBColorComboBox
          Left = 106
          Top = 39
          DataBinding.DataField = 'warna'
          DataBinding.DataSource = dmGeneral.dsStatusKaryawan
          Properties.AllowSelectColor = True
          Properties.ColorValueFormat = cxcvInteger
          Properties.CustomColors = <>
          Properties.DefaultColorStyle = cxdcCustom
          Properties.ShowDescriptions = False
          TabOrder = 2
          Width = 121
        end
        object dbeUangMakan: TcxDBCalcEdit
          Left = 106
          Top = 57
          DataBinding.DataField = 'uangmakan'
          DataBinding.DataSource = dmGeneral.dsStatusKaryawan
          TabOrder = 3
          Width = 121
        end
        object dbeUangTransport: TcxDBCalcEdit
          Left = 106
          Top = 75
          DataBinding.DataField = 'uangtransport'
          DataBinding.DataSource = dmGeneral.dsStatusKaryawan
          TabOrder = 4
          Width = 121
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
      object cgStatusKaryawan: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvStatusKaryawan: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsStatusKaryawan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvStatusKaryawankodestatus: TcxGridDBColumn
            Caption = 'Kode Status'
            DataBinding.FieldName = 'kodestatus'
          end
          object cgvStatusKaryawannamastatus: TcxGridDBColumn
            Caption = 'Nama Status'
            DataBinding.FieldName = 'namastatus'
          end
          object cgvStatusKaryawanwarna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'warna'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
          end
          object cgvStatusKaryawanuangmakan: TcxGridDBColumn
            Caption = 'Uang Makan'
            DataBinding.FieldName = 'uangmakan'
          end
          object cgvStatusKaryawanuangtransport: TcxGridDBColumn
            Caption = 'Uang Transport'
            DataBinding.FieldName = 'uangtransport'
          end
        end
        object cgStatusKaryawanLevel1: TcxGridLevel
          GridView = cgvStatusKaryawan
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 336
    Top = 120
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
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 368
    Top = 120
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 400
    Top = 120
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryStatusKaryawan
    Left = 336
    Top = 152
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 432
    Top = 120
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 368
    Top = 152
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
