object fmClaim: TfmClaim
  Left = 339
  Top = 181
  Caption = 'Claim'
  ClientHeight = 366
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    636
    366)
  PixelsPerInch = 96
  TextHeight = 13
  inline feSetupButton1: TfeSetupButton
    Left = 0
    Top = 0
    Width = 636
    Height = 65
    Align = alTop
    Constraints.MinWidth = 636
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 636
    ExplicitHeight = 65
    inherited shpToolbarBackground: TShape
      Width = 636
      Height = 65
      ExplicitWidth = 636
      ExplicitHeight = 65
    end
    inherited ActionList1: TActionList
      OnExecute = feSetupButton1ActionList1Execute
      inherited DataSetInsert1: TDataSetInsert
        Enabled = False
      end
      inherited DataSetEdit1: TDataSetEdit
        Enabled = False
      end
      inherited DataSetDelete1: TDataSetDelete
        Enabled = False
      end
      inherited DataSetPost1: TDataSetPost
        Enabled = False
      end
      inherited DataSetCancel1: TDataSetCancel
        Enabled = False
      end
      inherited DataSetRefresh1: TAction
        OnExecute = feSetupButton1DataSetRefresh1Execute
      end
      inherited DataSetPrior1: TDataSetPrior
        Enabled = False
      end
      inherited DataSetNext1: TDataSetNext
        Enabled = False
      end
    end
  end
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 65
    Width = 636
    Height = 301
    Align = alClient
    DockType = 0
    OriginalWidth = 636
    OriginalHeight = 301
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 608
      Height = 301
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 608
        Height = 301
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dpInfo: TdxDockPanel
        Left = 0
        Top = 0
        Width = 608
        Height = 301
        AllowFloating = True
        AutoHide = False
        Caption = 'Info'
        CaptionButtons = []
        Dockable = False
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblCountryId: TLabel
          Left = 8
          Top = 6
          Width = 78
          Height = 13
          Caption = 'Kode Pendidikan'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 8
          Top = 30
          Width = 38
          Height = 13
          Caption = 'Jurusan'
          Transparent = True
        end
        object dbeKodePendidikan: TcxDBTextEdit
          Left = 95
          Top = 4
          DataBinding.DataField = 'kodependidikan'
          DataBinding.DataSource = dmgeneral.dsPendidikan
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeJurusan: TcxDBTextEdit
          Left = 95
          Top = 28
          DataBinding.DataField = 'jurusan'
          DataBinding.DataSource = dmgeneral.dsPendidikan
          TabOrder = 1
          Width = 185
        end
      end
    end
    object dpExplorer: TdxDockPanel
      Left = -300
      Top = 0
      Width = 300
      Height = 0
      Visible = False
      AllowFloating = True
      AutoHide = True
      Caption = 'Explorer'
      Dockable = False
      ImageIndex = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 70
      object cgClaim: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvClaim: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmgeneral.dsClaim
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvClaimkodejabatan: TcxGridDBColumn
            Caption = 'Kode Jabatan'
            DataBinding.FieldName = 'kodejabatan'
            Width = 84
          end
          object cgvClaimmedical: TcxGridDBColumn
            Caption = 'Obat'
            DataBinding.FieldName = 'medical'
          end
          object cgvClaimhospital: TcxGridDBColumn
            Caption = 'Rumah Sakit'
            DataBinding.FieldName = 'hospital'
          end
          object cgvClaimmaternity: TcxGridDBColumn
            Caption = 'Maternity'
            DataBinding.FieldName = 'maternity'
          end
          object cgvClaimglasses: TcxGridDBColumn
            Caption = 'Glasses'
            DataBinding.FieldName = 'glasses'
          end
        end
        object cgClaimLevel1: TcxGridLevel
          GridView = cgvClaim
        end
      end
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Claim.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 464
    Top = 72
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Claim.cfg'
    Sorting = True
    Version = '1.3'
    Left = 496
    Top = 72
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer]
    ViewStyle = vsStandard
    Left = 528
    Top = 72
  end
end
