inherited fmPegawai: TfmPegawai
  Caption = 'Master Pegawai'
  ClientHeight = 551
  ClientWidth = 767
  ExplicitWidth = 775
  ExplicitHeight = 585
  DesignSize = (
    767
    551)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 767
    ExplicitWidth = 767
  end
  inherited dxDockSite1: TdxDockSite
    Width = 767
    Height = 501
    ExplicitWidth = 767
    ExplicitHeight = 501
    DockType = 0
    OriginalWidth = 767
    OriginalHeight = 501
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 739
      Height = 501
      ExplicitWidth = 739
      ExplicitHeight = 501
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 739
        Height = 501
        ExplicitWidth = 739
        ExplicitHeight = 501
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 739
        Height = 501
        ExplicitWidth = 739
        ExplicitHeight = 501
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 735
          Height = 201
          Align = alTop
          TabOrder = 0
          object lblNIK: TLabel
            Left = 9
            Top = 6
            Width = 18
            Height = 13
            Caption = 'NIK'
            Transparent = True
          end
          object lblBarcode: TLabel
            Left = 9
            Top = 25
            Width = 40
            Height = 13
            Caption = 'Barcode'
            Transparent = True
          end
          object lblNama: TLabel
            Left = 9
            Top = 43
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object lblAlamat: TLabel
            Left = 9
            Top = 61
            Width = 32
            Height = 13
            Caption = 'Alamat'
            Transparent = True
          end
          object lblCity: TLabel
            Left = 9
            Top = 79
            Width = 22
            Height = 13
            Caption = 'Kota'
            Transparent = True
          end
          object Label1: TLabel
            Left = 9
            Top = 97
            Width = 30
            Height = 13
            Caption = 'Keluar'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 114
            Width = 37
            Height = 13
            Caption = 'Catatan'
            Transparent = True
          end
          object Label15: TLabel
            Left = 142
            Top = 5
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
            Left = 246
            Top = 23
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
            Left = 246
            Top = 41
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
            Left = 246
            Top = 77
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
          object dbeNoPeg: TcxDBTextEdit
            Left = 55
            Top = 4
            DataBinding.DataField = 'nopeg'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            Style.Color = clWindow
            TabOrder = 0
            Width = 81
          end
          object dbeBarcode: TcxDBTextEdit
            Left = 55
            Top = 22
            DataBinding.DataField = 'barcode'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 185
          end
          object dbeName: TcxDBTextEdit
            Left = 55
            Top = 40
            DataBinding.DataField = 'nama'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 185
          end
          object dbeAlamat: TcxDBTextEdit
            Left = 55
            Top = 58
            DataBinding.DataField = 'alamat'
            DataBinding.DataSource = dsDefault
            TabOrder = 3
            Width = 399
          end
          object dblcCity: TcxDBExtLookupComboBox
            Left = 55
            Top = 76
            DataBinding.DataField = 'CityId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
            TabOrder = 4
            Width = 185
          end
          object dbeTglKeluar: TcxDBDateEdit
            Left = 55
            Top = 94
            DataBinding.DataField = 'TglKeluar'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo
            Left = 55
            Top = 112
            DataBinding.DataField = 'memo'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Height = 83
            Width = 445
          end
          object btnCapture: TcxButton
            Left = 516
            Top = 6
            Width = 57
            Height = 48
            Action = actCapture
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00DEDE
              DE00CECECE00EFEFEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7E7E7006B946B003994
              4200298431009CA59C00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00639C630010B5210018CE
              310008BD180039734200CECECE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00C6C6BD00BDBDBD00EFEFEF00FFFFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ADBDAD0018A5210021C6390008BD
              210008BD210010A5180073847B00F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00CEBDB500DE6B4A00B5634A00946B6300A59C9400CECECE00F7F7
              F700FFFFFF00FF00FF00FF00FF00EFEFEF00429C4A0029CE4A0018C6310010BD
              210010BD210010C6290029843100B5B5B500FFFFFF00FF00FF00FF00FF00FF00
              FF00F7F7F700CE6B5200F7735200FF946B00F7845A00D66B4A00A5634A00947B
              7300ADA5A500DEDEDE00FFFFFF0084AD840039D6520029CE420010BD290018BD
              290010BD290018C6310010BD2900527B5A00DEDEDE00FF00FF00FF00FF00FF00
              FF00CEB5B500E75A3100E76B4200F7947300F79C7300FF947300FF946B00F77B
              5A00CE634A00A5635A008484730042C65A0039E7630018C6310018C6310018C6
              390018C6390018C6390021D6390021A531008C948C00F7F7F700FF00FF00FFFF
              FF00C6846B00EF6B4200DE634200F7947300F7A57B00F7947300E7946B00EF94
              6B00F7946B00EF845A007BAD5A004AF77B0029CE420021C6390021CE420021CE
              420021CE420021CE420021CE420029DE4A0042844A00D6D6D600FF00FF00E7D6
              D600DE735200E7734A00DE634200F7947300FFA58400A5B5730052C66B0063CE
              6B006BD67B005AC66B0052E7840052F7840039DE5A0039DE630031D6520029CE
              4A0029D64A0029D64A0029D6520031C64A006BAD7300EFEFEF00FF00FF00CEAD
              9C00EF735200E77B5200DE6B4200F79C7300FFAD8C0084C6730031E77B0031D6
              730039E7840039DE7B0031CE6B007BA55A007BBD73004AF78C0039DE630031D6
              520031DE5A0031DE5A004A8C4A00ADB5AD00FFFFFF00FF00FF00FFFFFF00CE8C
              7300EF845A00E7845A00E76B4A00EF9C7300FFBD940094BD730029CE6B0029BD
              5A0029C6630029C6630021C663009C9C5A008CAD6B0039E77B0042E76B0039DE
              630039E7630039E7630094734200B5A5A500FF00FF00FF00FF00F7E7E700D67B
              6300EF8C6B00EF8C6300E7735200EFA57B00C6B5AD006BA5730029C6630018AD
              420018B5420018B5420010AD4200639C4A0063B5630039DE7B004AEF73004AE7
              730042EF730042DE6B00C68C5200A5848400FFFFFF00FF00FF00E7CEC600EF84
              5A00EF947300EF946B00E77B5200EFA57B009CCEE7005ACEC60031C6630018A5
              310010A5210010A5290010A529002194290031B55A004AE7840052F7840052EF
              84004AF784005AD66B00DE946B00A57B7300F7F7F700FF00FF00CEADA500F794
              6B00EF9C7300EF9C7300E7845A00F7AD8400BDDEDE008CE7EF0039BD730018AD
              420000940800089C1000009408000894210029C6630052F78C005AFF94005AFF
              940052FF8C0084C67300EFA58C00A57B6B00EFEFEF00FF00FF00E7A59400F79C
              7B00F7A57B00F79C7B00EF846300F7B58C00B5D6D600B5F7FF004ABD940018BD
              520008941800008400000084000018A5420042D67B0073FFA50073FFA50073FF
              AD0063EF9400B5B58C00F7B59C00A57B6B00EFEFEF00FF00FF00E7948400F7AD
              8400F7AD8400F7A58400EF8C6300F7C69C0094D6DE007BC6E70094CECE0039C6
              6B0029CE630021A5390021B54A0031D673007BF7AD00ADFFCE00ADFFCE009CFF
              C60094AD7300DEB59400EFBDA500A57B6B00EFEFEF00FF00FF00E7947B00FFB5
              9400F7B58C00F7AD8400EF946B00FFE7B500CEEFD60063C6DE00CEE7FF00A5DE
              C6004ADE7B004AEF84004AEF8C0084F7B500D6FFE700D6FFE700BDEFD600ADCE
              9C00DEA57B00E7AD9400E7C6A500A57B7300F7F7F700FF00FF00EF947300FFCE
              A500FFBD9C00FFBD9400EF946B00F7BD9400FFDEB500DEDEC600CEDED600CEDE
              E7009CCEC6006BCEA500A5D69C00CED6AD00D6D6AD00CED6AD00C6A57B00E794
              6B00EFA58400DEC6A500E7C6A500A5847B00F7F7F700FF00FF00E79C7B00F7AD
              8400F7B58C00FFBD9400FFB59400F7A57B00EF9C7300F7A57B00F7AD8400EFBD
              9400F7C6AD00F7D6B500FFE7BD00FFEFBD00FFEFBD00FFE7BD00FFE7BD00FFCE
              AD00E7AD8C00DEBDA500E7BD9C00AD8C8400FFFFFF00FF00FF00FFEFEF00F7CE
              C600EFBDAD00E7A58C00EF9C8400EF9C7B00EFA57B00F7A57B00F7A57B00F7A5
              7B00F7A57B00F79C7B00EF9C7B00EFAD8400F7BD9400F7CEA500FFDEB500FFE7
              BD00E7E7C600E7EFD600DEAD8C00B59C9C00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFF7F700FFE7E700F7D6CE00EFBDB500EFAD9C00EF9C
              8400EF947300EF9C7300F7B58C00F7A57B00EF9C7300EF947300EF9C7300E794
              6B00DEA58400E7CEAD00CE947300CEC6C600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF00FFF7F700E79C8C00FFC69C00FFCEA500FFC69C00FFBD9400FFC69C00CE73
              5200CEB5AD00F7C6BD00EFC6BD00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00F7CEC600EF9C7300F7BD9400FFC69C00FFCEA500FFB58C00AD84
              7300FFF7F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00F7D6CE00EFBDAD00EFAD9400EF9C8400DE9C8400EFE7
              E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 7
          end
          object dbeFoto: TcxDBImage
            Left = 579
            Top = 6
            DataBinding.DataField = 'foto1'
            DataBinding.DataSource = dsPegawaiFoto
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ImmediatePost = True
            Properties.Stretch = True
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsThick
            TabOrder = 8
            OnDblClick = dbeFotoDblClick
            Height = 132
            Width = 115
          end
          object btnGetId: TcxButton
            Left = 153
            Top = 5
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
            TabOrder = 9
            TabStop = False
            OnClick = btnGetIdClick
          end
        end
        object dpDetail: TcxPageControl
          Left = 0
          Top = 201
          Width = 735
          Height = 296
          ActivePage = dpUsername
          Align = alClient
          TabOrder = 1
          ClientRectBottom = 290
          ClientRectLeft = 3
          ClientRectRight = 729
          ClientRectTop = 26
          object dpGeneral: TcxTabSheet
            Caption = 'General'
            ImageIndex = 0
            OnShow = dpGeneralShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblTglMasuk: TLabel
              Left = 9
              Top = 8
              Width = 50
              Height = 13
              Caption = 'Tgl Masuk'
              Transparent = True
            end
            object lblPerusahaan: TLabel
              Left = 9
              Top = 26
              Width = 57
              Height = 13
              Caption = 'Perusahaan'
              Transparent = True
            end
            object lblDivisi: TLabel
              Left = 9
              Top = 44
              Width = 25
              Height = 13
              Caption = 'Divisi'
              Transparent = True
            end
            object lblDepartemen: TLabel
              Left = 9
              Top = 62
              Width = 58
              Height = 13
              Caption = 'Departemen'
              Transparent = True
            end
            object lblKodeOutsourcing: TLabel
              Left = 9
              Top = 80
              Width = 62
              Height = 13
              Caption = 'Out Sourcing'
              Transparent = True
            end
            object Label4: TLabel
              Left = 9
              Top = 99
              Width = 38
              Height = 13
              Caption = 'Jabatan'
              Transparent = True
            end
            object lblStatusKaryawan: TLabel
              Left = 9
              Top = 116
              Width = 80
              Height = 13
              Caption = 'Status Karyawan'
              Transparent = True
            end
            object Label5: TLabel
              Left = 333
              Top = 116
              Width = 68
              Height = 13
              Caption = 'Status Lembur'
              Transparent = True
            end
            object Label3: TLabel
              Left = 333
              Top = 98
              Width = 81
              Height = 13
              Caption = 'Kode Group Shift'
              Transparent = True
            end
            object lblFlagSchedule: TLabel
              Left = 333
              Top = 80
              Width = 45
              Height = 13
              Caption = 'Schedule'
              Transparent = True
            end
            object lblJenisKelamin: TLabel
              Left = 333
              Top = 62
              Width = 64
              Height = 13
              Caption = 'Jenis Kelamin'
              Transparent = True
            end
            object lblStatus: TLabel
              Left = 333
              Top = 44
              Width = 30
              Height = 13
              Caption = 'Status'
              Transparent = True
            end
            object lblTglLahir: TLabel
              Left = 333
              Top = 26
              Width = 41
              Height = 13
              Caption = 'Tgl Lahir'
              Transparent = True
            end
            object lblTempatLahir: TLabel
              Left = 333
              Top = 8
              Width = 62
              Height = 13
              Caption = 'Tempat Lahir'
              Transparent = True
            end
            object Label25: TLabel
              Left = 224
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
            object Label26: TLabel
              Left = 310
              Top = 24
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
            object Label27: TLabel
              Left = 224
              Top = 97
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
            object Label28: TLabel
              Left = 546
              Top = 24
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
            object Label29: TLabel
              Left = 546
              Top = 61
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
            object Label30: TLabel
              Left = 510
              Top = 97
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
            object Label31: TLabel
              Left = 546
              Top = 78
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
            object Label32: TLabel
              Left = 617
              Top = 96
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
            object Label33: TLabel
              Left = 546
              Top = 114
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
            object dbeTglMasuk: TcxDBDateEdit
              Left = 97
              Top = 5
              DataBinding.DataField = 'tglmasuk'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 121
            end
            object dblckodeperusahaan: TcxDBExtLookupComboBox
              Left = 97
              Top = 23
              DataBinding.DataField = 'kodeperusahaan'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevPerusahaan
              Properties.KeyFieldNames = 'kodeperusahaan'
              Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
              TabOrder = 1
              Width = 204
            end
            object dblckodedivisi: TcxDBExtLookupComboBox
              Left = 97
              Top = 41
              DataBinding.DataField = 'kodedivisi'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevDivisi
              Properties.KeyFieldNames = 'kodedivisi'
              Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
              Properties.OnEditValueChanged = dblckodedivisiPropertiesEditValueChanged
              TabOrder = 2
              Width = 204
            end
            object dblckodedepartemen: TcxDBExtLookupComboBox
              Left = 97
              Top = 59
              DataBinding.DataField = 'kodedepartemen'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevDepartemen
              Properties.KeyFieldNames = 'kodedepartemen'
              Properties.ListFieldItem = dmGeneral.cgvPrevDepartemennamadepartemen
              TabOrder = 3
              Width = 204
            end
            object dblckodeoutsourcing: TcxDBExtLookupComboBox
              Left = 97
              Top = 77
              DataBinding.DataField = 'kodeoutsourcing'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevOutSourcing
              Properties.KeyFieldNames = 'kodeoutsourcing'
              Properties.ListFieldItem = dmGeneral.cgvPrevOutSourcingnama
              TabOrder = 4
              Width = 121
            end
            object dblcJabatan: TcxDBExtLookupComboBox
              Left = 97
              Top = 95
              DataBinding.DataField = 'kodejabatan'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevJabatan
              Properties.KeyFieldNames = 'kodejabatan'
              Properties.ListFieldItem = dmGeneral.cgvPrevJabatannamajabatan
              TabOrder = 5
              Width = 121
            end
            object dblcStatusKaryawan: TcxDBExtLookupComboBox
              Left = 97
              Top = 113
              DataBinding.DataField = 'kodestatus'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvStatusKaryawan
              Properties.KeyFieldNames = 'kodestatus'
              Properties.ListFieldItem = dmGeneral.cgvStatusKaryawannamastatus
              TabOrder = 6
              Width = 121
            end
            object dbcbSPL: TcxDBImageComboBox
              Left = 419
              Top = 113
              DataBinding.DataField = 'statusspl'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'SPL'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Automatic'
                  Value = '1'
                end
                item
                  Description = 'Loyalitas'
                  Value = '2'
                end>
              TabOrder = 14
              Width = 121
            end
            object dblcShift: TcxDBExtLookupComboBox
              Left = 526
              Top = 95
              DataBinding.DataField = 'shift'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevGroupShiftDt1
              Properties.KeyFieldNames = 'shift'
              Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
              TabOrder = 13
              Width = 85
            end
            object dblcKodeGroupShift: TcxDBExtLookupComboBox
              Left = 419
              Top = 95
              DataBinding.DataField = 'kodegroupshiftid'
              DataBinding.DataSource = dsDefault
              Properties.View = dmGeneral.cgvPrevGroupShift
              Properties.KeyFieldNames = 'kodegroupshiftid'
              Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftkodegroupshiftid
              TabOrder = 12
              Width = 85
            end
            object dbcbSchedule: TcxDBImageComboBox
              Left = 419
              Top = 77
              DataBinding.DataField = 'statusschedule'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Fixed'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Schedule'
                  Value = '1'
                end
                item
                  Description = 'Automatic'
                  Value = '2'
                end>
              TabOrder = 11
              Width = 121
            end
            object dbcbJenisKelamin: TcxDBImageComboBox
              Left = 419
              Top = 59
              DataBinding.DataField = 'sex'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Laki'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Perempuan'
                  Value = '1'
                end>
              TabOrder = 10
              Width = 121
            end
            object dbcbStatus: TcxDBImageComboBox
              Left = 419
              Top = 41
              DataBinding.DataField = 'stsipil'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Single'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Menikah'
                  Value = '1'
                end
                item
                  Description = 'Janda'
                  Value = '2'
                end
                item
                  Description = 'Duda'
                  Value = '3'
                end>
              TabOrder = 9
              Width = 121
            end
            object dbeTglLahir: TcxDBDateEdit
              Left = 419
              Top = 23
              DataBinding.DataField = 'tgllahir'
              DataBinding.DataSource = dsDefault
              TabOrder = 8
              Width = 121
            end
            object dbeTempatLahir: TcxDBTextEdit
              Left = 419
              Top = 5
              DataBinding.DataField = 'tmplahir'
              DataBinding.DataSource = dsDefault
              TabOrder = 7
              Width = 170
            end
          end
          object dpApproval: TcxTabSheet
            Caption = 'Approval'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label6: TLabel
              Left = 310
              Top = 10
              Width = 78
              Height = 13
              Caption = 'Boleh Long Shift'
              Transparent = True
            end
            object lblFlagApprove: TLabel
              Left = 310
              Top = 36
              Width = 87
              Height = 13
              Caption = 'Validasi Long Shift'
              Transparent = True
            end
            object Label7: TLabel
              Left = 310
              Top = 63
              Width = 77
              Height = 13
              Caption = 'Boleh Terlambat'
              Transparent = True
            end
            object Label8: TLabel
              Left = 310
              Top = 89
              Width = 86
              Height = 13
              Caption = 'Validasi Terlambat'
              Transparent = True
            end
            object Label10: TLabel
              Left = 310
              Top = 116
              Width = 89
              Height = 13
              Caption = 'Boleh Pulang Awal'
              Transparent = True
            end
            object Label11: TLabel
              Left = 310
              Top = 143
              Width = 98
              Height = 13
              Caption = 'Validasi Pulang Awal'
              Transparent = True
            end
            object Label12: TLabel
              Left = 13
              Top = 10
              Width = 91
              Height = 13
              Caption = 'Approve Long Shift'
              Transparent = True
            end
            object Label13: TLabel
              Left = 13
              Top = 36
              Width = 90
              Height = 13
              Caption = 'Approve Terlambat'
              Transparent = True
            end
            object Label14: TLabel
              Left = 13
              Top = 63
              Width = 102
              Height = 13
              Caption = 'Approve Pulang Awal'
              Transparent = True
            end
            object Label16: TLabel
              Left = 452
              Top = 10
              Width = 198
              Height = 13
              Caption = 'Boleh Masuk Kalau Kemarin Tidak Masuk'
              Transparent = True
            end
            object Label17: TLabel
              Left = 453
              Top = 36
              Width = 207
              Height = 13
              Caption = 'Validasi Masuk Kalau Kemarin Tidak Masuk'
              Transparent = True
            end
            object Label18: TLabel
              Left = 453
              Top = 63
              Width = 232
              Height = 13
              Caption = 'Boleh Masuk Kalau Kemarin Tidak Absen Pulang'
              Transparent = True
            end
            object Label19: TLabel
              Left = 453
              Top = 89
              Width = 241
              Height = 13
              Caption = 'Validasi Masuk Kalau Kemarin Tidak Absen Pulang'
              Transparent = True
            end
            object Label20: TLabel
              Left = 13
              Top = 89
              Width = 211
              Height = 13
              Caption = 'Approve Masuk Kalau Kemarin Tidak Masuk'
              Transparent = True
            end
            object Label21: TLabel
              Left = 13
              Top = 116
              Width = 245
              Height = 13
              Caption = 'Approve Masuk Kalau Kemarin Tidak Absen Pulang'
              Transparent = True
            end
            object dbckFlagBolehLongShift: TcxDBCheckBox
              Left = 417
              Top = 8
              DataBinding.DataField = 'flagbolehlongshift'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 0
              Transparent = True
              Width = 30
            end
            object dbckFlagValidasiLongShift: TcxDBCheckBox
              Left = 417
              Top = 34
              DataBinding.DataField = 'flagvalidasilongshift'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 1
              Transparent = True
              Width = 30
            end
            object dbckFlagBolehTerlambat: TcxDBCheckBox
              Left = 417
              Top = 61
              DataBinding.DataField = 'flagbolehterlambat'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 2
              Transparent = True
              Width = 30
            end
            object dbckFlagValidasiTerlambat: TcxDBCheckBox
              Left = 417
              Top = 87
              DataBinding.DataField = 'flagvalidasiterlambat'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 3
              Transparent = True
              Width = 30
            end
            object dbckflagbolehpulangawal: TcxDBCheckBox
              Left = 417
              Top = 114
              DataBinding.DataField = 'flagbolehpulangawal'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 4
              Transparent = True
              Width = 30
            end
            object dbckflagvalidasipulangawal: TcxDBCheckBox
              Left = 417
              Top = 141
              DataBinding.DataField = 'flagvalidasipulangawal'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 5
              Transparent = True
              Width = 30
            end
            object dbckflagapprovelongshift: TcxDBCheckBox
              Left = 274
              Top = 8
              DataBinding.DataField = 'flagapprovelongshift'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 6
              Transparent = True
              Width = 30
            end
            object dbckflagapproveterlambat: TcxDBCheckBox
              Left = 274
              Top = 34
              DataBinding.DataField = 'flagapproveterlambat'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 7
              Transparent = True
              Width = 30
            end
            object dbckflagapprovepulangawal: TcxDBCheckBox
              Left = 274
              Top = 61
              DataBinding.DataField = 'flagapprovepulangawal'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 8
              Transparent = True
              Width = 30
            end
            object dbckFlagBolehMasukKemarinTdkMasuk: TcxDBCheckBox
              Left = 706
              Top = 9
              DataBinding.DataField = 'flagbolehmasukkaloalpha'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 9
              Transparent = True
              Width = 30
            end
            object dbckFlagValidasiMasukKemarinTdkMasuk: TcxDBCheckBox
              Left = 706
              Top = 35
              DataBinding.DataField = 'flagvalidasimasukkaloalpha'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 10
              Transparent = True
              Width = 30
            end
            object dbckFlagBolehMasukKemarinTdkAbsenPlg: TcxDBCheckBox
              Left = 706
              Top = 61
              DataBinding.DataField = 'flagbolehmasuktdkabsenplg'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 11
              Transparent = True
              Width = 30
            end
            object dbckFlagValidasiMasukKemarinTdkAbsenPlg: TcxDBCheckBox
              Left = 706
              Top = 88
              DataBinding.DataField = 'flagvalidasimasuktdkabsenplg'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 12
              Transparent = True
              Width = 30
            end
            object cxDBCheckBox6: TcxDBCheckBox
              Left = 274
              Top = 87
              DataBinding.DataField = 'flagapprovemasukkaloalpha'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 13
              Transparent = True
              Width = 30
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 274
              Top = 114
              DataBinding.DataField = 'flagapprovemasuktdkabsenplg'
              DataBinding.DataSource = dmGeneral.dsPegawaiApproval
              ParentColor = False
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 14
              Transparent = True
              Width = 30
            end
            object cxButton1: TcxButton
              Left = 453
              Top = 108
              Width = 57
              Height = 48
              Action = DataSetPost1
              Layout = blGlyphTop
              Spacing = 0
              TabOrder = 15
            end
          end
          object dpRegistrasiSidik: TcxTabSheet
            Caption = 'Registrasi Sidik Jari'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object btnStartRegister: TButton
              Left = 200
              Top = 13
              Width = 145
              Height = 25
              Caption = 'Ambil Sidik Jari'
              TabOrder = 0
              OnClick = btnStartRegisterClick
            end
            object StatusBar1: TStatusBar
              Left = 0
              Top = 253
              Width = 735
              Height = 19
              Panels = <
                item
                  Width = 50
                end>
            end
          end
          object dpLainLain: TcxTabSheet
            Caption = 'Lain - Lain'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblAgama: TLabel
              Left = 9
              Top = 6
              Width = 33
              Height = 13
              Caption = 'Agama'
              Transparent = True
            end
            object lblGolonganDarah: TLabel
              Left = 9
              Top = 24
              Width = 78
              Height = 13
              Caption = 'Golongan Darah'
              Transparent = True
            end
            object lblNoKTP: TLabel
              Left = 9
              Top = 42
              Width = 38
              Height = 13
              Caption = 'No KTP'
              Transparent = True
            end
            object Label9: TLabel
              Left = 9
              Top = 60
              Width = 55
              Height = 13
              Caption = 'Urut Report'
              Transparent = True
            end
            object Label34: TLabel
              Left = 159
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
            object dbcbAgama: TcxDBImageComboBox
              Left = 96
              Top = 3
              DataBinding.DataField = 'agama'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Islam'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Kristen'
                  Value = '1'
                end
                item
                  Description = 'Katolik'
                  Value = '2'
                end
                item
                  Description = 'Budha'
                  Value = '3'
                end
                item
                  Description = 'Hindu'
                  Value = '4'
                end>
              TabOrder = 0
              Width = 121
            end
            object dbcbGolonganDarah: TcxDBComboBox
              Left = 96
              Top = 21
              DataBinding.DataField = 'bloodtype'
              DataBinding.DataSource = dsDefault
              Properties.Items.Strings = (
                'O'
                'A'
                'B'
                'AB')
              TabOrder = 1
              Width = 57
            end
            object dbeNoKTP: TcxDBTextEdit
              Left = 96
              Top = 39
              DataBinding.DataField = 'noktp'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 170
            end
            object dbeUrutReport: TcxDBTextEdit
              Left = 96
              Top = 57
              DataBinding.DataField = 'urutreport'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 170
            end
          end
          object dpJamSostek: TcxTabSheet
            Caption = 'Jamsostek'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblAstek: TLabel
              Left = 9
              Top = 6
              Width = 27
              Height = 13
              Caption = 'Astek'
              Transparent = True
            end
            object lblTglAstek: TLabel
              Left = 9
              Top = 22
              Width = 45
              Height = 13
              Caption = 'Tgl Astek'
              Transparent = True
            end
            object lblNoAstek: TLabel
              Left = 9
              Top = 41
              Width = 44
              Height = 13
              Caption = 'No Astek'
              Transparent = True
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 69
              Top = 0
              DataBinding.DataField = 'flagastek'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.DisplayChecked = 'Ikut'
              Properties.DisplayUnchecked = 'Tidak Ikut'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 0
              Transparent = True
              Width = 121
            end
            object dbeTglAstek: TcxDBDateEdit
              Left = 73
              Top = 19
              DataBinding.DataField = 'tglastek'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
            object dbeNoAstek: TcxDBTextEdit
              Left = 73
              Top = 37
              DataBinding.DataField = 'noastek'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 170
            end
          end
          object dpPendidikan: TcxTabSheet
            Caption = 'Pendidikan'
            ImageIndex = 5
            OnShow = dpPendidikanShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataPendidikan: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataPendidikan: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataPendidikan
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataPendidikanpegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 78
                end
                object cgvDataPendidikankodependidikan: TcxGridDBColumn
                  Caption = 'Kode Pendidikan *'
                  DataBinding.FieldName = 'kodependidikan'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPendidikan
                  Properties.KeyFieldNames = 'kodependidikan'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPendidikankodependidikan
                  Width = 98
                end
                object cgvDataPendidikanJurusan: TcxGridDBColumn
                  Caption = 'Jurusan'
                  DataBinding.FieldName = 'kodependidikan'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPendidikan
                  Properties.KeyFieldNames = 'kodependidikan'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPendidikanjurusan
                  Width = 65
                end
                object cgvDataPendidikantahunmulai: TcxGridDBColumn
                  Caption = 'Tahun Mulai'
                  DataBinding.FieldName = 'tahunmulai'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Width = 75
                end
                object cgvDataPendidikangraduate: TcxGridDBColumn
                  Caption = 'Lulus *'
                  DataBinding.FieldName = 'lulus'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 64
                end
                object cgvDataPendidikangpa: TcxGridDBColumn
                  Caption = 'Nilai'
                  DataBinding.FieldName = 'nilai'
                end
                object cgvDataPendidikanremarks: TcxGridDBColumn
                  Caption = 'Catatan'
                  DataBinding.FieldName = 'keterangan'
                end
              end
              object cgDataPendidikanLevel1: TcxGridLevel
                GridView = cgvDataPendidikan
              end
            end
          end
          object dpKeluarga: TcxTabSheet
            Caption = 'Keluarga'
            ImageIndex = 7
            OnShow = dpKeluargaShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgKeluarga: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvKeluarga: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Post.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataFamily
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvKeluarganama: TcxGridDBColumn
                  Caption = 'Nama *'
                  DataBinding.FieldName = 'nama'
                end
                object cgvKeluargaalamat: TcxGridDBColumn
                  Caption = 'Alamat 1'
                  DataBinding.FieldName = 'alamat'
                end
                object cgvKeluargaalamat1: TcxGridDBColumn
                  Caption = 'Alamat 2'
                  DataBinding.FieldName = 'alamat1'
                end
                object cgvKeluargatgllahir: TcxGridDBColumn
                  Caption = 'Tgl Lahir'
                  DataBinding.FieldName = 'tgllahir'
                end
                object cgvKeluargatmplahir: TcxGridDBColumn
                  Caption = 'Tempat Lahir'
                  DataBinding.FieldName = 'tmplahir'
                end
                object cgvKeluargajeniskelamin: TcxGridDBColumn
                  Caption = 'Jenis Kelamin'
                  DataBinding.FieldName = 'jeniskelamin'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Laki'
                      ImageIndex = 0
                      Value = '0'
                    end
                    item
                      Description = 'Perempuan'
                      Value = '1'
                    end>
                end
                object cgvKeluargagoldarah: TcxGridDBColumn
                  Caption = 'Gol Darah'
                  DataBinding.FieldName = 'goldarah'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'O'
                      ImageIndex = 0
                      Value = 'O'
                    end
                    item
                      Description = 'A'
                      Value = 'A'
                    end
                    item
                      Description = 'B'
                      Value = 'B'
                    end
                    item
                      Description = 'AB'
                      Value = 'AB'
                    end>
                end
                object cgvKeluargapekerjaan: TcxGridDBColumn
                  Caption = 'Pekerjaan'
                  DataBinding.FieldName = 'pekerjaan'
                end
                object cgvKeluargaflagstatuskeluarga: TcxGridDBColumn
                  Caption = 'Status Keluarga'
                  DataBinding.FieldName = 'flagstatuskeluarga'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 94
                end
                object cgvKeluargaflagstatustanggungan: TcxGridDBColumn
                  Caption = 'Status Tanggungan'
                  DataBinding.FieldName = 'flagstatustanggungan'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 104
                end
                object cgvKeluargaflagpassaway: TcxGridDBColumn
                  Caption = 'Meninggal'
                  DataBinding.FieldName = 'flagpassaway'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                end
                object cgvKeluargaPEGAWAIID: TcxGridDBColumn
                  Caption = 'PEGAWAIID *'
                  DataBinding.FieldName = 'PEGAWAIID'
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cgvKeluarga
              end
            end
          end
          object dpBahasa: TcxTabSheet
            Caption = 'Bahasa'
            ImageIndex = 8
            OnShow = dpBahasaShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataBahasa: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataBahasa: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Cancel.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataBahasa
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataBahasapegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataBahasakodebahasa: TcxGridDBColumn
                  Caption = 'Kode Bahasa *'
                  DataBinding.FieldName = 'kodebahasa'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevBahasa
                  Properties.KeyFieldNames = 'kodebahasa'
                  Properties.ListFieldItem = dmGeneral.cgvPrevBahasakodebahasa
                  Width = 79
                end
                object cgvDataBahasaNamaBahasa: TcxGridDBColumn
                  Caption = 'Nama Bahasa *'
                  DataBinding.FieldName = 'kodebahasa'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevBahasa
                  Properties.KeyFieldNames = 'kodebahasa'
                  Properties.ListFieldItem = dmGeneral.cgvPrevBahasanamabahasa
                  Width = 85
                end
                object cgvDataBahasaflagoral: TcxGridDBColumn
                  Caption = 'Lisan *'
                  DataBinding.FieldName = 'flagoral'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Bisa'
                  Properties.DisplayUnchecked = 'Tidak Bisa'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 39
                end
                object cgvDataBahasaflagwritten: TcxGridDBColumn
                  Caption = 'Tulisan *'
                  DataBinding.FieldName = 'flagwritten'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Bisa'
                  Properties.DisplayUnchecked = 'Tidak Bisa'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 48
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cgvDataBahasa
              end
            end
          end
          object dpOrganisasi: TcxTabSheet
            Caption = 'Organisasi'
            ImageIndex = 9
            OnShow = dpOrganisasiShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataOrganisasi: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataOrganisasi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataOrganisasi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataOrganisasipegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataOrganisasiorganisasi: TcxGridDBColumn
                  Caption = 'Organisasi *'
                  DataBinding.FieldName = 'organisasi'
                  Width = 98
                end
                object cgvDataOrganisasijabatan: TcxGridDBColumn
                  Caption = 'Jabatan'
                  DataBinding.FieldName = 'jabatan'
                  Width = 122
                end
              end
              object cxGridLevel4: TcxGridLevel
                GridView = cgvDataOrganisasi
              end
            end
          end
          object dpReferensi: TcxTabSheet
            Caption = 'Referensi'
            ImageIndex = 10
            OnShow = dpReferensiShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataReferensi: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataReferensi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataReferensi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataReferensipegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataReferensinamareferensi: TcxGridDBColumn
                  Caption = 'Nama Referensi *'
                  DataBinding.FieldName = 'namareferensi'
                  Width = 246
                end
                object cgvDataReferensialamat: TcxGridDBColumn
                  Caption = 'Alamat'
                  DataBinding.FieldName = 'alamat'
                end
                object cgvDataReferensipekerjaan: TcxGridDBColumn
                  Caption = 'Pekerjaan'
                  DataBinding.FieldName = 'pekerjaan'
                end
              end
              object cxGridLevel5: TcxGridLevel
                GridView = cgvDataReferensi
              end
            end
          end
          object dpKeahlian: TcxTabSheet
            Caption = 'Keahlian'
            ImageIndex = 11
            OnShow = dpKeahlianShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataKeahlian: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataKeahlian: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsDataKeahlian
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataKeahlianpegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 84
                end
                object cgvDataKeahliankodekeahlian: TcxGridDBColumn
                  Caption = 'Kode Keahlian *'
                  DataBinding.FieldName = 'kodekeahlian'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevKeahlian
                  Properties.KeyFieldNames = 'kodekeahlian'
                  Properties.ListFieldItem = dmGeneral.cgvPrevKeahliankodekeahlian
                  Width = 92
                end
                object cgvDataKeahlianNamaKeahlian: TcxGridDBColumn
                  Caption = 'Nama Keahlian *'
                  DataBinding.FieldName = 'kodekeahlian'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevKeahlian
                  Properties.KeyFieldNames = 'kodekeahlian'
                  Properties.ListFieldItem = dmGeneral.cgvPrevKeahliannamakeahlian
                  Width = 126
                end
              end
              object cxGridLevel6: TcxGridLevel
                GridView = cgvDataKeahlian
              end
            end
          end
          object dpRelasi: TcxTabSheet
            Caption = 'Relasi'
            ImageIndex = 12
            OnShow = dpRelasiShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataRelasi: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataRelasi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsDataRelasi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataRelasipegawaiid: TcxGridDBColumn
                  Caption = 'NIK *'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 159
                end
                object cgvDataRelasipeg_nopeg: TcxGridDBColumn
                  Caption = 'NIK Pegawai *'
                  DataBinding.FieldName = 'namarelasi'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPegawai
                  Properties.KeyFieldNames = 'pegawaiid'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
                  Width = 90
                end
                object cgvDataRelasiNamaPegawai: TcxGridDBColumn
                  Caption = 'Nama Pegawai *'
                  DataBinding.FieldName = 'namarelasi'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPegawai
                  Properties.KeyFieldNames = 'pegawaiid'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
                  Width = 88
                end
                object cgvDataRelasihubungan: TcxGridDBColumn
                  Caption = 'Hubungan'
                  DataBinding.FieldName = 'hubungan'
                  Width = 132
                end
                object cgvDataRelasiKODEDEPARTEMEN: TcxGridDBColumn
                  DataBinding.FieldName = 'KODEDEPARTEMEN'
                end
              end
              object cxGridLevel7: TcxGridLevel
                GridView = cgvDataRelasi
              end
            end
          end
          object dpPengalamanKerja: TcxTabSheet
            Caption = 'Pengalaman Kerja'
            ImageIndex = 13
            OnShow = dpPengalamanKerjaShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgDataPengalamanKerja: TcxGrid
              Left = 0
              Top = 0
              Width = 735
              Height = 272
              Align = alClient
              TabOrder = 0
              object cgvDataPengalamanKerja: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsDataPengalamanKerja
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataPengalamanKerjanamaperusahaan: TcxGridDBColumn
                  Caption = 'Nama Perusahaan *'
                  DataBinding.FieldName = 'namaperusahaan'
                  Width = 123
                end
                object cgvDataPengalamanKerjaposisiterakhir: TcxGridDBColumn
                  Caption = 'Posisi Terakhir'
                  DataBinding.FieldName = 'posisiterakhir'
                  Width = 142
                end
                object cgvDataPengalamanKerjadaritgl: TcxGridDBColumn
                  Caption = 'Mulai Kerja'
                  DataBinding.FieldName = 'daritgl'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 106
                end
                object cgvDataPengalamanKerjasampaitgl: TcxGridDBColumn
                  Caption = 'Sampai Tanggal'
                  DataBinding.FieldName = 'sampaitgl'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 109
                end
                object cgvDataPengalamanKerjalama: TcxGridDBColumn
                  Caption = 'Lama'
                  DataBinding.FieldName = 'lama'
                end
                object cgvDataPengalamanKerjaketerangan: TcxGridDBColumn
                  Caption = 'Keterangan'
                  DataBinding.FieldName = 'keterangan'
                end
                object cgvDataPengalamanKerjaPEGAWAIID: TcxGridDBColumn
                  Caption = 'PEGAWAIID *'
                  DataBinding.FieldName = 'PEGAWAIID'
                  Width = 79
                end
              end
              object cxGridLevel8: TcxGridLevel
                GridView = cgvDataPengalamanKerja
              end
            end
          end
          object dpUsername: TcxTabSheet
            Caption = 'Username'
            ImageIndex = 14
            OnShow = dpUsernameShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lblUsername: TLabel
              Left = 9
              Top = 6
              Width = 48
              Height = 13
              Caption = 'Username'
              Transparent = True
            end
            object lblLevelValidation: TLabel
              Left = 9
              Top = 60
              Width = 65
              Height = 13
              Caption = 'Level Validasi'
              Transparent = True
            end
            object lblPosition: TLabel
              Left = 9
              Top = 24
              Width = 38
              Height = 13
              Caption = 'Jabatan'
              Transparent = True
            end
            object lblPrefixCode: TLabel
              Left = 9
              Top = 42
              Width = 57
              Height = 13
              Caption = 'Kode Prefix '
              Transparent = True
            end
            object Label35: TLabel
              Left = 287
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
            object Label36: TLabel
              Left = 369
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
            object dbeUsername: TcxDBTextEdit
              Left = 96
              Top = 3
              BeepOnEnter = False
              DataBinding.DataField = 'username'
              DataBinding.DataSource = dsEmployee
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 185
            end
            object dbcbLevelValidation: TcxDBComboBox
              Left = 96
              Top = 57
              BeepOnEnter = False
              DataBinding.DataField = 'LevelValidation'
              DataBinding.DataSource = dsEmployee
              Properties.Items.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9')
              TabOrder = 3
              Width = 79
            end
            object btnDeletePassword: TcxButton
              Left = 394
              Top = 43
              Width = 106
              Height = 25
              Caption = 'Reset Password'
              TabOrder = 4
              OnClick = btnDeletePasswordClick
            end
            object dblcPositionId: TcxDBExtLookupComboBox
              Left = 96
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'positionid'
              DataBinding.DataSource = dsEmployee
              Properties.View = dmGlobal.cgvPrevPosition
              Properties.KeyFieldNames = 'PositionId'
              Properties.ListFieldItem = dmGlobal.cgvPrevPositionPositionName
              TabOrder = 1
              Width = 267
            end
            object dbePrefixCode: TcxDBTextEdit
              Left = 96
              Top = 39
              BeepOnEnter = False
              DataBinding.DataField = 'PrefixCode'
              DataBinding.DataSource = dsEmployee
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbePrefixCodePropertiesEditValueChanged
              TabOrder = 2
              Width = 81
            end
            object btnSimpan: TcxButton
              Left = 394
              Top = 12
              Width = 106
              Height = 25
              Caption = 'Simpan'
              TabOrder = 5
              OnClick = btnSimpanClick
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 479
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvExplorerStylesGetContentStyle
          object cgvExplorerflagkeluar: TcxGridDBColumn
            Caption = 'Keluar'
            DataBinding.FieldName = 'flagkeluar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
          object cgvExplorernopeg: TcxGridDBColumn
            Caption = 'NIK'
            DataBinding.FieldName = 'nopeg'
            Width = 72
          end
          object cgvExplorernama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
          end
          object cgvExplorertglkeluar: TcxGridDBColumn
            Caption = 'Tgl Keluar'
            DataBinding.FieldName = 'tglkeluar'
          end
          object cgvExplorerbarcode: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barcode'
            Visible = False
            Width = 78
          end
          object cgvExploreralamat: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'alamat'
            Visible = False
          end
          object cgvExplorertelp: TcxGridDBColumn
            Caption = 'Telp'
            DataBinding.FieldName = 'telp'
            Visible = False
          end
          object cgvExplorertmplahir: TcxGridDBColumn
            Caption = 'Tempat Lahir'
            DataBinding.FieldName = 'tmplahir'
            Visible = False
          end
          object cgvExplorertgllahir: TcxGridDBColumn
            Caption = 'Tgl Lahir'
            DataBinding.FieldName = 'tgllahir'
            Visible = False
          end
          object cgvExplorersex: TcxGridDBColumn
            Caption = 'Kelamin'
            DataBinding.FieldName = 'sex'
            Visible = False
          end
          object cgvExploreragama: TcxGridDBColumn
            Caption = 'Agama'
            DataBinding.FieldName = 'agama'
            Visible = False
          end
          object cgvExplorerstsipil: TcxGridDBColumn
            DataBinding.FieldName = 'stsipil'
            Visible = False
          end
          object cgvExplorertglmasuk: TcxGridDBColumn
            Caption = 'Tgl Masuk'
            DataBinding.FieldName = 'tglmasuk'
            Visible = False
          end
          object cgvExplorertglefektif: TcxGridDBColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'tglefektif'
            Visible = False
          end
          object cgvExplorernoktp: TcxGridDBColumn
            Caption = 'No KTP'
            DataBinding.FieldName = 'noktp'
            Visible = False
          end
          object cgvExplorerflagastek: TcxGridDBColumn
            Caption = 'Flag Astek'
            DataBinding.FieldName = 'flagastek'
            Visible = False
          end
          object cgvExplorernoastek: TcxGridDBColumn
            Caption = 'No Astek'
            DataBinding.FieldName = 'noastek'
            Visible = False
          end
          object cgvExplorertglastek: TcxGridDBColumn
            Caption = 'Tgl Astek'
            DataBinding.FieldName = 'tglastek'
            Visible = False
          end
          object cgvExplorerflagjpk: TcxGridDBColumn
            Caption = 'Flag JPK'
            DataBinding.FieldName = 'flagjpk'
            Visible = False
          end
          object cgvExplorertgljpk: TcxGridDBColumn
            Caption = 'Tgl JPK'
            DataBinding.FieldName = 'tgljpk'
            Visible = False
          end
          object cgvExplorerbloodtype: TcxGridDBColumn
            Caption = 'Gol Darah'
            DataBinding.FieldName = 'bloodtype'
            Visible = False
          end
          object cgvExplorerkodebagian: TcxGridDBColumn
            Caption = 'Kode Bagian'
            DataBinding.FieldName = 'kodebagian'
            Visible = False
          end
          object cgvExplorercountryid: TcxGridDBColumn
            Caption = 'Kode Negara'
            DataBinding.FieldName = 'countryid'
            Visible = False
          end
          object cgvExplorerprovinceid: TcxGridDBColumn
            Caption = 'Kode Propinsi'
            DataBinding.FieldName = 'provinceid'
            Visible = False
          end
          object cgvExplorercityid: TcxGridDBColumn
            Caption = 'Kode Kota'
            DataBinding.FieldName = 'cityid'
            Visible = False
          end
          object cgvExplorerkodeperusahaan: TcxGridDBColumn
            Caption = 'Kode Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            Visible = False
          end
          object cgvExplorermemo: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'memo'
            Visible = False
          end
          object cgvExplorerStatus: TcxGridDBColumn
            Caption = 'Status Pegawai'
            DataBinding.FieldName = 'stpegawai'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvStatusKaryawan
            Properties.KeyFieldNames = 'kodestatus'
            Properties.ListFieldItem = dmGeneral.cgvStatusKaryawannamastatus
            Visible = False
          end
          object cgvExplorerstatusschedule: TcxGridDBColumn
            Caption = 'Status Schedule'
            DataBinding.FieldName = 'statusschedule'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Fixed'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Schedule'
                Value = '1'
              end
              item
                Description = 'Automatic'
                Value = '2'
              end>
            Visible = False
          end
          object cgvExplorershift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Visible = False
          end
          object cgvExplorerkodeoutsourcing: TcxGridDBColumn
            Caption = 'Kode Outsourcing'
            DataBinding.FieldName = 'kodeoutsourcing'
            Visible = False
          end
          object cgvExplorerkodedepartemen: TcxGridDBColumn
            Caption = 'Kode Departemen'
            DataBinding.FieldName = 'kodedepartemen'
            Visible = False
          end
          object cgvExplorerkodedivisi: TcxGridDBColumn
            Caption = 'Kode Divisi'
            DataBinding.FieldName = 'kodedivisi'
            Visible = False
          end
          object cgvExplorerkodejabatan: TcxGridDBColumn
            Caption = 'Kode Jabatan'
            DataBinding.FieldName = 'kodejabatan'
            Visible = False
          end
          object cgvExplorerflagkonfirmasi: TcxGridDBColumn
            Caption = 'Konfirmasi'
            DataBinding.FieldName = 'flagkonfirmasi'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
          object cgvExplorerflagapproveterlambat: TcxGridDBColumn
            Caption = 'Approve Terlambat'
            DataBinding.FieldName = 'flagapproveterlambat'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
          object cgvExplorerflagapproveabsen: TcxGridDBColumn
            Caption = 'Approve Absen'
            DataBinding.FieldName = 'flagapproveabsen'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
          object cgvExplorerflagproses: TcxGridDBColumn
            DataBinding.FieldName = 'flagproses'
            Visible = False
          end
          object cgvExplorerkodestatus: TcxGridDBColumn
            Caption = 'Kode Status'
            DataBinding.FieldName = 'kodestatus'
            Visible = False
          end
          object cgvExplorerkodegroupshiftid: TcxGridDBColumn
            Caption = 'Kode Group Shift'
            DataBinding.FieldName = 'kodegroupshiftid'
            Visible = False
          end
          object cgvExplorerstatusspl: TcxGridDBColumn
            Caption = 'Status Lembur'
            DataBinding.FieldName = 'statusspl'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'SPL'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Automatic'
                Value = '1'
              end
              item
                Description = 'Loyalitas'
                Value = '2'
              end>
            Visible = False
          end
          object cgvExplorerflagapprovepulangawal: TcxGridDBColumn
            Caption = 'Approve Pulang Awal'
            DataBinding.FieldName = 'flagapprovepulangawal'
            Visible = False
          end
          object cgvExplorerpegawaiid: TcxGridDBColumn
            DataBinding.FieldName = 'pegawaiid'
            Visible = False
          end
          object cgvExplorerperusahaan: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'perusahaan'
          end
          object cgvExplorerdivisi: TcxGridDBColumn
            Caption = 'Divisi'
            DataBinding.FieldName = 'divisi'
          end
          object cgvExplorerdepartemen: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'departemen'
          end
        end
        object cgvMutasi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsmutasi
          DataController.DetailKeyFieldNames = 'pegawaiid'
          DataController.KeyFieldNames = 'pegawaiid'
          DataController.MasterKeyFieldNames = 'pegawaiid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvMutasipegawaiid: TcxGridDBColumn
            DataBinding.FieldName = 'pegawaiid'
          end
          object cgvMutasinoreg: TcxGridDBColumn
            DataBinding.FieldName = 'noreg'
          end
          object cgvMutasitglmulai: TcxGridDBColumn
            DataBinding.FieldName = 'tglmulai'
          end
          object cgvMutasikodeperusahaan: TcxGridDBColumn
            DataBinding.FieldName = 'kodeperusahaan'
          end
          object cgvMutasikodedivisi: TcxGridDBColumn
            DataBinding.FieldName = 'kodedivisi'
          end
          object cgvMutasikodedepartemen: TcxGridDBColumn
            DataBinding.FieldName = 'kodedepartemen'
          end
          object cgvMutasikodeoutsourcing: TcxGridDBColumn
            DataBinding.FieldName = 'kodeoutsourcing'
          end
          object cgvMutasikodejabatan: TcxGridDBColumn
            DataBinding.FieldName = 'kodejabatan'
          end
          object cgvMutasikodestatus: TcxGridDBColumn
            DataBinding.FieldName = 'kodestatus'
          end
          object cgvMutasinamaperusahaan: TcxGridDBColumn
            DataBinding.FieldName = 'namaperusahaan'
          end
          object cgvMutasinamadivisi: TcxGridDBColumn
            DataBinding.FieldName = 'namadivisi'
          end
          object cgvMutasinamadepartemen: TcxGridDBColumn
            DataBinding.FieldName = 'namadepartemen'
          end
          object cgvMutasinamaoutsourcing: TcxGridDBColumn
            DataBinding.FieldName = 'namaoutsourcing'
          end
          object cgvMutasinamajabatan: TcxGridDBColumn
            DataBinding.FieldName = 'namajabatan'
          end
          object cgvMutasinamastatus: TcxGridDBColumn
            DataBinding.FieldName = 'namastatus'
          end
          object cgvMutasiketerangan: TcxGridDBColumn
            DataBinding.FieldName = 'keterangan'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
          object cgMasterSetupLevel2: TcxGridLevel
            GridView = cgvMutasi
          end
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 192
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
    object actCapture: TAction
      Caption = 'Capture'
      ImageIndex = 10
      OnExecute = actCaptureExecute
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Simpan'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 8
      DataSource = dmGeneral.dsPegawaiApproval
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 568
    Top = 192
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 600
    Top = 192
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryPegawai
    OnDataChange = dsDefaultDataChange
    Left = 536
    Top = 224
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 632
    Top = 192
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 600
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dxComponentPrinter2: TdxComponentPrinter
    CurrentLink = dxGridReportLink1
    Version = 0
    Left = 568
    Top = 224
    object dxGridReportLink1: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 200
      PrinterPage.Header = 100
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8300
      PrinterPage.PageSize.Y = 11700
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.Caption = 'Stok'
      ReportDocument.CreationDate = 39500.377162719910000000
      BuiltInReportLink = True
    end
  end
  object dsmutasi: TDataSource
    DataSet = qryDisplayMutasi
    Left = 536
    Top = 128
  end
  object dsEmployee: TDataSource
    DataSet = qryEmployee
    OnStateChange = dsDefaultStateChange
    Left = 688
    Top = 360
  end
  object IvEncryption1: TIvEncryption
    About = 'Created by Ivan Handoyo'
    Version = '1.31'
    Left = 632
    Top = 224
  end
  object dsDataBahasa: TDataSource
    DataSet = qryDataBahasa
    Left = 715
    Top = 65
  end
  object dsDataOrganisasi: TDataSource
    DataSet = qryDataOrganisasi
    Left = 715
    Top = 93
  end
  object dsDataKeahlian: TDataSource
    DataSet = qryDataKeahlian
    Left = 715
    Top = 179
  end
  object dsDataReferensi: TDataSource
    DataSet = qryDataReferensi
    Left = 715
    Top = 122
  end
  object dsDataRelasi: TDataSource
    DataSet = qryDataRelasi
    Left = 715
    Top = 208
  end
  object dsDataPengalamanKerja: TDataSource
    DataSet = qryDataPengalamanKerja
    Left = 715
    Top = 150
  end
  object dsDataAsset: TDataSource
    DataSet = qryDataAsset
    Left = 715
    Top = 40
  end
  object dsDataFamily: TDataSource
    DataSet = qryDatafamily
    Left = 715
    Top = 36
  end
  object dsDataPendidikan: TDataSource
    DataSet = qryDataPendidikan
    Left = 715
    Top = 8
  end
  object dsPegawaiFoto: TDataSource
    DataSet = qryPegawaiFoto
    Left = 715
    Top = 240
  end
  object qryDisplayMutasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dmGeneral.dsPegawai
    Parameters = <>
    SQL.Strings = (
      
        'select a.pegawaiid,a.noreg,a.tglmulai,a.kodeperusahaan,a.kodediv' +
        'isi,a.kodedepartemen,'
      'a.kodeoutsourcing,a.kodejabatan,a.kodestatus,f.namaperusahaan,'
      
        'b.namadivisi,c.namadepartemen,g.namaoutsourcing,d.namajabatan,e.' +
        'namastatus,'
      'a.keterangan'
      'from mutasi a'
      'left join perusahaan f on a.kodeperusahaan=f.kodeperusahaan'
      'left join divisi b on a.kodedivisi=b.kodedivisi'
      'left join departemen c on a.kodedepartemen=c.kodedepartemen'
      'left join outsourcing g on a.kodeoutsourcing=g.kodeoutsourcing'
      'left join jabatan d on a.kodejabatan=d.kodejabatan'
      'left join statuskaryawan e on a.kodestatus=e.kodestatus')
    Left = 572
    Top = 128
  end
  object qryEmployee: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryEmployeeAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryEmployeeAfter
    OnNewRecord = qryEmployeeNewRecord
    DataSource = dmGeneral.dsPegawai
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Employee')
    Left = 656
    Top = 360
  end
  object qryCekPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryCekPegawaiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCekPegawaiAfter
    OnNewRecord = qryEmployeeNewRecord
    Parameters = <
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from pegawai'
      'where pegawaiid=:pegawaiid')
    Left = 656
    Top = 328
  end
  object qryGetEmployeeid: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(cast(nopeg as integer)) as noterakhir'
      'from'
      '('
      'select '
      '  case '
      '   when substring(nopeg,5,5)='#39#39' then '#39'0'#39
      '   else substring(nopeg,5,5) '
      '  end'
      '  as nopeg'
      'from pegawai'
      'where (kodestatus='#39'1'#39' or kodestatus='#39'3'#39' or kodestatus='#39'4'#39')'
      ') a')
    Left = 536
    Top = 160
  end
  object qryDataAsset: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataAssetAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataAssetAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from DataAsset'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 65
  end
  object qryDataBahasa: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataBahasaAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataBahasaAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from databahasa '
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 93
  end
  object qryDataOrganisasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataOrganisasiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataOrganisasiAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from dataorganisasi'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 122
  end
  object qryDataReferensi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataReferensiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataReferensiAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from datareferensi'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 150
  end
  object qryDataPengalamanKerja: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataPengalamanKerjaAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataPengalamanKerjaAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from datapengalamankerja'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 179
  end
  object qryDataKeahlian: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataKeahlianAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataKeahlianAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from datakeahlian'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 208
  end
  object qryDataRelasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataRelasiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataRelasiAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'Pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from datarelasi'
      'where Pegawaiid=:Pegawaiid')
    Left = 656
    Top = 296
  end
  object qryDatafamily: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDatafamilyAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDatafamilyAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from DataFamily'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 36
  end
  object qryDataPendidikan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDataPendidikanAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDataPendidikanAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'Pegawaiid'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from DataPendidikan'
      'where Pegawaiid=:Pegawaiid')
    Left = 680
    Top = 8
  end
  object qryPegawaiFoto: TADOQuery
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPegawaiFotoAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPegawaiFotoAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PegawaiId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PegawaiFoto'
      'where PegawaiId=:PegawaiId')
    Left = 680
    Top = 240
  end
  object qryDeleteAbsen: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforePost = qryBeforePost
    AfterPost = qryDeleteAbsenAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDeleteAbsenAfter
    Parameters = <
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
      'delete'
      'from absen '
      'where '
      'pegawaiid=:pegawaiid and '
      'tgl>=cast(:tglkeluar as datetime)')
    Left = 568
    Top = 160
  end
  object qryFingerPrint: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryFingerPrintAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryFingerPrintAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'pegawaiid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from fingerprint'
      'where employeeid=:pegawaiid')
    Left = 688
    Top = 328
  end
end
