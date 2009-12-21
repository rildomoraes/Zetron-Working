inherited fmCountry: TfmCountry
  Caption = 'Negara'
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
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblCountryExt: TLabel
          Left = 9
          Top = 42
          Width = 69
          Height = 13
          Caption = 'Ext Telephone'
          Transparent = True
        end
        object Label1: TLabel
          Left = 175
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
        object Label9: TLabel
          Left = 279
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
        object dbeCountryId: TcxDBTextEdit
          Left = 88
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'CountryId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeCountryName: TcxDBTextEdit
          Left = 88
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'CountryName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 185
        end
        object dbeCountryExt: TcxDBTextEdit
          Left = 88
          Top = 39
          BeepOnEnter = False
          DataBinding.DataField = 'CountryExt'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 81
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgCountrySetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayCountryId: TcxGridDBColumn
            Caption = 'Kode Negara'
            DataBinding.FieldName = 'CountryId'
            Width = 101
          end
          object cgvPrevDisplayCountryName: TcxGridDBColumn
            Caption = 'Nama Negara'
            DataBinding.FieldName = 'CountryName'
            Width = 109
          end
          object cgvPrevDisplayCountryExt: TcxGridDBColumn
            Caption = 'Ext Negara'
            DataBinding.FieldName = 'CountryExt'
            Visible = False
            Width = 114
          end
        end
        object cgCountrySetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 416
    Top = 224
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 448
    Top = 224
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryCountry
    Left = 384
    Top = 256
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 480
    Top = 224
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 416
    Top = 256
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 384
    Top = 224
  end
end
