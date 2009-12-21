inherited fmSettingGlobal: TfmSettingGlobal
  Caption = 'Setting Global'
  ClientHeight = 384
  ClientWidth = 492
  ExplicitWidth = 500
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 492
    ExplicitWidth = 492
    inherited bvlSpacer1: TBevel
      Left = 97
      ExplicitLeft = 91
      ExplicitTop = -4
    end
    object btnRefresh: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object btnPost: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object btnCancel: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 492
    Height = 334
    ActivePage = tsAbsensi
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    ClientRectBottom = 310
    ClientRectRight = 492
    ClientRectTop = 0
    object tsAbsensi: TcxTabSheet
      Caption = 'Absensi'
      ImageIndex = 3
      object Label17: TLabel
        Left = 9
        Top = 9
        Width = 44
        Height = 13
        Caption = 'General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object J: TLabel
        Left = 19
        Top = 28
        Width = 166
        Height = 13
        Caption = 'Jumlah Percobaan Absen Sidik Jari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 19
        Top = 100
        Width = 204
        Height = 13
        Caption = 'Batas Minimum Absen (Masuk Dan Pulang)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 19
        Top = 118
        Width = 97
        Height = 13
        Caption = 'Default Kode Masuk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 19
        Top = 136
        Width = 95
        Height = 13
        Caption = 'Default Kode Absen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 19
        Top = 190
        Width = 204
        Height = 13
        Caption = 'Set OK Otomatis Untuk Yang Tidak Pulang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 19
        Top = 154
        Width = 139
        Height = 13
        Caption = 'Default Kode Masuk 1/2 Hari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 297
        Top = 98
        Width = 26
        Height = 13
        Caption = 'Menit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 297
        Top = 28
        Width = 17
        Height = 13
        Caption = 'Kali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 19
        Top = 46
        Width = 154
        Height = 13
        Caption = 'Jumlah Otorisasi Absen Sidik Jari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 297
        Top = 46
        Width = 17
        Height = 13
        Caption = 'Kali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 19
        Top = 172
        Width = 158
        Height = 13
        Caption = 'Default Kode Masuk Di Hari Libur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 19
        Top = 208
        Width = 85
        Height = 13
        Caption = 'Alat Input Absensi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 19
        Top = 64
        Width = 181
        Height = 13
        Caption = 'Jumlah Percobaan Password Pegawai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 297
        Top = 64
        Width = 17
        Height = 13
        Caption = 'Kali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 297
        Top = 81
        Width = 17
        Height = 13
        Caption = 'Kali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 19
        Top = 82
        Width = 190
        Height = 13
        Caption = 'Jumlah Percobaan Password Supervisor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 19
        Top = 226
        Width = 200
        Height = 13
        Caption = 'Batas jam max keluar setelah batas lembur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 297
        Top = 228
        Width = 19
        Height = 13
        Caption = 'Jam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtJumlahSidik: TcxSpinEdit
        Left = 249
        Top = 25
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 0
        Value = 3
        Width = 42
      end
      object edtJumlahMinimum: TcxSpinEdit
        Left = 249
        Top = 97
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 4
        Value = 1
        Width = 42
      end
      object chkKodeOtomatis: TcxCheckBox
        Left = 249
        Top = 188
        Caption = 'chkOtomatis'
        ParentColor = False
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 9
        Transparent = True
        Width = 21
      end
      object lcbDefaultKodeMasuk: TcxExtLookupComboBox
        Left = 249
        Top = 115
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
        TabOrder = 5
        Width = 42
      end
      object lcbDefaultKodeAbsen: TcxExtLookupComboBox
        Left = 249
        Top = 133
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
        TabOrder = 6
        Width = 42
      end
      object lcbDefaultKodeMasuk12: TcxExtLookupComboBox
        Left = 249
        Top = 151
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
        TabOrder = 7
        Width = 42
      end
      object lcbDefaultKodeOtomatis: TcxExtLookupComboBox
        Left = 274
        Top = 187
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
        TabOrder = 10
        Width = 41
      end
      object edtJumlahOtorisasi: TcxSpinEdit
        Left = 249
        Top = 43
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 1
        Value = 1
        Width = 42
      end
      object lcbDefaultKodeMasukHariLibur: TcxExtLookupComboBox
        Left = 249
        Top = 169
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
        TabOrder = 8
        Width = 42
      end
      object dbimgcbFinger: TcxImageComboBox
        Left = 249
        Top = 205
        EditValue = '1'
        Properties.Items = <
          item
            Description = 'Username & Password'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Finger Print'
            Value = '1'
          end
          item
            Description = 'Username'
            Value = '2'
          end>
        TabOrder = 11
        Width = 184
      end
      object edtJumlahPasswordPegawai: TcxSpinEdit
        Left = 249
        Top = 61
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 2
        Value = 3
        Width = 42
      end
      object edtJumlahPasswordSupervisor: TcxSpinEdit
        Left = 249
        Top = 79
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 3
        Value = 3
        Width = 42
      end
      object edtJumlahMaximum: TcxSpinEdit
        Left = 249
        Top = 223
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 12
        Value = 3
        Width = 42
      end
    end
    object tsMutasi: TcxTabSheet
      Caption = 'Mutasi'
      ImageIndex = 1
      object Label10: TLabel
        Left = 11
        Top = 12
        Width = 54
        Height = 13
        Caption = 'Status Void'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtStatusVoid: TcxSpinEdit
        Left = 81
        Top = 10
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 0
        Value = 1
        Width = 42
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 328
    Top = 16
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 1
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
    object actPost: TAction
      Caption = 'Simpan'
      Hint = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      Hint = 'Batal'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  object dsSetup: TDataSource
    DataSet = qrySetup
    Left = 400
    Top = 16
  end
  object qrySetup: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Setup')
    Left = 368
    Top = 16
  end
end
