inherited fmSettingGlobalPro: TfmSettingGlobalPro
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    inherited tsItem: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 683
      inherited Label44: TLabel
        Top = 120
        ExplicitTop = 120
      end
      inherited edtDefaultLengthItemId: TcxSpinEdit
        ExplicitHeight = 19
      end
      inherited chkItemNameCannotDuplicate: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkShowItemInactive: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkWarningItemInactive: TcxCheckBox
        Top = 139
        TabOrder = 4
        ExplicitTop = 139
        ExplicitHeight = 17
      end
      object chkItemUsingExpiredDate: TcxCheckBox
        Left = 19
        Top = 97
        Caption = 'Barang menggunakan sistem kadaluarsa (expired date)'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 3
        Transparent = True
        Width = 297
      end
    end
    inherited tsPurchase: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 683
      inherited chkPIExternalDuplicate: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkWarningPurchasePriceHigherThanOtherVendor: TcxCheckBox
        ExplicitHeight = 17
      end
    end
    inherited tsSales: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 683
      inherited Label18: TLabel
        Top = 160
        ExplicitTop = 160
      end
      inherited chkUseMinSalePrice: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkSIExternalDuplicate: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkSalePriceUsingPriceList: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkSalePriceUsingCustomerPrice: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited chkWarningQtyMinus: TcxCheckBox
        Top = 179
        TabOrder = 7
        ExplicitTop = 179
        ExplicitHeight = 17
      end
      inherited chkWarningSalePriceLowerThanMinPrice: TcxCheckBox
        Top = 201
        TabOrder = 8
        ExplicitTop = 201
        ExplicitHeight = 17
      end
      inherited chkWarningBonusItem: TcxCheckBox
        Top = 224
        TabOrder = 9
        ExplicitTop = 224
        ExplicitHeight = 17
      end
      inherited chkAutoUpdateMinSalesPrice: TcxCheckBox
        ExplicitHeight = 17
      end
      inherited edtRoundUpAmount: TcxCalcEdit
        ExplicitHeight = 19
      end
      object chkShowAutomaticSalesOnSI: TcxCheckBox
        AlignWithMargins = True
        Left = 20
        Top = 137
        Caption = 'Tampilkan semua transaksi penjualan (Non SI) pada form penjualan'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnEditValueChanged = chkOptionYes34PropertiesEditValueChanged
        State = cbsGrayed
        TabOrder = 6
        Transparent = True
        Width = 341
      end
    end
    object tsCashRegister: TcxTabSheet [4]
      Caption = 'Kasir'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblFormRgisterSalesInfo: TLabel
        Left = 9
        Top = 9
        Width = 158
        Height = 13
        Caption = 'Form Nota Penjualan (Kasir)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 51
        Width = 107
        Height = 13
        Caption = 'Validasi Supervisor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 20
        Top = 75
        Width = 66
        Height = 13
        Caption = 'Nota Register'
        Transparent = True
      end
      object Label19: TLabel
        Left = 143
        Top = 75
        Width = 25
        Height = 13
        Caption = 'Level'
        Transparent = True
      end
      object Label51: TLabel
        Left = 224
        Top = 75
        Width = 96
        Height = 13
        Caption = 'Detail Nota Register'
        Transparent = True
      end
      object lblLevel: TLabel
        Left = 350
        Top = 75
        Width = 25
        Height = 13
        Caption = 'Level'
        Transparent = True
      end
      object Label52: TLabel
        Left = 435
        Top = 75
        Width = 86
        Height = 13
        Caption = 'Pembayaran Nota'
        Transparent = True
      end
      object Label57: TLabel
        Left = 624
        Top = 75
        Width = 25
        Height = 13
        Caption = 'Level'
        Transparent = True
      end
      object chkAutoPostingOnClosingRegister: TcxCheckBox
        Left = 20
        Top = 28
        Caption = 'Tutup kasir langsung lakukan posting'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 205
      end
      object chkFlagValidationInvoiceDisc1: TcxCheckBox
        Left = 20
        Top = 94
        Caption = 'Disc nota 1'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 2
        Transparent = True
        Width = 113
      end
      object chkFlagValidationInvoiceDisc2: TcxCheckBox
        Left = 20
        Top = 132
        Caption = 'Disc nota 2'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 5
        Transparent = True
        Width = 113
      end
      object chkFlagValidationInvoiceVoucher: TcxCheckBox
        Left = 20
        Top = 170
        Caption = 'Voucher nota'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 8
        Transparent = True
        Width = 113
      end
      object chkFlagValidationInvoiceVoid: TcxCheckBox
        Left = 20
        Top = 208
        Caption = 'Void nota'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 11
        Transparent = True
        Width = 113
      end
      object chkFlagValidationInvoiceReprint: TcxCheckBox
        Left = 20
        Top = 226
        Caption = 'Reprint nota'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 13
        Transparent = True
        Width = 113
      end
      object chkFlagValidationPaymentVoid: TcxCheckBox
        Left = 20
        Top = 244
        Caption = 'Void Pembayaran'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 15
        Transparent = True
        Width = 113
      end
      object chkFlagValidationItemPrice: TcxCheckBox
        Left = 224
        Top = 94
        Caption = 'Ubah level harga '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 17
        Transparent = True
        Width = 115
      end
      object chkFlagValidationItemDisc1: TcxCheckBox
        Left = 224
        Top = 132
        Caption = 'Disc barang 1 '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 20
        Transparent = True
        Width = 115
      end
      object chkFlagValidationItemDisc2: TcxCheckBox
        Left = 224
        Top = 170
        Caption = 'Disc barang 2 '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 23
        Transparent = True
        Width = 115
      end
      object chkFlagValidationItemVoucher: TcxCheckBox
        Left = 224
        Top = 208
        Caption = 'Voucher barang '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 26
        Transparent = True
        Width = 115
      end
      object chkFlagValidationItemBonus: TcxCheckBox
        Left = 224
        Top = 246
        Caption = 'Bonus barang '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 29
        Transparent = True
        Width = 115
      end
      object chkFlagValidationItemVoid: TcxCheckBox
        Left = 224
        Top = 284
        Caption = 'Void barang '
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 32
        Transparent = True
        Width = 115
      end
      object chkFlagValidationPIPaymentVoid: TcxCheckBox
        Left = 431
        Top = 94
        Caption = 'Void Pembayaran Nota Pembelian'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 35
        Transparent = True
        Width = 187
      end
      object chkFlagValidationSIPaymentVoid: TcxCheckBox
        Left = 431
        Top = 112
        Caption = 'Void Pembayaran Nota Penjualan'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 37
        Transparent = True
        Width = 187
      end
      object edtLevelValidationInvoiceDisc1: TcxSpinEdit
        Left = 135
        Top = 94
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 3
        Width = 47
      end
      object edtLevelValidationInvoiceDisc2: TcxSpinEdit
        Left = 135
        Top = 132
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 6
        Width = 47
      end
      object edtLevelValidationInvoiceVoucher: TcxSpinEdit
        Left = 135
        Top = 170
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 9
        Width = 47
      end
      object edtLevelValidationInvoiceVoid: TcxSpinEdit
        Left = 135
        Top = 208
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 12
        Width = 47
      end
      object edtLevelValidationInvoiceReprint: TcxSpinEdit
        Left = 135
        Top = 226
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 14
        Width = 47
      end
      object edtLevelValidationPaymentVoid: TcxSpinEdit
        Left = 135
        Top = 244
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 16
        Width = 47
      end
      object edtLevelValidationItemPrice: TcxSpinEdit
        Left = 343
        Top = 94
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 18
        Width = 47
      end
      object edtLevelValidationItemDisc1: TcxSpinEdit
        Left = 343
        Top = 132
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 21
        Width = 47
      end
      object edtLevelValidationItemDisc2: TcxSpinEdit
        Left = 343
        Top = 170
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 24
        Width = 47
      end
      object edtLevelValidationItemVoucher: TcxSpinEdit
        Left = 343
        Top = 208
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 27
        Width = 47
      end
      object edtLevelValidationItemBonus: TcxSpinEdit
        Left = 343
        Top = 246
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 30
        Width = 47
      end
      object edtLevelValidationItemVoid: TcxSpinEdit
        Left = 343
        Top = 284
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 33
        Width = 47
      end
      object edtLevelValidationPIPaymentVoid: TcxSpinEdit
        Left = 616
        Top = 94
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 36
        Width = 47
      end
      object edtLevelValidationSIPaymentVoid: TcxSpinEdit
        Left = 616
        Top = 112
        Properties.SpinButtons.Position = sbpHorzLeftRight
        TabOrder = 38
        Width = 47
      end
      object chkFlagValidationInvoiceDisc1Bypas: TcxCheckBox
        Left = 34
        Top = 112
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 4
        Transparent = True
        Width = 148
      end
      object chkFlagValidationInvoiceDisc2Bypass: TcxCheckBox
        Left = 34
        Top = 150
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 7
        Transparent = True
        Width = 148
      end
      object chkFlagValidationInvoiceVoucherBypass: TcxCheckBox
        Left = 34
        Top = 188
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 10
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemPriceBypass: TcxCheckBox
        Left = 238
        Top = 112
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 19
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemDisc1Bypass: TcxCheckBox
        Left = 238
        Top = 150
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 22
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemDisc2Bypass: TcxCheckBox
        Left = 238
        Top = 188
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 25
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemVoucherBypass: TcxCheckBox
        Left = 238
        Top = 226
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 28
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemBonusBypass: TcxCheckBox
        Left = 238
        Top = 264
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 31
        Transparent = True
        Width = 148
      end
      object chkFlagValidationItemVoidBypass: TcxCheckBox
        Left = 238
        Top = 303
        Caption = 'Lewati jika belum terbayar'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 34
        Transparent = True
        Width = 148
      end
      object chkCannotPrintUnpaidInvoice: TcxCheckBox
        Left = 238
        Top = 28
        Caption = 'Nota belum lunas tidak dapat di cetak'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 1
        Transparent = True
        Width = 203
      end
    end
  end
end
