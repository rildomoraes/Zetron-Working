inherited fmMainMenu: TfmMainMenu
  Caption = 'fmMainMenu'
  ExplicitWidth = 800
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu1: TMainMenu
    inherited mnuOptions: TMenuItem
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
      object SettingCounter1: TMenuItem
        Caption = 'Setting Counter'
        OnClick = SettingCounter1Click
      end
    end
    inherited mnuMaster: TMenuItem
      inherited mnuGeneral: TMenuItem
        object N4: TMenuItem
          Caption = '-'
        end
        object mnuStruktur: TMenuItem
          Caption = 'Struktur'
          OnClick = mnuStrukturClick
        end
        object mnuJabatanPayroll: TMenuItem
          Caption = 'Jabatan'
          OnClick = mnuJabatanPayrollClick
        end
        object mnuOutsourcing: TMenuItem
          Caption = 'Outsourcing'
          OnClick = mnuOutsourcingClick
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object mnuBahasa: TMenuItem
          Caption = 'Bahasa'
          OnClick = mnuBahasaClick
        end
        object mnuPendidikan: TMenuItem
          Caption = 'Pendidikan'
          OnClick = mnuPendidikanClick
        end
        object mnuKeahlian: TMenuItem
          Caption = 'Keahlian'
          OnClick = mnuKeahlianClick
        end
        object mnuTenagaKerja: TMenuItem
          Caption = 'Tenaga Kerja'
          OnClick = mnuTenagaKerjaClick
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object mnuBank: TMenuItem
          Caption = 'Bank'
          OnClick = mnuBankClick
        end
      end
      object mnuAbsensi: TMenuItem
        Caption = 'Absensi'
        object mnuFotoKaryawan: TMenuItem
          Caption = 'Foto Karyawan'
          OnClick = mnuFotoKaryawanClick
        end
        object mnuKartuPengenal: TMenuItem
          Caption = 'Kartu Pengenal'
          OnClick = mnuKartuPengenalClick
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object mnuKodeAbsen: TMenuItem
          Caption = 'Kode Absen'
          OnClick = mnuKodeAbsenClick
        end
        object mnuGroupShift: TMenuItem
          Caption = 'Group Shift'
          OnClick = mnuGroupShiftClick
        end
        object mnuJamKerja: TMenuItem
          Caption = 'Jam Kerja'
          OnClick = mnuJamKerjaClick
        end
        object mnuLibur: TMenuItem
          Caption = 'Libur'
          OnClick = mnuLiburClick
        end
        object mnuPersonValidation: TMenuItem
          Caption = 'Person Validation'
          OnClick = mnuPersonValidationClick
        end
      end
      object mnuPayroll: TMenuItem
        Caption = 'Payroll'
        object PeriodePayroll1: TMenuItem
          Caption = 'Periode Payroll'
          OnClick = PeriodePayroll1Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object mnuTipePayroll: TMenuItem
          Caption = 'Tipe Payroll'
          OnClick = mnuTipePayrollClick
        end
        object mnuPayrollPegawai: TMenuItem
          Caption = 'Payroll Pegawai'
          OnClick = mnuPayrollPegawaiClick
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object mnuSyarat: TMenuItem
          Caption = 'Syarat'
          OnClick = mnuSyaratClick
        end
        object mnuSyaratPenggajian: TMenuItem
          Caption = 'Syarat Penggajian'
          OnClick = mnuSyaratPenggajianClick
        end
        object Bank1: TMenuItem
          Caption = 'Bank'
          OnClick = Bank1Click
        end
      end
    end
    object ranaksi1: TMenuItem [3]
      Caption = 'Transaksi'
      object mnuMutasi: TMenuItem
        Caption = 'Mutasi'
        OnClick = mnuMutasiClick
      end
      object mnuScheduling: TMenuItem
        Caption = 'Scheduling'
        OnClick = mnuSchedulingClick
      end
      object mnuAbsenManual: TMenuItem
        Caption = 'Absen Manual'
        OnClick = mnuAbsenManualClick
      end
      object mnuAbsenManualLock: TMenuItem
        Caption = 'Absen Manual - Lock'
        OnClick = mnuAbsenManualLockClick
      end
      object mnuTransaksiAbsen: TMenuItem
        Caption = 'Transaksi Absen'
        OnClick = mnuTransaksiAbsenClick
      end
      object mnuTransaksiLembur: TMenuItem
        Caption = 'Transaksi Lembur'
        OnClick = mnuTransaksiLemburClick
      end
      object mnuTransaksiIsidentil: TMenuItem
        Caption = 'Transaksi Insidentil'
        OnClick = mnuTransaksiIsidentilClick
      end
      object mnuTransaksiAmbilGaji: TMenuItem
        Caption = 'Transaksi Pengambilan Gaji'
        OnClick = mnuTransaksiAmbilGajiClick
      end
    end
    object Proses1: TMenuItem [4]
      Caption = 'Proses'
      object mnuClosingTanggal: TMenuItem
        Caption = 'Closing Tanggal'
        OnClick = mnuClosingTanggalClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mnuClosingShift: TMenuItem
        Caption = 'Proses Closing Shift'
        OnClick = mnuClosingShiftClick
      end
      object mnuProsesHarian: TMenuItem
        Caption = 'Proses Harian'
        OnClick = mnuProsesHarianClick
      end
      object mnuProsesPeriode: TMenuItem
        Caption = 'Proses Periode'
        OnClick = mnuProsesPeriodeClick
      end
    end
    inherited mnuDisplay: TMenuItem
      object DisplayAbsensi1: TMenuItem
        Caption = 'Display Absensi'
        OnClick = DisplayAbsensi1Click
      end
      object DisplayMutasi1: TMenuItem
        Caption = 'Display Mutasi'
        OnClick = DisplayMutasi1Click
      end
      object DisplayGaji1: TMenuItem
        Caption = 'Display Gaji'
        OnClick = DisplayGaji1Click
      end
      object DisplaySlipGaji1: TMenuItem
        Caption = 'Display Slip Gaji'
        OnClick = DisplaySlipGaji1Click
      end
      object DisplayPengambilanIsidentil1: TMenuItem
        Caption = 'Display Pengambilan Insidentil'
        OnClick = DisplayPengambilanIsidentil1Click
      end
    end
  end
end
