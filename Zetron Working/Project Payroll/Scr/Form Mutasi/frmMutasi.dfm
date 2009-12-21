inherited fmMutasi: TfmMutasi
  Caption = 'Mutasi'
  ClientHeight = 403
  ClientWidth = 645
  ExplicitWidth = 653
  ExplicitHeight = 437
  DesignSize = (
    645
    403)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 645
    ExplicitWidth = 645
    inherited bvlSpacer2: TBevel
      Left = 407
      ExplicitLeft = 407
    end
    inherited bvlSpacer3: TBevel
      Left = 513
      ExplicitLeft = 513
    end
    inherited bvlSpacer4: TBevel
      Left = 619
      ExplicitLeft = 619
    end
    inherited btnPrev: TcxButton
      Left = 523
      ExplicitLeft = 523
    end
    inherited btnNext: TcxButton
      Left = 571
      ExplicitLeft = 571
    end
    inherited btnPost: TcxButton
      Left = 417
      ExplicitLeft = 417
    end
    inherited btnCancel: TcxButton
      Left = 465
      ExplicitLeft = 465
    end
    inherited btnVoid: TcxButton
      Left = 359
      ExplicitLeft = 359
    end
    object btnDelete: TcxButton
      Left = 311
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actDelete
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
  end
  inherited pnlCustom: TPanel
    Width = 645
    ExplicitWidth = 645
    inherited dblcStatusApprove: TcxDBImageComboBox
      Top = 5
      ExplicitTop = 5
    end
  end
  inherited dxDockSite1: TdxDockSite
    Width = 645
    Height = 328
    ExplicitWidth = 645
    ExplicitHeight = 328
    DockType = 0
    OriginalWidth = 645
    OriginalHeight = 328
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 617
      Height = 328
      ExplicitWidth = 617
      ExplicitHeight = 328
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 617
        Height = 328
        ExplicitWidth = 617
        ExplicitHeight = 328
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 617
        Height = 328
        ExplicitWidth = 617
        ExplicitHeight = 328
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblCountryId: TLabel
          Left = 9
          Top = 24
          Width = 37
          Height = 13
          Caption = 'No Reg'
          Transparent = True
        end
        object Label9: TLabel
          Left = 9
          Top = 42
          Width = 36
          Height = 13
          Caption = 'No Peg'
          Transparent = True
        end
        object Label10: TLabel
          Left = 9
          Top = 60
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label11: TLabel
          Left = 9
          Top = 78
          Width = 43
          Height = 13
          Caption = 'Tgl Mulai'
          Transparent = True
        end
        object Label15: TLabel
          Left = 9
          Top = 96
          Width = 82
          Height = 13
          Caption = 'Perusahaan Baru'
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 114
          Width = 50
          Height = 13
          Caption = 'Divisi Baru'
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 132
          Width = 83
          Height = 13
          Caption = 'Departemen Baru'
          Transparent = True
        end
        object Label16: TLabel
          Left = 9
          Top = 150
          Width = 84
          Height = 13
          Caption = 'OutSourcing Baru'
          Transparent = True
        end
        object Label7: TLabel
          Left = 9
          Top = 168
          Width = 63
          Height = 13
          Caption = 'Jabatan Baru'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 186
          Width = 55
          Height = 13
          Caption = 'Status Baru'
          Transparent = True
        end
        object Label2: TLabel
          Left = 340
          Top = 186
          Width = 59
          Height = 13
          Caption = 'Status Lama'
          Transparent = True
        end
        object lStatus: TLabel
          Left = 443
          Top = 186
          Width = 32
          Height = 13
          Caption = 'lStatus'
          Transparent = True
        end
        object lJabatan: TLabel
          Left = 443
          Top = 168
          Width = 37
          Height = 13
          Caption = 'ljabatan'
          Transparent = True
        end
        object Label12: TLabel
          Left = 340
          Top = 168
          Width = 67
          Height = 13
          Caption = 'Jabatan Lama'
          Transparent = True
        end
        object Label18: TLabel
          Left = 340
          Top = 150
          Width = 88
          Height = 13
          Caption = 'OutSourcing Lama'
          Transparent = True
        end
        object lOutSourcing: TLabel
          Left = 443
          Top = 150
          Width = 61
          Height = 13
          Caption = 'lOutSourcing'
          Transparent = True
        end
        object lDepartemen: TLabel
          Left = 443
          Top = 132
          Width = 60
          Height = 13
          Caption = 'lDepartemen'
          Transparent = True
        end
        object Label13: TLabel
          Left = 340
          Top = 132
          Width = 87
          Height = 13
          Caption = 'Departemen Lama'
          Transparent = True
        end
        object Label14: TLabel
          Left = 340
          Top = 114
          Width = 54
          Height = 13
          Caption = 'Divisi Lama'
          Transparent = True
        end
        object lDivisi: TLabel
          Left = 443
          Top = 114
          Width = 27
          Height = 13
          Caption = 'lDivisi'
          Transparent = True
        end
        object lPerusahaan: TLabel
          Left = 443
          Top = 96
          Width = 59
          Height = 13
          Caption = 'lPerusahaan'
          Transparent = True
        end
        object Label17: TLabel
          Left = 340
          Top = 96
          Width = 86
          Height = 13
          Caption = 'Perusahaan Lama'
          Transparent = True
        end
        object Label19: TLabel
          Left = 9
          Top = 204
          Width = 55
          Height = 13
          Caption = 'Keterangan'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 42
          Height = 13
          Caption = 'Tgl Entry'
          Transparent = True
        end
        object Label3: TLabel
          Left = 245
          Top = 4
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 269
          Top = 22
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 245
          Top = 76
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 318
          Top = 94
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 318
          Top = 112
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 318
          Top = 132
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 318
          Top = 169
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 318
          Top = 187
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbeNoreg: TcxDBTextEdit
          Left = 118
          Top = 21
          DataBinding.DataField = 'noreg'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 145
        end
        object dbeNoPeg: TcxDBExtLookupComboBox
          Left = 118
          Top = 39
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
          TabOrder = 2
          Width = 145
        end
        object dbeNama: TcxDBExtLookupComboBox
          Left = 118
          Top = 57
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          TabOrder = 3
          Width = 145
        end
        object dbeTglMulai: TcxDBDateEdit
          Left = 118
          Top = 75
          DataBinding.DataField = 'tglmulai'
          DataBinding.DataSource = dsDefault
          Properties.ImmediatePost = True
          TabOrder = 4
          Width = 121
        end
        object dbeKodePerusahaan: TcxDBExtLookupComboBox
          Left = 118
          Top = 93
          DataBinding.DataField = 'kodeperusahaan'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPerusahaan
          Properties.KeyFieldNames = 'kodeperusahaan'
          Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
          TabOrder = 5
          Width = 194
        end
        object dbeKodeDivisi: TcxDBExtLookupComboBox
          Left = 118
          Top = 111
          DataBinding.DataField = 'kodedivisi'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevDivisi
          Properties.KeyFieldNames = 'kodedivisi'
          Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
          Properties.OnEditValueChanged = dbeKodeDivisiPropertiesEditValueChanged
          TabOrder = 6
          Width = 194
        end
        object dbeKodeDepartemen: TcxDBExtLookupComboBox
          Left = 118
          Top = 129
          DataBinding.DataField = 'kodedepartemen'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevDepartemen
          Properties.KeyFieldNames = 'kodedepartemen'
          Properties.ListFieldItem = dmGeneral.cgvPrevDepartemennamadepartemen
          TabOrder = 7
          Width = 194
        end
        object dbeKodeOutSourcing: TcxDBExtLookupComboBox
          Left = 118
          Top = 147
          DataBinding.DataField = 'kodeoutsourcing'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevOutSourcing
          Properties.KeyFieldNames = 'kodeoutsourcing'
          Properties.ListFieldItem = dmGeneral.cgvPrevOutSourcingnama
          TabOrder = 8
          Width = 194
        end
        object dbeKodeJabatan: TcxDBExtLookupComboBox
          Left = 118
          Top = 165
          DataBinding.DataField = 'kodejabatan'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevJabatan
          Properties.KeyFieldNames = 'kodejabatan'
          Properties.ListFieldItem = dmGeneral.cgvPrevJabatannamajabatan
          TabOrder = 9
          Width = 194
        end
        object dbeKodeStatus: TcxDBExtLookupComboBox
          Left = 118
          Top = 183
          DataBinding.DataField = 'kodestatus'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvStatusKaryawan
          Properties.KeyFieldNames = 'kodestatus'
          Properties.ListFieldItem = dmGeneral.cgvStatusKaryawannamastatus
          TabOrder = 10
          Width = 194
        end
        object dbeKeterangan: TcxDBMemo
          Left = 118
          Top = 201
          DataBinding.DataField = 'keterangan'
          DataBinding.DataSource = dsDefault
          TabOrder = 11
          Height = 45
          Width = 435
        end
        object btnGetId: TcxButton
          Left = 290
          Top = 22
          Width = 19
          Height = 19
          Hint = 'Auto Generate Id'
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
            6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
            934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
            BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
            B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
            FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
            4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000}
          TabOrder = 12
          TabStop = False
          OnClick = btnGetIdClick
        end
        object dbeTglMutasi: TcxDBDateEdit
          Left = 118
          Top = 3
          DataBinding.DataField = 'tglmutasi'
          DataBinding.DataSource = dsDefault
          Properties.ImmediatePost = True
          TabOrder = 0
          OnEditing = dbeTglMutasiEditing
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMutasi: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvMutasi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Total ,0.;-,0.'
              Kind = skCount
              Position = spFooter
              FieldName = 'pegawaiid'
              Column = cgvMutasiNopeg
              DisplayText = 'Total'
            end
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              Column = cgvMutasiNopeg
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'pegawaiid'
              Column = cgvMutasiNopeg
              DisplayText = 'Grand Total'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvMutasiStylesGetContentStyle
          object cgvMutasinoreg: TcxGridDBColumn
            Caption = 'No Reg'
            DataBinding.FieldName = 'noreg'
            Width = 96
          end
          object cgvMutasitglmulai: TcxGridDBColumn
            Caption = 'Tgl Mulai'
            DataBinding.FieldName = 'tglmulai'
            Width = 62
          end
          object cgvMutasiNopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
          end
          object cgvMutasiNama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          end
          object cgvMutasikodeperusahaanbaru: TcxGridDBColumn
            Caption = 'Kode Perusahaan Baru'
            DataBinding.FieldName = 'kodeperusahaan'
            Visible = False
          end
          object cgvMutasinamaperusahaan: TcxGridDBColumn
            Caption = 'Nama Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPerusahaan
            Properties.KeyFieldNames = 'kodeperusahaan'
            Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
            Width = 92
          end
          object cgvMutasikodedivisibaru: TcxGridDBColumn
            Caption = 'Kode Divisi Baru'
            DataBinding.FieldName = 'kodedivisi'
            Visible = False
          end
          object cgvMutasinamadivisi: TcxGridDBColumn
            Caption = 'Nama Divisi'
            DataBinding.FieldName = 'kodedivisi'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevDivisi
            Properties.KeyFieldNames = 'kodedivisi'
            Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
            Width = 59
          end
          object cgvMutasikodedepartemenbaru: TcxGridDBColumn
            Caption = 'Kode Departemen Baru'
            DataBinding.FieldName = 'kodedepartemen'
            Visible = False
          end
          object cgvMutasinamadepartemen: TcxGridDBColumn
            Caption = 'Nama Departemen'
            DataBinding.FieldName = 'kodedepartemen'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevDepartemen
            Properties.KeyFieldNames = 'kodedepartemen'
            Properties.ListFieldItem = dmGeneral.cgvPrevDepartemennamadepartemen
            Width = 94
          end
          object cgvMutasikodejabatanbaru: TcxGridDBColumn
            Caption = 'Kode Jabatan Baru'
            DataBinding.FieldName = 'kodejabatan'
            Visible = False
          end
          object cgvMutasinamajabatan: TcxGridDBColumn
            Caption = 'Nama Jabatan'
            DataBinding.FieldName = 'kodejabatan'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevJabatan
            Properties.KeyFieldNames = 'kodejabatan'
            Properties.ListFieldItem = dmGeneral.cgvPrevJabatannamajabatan
            Width = 74
          end
          object cgvMutasikodeoutsourcingbaru: TcxGridDBColumn
            Caption = 'Kode Outsourcing Baru'
            DataBinding.FieldName = 'kodeoutsourcing'
            Visible = False
          end
          object cgvMutasinamaoutsourcing: TcxGridDBColumn
            Caption = 'Nama OutSourcing'
            DataBinding.FieldName = 'kodeoutsourcing'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevOutSourcing
            Properties.KeyFieldNames = 'kodeoutsourcing'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutSourcingnama
            Width = 94
          end
          object cgvMutasistatuskerjabaru: TcxGridDBColumn
            Caption = 'Status Kerja Baru'
            DataBinding.FieldName = 'kodestatus'
            Visible = False
          end
          object cgvMutasinamastatuskerja: TcxGridDBColumn
            Caption = 'Nama Status'
            DataBinding.FieldName = 'kodestatus'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvStatusKaryawan
            Properties.KeyFieldNames = 'kodestatus'
            Properties.ListFieldItem = dmGeneral.cgvStatusKaryawannamastatus
          end
          object cgvMutasiketerangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
          object cgvMutasiflagupdate: TcxGridDBColumn
            DataBinding.FieldName = 'flagupdate'
            Visible = False
          end
          object cgvMutasipegawaiid: TcxGridDBColumn
            DataBinding.FieldName = 'pegawaiid'
            Visible = False
          end
          object cgvMutasiTglKeluar: TcxGridDBColumn
            Caption = 'Tgl Keluar'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivetglkeluar
          end
          object cgvMutasiFlagKeluar: TcxGridDBColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActiveflagkeluar
          end
        end
        object cgvPegawaiMutasi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsPrevPegawai
          DataController.DetailKeyFieldNames = 'pegawaiid'
          DataController.KeyFieldNames = 'pegawaiid'
          DataController.MasterKeyFieldNames = 'pegawaiid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPegawaiMutasipegawaiid: TcxGridDBColumn
            DataBinding.FieldName = 'pegawaiid'
            Visible = False
            Styles.OnGetContentStyle = cgvPegawaiMutasipegawaiidStylesGetContentStyle
          end
          object cgvPegawaiMutasinopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'nopeg'
          end
          object cgvPegawaiMutasinama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
          end
          object cgvPegawaiMutasikodeperusahaan: TcxGridDBColumn
            DataBinding.FieldName = 'kodeperusahaan'
            Visible = False
          end
          object cgvPegawaiMutasikodedivisi: TcxGridDBColumn
            DataBinding.FieldName = 'kodedivisi'
            Visible = False
          end
          object cgvPegawaiMutasikodedepartemen: TcxGridDBColumn
            DataBinding.FieldName = 'kodedepartemen'
            Visible = False
          end
          object cgvPegawaiMutasikodejabatan: TcxGridDBColumn
            Caption = 'Kode Jabatan'
            DataBinding.FieldName = 'kodejabatan'
            Visible = False
          end
          object cgvPegawaiMutasikodestatus: TcxGridDBColumn
            Caption = 'Kode Status'
            DataBinding.FieldName = 'kodestatus'
            Visible = False
          end
          object cgvPegawaiMutasinamaperusahaan: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'namaperusahaan'
          end
          object cgvPegawaiMutasinamadivisi: TcxGridDBColumn
            Caption = 'Divisi'
            DataBinding.FieldName = 'namadivisi'
          end
          object cgvPegawaiMutasinamadepartemen: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'namadepartemen'
          end
          object cgvPegawaiMutasinamajabatan: TcxGridDBColumn
            Caption = 'Jabatan'
            DataBinding.FieldName = 'namajabatan'
          end
          object cgvPegawaiMutasinamastatus: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'namastatus'
          end
          object cgvPegawaiMutasiflagkeluar: TcxGridDBColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'flagkeluar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
          object cgvPegawaiMutasitglkeluar: TcxGridDBColumn
            Caption = 'Tgl Keluar'
            DataBinding.FieldName = 'tglkeluar'
            PropertiesClassName = 'TcxDateEditProperties'
          end
        end
        object cgMutasiLevel1: TcxGridLevel
          GridView = cgvMutasi
          object cgMutasiLevel2: TcxGridLevel
            GridView = cgvPegawaiMutasi
          end
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 496
    Top = 336
    object actDelete: TAction [4]
      Category = 'Dataset'
      Caption = 'Delete'
      ImageIndex = 7
      ShortCut = 122
      OnExecute = actDeleteExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 528
    Top = 336
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 560
    Top = 336
  end
  inherited dsDefault: TDataSource
    DataSet = qryMutasi
    OnDataChange = dsDefaultDataChange
    Left = 496
    Top = 368
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 592
    Top = 336
  end
  inherited pmPrint: TPopupMenu
    Left = 528
    Top = 368
  end
  object qryMutasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryMutasiBeforePost
    AfterPost = qryMutasiAfterPost
    BeforeDelete = qryMutasiBeforeDelete
    AfterDelete = qryMutasiAfter
    OnNewRecord = qryMutasiNewRecord
    Parameters = <
      item
        Name = 'tahun'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'bulan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from mutasi'
      'where year(tglmutasi) = :tahun '
      'and month(tglmutasi) = :bulan')
    Left = 476
    Top = 88
  end
  object qryLama: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tanggal'
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'pegawaiid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.tglmulai,a.kodeperusahaan,a.kodedivisi,a.kodedepartemen' +
        ','
      'a.kodeoutsourcing,a.kodejabatan,a.kodestatus,f.namaperusahaan,'
      
        'b.namadivisi,c.namadepartemen,g.namaoutsourcing,d.namajabatan,e.' +
        'namastatus'
      'from mutasi a'
      'left join perusahaan f on a.kodeperusahaan=f.kodeperusahaan'
      'left join divisi b on a.kodedivisi=b.kodedivisi'
      'left join departemen c on a.kodedepartemen=c.kodedepartemen'
      'left join outsourcing g on a.kodeoutsourcing=g.kodeoutsourcing'
      'left join jabatan d on a.kodejabatan=d.kodejabatan'
      'left join statuskaryawan e on a.kodestatus=e.kodestatus'
      'where a.noreg=dbo.mutasi2(cast(:tanggal as datetime),:pegawaiid)')
    Left = 444
    Top = 88
  end
  object qryUbahAbsenNoreg: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'noreg'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tglkeluar'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'update absen set noreg=:noreg'
      'where '
      'pegawaiid=:pegawaiid and '
      'tgl>=cast(:tglkeluar as datetime)')
    Left = 444
    Top = 120
  end
end
