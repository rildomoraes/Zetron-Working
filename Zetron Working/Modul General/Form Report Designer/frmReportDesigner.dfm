inherited fmReportDesigner: TfmReportDesigner
  Caption = 'Report Designer'
  ClientWidth = 692
  ExplicitWidth = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
    object btnDesignReport: TcxButton
      Left = 569
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actDesign
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
    object btnClear: TcxButton
      Left = 617
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actClear
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 12
    end
  end
  inherited dxDockSite1: TdxDockSite
    Width = 692
    ExplicitWidth = 692
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 316
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 664
      ExplicitWidth = 664
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 664
        ExplicitWidth = 664
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 664
        ExplicitWidth = 664
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblIdReport: TLabel
          Left = 6
          Top = 9
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblReportName: TLabel
          Left = 6
          Top = 27
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label1: TLabel
          Left = 6
          Top = 81
          Width = 43
          Height = 13
          Caption = 'Order No'
          Transparent = True
        end
        object lblInfo: TLabel
          Left = 66
          Top = 44
          Width = 278
          Height = 13
          Caption = '* To create separator, assigned report name with '#39'-'#39' (minus).'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblPrintTo: TLabel
          Left = 6
          Top = 99
          Width = 37
          Height = 13
          Caption = 'Print To'
          Transparent = True
        end
        object lblValue1: TLabel
          Left = 6
          Top = 157
          Width = 36
          Height = 13
          Caption = 'Value 1'
          Transparent = True
        end
        object lblValue2: TLabel
          Left = 6
          Top = 175
          Width = 36
          Height = 13
          Caption = 'Value 2'
          Transparent = True
        end
        object lblValue3: TLabel
          Left = 6
          Top = 193
          Width = 36
          Height = 13
          Caption = 'Value 3'
          Transparent = True
        end
        object lblValue4: TLabel
          Left = 6
          Top = 211
          Width = 36
          Height = 13
          Caption = 'Value 4'
          Transparent = True
        end
        object lblValue5: TLabel
          Left = 6
          Top = 229
          Width = 36
          Height = 13
          Caption = 'Value 5'
          Transparent = True
        end
        object lblValue6: TLabel
          Left = 6
          Top = 247
          Width = 36
          Height = 13
          Caption = 'Value 6'
          Transparent = True
        end
        object dbeReportId: TcxDBMaskEdit
          Left = 66
          Top = 7
          DataBinding.DataField = 'ReportId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '[a-zA-Z0-9_-]+'
          Properties.MaxLength = 0
          TabOrder = 0
          Width = 121
        end
        object dbeReportName: TcxDBTextEdit
          Left = 66
          Top = 25
          DataBinding.DataField = 'ReportName'
          DataBinding.DataSource = dsDefault
          Properties.ReadOnly = False
          Style.Color = clWhite
          TabOrder = 1
          Width = 305
        end
        object dbeOrderNo: TcxDBSpinEdit
          Left = 66
          Top = 79
          DataBinding.DataField = 'OrderNo'
          DataBinding.DataSource = dsDefault
          Properties.SpinButtons.Position = sbpHorzLeftRight
          TabOrder = 3
          Width = 50
        end
        object dblcPrintTo: TcxDBComboBox
          Left = 66
          Top = 97
          DataBinding.DataField = 'Printer'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 305
        end
        object dbchFlagShowDialog: TcxDBCheckBox
          Left = 66
          Top = 118
          Caption = 'Show Printer Dialog'
          DataBinding.DataField = 'FlagShowDialog'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 5
          Transparent = True
          Width = 132
        end
        object dbchFlagShowProgress: TcxDBCheckBox
          Left = 242
          Top = 8
          Caption = 'Show Progress'
          DataBinding.DataField = 'FlagShowProgress'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 6
          Transparent = True
          Width = 95
        end
        object dbchFlagDotMatrix: TcxDBCheckBox
          Left = 66
          Top = 137
          Caption = 'Dot Matrix'
          DataBinding.DataField = 'FlagDotMatrix'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 7
          Transparent = True
          Width = 132
        end
        object dbchFlagHide: TcxDBCheckBox
          Left = 193
          Top = 8
          Caption = 'Hide'
          DataBinding.DataField = 'FlagHide'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 8
          Transparent = True
          Width = 48
        end
        object dbeName1: TcxDBTextEdit
          Left = 66
          Top = 155
          DataBinding.DataField = 'Name1'
          DataBinding.DataSource = dsDefault
          TabOrder = 9
          Width = 241
        end
        object dbeName2: TcxDBTextEdit
          Left = 66
          Top = 173
          DataBinding.DataField = 'Name2'
          DataBinding.DataSource = dsDefault
          TabOrder = 10
          Width = 241
        end
        object dbeName3: TcxDBTextEdit
          Left = 66
          Top = 191
          DataBinding.DataField = 'Name3'
          DataBinding.DataSource = dsDefault
          TabOrder = 11
          Width = 241
        end
        object dbeName4: TcxDBTextEdit
          Left = 66
          Top = 209
          DataBinding.DataField = 'Name4'
          DataBinding.DataSource = dsDefault
          TabOrder = 12
          Width = 241
        end
        object dbeName5: TcxDBTextEdit
          Left = 66
          Top = 227
          DataBinding.DataField = 'Name5'
          DataBinding.DataSource = dsDefault
          TabOrder = 13
          Width = 241
        end
        object dbeName6: TcxDBTextEdit
          Left = 66
          Top = 245
          DataBinding.DataField = 'Name6'
          DataBinding.DataSource = dsDefault
          TabOrder = 14
          Width = 241
        end
        object dbchFlagDoCounter: TcxDBCheckBox
          Left = 66
          Top = 60
          Caption = 'Counter Print'
          DataBinding.DataField = 'flagdocounter'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 2
          Transparent = True
          Width = 132
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 109
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPrevDisplayStylesGetContentStyle
          object cgvPrevDisplayOrderNo: TcxGridDBColumn
            Caption = 'Order'
            DataBinding.FieldName = 'OrderNo'
          end
          object cgvPrevDisplayReportId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ReportId'
          end
          object cgvPrevDisplayReportName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'ReportName'
          end
          object cgvPrevDisplayName1: TcxGridDBColumn
            DataBinding.FieldName = 'Name1'
            Visible = False
          end
          object cgvPrevDisplayName2: TcxGridDBColumn
            DataBinding.FieldName = 'Name2'
            Visible = False
          end
          object cgvPrevDisplayName3: TcxGridDBColumn
            DataBinding.FieldName = 'Name3'
            Visible = False
          end
          object cgvPrevDisplayName4: TcxGridDBColumn
            DataBinding.FieldName = 'Name4'
            Visible = False
          end
          object cgvPrevDisplayName5: TcxGridDBColumn
            DataBinding.FieldName = 'Name5'
            Visible = False
          end
          object cgvPrevDisplayName6: TcxGridDBColumn
            DataBinding.FieldName = 'Name6'
            Visible = False
          end
          object cgvPrevDisplayFlagHide: TcxGridDBColumn
            Caption = 'Hide'
            DataBinding.FieldName = 'FlagHide'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            Width = 91
          end
          object cgvPrevDisplayFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'FlagFix'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 109
        Width = 300
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Image1: TImage
          Left = 8
          Top = 6
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
            F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
            00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
            FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
            F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
            FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
            F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
            FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
            F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
            FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
            F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
            FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
            F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
            FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
            F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
            FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
            F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
            FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
            F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
            FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
            F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
            FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
            F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
            FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
            F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
            FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
            F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
            FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000}
          Transparent = True
        end
        object lblFixed: TLabel
          Left = 32
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Fixed'
          Transparent = True
        end
      end
    end
  end
  inherited ActionList1: TActionList
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
    object actDesign: TAction
      Caption = 'Design'
      ImageIndex = 15
      OnExecute = actDesignExecute
    end
    object actClear: TAction
      Caption = 'Clear'
      ImageIndex = 16
      OnExecute = actClearExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmGlobal.qryReport
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object frReportDesigner: TfrxReport
    Version = '4.8.11'
    DataSet = DisplayDataset
    DataSetName = 'DisplayDataset'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38260.609818611110000000
    ReportOptions.LastChange = 38260.609818611110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 296
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 336
    Top = 296
  end
  object DisplayDataset: TfrxDBDataset
    UserName = 'DisplayDataset'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 368
    Top = 296
  end
  object frxADOComponents1: TfrxADOComponents
    Left = 400
    Top = 296
  end
  object frxChartObject1: TfrxChartObject
    Left = 304
    Top = 328
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 336
    Top = 328
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 368
    Top = 328
  end
  object frxRichObject1: TfrxRichObject
    Left = 400
    Top = 328
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 432
    Top = 328
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 464
    Top = 328
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 496
    Top = 328
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 528
    Top = 328
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 560
    Top = 328
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 592
    Top = 328
  end
  object frxCrypt1: TfrxCrypt
    Left = 624
    Top = 328
  end
  object frxUniDACComponents1: TfrxUniDACComponents
    Left = 432
    Top = 296
  end
end
