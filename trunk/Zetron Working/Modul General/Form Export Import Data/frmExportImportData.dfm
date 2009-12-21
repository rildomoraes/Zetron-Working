inherited fmExportImportData: TfmExportImportData
  Caption = 'Export Import Data'
  ClientHeight = 517
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 692
    Height = 467
    ActivePage = tsDesign
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    ClientRectBottom = 438
    ClientRectLeft = 3
    ClientRectRight = 686
    ClientRectTop = 3
    object tsDesign: TcxTabSheet
      Caption = 'Design'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlDesign: TPanel
        Left = 0
        Top = 0
        Width = 683
        Height = 435
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 0
          Top = 313
          Width = 683
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          AutoSnap = False
          ExplicitLeft = 1
          ExplicitTop = 327
          ExplicitWidth = 692
        end
        object acQueryBuilder1: TacQueryBuilder
          Left = 0
          Top = 0
          Width = 683
          Height = 313
          SyntaxProvider = acUniversalSyntaxProvider1
          MetadataProvider = acADOMetadataProvider1
          MetadataFilter = <>
          LinkPainterClassName = 'TacQueryBuilderLinkPainterAccess'
          TableFont.Charset = DEFAULT_CHARSET
          TableFont.Color = clWindowText
          TableFont.Height = -11
          TableFont.Name = 'Tahoma'
          TableFont.Style = []
          BkImagePos = bkipTopLeft
          BkImageDarkness = bgidWhite
          TreeFont.Charset = DEFAULT_CHARSET
          TreeFont.Color = clWindowText
          TreeFont.Height = -11
          TreeFont.Name = 'Tahoma'
          TreeFont.Style = []
          GridFont.Charset = DEFAULT_CHARSET
          GridFont.Color = clWindowText
          GridFont.Height = -11
          GridFont.Name = 'Tahoma'
          GridFont.Style = []
          AddObjectFormOptions.Constraints.MinHeight = 430
          AddObjectFormOptions.Constraints.MinWidth = 430
          TreeOptions.TreeVisible = False
          TreeOptions.UnionsNodeText = 'UNIONS'
          TreeOptions.FieldsNodeText = 'FIELDS'
          TreeOptions.FromNodeText = 'FROM'
          TreeOptionsMetadata.TablesNodeName = 'Tables'
          TreeOptionsMetadata.ViewsNodeName = 'Views'
          TreeOptionsMetadata.ProceduresNodeName = 'Procedures'
          TreeOptionsMetadata.SynonymsNodeName = 'Synonyms'
          UseAltNames = False
          FieldsListOptions.MarkColumnOptions.PKIcon.Data = {
            07544269746D617076010000424D760100000000000036000000280000000A00
            00000A0000000100180000000000400100000000000000000000000000000000
            0000FF808055A7D8519AD1FF8080FF8080FF8080FF8080FF8080FF8080FF8080
            00006EBFE886E9F94DD9F54397CEFF8080FF8080FF8080FF8080FF8080FF8080
            00006ABAE6A1E6F838D2F247D6F64298CEFF8080FF8080FF8080FF8080FF8080
            0000FF80805FB0E399E2F653DCF546D9F63F94CE478ED3488FD6FF8080FF8080
            0000FF8080FF80806CBBE766C1E85ED9F24EDBF65BDDF755D8F53483CEFF8080
            0000FF8080FF8080FF808094C9EB89DDF46AE0F673E2F75FDFF655DAF64185CF
            0000FF8080FF8080FF808078BEE7A9EEF97EE6F89AE8F87ED1F080E2F64A9EDB
            0000FF8080FF8080FF8080ABD5EF5EC1EAA3F0FB80D4F07EC7EC56A6DEFF8080
            0000FF8080FF8080FF8080FF8080A1CEED6FC9ECC9F3FB62BEE8FF8080FF8080
            0000FF8080FF8080FF8080FF8080FF808090C8EB6BBCE7FF8080FF8080FF8080
            0000}
          FieldsListOptions.TypeColumnOptions.FontColor = clGrayText
          FieldsListOptions.DescriptionColumnOptions.FontColor = clGrayText
          Align = alClient
          TabOrder = 0
        end
        object memSQLEditor: TMemo
          Left = 0
          Top = 316
          Width = 683
          Height = 119
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          WantTabs = True
          WordWrap = False
          OnChange = memSQLEditorChange
        end
      end
    end
    object tsResult: TcxTabSheet
      Caption = 'Result'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlResultBottom: TPanel
        Left = 0
        Top = 392
        Width = 683
        Height = 43
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btnImportData: TcxButton
          Left = 308
          Top = 2
          Width = 149
          Height = 39
          Caption = 'Import Data'
          TabOrder = 0
          OnClick = btnImportDataClick
        end
        object btnExportData: TcxButton
          Left = 156
          Top = 2
          Width = 149
          Height = 39
          Caption = 'Export Data'
          TabOrder = 1
          OnClick = btnExportDataClick
        end
        object btnRefreshOutput: TcxButton
          Left = 4
          Top = 2
          Width = 149
          Height = 39
          Caption = 'Open/ Refresh'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000060000
            000A0000000D0000000F0000000F0000000D0000000800000003000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000030000000A00000013000000230000
            002D0000003400000037000000380000003400000027000000190000000C0000
            0005000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000003000000070000000800000008000000080000
            0008000000090000000C000000170000002200000035000000470000005B0001
            0067000F0078011B02840429078C0023028A00060065000000500000003A0000
            0029000000160000000A00000001000000000000000000000000000000000000
            0000000000000000000400000016000000230000002800000029000000290000
            00290000002B00000031000000400000004A00000058000000680004007A002E
            02A4005C00D314841FE517AB29F305940FF1002A019E0000006B000000550000
            0041000000290000001500000003000000000000000000000000000000000000
            000000000000000000080000002B0000004A0000005E00000062000000630000
            006400000065000000680000006C000000660000006400000070003902B00485
            06F70E9D15FF30CD4CFF09B71BFF09B81BFF067F0CE2001A00740000003A0000
            00290000001B0000000F00000002000000000000000000000000000000000000
            0000000000000000000500000021000000400000005E0000006A000000720000
            00750000007700000078000000760000006E00000069000B007B077708E90693
            09FF2BC044FF1DC335FF08B117FF0BB51CFF0AAB19FA035F069E000000130000
            000A000000060000000300000000000000000000000000000000000000000000
            0000000000000000000000000007000000140000002A000000390000004A0000
            0053000000570000005900000058000000570006005C035206B4109E18FF23B1
            34FF2BCD49FF0BB31CFF0EB61FFF0CB51EFF0EB720FF0AA217F10150013D0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000200000009000000110000001C0000
            002200000027000000290000002900000028003802600F8E18E71DAD2BFF38D0
            57FF11BA25FF0DB51FFF0EB822FF0EB821FF0EB721FF0FBA23FF05820BA6001E
            0011000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            00020000000300000004000000040013000F0F8C18CD20B031FF37CD56FF23C8
            3EFF10B722FF13B927FF13B827FF13B827FF13B827FF13BB28FF11AD21F50378
            0873000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000001100010265056125B238FC32C34CFF37D65AFF14BB
            29FF17BD2BFF17BD2AFF17BD2AFF17BD2AFF17BD2AFF17BC2AFF16BE2BFF0D97
            18E1004400190000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000077B279391C9E2DDC39CF58FF44DD6AFF1AC033FF18BE
            2EFF1AC031FF1AC031FF1AC031FF1AC031FF1AC031FF1AC031FF1AC031FF1AC1
            31FF027A0799B2D4B30B00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000A8014A139CA57FB47DE6DFF32D353FF1AC130FF1BC3
            35FF1BC234FF1BC234FF1BC234FF1BC234FF1BC234FF1BC234FF1BC234FF1CC4
            35FF12A723E9368C374D00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000388939513AC95AFA4EE577FF41DF69FF20C53BFF22C73BFF22C7
            3BFF22C73BFF22C73BFF22C73BFF22C73BFF22C73BFF22C73BFF22C73BFF22C7
            3BFF21C73CFF0D9319D54F954F10000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000AECDAD191A962ABC56EF84FF56EF83FF2ACF49FF23C83EFF24C840FF24C8
            3FFF24C83FFF24C83FFF24C83FFF24C83FFF24C83FFF24C83FFF24C83FFF24C8
            3FFF25CB41FF21C13AFF1C822076C7DEC80A0000000000000000000000000000
            0000AACDAA0C0175096210861B950C82169218942B9217922892179228921691
            2790168E25BB56E783FA61FB94FF47E571FF25C940FF29CB45FF29CC44FF29CC
            45FF2ACD47FF2ACD47FF2ACD47FF2ACD47FF2ACD47FF2ACD47FF29CC46FF29CC
            46FF2BCF49FF2DD64DFF0F971ED3ABD1AD2C0000000000000000000000000000
            0000B1D7B6383CC760E156E486FD36BD55FD57EE8CFD54EA88FD54EB89FD55EB
            89FC36BB56FE5CEE8FFF63FD9AFF5BF88EFF49E975FF47E571FF47E571FF3DDD
            62FF2CCE4AFF2DD14CFF2DD04CFF2DD04CFF2DD14CFF2DCF4BFF33D656FF37D5
            5AFF23BA3CFC18A229DD00720277AACDAA110000000000000000000000000000
            0000B4DBB93D3FCE68EB56EC8BFF33BB56FF48DF81FF49DF80FF49DF80FF49E1
            82FF3CCB6BFF2FB553FF25A340ED189028A2209733B74EDE7EF95CF395FF4DE9
            79FF31D350FF34D656FF34D656FF34D656FF35D556FF36DA5AFF1EA433DD0775
            0E71549A562B4E974F0C00000000000000000000000000000000000000000000
            0000B0D6B53734BF5CE44EE383FF2CB250FF3ACF73FF3CD174FF3AD074FF3AD0
            74FF3CD075FF3DD478FF21A543D880B8832B07750F5E41D16FF551E888FF4BE7
            77FF35D658FF37D85CFF37D85BFF37D85BFF38D85BFF3BDF61FF139422B074B0
            7612000000000000000000000000000000000000000000000000000000000000
            0000AED2B02F29B14DDC47DF80FF29AE4DFF29B95EFF2DC164FF2DBE62FF2DBE
            62FF2DBE62FF2FC267FF21A848E20069033D0B7D16713DCF70FA4AE081FF4AE7
            77FF3CDC61FF3FDF64FF3FDF64FF3FDF63FF3EDE64FF42E469FF0E881899ADCE
            AC0B000000000000000000000000000000000000000000000000000000000000
            0000ADCFAD251EA13DD143DA7EFF28AD4DFF20AE48FF26B854FF26B753FF26B7
            53FF26B753FF26B854FF1EA744EE0470085310831D8B3BCE70FD47DD7EFF4BE8
            78FF41E169FF44E26CFF43E26BFF43E26BFF45E46DFF45E46DFF087C107FABCB
            AA04000000000000000000000000000000000000000000000000000000000000
            0000ABCDAA12118D26B73ED57AFF2CB557FF169E31FF1DAE40FF1CAC3EFF1CAC
            3EFF1CAC3EFF1BAD3EFF1AA83AFA05730B7217922FB737CB71FE47DE7DFF4FEB
            7BFF49E774FF4AE975FF4AE975FF49E974FF4CEB78FF43DE6BFF1D7D20560000
            0000000000000000000000000000000000000000000000000000000000000000
            0000ABCCAA05077B149239CE74FF30BE61FF109624FF16A631FF17A632FF17A6
            32FF17A632FF17A632FF16A330FE05780CB420A040E034C96FFF4BE280FF53EE
            7EFF4FEC7BFF4FEC7CFF4FEC7CFF4FEC7CFF52F080FF39CC5DF5539853320000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000001B7C1E562EBE62FF35C870FF129327FF0D9B1EFF0E9C23FF0E9C
            22FF0E9C22FF0E9C22FF0F9D22FF078612FC2BB95CFE33C76DFF54ED87FF58F4
            87FF57F387FF57F387FF57F387FF57F187FF59F68AFF27A93ECA4E904E080000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000005399512120A847F535CC73FF1B9E3BFF079011FF0B9918FF0B98
            16FF0B9816FF0B9617FF089614FF0E8F1EFF30C369FF35C96FFF5DF890FF5CF8
            8DFF5BF68DFF5BF68DFF5BF68DFF5DF88FFF58EF86FC0F841B92000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000008BB98B010D8721AE2FC368FF2ABA5EFF098B16FF03910AFF0491
            0DFF04910CFF03930DFF048809FF1EA443FF30C46BFF44DA7CFF67FF9BFF64FD
            98FF64FD98FF64FD98FF64FD98FF69FF9FFF42C963E2388A3A3C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000006D016027B356F330C56CFF1DA141FF008100FF008F
            03FF009104FF008901FF0E8C21FF2CBE63FF30C369FF5DED92FF7AFEA8FF77FE
            A6FF77FEA6FF77FEA6FF78FEA7FF7EFFAEFF1B8E28A6ABCCAB0E000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000AECEAD130B8520B139CF74FF37CD73FF1EA23EFF0987
            13FF06850DFF129025FF35C56BFF35C96EFF4EDF83FF8FFCB6FF99FFBCFF99FF
            BCFF99FFBCFF99FFBAFF9DFDC2FF5EC576ED50944E2C00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000368837472FBA59F446DE80FF42D67AFF3AC8
            69FF36C464FF3FD275FF41D87BFF3DD877FF8BFAB1FFB2FFCCFFB0FFCBFFB1FF
            CBFFB0FFCBFFB8FFD2FF91DFA7F6127916810000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000070076C36BF5DE954ED8CFF54ED
            8DFF53ED8DFF52EA8AFF56ED8DFF92F9B8FFD9FFE8FFD5FFE5FFD4FFE4FFD6FF
            E6FFD6FCE6FFA7DDB5F42D862F75CADFCA090000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000ACCDAB0A3A923F5C2FB34DE04BDD
            79F952E984FF56EA87FF9BEFB6FFD0F0D9FFD8F2DEFFDAF4E1FFDAF3E2FFCEEC
            D5FD75B37ADA14761771CADECA09000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000004E954E2359A3
            5D5A61B16B7268B16E737CB17C7378B179727FB5817B8ABC8B8386BA88816BA9
            6C694E944E200000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 2
          OnClick = btnRefreshOutputClick
        end
      end
      object grResult: TDBGrid
        Left = 0
        Top = 0
        Width = 683
        Height = 392
        Align = alClient
        DataSource = dsDisplayResult
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object dsDisplayResult: TDataSource
    Left = 200
    Top = 176
  end
  object acUniversalSyntaxProvider1: TacUniversalSyntaxProvider
    BuiltinFunctionNames.Strings = (
      'Position'
      'Char_Length'
      'Character_Length'
      'Octet_Length'
      'Bit_Length'
      'Extract'
      'SubString'
      'Upper'
      'Lower'
      'Convert'
      'Translate'
      'Trim'
      'Current_Time'
      'Current_Timestamp'
      'NullIf'
      'Coalesce')
    AutoDetectServer = False
    Left = 168
    Top = 112
  end
  object acSQLBuilderPlainText1: TacSQLBuilderPlainText
    OnSQLUpdated = acSQLBuilderPlainText1SQLUpdated
    QueryBuilder = acQueryBuilder1
    ExpressionsSubQueryFormat.MainPartsFromNewLine = False
    ExpressionsSubQueryFormat.FromClauseFormat.NewLineAfterJoin = False
    UseAltNames = False
    Left = 200
    Top = 112
  end
  object QExport4Dialog1: TQExport4Dialog
    RTFOptions.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.CaptionStyle.Font.Color = clBlack
    RTFOptions.CaptionStyle.Font.Height = -13
    RTFOptions.CaptionStyle.Font.Name = 'Arial'
    RTFOptions.CaptionStyle.Font.Style = [fsBold]
    RTFOptions.CaptionStyle.AllowHighlight = True
    RTFOptions.CaptionStyle.Alignment = talCenter
    RTFOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.DataStyle.Font.Color = clBlack
    RTFOptions.DataStyle.Font.Height = -13
    RTFOptions.DataStyle.Font.Name = 'Arial'
    RTFOptions.DataStyle.Font.Style = []
    RTFOptions.DataStyle.AllowHighlight = True
    RTFOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.FooterStyle.Font.Color = clBlack
    RTFOptions.FooterStyle.Font.Height = -13
    RTFOptions.FooterStyle.Font.Name = 'Arial'
    RTFOptions.FooterStyle.Font.Style = []
    RTFOptions.FooterStyle.AllowHighlight = True
    RTFOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.HeaderStyle.Font.Color = clBlack
    RTFOptions.HeaderStyle.Font.Height = -13
    RTFOptions.HeaderStyle.Font.Name = 'Arial'
    RTFOptions.HeaderStyle.Font.Style = []
    RTFOptions.HeaderStyle.AllowHighlight = True
    RTFOptions.StripStyles = <>
    HTMLPageOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLPageOptions.TextFont.Color = clWhite
    HTMLPageOptions.TextFont.Height = -11
    HTMLPageOptions.TextFont.Name = 'Arial'
    HTMLPageOptions.TextFont.Style = []
    CSVOptions.Comma = ','
    PDFOptions.PageOptions.MarginLeft = 1.170000000000000000
    PDFOptions.PageOptions.MarginRight = 0.569999999999999900
    PDFOptions.PageOptions.MarginTop = 0.780000000000000000
    PDFOptions.PageOptions.MarginBottom = 0.780000000000000000
    PDFOptions.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.HeaderFont.UserFont.Color = clWindowText
    PDFOptions.HeaderFont.UserFont.Height = -13
    PDFOptions.HeaderFont.UserFont.Name = 'Arial'
    PDFOptions.HeaderFont.UserFont.Style = []
    PDFOptions.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.CaptionFont.UserFont.Color = clWindowText
    PDFOptions.CaptionFont.UserFont.Height = -13
    PDFOptions.CaptionFont.UserFont.Name = 'Arial'
    PDFOptions.CaptionFont.UserFont.Style = []
    PDFOptions.DataFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.DataFont.UserFont.Color = clWindowText
    PDFOptions.DataFont.UserFont.Height = -13
    PDFOptions.DataFont.UserFont.Name = 'Arial'
    PDFOptions.DataFont.UserFont.Style = []
    PDFOptions.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.FooterFont.UserFont.Color = clWindowText
    PDFOptions.FooterFont.UserFont.Height = -13
    PDFOptions.FooterFont.UserFont.Name = 'Arial'
    PDFOptions.FooterFont.UserFont.Style = []
    XLSOptions.PageFooter = 'Page &P of &N'
    XLSOptions.SheetTitle = 'Sheet 1'
    XLSOptions.CaptionFormat.Font.Style = [xfsBold]
    XLSOptions.HyperlinkFormat.Font.Color = clrBlue
    XLSOptions.HyperlinkFormat.Font.Underline = fulSingle
    XLSOptions.NoteFormat.Alignment.Horizontal = halLeft
    XLSOptions.NoteFormat.Alignment.Vertical = valTop
    XLSOptions.NoteFormat.Font.Size = 8
    XLSOptions.NoteFormat.Font.Style = [xfsBold]
    XLSOptions.NoteFormat.Font.Name = 'Tahoma'
    XLSOptions.FieldFormats = <>
    XLSOptions.StripStyles = <>
    XLSOptions.Hyperlinks = <>
    XLSOptions.Notes = <>
    XLSOptions.Charts = <>
    XLSOptions.Pictures = <>
    XLSOptions.Images = <>
    XLSOptions.Cells = <>
    XLSOptions.MergedCells = <>
    ODSOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.HeaderStyle.Font.Color = clBlack
    ODSOptions.HeaderStyle.Font.Height = -13
    ODSOptions.HeaderStyle.Font.Name = 'Arial'
    ODSOptions.HeaderStyle.Font.Style = []
    ODSOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.FooterStyle.Font.Color = clBlack
    ODSOptions.FooterStyle.Font.Height = -13
    ODSOptions.FooterStyle.Font.Name = 'Arial'
    ODSOptions.FooterStyle.Font.Style = []
    ODSOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.CaptionRowStyle.Font.Color = clBlack
    ODSOptions.CaptionRowStyle.Font.Height = -13
    ODSOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODSOptions.CaptionRowStyle.Font.Style = []
    ODSOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.DataStyle.Font.Color = clBlack
    ODSOptions.DataStyle.Font.Height = -13
    ODSOptions.DataStyle.Font.Name = 'Arial'
    ODSOptions.DataStyle.Font.Style = []
    ODSOptions.StripStylesList = <>
    ODTOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.HeaderStyle.Font.Color = clBlack
    ODTOptions.HeaderStyle.Font.Height = -13
    ODTOptions.HeaderStyle.Font.Name = 'Arial'
    ODTOptions.HeaderStyle.Font.Style = []
    ODTOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.FooterStyle.Font.Color = clBlack
    ODTOptions.FooterStyle.Font.Height = -13
    ODTOptions.FooterStyle.Font.Name = 'Arial'
    ODTOptions.FooterStyle.Font.Style = []
    ODTOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.CaptionRowStyle.Font.Color = clBlack
    ODTOptions.CaptionRowStyle.Font.Height = -13
    ODTOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODTOptions.CaptionRowStyle.Font.Style = []
    ODTOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.DataStyle.Font.Color = clBlack
    ODTOptions.DataStyle.Font.Height = -13
    ODTOptions.DataStyle.Font.Name = 'Arial'
    ODTOptions.DataStyle.Font.Style = []
    ODTOptions.StripStylesList = <>
    ODTOptions.Border.BorderStyle = bsODFSolid
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    DocxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.HeaderStyle.Font.Color = clBlack
    DocxOptions.HeaderStyle.Font.Height = -15
    DocxOptions.HeaderStyle.Font.Name = 'Calibri'
    DocxOptions.HeaderStyle.Font.Style = []
    DocxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.CaptionRowStyle.Font.Color = clBlack
    DocxOptions.CaptionRowStyle.Font.Height = -15
    DocxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    DocxOptions.CaptionRowStyle.Font.Style = []
    DocxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.DataStyle.Font.Color = clBlack
    DocxOptions.DataStyle.Font.Height = -15
    DocxOptions.DataStyle.Font.Name = 'Calibri'
    DocxOptions.DataStyle.Font.Style = []
    DocxOptions.StripStylesList = <>
    DocxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.FooterStyle.Font.Color = clBlack
    DocxOptions.FooterStyle.Font.Height = -15
    DocxOptions.FooterStyle.Font.Name = 'Calibri'
    DocxOptions.FooterStyle.Font.Style = []
    AccessOptions.TableName = 'EXPORT_TABLE'
    Left = 168
    Top = 208
  end
  object QImport3Wizard1: TQImport3Wizard
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    Left = 200
    Top = 208
  end
  object acADOMetadataProvider1: TacADOMetadataProvider
    Left = 168
    Top = 144
  end
  object acUniDACMetadataProvider1: TacUniDACMetadataProvider
    Left = 200
    Top = 144
  end
end
