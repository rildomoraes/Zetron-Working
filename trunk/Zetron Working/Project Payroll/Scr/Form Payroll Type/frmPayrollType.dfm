inherited fmKomponenPayroll: TfmKomponenPayroll
  Caption = 'Tipe Payroll'
  ClientHeight = 333
  ClientWidth = 579
  ExplicitWidth = 587
  ExplicitHeight = 367
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 579
    ExplicitWidth = 579
  end
  inherited dxDockSite1: TdxDockSite
    Width = 579
    Height = 283
    ExplicitWidth = 579
    ExplicitHeight = 283
    DockType = 0
    OriginalWidth = 579
    OriginalHeight = 283
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 551
      Height = 283
      ExplicitWidth = 551
      ExplicitHeight = 283
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 551
        Height = 283
        ExplicitWidth = 551
        ExplicitHeight = 283
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 551
        Height = 283
        ExplicitLeft = -3
        ExplicitTop = -3
        ExplicitWidth = 551
        ExplicitHeight = 283
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblSuppliesCategory: TLabel
          Left = 9
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblIdSupplies: TLabel
          Left = 9
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label9: TLabel
          Left = 106
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
          Left = 296
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
        object dbePayrollTypeName: TcxDBTextEdit
          Left = 49
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'payrolltypename'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 241
        end
        object dbePayrollType: TcxDBTextEdit
          Left = 49
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'payrolltype'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 51
        end
        object btnGetId: TcxButton
          Left = 115
          Top = 4
          Width = 19
          Height = 19
          Hint = 'Auto Generate Id'
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
            6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
            934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
            BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
            B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
            FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
            4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000}
          TabOrder = 2
          TabStop = False
          OnClick = btnGetIdClick
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
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvExplorerpayrolltype: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'payrolltype'
            Width = 100
          end
          object cgvExplorerpayrolltypename: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'payrolltypename'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 360
    Top = 216
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
    Left = 392
    Top = 216
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 424
    Top = 216
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryPayrollType
    Left = 360
    Top = 248
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 456
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 392
    Top = 248
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
