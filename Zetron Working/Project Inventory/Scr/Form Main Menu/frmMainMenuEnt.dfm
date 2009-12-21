inherited fmMainMenuEnt: TfmMainMenuEnt
  Caption = 'fmMainMenuEnt'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu1: TMainMenu
    inherited mnuMaster: TMenuItem
      object mnuCashRegister: TMenuItem [3]
        Caption = 'Kasir'
        object mnuShift: TMenuItem
          Caption = 'Shift Kerja'
          OnClick = mnuShiftClick
        end
        object mnuMechineCashRegister: TMenuItem
          Caption = 'Mesin Kasir'
          OnClick = mnuMechineCashRegisterClick
        end
      end
      object mnuCounter: TMenuItem [4]
        Caption = 'Counter'
        object mnuEngineGroup: TMenuItem
          Caption = 'Group Mesin'
          OnClick = mnuEngineGroupClick
        end
        object mnuJobType: TMenuItem
          Caption = 'Jenis Pekerjaan'
          OnClick = mnuJobTypeClick
        end
        object mnuEngine: TMenuItem
          Caption = 'Mesin'
          OnClick = mnuEngineClick
        end
        object mnuEngineGroupJob: TMenuItem
          Caption = 'Pekerjaan Group Mesin'
          OnClick = mnuEngineGroupJobClick
        end
      end
      inherited mnuMasterAccounting: TMenuItem
        object mnuMataUang: TMenuItem [0]
          Caption = 'Mata Uang'
          OnClick = mnuMataUangClick
        end
      end
    end
    inherited mnuProcess: TMenuItem
      object mnuTransaksiCashRegister: TMenuItem [10]
        Caption = 'Transaksi Cash Register'
        OnClick = mnuTransaksiCashRegisterClick
      end
      object mnuCounterFisikMesin: TMenuItem [11]
        Caption = 'Counter Fisik Mesin'
        OnClick = mnuCounterFisikMesinClick
      end
      object SP3_1: TMenuItem [12]
        Caption = '-'
      end
    end
    inherited mnuAccounting: TMenuItem
      object SelisihKursBank1: TMenuItem
        Caption = 'Selisih Kurs - Bank'
        OnClick = SelisihKursBank1Click
      end
      object SP3_2: TMenuItem
        Caption = '-'
      end
      object SelisihKursHutangVendor1: TMenuItem
        Caption = 'Selisih Kurs - Hutang Vendor'
        OnClick = SelisihKursHutangVendor1Click
      end
      object SelisihKursPiutangVendor1: TMenuItem
        Caption = 'Selisih Kurs - Piutang Vendor'
        OnClick = SelisihKursPiutangVendor1Click
      end
      object SP3_3: TMenuItem
        Caption = '-'
      end
      object SelisihKursHutangCustomer1: TMenuItem
        Caption = 'Selisih Kurs - Hutang Customer'
        OnClick = SelisihKursHutangCustomer1Click
      end
      object SelisihKursPiutangCustomer1: TMenuItem
        Caption = 'Selisih Kurs - Piutang Customer'
        OnClick = SelisihKursPiutangCustomer1Click
      end
    end
  end
end
