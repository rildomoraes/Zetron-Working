inherited fmExportReport: TfmExportReport
  Caption = 'Export Report'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer12: TBevel [1]
      Left = 155
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 177
      ExplicitTop = 2
    end
    object btnExport: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actExport
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object pnlProgressBar: TPanel
      Left = 165
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 3
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object stvDirectory: TcxShellTreeView [1]
    Left = 0
    Top = 50
    Width = 212
    Height = 317
    Align = alLeft
    DragDropSettings.AllowDragObjects = False
    Indent = 19
    Options.ShowNonFolders = False
    Options.ContextMenus = False
    Options.ShowToolTip = False
    RightClickSelect = True
    ShellListView = slvFiles
    TabOrder = 1
  end
  object slvFiles: TcxShellListView [2]
    Left = 212
    Top = 50
    Width = 380
    Height = 317
    Align = alClient
    Options.ShowToolTip = False
    TabOrder = 2
    ViewStyle = vsReport
  end
  inherited ActionList1: TActionList
    object actExport: TAction
      Caption = '&Export'
      ImageIndex = 13
      OnExecute = actExportExecute
    end
  end
  object frReport: TfrxReport
    Version = '4.8.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38561.701035879640000000
    ReportOptions.LastChange = 38561.701035879640000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 112
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
