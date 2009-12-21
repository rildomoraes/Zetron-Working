inherited fmImportReport: TfmImportReport
  Caption = 'Import Report'
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
    object btnImport: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actImport
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
    Width = 296
    Height = 317
    Align = alLeft
    DragDropSettings.AllowDragObjects = False
    Indent = 19
    Options.ShowNonFolders = False
    Options.ContextMenus = False
    Options.ShowToolTip = False
    RightClickSelect = True
    TabOrder = 1
    OnChange = stvDirectoryChange
  end
  object cgReport: TcxGrid [2]
    Left = 296
    Top = 50
    Width = 296
    Height = 317
    Align = alClient
    TabOrder = 2
    object cgvReport: TcxGridTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = cgvReportCheck
        end
        item
          Format = '0 Files'
          Kind = skCount
          Column = cgvReportName
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvReportCheck: TcxGridColumn
        Caption = ' '
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Filtering = False
        Width = 30
      end
      object cgvReportName: TcxGridColumn
        Caption = 'Name'
        Options.Editing = False
        Options.Filtering = False
        Width = 300
      end
    end
    object cgReportLevel1: TcxGridLevel
      GridView = cgvReport
    end
  end
  object flbFile: TFileListBox [3]
    Left = 169
    Top = 143
    Width = 112
    Height = 90
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
  inherited ActionList1: TActionList
    object actImport: TAction
      Caption = '&Import'
      ImageIndex = 13
      OnExecute = actImportExecute
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
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 112
    object SelectAll1: TMenuItem
      Caption = 'Select All'
      OnClick = SelectAll1Click
    end
    object DeselectAll1: TMenuItem
      Caption = 'Deselect All'
      OnClick = DeselectAll1Click
    end
  end
end
