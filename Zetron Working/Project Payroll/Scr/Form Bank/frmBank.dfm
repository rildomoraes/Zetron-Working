inherited fmBank: TfmBank
  Caption = 'Form Master Bank'
  ClientHeight = 272
  ClientWidth = 523
  ExplicitWidth = 531
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 523
    ExplicitWidth = 523
  end
  inherited dxDockSite1: TdxDockSite
    Width = 523
    Height = 222
    ExplicitWidth = 523
    ExplicitHeight = 222
    DockType = 0
    OriginalWidth = 523
    OriginalHeight = 222
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 495
      Height = 222
      ExplicitWidth = 495
      ExplicitHeight = 222
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 495
        Height = 222
        ExplicitWidth = 495
        ExplicitHeight = 222
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 495
        Height = 222
        ExplicitWidth = 495
        ExplicitHeight = 222
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblSuppliesCategory: TLabel
          Left = 9
          Top = 6
          Width = 53
          Height = 13
          Caption = 'Kode Bank'
          Transparent = True
        end
        object lblIdSupplies: TLabel
          Left = 9
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Nama Bank'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 42
          Width = 32
          Height = 13
          Caption = 'Alamat'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 60
          Width = 21
          Height = 13
          Caption = 'Telp'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 78
          Width = 67
          Height = 13
          Caption = 'Kode Transfer'
          Transparent = True
        end
        object Label9: TLabel
          Left = 127
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
        object dbeKodeBank: TcxDBTextEdit
          Left = 87
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'kodebank'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 34
        end
        object dbeNamaBank: TcxDBTextEdit
          Left = 87
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'namabank'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 114
        end
        object dbeAlamatBank: TcxDBTextEdit
          Left = 87
          Top = 39
          BeepOnEnter = False
          DataBinding.DataField = 'alamatbank'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 371
        end
        object dbeTelp: TcxDBTextEdit
          Left = 87
          Top = 57
          BeepOnEnter = False
          DataBinding.DataField = 'telp'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 114
        end
        object dbeKodeTransfer: TcxDBTextEdit
          Left = 87
          Top = 75
          BeepOnEnter = False
          DataBinding.DataField = 'kodetransfer'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 250
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
          object cgvExplorerkodebank: TcxGridDBColumn
            Caption = 'Kode Bank'
            DataBinding.FieldName = 'kodebank'
          end
          object cgvExplorernamabank: TcxGridDBColumn
            Caption = 'Nama Bank'
            DataBinding.FieldName = 'namabank'
          end
          object cgvExploreralamatbank: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'alamatbank'
          end
          object cgvExplorertelp: TcxGridDBColumn
            Caption = 'Telp'
            DataBinding.FieldName = 'telp'
          end
          object cgvExplorerkodetransfer: TcxGridDBColumn
            Caption = 'Kode Transfer'
            DataBinding.FieldName = 'kodetransfer'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 376
    Top = 192
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
    Left = 408
    Top = 192
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 440
    Top = 192
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryBank
    Left = 376
    Top = 224
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 472
    Top = 192
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 408
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
