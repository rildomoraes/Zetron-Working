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
  object dxDbOrgChart1: TdxDbOrgChart
    Left = 0
    Top = 41
    Width = 782
    Height = 312
    DataSource = dmGeneral.dsJabatan
    KeyFieldName = 'kodejabatan'
    ParentFieldName = 'induk'
    TextFieldName = 'namajabatan'
    OrderFieldName = 'kodejabatan'
    ImageFieldName = 'namajabat'
    Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocInsDel, ocRect3D, ocAnimate]
    EditMode = [emCenter, emWrap]
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OnClick = dxDbOrgChart1Click
    ParentFont = False
  end
  object cgUnSelect: TcxGrid
    Left = 0
    Top = 353
    Width = 329
    Height = 319
    Align = alLeft
    TabOrder = 2
    object cgvUnSelect: TcxGridDBTableView
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
      DataController.DataSource = dsUnSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
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
    Left = 329
    Top = 353
    Width = 48
    Height = 319
    Align = alLeft
    TabOrder = 3
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
    Left = 377
    Top = 353
    Width = 405
    Height = 319
    Align = alClient
    TabOrder = 4
    object cgvSelect: TcxGridDBTableView
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
      DataController.DataSource = dsSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellMultiSelect = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
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
    Properties.BarStyle = cxbsGradientLEDs
    Properties.BeginColor = clMoneyGreen
    TabOrder = 5
    Transparent = True
    Visible = False
    Width = 225
  end
  object dtsUnSelect: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select a. pegawaiid, a.nopeg, a.nama, a.tglmasuk, c.kodeperusaha' +
      'an, c.namaperusahaan, d.kodedivisi, d.namadivisi, e.kodedepartem' +
      'en, e.namadepartemen'#13#10'from pegawai a  '#13#10'left join jabatan b on a' +
      '.kodejabatan=b.kodejabatan'#13#10'left join perusahaan c on a.kodeperu' +
      'sahaan=c.kodeperusahaan'#13#10'left join divisi d on a.kodedivisi=d.ko' +
      'dedivisi'#13#10'left join departemen e on a.kodedepartemen=e.kodedepar' +
      'temen'#13#10'where a.kodejabatan<>:kodejabatan or a.kodejabatan is nul' +
      'l'#13#10'order by nopeg,kodeperusahaan,kodedivisi,kodedepartemen'#13#10#13#10
    Parameters = <
      item
        Name = 'kodejabatan'
        DataType = ftString
        Size = 6
        Value = #39'0001'#39
      end>
    Left = 72
    Top = 424
  end
  object dsUnSelect: TDataSource
    DataSet = dtsUnSelect
    Left = 104
    Top = 424
  end
  object dtsSelect: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select a. pegawaiid, a.nopeg, a.nama, a.tglmasuk, c.kodeperusaha' +
      'an, c.namaperusahaan, d.kodedivisi, d.namadivisi, e.kodedepartem' +
      'en, e.namadepartemen'#13#10'from pegawai a  '#13#10'left join jabatan b on a' +
      '.kodejabatan=b.kodejabatan'#13#10'left join perusahaan c on a.kodeperu' +
      'sahaan=c.kodeperusahaan'#13#10'left join divisi d on a.kodedivisi=d.ko' +
      'dedivisi'#13#10'left join departemen e on a.kodedepartemen=e.kodedepar' +
      'temen'#13#10'where a.kodejabatan=:kodejabatan'#13#10'order by nopeg,kodeperu' +
      'sahaan,kodedivisi,kodedepartemen'#13#10#13#10
    Parameters = <
      item
        Name = 'kodejabatan'
        DataType = ftString
        Size = 6
        Value = #39'0001'#39
      end>
    Left = 424
    Top = 432
  end
  object dsSelect: TDataSource
    DataSet = dtsSelect
    Left = 456
    Top = 432
  end
  object qrySet: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'kodejabatan'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update pegawai '
      'set kodejabatan=:kodejabatan'
      'where pegawaiid=:pegawaiid')
    Left = 336
    Top = 568
  end
  object qrySet2: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update pegawai '
      'set kodejabatan=null'
      'where pegawaiid=:pegawaiid')
    Left = 336
    Top = 608
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
end
