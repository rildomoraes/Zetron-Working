object fmAbsen: TfmAbsen
  Left = 0
  Top = 0
  Caption = 'Absen'
  ClientHeight = 516
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 760
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
    Width = 760
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
      Height = 176
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
        Left = 278
        Top = 12
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
        Height = 157
        Width = 198
      end
      object dbeNoPeg: TcxTextEdit
        Left = 118
        Top = 8
        BeepOnEnter = False
        TabOrder = 1
        Text = 'dbeNoPeg'
        OnKeyDown = dbeNoPegKeyDown
        Width = 83
      end
      object dbePasswordPegawai: TcxTextEdit
        Left = 207
        Top = 10
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        Properties.EchoMode = eemPassword
        TabOrder = 2
        Text = 'DBENOPEG'
        OnKeyDown = dbePasswordPegawaiKeyDown
        Width = 62
      end
    end
    object pnlAbsen: TPanel
      Left = 1
      Top = 177
      Width = 481
      Height = 286
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
      object lblJamAbsenValue: TLabel
        Left = 114
        Top = 12
        Width = 116
        Height = 16
        Caption = 'lblJamAbsenValue'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
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
      object lblModeValidasi: TLabel
        Left = 281
        Top = 12
        Width = 4
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ImgNotOK: TShape
        Left = 292
        Top = 84
        Width = 65
        Height = 65
        Brush.Color = clRed
      end
      object ImgOK: TShape
        Left = 292
        Top = 84
        Width = 65
        Height = 65
        Brush.Color = clLime
        Shape = stCircle
      end
      object MKeterangan: TcxMemo
        Left = 9
        Top = 155
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
        TabOrder = 0
        Height = 126
        Width = 467
      end
      object dbeSupervisor: TcxTextEdit
        Left = 278
        Top = 10
        BeepOnEnter = False
        TabOrder = 2
        Text = 'dbeNoPeg'
        OnKeyDown = dbeSupervisorKeyDown
        Width = 83
      end
      object dbePasswordSupervisor: TcxTextEdit
        Left = 367
        Top = 10
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        Properties.EchoMode = eemPassword
        TabOrder = 1
        Text = 'DBENOPEG'
        OnKeyDown = dbePasswordSupervisorKeyDown
        Width = 62
      end
    end
  end
  object cgAbsenToday: TcxGrid
    Left = 483
    Top = 33
    Width = 277
    Height = 464
    Align = alClient
    TabOrder = 3
    object cgvAbsenToday: TcxGridDBTableView
      OnKeyDown = cgvAbsenTodayKeyDown
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
        Caption = 'NIK'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvAbsenTodaynama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Options.Filtering = False
        Width = 125
      end
      object cgvAbsenTodayNamaJabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvAbsenTodaynamagroupshift: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'namagroupshift'
        Visible = False
        Options.Filtering = False
        Width = 59
      end
      object cgvAbsenTodayshift: TcxGridDBColumn
        Caption = ' Shift'
        DataBinding.FieldName = 'shift'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Pagi'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Siang'
            Value = '2'
          end
          item
            Description = 'Malam'
            Value = '3'
          end>
        Visible = False
        Options.Filtering = False
        Width = 30
      end
      object cgvAbsenTodaymasuk1: TcxGridDBColumn
        Caption = 'Masuk'
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 55
      end
      object cgvAbsenTodaykeluar1: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
        Options.Filtering = False
        Width = 55
      end
      object cgvAbsenTodayterlambat: TcxGridDBColumn
        Caption = 'Terlambat'
        DataBinding.FieldName = 'terlambat'
        Visible = False
        Options.Filtering = False
        Width = 53
      end
      object cgvAbsenTodayemployeeid: TcxGridDBColumn
        Caption = 'Supervisor'
        DataBinding.FieldName = 'employeeid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = cgvPegawainama
        Visible = False
        Options.Filtering = False
      end
      object cgvAbsenTodaypulangawal: TcxGridDBColumn
        Caption = 'Pulang Awal'
        DataBinding.FieldName = 'pulangawal'
      end
      object cgvAbsenTodaykodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvAbsenTodayketerangan: TcxGridDBColumn
        Caption = 'Ket Kode Absen'
        DataBinding.FieldName = 'keterangan'
      end
      object cgvAbsenTodayketabsen: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'ketabsen'
      end
    end
    object cgvPegawai: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPegawaiActive
      DataController.KeyFieldNames = 'pegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPegawaipegawaiid: TcxGridDBColumn
        Caption = 'PegawaiId'
        DataBinding.FieldName = 'pegawaiid'
      end
      object cgvPegawainopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvPegawainama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
    end
    object cgAbsenTodayLevel1: TcxGridLevel
      GridView = cgvAbsenToday
    end
  end
  object DPFPVerificationControl1: TDPFPVerificationControl
    Left = 364
    Top = 267
    Width = 48
    Height = 47
    TabOrder = 4
    OnComplete = DPFPVerificationControl1Complete
    ControlData = {
      00080000F6040000DC04000008004E0000007B00300030003000300030003000
      300030002D0030003000300030002D0030003000300030002D00300030003000
      30002D003000300030003000300030003000300030003000300030007D000000}
  end
  object dsFoto: TDataSource
    DataSet = qryFoto
    Left = 328
    Top = 120
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
  object tmTimer: TTimer
    OnTimer = tmTimerTimer
    Left = 320
    Top = 56
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
  object dsPegawaiActive: TDataSource
    DataSet = qryPegawaiActive
    Left = 432
    Top = 88
  end
  object imgIcon16: TImageList
    DrawingStyle = dsTransparent
    Left = 241
    Top = 337
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000052F6C60052F6E70052
      F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052
      F6E70052F6E70052F6E70052F6C6000000000000000000BE00C600BE00E700BE
      00E700BE00E700BE00E700BE00E700BE00E700BE00E700BE00E700BE00E700BE
      00E700BE00E700BE00E700BE00C60000000000000000FE0655C6FE0655E7FE06
      55E7FE0655E7FE0655E7FE0655E7FE0655E7FE0655E7FE0655E7FE0655E7FE06
      55E7FE0655E7FE0655E7FE0655C6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052F6BD1429FFFF814DFFFF8851
      FFFF8851FFFF8851FFFF814DFFFF814DFFFF794DFFFF794DFFFF794DFFFF734D
      FFFF6F44FFFF5E3CFEFF042EFFFF0052F6BD00BE00BD08D339FF21F3A5FF21F7
      ADFF21F7ADFF21F7ADFF21F3A5FF21F3A5FF21F39CFF21F39CFF21F39CFF21F3
      94FF18F394FF18EB84FF00CB21FF00BE00BDFE0655BDFF2333FFFF8E5CFFFF95
      60FFFF9560FFFF9560FFFF8E5CFFFF8E5CFFFF875CFFFF875CFFFF875CFFFF81
      5CFFFF7D53FFFF6C4AFFFF1336FFFE0655BD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052F6F78851FFFF8F55FFFF8F55
      FFFF8F55FFFF8851FFFF8851FFFF8851FFFF8251FFFF8251FFFF7B51FFFF7B51
      FFFF794DFFFF6F44FFFF4F3CFEFF0052F6F700BE00F721F7ADFF21FBB5FF21FB
      B5FF21FBB5FF21F7ADFF21F7ADFF21F7ADFF21F7A5FF21F7A5FF21F79CFF21F7
      9CFF21F39CFF18F394FF18EB73FF00BE00F7FE0655F7FF9560FFFF9B64FFFF9B
      64FFFF9B64FFFF9560FFFF9560FFFF9560FFFF8F60FFFF8F60FFFF8960FFFF89
      60FFFF875CFFFF7D53FFFF5F4AFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF78851FFFF8851FFFF8251
      FFFF8251FFFF8251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
      FFFF6844FFFF6844FFFF5840FEFF0052F6F700C308F721F7ADFF21F7ADFF21F7
      A5FF21F7A5FF21F7A5FF21F79CFF21F39CFF21F394FF18F394FF18F394FF18F3
      8CFF18F38CFF18F38CFF18EF7BFF00BE00F7FE0B4EF7FF9560FFFF9560FFFF8F
      60FFFF8F60FFFF8F60FFFF8960FFFF875CFFFF815CFFFF7D53FFFF7D53FFFF77
      53FFFF7753FFFF7753FFFF674EFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF78251FFFF7B51FFFF794D
      FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
      FEFF5840FEFF5840FEFF4F3CFEFF0052F6F700C308F721F7A5FF21F79CFF21F3
      9CFF21F394FF18F394FF18F394FF18F38CFF18F38CFF18F384FF18EF84FF18EF
      84FF18EF7BFF18EF7BFF18EB73FF00BE00F7FE0B4EF7FF8F60FFFF8960FFFF87
      5CFFFF815CFFFF7D53FFFF7D53FFFF7753FFFF7753FFFF7053FFFF6F4EFFFF6F
      4EFFFF674EFFFF674EFFFF5F4AFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF76F44FFFF6F44FFFF6844
      FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
      FEFF4F3CFEFF473CFEFF3D34FEFF0052F6F700C308F718F394FF18F394FF18F3
      8CFF18F38CFF18F384FF18EF84FF18EF84FF18EF7BFF18EF7BFF18EF73FF18EF
      73FF18EB73FF18EB6BFF10EB63FF00BE00F7FE0B4EF7FF7D53FFFF7D53FFFF77
      53FFFF7753FFFF7053FFFF6F4EFFFF6F4EFFFF674EFFFF674EFFFF614EFFFF61
      4EFFFF5F4AFFFF574AFFFE4D42FFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF7654DFFFF6040FEFF6040
      FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF4434FEFF3D34
      FEFF3D34FEFF3D34FEFF4555FFFF0052F6F700C308F721F384FF18EF84FF18EF
      84FF18EF7BFF18EF7BFF18EF73FF18EF73FF18EB73FF18EB6BFF10EB6BFF10EB
      63FF10EB63FF10EB63FF21EB52FF00BE00F7FE0B4EF7FF745CFFFF6F4EFFFF6F
      4EFFFF674EFFFF674EFFFF614EFFFF614EFFFF5F4AFFFF574AFFFE5442FFFE4D
      42FFFE4D42FFFE4D42FFFF5460FFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF75D62FFFF5D62FFFF5851
      FFFF5449FFFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF3C40FEFF454E
      FFFF5160FFFF6180FFFF6180FFFF0052F6F700C308F731F36BFF31F36BFF29EF
      73FF21EF73FF18EB6BFF10EB6BFF10EB63FF10EB63FF10EB63FF18EB5AFF21EB
      5AFF29EF5AFF39EF52FF39EF52FF00BE00F7FE0B4EF7FF6C6EFFFF6C6EFFFF69
      60FFFF6558FFFF574AFFFE5442FFFE4D42FFFE4D42FFFE4D42FFFF4A4BFFFF54
      59FFFF606BFFFF7089FFFF7089FFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF7645DFFFF6865FFFF6568
      FFFF6568FFFF6568FFFF5E5DFFFF5D62FFFF5D62FFFF656FFFFF656FFFFF656F
      FFFF6575FFFF6575FFFF6575FFFF0052F6F700C308F731F37BFF39F37BFF39F3
      73FF39F373FF39F373FF31F373FF31F36BFF31F36BFF39F36BFF39F36BFF39F3
      6BFF39F363FF39F363FF39F363FF00BE00F7FE0B4EF7FF756CFFFF7974FFFF74
      74FFFF7474FFFF7474FFFF6F6CFFFF6C6EFFFF6C6EFFFF747AFFFF747AFFFF74
      7AFFFF7480FFFF7480FFFF7480FFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF77561FFFF6E61FFFF6E61
      FFFF6E61FFFF6E61FFFF6E61FFFF6761FFFF6761FFFF645DFFFF645DFFFF6568
      FFFF6568FFFF6568FFFF5D62FFFF0052F6F700C308F731F78CFF31F784FF31F7
      84FF31F784FF31F784FF31F784FF31F77BFF31F77BFF31F37BFF31F37BFF39F3
      73FF39F373FF39F373FF31F36BFF00BE00F7FE0B4EF7FF8470FFFF7E70FFFF7E
      70FFFF7E70FFFF7E70FFFF7E70FFFF7870FFFF7870FFFF756CFFFF756CFFFF74
      74FFFF7474FFFF7474FFFF6C6EFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000049FBF77B61FFFF7B61FFFF7B61
      FFFF7B61FFFF7B61FFFF7561FFFF7561FFFF7561FFFF7561FFFF7561FFFF6E61
      FFFF6E61FFFF6E61FFFF5E5DFFFF0052F6F700C308F731F794FF31F794FF31F7
      94FF31F794FF31F794FF31F78CFF31F78CFF31F78CFF31F78CFF31F78CFF31F7
      84FF31F784FF31F784FF31F373FF00BE00F7FE0B4EF7FF8A70FFFF8A70FFFF8A
      70FFFF8A70FFFF8A70FFFF8470FFFF8470FFFF8470FFFF8470FFFF8470FFFF7E
      70FFFF7E70FFFF7E70FFFF6F6CFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052F6F77E59FFFF8A65FFFF8A65
      FFFF8A65FFFF8365FFFF8365FFFF8161FFFF8161FFFF7B61FFFF7B61FFFF7B61
      FFFF7B61FFFF7B61FFFF4E4DFFFF0052F6F700BE00F729F79CFF31FBA5FF31FB
      A5FF31FBA5FF31FB9CFF31FB9CFF31F79CFF31F79CFF31F794FF31F794FF31F7
      94FF31F794FF31F794FF29EB6BFF00BE00F7FE0655F7FF8C68FFFF9774FFFF97
      74FFFF9774FFFF9174FFFF9174FFFF8F70FFFF8F70FFFF8A70FFFF8A70FFFF8A
      70FFFF8A70FFFF8A70FFFF5F5CFFFE0655F70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052F6BD242EFFFF8C5DFFFF9665
      FFFF9065FFFF9065FFFF9065FFFF9065FFFF8A65FFFF8A65FFFF8A65FFFF8A65
      FFFF8A65FFFF7759FFFF1038FFFF0052F6BD00BE00BD10DB4AFF29FBADFF31FB
      B5FF31FBADFF31FBADFF31FBADFF31FBADFF31FBA5FF31FBA5FF31FBA5FF31FB
      A5FF31FBA5FF29F794FF08CF29FF00BE00BDFE0655BDFF3339FFFF996CFFFFA2
      74FFFF9D74FFFF9D74FFFF9D74FFFF9D74FFFF9774FFFF9774FFFF9774FFFF97
      74FFFF9774FFFF8668FFFF1F41FFFE0655BD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000052F6C60049FBE70040
      FFE70049FBE70053FBE70053FBE70053FBE70053FBE70053FBE70053FBE70053
      FBE70052F6E70052F6E70052F6C6000000000000000000BE00C600C308E700C7
      10E700C308E700C300E700C300E700C300E700C300E700C300E700C300E700C3
      00E700BE00E700BE00E700BE00C60000000000000000FE0655C6FE0B4EE7FF0F
      47E7FE0B4EE7FE0B57E7FE0B57E7FE0B57E7FE0B57E7FE0B57E7FE0B57E7FE0B
      57E7FE0655E7FE0655E7FE0655C6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00949494000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF009494940000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0094949400000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF003131
      3100313131003131310018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF003131
      3100CECECE002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF003131
      3100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484003131
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400000000000000000000000000848484009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400000000000000000000000000848484009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00949494000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000949494000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131
      31003131310031313100181818000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00003131
      31003131310031313100181818000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003131
      3100313131003131310018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131
      3100CECECE0021212100000000000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00003131
      3100CECECE0021212100000000000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003131
      3100CECECE002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131
      31002121210000000000000000000000000000000000000000008484840000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00003131
      31002121210000000000000000000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003131
      3100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484003131
      3100000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484003131
      3100000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484003131
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F6FA00E9EAEE00000000000000000000000000000000006D8893006D88
      93006D8893006D8893006D8893006D8893006D8893006D8893006D8893006D88
      93006D889300000000000000000000000000000000000000000000000000FAFA
      FAFFF6F6F6FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BAC8
      DC005479AB00000A3100E5E5E6000000000092DDF2007AECFE0081EDFE0081ED
      FE0081EDFE0081EDFE0081EDFE007AECFE007AECFE007AECFE007AECFE0078E9
      FC006DEBFF00548EA50000000000000000000000000000000000FBFBFBFFE6E6
      E6FFD0D0D0FFDCDCDCFFF4F4F4FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDCBDE005377
      A80051627F004B546700F5F6F600000000000000000089EEFD0099F1FD0099F1
      FD0099F1FD0099F1FD0095F0FD0095F0FD0095F0FD0089EEFD0089EEFD0089EE
      FD007AECFE0057ACC70000000000000000000000000000000000E5EAEDFF7AA3
      BCFF90969AFFA2A2A2FFCACACAFFE8E8E8FFF8F8F8FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDC9DA00547BB1005E6D
      8700454B5F00D8DCE00000000000000000000000000090E6F30090D4DD0090D4
      DD009EE5EF0099E1EB009BE6F000A1F2FD0099F1FD00A1F2FD0099F1FD0095F0
      FD0089EEFD005DC6E600000000000000000000000000FEFEFEFFA3C1D2FF298B
      D0FF3373A0FF60727EFF8F8F8FFFB1B1B1FFD0D0D0FFE4E4E4FFF2F2F2FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAE2CB00A8956000050E3000383F
      5500E2E7EB00000000000000000000000000000000007AC2CC007FB4BA008ABF
      C5008ABFC5005D8589005D85890095DAE200A1F2FD00A1F2FD00A1F2FD0099F1
      FD0089EEFD0066D6F400000000000000000000000000FAFAFAFF5C9DC5FF66A1
      CEFFC7B6B1FF5D89ADFF3C6D8EFF6B7881FF909090FFA6A6A6FFC2C2C2FFE2E2
      E2FFF8F8F8FFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B5
      A90066603E003F381400322C1000525141007E714A00AD9B6D0077684000EBF1
      F40000000000000000000000000000000000000000008CE3F300ADF4FD00B2F3
      FC00ADF4FD00ADF4FD00ADF4FD00ADF4FD00A1F2FD00A1F2FD00A1F2FD0099F1
      FD008EF0FE006ADDF800000000000000000000000000DEE6EAFF2A8ECEFFA7B8
      C8FFFFCCA7FFFCBC9EFFB7A9A9FF5882A4FF407499FF497087FF868686FFACAC
      ACFFD4D4D4FFEDEDEDFFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBDA8009286
      4E00BBB48A00D2CB9D00D2CFB0008F8865002E2B1300685D3B00EDEFEB000000
      0000000000000000000000000000000000000000000095F0FD00ADF0F900B2F3
      FC00B2F3FC00B2F3FC00ADF4FD00ADF4FD00ADF4FD00A1F2FD00ADF4FD0099F1
      FD0095F0FD0072E4FA000000000000000000FEFEFEFF99BCD0FF70809DFFEBCC
      BDFFFFDDC4FFFFD7BCFFFFD3B2FFFFD3B4FFE1C3ADFF9E9EA4FF3B6F90FF7279
      7DFF989898FFB9B9B9FFD9D9D9FFF5F5F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F2009C936000D3CF
      AD00DCDBC900D2CFB400EAE9E000EBE8D800948F710059594900000000000000
      0000000000000000000000000000000000000000000076C1CD007AA6AB007298
      9C006D8893006A9397006A9397006A969A006A969A0078AEB400A1F2FD00A1F2
      FD008EF0FE0078E9FC000000000000000000FAFAFAFF6C98B3FFE8A68CFFFFCE
      B6FFFCC5ACFFFDD2B9FFFFDCC2FFFFDDC0FFFFD8B4FFFFBA91FFCAA398FF537D
      9FFF486F87FF717F89FFB1B1B1FFE9E9E9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F2EA00A99C6100E8EA
      E300DEDED400D7D7C600D7D5C200E6E6D800CFCBAD00312B1000000000000000
      0000000000000000000000000000000000000000000095F0FD00B2F1FA00B6F4
      FD00AAE2E900A1D7DE00B2F3FC009DD9E100ADF4FD00ADF4FD00ADF4FD00A1F2
      FD0095F0FD0078E9FC000000000000000000D8E2E8FF6184AEFFF8C5B2FFFFE8
      D6FFFED8C3FFFEDAC4FFFED7BFFFFFE0C7FFFDCFB2FFFEC9AAFFFFCBA9FFFCD1
      B8FFBABBBCFF367BA1FFADADADFFE9E9E9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F5EB00BFB27100F0F3
      F600E4E5E100DCDED300D7D6C500D0CDB500D2CB9F003E381400000000000000
      0000000000000000000000000000000000000000000090E6F300B6F4FD00B6F4
      FD00B6F4FD00B6F4FD00B2F3FC00B2F3FC00B2F3FC00ADF4FD00ADF4FD00A1F2
      FD0095F0FD0072E4FA00000000000000000090B7CEFF4972DDFFEACBD2FFFFC8
      ADFFFDD5C0FFFEDBC6FFFFE5CFFFFFDFC6FFFECEB2FFFCBDA0FFFDD2B9FFFFEB
      D5FFE7DFB1FF3F7B82FFC3C3C3FFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F200C2B88600EEED
      E500EFF2F500E5E7E300E0E0D500DFDECD00BCB58E0068604000000000000000
      0000000000000000000000000000000000000000000088D3E000A1D7DE00B4E8
      EF00B6F4FD00BAF4FC00B6F4FD00A1D7DE0092C7CE00A7E7F000ADF4FD00ADF4
      FD0095F0FD0071E0F80000000000000000005F9CCEFFA2A9E9FFFEE2D6FFFFDE
      CDFFFEE0D0FFFEE2D1FFFFE8D6FFFEDDC6FFFDCCB3FFFED7C0FFFEDDC9FFFFEF
      DFFF9BBEAFFF6B8894FFD9D9D9FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFF00D2CEB700DAD2
      A900EFEFE700F4F6F900EEEEE800D6D2B30092885000BCBAB000000000000000
      00000000000000000000000000000000000000000000A4D6ED0082BCD40060A3
      BE0085B4C000BAF4FC008EBAE4002D33C1002F3AA0007AA6AB00ADF4FD00A1F2
      FD0099F1FD006EDAF400000000000000000054AFE6FFCFD6E5FFFFDBC4FFFFD0
      BAFFFFDECCFFFFEAD8FFFFECDAFFFFDCC7FFFCC9B2FFFDCFBAFFFFE8D8FFFCEC
      E0FF5C93B9FFA6AAADFFE9E9E9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDF900D4CF
      B900C4B98600BCAE6E00A69A60009F966400C2C0AC0000000000000000000000
      0000000000000000000000000000000000000000000000000000C7EBF700B6F4
      FD0068A9C300B6F4FD004858D8002E27EC00241DDF005F86A900A6EEF800A1F2
      FD0095F0FD0069CEE900000000000000000097C5DDFF77B7D9FFACC6D8FFDED8
      DAFFF0E5E0FFFAE7DBFFFFE8D9FFFFD5BDFFFFCBB2FFFFE0CFFFFFF6EAFFD6DA
      DFFF4B809FFFC7C7C7FFF5F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FF00F8F7F200F6F4EA00F3F1EA00F6F6F3000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7EB
      F70077BBD300A1F2FD007AA6E700A8A5F2007A82DF0085CEE20098EFFC0095F0
      FD0081EDFE0070BED300000000000000000000000000EBF3F7FFB4D4E6FF86B8
      D5FF80B4D5FF84B5D4FF7FAECBFFA3B4C2FFF3D3C8FFFFE5D7FFFFFBEBFF96BB
      D5FF87A1B0FFE2E2E2FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7E7F00092DDF20090E6F3008AD1EE0092DDF20090E6F30092DDF20092DD
      F20092DDF2000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFBFDFEFFF9FBFDFFB7D4E5FF85BAD7FF95C4DDFFA6CADFFF72AB
      CCFFE1E4E5FFF8F8F8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00008001800180010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8001800180010000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFC001FFFFFFFFFDFF
      C001FFFFFFFFF9FFC001FFFFFFFFF1FFC001FFFFFFBFE003C001FFFFFF9FC003
      C0018003FF8F8003C001C003C007FFFFC001E003C003FFFFC001F1FFC0018003
      C001F9FFFFFF8007C001FDFFFFFF800FC001FFFFFFFFFF1FC003FFFFFFFFFF3F
      C007FFFFFFFFFF7FC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C001C001
      FFFFC001C001C001FFFFC001C001C001D3C7C001C001C001CDBBC001C001C001
      FDBBC001C001C001FDBBC001C001C001E3BBC001C001C001DFBBC001C001C001
      D9BBC001C001C001E5C7C001C001C001FFFFC001C001C001FFFFC003C003C003
      FFFFC007C007C007FFFFC00FC00FC00FFFFFFFFFFFFFFFFFFFF3C007E1FFFFFF
      FFE10003C0FFFFFFFFC18003C03FFFFFFF838003800FC7C7FF0780038003EFBB
      E00F80038000EFBBC01F80030000E3BB803F80030000EDBB803F80030000EDBB
      803F80030000EDBB803F80030000C3C7803F80030001FFFFC07FC0030001FFFF
      E0FFE0038001FFFFFFFFF007F003FFFF00000000000000000000000000000000
      000000000000}
  end
  object imgIcon24: TImageList
    Height = 24
    Width = 24
    Left = 241
    Top = 384
    Bitmap = {
      494C010112001300040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2B095FFE090
      71FFE0987CFFDF9479FFDE9176FFDD8F74FFDC8D71FFDB8A6FFFDB876CFFDA84
      6AFFD98266FFD88064FFD87C62FFD77960FFD6775CFFD4755AFFD37157FFD36F
      53FFC45336FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9BAACFFF7CE
      BCFFFFFFFFFFFFFAF5FFFFFAF3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7F0FFFFF7
      EEFFFFF6EDFFFFF5ECFFFFF4EAFFFFF4E9FFFFF3E7FFFFF2E4FFFFF1E5FFFFFE
      FAFFF0B6A7FF985E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3B3
      97FFFFFBF8FFFFEAD8FFFFE8D7FFFFE6D2FFFFE3CEFFFFE2CCFFFFE1C8FFFFDF
      C5FFFFDDC2FFFFDBBEFFFFD9BAFFFFD5B5FFFFDBC0FFFFE6D3FFFFD1AEFFFFD6
      B5FFF9E5E1FFB9543AFF00000000000000008486860065686B005C5F62005C5F
      62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F
      62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F62005C5F
      62005C5F62005C5F62006A6C6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0A4
      85FFFFFFFEFFFFECDCFFFFF0E5FFFFFBF9FFFFF9F6FFFFE9D9FFFFE4CFFFFFE3
      CCFFFFE1C9FFFFDFC6FFFFDDC2FFFFDABCFFFFFBF8FFFFFFFFFFFFF6F0FFFFD1
      ACFFFEFCFDFFCE5C3CFF0000000000000000898E910074737500B9B9BA00B9B9
      BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9
      BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9BA00B9B9
      BA00B9B9BA00B9B9BA004D4D4F006E6F6F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFEFA6
      84FFFEFEFEFFFFEEE1FFFFFCFAFFFFFFFFFFFFFFFFFFFFF9F6FFFFE5D1FFFFE5
      D0FFFFE2CBFFFFE2C9FFFFDFC6FFFFDBBFFFFFF5EEFFFFFFFFFFFFF6EEFFFFD3
      AFFFFFFEFDFFD56343FF0000000000000000868B8E009A999B00FFFFFF00FFFF
      FF00FBFBFB00D7D7D800F7F7F700D7D7D800F7F7F700EDEDED00FFFFFF00FFFF
      FF00E8E8E900FCFCFC00F3F3F300F9F9F900EDEDED00F5F5F500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1AA
      87FFFEFFFFFFFFF0E3FFFFFCFBFFFFFFFFFFFFFFFFFFFFF9F6FFFFE7D5FFFFE7
      D3FFFFE5D0FFFFE2CBFFFFE0C8FFFFDFC6FFFFDDC1FFFFE1CAFFFFD9BAFFFFD5
      B6FFFFFEFEFFD66545FF0000000000000000868B8E009A999B00F3F3F300C6C6
      C700EDEDED00B8B7B900939394007B7A7D008786890094939500E4E4E400F2F2
      F20087878900C1C1C3008C8B8E008887890097979900CFCFD000F0F0F000DDDD
      DD00EEEEEE00FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5B0
      8FFFFFFFFFFFFFF0E6FFFFF3EAFFFFFBF9FFFFF9F5FFFFEDDFFFFFE9D8FFFFE9
      D6FFFFE5D2FFFFEADAFFFFEFE2FFFFE0C8FFFFDEC6FFFFDCC1FFFFDABDFFFFDA
      BCFFFEFAFAFFCE6344FF0000000000000000868B8E009A999B00D8D7D9004B4A
      4D00D0D0D100B9B9BB00D9D9DA00BABABB00CDCDCE00CDCCCE00F8F8F900E8E8
      E800B8B7B900E5E4E600D3D3D400C2C2C300CCCCCD00D8D8D800CFCFD0009594
      9700CAC9CA00FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9C2
      A5FFFFFCFBFFFFF2E9FFFFF1E6FFFFEFE3FFFFEDE1FFFFECDEFFFFECDCFFFFE9
      D8FFFFE8D4FFFFFCFBFFFFFFFFFFFFE4CEFFFFE2C8FFFFDEC6FFFFDCC1FFFFE0
      C8FFFAE7E2FFC1664BFF0000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAD5
      C2FFFFFCF9FFFFF4EBFFFFF2E9FFFFF1E7FFFFEFE4FFFFEEE1FFFFECDEFFFFEC
      DDFFFFE9D8FFFFEFE0FFFFEBDDFFFFE3CFFFFFE2CBFFFFE2C9FFFFDEC4FFFFE9
      D7FFF6D1C5FFAB6E5BFF0000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEC3ABFFFCE8
      DDFFFFFAF5FFFFF9F5FFFFFCFBFFFFFEFDFFFFFCFBFFFFF7F1FFFFEEE2FFFFEE
      DFFFFFECDDFFFFE9D9FFFFE8D6FFFFE7D2FFFFE5D0FFFFE2CBFFFFE0C7FFFFF4
      EAFFF1B09CFFA0857DFF0000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3BC9AFFFEF9
      F6FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFFF0
      E5FFFFEDDEFFFFECDDFFFFE9DAFFFFE9D7FFFFE7D2FFFFE5D0FFFFE2C9FFFFFC
      F8FFEA8D6FFF000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAC4A4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
      FCFFFFF0E6FFFFEDDEFFFFECDDFFFFE9DAFFFFE9D7FFFFE6D3FFFFE6D1FFFEF9
      F7FFD57858FF000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FED9C3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFFFFF2E8FFFFECDEFFFFECDDFFFFE9DAFFFFE8D6FFFFEDE0FFF8DD
      D4FFB87761FF000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBCBB5FFFDEBDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFEFEFFFFF7F0FFFFEDE0FFFFEBDBFFFFE8D7FFFFF6F0FFF5C2
      AEFFA0847AFF000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3CAABFFFEF8F4FFFEFF
      FFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFFFFFFFEFEFFFFFEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFF9F4FFFFF4ECFFFFFDFCFFF0A5
      89FF00000000000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EC9B7BFFEBA998FFEAA9
      97FFEAA796FFEAA796FFE9A694FFE9A493FFE9A898FFEEBBADFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFFFFFFE993
      74FF00000000000000000000000000000000868B8E009A999B00D7D6D8004746
      4900B0B0B1005D5C5F00BFBFC000ACACAD00B2B1B4008C8C8E00D3D3D3004847
      4A00A2A2A300B1B0B100AFAEB0006A696C00ACABAD0073727500C7C6C7009392
      9500C9C8C900FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDCCABFFF5B8
      98FFEFA989FFEA9879FFE5886AFFDC6947FFDC694BFFEFBDB1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAF8FFDB8B
      6AFF00000000000000000000000000000000868B8E009A999B00D7D7D8004948
      4C00B1B1B2005F5E6000C0C0C100ADADAE00B3B3B4008E8D8F00D3D3D5004A49
      4C00A3A3A500B1B1B300AFAFB0006C6B6E00ADACAE0074747600C7C7C8009594
      9600C9C9CA00FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFF9F6FFFFF5EEFFFFFCF7FFF6DAD3FFDE7151FFF1C5BAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF5F2FFD288
      6AFF00000000000000000000000000000000868B8E009A999B00FCFCFC00F0F0
      F000F9F9F900F2F1F200F9F9F900F8F8F800F9F9F900F5F5F500FCFCFC00F0F0
      F000F7F7F700F8F8F900F8F8F900F3F3F300F8F8F800F3F3F300FAFAFA00F6F6
      F600FBFBFB00FFFFFF005B5B5D006C6D6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF6EEFFFFE2CCFFFFE0C6FFF9E0D8FFE48161FFF1C4B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4F0FFD089
      6BFF000000000000000000000000000000009095980058575900868587008685
      8700868587008685870086858700868587008685870086858700868587008685
      8700868587008685870086858700868587008685870086858700868587008685
      8700868587008685870047474A00737374000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF9F1FFFFEADBFFFBEFE9FFE88C6AFFEEBBAFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF9FFDD93
      73FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFAF4FFFEFCFCFFEE9F7BFFEBAD9EFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFF0A7
      86FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFF8C3A5FFE9A18DFFFBF2F0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C0
      A6FF95847BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2B69AFFF0B293FFF8C9
      A9FFF6C6A5FFF5C2A3FFF4BFA0FFF3BC9DFFF3BA9AFFF2B798FFF0B495FFF0A9
      86FFD4AF9DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFCDBFBFFFBEA8A8FFE0D7D7FFF7F5F5FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F8319000F8319000F8319000F8319000F83
      19000F8319000F8319000F831900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F3F3FFCAB7B6FFFAEFE9FFDCC9C6FFC7B4B3FFCCBC
      BCFFD2C4C4FFDCD2D2FFE6DFDFFFECE7E7FFF0ECECFFF5F2F2FFF8F7F7FFFBFA
      FAFFFDFCFCFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F83190083E3A10087E6A60088E7A80084E4
      A30080E19D007BDE97000F831900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F7FCFF5D75
      CCFF0A3BC1FF1D48C5FF7186D3FFEAECF7FF0000000000000000000000000000
      00000000000000000000DED5D5FFDCCCC8FFFEF1EDFFFDEAE7FFFBEBE7FFF3E8
      E3FFE7D3CFFFD4B3B1FFC6A2A2FFC3A5A4FFC5ACACFFC6AFAFFFC3ADAEFF9A8A
      A1FF817A9FFF78749FFF7885C5FF000000000000000000000000000000000000
      00000000000000000000000000000F83190083E3A1000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7B78EFFBEAB7CFFBFAC7EFFBFAD7EFFBFAD7EFFBFAD7EFFBFAD
      7EFFBFAD7EFFBFAD7EFFBFAD7EFFBFAD7EFFBFAD7EFFBFAC7EFFBDAA7AFFE6DE
      CCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C9BD9FF0C43
      CDFF145DE7FF095FF9FF0051EEFF5B77D0FF0000000000000000000000000000
      000000000000FEFDFDFFC8B8B7FFF5E7E2FFF1D6D4FFEDD2D0FFF5DFDDFFF8E6
      E3FFFEEEEBFFFFF3EDFFFCE8E3FFF1D4D1FFE8C6C3FFE5C2C1FFE7C8C7FFE9CE
      CDFFEED3D2FFC7ADAFFF295CD0FF000000000000000000000000000000000000
      00000000000000000000000000000F83190080E29E000F83190083E3A10087E6
      A60088E7A80084E4A30080E19D007BDE97000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B19B63FFDBD4BEFFDBD4BEFFDBD4BEFFDBD4BEFFD7D2BCFFD1D0
      B9FFD1D0B9FFD1D0B9FFD1D0B9FFD1D0B9FFD1D0B9FFD8D3BCFFD1C7AAFFD4C8
      A9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C9E9FF1746C6FF135B
      E5FF075BF4FF0058FFFF026AFFFF1E6AD5FF0000000000000000000000000000
      000000000000EAE4E4FFCFBDBBFFFFF0ECFFEAC9C7FFE2BAB9FFE5C2C0FFEDD0
      CEFFF2DAD8FFF5E1DEFFF9E8E5FFFEEFEBFFFDEEE9FFF8E2DDFFF0D2CEFFEAC8
      C5FFEECFCDFFC0ACB6FF296FDEFF000000000000000000000000000000000000
      00000000000000000000000000000F8319007DDF99000F83190083E3A10051DB
      7F0053DC81004DD9790047D471007BDE97000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B39E66FFDFD8C5FFDFD8C5FFDFD8C5FFDFD8C5FF99B99FFF8AB2
      98FF92B69CFF92B69CFF92B69CFF93B69CFF81AE93FFAAC0A8FFD5CBB0FFD6CB
      ADFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E3F4FF3355C4FF0E56E4FF065C
      F9FF005AFFFF0056FFFF0685FFFF2C78D1FF0000000000000000000000000000
      000000000000CCBDBDFFEFDFDBFFF7E2DEFFF0D8D6FFF2DBD8FFEACDCAFFE3BE
      BCFFE5C0BDFFEACCC9FFF0D8D5FFF3DEDBFFF5E2DFFFF9E8E4FFFCEDEAFFFEF3
      EFFFF7E2E0FFC1ACB5FF2E83DCFF000000000000000000000000000000000000
      00000000000000000000000000000F83190078DD93000F83190080E29E004CD8
      78004DD8780049D6740044D26D0079DD95000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B39E68FFE2DDCBFFE2DDCBFFE2DDCBFFE2DDCBFF9ABBA3FFD1D5
      C1FFE2DDCBFFE2DDCBFFE2DDCBFFE2DDCBFFBFCDB8FFACC3ACFFD8CFB6FFD7CC
      AFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFDFFEEF0F8FFF3F4FAFF00000000000000000000
      0000000000000000000000000000F0F1F9FF4A65C7FF0A55E5FF0361FFFF005E
      FFFF0060FFFF0372FDFF116BD5FF9BA9DEFF0000000000000000000000000000
      0000F0ECECFFCBB9B7FFFFF3EFFFEBCAC9FFE1B8B7FFE9C8C6FFF1D9D6FFF3DD
      DCFFEED2D0FFE7C3C1FFE5C0BDFFE9C7C4FFEED2D0FFF0D8D5FFF6E3E1FFFFF9
      F7FFF7E4E3FFC8B3B9FF3A71BBFF000000000000000000000000000000000000
      00000000000000000000000000000F83190074D98E000F8319007DDF990045D3
      6F0046D4700043D26D003FCF670077DB92000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5A06AFFE7E1D2FFE7E1D2FFE7E1D2FFE7E1D2FF9DBEA6FFD5D9
      C7FFE7E1D2FFE7E1D2FFE7E1D2FFE7E1D2FFC3D0BDFFAFC6B1FFDCD3BBFFD7CC
      B0FF000000000000000000000000000000000000000000000000000000000000
      0000CBD1ECFF7D8FD5FF4C6CD0FF3A62D2FF4166D0FF5974D0FF95A2DBFFEDEF
      F8FF0000000000000000E8EAF6FF4E69C9FF045CE9FF0070FFFF006BFFFF0071
      FFFF0276F6FF2062CEFFAEB6E2FF000000000000000000000000000000000000
      0000B6ABB8FFEADDDAFFFCEAE6FFF1D8D6FFF0D5D2FFE8C5C5FFE4BCBBFFE9C5
      C3FFF4DCD9FFF7E4E1FFF3DCD9FFEBCCCAFFE8C2BFFFF0D4D0FFFEF5F1FFFBF2
      F0FFF4DBD9FFD1B9BAFFA8A3C1FF000000000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319006FD788000F83190078DD93003ECF
      66003FCF67003DCE65003ACC600074D98D000F8319000F8319000F8319000F83
      19000F8319000F83190000000000000000000000000000000000000000000000
      000000000000B6A26DFFEAE6D9FFEAE6D9FFEAE6D9FFEAE6D9FF9FC0AAFFD8DD
      CDFFEAE6D9FFEAE6D9FFD9D1B8FFEAE5D8FFC6D3C2FFB1C9B5FFDFD7C2FFD8CD
      B1FF000000000000000000000000000000000000000000000000000000007789
      D1FF134BD3FF0054F4FF005DFCFF005FFEFF005EFEFF005CF9FF0055EAFF2D58
      C6FFCBD0ECFFD9DDF1FF3352C1FF0462E9FF007FFFFF007AFFFF0187FFFF047B
      EAFF3B65C7FFD5D9F0FF00000000000000000000000000000000000000007B86
      C5FFA79DAFFFFDF3EFFFECCBC8FFE5BDBAFFEACCC9FFF2DAD7FFF2DCD8FFEED1
      CEFFEED0CCFFEED0CCFFF4DCD8FFFBEBE7FFFCECE8FFFEF0EBFFFFFBF9FFF6E7
      E6FFF3DAD9FFDAC2C1FFDBD1D0FF000000000F8319005ECB72005ECB72005ECB
      720061CD760064CF790067D17D0069D280006BD382000F83190074D98E0038CA
      5D0038CA5E0036CA5C0034C8590070D789000F8319005ECB72005ECB72005ECB
      72005ECB72000F83190000000000000000000000000000000000000000000000
      000000000000B8A36EFFEEEBE0FFEEEAE0FFEEEAE0FFEEEBE0FFA1C2ADFFD4D8
      BBFFE5E0C2FFE9E5D0FF987452FF9F865EFFB2BB9EFFB4CCBAFFE3DBC8FFD8CD
      B1FF0000000000000000000000000000000000000000FBFBFDFF7688D2FF004A
      E2FF0970FFFF3D85E4FF7696BDFF899AADFF6D91BFFF327AE2FF046AFEFF0069
      F9FF225DCBFF2D4CBFFF0A5AE2FF018CFFFF0191FFFF028AF6FF1469D4FF677E
      CDFFE7E9F6FF0000000000000000000000000000000000000000000000004E66
      B3FFE8DEDBFFFFF9F6FFF6E2DFFFEED1CEFFE7C2BFFFE3BCB9FFE9C6C3FFF2DA
      D6FFFCEEEAFFF8E8E5FFF2D7D4FFEDCECBFFF2D9D5FFFFF4F2FFFEFAF9FFF2DE
      DCFFF4DCDAFFDFC7C6FFD6CACAFF000000000F8319005ECB72000F8319000F83
      19000F8319000F8319000F8319000F8319000F8319000F8319006FD7880030C6
      540031C6550030C553002DC450006CD483000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000000000000000000000000000000
      000000000000B9A471FFF2F0E6FFF2F0E6FFF1EDE0FFE1DAAFFF9AB990FFD7DC
      C0FFEAE6CDFFE5DFBBFFBDAD77FFF1EFEEFFC3BCAEFFA9A17CFFDCD4BCFFD6CA
      ADFF000000000000000000000000000000000000000094A1DAFF014DE3FF2685
      F8FFA5ACA3FFEBBA67FFF8BC59FFF5BD5CFFF7C05DFFE9BF6AFF8F9EA5FF0E6D
      F6FF017DFEFF1284EBFF0A88F8FF0196F5FF076DD8FF597ACDFFC8CDEBFF0000
      00000000000000000000000000000000000000000000000000001753D2FFB2AB
      B4FFFEFBF8FFF5E0DDFFF8E7E4FFFCF2EEFFFAECE9FFF3DCD9FFE9C9C6FFE8C3
      C0FFEDD0CEFFF5E0DFFFFCEEEBFFFBEEEAFFF8E6E2FFFFF7F5FFFBF4F3FFF0D9
      D7FFF5DFDDFFE5CECCFFD1C3C3FF000000000F8319005ECB72000F8319005ECB
      72005ECB72005ECB720061CD760064CF790067D17D0069D280006BD3820029C1
      4B002AC14B0029C04A0027BF480068D17E0065D07B0062CE77005FCC73005ECB
      72005ECB72005ECB72005ECB72000F8319000000000000000000000000000000
      000000000000BAA673FFF7F4EEFFF5F2E8FFD2C385FFE7DCC2FFBFD6C7FF90BC
      A7FF93BDA8FF93BDA8FF8B9F79FFFCFCFBFFC9BDA7FFA27737FFA8864CFFD4C6
      A7FF00000000000000000000000000000000DEE1F3FF1D53D3FF1981FEFFB4B6
      9CFFF7C15BFFE6BC68FFDFBD6EFFDDBE71FFDDBF73FFE3C370FFF2CA68FF8CA1
      A6FF0373FDFF0596FDFF0863CEFF617FCFFFC3C9EAFFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000000000006985BAFFEDE6
      E4FFFFFEFCFFF7E5E3FFEFD4D1FFEED3D1FFF4E0DDFFFCF0ECFFFDF7F4FFFAEE
      EBFFF2DBD8FFECCDCAFFECCDCAFFF2D9D6FFFDEFEDFFFFFFFDFFF7EBE9FFF1DA
      D7FFF6E1DEFFEBD5D3FFCDBCBCFF000000000F8319005ECB72000F8319005ECB
      720016B4320016B4320016B4320019B636001DB83B0026BC44002ABE480033C1
      500033C1500032C1500031C04E002ABD470023BA400019B5350016B4320016B4
      320016B4320016B432005ECB72000F8319000000000000000000000000000000
      000000000000BBA774FFFBF9F4FFD8C69AFFDAC49DFFD8C096FFF5F0E5FFFBF9
      F4FFFBF9F4FFFBF9F4FFE6DFCDFFAA8C5FFF915003FFA86A12FFB17C36FFC6B1
      90FF0000000000000000000000000000000092A2DCFF0065EFFF71A7CAFFEBC5
      6BFFDFC271FFDBC378FFDAC57BFFDAC77DFFD8C87FFFD6C87FFFDACB7DFFDACA
      7DFF4087D4FF0087FFFF1069D0FFC9CDEBFF0000000000000000000000000000
      000000000000000000000000000000000000000000002468D1FFC5BABDFFFFFE
      FCFFF6E2E0FFF8E7E5FFFCF4F1FFF8E9E7FFF1D9D6FFECCFCDFFEFD8D5FFF8EA
      E7FFFDF7F5FFFDF3F0FFF5E0DDFFF1D5D2FFFCF1EEFFFFFEFDFFF5E3E1FFF2DB
      D9FFF6E1DFFFF1DCD9FFCAB7B7FFFCFBFBFF0F83190069CE7B000F8319005ECB
      720016B4320016B4320024B83E0035BD4D0040C1570043C35B0045C45D0046C5
      5E0046C55E0045C55D0044C45C0043C25A0041C2580041C258003ABF510027B9
      410016B4320016B432005ECB72000F8319000000000000000000000000000000
      000000000000BCA875FFE0CDABFFDDC8A0FFEDDEC9FFE9D7BEFFCAAB7AFFFCFA
      F6FFFEFDFBFFFEFDFBFFFEFDFAFF9E764CFF9E5E1EFF975001FFA96A12FFA575
      32FFEEE8DFFF0000000000000000000000005276D1FF0C83FAFFACBAA0FFE5CB
      74FFDBCD8CFFDCD295FFDBD397FFD9D499FFD9D59AFFD9D69AFFD5D492FFDBD6
      83FF75A1B8FF0084FFFF0995EAFF93A5DCFF0000000000000000000000000000
      0000000000000000000000000000000000005376CFFF7E90B1FFF6F2F1FFFFFC
      FDFFFBF1EFFFF2DEDDFFF0D8D7FFF6E6E5FFFCF3F1FFFBF0EEFFF2DDDBFFEBCD
      CCFFECD0CEFFF4E2E0FFFCF2F0FFFFF6F4FFFFFDFAFFFCF7F6FFF3DFDCFFF3DE
      DBFFF7E2E0FFF5E2DFFFCAB6B5FFF7F4F4FF0F83190061CC74000F8319005ECB
      72002BBB450046C35C004CC562004CC562004CC562004CC562004CC562004CC5
      62004CC562004CC562004CC562004CC562004CC562004CC562004CC562004CC5
      620046C35C002BBB45005ECB72000F8319000000000000000000000000000000
      0000FDFDFCFFB18E5BFFE9D7BDFFE5D2B1FFCFAD79FFDCC19BFFD1B28AFFD1B5
      8BFFFEFEFEFFFEFEFEFFFEFEFEFFEFEBE2FF925C2AFF924B0EFF975000FFA86A
      13FFA5804CFFFDFDFCFF00000000000000001F58CCFF1E94F7FFBBC498FFE4DA
      97FFE0DFB3FFDFDFB1FFDFE0B2FFDDE1B3FFDDE2B4FFDDE3B6FFDCE4B8FFDCE2
      9BFF85B1B1FF0083FFFF08A2F4FF7C97D7FF0000000000000000000000000000
      000000000000000000000000000000000000576BACFFDCD4D5FFFFFFFFFFF5E0
      E0FFF4E2E1FFFDF7F6FFFBF3F2FFF3E0DFFFEFD6D5FFF4E1DFFFFCF2F0FFFCF4
      F2FFF3E1E0FFEBCDCDFFEBCCCCFFFAEDEBFFFFFFFFFFFAF0EFFFF4DEDBFFF5E0
      DDFFF6E2E0FFFAE6E3FFCDB8B7FFF1EDEDFF0F8319000F8319000F83190069CE
      7B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C9
      6B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C9
      6B0057C96B0057C96B0069CE7B000F831900000000000000000000000000FBF9
      F7FFD5BCAAFFDBC5A4FFE6D0B4FFCCAD78FFF9F5EFFFD8BF96FFE1C9A9FFCEAE
      84FFDAC5A2FFFEFEFEFFFEFEFEFFFFFFFFFFCCBCA7FF965823FF873A00FF9750
      01FFA66810FFC3AC8DFF00000000000000001D5BCCFF1898F7FFB5C9A7FFECEB
      BAFFE4E9C8FFE2E9C7FFE3EAC7FFE2EAC9FFE1EBC9FFE1ECCAFFE2EFCEFFE4EE
      BAFF7AB0BCFF0089FFFF07A5F5FF7994D7FF0000000000000000000000000000
      0000000000000000000000000000000000007B7B9EFFEDE7E7FFFFFFFFFFFAF3
      F1FFF1DDDCFFEDD4D3FFF4E2E1FFFCF5F3FFFCF7F5FFF5E6E4FFEED7D6FFF2DE
      DDFFFAF1EFFFFCF4F3FFF6E7E7FFFDF6F4FFFFFFFEFFF8EAE8FFF5DFDCFFF6E2
      DFFFF6E3E0FFFDEAE6FFD2BCBAFFE9E2E2FF00000000000000000F83190061CC
      74006ACF7D006ACF7D006ACF7D006ACF7D006ACF7D006ACF7D0075D2850063CC
      760063CC760063CC760063CC760075D285006ACF7D006ACF7D006ACF7D006ACF
      7D006ACF7D006ACF7D0061CC74000F8319000000000000000000F4EEEAFFD5BA
      A6FFEEE0CFFFDEC9AAFFDDC49FFFD1BB86FFEBE0CBFFFAF8F3FFD3B688FFE4CD
      B1FFC8A476FFE7D9C3FFFFFFFFFFFFFFFFFFF4F2E0FF997443FF975523FF8437
      00FF975000FFAB8654FF00000000000000004775D0FF0593F9FF9DC7BCFFF5F4
      CBFFEAF2D9FFE8F2D7FFE8F2D8FFE8F2DAFFE7F3DAFFE7F3DBFFEAF7DFFFE9F5
      C9FF589FCEFF0096FFFF08A2EEFF8B9FDAFF0000000000000000000000000000
      0000000000000000000000000000000000005175C5FF8997AFFFF2EEEEFFFFFF
      FFFFFFFFFEFFF9F1F1FFF0DBDAFFECD2D1FFF0DDDBFFFAF0EFFFFDF8F7FFF6E8
      E7FFEED7D6FFF0DBD9FFFCF4F2FFFFFFFEFFFEFDFCFFF7E6E3FFF5E1DEFFF7E3
      E1FFF7E4E1FFFCECE7FFDFCAC7FFDCD2D2FF00000000000000000F8319000F83
      19000F8319000F8319000F8319000F8319000F8319000F8319006DD07F006ED0
      7F006ED07F006ED07F006ED07F006DD07F000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000000000000000000E9DBD5FFD4B8
      A5FFCFAF91FFD2B58DFFEBD8C2FFE9DABCFFE9D8BEFFDEC6A2FFD9C199FFD2B3
      83FFEAD7BFFFC4A06DFFEEE4D7FFFEFEFEFFE5DFB4FFF5F3EAFF8E5B30FF7A2C
      04FF956841FFEFE9E2FF00000000000000008A9EDAFF008AF0FF4EB5DDFFEFF3
      CFFFF9FCF0FFEFF9EBFFF0F9EAFFF0F9EBFFF0F9EBFFEFF9EDFFFFFFEFFFBFDB
      D0FF1487EAFF01B1FFFF0A7ED8FFBBC2E7FF0000000000000000000000000000
      000000000000000000000000000000000000000000001488E0FF989DA7FFEEEA
      EAFFFFFFFFFFFFFFFFFFFFFEFFFFF8F0EFFFF0DDDCFFEBD1D0FFF0DADAFFFAF1
      EFFFFDF9F8FFF6E8E8FFF9EDECFFFFFFFFFFFCF8F7FFF7E4E1FFF7E3DFFFF7E5
      E2FFF7E5E2FFFCEBE7FFEBD8D5FFD0C1C1FF0000000000000000000000000000
      00000000000000000000000000000F83190072D184000F8319006FD0800078D3
      880078D3880078D3880078D388006FD080000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFCFAFFB2945FFFDCC6A1FFD1B282FFD6BA8BFFE7D2B8FFF1E1D1FFF1E2
      D2FFF1E2D2FFE4CFB4FFCAA879FFE4DBB4FFF2EFD9FFFEFEFEFFE5DECFFFB8A2
      81FFFCFCFBFF000000000000000000000000D2D5EFFF1874D5FF04A7FCFF80CA
      D2FFFAFEDDFFFDFFF5FFF9FEF7FFF8FDF7FFFBFFF8FFFFFFF5FFDBEBDCFF3B96
      E0FF009EFEFF05ABF4FF4268C7FFF5F5FBFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000012A2EEFF9AA1
      A3FFE1D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F3F2FFF0DCDCFFEACF
      CFFFEFDADAFFF9EEEFFFFFFDFDFFFFFFFFFFFEF7F5FFFAE7E3FFFAE7E4FFFBE9
      E6FFFCECE8FFFFF0EDFFFDEDEAFFCCBABAFF0000000000000000000000000000
      00000000000000000000000000000F83190075D286000F83190071D1820084D7
      920084D7920084D7920084D7920071D182000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDA978FFFFFFFFFFFFFFFFFFEFE7D8FFD1BB86FFC6A668FFD2B3
      85FFE3CCAEFFEAD8BEFFE8D8B9FFD4BB8CFFFCFAF7FFFFFFFFFFF2EEE4FFD7CC
      B1FF00000000000000000000000000000000000000007E92D6FF0191EAFF08B1
      FDFF5ABCD6FFB4E1D0FFD9F3DCFFDEF6E0FFCFEEDCFF97C8D4FF2E95E2FF00A1
      FFFF05BEFFFF1F71D0FFCED2EEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000DAF
      F8FF7AA0AEFFC7BAB9FFF9F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFF8F1
      F1FFEED9D9FFEED8D7FFFEFBFBFFFDFDFDFFECDFDDFFEDD9D5FFF1DEDBFFEEDD
      D9FFEBD7D4FFE4CFCDFFDCC7C5FFBDA6A6FF0000000000000000000000000000
      00000000000000000000000000000F83190076D387000F83190072D184008FDB
      9C008FDB9C008FDB9C008FDB9C0072D184000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDA978FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFF8F7ECFFEBE4
      C8FFDECDA9FFD7BE94FFD3B485FFDDC29FFFD9C198FFFEFEFDFFF2EEE4FFDACF
      B4FF0000000000000000000000000000000000000000F0F1F9FF5677CDFF0598
      EBFF00B8FFFF06ACF9FF25A8E7FF2EA5E3FF169CEAFF009CFAFF00B7FFFF06BD
      FBFF1172D2FFAAB3E2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000027A0DBFF8A98A8FFD9D1D2FFF7F5F5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFCFCFFFBF5F5FFFFFFFFFFE8E2E2FFB9A4A4FFCEBEBEFFCBBCBBFFCDBE
      BDFFD1C3C3FFD7CBCBFFE0D6D6FFECE7E7FF0000000000000000000000000000
      00000000000000000000000000000F83190064CD77000F83190075D286009ADE
      A6009ADEA6009ADEA6009ADEA60075D286000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCA977FFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFFFEFEFEFFFEFEFEFFFDFCFAFFEDE3D1FFDCC7A2FFE9DDC8FFF2EEE4FFD7CC
      AFFF000000000000000000000000000000000000000000000000F0F1F9FF7489
      D3FF0A71D3FF02A1EEFF00B5FFFF00BCFFFF00BDFFFF03B5F9FF0594E5FF336D
      CDFFBBC1E7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001B4FDFF38A3CDFF7C9FB2FFC8C4C7FFEDE7E7FFFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4C7C7FFDAD0D0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F8319000F8319000F83190076D38700A6E2
      B000A6E2B000A6E2B000A6E2B00076D387000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CABB94FFC4B286FFC5B48AFFC5B48AFFC5B48AFFC5B48AFFC5B4
      8AFFC5B48AFFC5B48AFFC5B48AFFC5B488FFC4B387FFC4B286FFC2AF82FFE8E1
      D1FF000000000000000000000000000000000000000000000000000000000000
      0000D2D6EFFF889AD9FF3666C8FF0A4FC1FF1B57C3FF587BCEFFA2AEE0FFEBEC
      F8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C56C1FF687AB9FFA39AB1FFC3B3
      B6FFD3C5C5FFE6E0E0FFF7F5F5FFC7B7B7FFE8E1E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F83190064CD770078D3
      880078D3880078D3880078D3880064CD77000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F4
      F4FFEAE3E3FFD7CBCBFFC3B1B1FFC2AFAFFFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000F83190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFFAFAFAFFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFFAEFFF63D763FFF7FCF7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDEEBDFF5AD4
      5AFF52D252FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFA
      F8FFE8DACAFFE2D0BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1
      BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE2D1BCFFE7D9
      C9FFFCFAF8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFABA6FF98837EFFAEADADFFD9D9D9FFF5F5
      F5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CE59CFF10C210FF00BE00FFF7FCF7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7F6E7FF18C418FF00C718FF10DB
      5AFF08CF31FF7BDD7BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EADDCEFFA168
      23FF995801FF9B5A01FF9B5A00FF9B5A01FF9B5A01FF9B5A00FF9B5A01FF9B5A
      00FF9B5A01FF9B5A01FF9B5A01FF9B5A00FF9B5A01FF9B5A01FF9B5A00FF9958
      01FFA16823FFEADDCEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9E2E0FFEF8F6BFFF39874FFD17355FF976456FF968F
      8DFFCECECEFFF8F8F8FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6F4
      D6FF42CE42FF08CF29FF21F3A5FF00BE00FFF7FCF7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEF2DEFF00C710FF18EF94FF21F3
      9CFF21F7ADFF00C718FFB5ECB5FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFAF8FFA16823FFAB70
      16FFC69756FFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C
      5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC99C5CFFC697
      56FFAB7015FFA16823FFFCFAF8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1BFBAFFF39A75FFFBB18CFFFEB38EFFFBA782FFE77F
      5DFF946256FFADADADFFF1F1F1FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FCF7FF7BDD7BFF00C3
      08FF18E37BFF29F7BDFF21F7B5FF00BE00FFF7FCF7FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5E8
      A5FF5AD45AFF84DF84FFB5ECB5FFDEF5DEFFD6F3D6FF00C710FF10E773FF10EB
      7BFF21F7B5FF21EF94FF10C610FFDEF6DEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000E8DACAFF9C5C01FFBD8B
      41FFC89A5FFFCFA56FFFD8B487FFD9B589FFD9B589FFD9B589FFD9B589FFD9B5
      89FFD9B589FFD9B589FFD9B589FFD9B589FFD9B589FFD8B487FFCFA56FFFC89A
      5FFFBD8B41FF9C5C01FFE8DBCAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBB6B1FFF3A57FFFE6815DFFE77B57FFF79F7AFFFBA5
      81FFF99974FFAB5E48FFACACACFFF9F9F9FF0000000000000000000000000000
      000000000000000000000000000000000000BDEEBDFF21C621FF10D742FF21F3
      ADFF21F3A5FF21F3ADFF21F7ADFF00BE00FFF7FCF7FF00000000000000000000
      000000000000000000000000000000000000F7FCF7FF94E394FF21C621FF00C3
      18FF18E373FF10DB52FF08CF31FF00C310FF08C008FF00C710FF08DF5AFF08DF
      63FF21F3ADFF21F3ADFF18E373FF29C829FFF7FCF7FF00000000000000000000
      00000000000000000000000000000000000000000000E2D1BCFFA06201FFB078
      2AFFBC8B4BFFEBD6BAFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF3E2
      CCFFF2E1CBFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFECD6BAFFBC8B
      4BFFB0782AFFA06200FFE3D2BCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFB9B4FFF8BA93FFF1A47FFFE88964FFDD633FFFED83
      5FFFFAA07AFFF9936FFF936458FFDBDBDBFF0000000000000000000000000000
      00000000000000000000E7F8E7FF5AD45AFF00C718FF21EB94FF21F3A5FF18EB
      94FF18EF9CFF21F3A5FF21F3ADFF00BE00FF7BDD7BFFC6F0C6FFF7FCF7FF0000
      000000000000000000000000000000000000A5E8A5FF00C308FF00CB39FF00CF
      42FF21F3ADFF18EB9CFF21EFA5FF21F3ADFF21F3ADFF21EF94FF18F39CFF18EF
      94FF21F3A5FF21F3A5FF21F3ADFF08D74AFF5AD45AFF00000000000000000000
      00000000000000000000000000000000000000000000E3D2BCFFA36502FFC494
      4EFFCEA56EFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2
      CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFCEA5
      6EFFC4944EFFA36502FFE3D2BCFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFE9E9E9FFE8E8
      E8FFFEFEFEFF00000000F1EFEEFFE88E73FFEE9772FFE98A65FFE1704CFFD754
      31FFF5936FFFFA9B77FFCF6D4FFFC6C6C6FF0000000000000000000000000000
      00000000000094E394FF10C210FF10DF63FF21F3ADFF18E78CFF18E78CFF18EB
      94FF18EF9CFF21EFA5FF21F7B5FF21F3A5FF18E373FF08D342FF08C40FFF39CC
      39FF7BDD7BFFBDEEBDFFF7FCF7FF00000000A5E8A5FF00C310FF08D352FF08D3
      52FF21F3ADFF18E78CFF18EB8CFF18EB94FF18EB94FF18EB94FF18EB9CFF21EF
      A5FF21EF9CFF21EF9CFF21EFA5FF21EFA5FF08CB21FF8CE18CFF000000000000
      00000000000000000000000000000000000000000000E3D2BCFFA6690BFFC291
      4BFFCDA268FFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF3E2
      CCFFF2E1CBFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFCDA2
      68FFC2914BFFA6690BFFE4D3BDFF000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEFFFB29B96FFBA7660FF907E
      79FFEAEAEAFF000000000000000000000000DAB4AAFFE57955FFE1704CFFD755
      32FFF08662FFFA9A76FFDA7454FFC4C4C4FF000000000000000000000000DEF6
      DEFF39CC39FF08CF31FF21F3A5FF18EB8CFF10DF73FF18E37BFF18E784FF18E7
      8CFF18EB94FF21EF9CFF21EFA5FF21F3ADFF21F3ADFF21F7B5FF29F7BDFF21EF
      9CFF18E36BFF08D339FF00C308FFA5E8A5FFA5E8A5FF00C310FF10D763FF08D7
      63FF21F3ADFF18EB94FF18E78CFF18E78CFF18E78CFF18E78CFF18EB94FF18EB
      94FF18EB94FF18EB94FF18EB9CFF21EF9CFF18EB8CFF00C308FFBDEEBDFF0000
      00000000000000000000000000000000000000000000E3D2BDFFA96D14FFC18F
      47FFCB9F62FFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF3E2
      CCFFF2E1CBFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFCB9F
      62FFC18E47FFA96D14FFE4D3BEFF000000000000000000000000000000000000
      00000000000000000000F9F9F9FFC7C2C0FFBE745DFFF3A47EFFFFD2AAFFB372
      5DFFDFDFDFFF00000000000000000000000000000000CB988AFFE2714CFFDB5C
      39FFF99C77FFFA9975FFD97052FFBEBEBEFF0000000000000000BDEEBDFF10C2
      10FF18E373FF21F3ADFF10DB6BFF10DB6BFF10DF73FF10E37BFF18E384FF18E7
      8CFF18EB8CFF18EB94FF18EF9CFF21EFA5FF21EFA5FF21F3A5FF21F3A5FF21EF
      A5FF21EF9CFF21EFA5FF10DF63FF94E394FFA5E8A5FF00C718FF10DF73FF10DF
      73FF21F3B5FF21EF9CFF18EB94FF18E78CFF18E384FF10E384FF18E784FF18E7
      8CFF18E78CFF18EB8CFF18EB94FF18EB94FF18EB94FF10E373FF10C210FFE7F8
      E7FF0000000000000000000000000000000000000000E4D3BEFFAB711CFFBF8C
      43FFC99C5CFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2
      CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFC99C
      5CFFBF8C43FFAB711CFFE4D4BFFF000000000000000000000000000000000000
      0000FDFDFDFFE2E2E2FFAF8276FFE17C59FFF4AD87FFF7AC86FFFDBD97FFB475
      5FFFDBDBDBFFFBFBFBFFF7F7F7FFECECECFFD2D2D2FFAE7566FFE26C47FFF89D
      79FFFA9E79FFF89672FFE06F4CFFB8B8B8FF000000008CE18CFF00C718FF21F3
      A5FF21F79CFF21EF94FF18E373FF10DF6BFF10DF6BFF10DF6BFF10E373FF18E3
      7BFF18E78CFF18EB8CFF18EB94FF18EB9CFF18EF9CFF18EF9CFF18EF9CFF18EF
      9CFF18EB94FF18EB94FF10D752FF8CE18CFFA5E8A5FF00C718FF18E384FF10E3
      7BFF29F7B5FF21EFA5FF21EF9CFF18EB94FF18E794FF18E78CFF10E384FF10E3
      84FF18E784FF18E784FF18E78CFF18E78CFF18EB8CFF18EB94FF10D752FF31CA
      31FF0000000000000000000000000000000000000000E4D3BEFFAE7525FFBE8A
      3DFFC69955FFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF3E2
      CCFFF2E1CBFFF2E1CBFFF2E1CBFFF3E2CCFFF2E1CBFFF2E1CBFFF3E2CCFFC699
      55FFBE8A3DFFAE7525FFE5D4C0FF00000000000000000000000000000000F3F3
      F3FFB5A49FFFCB6A4FFFEB8D67FFF09974FFF8A683FFFDD3B9FFFFC8ACFFB36A
      53FF9A8F8CFFA28F8AFF9C7A72FFAF725FFFD87C5EFFF79F79FFFBAB86FFFAA0
      7BFFF89C77FFF5AC86FFE17550FFB8B8B8FF9CE59CFF00BE00FF21F3A5FF10EB
      63FF00DB18FF08DF29FF21F39CFF18E77BFF18E37BFF18E373FF18DF6BFF10DF
      63FF10DF63FF18E373FF18E78CFF18EB94FF18EB94FF18EB94FF18EB94FF18EB
      94FF18EB8CFF18E78CFF08D74AFF84DF84FFA5E8A5FF00C718FF18E78CFF18E7
      8CFF29F7BDFF21F3ADFF21F3ADFF21EFA5FF18EB9CFF18EB94FF18E78CFF18E3
      84FF10E37BFF10E37BFF18E384FF18E784FF18E784FF18E78CFF18E78CFF08CF
      29FF63D763FF00000000000000000000000000000000E4D4BFFFB1792DFFBC88
      38FFBE8B3DFFEED9BEFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2
      CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFF3E2CCFFEEDABFFFBE8B
      3DFFBC8838FFB1792DFFE5D5C1FF0000000000000000FBFBFBFFCDC9C8FFB370
      5EFFE16D4AFFE7845FFFF0916DFFFCBF9FFFFFDFC5FFFFE1C8FFFDC9AFFFF7B3
      8BFFF6AC86FFF9B28BFFFDBA94FFFEBD96FFFCB38EFFFBA67FFFF9A27FFFFBBD
      A2FFFED3B0FFF7B892FFE37956FFB8B8B8FFF7FCF7FF39CC39FF00C708FF00DB
      18FF00DB18FF08DB18FF10E342FF21F3A5FF21EB8CFF18E784FF18E784FF18E3
      7BFF18E373FF18DF6BFF18DF6BFF18E784FF18E78CFF18E78CFF18E78CFF18E7
      8CFF18E784FF18E384FF08D34AFF7BDD7BFF9CE59CFF00C718FF21EF9CFF21EB
      9CFF29FBC6FF29F7BDFF21F7B5FF21F3ADFF21EFA5FF21EB9CFF18EB94FF18E7
      8CFF10E37BFF10E373FF10E37BFF10E37BFF10E37BFF18E384FF18E784FF18E3
      7BFF00C710FF9CE59CFF000000000000000000000000E4D4C0FFB37E36FFBA85
      32FFB8822BFFC19043FFD4B078FFD6B27DFFD6B27DFFD6B27DFFD6B27DFFD6B2
      7DFFD6B27DFFD6B27DFFD6B27DFFD6B27DFFD6B27DFFD4B078FFC19043FFB882
      2BFFBA8532FFB37E36FFE6D5C2FF00000000FEFEFEFFBC998FFFD45B3BFFDF6A
      46FFE67955FFF7A582FFFED4B4FFFFDBBDFFFFDCC0FFFFE0C7FFFCC6ABFFFEC5
      9CFFFDBC95FFFCB68FFFFAAD89FFFAB090FFFABEA7FFFDDED3FFFEF7F1FFFFEA
      DAFFFFD7B5FFFABE98FFE5805BFFBEBEBEFF00000000EFFAEFFF29C829FF00CB
      10FF08DF21FF08DF21FF08DF21FF18EB63FF21F3ADFF21EF9CFF21EF94FF21EB
      8CFF18EB8CFF18E784FF18E77BFF18E373FF18E37BFF18E37BFF18E373FF10DF
      6BFF10DB63FF10D752FF08CF39FF7BDD7BFF9CE59CFF00C718FF21F3ADFF21F3
      ADFF29FFCEFF29FBC6FF29F7BDFF21F7B5FF21F3ADFF21EFA5FF21EF9CFF18EB
      94FF18E78CFF10DF6BFF10DF73FF10DF73FF10DF73FF10E37BFF10E37BFF10E3
      7BFF10DF6BFF08C408FFCEF2CEFF0000000000000000E5D4C1FFB6823DFFB983
      2CFFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E
      22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E22FFB67E
      22FFB9832CFFB6823DFFE6D6C3FF00000000DBCFCCFFDB5531FFDB5F3BFFEE86
      62FFFDC3A0FFFFD8B6FFFFD7B8FFFFDABCFFFFDBBFFFFFDFC5FFFEDBC2FFFCCA
      B1FFFCD8C3FFFEDFCDFFFEEEE2FFFFF7EFFFFFFBF7FFFFFDFBFFFFFAF6FFFFEC
      DDFFFFDABBFFFBC6A0FFD27658FFDBDBDBFF0000000000000000E7F8E7FF18C4
      18FF08CF18FF08DF29FF08DF29FF10DF29FF21EF7BFF29F7B5FF21F3A5FF21F3
      A5FF21EF9CFF21EF94FF21EB8CFF18EB8CFF18E784FF18E77BFF18E37BFF18E3
      73FF18DF6BFF10DF63FF08D342FF73DB73FF9CE59CFF00CB21FF29F7BDFF29FB
      BDFF29FFCEFF29FFCEFF29FBC6FF29FBBDFF29F7B5FF21F3ADFF21F3A5FF21EF
      A5FF18EB9CFF10DF7BFF10DB6BFF10DF6BFF10DF6BFF10DF73FF10DF73FF10DF
      73FF10E37BFF08D74AFF18C418FFEFFAEFFF00000000E5D5C2FFB98746FFB881
      25FFA97321FFB18947FFAB823CFFA87E37FFA67D34FFA67C33FFA67B32FFA67B
      32FFA67B32FFA67B32FFA67B32FFA67B32FFA67B32FFA67B32FFA67B32FFA46C
      18FFB88125FFB98746FFE6D7C4FF00000000C8A096FFE26642FFF8AB86FFFFD2
      ADFFFFD3B0FFFFD4B2FFFFD7B7FFFFD8BAFFFFDCC0FFFFDDC3FFFFE2CAFFFFE5
      D0FFFFE9D6FFFFECDCFFFFF0E3FFFFF3E9FFFFF7F1FFFFFCF9FFFFFBF9FFFFEF
      E2FFFFDEC2FFFBC099FFB0897FFFFAFAFAFF000000000000000000000000D6F4
      D6FF10C210FF08D329FF10DF29FF10DF29FF10DF31FF21F79CFF29FBBDFF29F7
      B5FF29F7ADFF21F3ADFF21F3A5FF21EF9CFF21EF9CFF21EB94FF21EB8CFF18E7
      84FF18E77BFF18E37BFF10D752FF6BD96BFF9CE59CFF08CB21FF29FFCEFF29F7
      BDFF21F3B5FF21F3B5FF29F7BDFF29FBC6FF29FBC6FF29F7BDFF21F3B5FF21F3
      ADFF21EFA5FF18EB9CFF10DF6BFF10DB63FF10DB63FF10DB6BFF10DB6BFF10DF
      6BFF10DB5AFF00C710FF7BDD7BFF0000000000000000E5D5C3FFBD8D4FFFB67F
      1EFFB5853DFFD5C4A0FFC5AF7FFFBBA26BFFB5995CFFCAB384FFCEB990FFCEB9
      90FFCEB990FFCEB990FFCEB990FFCEB990FFCEB990FFCEB990FFBB9F64FFA672
      1FFFB67F1EFFBD8D4FFFE7D7C5FF00000000E08B72FFFFCAA4FFFFD1ABFFFFD0
      ABFFFFD3AEFFFFD5B1FFFFD7B5FFFFD9B9FFFFDABFFFFFDEC4FFFFE0C8FFFFE3
      CFFFFFE8D5FFFFEADAFFFFEFE2FFFFF3E9FFFFF7EFFFFFFBF8FFFFFDFBFFFFF3
      E9FFFDDCC3FFC5816DFFF0F0F0FF000000000000000000000000000000000000
      0000C6F0C6FF08C008FF10DB31FF10E331FF10E339FF10E34AFF29FBB5FF29FF
      C6FF29FBC6FF29FBBDFF29F7B5FF29F7B5FF21F3ADFF21F3A5FF21F39CFF21EF
      9CFF21EB94FF21EB8CFF10DB5AFF63D763FF9CE59CFF00C310FF18DF6BFF21EB
      94FF21EFA5FF21EBA5FF18E39CFF18DF94FF18E394FF21E7A5FF21EFB5FF29F7
      BDFF21F3ADFF21EFA5FF18EB9CFF10DB6BFF08D75AFF10DB63FF10DB63FF08CF
      39FF10C210FFBDEEBDFF000000000000000000000000E6D6C3FFC19258FFB47D
      17FFB38238FFE2D4B9FFDDCEAFFFCCB78CFFBDA36BFFF5EFE2FFFEFEFEFFFFFF
      FFFFFEFEFEFFFEFEFEFFEEE5D6FFBA9E60FFBA9E60FFE1D2B3FFCDB88AFFA571
      1CFFB47D17FFC19258FFE7D8C6FF00000000E79279FFFED3ACFFFFD0AAFFFFD0
      ABFFFFD1AFFFFFD3B2FFFFD5B6FFFFD7BAFFFFDBBDFFFFDCC3FFFFE1C7FFFFE2
      CEFFFFE6D4FFFFEBD9FFFFEDE0FFFFF1E7FFFFF6EFFFFFFAF7FFFFFFFFFFF5CB
      BCFFC68C7DFFF4F4F4FF00000000000000000000000000000000000000000000
      000000000000ADEAADFF00C300FF10DF42FF18E74AFF18E752FF18EB63FF29FF
      C6FF29FFCEFF29FFCEFF29FFC6FF29FFC6FF29FBC6FF29FBBDFF29F7B5FF29F7
      ADFF21F3A5FF21F3A5FF10DF63FF63D763FFEFFAEFFFA5E8A5FF63D763FF21C6
      21FF00C308FF08CB31FF10D35AFF10D773FF10D784FF10D37BFF10CF73FF10D7
      84FF29F7B5FF21F3ADFF21EFA5FF21EF9CFF10DF73FF08D352FF00C718FF39CC
      39FFE7F8E7FF00000000000000000000000000000000E6D7C4FFC49860FFB37B
      15FFAF7E31FFD9C8A6FFE0D1B4FFE2D4B9FFD1BD93FFF5EFE2FFFEFEFEFFFFFF
      FFFFFEFEFEFFFEFEFEFFEBE0CFFFB29657FFB19556FFDCCBA9FFCDB88AFFA46F
      1BFFB37B15FFC49860FFE7D9C7FF00000000F0EDEDFFE89B85FFF5B38DFFFFD5
      B0FFFFD2AEFFFFD3B0FFFFD6B5FFFFD8B9FFFFD9BCFFFFDDC2FFFFE0C7FFFFE3
      CDFFFFE7D3FFFFEAD9FFFFF0E2FFFFF7EDFFFEF7EFFFF4CBC0FFDC907DFFD1C2
      BEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000094E394FF00C308FF18E75AFF18EB5AFF18EB63FF21EF
      84FF29FFCEFF29FFCEFF29FFCEFF10DB63FF10DF73FF21EF9CFF29FBBDFF29FF
      C6FF29FBBDFF29F7B5FF18E36BFF5AD45AFF0000000000000000000000000000
      0000DEF6DEFF9CE59CFF5AD45AFF18C418FF00C308FF00C729FF08CB6BFF10D3
      7BFF29FBBDFF29F7B5FF21F3B5FF21F3ADFF10DF6BFF00C308FF7BDD7BFF0000
      00000000000000000000000000000000000000000000E6D7C4FFC89E6AFFB17A
      16FFAC7A2EFFD2BF98FFD6C4A1FFDCCCADFFDFCEAFFFF5EFE2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEBE0CFFFB29657FFB29657FFDCCCA9FFCDB88AFFA36E
      1BFFB17A16FFC89E6AFFE8D9C8FF000000000000000000000000E9D1CBFFE990
      71FFFCCBA7FFFFD6B3FFFFD4B3FFFFD8B8FFFFDABBFFFFDDC1FFFEDEC5FFFBD6
      BEFFF9CEB7FFF4C0A8FFEAA994FFE19B87FFCBA297FFE1D8D5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007BDD7BFF00C718FF18EB6BFF18EF73FF18EF
      7BFF21F7A5FF29FFCEFF29FFCEFF10D752FF08CF42FF10D75AFF10DF73FF18E7
      8CFF21F3ADFF29FBBDFF08CF39FF73DB73FF0000000000000000000000000000
      000000000000000000000000000000000000B5ECB5FF00BE00FF08C76BFF10CF
      73FF29FFCEFF29FBC6FF21F3ADFF08D339FF10C210FFB5ECB5FF000000000000
      00000000000000000000000000000000000000000000EBDED0FFC49A66FFB580
      25FFAB782CFFCEBB90FFD0BD95FFD4C29DFFD5C29CFFF5EFE2FFFEFEFEFFFFFF
      FFFFFEFEFEFFFEFEFEFFEBE0CFFFB2985AFFB19658FFDCCBA9FFCDB88AFFA26D
      1BFFB58025FFC49A66FFECE0D2FF00000000000000000000000000000000FDFD
      FDFFD3A498FFEEA180FFFED8B6FFFFD7B7FFFFD8BBFFFFDCC0FFF7C6AAFFAF63
      4FFFD5C6C2FFEFE9E8FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063D763FF08CF29FF21EF84FF21F3
      84FF21F38CFF29FBB5FF29FFCEFF08CB29FF00C721FF08D34AFF10E373FF18EB
      94FF18E77BFF00C718FF7BDD7BFF000000000000000000000000000000000000
      000000000000000000000000000000000000CEF0CEFF00BE00FF08C363FF08CB
      6BFF29FFCEFF21EB94FF00C710FF39CC39FFE7F8E7FF00000000000000000000
      00000000000000000000000000000000000000000000FCFAF9FFAF7D42FFDDBF
      92FFB2843FFFCCB88CFFCDBA8FFFCFBC93FFCFBA8FFFF5EFE2FFFEFEFEFFFFFF
      FFFFFEFEFEFFFEFEFEFFEBE1CFFFB79D62FFB3995BFFDCCCAAFFCDB88AFFAA7A
      2EFFDDBF92FFAF7D42FFFCFBF9FF000000000000000000000000000000000000
      000000000000F0E9E7FFE9957DFFF7BE9DFFFFDEC0FFFFDCBFFFF7C3A8FF9F84
      7DFFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AD04AFF08D339FF21F3
      94FF21F79CFF21F7A5FF29FFC6FF4AD75BFFC6F0C6FF73DB73FF21C621FF00CB
      29FF10C210FFBDEEBDFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6F1D6FF00BE08FF08BE5AFF08C3
      5AFF10D752FF00BE00FF7BDD7BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEE3D7FFAF7E
      44FFAD7D3BFFB69155FFB79257FFB89358FFB69154FFE6D6BBFFEEE3D2FFEEE4
      D2FFEEE3D2FFEEE3D2FFE9DCC7FFD9C39AFFD9C299FFE5D6BAFFC1A169FFA876
      31FFAF7E43FFEEE3D6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000E2C5BEFFE99678FFFDD9BCFFF0AB8CFFC0BB
      B9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FCF7FF31CA31FF10DB
      5AFF21F7ADFF21F7ADFF18E36BFF42CE42FF000000000000000000000000D6F4
      D6FFE7F8E7FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6F0D6FF00BE08FF00BE4AFF00BE
      08FF18C418FFB5ECB5FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFA
      F8FFEADED0FFE6D7C5FFE6D8C6FFE6D8C6FFE8DBCAFFEADED0FFEDE2D5FFEDE3
      D7FFEDE3D7FFEDE3D7FFEDE2D5FFECE1D3FFECE0D2FFEBDFD0FFE8DBCBFFEBDF
      D1FFFCFAF8FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F7F6FFE0836AFFD18773FFF2F2
      F2FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFFAEFFF21C6
      21FF10DB5AFF08D339FF4AD04AFFDEF6DEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6F0D6FF00BE00FF08C008FF7BDD
      7BFFF7FCF7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEF6
      DEFF39CC39FFB5ECB5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEF2DEFF6BD96BFFE7F8E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFAFFE2E2E2FFD7D7D7FFEBEB
      EBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFE1E1E1FF767EAAFF3964B4FF335BB1FF9696
      9CFFF4F4F4FF00000000F9F9F9FFF3F3F3FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DB9B4500DE9A3E00DE9A
      3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A
      3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DB9B4500000000000000
      0000000000000000000000000000000000000000000000000000EFF1FAFFD6DB
      F3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DB
      F3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DBF3FFD6DB
      F3FFD6DBF3FFEFF1FAFF00000000000000000000000000000000000000000000
      0000F7F7F7FFD3D3D3FF9497ABFF3243BBFF1356D5FF00F4FFFF00F0FFFF4059
      96FFC4C4C4FFDFDFDFFF7A80A6FF7B7C90FFC0C0C0FFF5F5F5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190083E3A10087E6A60088E7
      A80084E4A30080E19D007BDE97000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFEFCE00FFEF
      CE00FFEFCF00FFEFCF00FFEFCF00FEEFCE00FEEECE00FDEECC00FDEDCA00FDED
      CA00FDEECB00FDEECC00FEF0CF00FEF2D100FEF3D200DE9A3E00000000000000
      000000000000000000000000000000000000000000007388E4FF0028CEFF0028
      CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028
      CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028
      CEFF0028CEFF0028CEFF7388E4FF000000000000000000000000FDFDFDFFD7D7
      D9FF686DA7FF1D76D3FF1839CCFF143ED2FF105BDAFF00E6FFFF00E8FFFF0BAF
      EBFF595786FF2B46C1FF04D0F7FF07C9F1FF3D5D9BFFB9B9B9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190083E3A10051DB7F0053DC
      81004DD9790047D471007BDE97000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFEFCF00FFDE
      BF00FFDEBF00FFDEBE00FFDEBE00FEDDBC00FDDDBB00FDDBB700FBD8B200FAD7
      AF00FAD8AF00FADAB300FCDEB900FDE2BF00FEF0CF00DE9A3E00000000000000
      00000000000000000000000000000000000094A4EAFF0028CEFF0030D6FF2159
      EFFF2965F7FF2965F7FF2965F7FF2961F7FF2961F7FF2961F7FF2961F7FF2161
      F7FF2161F7FF215DF7FF215DF7FF215DF7FF215DF7FF215DF7FF215DF7FF2159
      F7FF1855EFFF0834D6FF0028CEFF94A4EAFF0000000000000000ADAFC3FF2842
      C5FF088AECFF00D1FFFF01C5FAFF0A7BE7FF04ADF4FF00DDFFFF00DFFFFF00E6
      FFFF02D2F9FF01CDF9FF00F4FFFF00FAFFFF09B9EDFFA5A4ADFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190080E29E004CD878004DD8
      780049D6740044D26D0079DD95000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFF0D000FFE0
      C200FFE0C200FFE0C100FFDFC000FEDDBE00FDDBB900FBD7B100F8D2A700F7CE
      9F00F6CC9C00F6CE9E00F8D3A700FADAB200FCECC700DE9A3E00000000000000
      000000000000000000000000000000000000294AD5FF002CCEFF2969F7FF3175
      FFFF3175FFFF3171FFFF3171FFFF3171FFFF3171FFFF3171FFFF316DFFFF316D
      FFFF316DFFFF316DFFFF296DFFFF2969FFFF2969FFFF2969FFFF2969FFFF2965
      FFFF2965FFFF2961FFFF0030D6FF294AD5FF00000000CECFE1FF1A48D5FF0D54
      E0FF0970E8FF00C6FEFF00C8FFFF00D0FFFF00D3FFFF00D5FFFF00DBFFFF00DE
      FFFF00E3FFFF00E7FFFF00EBFFFF00F2FFFF0CADE6FFA1A1A4FFF9F9F9FF0000
      0000FEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F8319007DDF990045D36F0046D4
      700043D26D003FCF670077DB92000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFF1D200FFE2
      C600FFE2C500FFE1C500FFE1C400FEE0C100FDDEBD00E1C0A0009D7C6000CAB8
      9600F3C79200F2C68F00F3C99400F6CFA000F9E3BA00DE9A3E00000000000000
      000000000000000000000000000000000000082ECFFF1045DEFF3171FFFF3171
      FFFF3171FFFF3171FFFF316DFFFF316DFFFF316DFFFF316DFFFF296DFFFF2969
      FFFF2969FFFF2969FFFF2969FFFF2965FFFF2965FFFF2965FFFF2965FFFF2965
      FFFF2961FFFF2961FFFF1049E7FF082ECFFF00000000B4B8DBFF0B5AE5FF0863
      EBFF0862EBFF019FF7FF00C3FFFF00C6FFFF00CCFFFF00CEFFFF00D5FEFF00DA
      FEFF00DEFEFF00E2FFFF00E6FFFF00EBFFFF04CFF5FF4F598CFFA8A8A8FFABAA
      B2FFB9B9BAFFF3F3F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190078DD93003ECF66003FCF
      67003DCE65003ACC600074D98D000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00F2D29D00FFE4
      CA00FFE3C900FFEBCF00FFEBCE00FFEACD00FEE9CB00D3C7AF0020292C001698
      C6000F9CC9004BA8BB00A6B6A000F3C79200F6DAAA00DE9A3E00000000000000
      000000000000000000000000000000000000082ECFFF184DE7FF316DFFFF316D
      FFFF316DFFFF316DFFFF2969FFFF3169FFFF2969FFFF2969FFFF2969FFFF2965
      FFFF2965FFFF2965FFFF2965FFFF5282FFFF3169FFFF2961FFFF2161FFFF2161
      FFFF215DFFFF215DFFFF184DEFFF082ECFFF00000000FEFEFEFF556BC5FF0371
      F6FF0271F5FF009BFBFF00BEFFFF00C0FFFF00C7FFFF01E1FDFF02E7F8FF03E0
      F6FF04D7F2FF04D0F4FF00DCFCFF00E5FFFF00ECFFFF04CCF5FF1098DEFF0AB5
      EBFF3A5D9EFFBDBDBDFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190074D98E0038CA5D0038CA
      5E0036CA5C0034C8590070D789000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00DE9A3E00FFF0
      D300FFE5CC00EEBF8400EEBF8400EEBE8300EEBE8200EDBD81000E9BC80091D5
      F5007DD2F800119AE2000099CD0098B5A800F5D7A600DE9A3E00000000000000
      000000000000000000000000000000000000082ECFFF1049E7FF2969FFFF2969
      FFFF2969FFFF2969FFFF2969FFFFA5BEFFFFBDD3FFFF316DFFFF2965FFFF2961
      FFFF2961FFFF2961FFFF4275FFFFEFF3FFFFDEE3FFFF4271FFFF215DFFFF215D
      FFFF2159FFFF2159FFFF1049EFFF082ECFFFF3F3F3FF9092AEFF235CCFFF009C
      FBFF00A3FEFF00B1FFFF00B7FFFF00BDFFFF54A7BDFFB2D1D2FF86EEFAFF27D6
      F2FF07C5EFFF09B8EAFF0AACE7FF03CBF6FF00E5FFFF00E8FFFF00EFFFFF00F3
      FFFF06CAF3FF74768DFFF1F1F1FF00000000000000000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000F8319006FD7880030C6540031C6
      550030C553002DC450006CD483000F8319000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000000000000000000DE9A3E00DE9A3E00FFF2
      D600FFE7CF00FFE6CF00FFE6CE00FFE5CD00FFE5CB00FFE3CA005FB4CB0072C8
      E90073D6FF0068D6FA00139AE5000099CD00AAC8BA00DE9A3E00000000000000
      000000000000000000000000000000000000082ECFFF1049E7FF2965FFFF2965
      FFFF2965FFFF2965FFFF7396FFFFFFFFFFFFFFFFFFFFDEE3FFFF4275FFFF2161
      FFFF215DFFFF3165FFFFDEE7FFFFFFFFFFFFFFFBFFFF5A82FFFF2159FFFF2159
      FFFF2159FFFF2155FFFF1049EFFF082ECFFF6A7ED1FF047CF7FF008CFFFF00A3
      FFFF00A8FFFF00ADFFFF00B1FFFF04B4FBFFB7BABCFF0000000000000000FAFA
      FBFF7BBDD4FF0BA5E6FF0D97E2FF0F85DDFF02CAF6FF00E2FFFF00E5FFFF00EC
      FFFF03DBFAFF8088B0FFFAFAFAFF00000000000000000F8319005ECB72005ECB
      72005ECB720061CD760064CF790067D17D0069D280006BD3820029C14B002AC1
      4B0029C04A0027BF480068D17E0065D07B0062CE77005FCC73005ECB72005ECB
      72005ECB72005ECB72000F8319000000000000000000DE9A3E00DE9A3E00FFF2
      D800FFE8D300FFEFD600FFEED500FFEED400FFEED300FFEDD2009FCDCF0019A8
      D6007CE5FB006FD5FF0068D6FA00139AE5000F9DCC00B4995800000000000000
      000000000000000000000000000000000000082ECFFF1045E7FF2965FFFF2961
      FFFF2961FFFF2961FFFF2965FFFFB5C7FFFFFFFFFFFFFFFFFFFFEFF3FFFF5282
      FFFF215DFFFFBDCFFFFFFFFFFFFFFFFFFFFF7B9EFFFF2155FFFF1855FFFF1855
      FFFF1855FFFF1851FFFF1045EFFF082ECFFF3A6FDCFF0094FFFF0092FFFF009B
      FFFF00A1FFFF00A7FFFF00ABFFFF10A6E9FFC2C2C2FF00000000000000000000
      0000000000008AB8D5FF107EDCFF136DD6FF116FD8FF00DFFEFF00E1FFFF01DA
      FAFF5262A0FFF0F0F0FF0000000000000000000000000F8319005ECB720016B4
      320016B4320016B4320019B636001DB83B0026BC44002ABE480033C1500033C1
      500032C1500031C04E002ABD470023BA400019B5350016B4320016B4320016B4
      320016B432005ECB72000F8319000000000000000000DE9A3E00DE9A3E00FFF3
      DA00FFEAD600EEC18900EEC18900EEC18800EEC08700EEC08600DFBD8A002CA0
      BF001CACD6007CE5FB006FD5FF007EE9FC001BA0E6000D99C400000000000000
      000000000000000000000000000000000000082ECFFF1045E7FF2161FFFF215D
      FFFF215DFFFF215DFFFF215DFFFF215DFFFF8CAAFFFFFFFFFFFFFFFFFFFFFFFB
      FFFFBDCFFFFFFFFFFFFFFFFFFFFFA5B6FFFF1855FFFF1851FFFF1851FFFF1851
      FFFF1851FFFF184DFFFF1041EFFF082ECFFF4B76DEFF009FFFFF009DFFFF009C
      FFFF009EFFFF00A1FFFF00A5FFFF07A6F6FFA8A8A9FFFCFCFCFF000000000000
      00000000000000000000518DE0FF1553CEFF193AC7FF06B0F0FF00DBFFFF00DC
      FEFF515A8BFFC6C6C6FFF5F5F5FF00000000000000000F8319005ECB720016B4
      320016B4320024B83E0035BD4D0040C1570043C35B0045C45D0046C55E0046C5
      5E0045C55D0044C45C0043C25A0041C2580041C258003ABF510027B9410016B4
      320016B432005ECB72000F8319000000000000000000DE9A3E00DE9A3E00FFF5
      DC00FFECD900FFEBD900FFEBD700FFEAD600FFE9D500FFE8D300FFE7D100EFE1
      CF002FA7CD001CACD6007CE5FB006FD5FF007EE9FC001BA0E6000B9ACB000000
      000000000000000000000000000000000000082ECFFF184DE7FF2961FFFF2159
      FFFF2159FFFF2159FFFF2159FFFF2159FFFF2155FFFF6B8EFFFFF7FBFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC6D3FFFF2155FFFF1851FFFF184DFFFF184DFFFF184D
      FFFF1851FFFF215DFFFF184DEFFF082ECFFFE6E6EEFF6F86DFFF0888EFFF00A8
      FFFF00A9FFFF00A3FFFF009FFFFF00A6FFFF6A8694FFEAEAEAFF000000000000
      00000000000000000000C5CAD9FF1A36C8FF1C29C3FF0E7EE1FF00D8FFFF00DD
      FFFF0EA0E6FF465993FF99999DFFE8E8E8FF000000000F8319005ECB72002BBB
      450046C35C004CC562004CC562004CC562004CC562004CC562004CC562004CC5
      62004CC562004CC562004CC562004CC562004CC562004CC562004CC5620046C3
      5C002BBB45005ECB72000F8319000000000000000000DE9A3E00DE9A3E00FFF5
      DD00FFEDDD00FFF2DC00FFF2DC00FFF1DB00FFF1D900FFF0D800FFEFD600FFEF
      D400EFE8D2002FA8CE001CACD6007CE5FB006FD5FF007EE9FC001BA0E6000B9A
      CB0000000000000000000000000000000000082ECFFF2959DEFF6392F7FF5286
      F7FF3971FFFF295DFFFF1855FFFF1855FFFF1855FFFF1851FFFF7396FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBDCBFFFF2155FFFF184DFFFF2155FFFF2961FFFF3971
      F7FF427DF7FF427DF7FF2155EFFF082ECFFF0000000000000000959BCCFF00AD
      FDFF00B1FFFF009CFFFF0099FFFF009FFFFF218ECCFFB0B0B0FFF9F9F9FF0000
      00000000000000000000000000002C3CC8FF1C29C3FF0F74DEFF00D3FFFF00D3
      FFFF00DBFFFF00DCFEFF286ABEFFC9C9C9FF000000000F83190069CE7B0057C9
      6B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C9
      6B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C96B0057C9
      6B0057C96B0069CE7B000F8319000000000000000000DE9A3E00DE9A3E00FFF6
      DF00FFEFE000EEC48E00EEC38D00EEC38D00EEC38C00EEC28A00EEC18800EEC0
      8700EEBF8600DFBD89002FA7CC001CACD6007CE5FB006FD5FF007EE9FC001BA0
      E6000B9ACB00000000000000000000000000082ECFFF315DDEFF6B9EF7FF6B9E
      F7FF6B9AF7FF6B9AF7FF6392F7FF5286F7FF4279F7FF527DFFFFEFEFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E3FFFF6396F7FF528EF7FF528AF7FF528A
      F7FF528AF7FF528AF7FF2959EFFF082ECFFF00000000FEFEFEFF8C90BAFF04A8
      F7FF009EFFFF008EFFFF0094FFFF0099FFFF00A0FFFF487E9FFFC0C0C0FFF8F8
      F8FF0000000000000000000000004451CDFF1C26C2FF0894EBFF00CAFFFF00CE
      FFFF00D1FFFF00DBFFFF1C80D2FFC9C9C9FF000000000F83190061CC74006ACF
      7D006ACF7D006ACF7D006ACF7D006ACF7D006ACF7D0075D2850063CC760063CC
      760063CC760063CC760075D285006ACF7D006ACF7D006ACF7D006ACF7D006ACF
      7D006ACF7D0061CC74000F8319000000000000000000DE9A3E00DE9A3E00FFF7
      E100FFF1E300FFF0E200FFEFE100FFEFDF00FFEDDC00FEEBD900FDE7D100FCE4
      CA00FCE2C600FCE1C500EDDDC6002FA6CB001CACD6007CE5FB006CD2FF0078E2
      FC001BA0E6000B9ACB000000000000000000082ECFFF3161E7FF7BAAF7FF7BA6
      F7FF7BA6F7FF7BA6F7FF73A2F7FF73A2F7FF7BA6F7FFE7EFFFFFFFFFFFFFFFFF
      FFFF9CBEF7FFCEDFFFFFFFFFFFFFFFFFFFFFEFF7FFFF84AEF7FF6396F7FF6396
      F7FF6392F7FF5A92F7FF295DEFFF082ECFFF00000000BDC0DBFF0896EEFF00C4
      FFFF00B7FFFF0087FFFF008CFFFF0090FFFF0098FFFF019DFFFF4580A2FFA9A9
      A9FFE2E2E2FFF8F8F8FFF7F7F7FF2D3AC6FF1644CDFF00C0FEFF00C4FFFF00C7
      FFFF00D5FFFF01D4FEFF3D74CCFFEBEBEBFF000000000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000F8319006DD07F006ED07F006ED0
      7F006ED07F006ED07F006DD07F000F8319000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000000000000000000DE9A3E00DE9A3E00FFF8
      E300FFF2E700FFF2E500FFF1E400FFF0E200FFEEDE00FEEBD800FBE4CA00F9DB
      BB00F7D7B300F8D8B300F9D9B500EAD6B9002FA8CB001CACD6007CE5FB0069CF
      FF0078E2FC0019A0E300169CCA0000000000082ECFFF3965E7FF8CB2F7FF8CB2
      F7FF8CAEF7FF84AEF7FF84AEF7FF84AEF7FFD6E3FFFFFFFFFFFFFFFFFFFFBDD3
      FFFF7BA6F7FF7BA6F7FFBDD3FFFFFFFFFFFFFFFFFFFFC6DBFFFF739EF7FF6B9E
      F7FF6B9EF7FF6B9EF7FF3161EFFF082ECFFF00000000C5C7E4FF04ABF4FF00C9
      FFFF00CDFFFF00B7FFFF00B7FFFF00BAFFFF0091FFFF0097FFFF009DFFFF178A
      D9FF577F98FF88969EFF7588A9FF1061DDFF01B2FBFF00BAFFFF00BDFFFF00C3
      FDFF129BE1FF7783B5FFEFEFF0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000F8319006FD0800078D3880078D3
      880078D3880078D388006FD080000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00DE9A3E00FFF9
      E500FFF4EA00FFF3E800FFF2E600FFF1E400FFEFE100FDEBD800FAE1C600F5D7
      B000F6D9AE00F5D8AC00F6D9AD00F7DBB100EAE4C2002999B2001CACD6007CE5
      FB0069CFFF0058CDF100229EC80000000000082ECFFF4269E7FF9CBEF7FF94BA
      F7FF94BAF7FF94BAF7FF94B6F7FF9CBEF7FFEFF3FFFFFFFFFFFFD6E3FFFF8CB2
      F7FF8CB2F7FF84AEF7FF84AEF7FFB5CBF7FFDEEBFFFF84AEF7FF7BAAF7FF7BAA
      F7FF7BA6F7FF7BA6F7FF3161EFFF082ECFFF00000000000000006A88DFFF04B8
      F5FF08A7EFFF02C2F8FF00D7FFFF00D7FFFF00C4FFFF008EFFFF0095FFFF0099
      FFFF009FFFFF00A4FFFF00A9FFFF00AEFFFF00B0FFFF00B4FFFF00B8FFFF00BE
      FEFF3253A6FFB7B7B7FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190071D1820084D7920084D7
      920084D7920084D7920071D182000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00DE9A3E00FFFA
      E600FFF6ED00FFF5EB00FFF4E900FFF2E700FFF0E300FDECDA00FAE1C600F6DD
      B600FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFFDE00CD9A4D00229EC7001CAC
      D60058CBF2000FA0D5004FA5C20000000000082ECFFF426DE7FFA5C7F7FFA5C7
      F7FFA5C7F7FFA5C3F7FFA5C3F7FF9CC3F7FFA5C3F7FFD6E3FFFF9CBEF7FF9CBA
      F7FF94BAF7FF94BAF7FF94BAF7FF94B6F7FF94B6F7FF8CB6F7FF8CB2F7FF8CB2
      F7FF8CB2F7FF8CAEF7FF315DEFFF082ECFFF0000000000000000F5F5F6FFCFCF
      DEFFE0E0E9FF8592C8FF03C5F6FF00DEFFFF00CEFFFF0087FFFF008FFFFF0092
      FFFF0096FFFF009BFFFF009FFFFF00A4FFFF00A9FFFF00ABFFFF00B1FFFF00B7
      FFFF04A6F8FF6A6F90FFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190072D184008FDB9C008FDB
      9C008FDB9C008FDB9C0072D184000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00F2D8A400FFFA
      EC00FFF7F000FFF6EE00FFF5EB00FFF3E900FFF1E500FEEDDD00FAE3C900F5D3
      AB00FFFFDE00F6DAAA00F6D3A300EAB46E00DE9A3E00C6AA8400000000002DA0
      C600169CCA004FA5C2000000000000000000082ECFFF4A6DDEFFB5D3F7FFB5D3
      F7FFB5CFF7FFB5CFF7FFADCFF7FFADCBF7FFADCBF7FFADCBF7FFADC7F7FFA5C7
      F7FFA5C7F7FFA5C3F7FFA5C3F7FFA5C3F7FF9CBEF7FF9CBEF7FF9CBEF7FF9CBE
      F7FF94BAF7FF94BAF7FF3159E7FF082ECFFF0000000000000000000000000000
      00000000000000000000189AE6FF00E7FFFF00D4FFFF007FFFFF0088FFFF009D
      FFFF00C1FFFF00A1FFFF009AFFFF009EFFFF00B2FFFF00E6FFFF00D4FFFF00B5
      FFFF059CF5FF9397B4FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190075D286009ADEA6009ADE
      A6009ADEA6009ADEA60075D286000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFFDE800FFF9
      F400FFF9F300FFF7F000FFF6ED00FFF4EA00FFF3E600FEEEDF00FBE5CD00F6D6
      B100FFFFDE00FFE7C600F2C58F00DE9A3E00C6AA830000000000000000000000
      0000000000000000000000000000000000003151D7FF4265DEFFC6DBF7FFC6DB
      F7FFBDDBF7FFBDD7F7FFBDD7F7FFBDD7F7FFBDD7F7FFB5D3F7FFB5D3F7FFB5D3
      F7FFB5CFF7FFB5CFF7FFADCFF7FFADCFF7FFADCBF7FFADCBF7FFADCBF7FFA5C7
      F7FFA5C7F7FFA5C7F7FF1845D6FF3151D7FF0000000000000000000000000000
      000000000000F7F7F9FF11A3E8FF00EDFFFF00EDFFFF00D8FFFF009CFFFF00EB
      FFFF00F2FFFF00E9FFFF0093FFFF0098FFFF00BDFFFF00FBFFFF00FCFFFF10A9
      E8FF8C92BFFFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190076D38700A6E2B000A6E2
      B000A6E2B000A6E2B00076D387000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFFDEB00FFFB
      F700FFFAF500FFF8F200FFF7EF00FFF5EC00FFF3E700FEF0E100FCE7D200F7DB
      BA00FFFFDE00F2C58F00DE9A3E00C6AA83000000000000000000000000000000
      000000000000000000000000000000000000A5B3EDFF0830CEFF94AEEFFFCEE3
      F7FFCEE3F7FFCEE3F7FFCEDFF7FFCEDFF7FFC6DFF7FFC6DBF7FFBDD7F7FFBDD3
      F7FFB5CFF7FFADCBF7FFADC7F7FFA5C3F7FF9CBAF7FF9CB6F7FF94B2F7FF8CAE
      F7FF84A6F7FF5A7DDEFF0028CEFFA5B3EDFF0000000000000000000000000000
      000000000000FEFEFEFF6188E0FF04D7F6FF00F7FEFF16A1E4FF7988CDFF0ABF
      EEFF00F8FFFF00FAFFFF00C0FFFF0099FFFF0885EFFF0CA8E6FF5782CCFFD7D6
      DEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F83190064CD770078D3880078D3
      880078D3880078D3880064CD77000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DE9A3E00FFFEED00FFFE
      EB00FFFDEA00FFFCE800FFFBE600FFFAE500FFF9E200FEF7DE00FDF1D500FAE9
      C500FFFFDE00DE9A3E00C6AA8300000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C9EE8FF082ECFFF0030
      CEFF103CCEFF1038CEFF0834CEFF0830CEFF002CCEFF0028CEFF0028CEFF0028
      CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028CEFF0028
      CEFF0028CEFF082ECFFF8C9EE8FF000000000000000000000000000000000000
      0000000000000000000000000000B9BCDDFF7E94DCFFE1E1E4FF000000007992
      DFFF00FBFEFF00FEFFFF00FCFEFF19A0E2FF8E97C0FFE7E7EDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F8319000F8319000F8319000F83
      19000F8319000F8319000F8319000F8319000000000000000000000000000000
      00000000000000000000000000000000000000000000DB9B4500DE9A3E00DE9A
      3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A3E00DE9A
      3E00DE9A3E00C6AA840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF1
      FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1
      FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1FAFFEFF1
      FAFFEFF1FAFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEE
      F3FF3977D9FF3182D8FF6681D0FFE0E0E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFF6F6F6FFEFEFEFFFECECECFFECECECFFF1F1F1FFFAFAFAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFAFFDCDCDCFFCBCBCBFFD6D6D6FFEDEDEDFFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFF7F7F7FFEAEAEAFFD7D7
      D7FFBEBEBEFFB0B0B0FFABABABFFABABABFFB3B3B3FFCACACAFFE1E1E1FFF1F1
      F1FFFCFCFCFF000000000000000000000000000000000000000000000000F9F9
      F9FF749976FF24922DFF23932EFF37823DFF677B67FFB1B1B1FFE5E5E5FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F7D98001F6087001F6087001F6087001F6087001F6087001F6087001F60
      87001F6087001F6087001F6087001F6087001F6087001F6087001F6087002361
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFEBEB
      EBFFDDDDDDFFDBDBDBFFDBDBDBFFDBDBDBFFD5D5D5FFC3C3C3FFB3B3B3FF9C9C
      9CFF868786FF4B774BFF2D8532FF20A72EFF37803AFF949494FFADADADFFCCCC
      CCFFE8E8E8FFFDFDFDFF00000000000000000000000000000000F8F8F8FF6896
      6AFF0EB721FF17BE2DFF1EC437FF26CD42FF2ACC47FF2E963DFF6C7A6CFFC4C4
      C4FFF8F8F8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000046298000E68B400116FB8001270B9001270B9001270B9001270B9001270
      B9001270B9001270B9001270B9001270B900116FB800106EB7000E68B4000462
      9800647C8A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9FFD0D0
      D0FFA6A6A6FF999999FF989898FF979797FF939393FF919191FF9B9B9BFF9191
      91FF3B773DFF049205FF2FCB4BFF08B519FF09AF18FF798F7AFFCDCDCDFFE1E1
      E1FFF0F0F0FFFEFEFEFF000000000000000000000000F2F2F2FF5C8E5CFF0EB6
      20FF14BA27FF1CC235FF25C940FF2DCF4BFF34D655FF3CDE62FF38CF58FF4675
      4BFFADADADFFF1F1F1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000046298001B79CA002283D0002283D0002487D2002283D0002283D0002283
      D0002283D0002283D0002283D0002283D0002283D0001F81CE001B79CA000664
      A200557385000000000000000000000000000000000000000000FEFDFDFFC9BD
      97FFBFB184FFB7A879FFB1A26FFFAC9B65FFA89760FFA3925BFFA19059FFA190
      59FFA19059FFA19059FFA3925BFFA89760FFAC9B65FFB1A26FFFB7A879FFBFB1
      84FFC9BD97FFFEFDFDFF00000000000000000000000000000000FEFEFEFFEAEA
      EAFFC5C5C5FFAAAAAAFF9A9A9AFF939393FF919191FF939393FF999999FF7887
      78FF0C9310FF28B93DFF15BE2BFF0BB41CFF0CB81EFF2BA133FFEFF0EFFF0000
      000000000000000000000000000000000000F7F7F7FF5B9762FF53ED81FF57F3
      88FF4FEC7AFF40DF66FF30D250FF32D453FF3ADC60FF43E169FF4AE874FF52EE
      7EFF3A8445FFADADADFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000046298002283D0002990D7002487D2002A91D8002A91D8002A91D8002487
      D2002990D7002990D7002487D2002A91D8002487D2002487D2002283D0000B69
      AA00466C82000000000000000000000000000000000000000000F9F8F4FF836A
      17FF897637FF816F35FF796730FF796730FF796730FF796730FF796730FF7967
      31FF796731FF796730FF796730FF796730FF79672FFF79672FFF816F34FF8976
      37FF836A17FFFAF8F5FF00000000000000000000000000000000000000000000
      0000F8F8F8FFEBEBEBFFDDDDDDFFD4D4D4FFD0D0D0FFD0D0D0FFCECFCEFF3494
      39FF1DAE2DFF2CCE4AFF0BB31CFF0FB821FF0EB620FF0FBA22FF83BD85FF0000
      0000000000000000000000000000000000007FA984FF5FF690FF59F48AFF45D7
      6AFF43DB6AFF48E971FF4DEA77FF4EEA79FF42E169FF49E773FF52EE7FFF59F4
      89FF54E982FFA6B1A6FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000664A2002487D2002A91D8002A91D8002A91D8002A91D8003097DC002A91
      D8002990D7002A91D8002A91D8002A91D8002487D2002A91D8002487D2000B69
      AA003B6882000000000000000000000000000000000000000000FAF9F5FFB0A0
      6EFFDAD8D7FF979493FF646260FF646260FF646260FF646260FF646260FF6462
      60FF646260FF646260FF646260FF646260FF646260FF646260FF979493FFDAD8
      D7FFB0A06EFFFAF9F6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFFCFCFCFFFEFEFEFF90B692FF22B2
      34FF3BD35CFF11B824FF14BA28FF14B928FF14B928FF14BB28FF19AE28FFD9E4
      D9FF0000000000000000000000000000000050CB6FFF57F086FF3BC25BFF55E5
      81FF327435FF6E9672FF39B74CFF2FD350FF4EEB78FF55F083FF59F48AFF58EE
      87FF7E9E81FFDEDEDEFFEEEEEEFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B69AA002990D7003596DC002487D200359CDF003298DC003298DC002A91
      D8002A91D8003097DC003097DC003097DC002990D7002A91D8002487D2001575
      B1002D6484000000000000000000000000000000000000000000FAF9F5FFB5A6
      74FFE4E2E0FFA09D9BFF4B4948FF4B4847FF4B4847FF4B4847FF4B4847FF4B48
      47FF4B4847FF4B4847FF4B4847FF4B4847FF4B4847FF4B4948FFA09D9BFFE4E2
      E0FFB5A674FFFAF9F6FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9EFE9FF2EAF3FFF3CD1
      5DFF23C83EFF17BD2CFF19BD2EFF19BD2EFF19BD2EFF19BD2DFF19C12FFF49AA
      4FFF000000000000000000000000000000004DDA73FF41CE64FF61F893FF5FF8
      92FF3ABC57FF818681FFE4E6E4FF7BAA7EFF17B72BFF3DDE61FF59EF8AFF81A0
      84FF638D64FF3D783EFF627A62FF939893FFB8B8B8FFD3D3D3FFECECECFFF8F8
      F8FF000000000000000000000000000000000000000000000000000000000000
      00000B69AA003596DC003298DC002A91D8003298DC003298DC003298DC002A91
      D8002A91D8003298DC003298DC003097DC002487D2003097DC002A91D8001270
      B900236184000000000000000000000000000000000000000000FAF9F6FFBBAB
      7AFFEEECEBFFE1DEDDFF888583FF726F6DFF726F6DFF726F6DFF726F6DFF726F
      6DFF726F6DFF726F6DFF726F6DFF726F6DFF726F6DFF888583FFE1DEDDFFEEEC
      EBFFBBAB7AFFFBFAF7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAE65FF41D763FF3BDA
      5FFF19BF30FF1BC334FF1BC333FF1BC333FF1BC333FF1BC333FF1BC334FF18BE
      30FFBBD9BCFF00000000000000000000000048C966FF39C858FF5DF58FFF5BF2
      8AFF58F187FF2E7F37FFAAAAAAFFF9F9F9FF96B296FF109B1AFF81A787FFA0B3
      A0FF24BF3CFF09B51AFF0DB21EFF0DA21BFF188A21FF357639FF5C775DFF8D93
      8DFFC1C1C1FFF9F9F9FF00000000000000000000000000000000000000007C9A
      AB001170B0002E8DD0002A7AAF002277B1003AA0E2003AA0E2003AA0E2003298
      DC003298DC00359CDF00359CDF00389EE0002A91D8003298DC002A91D8001C7C
      B9001A6089000000000000000000000000000000000000000000FAF9F6FFC0B1
      80FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFC0B180FFFBFAF7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7DEC8FF43D668FF4FE77AFF21C6
      3CFF22C73CFF22C73CFF22C73CFF22C73CFF22C73CFF22C73CFF22C63BFF22C9
      3DFF27AC36FFF5F9F5FF000000000000000061B86DFF3AD15CFF4DDD76FF56ED
      84FF52E97EFF47DB6EFF406F42FFA1A3A1FF399142FF35793AFFCDCDCDFF3A95
      3CFF3BD65DFF0BB41BFF11B925FF14BB29FF18C02EFF1CC434FF1DC035FF1AB1
      2EFF587C59FFF0F0F0FF00000000000000000000000000000000000000006F95
      AB00136FAE001563AA00106EB700115493002C79AA003AA0E2003AA0E2003298
      DC003298DC003AA0E2003AA0E20037A0E2002A91D80037A0E2003298DC001E7D
      C30011608D000000000000000000000000000000000000000000FAF9F5FFC4B5
      84FFFEFEFEFFFEFEFEFFFCFAF7FFD8C09DFFD2B58FFFD2B58FFFD2B58FFFD2B5
      8FFFD2B58FFFD2B58FFFD2B58FFFD2B58FFFD8C09DFFFCFAF7FFFEFEFEFFFEFE
      FEFFC4B584FFFBFAF6FF00000000000000000000000000000000F6F9F6FFE7F1
      E7FFE9F3E9FFE9F3E9FFE9F3E9FFE8F1E8FF4CBE63FF5FF78FFF35D656FF24C9
      40FF26CA42FF26CA42FF28CA44FF28CA43FF28CA43FF28CA44FF26CA43FF26C9
      43FF29D148FF5DAD63FF0000000000000000B3CBB4FF3BDB5FFF30B549FF53EC
      81FF4EE376FF49DF70FF35C252FF3C9B51FF39CF59FF259E34FFAAAAAAFF55A3
      5AFF43DB68FF12B926FF13BA28FF18BE2EFF1AC032FF1EC339FF23C83EFF1FBA
      37FF90A090FFFDFDFDFF00000000000000000000000000000000000000005A8B
      A7000C61A3001E7DC3002283D0001B77C10021669A0042A8E60042A8E6003298
      DC0037A0E20040A6E5003AA0E20040A6E5002A91D8003AA0E200399BE0002585
      C9000B6090000000000000000000000000000000000000000000FAF9F6FFC5B6
      85FFFEFEFEFFFEFEFEFFD4B78AFFA56601FFA66701FFA66700FFA66701FFA667
      00FFA66701FFA66701FFA66701FFA66700FFA56601FFD4B78AFF8AC6A3FFADD6
      BFFFC4B685FFFBFAF7FF0000000000000000000000000000000053BC67FF48D3
      70FF40CE68FF50E280FF50E380FF3CC662FF59E888FF65FF9CFF49E973FF40E0
      67FF40E067FF30D24FFF2DCF4CFF2DCF4CFF2ECF4DFF2CCF4BFF33D554FF2DCC
      4DFF2EB642FF82BA82FF00000000000000000000000047B053FF23BB3CFF43D2
      67FF49DF70FF44D969FF3FD360FF39CF57FF34C64FFF25B139FF7B877BFF85A7
      86FF49DD6FFF22C73DFF17BD2DFF1AC132FF1FC439FF22C63DFF28CE45FF267C
      2DFFBFBFBFFFFDFDFDFF00000000000000000000000000000000000000004F7D
      9800106EB700639ED1008CC0E6005997CB002F80B90042A9E80042A8E600359C
      DF003AA0E20042A8E60042A8E60042A8E6003298DC003AA0E2003AA0E2002E8D
      D000026096000000000000000000000000000000000000000000FAF9F5FFC5B6
      85FFFFFFFFFFFFFFFFFFD2B17EFFBA842AFFBA8328FFBA8328FFBA8328FFBA83
      28FFBA8328FFBA8328FFBA8329FFBF8C37FFBF8C38FFD2B17EFFA8D1C1FFC3DF
      D2FFC5B685FFFBFAF7FF000000000000000000000000000000004AC56AFF51E5
      83FF38C464FF48DF80FF47DD7EFF47DC7DFF32BC5BFF3EA852FF93C799FF4AD0
      73FF5CF394FF3ADB5EFF34D556FF35D657FF34D556FF36DB5AFF4FB05CFFD7E7
      D7FFFAFCFAFF00000000000000000000000000000000D4DCD4FF24BC3AFF17A6
      29FF42D465FF3FD360FF3ACD58FF34C54FFF2EC046FF27B93BFF4F7251FFB5C1
      B5FF42D165FF37D759FF1AC031FF1FC438FF23C63EFF26CB44FF2CCF4AFF23B2
      3AFF637463FFDCDCDCFF00000000000000000000000000000000000000003880
      AA002384C4004090CF0066A1D1003789C80046ACE90046ACE90048AEEB003AA0
      E2003AA0E20042A9E80042A9E80042A9E8003298DC003AA0E2003AA0E2002990
      D700026096000000000000000000000000000000000000000000FAF9F6FFC5B6
      85FFFEFEFEFFFEFEFEFFD5B788FFD8B380FFE5CAA3FFDFC095FFDCBC8EFFDCBC
      8DFFDEBF93FFE2C59DFFE7CEABFFE9D1AFFFD8B380FFD5B788FF4E8FFEFF81AF
      FEFFC5B685FFFBFAF7FF0000000000000000000000000000000048B764FF48DC
      7CFF27B053FF34C96EFF33C66CFF33C66CFF37CC72FF4BB164FFF5F9F5FF3FC7
      69FF4EE586FF3FDE64FF3BDB5FFF3CDC5FFF3BDB5FFF3FE265FF7DBE82FF0000
      000000000000000000000000000000000000000000000000000097B798FF0EAE
      1FFF23A937FF3ACE59FF34C74EFF2DC046FF28B83CFF22B535FF2C7831FFC8CA
      C8FF3FB958FF4CEA77FF1CC234FF21C63CFF26C942FF2CCE4AFF2FD151FF36D9
      5AFF239A34FF919391FFF4F4F4FF000000000000000000000000000000002374
      A2002990D7004DA8E60042A9E800399BE0004CB4EF004CB4EF004CB4EF00399B
      E0003AA0E2004CB4EF004CB4EF004CB4EF003AA0E2003AA0E20042A9E8003596
      DC00046298000000000000000000000000000000000000000000FBFBF8FFA892
      4CFFD8CFAEFFEDE9D9FFCEAC73FFC49442FFD3AE6CFFD5B273FFD7B477FFD7B4
      77FFD7B477FFD7B477FFD5B273FFD3AE6CFFC49442FFCDAC73FFBDCAD8FFBABB
      AEFFA8924CFFFCFBF9FF0000000000000000000000000000000052B064FF42D9
      7DFF1DA23EFF28BA57FF26B754FF26B754FF27B956FF34A94FFFCEE1CEFF39C9
      6BFF4AE180FF44E46BFF42E16AFF42E16BFF42E16AFF45E56EFF98C69BFF0000
      00000000000000000000000000000000000000000000FBFBFBFF6B976DFF1B9E
      29FF3BCF59FF34C74FFF2DBF46FF29B83DFF22B134FF1CAC2AFF15881DFFB0B0
      B0FF56AC61FF60F993FF1EC438FF3EDE63FF46E46FFF2ED04DFF35D657FF38D9
      5EFF3FE065FF3E7342FFCDCDCDFF00000000000000000000000000000000146B
      9D003394D70046ACE90042A9E8003AA0E2004CB4EF004CB4EF004CB4EF003AA0
      E20040A6E5004CB4EF0042A9E8004CB4EF003AA0E2003AA0E20046ACE900399B
      E00004629800000000000000000000000000000000000000000000000000FAF8
      F4FFC2B383FF9A7E2BFFA78134FFAC7B27FFAA7619FFA87215FFA76F0FFFA66F
      0FFFA66F0FFFA76F0FFFA87215FFAA7619FFAC7B27FFA78134FF967923FFD2C8
      A9FFF9F8F5FF00000000000000000000000000000000000000006FB578FF3DD5
      7AFF1A9E36FF1BAE3EFF1BAB3DFF1BAB3DFF1CAC3EFF1DA338FF97C399FF37CB
      70FF4BE27FFF4CE975FF4AE975FF4BE975FF4BE976FF46E36FFFD1E4D1FF0000
      000000000000000000000000000000000000000000009DBD9DFF09B31BFF1EA7
      31FF2BB642FF2BBB42FF28BA3CFF21B333FF1BAB2AFF15A420FF0C9412FF858E
      85FF82A784FF66FF9DFF49E773FF23AE39FF18C02FFF47E570FF38D85CFF3DDE
      65FF44E46CFF2FB248FF949794FFF7F7F7FF0000000000000000000000000A65
      9A00389CDE009BC5DC00EAE0D300ECE5DC00ECE5DC00ECE5DC00ECE5DC00ECE5
      DC00EAE4DB00ECE5DC00ECE5DC00ECE5DC00ECE5DC00EAE0D300C6D0D00040A2
      E4000A659A000000000000000000000000000000000000000000000000000000
      0000EFEBDFFFCDC099FFC3B280FFB7A25FFFA1862FFFA28B40FFA28A3FFFA28A
      3FFFA28A3FFFA28A3FFFA38B40FFA1862FFFB8A25FFFC3B281FFCDC099FFF5F3
      EBFF000000000000000000000000000000000000000000000000A5CBA5FF35CB
      71FF20A744FF109E24FF13A02AFF12A029FF13A129FF129F29FF2A9238FF35C9
      70FF52EA85FF52EF80FF52F082FF52EF82FF54F183FF4ACF69FFF5F8F5FF0000
      00000000000000000000000000000000000000000000D4E2D4FF54AC59FF28AE
      37FF21BB3AFF2ABF45FF29B640FF1DA52EFF11991BFF0B9510FF07950BFF768C
      78FF809A80FF33C550FF118B1CFF5C745CFF15971FFF36DA5AFF45E46EFF42E1
      6AFF49E673FF4BE775FF527454FFE3E3E3FF0000000000000000000000000462
      98003AA0E200D2D8D7006D65EB005953EF006761F0007973F100C6C2F600928D
      F200908BF3005650EF005F59EF00F9F6FA00908BF300C2BCF300F7E7D9004DA8
      E6000969A40071848F0000000000000000000000000000000000000000000000
      0000000000000000000000000000F1EBD8FFC8B36AFFCFC6A5FFCFC5A5FFCFC6
      A5FFCFC5A5FFCFC5A5FFCFC5A5FFC8B36AFFF1ECDAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000F0F6F0FF29B4
      58FF2DBB60FF078E11FF0B9919FF0A9918FF0B9719FF089413FF21A746FF34C8
      6DFF5DF78FFF5BF78CFF5BF78CFF5BF68CFF60FD94FF60B86DFF000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFD3DBD3FF9CC99EFF69BB73FF4BC666FF4BDD74FF3BBD58FF609163FF89A3
      89FF3FC561FF41CC6AFF4AE082FF289E45FF336A33FF1EBA35FF51EE7EFF47E5
      71FF4DEB79FF56F385FF328039FFD3D3D3FF0000000000000000000000000462
      980042A9E800DCDEDA004D46ED00B4B1F800D7D6FB00DBDAFC00433CEF004A44
      F000F5F5FE008581F400A29EF700F9F6FA00726DF300B4B1F800FAECDF0055AE
      E7000969A400647C8A0000000000000000000000000000000000000000000000
      0000000000000000000000000000F4EEDAFFCCB873FFD6CEB1FFCCB975FFD0B9
      68FFCFB867FFCCB975FFD6CEB1FFCCB873FFF4EFDCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000004CA9
      5EFF34CB73FF0F9023FF029008FF03920CFF03920BFF05870DFF2EBF66FF40D6
      79FF68FF9CFF66FD99FF66FD99FF66FD99FF63F596FFC5DDC6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFE5DFFFE3E7E3FFA5B5A5FF37B7
      55FF58F291FF4BE182FF40D378FF36CB70FF20A947FF118D1EFF43E46BFF55F0
      83FF52EE81FF5DFB90FF358D40FFDCDCDCFF0000000000000000000000000969
      A40046ACE900EAE4DB004D46ED007D78F400A29EF700E6E5FD003F38EF005C56
      F100F9F6FA008581F400A5A2F700F9F6FA00726DF300A6A2E600E6D9CD005DB1
      E5001575B1005573850000000000000000000000000000000000000000000000
      0000000000000000000000000000F4EFDBFFD3C07DFFE1D9C2FFCFB867FFFBFA
      F4FFFBFAF4FFCFB867FFE1D9C2FFD3C07DFFF5EFDDFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5DE
      C6FF2FC266FF2EBE64FF05830CFF008600FF008001FF25AE50FF2EC369FF6DF3
      9DFF89FFB2FF88FFB2FF88FFB1FF90FFBAFF60BA70FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFBFF2BA53AFF119D
      21FF3CC96AFF41D77AFF35C96EFF29BB59FF1BAB3CFF0B9019FF3BD25DFF5BF5
      8BFF57F288FF5DF68EFF5B895DFFF5F5F5FF0000000000000000000000000969
      A4004EB3F000ECE5DC00645EEF005C56F1006C66F3007D78F400ACA9F800908B
      F3009591F600534CF0005E58F1008581F4007367E000CCBCBA00A0B5C1004CB4
      EF001575B100466C820000000000000000000000000000000000000000000000
      0000000000000000000000000000F4EFDBFFD8C687FFE9E3D0FFD9C889FFD3BA
      68FFD2BA66FFD9C889FFE9E3D0FFD8C687FFF5EFDDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052AB61FF45DD81FF3FD275FF2DB554FF39C86AFF40D67AFF53E688FFAFFF
      CAFFADFFC9FFAEFFC9FFB3FFCEFF8ADBA2FFD8E7D8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000087AE88FF08A7
      17FF0B9E17FF21A545FF28BB5AFF1AAB3CFF109E22FF028B09FF38C858FF5CF7
      8EFF61FC95FF39A34BFFD9DAD9FF000000000000000000000000000000001170
      B00053B3EF00F2E1D100FDF4ED00FDF6F300FDF6F300FDF6F300FDF6F300FDF6
      F300FDF6F300FDF6F300FDF6F300FDF6F300FAECDF00C0D0D7005EBEF30053B3
      EF001C7CB9003867820000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F5E8FFCCB666FFDBD3B8FFDBD3B8FFDBD3
      B8FFDBD3B8FFDBD3B8FFDBD3B8FFCCB666FFF8F5EAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEF5EEFF46B55FFF57F090FF56F091FF54EE8DFF64F299FFCFFFE3FFDDFF
      EBFFDBFFEAFFE1FFF0FFA3D9B0FFC6DDC6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3BF
      A3FF1AA629FF22C23BFF159726FF0A8D19FF028A09FF017C03FF4ADE73FF62FA
      95FF42A453FFD3D5D3FF00000000000000000000000000000000000000001170
      B00046ACE9009BC5DC00BFD3D900BFD3D900BFD3D900BFD3D900BFD3D900BFD3
      D900BFD4DC00BFD4DC00BFD4DC00BFD3D900B2CCD8005EBEF3004EB3F00046AC
      E9001F7FBF002D64840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9C47EFFC9B674FFCDC198FFCDC1
      99FFCDC199FFCDC198FFC9B674FFD9C57FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFDFBFF75B77BFF51BE68FF53C26AFF8CC390FF92C294FF9AC9
      9EFF99C79CFF7FB680FFDFECDFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBE1DBFF4DA454FF30CB4FFF40DC66FF3FD161FF4DE377FF62FC95FF3C9A
      48FFDADBDAFF0000000000000000000000000000000000000000000000000969
      A4002384C4002889C7002E8DD0002889C7002E8DD0002E8DD000298AC8002E8D
      D000298AC8002E8DD0002889C7002E8DD0002889C7002889C7002889C7002384
      C4000B69AA002B67890000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFDFFECE2C1FFE1D39FFFE2D3
      A0FFE2D3A0FFE2D39FFFECE2C1FFFEFEFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5CFC5FF6AAF6EFF4BB25CFF47B65DFF66A66BFFE4E5
      E4FF000000000000000000000000000000000000000000000000000000006588
      9D0060849A0060849A0060849A0060849A0060849A0060849A0060849A006084
      9A0060849A0060849A0060849A0060849A0060849A0060849A0060849A006084
      9A0065889D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000C00007FF
      FFFF000000000000C00003FFFFFF000000000000E00003000001000000000000
      E00003000000000000000000C00003000000000000000000E000030000000000
      00000000E00003000000000000000000E00003000000000000000000E0000300
      0000000000000000C00003000000000000000000C00007000000000000000000
      C00007000000000000000000C000070000000000000000008000070000000000
      0000000080000F00000000000000000080000F000000000000000000C0000F00
      0000000000000000E0000F000000000000000000F0000F000000000000000000
      F8000FFFFFFF000000000000FC000FFFFFFF000000000000FE0007FFFFFF0000
      00000000FF8007FFFFFF000000000000FFFFFFFC0FFFFE01FFFFFFFFFFFFFFFC
      0007FE01FFFFFFFFFFFFC0FC0001FE007FF8000FFFFFC0F80001FE007FF8000F
      FFFF80F80001FE007FF8000FFFFF00F80001FE007FF8000FFC7E00F00001FE00
      7FF8000FF00C01F00001000003F8000FE00003E00001000003F8000F800007E0
      0001000000F8000F80001FC00001000000F8000F00003FC00001000000F8000F
      0000FF800000000000F800070000FF000000000000F000030000FF0000000000
      00E000030000FF000000C00000C000030000FF000000C00000C000030000FF80
      0000FE007FF000070000FFC00000FE007FF8000F8001FFE00000FE007FF8000F
      8003FFF80000FE007FF8000FC007FFFC007FFE007FF8000FF00FFFFF007FFF80
      7FFFFFFFFFFFFFFFE07FFF807FFFFFFFFFFFFFFFFE3FFFFC7FFFC7FFE00007FF
      FE0FFFF87FFF03FFC00003FFFC03FFE07FFF01FF800001FFFC01FF807FE000FF
      800001FFFC00FF007F00007F800001FFFC00FC001F00007F800001FF8400F800
      0100003F800001FF0700E0000000001F800001FC0780C0000000000F800001F0
      000080000000000F800001E00000000000000007800001800000000000000003
      800001000000800000000001800001000000C00000000000800001000000E000
      00000001800001000001F00000000003800001000003F8000000000780000100
      0007FC0000F0001F800001C0003FFE0000FF003F800001E001FFFF0001FF007F
      800001F807FFFF8003FF01FFC00003FE0FFFFF80E7FF03FFE00007FF0FFFFFC0
      FFFF07FFFFFFFFFFFFFFFFE3FFFF1FFFFF0FFFFFFFFFFFFFFFFFFFFFFC047FFF
      00FF80003FC00003F0003FFF00FF80003F800001C0001FFF00FF80003F000000
      C0001FFF00FF80003F000000800017FF00FF80003F000000800003FF00FF8000
      3F000000800001FF00FF80003F00000000000180000180003F00000000600180
      000180003F00000000780380000180003F000000003C0180000180001F000000
      003C0080000180000F000000C01E00800001800007000000800E008000018000
      03000000800000800001800001000000800001FF00FF800001000000C00001FF
      00FF800001000000C00001FF00FF800023000000FC0001FF00FF80007F000000
      F80003FF00FF8000FF000000F8000FFF00FF8001FF800001FE203FFF00FF8003
      FFE00007FFE0FFFFFFFFFFFFFFFFFFFFFFE03FF03FFFFFFFFFFFFFFFFF0007E0
      0FFFF0000FFFFFFFC00003C007FFF00007FFFFFFC000038003FFF00007C00003
      C0001F0001FFF00007C00003F0001F0001FFF00007C00003FE000F0000FFF000
      07C00003FF800F00000FF00007C00003FF8007000003E00007C00003FF000300
      0003E00007C00003C00003000003E00007C00003C00003800003E00007C00003
      C00007800003E00007C00003C0001FC00001E00007C00003C0001F800001E000
      07E00007C0001F800000E00007F0000FC0001F800000E00003FE007FC0003FE0
      0000E00003FE007FE0003FFF0000E00003FE007FE0003FFF8000E00003FE007F
      F0007FFFC001E00003FE007FF000FFFFE003E00003FF00FFF801FFFFF007E000
      03FF00FFFFFFFFFFFC0FE00007FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryFoto: TADOQuery
    Connection = dmGlobal.conImage
    Parameters = <>
    SQL.Strings = (
      'select pegawaiid,foto1'
      'from pegawaifoto')
    Left = 296
    Top = 120
  end
  object qryLembur: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tgl'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from lembur a'
      'where dbo.fnGetDate(tgl)=dbo.fnGetDate(:tgl)'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid = :kodegroupshiftid'
      'and shift = :shift')
    Left = 496
    Top = 200
  end
  object qryLock: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select pegawaiid,flagkonfirmasi,flagapprove'
      'from pegawai '
      'where nopeg=:nopeg'
      'and flagapprove='#39'1'#39)
    Left = 528
    Top = 200
  end
  object qryInsert: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tgl'
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from absen a'
      'where tgl=cast(:tgl as datetime) '
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      'and pegawaiid=:pegawaiid')
    Left = 560
    Top = 232
  end
  object qryGetDateTime: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select cast(GetDate() as timestamp) as ServerDateTime')
    Left = 560
    Top = 136
  end
  object qrySetFlagApprove: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'update pegawaiapproval '
      
        'set flagapprovelongshift='#39'0'#39',flagapproveterlambat='#39'0'#39',flagapprov' +
        'epulangawal='#39'0'#39',flagapprovemasukkaloalpha='#39'0'#39',flagapprovemasuktd' +
        'kabsenplg='#39'0'#39' '
      'where pegawaiid=:pegawaiid')
    Left = 560
    Top = 200
  end
  object qryKemarin: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
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
    Left = 528
    Top = 136
  end
  object qryStatusAbsenTerakhir: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 a.*,d.overday'
      'from absen a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      
        'left join groupshiftdt2 c on a.shift=c.shift and a.kodegroupshif' +
        'tid=c.kodegroupshiftid '
      'left join masterjamkerja d on c.kodejamkerja=d.kodejamkerja'
      'where'
      
        'dbo.fngetdate(a.tgl) <dbo.fngetdate(:tglabsen) and b.pegawaiid=:' +
        'pegawaiid'
      'order by a.tgl desc')
    Left = 592
    Top = 136
  end
  object qryLibur: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tanggal'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select tgl'
      'from libur'
      'where tgl=:tanggal')
    Left = 496
    Top = 136
  end
  object qrySupervisor: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select foto1'
      'from pegawaifoto'
      'where pegawaiid=:pegawaiid')
    Left = 496
    Top = 232
  end
  object qryCekLongShift: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'hariini'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 *'
      'from absen a'
      'where'
      'tgl =cast(:hariini as datetime)'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid<>:kodegroupshiftid or shift<>:shift'
      'order by tgl desc')
    Left = 560
    Top = 168
  end
  object qrySupervisorValidate: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select pegawaiid'
      'from personvalidation'
      'where pegawaiid = :pegawaiid')
    Left = 528
    Top = 232
  end
  object qryPrevAbsensToday: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  b.nopeg,b.Nama, c.NamaGroupShift, '
      
        '  d.NamaJabatan,a.keterangan as KetAbsen,e.kodeabsen,e.keteranga' +
        'n,a.* '
      'from Absen a'
      'left join Pegawai b on a.PegawaiId = b.PegawaiId '
      
        'left join GroupShiftHd c on a.KodeGroupshiftId = c.KodeGroupshif' +
        'tId'
      'left join Jabatan d on b.KodeJabatan = d.KodeJabatan'
      'left join KodeAbsen e on a.KodeAbsen = e.KodeAbsen'
      'where'
      '(datediff(day,Tgl,cast(:tgl as datetime))=0) or'
      '(datediff(day,Tgl,cast(:tgl as datetime))=1 and a.shift='#39'3'#39')'
      'order by Masuk1')
    Left = 496
    Top = 56
  end
  object qrySelect: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tglabsen'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'jamabsen'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from'
      '('
      
        'select distinct a.pegawaiid,a.kodegroupshiftid,a.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,k.namagroupshift,j.jammulaiabsen,j.jamakhirabse' +
        'n,j.jambataslembur'
      'from scheduling a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      
        'left join groupshiftdt2 g on a.kodegroupshiftid=g.kodegroupshift' +
        'id and a.shift=g.shift and g.kodehari=datepart(weekday,cast(:tgl' +
        'absen as datetime))'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      'where tglschedule =dbo.fnGetDate(:tglabsen)'
      'and b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'1'#39
      'union'
      
        'select distinct b.pegawaiid,g.kodegroupshiftid,g.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,k.namagroupshift,j.jammulaiabsen,j.jamakhirabse' +
        'n,j.jambataslembur'
      'from pegawai b'
      
        'left join groupshiftdt2 g on b.kodegroupshiftid=g.kodegroupshift' +
        'id and b.shift=g.shift and g.kodehari=datepart(weekday,cast(:tgl' +
        'absen as datetime))'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'where b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'0'#39
      'union'
      
        'select distinct b.pegawaiid,g.kodegroupshiftid,g.shift,j.jamkerj' +
        'aawal as dutyon,j.jamkerjaakhir as dutyoff,j.overday,j.toleransi' +
        'terlambat,j.jumlahsetengahhari,'
      
        'b.statusschedule,k.namagroupshift,j.jammulaiabsen,j.jamakhirabse' +
        'n,j.jambataslembur'
      'from pegawai b'
      
        'left join groupshiftdt2 g on b.kodegroupshiftid=g.kodegroupshift' +
        'id and g.shift=dbo.getshiftschedule(b.pegawaiid,cast(:tglabsen a' +
        's datetime),cast(:jamabsen as datetime)) and g.kodehari=datepart' +
        '(weekday,cast(:tglabsen as datetime))'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'where b.pegawaiid=:pegawaiid'
      'and b.statusschedule='#39'2'#39
      ') g order by dutyon desc')
    Left = 296
    Top = 152
  end
  object qryStatusAbsen: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tglabsen'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 a.*,c.*'
      'from absen a'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where dbo.fnGetDate(a.tgl)=dbo.fnGetDate(:tglabsen)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=datepart(weekday,a.tgl)'
      'order by a.tgl desc')
    Left = 528
    Top = 168
  end
  object qryStatusAbsenNotOK: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 a.*,c.*'
      'from absen a'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where'
      'dbo.fnGetDate(a.tgl) =dbo.fnGetDate(:tglabsen)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=datepart(weekday,a.tgl)'
      'and a.statusabsen='#39'0'#39
      'order by a.tgl desc')
    Left = 496
    Top = 168
  end
  object qryStatusAbsenOK: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 a.*,c.*'
      'from absen a'
      
        'left join groupshiftdt2 b on a.kodegroupshiftid=b.kodegroupshift' +
        'id and a.shift=b.shift'
      'left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja'
      'where'
      'dbo.fngetdate(a.tgl) =dbo.fngetdate(:tglabsen)'
      'and a.pegawaiid=:pegawaiid'
      'and kodehari=datepart(weekday,a.tgl)'
      'and a.statusabsen<>'#39'0'#39
      'order by a.tgl desc,a.shift desc')
    Left = 464
    Top = 168
  end
  object qryUpdateAbsen: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'update absen set keluar1=:keluar1'
      'where '
      'tgl=:tgl'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      '')
    Left = 496
    Top = 88
  end
  object qryPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'pegawaiid'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
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
      
        'and b.tglmulai =(select top 1 tglmulai from mutasi where pegawai' +
        'id=a.pegawaiid and tglmulai<=cast(:tglabsen as datetime) and sta' +
        'tusapprove='#39'1'#39' order by tglmulai desc)'
      
        'and (a.tglkeluar>=cast(:tglabsen as datetime) or a.flagkeluar='#39'0' +
        #39')')
    Left = 296
    Top = 88
  end
  object qryCekPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'nopeg'
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end
      item
        Name = 'tglabsen'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select distinct a.pegawaiid,a.nopeg,a.nama'
      'from pegawai a'
      'left join mutasi b on a.pegawaiid=b.pegawaiid'
      'where a.nopeg = :nopeg'
      
        'and dbo.fnGetDate(b.tglmulai) =(select top 1 dbo.fnGetDate(tglmu' +
        'lai) from mutasi where pegawaiid=a.pegawaiid and dbo.fnGetDate(t' +
        'glmulai)<=dbo.fnGetDate(:tglabsen) and statusapprove='#39'1'#39' order b' +
        'y tglmulai desc)'
      
        'and (dbo.fnGetDate(a.tglkeluar)>=dbo.fnGetDate(:tglabsen) or a.f' +
        'lagkeluar='#39'0'#39')')
    Left = 400
    Top = 56
  end
  object qryPegawaiActive: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select pegawaiid,nopeg,nama'
      'from pegawai')
    Left = 400
    Top = 88
  end
  object qryEmployee: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select '
      '  a.EmployeeId, a.UserName, a.EmployeeName, '
      '  b.PositionName, c.DepartmentName, d.CompanyName,'
      '  b.PositionId, c.DepartmentId, d.CompanyId,e.pegawaiid'
      'from Employee a'
      'inner join JobPosition b on a.PositionId = b.PositionId'
      'inner join Department c on b.DepartmentId = c.DepartmentId'
      'inner join Company d on c.CompanyId = d.CompanyId'
      
        'inner join Pegawai e on a.EmployeeId = cast(e.pegawaiid as varch' +
        'ar)'
      'where e.nopeg= :nopeg'
      'and IsVarcharNull(a.Password, '#39#39') like :Password'
      'and a.FlagInactive = '#39'0'#39
      'and a.FlagInactiveUser = '#39'0'#39)
    Left = 280
    Top = 248
  end
  object DPFPVerificationResult1: TDPFPVerificationResult
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 152
    Top = 384
  end
  object DPFPVerification1: TDPFPVerification
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 120
    Top = 384
  end
  object qryFingerPrint: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from FingerPrint')
    Left = 496
    Top = 280
  end
end
