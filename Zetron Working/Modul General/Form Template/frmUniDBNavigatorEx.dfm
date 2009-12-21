inherited FormUniDBNavigatorEx: TFormUniDBNavigatorEx
  Caption = 'FormUniDBNavigatorEx'
  DesignSize = (
    592
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object dxDockSite1: TdxDockSite [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    Align = alClient
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 317
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 564
      Height = 317
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 564
        Height = 317
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object pnlInfo: TdxDockPanel
        Left = 0
        Top = 0
        Width = 564
        Height = 317
        AllowFloating = True
        AutoHide = False
        Caption = 'Info'
        CaptionButtons = []
        Dockable = False
        ShowCaption = False
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
      end
    end
    object pnlExplorer: TdxDockPanel
      Left = -300
      Top = 0
      Width = 300
      Height = 140
      Visible = False
      AllowFloating = True
      AutoHide = True
      Caption = 'Explorer'
      CaptionButtons = [cbHide]
      Dockable = False
      ImageIndex = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  object dxDockingManager1: TdxDockingManager
    AutoShowInterval = 0
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabsScrollInterval = 0
    ViewStyle = vsStandard
    Left = 264
    Top = 80
  end
end
