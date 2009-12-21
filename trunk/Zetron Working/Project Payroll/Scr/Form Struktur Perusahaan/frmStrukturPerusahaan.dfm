object fmStrukturPerusahaan: TfmStrukturPerusahaan
  Left = 303
  Top = 205
  Caption = 'Perusahaan, Divisi, Departemen dan Bagian'
  ClientHeight = 366
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 65
    Width = 636
    Height = 301
    Align = alClient
    DockType = 0
    OriginalWidth = 636
    OriginalHeight = 301
    object dxLayoutDockSite1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 636
      Height = 301
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxTabContainerDockSite1: TdxTabContainerDockSite
      Left = 0
      Top = 0
      Width = 636
      Height = 301
      ActiveChildIndex = 2
      AllowFloating = True
      AutoHide = False
      CaptionButtons = []
      Dockable = False
      DockType = 1
      OriginalWidth = 185
      OriginalHeight = 140
      object dpPerusahaan: TdxDockPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 249
        AllowFloating = True
        AutoHide = False
        Caption = 'Perusahaan'
        CaptionButtons = []
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cgPerusahaan: TcxGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 249
          Align = alClient
          TabOrder = 0
          object cgvPerusahaan: TcxGridDBCardView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = dmGlobal.imgButtonGrid
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.ImageIndex = 3
            NavigatorButtons.Next.ImageIndex = 4
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.ImageIndex = 0
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.ImageIndex = 2
            NavigatorButtons.Edit.ImageIndex = 7
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Post.ImageIndex = 6
            NavigatorButtons.Post.Visible = False
            NavigatorButtons.Cancel.ImageIndex = 5
            NavigatorButtons.Refresh.ImageIndex = 1
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsPerusahaan
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsView.Navigator = True
            object cgvPerusahaankodeperusahaan: TcxGridDBCardViewRow
              Caption = 'Kode'
              DataBinding.FieldName = 'kodeperusahaan'
              Position.BeginsLayer = True
            end
            object cgvPerusahaannamaperusahaan: TcxGridDBCardViewRow
              Caption = 'Nama'
              DataBinding.FieldName = 'namaperusahaan'
              Position.BeginsLayer = True
            end
            object cgvPerusahaanalamat1: TcxGridDBCardViewRow
              Caption = 'Alamat 1'
              DataBinding.FieldName = 'alamat1'
              Position.BeginsLayer = True
            end
            object cgvPerusahaanalamat2: TcxGridDBCardViewRow
              Caption = 'Alamat 2'
              DataBinding.FieldName = 'alamat2'
              Position.BeginsLayer = True
            end
            object cgvPerusahaankota: TcxGridDBCardViewRow
              Caption = 'Kota '
              DataBinding.FieldName = 'kota'
              Position.BeginsLayer = True
            end
            object cgvPerusahaankodepos: TcxGridDBCardViewRow
              Caption = 'Kode Pos'
              DataBinding.FieldName = 'kodepos'
              Position.BeginsLayer = True
            end
            object cgvPerusahaanphone: TcxGridDBCardViewRow
              Caption = 'Telephone'
              DataBinding.FieldName = 'phone'
              Position.BeginsLayer = True
            end
            object cgvPerusahaanfax: TcxGridDBCardViewRow
              Caption = 'Fax'
              DataBinding.FieldName = 'fax'
              Position.BeginsLayer = True
            end
            object cgvPerusahaannpwp: TcxGridDBCardViewRow
              Caption = 'NPWP'
              DataBinding.FieldName = 'npwp'
              Position.BeginsLayer = True
            end
            object cgvPerusahaancorebusiness: TcxGridDBCardViewRow
              Caption = 'Bisnis'
              DataBinding.FieldName = 'corebusiness'
              Position.BeginsLayer = True
            end
            object cgvPerusahaandirector: TcxGridDBCardViewRow
              Caption = 'Direktur'
              DataBinding.FieldName = 'director'
              Position.BeginsLayer = True
            end
          end
          object cgPerusahaanLevel1: TcxGridLevel
            GridView = cgvPerusahaan
          end
        end
      end
      object dpDivisi: TdxDockPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 249
        AllowFloating = True
        AutoHide = False
        Caption = 'Divisi'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cgDivisi: TcxGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 249
          Align = alClient
          TabOrder = 0
          object cgvDivisi: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = dmGlobal.imgButtonGrid
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.ImageIndex = 3
            NavigatorButtons.Next.ImageIndex = 4
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.ImageIndex = 0
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.ImageIndex = 2
            NavigatorButtons.Edit.ImageIndex = 7
            NavigatorButtons.Post.ImageIndex = 6
            NavigatorButtons.Cancel.ImageIndex = 5
            NavigatorButtons.Refresh.ImageIndex = 1
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsDivisi
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvDivisikodedivisi: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kodedivisi'
            end
            object cgvDivisinamadivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'namadivisi'
            end
          end
          object cgDivisiLevel1: TcxGridLevel
            GridView = cgvDivisi
          end
        end
      end
      object dpDepartemen: TdxDockPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 249
        AllowFloating = True
        AutoHide = False
        Caption = 'Departemen'
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cgDepartemen: TcxGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 249
          Align = alClient
          TabOrder = 0
          object cgvDepartemen: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = dmGlobal.imgButtonGrid
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.ImageIndex = 3
            NavigatorButtons.Next.ImageIndex = 4
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.ImageIndex = 0
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.ImageIndex = 2
            NavigatorButtons.Edit.ImageIndex = 7
            NavigatorButtons.Post.ImageIndex = 6
            NavigatorButtons.Cancel.ImageIndex = 5
            NavigatorButtons.Refresh.ImageIndex = 1
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsDepartmen
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvDepartemenkodedivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'kodedivisi'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevDivisi
              Properties.KeyFieldNames = 'kodedivisi'
              Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
            end
            object cgvDepartemenkodedepartemen: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kodedepartemen'
            end
            object cgvDepartemennamadepartemen: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'namadepartemen'
            end
          end
          object cgDepartemenLevel1: TcxGridLevel
            GridView = cgvDepartemen
          end
        end
      end
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object shpToolbarBackground: TShape
      Left = 0
      Top = 0
      Width = 636
      Height = 65
      Align = alClient
      Brush.Color = 10275571
      ExplicitTop = -6
    end
    object btnRefresh: TcxButton
      Left = 8
      Top = 9
      Width = 57
      Height = 48
      Action = actRefresh
      TabOrder = 0
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A3787500A3787500A3787500A3787500A3787500A3787500A378
        7500A3787500A3787500A3787500A3787500A3787500A3787500A3787500A378
        7500A3787500A3787500A37875008A5B5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A5797600E7BEB800F1BEB800EFBCB700EFBCB700EEBBB700EEBB
        B700EDBAB600ECB9B600ECB9B600EBB8B500EAB7B500EAB7B500E9B6B400E8B5
        B400E8B5B400E7B4B300E7B496008A5B5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A77B7600D9D4CE00FFE9D300FFE8D000FFE5CC00FFE4C900FFE2
        C500FFE1C200FFDEBD00FFDDBA00FFDBB600FFDAB300FFD7AF00FFD5AB00FFD3
        A800FFD1A300FFD0A000FFCDC1008A5B5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A97E7700DBD7D200FFECD800FFE9D300FFE8D000FFE5CC00FFE4
        C900FFE2C500FFE1C200FFDEBD00FFDDBA00FFDBB600FFDAB300FFD7AF00FFD6
        AC00FFD3A800FFD1A300FFCDC1008A5B5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AC807900DDD9D400FFEDDB00FFEBD600FFE9D30001990100FFE3
        C800FFE3C800BFD0940081BC60009FC47700DFD4A100FFDBB600FFD8B000FFD7
        AF00FFD6AC00FFD3A800FFCEC3008B5C5C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AE817900DEDAD700FFEFDF00FFEDDB00FFEBD700019901008FC4
        740051B448000199010001990100019901000199010071B65100FFDBB600FFDA
        B300FFD7AF00FFD6AC00FFCEC3008C5E5C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B2857B00E1DEDA00FFF0E200FFEFDF00FFEDDB00019901000199
        010001990100019901000199010001990100019901000199010071B65100FFDB
        B600FFD8B000FFD7AF00FFCFC5008E605E00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B5887C00E3E1DE00FFF3E700FFF0E200FFEFDF00019901000199
        0100019901000199010031A7270081BE660071B95700119E0D0001990100BFCB
        8900FFDBB600FFDAB300FFCFC5008F616000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B98B7E00E5E3E100FFF4E900FFF3E600FFF0E200019901000199
        010001990100019901008FC47400FFE5CC00FFE3C800EFDDB90041AB320051AF
        3C00FFDCB900FFDBB600FFD0C70092636200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BC8E7F00E6E5E300FFF7EF00FFF4E900FFF3E600019901000199
        010001990100019901000199010001990100FFE5CC00FFE3C800EFDDB90031A7
        2600EFDAB100FFDDBA00FFD0C70093666500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0918100E9E8E700FFF8F100FFF7ED00FFF4E900FFF4E900FFF3
        E600FFF0E200FFF0E200FFE7CF00FFE7CF00FFE7CF00FFE5CC00FFE3C800FFE3
        C800EFDDB900FFDEBD00FFD1C80095696600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C4958100EBEAE900FFFAF700FFF8F00081C87800FFF4E900FFF3
        E600FFF0E200FFF0E200FFE7CF00FFE7CF00FFE7CF00FFE5CC00FFE3C800FFE4
        C900FFE2C500FFE1C200FFD1C800986B6900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C8998300EDEDEC00FFFBF800FFFAF60081C97A00BFDFB100FFF4
        E900FFF3E600FFF0E2000199010001990100019901000199010001990100FFE5
        CC00FFE4CA00FFE2C500FFD2CA009A6D6B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CB9C8500EFEFEF00FFFEFE00FFFBF800CFE8C900119F1000CFE5
        C000FFF4E900FFF3E600EFEBD40031A92B00019901000199010001990100FFED
        DB00FFE5CC00FFE4CB00FFCFC8009B6F6D00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CFA08600F2F2F200FFFFFF00FFFEFE00FFFBF80041B23F000199
        010081C77600DFE9CC00DFE7C90051B44800019901000199010001990100FFE9
        D400FFE8D200FFE5CC00FFC6C0009D716F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D3A38800F3F3F300FFFFFF00FFFFFF00FFFEFE00CFE9CA000199
        010001990100019901000199010001990100019901000199010001990100FFEC
        DA00FFE9D400FFE8D200FFBDB7009F747100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D7A78900F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFEFE009FD7
        9B00019901000199010001990100019901000199010021A41D0001990100FFE3
        D600FFBEBE00FFAFAF00FFA1A100A1757200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DAAA8A00F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
        FE00DFEFD90071C46E0041B13E0041B13D008FCC8300EFEDD80001990100E7C0
        AD00E6A79A00E59E9100E4988B00A2767400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEAD8C00FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
        FE00FFFBF800FFFAF700FFF8F100FFF7ED00FFF4E900FFF3E600FFF4E900B280
        7400B2807400B2807400B2807400A3787500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E1B08D00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFCF900FFFBF800FFF9F200FFF7EF00FFF7EF00B280
        7400FFB85C00E1A36A00CD9A8100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E4B38E00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFCF900FFFBF800FFF9F200FFF9F200B280
        7400E4AD8100D29F8300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7B68F00FFFFFF00FEFEFE00FDFDFD00FBFBFB00F9F9F900F8F8
        F800F7F7F700F5F5F500F3F3F300F2F2F100F0EEED00EEECEA00EEECEA00B280
        7400D7A48500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00EAB89000DCA98700DCA98700DCA98700DCA98700DCA98700DCA9
        8700DCA98700DCA98700DCA98700DCA98700DCA98700DCA98700DCA98700B280
        7400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      LookAndFeel.Kind = lfUltraFlat
      Spacing = 0
    end
    object btnCancel: TcxButton
      Left = 95
      Top = 9
      Width = 57
      Height = 48
      Action = actClose
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004A7B9C00186384001863840018638400186384001863
        8400186384001863840018638400186384001863840018638400186384001863
        84001863840021638400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000639C00086BB500106BBD001073BD001073BD001073
        BD001073BD001073BD001073BD001073BD001073BD001073BD00106BBD00106B
        B500086BB50000639C00637B8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000639C00187BCE002184D6002184D6002184D6002184
        D6002184D6002184D6002184D6002184D6002184D6002184D6002184D6001884
        CE00187BCE000063A50052738400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000639C002184D6002994D6002184D6002994DE002994
        DE002994DE002184D6002994D6002994D6002184D6002994DE002184D6002184
        D6002184D600086BAD00426B8400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000063A5002184D6002994DE002994DE002994DE002994
        DE003194DE002994DE002994D6002994DE002994DE002994DE002184D6002994
        DE002184D600086BAD00396B8400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00086BAD002994D6003194DE002184D600319CDE00319C
        DE00319CDE002994DE002994DE003194DE003194DE003194DE002994D6002994
        DE002184D6001073B50029638400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00086BAD003194DE00319CDE002994DE00319CDE00319C
        DE00319CDE002994DE002994DE00319CDE00319CDE003194DE002184D6003194
        DE002994DE001073BD0021638400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF007B9CAD001073B500298CD600297BAD002173B50039A5E70039A5
        E70039A5E700319CDE00319CDE00319CDE00319CDE00399CE7002994DE00319C
        DE002994DE00187BBD0018638C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006B94AD00106BAD001063AD00106BB50010529400297BAD0039A5
        E70039A5E700319CDE00319CDE0039A5E70039A5E70031A5E7002994DE0031A5
        E700319CDE00187BC60010638C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF005A8CA5000863A500187BC6002184D6001873C60021639C0042AD
        E70042ADE700319CDE0031A5E70042A5E70039A5E70042A5E7002994DE0039A5
        E700399CE7002184CE0008639400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004A7B9C00106BB500639CD6008CC6E7005A94CE002984BD0042AD
        EF0042ADE700319CDE0039A5E70042ADE70042ADE70042ADE700319CDE0039A5
        E70039A5E700298CD60000639400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003984AD002184C6004294CE0063A5D600318CCE0042ADEF0042AD
        EF004AADEF0039A5E70039A5E70042ADEF0042ADEF0042ADEF00319CDE0039A5
        E70039A5E7002994D60000639400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF002173A5002994D6004AADE70042ADEF00399CE7004AB5EF004AB5
        EF004AB5EF00399CE70039A5E7004AB5EF004AB5EF004AB5EF0039A5E70039A5
        E70042ADEF003194DE0000639C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00106B9C003194D60042ADEF0042ADEF0039A5E7004AB5EF004AB5
        EF004AB5EF0039A5E70042A5E7004AB5EF0042ADEF004AB5EF0039A5E70039A5
        E70042ADEF00399CE70000639C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008639C00399CDE009CC6DE00EFE7D600EFE7DE00EFE7DE00EFE7
        DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7
        D600C6D6D60042A5E70008639C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000639C0039A5E700D6DED6006B63EF005A52EF006363F7007B73
        F700C6C6F700948CF700948CF7005252EF005A5AEF00FFF7FF00948CF700C6BD
        F700F7E7DE004AADE700086BA50073848C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000639C0042ADEF00DEDEDE004A42EF00B5B5FF00D6D6FF00DEDE
        FF004239EF004A42F700F7F7FF008484F700A59CF700FFF7FF00736BF700B5B5
        FF00FFEFDE0052ADE700086BA500637B8C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00086BA50042ADEF00EFE7DE004A42EF007B7BF700A59CF700E7E7
        FF003939EF005A52F700FFF7FF008484F700A5A5F700FFF7FF00736BF700A5A5
        E700E7DECE005AB5E7001073B50052738400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00086BA5004AB5F700EFE7DE00635AEF005A52F7006B63F7007B7B
        F700ADADFF00948CF7009494F700524AF7005A5AF7008484F7007363E700CEBD
        BD00A5B5C6004AB5EF001073B500426B8400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF001073B50052B5EF00F7E7D600FFF7EF00FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFEFDE00C6D6
        D6005ABDF70052B5EF00187BBD0039638400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF001073B50042ADEF009CC6DE00BDD6DE00BDD6DE00BDD6DE00BDD6
        DE00BDD6DE00BDD6DE00BDD6DE00BDD6DE00BDD6DE00BDD6DE00B5CEDE005ABD
        F7004AB5F70042ADEF00187BBD0029638400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00086BA5002184C600298CC600298CD600298CC600298CD600298C
        D600298CCE00298CD600298CCE00298CD600298CC600298CD600298CC600298C
        C600298CC6002184C600086BAD0029638C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00638C9C0063849C0063849C0063849C0063849C0063849C006384
        9C0063849C0063849C0063849C0063849C0063849C0063849C0063849C006384
        9C0063849C0063849C00638C9C00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      LookAndFeel.Kind = lfUltraFlat
      Spacing = 0
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Struktur.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 488
    Top = 72
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Struktur.cfg'
    Sorting = True
    Version = '1.3'
    Left = 520
    Top = 72
  end
  object dsPerusahaan: TDataSource
    DataSet = dmGeneral.dtsPerusahaan
    Left = 520
    Top = 104
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
    Images = dmGlobal.imgDockPanel
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer]
    ViewStyle = vsStandard
    Left = 552
    Top = 72
  end
  object aclHeader: TActionList
    Images = dmGlobal.imgButton
    Left = 168
    Top = 8
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 5
      OnExecute = actRefreshExecute
    end
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 6
      OnExecute = actCloseExecute
    end
  end
  object dsDivisi: TDataSource
    DataSet = dmGeneral.dtsDivisi
    Left = 520
    Top = 136
  end
  object dsDepartmen: TDataSource
    DataSet = dmGeneral.dtsPrevDepartemen
    Left = 520
    Top = 168
  end
end
