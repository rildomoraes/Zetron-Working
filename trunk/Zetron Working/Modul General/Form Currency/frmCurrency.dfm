inherited fmCurrency: TfmCurrency
  Caption = 'Mata Uang'
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
        object lblIdOutlet: TLabel
          Left = 9
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblOutletName: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label9: TLabel
          Left = 137
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
          Left = 257
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
        object dbeCurrencyId: TcxDBTextEdit
          Left = 50
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'currencyid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeCurrencyName: TcxDBTextEdit
          Left = 50
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'currencyname'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 201
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDisplaycurrencyid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'currencyid'
          end
          object cgvPrevDisplaycurrencyname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'currencyname'
          end
          object cgvPrevDisplayflagfix: TcxGridDBColumn
            DataBinding.FieldName = 'flagfix'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 440
    Top = 216
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 472
    Top = 216
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryCurrencyMaster
    Left = 408
    Top = 248
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 504
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 440
    Top = 248
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 408
    Top = 216
  end
end
