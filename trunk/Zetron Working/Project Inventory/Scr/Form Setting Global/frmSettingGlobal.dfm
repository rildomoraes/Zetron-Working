inherited fmSettingGlobal: TfmSettingGlobal
  Caption = 'Setting Global'
  ClientHeight = 452
  ClientWidth = 692
  ExplicitWidth = 700
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
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
    Width = 692
    Height = 402
    ActivePage = tsGeneral
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    ClientRectBottom = 378
    ClientRectRight = 692
    ClientRectTop = 0
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      object Label41: TLabel
        Left = 9
        Top = 31
        Width = 99
        Height = 13
        Caption = 'Format display berat'
        Transparent = True
      end
      object Label42: TLabel
        Left = 9
        Top = 49
        Width = 106
        Height = 13
        Caption = 'Format display ukuran'
        Transparent = True
      end
      object Label53: TLabel
        Left = 9
        Top = 67
        Width = 113
        Height = 13
        Caption = 'Format display quantity'
        Transparent = True
      end
      object Label54: TLabel
        Left = 9
        Top = 85
        Width = 106
        Height = 13
        Caption = 'Format display persen'
        Transparent = True
      end
      object Label55: TLabel
        Left = 9
        Top = 103
        Width = 97
        Height = 13
        Caption = 'Format display uang'
        Transparent = True
      end
      object Label1: TLabel
        Left = 256
        Top = 136
        Width = 94
        Height = 13
        Caption = 'hari sebelum hari ini'
        Transparent = True
      end
      object chkAutoEdit: TcxCheckBox
        Left = 3
        Top = 6
        Caption = 
          'Auto edit untuk entry data (data dapat langsung diubah tanpa men' +
          'ekan tombol ubah)'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 432
      end
      object edtDisplayFormatBerat: TcxTextEdit
        Left = 135
        Top = 28
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtDisplayFormatMeasure: TcxTextEdit
        Left = 135
        Top = 46
        BeepOnEnter = False
        TabOrder = 2
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtDisplayFormatQty: TcxTextEdit
        Left = 135
        Top = 64
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtDisplayFormatPersen: TcxTextEdit
        Left = 135
        Top = 82
        BeepOnEnter = False
        TabOrder = 4
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtDisplayFormatCurrency: TcxTextEdit
        Left = 135
        Top = 100
        BeepOnEnter = False
        TabOrder = 5
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object chkAutoClosingDate: TcxCheckBox
        Left = 3
        Top = 133
        AutoSize = False
        Caption = 'Aktifkan tanggal closing otomatis, yaitu '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnEditValueChanged = chkOptionYes34PropertiesEditValueChanged
        State = cbsGrayed
        TabOrder = 6
        Transparent = True
        Height = 21
        Width = 213
      end
      object edtJumHariClosing: TcxSpinEdit
        Left = 218
        Top = 133
        BeepOnEnter = False
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 7
        Value = 1
        Width = 30
      end
    end
    object tsItem: TcxTabSheet
      Caption = 'Barang'
      ImageIndex = 1
      ExplicitWidth = 0
      ExplicitHeight = 339
      object Label5: TLabel
        Left = 24
        Top = 28
        Width = 140
        Height = 13
        Caption = 'Default Panjang kode barang'
        Transparent = True
      end
      object Label6: TLabel
        Left = 232
        Top = 28
        Width = 21
        Height = 13
        Caption = 'Digit'
        Transparent = True
      end
      object Label43: TLabel
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
      object Label44: TLabel
        Left = 9
        Top = 96
        Width = 47
        Height = 13
        Caption = 'Warning'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtDefaultLengthItemId: TcxSpinEdit
        Left = 170
        Top = 25
        BeepOnEnter = False
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MaxValue = 60.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 0
        Value = 10
        Width = 57
      end
      object chkItemNameCannotDuplicate: TcxCheckBox
        Left = 19
        Top = 50
        Caption = 'Nama barang tidak boleh sama'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 1
        Transparent = True
        Width = 296
      end
      object chkShowItemInactive: TcxCheckBox
        Left = 19
        Top = 73
        Caption = 'Tampilkan barang non aktif'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 2
        Transparent = True
        Width = 297
      end
      object chkWarningItemInactive: TcxCheckBox
        Left = 19
        Top = 115
        Caption = 'Warning transaksi yang menggunakan barang non-aktif '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 3
        Transparent = True
        Width = 310
      end
    end
    object tsPurchase: TcxTabSheet
      Caption = 'Pembelian'
      ImageIndex = 2
      ExplicitWidth = 0
      ExplicitHeight = 339
      object Label9: TLabel
        Left = 9
        Top = 9
        Width = 120
        Height = 13
        Caption = 'Form Nota Pembelian'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 9
        Top = 53
        Width = 47
        Height = 13
        Caption = 'Warning'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object chkPIExternalDuplicate: TcxCheckBox
        Left = 25
        Top = 29
        Caption = 'Nomor nota external tidak boleh sama / kembar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 276
      end
      object chkWarningPurchasePriceHigherThanOtherVendor: TcxCheckBox
        Left = 25
        Top = 72
        Caption = 'Warning jika harga lebih tinggi dari harga vendor lain '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 1
        Transparent = True
        Width = 276
      end
    end
    object tsSales: TcxTabSheet
      Caption = 'Penjualan'
      ImageIndex = 3
      ExplicitWidth = 0
      ExplicitHeight = 339
      object Label17: TLabel
        Left = 9
        Top = 9
        Width = 182
        Height = 13
        Caption = 'Form Nota Penjualan (Non Kasir)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 25
        Top = 94
        Width = 156
        Height = 13
        Caption = 'Default harga jual menggunakan'
        Transparent = True
      end
      object Label18: TLabel
        Left = 9
        Top = 136
        Width = 47
        Height = 13
        Caption = 'Warning'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label56: TLabel
        Left = 25
        Top = 117
        Width = 92
        Height = 13
        Caption = 'Pembulatan Keatas'
        Transparent = True
      end
      object chkUseMinSalePrice: TcxCheckBox
        Left = 20
        Top = 28
        Caption = 'Aktifkan fitur harga jual minimum'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 180
      end
      object chkSIExternalDuplicate: TcxCheckBox
        Left = 20
        Top = 69
        Caption = 'Nomor nota external tidak boleh sama / kembar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 2
        Transparent = True
        Width = 256
      end
      object chkSalePriceUsingPriceList: TcxCheckBox
        Left = 188
        Top = 92
        Caption = 'Price List'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnEditValueChanged = chkSalePriceUsingPriceListPropertiesEditValueChanged
        State = cbsGrayed
        TabOrder = 3
        Transparent = True
        Width = 68
      end
      object chkSalePriceUsingCustomerPrice: TcxCheckBox
        Left = 258
        Top = 92
        Caption = 'Harga per Customer'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnEditValueChanged = chkSalePriceUsingCustomerPricePropertiesEditValueChanged
        State = cbsGrayed
        TabOrder = 4
        Transparent = True
        Width = 121
      end
      object chkWarningQtyMinus: TcxCheckBox
        Left = 20
        Top = 155
        Caption = 
          'Warning penjualan stok qty minus (qty jual lebih besar daripada ' +
          'stok gudang) '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 6
        Transparent = True
        Width = 398
      end
      object chkWarningSalePriceLowerThanMinPrice: TcxCheckBox
        Left = 20
        Top = 177
        Caption = 'Warning harga jual lebih rendah dari harga minimum'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 7
        Transparent = True
        Width = 276
      end
      object chkWarningBonusItem: TcxCheckBox
        Left = 20
        Top = 200
        Caption = 'Warning penjualan barang bonus (harga sama dengan nol)'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 8
        Transparent = True
        Width = 310
      end
      object chkAutoUpdateMinSalesPrice: TcxCheckBox
        Left = 39
        Top = 48
        Caption = 'Otomatis update harga jual minimum sebesar harga beli terakhir'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 1
        Transparent = True
        Width = 333
      end
      object edtRoundUpAmount: TcxCalcEdit
        Left = 127
        Top = 115
        EditValue = 0.000000000000000000
        TabOrder = 5
        Width = 55
      end
    end
    object tsCounter: TcxTabSheet
      Caption = 'Counter'
      ImageIndex = 4
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 158
        Top = 10
        Width = 21
        Height = 13
        Caption = 'Digit'
        Transparent = True
      end
      object Label2: TLabel
        Left = 9
        Top = 10
        Width = 114
        Height = 13
        Caption = 'Panjang kode transaksi '
        Transparent = True
      end
      object Label10: TLabel
        Left = 25
        Top = 72
        Width = 74
        Height = 13
        Caption = 'Nota Pembelian'
        Transparent = True
      end
      object Label11: TLabel
        Left = 25
        Top = 90
        Width = 77
        Height = 13
        Caption = 'Pemb Pembelian'
        Transparent = True
      end
      object Label12: TLabel
        Left = 25
        Top = 54
        Width = 79
        Height = 13
        Caption = 'Order Pembelian'
        Transparent = True
      end
      object Label13: TLabel
        Left = 25
        Top = 108
        Width = 78
        Height = 13
        Caption = 'Retur Pembelian'
        Transparent = True
      end
      object Label14: TLabel
        Left = 25
        Top = 126
        Width = 107
        Height = 13
        Caption = 'Pemb Retur Pembelian'
        Transparent = True
      end
      object Label15: TLabel
        Left = 26
        Top = 174
        Width = 78
        Height = 13
        Caption = 'Order Penjualan'
        Transparent = True
      end
      object Label16: TLabel
        Left = 26
        Top = 192
        Width = 73
        Height = 13
        Caption = 'Nota Penjualan'
        Transparent = True
      end
      object Label21: TLabel
        Left = 26
        Top = 210
        Width = 76
        Height = 13
        Caption = 'Pemb Penjualan'
        Transparent = True
      end
      object Label22: TLabel
        Left = 26
        Top = 228
        Width = 77
        Height = 13
        Caption = 'Retur Penjualan'
        Transparent = True
      end
      object Label23: TLabel
        Left = 26
        Top = 246
        Width = 106
        Height = 13
        Caption = 'Pemb Retur Penjualan'
        Transparent = True
      end
      object lblAdjustmentPlus: TLabel
        Left = 25
        Top = 294
        Width = 101
        Height = 13
        Caption = 'Adjustment Stok Plus'
        Transparent = True
      end
      object lblAssembly: TLabel
        Left = 25
        Top = 348
        Width = 93
        Height = 13
        Caption = 'Transaksi Assembly'
        Transparent = True
      end
      object Label26: TLabel
        Left = 9
        Top = 35
        Width = 59
        Height = 13
        Caption = 'Pembelian'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 9
        Top = 155
        Width = 56
        Height = 13
        Caption = 'Penjualan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProcess: TLabel
        Left = 9
        Top = 275
        Width = 38
        Height = 13
        Caption = 'Proses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 361
        Top = 35
        Width = 63
        Height = 13
        Caption = 'Kas && Bank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 378
        Top = 54
        Width = 50
        Height = 13
        Caption = 'Kas Masuk'
        Transparent = True
      end
      object Label36: TLabel
        Left = 378
        Top = 72
        Width = 50
        Height = 13
        Caption = 'Kas Keluar'
        Transparent = True
      end
      object Label37: TLabel
        Left = 378
        Top = 90
        Width = 56
        Height = 13
        Caption = 'Bank Masuk'
        Transparent = True
      end
      object Label38: TLabel
        Left = 378
        Top = 108
        Width = 56
        Height = 13
        Caption = 'Bank Keluar'
        Transparent = True
      end
      object Label39: TLabel
        Left = 140
        Top = 35
        Width = 28
        Height = 13
        Caption = 'Kode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 188
        Top = 35
        Width = 46
        Height = 13
        Caption = 'Panjang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 361
        Top = 152
        Width = 95
        Height = 13
        Caption = 'Adjustment Kurs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 378
        Top = 171
        Width = 81
        Height = 13
        Caption = 'Bank Adjustment'
        Transparent = True
      end
      object Label47: TLabel
        Left = 378
        Top = 189
        Width = 84
        Height = 13
        Caption = 'AP Vendor Adjust'
        Transparent = True
      end
      object Label48: TLabel
        Left = 378
        Top = 207
        Width = 85
        Height = 13
        Caption = 'AR Vendor Adjust'
        Transparent = True
      end
      object Label49: TLabel
        Left = 378
        Top = 225
        Width = 96
        Height = 13
        Caption = 'AP Customer Adjust'
        Transparent = True
      end
      object Label50: TLabel
        Left = 378
        Top = 243
        Width = 97
        Height = 13
        Caption = 'AR Customer Adjust'
        Transparent = True
      end
      object lblMutasi: TLabel
        Left = 25
        Top = 330
        Width = 79
        Height = 13
        Caption = 'Transaksi Mutasi'
        Transparent = True
      end
      object lblAdjustmentMinus: TLabel
        Left = 25
        Top = 312
        Width = 109
        Height = 13
        Caption = 'Adjustment Stok Minus'
        Transparent = True
      end
      object chkPORunYear: TcxCheckBox
        Left = 250
        Top = 52
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 3
        Transparent = True
        Width = 70
      end
      object chkPPRunYear: TcxCheckBox
        Left = 250
        Top = 88
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 8
        Transparent = True
        Width = 70
      end
      object chkPRRunYear: TcxCheckBox
        Left = 250
        Top = 106
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 11
        Transparent = True
        Width = 70
      end
      object chkPRPRunYear: TcxCheckBox
        Left = 250
        Top = 124
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 14
        Transparent = True
        Width = 70
      end
      object chkSORunYear: TcxCheckBox
        Left = 250
        Top = 172
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 17
        Transparent = True
        Width = 70
      end
      object chkSPRunYear: TcxCheckBox
        Left = 250
        Top = 208
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 24
        Transparent = True
        Width = 70
      end
      object chkSRRunYear: TcxCheckBox
        Left = 250
        Top = 226
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 25
        Transparent = True
        Width = 70
      end
      object chkSRPRunYear: TcxCheckBox
        Left = 250
        Top = 244
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 28
        Transparent = True
        Width = 70
      end
      object chkAPRunYear: TcxCheckBox
        Left = 250
        Top = 292
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 31
        Transparent = True
        Width = 70
      end
      object chkCORunYear: TcxCheckBox
        Left = 250
        Top = 346
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 40
        Transparent = True
        Width = 70
      end
      object chkKMRunYear: TcxCheckBox
        Left = 602
        Top = 52
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 43
        Transparent = True
        Width = 70
      end
      object chkKKRunYear: TcxCheckBox
        Left = 602
        Top = 70
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 46
        Transparent = True
        Width = 70
      end
      object chkBMRunYear: TcxCheckBox
        Left = 602
        Top = 88
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 49
        Transparent = True
        Width = 70
      end
      object chkBKRunYear: TcxCheckBox
        Left = 602
        Top = 106
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 52
        Transparent = True
        Width = 70
      end
      object edtPOCode: TcxTextEdit
        Left = 140
        Top = 52
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Text = 'PO'
        Width = 49
      end
      object edtPPCode: TcxTextEdit
        Left = 140
        Top = 88
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Text = 'PP'
        Width = 49
      end
      object edtPRCode: TcxTextEdit
        Left = 140
        Top = 106
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 9
        Text = 'PR'
        Width = 49
      end
      object edtPRPCode: TcxTextEdit
        Left = 140
        Top = 124
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 12
        Text = 'PRP'
        Width = 49
      end
      object edtSOCode: TcxTextEdit
        Left = 140
        Top = 172
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Text = 'SO'
        Width = 49
      end
      object edtSPCode: TcxTextEdit
        Left = 140
        Top = 208
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 20
        Text = 'SP'
        Width = 49
      end
      object edtSRCode: TcxTextEdit
        Left = 140
        Top = 226
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 23
        Text = 'SR'
        Width = 49
      end
      object edtSRPCode: TcxTextEdit
        Left = 140
        Top = 244
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 26
        Text = 'SRP'
        Width = 49
      end
      object edtAPCode: TcxTextEdit
        Left = 140
        Top = 292
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 29
        Text = 'AP'
        Width = 49
      end
      object edtCOCode: TcxTextEdit
        Left = 140
        Top = 346
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 38
        Text = 'CO'
        Width = 49
      end
      object edtKMCode: TcxTextEdit
        Left = 492
        Top = 52
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 41
        Text = 'KM'
        Width = 49
      end
      object edtKKCode: TcxTextEdit
        Left = 492
        Top = 70
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 44
        Text = 'KK'
        Width = 49
      end
      object edtBMCode: TcxTextEdit
        Left = 492
        Top = 88
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 47
        Text = 'BM'
        Width = 49
      end
      object edtBKCode: TcxTextEdit
        Left = 492
        Top = 106
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 50
        Text = 'BK'
        Width = 49
      end
      object edtPOLength: TcxSpinEdit
        Left = 188
        Top = 52
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 2
        Width = 56
      end
      object edtPILength: TcxSpinEdit
        Left = 188
        Top = 70
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 4
        Width = 56
      end
      object edtPPLength: TcxSpinEdit
        Left = 188
        Top = 88
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 7
        Width = 56
      end
      object edtPRLength: TcxSpinEdit
        Left = 188
        Top = 106
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 10
        Width = 56
      end
      object edtPRPLength: TcxSpinEdit
        Left = 188
        Top = 124
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 13
        Width = 56
      end
      object edtSOLength: TcxSpinEdit
        Left = 188
        Top = 172
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 16
        Width = 56
      end
      object edtSILength: TcxSpinEdit
        Left = 188
        Top = 190
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 18
        Width = 56
      end
      object edtSRLength: TcxSpinEdit
        Left = 188
        Top = 226
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 21
        Width = 56
      end
      object edtSPLength: TcxSpinEdit
        Left = 188
        Top = 208
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 22
        Width = 56
      end
      object edtSRPLength: TcxSpinEdit
        Left = 188
        Top = 244
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 27
        Width = 56
      end
      object edtAPLength: TcxSpinEdit
        Left = 188
        Top = 292
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 30
        Width = 56
      end
      object edtCOLength: TcxSpinEdit
        Left = 188
        Top = 346
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 39
        Width = 56
      end
      object edtKMLength: TcxSpinEdit
        Left = 540
        Top = 52
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 42
        Width = 56
      end
      object edtKKLength: TcxSpinEdit
        Left = 540
        Top = 70
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 45
        Width = 56
      end
      object edtBMLength: TcxSpinEdit
        Left = 540
        Top = 88
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 48
        Width = 56
      end
      object edtBKLength: TcxSpinEdit
        Left = 540
        Top = 106
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 51
        Width = 56
      end
      object edtDefaultLengthId: TcxSpinEdit
        Left = 128
        Top = 7
        BeepOnEnter = False
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MaxValue = 15.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 0
        Value = 12
        Width = 24
      end
      object chkPIRunYear: TcxCheckBox
        Left = 250
        Top = 70
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 5
        Transparent = True
        Width = 70
      end
      object chkSIRunYear: TcxCheckBox
        Left = 250
        Top = 190
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 19
        Transparent = True
        Width = 70
      end
      object edtBankAdjCode: TcxTextEdit
        Left = 492
        Top = 169
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 53
        Text = 'BA'
        Width = 49
      end
      object edtBankAdjLength: TcxSpinEdit
        Left = 540
        Top = 169
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 54
        Width = 56
      end
      object edtAPVendorAdjCode: TcxTextEdit
        Left = 492
        Top = 187
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 55
        Text = 'APV'
        Width = 49
      end
      object edtAPVendorAdjLength: TcxSpinEdit
        Left = 540
        Top = 187
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 56
        Width = 56
      end
      object edtARVendorAdjCode: TcxTextEdit
        Left = 492
        Top = 205
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 57
        Text = 'ARV'
        Width = 49
      end
      object edtARVendorAdjLength: TcxSpinEdit
        Left = 540
        Top = 205
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 58
        Width = 56
      end
      object edtAPCustomerAdjCode: TcxTextEdit
        Left = 492
        Top = 223
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 59
        Text = 'APC'
        Width = 49
      end
      object edtAPCustomerAdjLength: TcxSpinEdit
        Left = 540
        Top = 223
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 60
        Width = 56
      end
      object chkBankAdjRunYear: TcxCheckBox
        Left = 602
        Top = 169
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 61
        Transparent = True
        Width = 70
      end
      object chkAPVendorAdjRunYear: TcxCheckBox
        Left = 602
        Top = 187
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 62
        Transparent = True
        Width = 70
      end
      object chkARVendorAdjRunYear: TcxCheckBox
        Left = 602
        Top = 205
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 63
        Transparent = True
        Width = 70
      end
      object chkAPCustomerAdjRunYear: TcxCheckBox
        Left = 602
        Top = 223
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 64
        Transparent = True
        Width = 70
      end
      object edtARCustomerAdjCode: TcxTextEdit
        Left = 492
        Top = 241
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 65
        Text = 'ARC'
        Width = 49
      end
      object edtARCustomerAdjLength: TcxSpinEdit
        Left = 540
        Top = 241
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 66
        Width = 56
      end
      object chkARCustomerAdjRunYear: TcxCheckBox
        Left = 602
        Top = 241
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 67
        Transparent = True
        Width = 70
      end
      object edtMTCode: TcxTextEdit
        Left = 140
        Top = 328
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 35
        Text = 'MT'
        Width = 49
      end
      object edtMTLength: TcxSpinEdit
        Left = 188
        Top = 328
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 36
        Width = 56
      end
      object chkMTRunYear: TcxCheckBox
        Left = 250
        Top = 328
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 37
        Transparent = True
        Width = 70
      end
      object edtAMCode: TcxTextEdit
        Left = 140
        Top = 310
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 32
        Text = 'AM'
        Width = 49
      end
      object edtAMLength: TcxSpinEdit
        Left = 188
        Top = 310
        BeepOnEnter = False
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 33
        Width = 56
      end
      object chkAMRunYear: TcxCheckBox
        Left = 250
        Top = 310
        Caption = 'Per Tahun'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 34
        Transparent = True
        Width = 70
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 336
    Top = 64
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
end
