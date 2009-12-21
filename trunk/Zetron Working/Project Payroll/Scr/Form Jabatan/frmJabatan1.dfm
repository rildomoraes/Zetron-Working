object fmJabatan: TfmJabatan
  Left = 0
  Top = 0
  Caption = 'Struktur Organisasi'
  ClientHeight = 672
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 380
    Top = 340
    Height = 332
    ExplicitLeft = 412
    ExplicitTop = 341
    ExplicitHeight = 335
  end
  object Splitter2: TSplitter
    Left = 329
    Top = 340
    Height = 332
    ExplicitLeft = 47
    ExplicitTop = 4
    ExplicitHeight = 333
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 337
    Width = 782
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 344
  end
  object cxRichEdit1: TcxRichEdit
    Left = 0
    Top = 0
    Align = alTop
    Enabled = False
    ParentFont = False
    Properties.Alignment = taCenter
    Properties.ReadOnly = False
    Lines.Strings = (
      'ORGANISATION STRUCTURE'
      'PT. KAYAN JAYA TANJUNG FURNITURE DIVISION')
    Style.BorderColor = clNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.Shadow = False
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    StyleDisabled.BorderColor = clBtnText
    StyleDisabled.Color = clBlack
    StyleDisabled.TextColor = clNone
    TabOrder = 0
    Height = 41
    Width = 782
  end
  object cgUnSelect: TcxGrid
    Left = 0
    Top = 340
    Width = 329
    Height = 332
    Align = alLeft
    TabOrder = 1
    object cgvUnSelect: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
      DataController.DataSource = dsUnSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Navigator = True
      object cgvUnSelectpegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
      end
      object cgvUnSelectnopeg: TcxGridDBColumn
        DataBinding.FieldName = 'nopeg'
        Width = 49
      end
      object cgvUnSelectnama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object cgvUnSelecttglmasuk: TcxGridDBColumn
        DataBinding.FieldName = 'tglmasuk'
      end
      object cgvUnSelectkodeperusahaan: TcxGridDBColumn
        DataBinding.FieldName = 'kodeperusahaan'
      end
      object cgvUnSelectnamaperusahaan: TcxGridDBColumn
        DataBinding.FieldName = 'namaperusahaan'
      end
      object cgvUnSelectkodedivisi: TcxGridDBColumn
        DataBinding.FieldName = 'kodedivisi'
      end
      object cgvUnSelectnamadivisi: TcxGridDBColumn
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvUnSelectkodedepartemen: TcxGridDBColumn
        DataBinding.FieldName = 'kodedepartemen'
      end
      object cgvUnSelectnamadepartemen: TcxGridDBColumn
        DataBinding.FieldName = 'namadepartemen'
      end
    end
    object cgUnSelectLevel1: TcxGridLevel
      GridView = cgvUnSelect
    end
  end
  object Panel1: TPanel
    Left = 332
    Top = 340
    Width = 48
    Height = 332
    Align = alLeft
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 6
      Top = 24
      Width = 35
      Height = 33
      Caption = '>'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton3: TcxButton
      Left = 6
      Top = 63
      Width = 35
      Height = 33
      Caption = '<'
      TabOrder = 1
      OnClick = cxButton3Click
    end
  end
  object cgSelect: TcxGrid
    Left = 383
    Top = 340
    Width = 399
    Height = 332
    Align = alClient
    TabOrder = 3
    object cgvSelect: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
      DataController.DataSource = dsSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Navigator = True
      object cgvSelectpegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
      end
      object cgvSelectnopeg: TcxGridDBColumn
        DataBinding.FieldName = 'nopeg'
      end
      object cgvSelectnama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object cgvSelecttglmasuk: TcxGridDBColumn
        DataBinding.FieldName = 'tglmasuk'
      end
      object cgvSelectkodeperusahaan: TcxGridDBColumn
        DataBinding.FieldName = 'kodeperusahaan'
      end
      object cgvSelectnamaperusahaan: TcxGridDBColumn
        DataBinding.FieldName = 'namaperusahaan'
      end
      object cgvSelectkodedivisi: TcxGridDBColumn
        DataBinding.FieldName = 'kodedivisi'
      end
      object cgvSelectnamadivisi: TcxGridDBColumn
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvSelectkodedepartemen: TcxGridDBColumn
        DataBinding.FieldName = 'kodedepartemen'
      end
      object cgvSelectnamadepartemen: TcxGridDBColumn
        DataBinding.FieldName = 'namadepartemen'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cgvSelect
    end
  end
  object pbProcess: TcxProgressBar
    Left = 549
    Top = 8
    ParentColor = False
    Properties.BarStyle = cxbsGradientLEDs
    Properties.BeginColor = clMoneyGreen
    TabOrder = 4
    Transparent = True
    Visible = False
    Width = 225
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 782
    Height = 296
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 5
    object Splitter4: TSplitter
      Left = 517
      Top = 1
      Height = 294
      Align = alRight
      ExplicitLeft = 412
      ExplicitTop = 341
      ExplicitHeight = 335
    end
    object Panel3: TPanel
      Left = 520
      Top = 1
      Width = 261
      Height = 294
      Align = alRight
      TabOrder = 0
      object cgJabatan: TcxGrid
        Left = 1
        Top = 1
        Width = 259
        Height = 292
        Align = alClient
        TabOrder = 0
        object cgvJabatan: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
          DataController.DataSource = dmgeneral.dsJabatan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cgvJabatannamajabatan: TcxGridDBColumn
            Caption = 'Nama Jabatan'
            DataBinding.FieldName = 'namajabatan'
          end
          object cgvJabatanstatuslevel: TcxGridDBColumn
            Caption = 'Status Level'
            DataBinding.FieldName = 'statuslevel'
          end
          object cgvJabatanjmlpegawai: TcxGridDBColumn
            Caption = 'Jumlah Pegawai'
            DataBinding.FieldName = 'jmlpegawai'
          end
          object cgvJabatandeskripsi: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'deskripsi'
          end
          object cgvJabatankodejabatan: TcxGridDBColumn
            DataBinding.FieldName = 'kodejabatan'
          end
          object cgvJabataninduk: TcxGridDBColumn
            DataBinding.FieldName = 'induk'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cgvJabatan
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 516
      Height = 294
      Align = alClient
      TabOrder = 1
      object OrgJabatan: TdxDbOrgChart
        Left = 1
        Top = 33
        Width = 514
        Height = 260
        DataSource = dmgeneral.dsJabatan
        KeyFieldName = 'kodejabatan'
        ParentFieldName = 'induk'
        TextFieldName = 'namajabatan'
        OrderFieldName = 'kodejabatan'
        ImageFieldName = 'namajabat'
        OnNewKey = OrgJabatanNewKey
        Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocInsDel, ocRect3D, ocAnimate]
        EditMode = [emCenter, emWrap]
        OnCreateNode = OrgJabatanCreateNode
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        OnClick = OrgJabatanClick
        OnDblClick = OrgJabatanDblClick
        ParentFont = False
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 514
        Height = 32
        Align = alTop
        TabOrder = 1
        object cxbtnTambahSamping: TcxButton
          Left = 6
          Top = 4
          Width = 131
          Height = 25
          Caption = 'Tambah Jabatan Samping'
          TabOrder = 0
          OnClick = cxbtnTambahSampingClick
        end
        object cxbtnTambahAnak: TcxButton
          Left = 142
          Top = 4
          Width = 129
          Height = 25
          Caption = 'Tambah Anak Jabatan'
          TabOrder = 1
          OnClick = cxbtnTambahAnakClick
        end
        object cxbtnHapus: TcxButton
          Left = 277
          Top = 4
          Width = 72
          Height = 25
          Caption = 'Hapus'
          TabOrder = 2
          OnClick = cxbtnHapusClick
        end
        object cxbtnPrint: TcxButton
          Left = 355
          Top = 4
          Width = 72
          Height = 25
          Caption = 'Print'
          TabOrder = 3
          OnClick = cxbtnPrintClick
        end
      end
    end
  end
  object dsUnSelect: TDataSource
    DataSet = qryUnSelect
    Left = 104
    Top = 424
  end
  object dsSelect: TDataSource
    DataSet = qrySelect
    Left = 456
    Top = 432
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Jabatan.cfg'
    Sorting = True
    Version = '1.3'
    Left = 496
    Top = 72
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Jabatan.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 464
    Top = 72
  end
  object qryUnSelect: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      
        'select a. pegawaiid, a.nopeg, a.nama, a.tglmasuk, c.kodeperusaha' +
        'an, c.namaperusahaan, d.kodedivisi, d.namadivisi, e.kodedepartem' +
        'en, e.namadepartemen'
      'from pegawai a  '
      'left join jabatan b on a.kodejabatan=b.kodejabatan'
      'left join perusahaan c on a.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on a.kodedivisi=d.kodedivisi'
      'left join departemen e on a.kodedepartemen=e.kodedepartemen'
      'where a.kodejabatan<>:kodejabatan or a.kodejabatan is null'
      'order by nopeg,kodeperusahaan,kodedivisi,kodedepartemen'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end>
    Left = 72
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end>
  end
  object qrySelect: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      
        'select a. pegawaiid, a.nopeg, a.nama, a.tglmasuk, c.kodeperusaha' +
        'an, c.namaperusahaan, d.kodedivisi, d.namadivisi, e.kodedepartem' +
        'en, e.namadepartemen'
      'from pegawai a  '
      'left join jabatan b on a.kodejabatan=b.kodejabatan'
      'left join perusahaan c on a.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on a.kodedivisi=d.kodedivisi'
      'left join departemen e on a.kodedepartemen=e.kodedepartemen'
      'where a.kodejabatan=:kodejabatan'
      'order by nopeg,kodeperusahaan,kodedivisi,kodedepartemen'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end>
    Left = 424
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end>
  end
  object qrySet: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update pegawai '
      'set kodejabatan=:kodejabatan'
      'where pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodejabatan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qrySet2: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update pegawai '
      'set kodejabatan=null'
      'where pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 24
    Top = 64
    object dxComponentPrinter1Link1: TdxDBOrgChartReportLink
      Active = True
      Component = OrgJabatan
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 100
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Struktur Jabatan PT. Kayan Jaya Tanjung')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 39682.836109722220000000
      FullExpand = True
      BuiltInReportLink = True
    end
  end
  object dsJabatan: TDataSource
    Left = 21
    Top = 8
  end
end
