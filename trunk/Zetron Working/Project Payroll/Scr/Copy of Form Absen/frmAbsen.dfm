object fmAbsen: TfmAbsen
  Left = 0
  Top = 0
  Caption = 'Absen'
  ClientHeight = 516
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 33
    Align = alTop
    Anchors = [akTop, akRight]
    TabOrder = 0
    object lTimer: TLabel
      Left = 10
      Top = 7
      Width = 45
      Height = 16
      Caption = 'lblDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 497
    Width = 750
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 33
    Width = 483
    Height = 464
    Align = alLeft
    TabOrder = 2
    object pnlBiodata: TPanel
      Left = 1
      Top = 1
      Width = 481
      Height = 178
      Align = alTop
      Color = 16049872
      TabOrder = 0
      object lblNoPegawai: TLabel
        Left = 10
        Top = 12
        Width = 74
        Height = 16
        Caption = 'No Pegawai'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 102
        Top = 12
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblNama: TLabel
        Left = 10
        Top = 35
        Width = 35
        Height = 16
        Caption = 'Nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 102
        Top = 35
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNama: TDBText
        Left = 118
        Top = 35
        Width = 154
        Height = 16
        DataField = 'nama'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPerusahan: TLabel
        Left = 10
        Top = 57
        Width = 77
        Height = 16
        Caption = 'Perusahaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 102
        Top = 57
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaPerusahaan: TDBText
        Left = 118
        Top = 57
        Width = 154
        Height = 16
        DataField = 'namaperusahaan'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblDivisi: TLabel
        Left = 10
        Top = 80
        Width = 33
        Height = 16
        Caption = 'Divisi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 102
        Top = 80
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaDivisi: TDBText
        Left = 118
        Top = 79
        Width = 154
        Height = 16
        DataField = 'namadivisi'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblDepartemen: TLabel
        Left = 10
        Top = 103
        Width = 80
        Height = 16
        Caption = 'Departemen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 102
        Top = 103
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaDepartment: TDBText
        Left = 118
        Top = 103
        Width = 154
        Height = 16
        DataField = 'namadepartemen'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOutsourcing: TLabel
        Left = 10
        Top = 127
        Width = 79
        Height = 16
        Caption = 'OutSourcing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 102
        Top = 127
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaOutsourcing: TDBText
        Left = 118
        Top = 126
        Width = 154
        Height = 16
        DataField = 'namaoutsourcing'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblStatus: TLabel
        Left = 10
        Top = 150
        Width = 84
        Height = 16
        Caption = 'Tipe Pegawai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 102
        Top = 150
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaStatus: TDBText
        Left = 118
        Top = 150
        Width = 154
        Height = 16
        DataField = 'namastatus'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblNoPeg: TDBText
        Left = 118
        Top = 12
        Width = 154
        Height = 16
        DataField = 'nopeg'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbeFoto: TcxDBImage
        Left = 275
        Top = 11
        DataBinding.DataField = 'foto1'
        DataBinding.DataSource = dsFoto
        Enabled = False
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ReadOnly = True
        Properties.Stretch = True
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsOffice11
        Style.Color = clInfoBk
        TabOrder = 0
        Height = 161
        Width = 201
      end
    end
    object pnlAbsen: TPanel
      Left = 1
      Top = 179
      Width = 481
      Height = 284
      Align = alClient
      Color = 16049872
      TabOrder = 1
      object lblJamAbsen: TLabel
        Left = 10
        Top = 12
        Width = 70
        Height = 16
        Caption = 'Jam Absen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 98
        Top = 12
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblGroupShift: TLabel
        Left = 10
        Top = 34
        Width = 72
        Height = 16
        Caption = 'Group Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 98
        Top = 34
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeNamaGroupShift: TDBText
        Left = 114
        Top = 34
        Width = 128
        Height = 16
        DataField = 'namagroupshift'
        DataSource = dsSchedule
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblShift: TLabel
        Left = 10
        Top = 57
        Width = 30
        Height = 16
        Caption = 'Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 98
        Top = 57
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeShift: TDBText
        Left = 114
        Top = 57
        Width = 128
        Height = 16
        DataField = 'shift'
        DataSource = dsSchedule
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblJamMasuk: TLabel
        Left = 10
        Top = 80
        Width = 41
        Height = 16
        Caption = 'Masuk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 98
        Top = 80
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeDutyOn: TDBText
        Left = 114
        Top = 80
        Width = 128
        Height = 16
        DataField = 'dutyon'
        DataSource = dsSchedule
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblJamPulang: TLabel
        Left = 10
        Top = 102
        Width = 43
        Height = 16
        Caption = 'Pulang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 98
        Top = 102
        Width = 10
        Height = 16
        AutoSize = False
        Caption = ':'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbeDutyOff: TDBText
        Left = 114
        Top = 102
        Width = 128
        Height = 16
        DataField = 'dutyoff'
        DataSource = dsSchedule
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblKeterangan: TLabel
        Left = 10
        Top = 133
        Width = 76
        Height = 16
        Caption = 'Keterangan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblJamAbsenValue: TLabel
        Left = 114
        Top = 12
        Width = 70
        Height = 16
        Caption = 'Jam Absen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object cgAbsenToday: TcxGrid
    Left = 483
    Top = 33
    Width = 267
    Height = 464
    Align = alClient
    TabOrder = 3
    object cgvAbsenToday: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevAbsensToday
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#0;(#0)'
          Kind = skCount
          Position = spFooter
          FieldName = 'masuk1'
          Column = cgvAbsenTodaymasuk1
        end
        item
          Format = '#0;(#0)'
          Kind = skCount
          Position = spFooter
          FieldName = 'keluar1'
          Column = cgvAbsenTodaykeluar1
        end
        item
          Format = '#0;(#0)'
          Kind = skCount
          Position = spFooter
          FieldName = 'nama'
          Column = cgvAbsenTodaynama
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0;(#0)'
          Kind = skCount
          FieldName = 'nama'
          Column = cgvAbsenTodaynama
        end
        item
          Format = '#0;(#0)'
          Kind = skCount
          FieldName = 'masuk1'
          Column = cgvAbsenTodaymasuk1
          DisplayText = 'Masuk'
        end
        item
          Format = '#0;(#0)'
          Kind = skCount
          FieldName = 'keluar1'
          Column = cgvAbsenTodaykeluar1
          DisplayText = 'Keluar'
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore, soMultipleSelectedRecords]
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Styles.OnGetContentStyle = cgvAbsenTodayStylesGetContentStyle
      object cgvAbsenTodaynopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvAbsenTodaynama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
      object cgvAbsenTodaynamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'namadepartemen'
      end
      object cgvAbsenTodaynamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvAbsenTodaynamagroupshift: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'namagroupshift'
      end
      object cgvAbsenTodaynamajabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvAbsenTodayketabsen: TcxGridDBColumn
        Caption = 'Ket Absen'
        DataBinding.FieldName = 'ketabsen'
      end
      object cgvAbsenTodaykodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvAbsenTodayketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
      end
      object cgvAbsenTodaymasuk1: TcxGridDBColumn
        Caption = 'Masuk'
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvAbsenTodaykeluar1: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvAbsenTodayterlambat: TcxGridDBColumn
        Caption = 'Terlambat'
        DataBinding.FieldName = 'terlambat'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvAbsenTodaypulangawal: TcxGridDBColumn
        Caption = 'Pulang Awal'
        DataBinding.FieldName = 'pulangawal'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgAbsenTodayLevel1: TcxGridLevel
      GridView = cgvAbsenToday
    end
  end
  object dbeNoPeg: TcxTextEdit
    Left = 119
    Top = 44
    TabOrder = 4
    Text = 'dbeNoPeg'
    OnKeyDown = dbeNoPegKeyDown
    Width = 121
  end
  object MKeterangan: TcxMemo
    Left = 10
    Top = 367
    TabStop = False
    ParentFont = False
    Properties.ReadOnly = True
    Properties.WantReturns = False
    Style.BorderStyle = ebsUltraFlat
    Style.Color = clBtnFace
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Height = 126
    Width = 467
  end
  object dsFoto: TDataSource
    DataSet = qryFoto
    Left = 328
    Top = 120
  end
  object qryFoto: TZQuery
    Connection = dmGlobal.zconImage
    SQL.Strings = (
      'select pegawaiid,foto1'
      'from pegawaifoto')
    Params = <>
    MasterFields = 'pegawaiid'
    MasterSource = dsPegawai
    LinkedFields = 'pegawaiid'
    Left = 296
    Top = 120
  end
  object qryLembur: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from lembur a'
      'where tgl=cast(:tgl as datewithouttime)'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid like :kodegroupshiftid'
      'and shift like :shift')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object qryLock: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select pegawaiid,flagkonfirmasi,flagapprove'
      'from pegawai '
      'where nopeg=:nopeg'
      'and flagapprove='#39'1'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end>
  end
  object qryInsert: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from absen a'
      'where tgl=cast(:tgl as datewithouttime) '
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      'and pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryGetDateTime: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select cast(GetDate() as timestamp) as ServerDateTime')
    Params = <>
    Left = 560
    Top = 136
  end
  object qrySetFlagApprove: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update pegawai '
      'set flagapproveterlambat='#39'0'#39',flagapproveabsen='#39'0'#39
      'where pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryKemarin: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      ' select a.pegawaiid,b.flagapprovechecklock,e.overday'
      ' from absen a'
      ' left join pegawai b on a.pegawaiid=b.pegawaiid'
      ' left join shift c on a.shift=c.shift'
      
        ' left join groupshiftdt2 d on d.shift=a.shift and kodehari=:kode' +
        'hari and d.kodegroupshiftid=:kodegroupshiftid'
      ' left join masterjamkerja e on d.kodejamkerja=e.kodejamkerjs'
      ' where a.tgl<:tglschedule and b.nopeg=:nopeg and a.status='#39'1'#39
      ' order by a.tgl desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kodehari'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglschedule'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodehari'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglschedule'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end>
  end
  object qryLibur: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select tgl'
      'from libur'
      'where tgl=:tanggal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end>
  end
  object qrySetup: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select '
      '* from setup')
    Params = <>
    Left = 296
    Top = 184
  end
  object qrySupervisor: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select foto1'
      'from pegawaifoto'
      'where pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryCekLongShift: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from absen a'
      'where'
      'tgl =cast(:hariini as datewithouttime)'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid<>:kodegroupshiftid or shift<>:shift'
      'order by tgl desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'hariini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hariini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object qrySupervisorValidate: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select pegawaiid'
      'from personvalidation'
      'where pegawaiid = :pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object dsPegawai: TDataSource
    DataSet = qryPegawai
    Left = 328
    Top = 88
  end
  object dsSchedule: TDataSource
    DataSet = qrySelect
    Left = 328
    Top = 152
  end
  object qryPrevAbsensToday: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select'
      
        '  b.pegawaiid,b.nopeg,b.Nama,g.namadepartemen,f.namadivisi,c.Nam' +
        'aGroupShift,'
      
        '  d.NamaJabatan,a.keterangan as KetAbsen,e.kodeabsen,e.keteranga' +
        'n,a.masuk1,a.keluar1,a.terlambat,a.pulangawal'
      'from Absen a'
      'left join Pegawai b on a.PegawaiId = b.PegawaiId'
      
        'left join GroupShiftHd c on a.KodeGroupshiftId = c.KodeGroupshif' +
        'tId'
      'left join Jabatan d on b.KodeJabatan = d.KodeJabatan'
      'left join KodeAbsen e on a.KodeAbsen = e.KodeAbsen'
      'left join Divisi f on b.KodeDivisi = f.KodeDivisi'
      'left join Departemen g on b.KodeDepartemen = g.KodeDepartemen'
      
        'where (Tgl = cast(:Tgl as datewithouttime)) or (tgl=cast(:tgl as' +
        ' datewithouttime)-1 and a.shift='#39'3'#39')'
      'order by Masuk1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Tgl'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Tgl'
        ParamType = ptUnknown
      end>
  end
  object dsPrevAbsensToday: TDataSource
    DataSet = qryPrevAbsensToday
    Left = 528
    Top = 56
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Absen.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 328
    Top = 24
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Absen.cfg'
    Sorting = True
    Version = '1.3'
    Left = 360
    Top = 24
  end
  object qrySelect: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select * from'
      '('
      
        'select distinct b.pegawaiid,g.kodegroupshiftid,g.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,g.kodegroupshiftid,k.namagroupshift,j.jammulaia' +
        'bsen,j.jamakhirabsen,j.jambataslembur,f.modevalidasi'
      'from pegawai b'
      
        'left join groupshiftdt1 f on b.kodegroupshiftid=f.kodegroupshift' +
        'id and b.shift=f.shift'
      
        'left join groupshiftdt2 g on b.kodegroupshiftid=g.kodegroupshift' +
        'id and b.shift=g.shift and g.kodehari=dayofweek(cast(:tglabsen a' +
        's datewithouttime))'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'where b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'0'#39
      'union'
      
        'select distinct a.pegawaiid,a.kodegroupshiftid,a.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,g.kodegroupshiftid,k.namagroupshift,j.jammulaia' +
        'bsen,j.jamakhirabsen,j.jambataslembur,f.modevalidasi'
      'from scheduling a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      
        'left join groupshiftdt1 f on a.kodegroupshiftid=f.kodegroupshift' +
        'id and a.shift=f.shift'
      
        'left join groupshiftdt2 g on a.kodegroupshiftid=g.kodegroupshift' +
        'id and a.shift=g.shift and g.kodehari=dayofweek(cast(:tglabsen a' +
        's datewithouttime)) and g.shift=getshiftschedule(b.pegawaiid,cas' +
        't(:tglabsen as datewithouttime),cast(:jamabsen as time without t' +
        'ime zone)) and g.kodehari=dayofweek(cast(:tglabsen as datewithou' +
        'ttime))'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      'where tglschedule =cast(:tglabsen as datewithouttime)'
      'and g.shift=a.shift'
      'and b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'1'#39
      'union'
      
        'select distinct b.pegawaiid,g.kodegroupshiftid,g.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,g.kodegroupshiftid,k.namagroupshift,j.jammulaia' +
        'bsen,j.jamakhirabsen,j.jambataslembur,f.modevalidasi'
      'from pegawai b'
      
        'left join groupshiftdt1 f on b.kodegroupshiftid=f.kodegroupshift' +
        'id and b.shift=f.shift'
      
        'left join groupshiftdt2 g on b.kodegroupshiftid=g.kodegroupshift' +
        'id and g.shift=getshiftschedule(b.pegawaiid,cast(:tglabsen as da' +
        'tewithouttime),cast(:jamabsen as time without time zone)) and g.' +
        'kodehari=dayofweek(cast(:tglabsen as datewithouttime))'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'where b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'2'#39
      ') g order by dutyon desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pegawaiid'
        ParamType = ptUnknown
        Value = '1130'
      end
      item
        DataType = ftUnknown
        Name = 'jamabsen'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pegawaiid'
        ParamType = ptUnknown
        Value = '1130'
      end
      item
        DataType = ftUnknown
        Name = 'jamabsen'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsen: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select a.*,c.*,d.modevalidasi'
      'from absen a'
      
        'left join groupshiftdt1 d on a.kodegroupshiftid=d.kodegroupshift' +
        'id and a.shift=d.shift'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where'
      'a.tgl =cast(:tglabsen as datewithouttime)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=dayofweek(a.tgl)'
      'and (a.kodeabsen='#39'H'#39' or a.kodeabsen='#39'H2'#39' or a.kodeabsen='#39'HL'#39')'
      'order by a.tgl desc limit 1'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsenNotOK: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select a.*,c.*,d.modevalidasi'
      'from absen a'
      
        'left join groupshiftdt1 d on a.kodegroupshiftid=d.kodegroupshift' +
        'id and a.shift=d.shift'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where'
      'a.tgl =cast(:tglabsen as datewithouttime)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=dayofweek(a.tgl)'
      'and a.statusabsen='#39'0'#39
      'order by a.tgl desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsenOK: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select a.*,c.*,d.modevalidasi'
      'from absen a'
      
        'left join groupshiftdt1 d on a.kodegroupshiftid=d.kodegroupshift' +
        'id and a.shift=d.shift'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where'
      'a.tgl =cast(:tglabsen as datewithouttime)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=dayofweek(a.tgl)'
      'and a.statusabsen='#39'1'#39
      'order by a.tgl desc,a.shift desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 464
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object tmTimer: TTimer
    OnTimer = tmTimerTimer
    Left = 360
    Top = 56
  end
  object qryUpdateAbsen: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update absen set keluar1=:keluar1'
      'where '
      'tgl=:tgl'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'keluar1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'keluar1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object qryPegawai: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      
        'select distinct a.pegawaiid,b.noreg,c.kodeperusahaan, c.namaperu' +
        'sahaan, d.kodedivisi, d.namadivisi, e.kodedepartemen, e.namadepa' +
        'rtemen,'
      
        'f.kodeoutsourcing,f.namaoutsourcing,g.kodestatus,g.namastatus,a.' +
        'tglmasuk,'
      'a.statusschedule,a.nopeg,a.nama,a.barcode,h.*'
      'from pegawai a'
      'left join mutasi b on a.pegawaiid=b.pegawaiid'
      'left join perusahaan c on b.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on b.kodedivisi=d.kodedivisi'
      'left join departemen e on b.kodedepartemen=e.kodedepartemen'
      'left join outsourcing f on b.kodeoutsourcing=f.kodeoutsourcing'
      'left join statuskaryawan g on b.kodestatus=g.kodestatus'
      'left join pegawaiapproval h on a.pegawaiid=h.pegawaiid'
      'where a.pegawaiid = :pegawaiid'
      
        'and b.tglmulai =(select tglmulai from mutasi where pegawaiid=a.p' +
        'egawaiid and tglmulai<=cast(:tglabsen as datewithouttime) and st' +
        'atusapprove='#39'1'#39' order by tglmulai desc limit 1)'
      
        'and (a.tglkeluar>=cast(:tglabsen as datewithouttime) or a.flagke' +
        'luar='#39'0'#39')'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
  end
  object qryCekPegawai: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select distinct a.pegawaiid,a.nopeg,a.nama'
      'from pegawai a'
      'left join mutasi b on a.pegawaiid=b.pegawaiid'
      'where a.nopeg = :nopeg'
      
        'and b.tglmulai =(select tglmulai from mutasi where pegawaiid=a.p' +
        'egawaiid and tglmulai<=cast(:tglabsen as datewithouttime) and st' +
        'atusapprove='#39'1'#39' order by tglmulai desc limit 1)'
      
        'and (a.tglkeluar>cast(:tglabsen as datewithouttime) or a.flagkel' +
        'uar='#39'0'#39')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
    Left = 400
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nopeg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
  end
  object dsCekPegawai: TDataSource
    DataSet = qryCekPegawai
    Left = 432
    Top = 56
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 200
    PixelsPerInch = 96
    object stRedLight: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14540287
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object stRed: TcxStyle
      AssignedValues = [svColor]
      Color = 11579647
    end
    object stGreenLight: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13041634
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object stGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 9109445
    end
    object stYellowLight: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13041663
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object stYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 11075583
    end
    object stPurpleLight: TcxStyle
      AssignedValues = [svColor]
      Color = 16768477
    end
    object stPurple: TcxStyle
      AssignedValues = [svColor]
      Color = 16762052
    end
    object stOrange: TcxStyle
      AssignedValues = [svColor]
      Color = 6730751
    end
    object stOrangeLight: TcxStyle
      AssignedValues = [svColor]
      Color = 11786751
    end
    object stSilver: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object stSilverLight: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
  end
  object dsLembur: TDataSource
    DataSet = qryLembur
    OnDataChange = dsLemburDataChange
    Left = 464
    Top = 200
  end
  object qrySchedullingTerakhir: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select * '
      'from scheduling'
      'where pegawaiid=:pegawaiid'
      'and tglschedule<cast(:tglabsen as datewithouttime)'
      'order by tglschedule desc,shift desc'
      'limit 1')
    Params = <
      item
        DataType = ftInteger
        Name = 'pegawaiid'
        ParamType = ptUnknown
        Value = '1130'
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pegawaiid'
        ParamType = ptUnknown
        Value = '1130'
      end
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsenTerakhirSchedule: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from absen a'
      'where'
      'tgl =cast(:tglabsen as datewithouttime)'
      'and pegawaiid=:pegawaiid'
      'and shift=:shift'
      'order by tgl desc,shift desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 592
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsenTerakhirAutomatic: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from absen a'
      'where'
      'tgl <cast(:tglabsen as datewithouttime)'
      'and pegawaiid=:pegawaiid'
      'order by tgl desc, shift desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 592
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryStatusAbsenTerakhir: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from absen a'
      'where'
      'tgl <=cast(:tglabsen as datewithouttime)'
      'and pegawaiid=:pegawaiid'
      'order by tgl desc, shift desc limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 592
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tglabsen'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateFlagApproveMasuk: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update pegawaiapproval'
      'set FlagApproveLongShift='#39'0'#39',FlagApproveTerlambat='#39'0'#39','
      'FlagApproveMasukKaloAlpha='#39'0'#39',FlagApproveMasukTdkAbsenPlg='#39'0'#39
      'where pegawaiid=:pegawaiid'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateFlagApproveKeluar: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'update pegawaiapproval'
      'set FlagApprovePulangAwal='#39'0'#39
      'where pegawaiid=:pegawaiid'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
  object qryLemburTidakSchedule: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      'select *'
      'from lembur a'
      'where tgl=cast(:tgl as datewithouttime)'
      'and pegawaiid=:pegawaiid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pegawaiid'
        ParamType = ptUnknown
      end>
  end
end
