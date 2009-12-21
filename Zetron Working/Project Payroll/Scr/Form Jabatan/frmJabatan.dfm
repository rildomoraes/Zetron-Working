inherited fmJabatan: TfmJabatan
  Caption = 'Jabatan'
  ClientHeight = 568
  ClientWidth = 740
  ExplicitWidth = 748
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter3: TSplitter [0]
    Left = 0
    Top = 387
    Width = 740
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = -190
    ExplicitTop = 337
    ExplicitWidth = 782
  end
  inherited pnlMenu: TPanel
    Width = 740
    ExplicitWidth = 740
  end
  object cxRichEdit1: TcxRichEdit [2]
    Left = 0
    Top = 50
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
    TabOrder = 1
    Height = 41
    Width = 740
  end
  object cgSelect: TcxGrid [3]
    Left = 0
    Top = 390
    Width = 740
    Height = 178
    Align = alClient
    TabOrder = 2
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
        Caption = 'No Pegawai'
        DataBinding.FieldName = 'nopeg'
        Width = 67
      end
      object cgvSelectnama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 75
      end
      object cgvSelecttglmasuk: TcxGridDBColumn
        Caption = 'Tgl Masuk'
        DataBinding.FieldName = 'tglmasuk'
        Width = 71
      end
      object cgvSelectkodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Width = 95
      end
      object cgvSelectnamaperusahaan: TcxGridDBColumn
        Caption = 'Nama Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
        Width = 105
      end
      object cgvSelectkodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Width = 72
      end
      object cgvSelectnamadivisi: TcxGridDBColumn
        Caption = 'Nama Divisi'
        DataBinding.FieldName = 'namadivisi'
        Width = 83
      end
      object cgvSelectkodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Width = 94
      end
      object cgvSelectnamadepartemen: TcxGridDBColumn
        Caption = 'Nama Departemen'
        DataBinding.FieldName = 'namadepartemen'
        Width = 115
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cgvSelect
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 91
    Width = 740
    Height = 296
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 3
    object Splitter4: TSplitter
      Left = 475
      Top = 1
      Height = 294
      Align = alRight
      ExplicitLeft = 412
      ExplicitTop = 341
      ExplicitHeight = 335
    end
    object Panel3: TPanel
      Left = 478
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
          DataController.DataSource = dmGeneral.dsJabatan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cgvJabatannamajabatan: TcxGridDBColumn
            Caption = 'Nama Jabatan *'
            DataBinding.FieldName = 'namajabatan'
            Width = 86
          end
          object cgvJabatanstatuslevel: TcxGridDBColumn
            Caption = 'Status Level'
            DataBinding.FieldName = 'statuslevel'
            Width = 66
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
            Caption = 'Kode Jabatan *'
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
      Width = 474
      Height = 294
      Align = alClient
      TabOrder = 1
      object OrgJabatan: TdxDbOrgChart
        Left = 1
        Top = 33
        Width = 472
        Height = 260
        DataSource = dmGeneral.dsJabatan
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
        Width = 472
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
  object dsSelect: TDataSource
    DataSet = qrySelect
    Left = 456
    Top = 504
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Jabatan.cfg'
    Sorting = True
    Version = '1.3'
    Left = 496
    Top = 72
  end
  object IvPositionStandard2: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Jabatan.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 464
    Top = 72
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
      ReportDocument.CreationDate = 40138.653416956020000000
      FullExpand = True
      BuiltInReportLink = True
    end
  end
  object dsJabatan: TDataSource
    Left = 21
    Top = 8
  end
  object qrySelect: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kodejabatan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
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
    Left = 424
    Top = 504
  end
end
