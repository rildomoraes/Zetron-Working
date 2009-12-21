object fmMainMenuOld: TfmMainMenuOld
  Left = 388
  Top = 223
  Caption = 'Menu Utama'
  ClientHeight = 466
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object stbMainMenu: TStatusBar
    Left = 0
    Top = 447
    Width = 692
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 692
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
    AnimationStyle = asFade
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    EdgeBorders = [ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  object tmMainMenuTimer: TTimer
    Enabled = False
    OnTimer = tmMainMenuTimerTimer
    Left = 40
    Top = 32
  end
  object aeMainMenuEvent: TApplicationEvents
    Left = 72
    Top = 32
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actAbout
                Caption = '&About'
              end
              item
                Caption = '-'
              end
              item
                Action = actBackupDatabase
                Caption = '&Backup Database'
                ImageIndex = 4
              end
              item
                Action = actClearLog
                Caption = '&Maintenance Database'
                ImageIndex = 7
              end
              item
                Caption = '-'
              end
              item
                Action = actExportImportData
                Caption = 'E&xport Import Data'
              end
              item
                Caption = '-'
              end
              item
                Action = actLogOff
                Caption = '&Log Off'
                ImageIndex = 2
              end
              item
                Action = actExit
                Caption = '&Exit'
                ImageIndex = 3
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = actSettingLocal
                Caption = 'Se&tting'
              end
              item
                Action = actSettingGlobal
                Caption = '&Setting Global'
                ImageIndex = 0
              end
              item
                Action = actResetAllForm
                Caption = '&Reset Semua Form'
                ImageIndex = 1
              end
              item
                Caption = '-'
              end
              item
                Action = actAccess
                Caption = 'S&ecurity'
              end
              item
                Action = actChangePassword
                Caption = 'U&bah Password'
                ImageIndex = 5
              end>
            Caption = '&Options'
          end
          item
            Items = <
              item
                Action = actCompany
                Caption = '&Perusahaan'
              end
              item
                Action = actDepartemen
                Caption = '&Departemen'
              end
              item
                Action = ActJabatan1
                Caption = 'J&abatan'
              end
              item
                Action = actEmployee
                Caption = '&User'
              end
              item
                Caption = '-'
              end
              item
                Action = Action2
                Caption = '&Struktur'
              end
              item
                Action = ActJabatan
                Caption = '&Jabatan'
              end
              item
                Action = ActOutSourcing
                Caption = '&Outsourcing'
              end
              item
                Action = ActBank
                Caption = '&Bank'
              end
              item
                Caption = '-'
              end
              item
                Action = ActBahasa
                Caption = 'Ba&hasa'
              end
              item
                Action = ActPendidikan
                Caption = 'P&endidikan'
              end
              item
                Action = ActKeahlian
                Caption = '&Keahlian'
              end
              item
                Action = Action1
                Caption = '&Tenaga Kerja'
              end>
            Caption = '&Master'
          end
          item
            Items = <
              item
                Action = ActFoto
                Caption = '&Foto Karyawan'
              end
              item
                Action = ActPrintKartu
                Caption = '&Print Kartu'
              end
              item
                Caption = '-'
              end
              item
                Action = ActKodeAbsen
                Caption = '&Kode Absen'
              end
              item
                Action = ActGroupShift
                Caption = '&Group Shift'
              end
              item
                Action = actJamKerja
                Caption = '&Jam Kerja'
              end
              item
                Action = ActLibur
                Caption = '&Libur'
              end
              item
                Action = ActPersonValidation
                Caption = 'P&erson Validation'
              end>
            Caption = '&Absensi'
          end
          item
            Items = <
              item
                Action = ActPeriodeGaji
                Caption = 'P&eriode Payroll'
              end
              item
                Caption = '-'
              end
              item
                Action = ActKomponenPayroll
                Caption = 'T&ipe Payroll'
              end
              item
                Action = ActPayrollDetail
                Caption = '&Payroll Pegawai'
              end
              item
                Caption = '-'
              end
              item
                Action = actMasterSyarat
                Caption = '&Syarat'
              end
              item
                Action = ActMasterGaji
                Caption = 'S&yarat Payroll'
              end>
            Caption = '&Payroll'
          end
          item
            Items = <
              item
                Action = ActMutasi
                Caption = '&Mutasi'
              end
              item
                Action = ActSchedulling
                Caption = '&Schedulling'
              end
              item
                Action = ActAbsenManual
                Caption = 'A&bsen Manual'
              end
              item
                Action = ActAbsenManualLock
                Caption = 'Abs&en Manual Lock'
              end
              item
                Action = ActTransaksiAbsen
                Caption = '&Transaksi Absen'
              end
              item
                Action = ActLembur
                Caption = '&Lembur'
              end
              item
                Action = ActTransaksiPayroll
                Caption = 'T&ransaksi Insidentil'
              end
              item
                Action = ActTransaksiPengambilanPayroll
                Caption = 'Tr&ansaksi Pengambilan Gaji'
              end>
            Caption = '&Transaksi'
          end
          item
            Items = <
              item
                Action = ActProsesClosingShift
                Caption = 'Pr&oses Closing Shift'
              end
              item
                Action = ActProsesClosingDate
                Caption = 'Pro&ses Closing Tanggal'
              end
              item
                Caption = '-'
              end
              item
                Action = ActProsesHarian
                Caption = '&Proses Harian'
              end
              item
                Action = ActProsesPeriode
                Caption = 'P&roses Periode'
              end>
            Caption = 'Pro&ses'
          end
          item
            Items = <
              item
                Action = ActDisplayAbsensi
                Caption = '&Display Absensi'
              end
              item
                Action = ActDisplayMutasi
                Caption = 'D&isplay Mutasi'
              end
              item
                Action = ActDisplayGaji2
                Caption = 'Disp&lay Gaji'
              end
              item
                Action = ActDisplayGaji3
                Caption = 'Dis&play Slip Gaji'
              end
              item
                Action = ActDisplayPengambilanInsidentil
                Caption = 'Di&splay Pengambilan Insidentil'
              end>
            Caption = '&Display'
          end
          item
            Items = <
              item
                Action = Action3
                Caption = '&Report Designer'
              end
              item
                Caption = '-'
              end
              item
                Action = ActImport
                Caption = '&Import'
              end
              item
                Action = ActExport
                Caption = '&Export'
              end
              item
                Caption = '-'
              end>
            Caption = '&Report'
          end
          item
            Items = <
              item
                Action = WindowClose1
              end
              item
                Action = WindowCascade1
                ImageIndex = 17
              end
              item
                Action = WindowTileHorizontal1
                ImageIndex = 15
              end
              item
                Action = WindowTileVertical1
                ImageIndex = 16
              end
              item
                Action = WindowMinimizeAll1
              end
              item
                Action = WindowArrange1
              end>
            Caption = '&Window'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 8
    Top = 32
    StyleName = 'XP Style'
    object actAbout: TAction
      Category = 'File'
      Caption = 'About'
      OnExecute = actAboutExecute
    end
    object actBackupDatabase: TAction
      Category = 'File'
      Caption = 'Backup Database'
      ImageIndex = 4
      OnExecute = actBackupDatabaseExecute
    end
    object actClearLog: TAction
      Category = 'File'
      Caption = 'Maintenance Database'
      ImageIndex = 7
      OnExecute = actClearLogExecute
    end
    object actExportImportData: TAction
      Category = 'File'
      Caption = 'Export Import Data'
      OnExecute = actExportImportDataExecute
    end
    object actLogOff: TAction
      Category = 'File'
      Caption = 'Log Off'
      ImageIndex = 2
      OnExecute = actLogOffExecute
    end
    object actExit: TAction
      Category = 'File'
      Caption = 'Exit'
      ImageIndex = 3
      OnExecute = actExitExecute
    end
    object actSettingLocal: TAction
      Category = 'Options'
      Caption = 'Setting'
      OnExecute = actSettingLocalExecute
    end
    object actSettingGlobal: TAction
      Category = 'Options'
      Caption = 'Setting Global'
      ImageIndex = 0
      OnExecute = actSettingGlobalExecute
    end
    object actResetAllForm: TAction
      Category = 'Options'
      Caption = 'Reset Semua Form'
      ImageIndex = 1
      OnExecute = actResetAllFormExecute
    end
    object actAccess: TAction
      Category = 'Options'
      Caption = 'Security'
      OnExecute = actAccessExecute
    end
    object actChangePassword: TAction
      Category = 'Options'
      Caption = 'Ubah Password'
      ImageIndex = 5
      OnExecute = actChangePasswordExecute
    end
    object actCompany: TAction
      Category = 'Master'
      Caption = 'Perusahaan'
      OnExecute = actCompanyExecute
    end
    object actDepartemen: TAction
      Category = 'Master'
      Caption = 'Departemen'
      OnExecute = actDepartemenExecute
    end
    object ActJabatan1: TAction
      Category = 'Master'
      Caption = 'Jabatan'
      OnExecute = actJabatan1Execute
    end
    object actEmployee: TAction
      Category = 'Master'
      Caption = 'User'
      OnExecute = actEmployeeExecute
    end
    object Action2: TAction
      Category = 'Master'
      Caption = 'Struktur'
      OnExecute = action2Execute
    end
    object Action4: TAction
      Category = 'Options'
      Caption = 'Report Designer'
    end
    object Action3: TAction
      Category = 'Report'
      Caption = 'Report Designer'
      OnExecute = action3Execute
    end
    object ActFoto: TAction
      Category = 'Absensi'
      Caption = 'Foto Karyawan'
      OnExecute = actFotoExecute
    end
    object ActPrintKartu: TAction
      Category = 'Absensi'
      Caption = 'Print Kartu'
      OnExecute = actPrintKartuExecute
    end
    object ActImport: TAction
      Category = 'Report'
      Caption = 'Import'
      OnExecute = actImportExecute
    end
    object ActExport: TAction
      Category = 'Report'
      Caption = 'Export'
      OnExecute = actExportExecute
    end
    object ActKodeAbsen: TAction
      Category = 'Absensi'
      Caption = 'Kode Absen'
      OnExecute = actKodeAbsenExecute
    end
    object ActGroupShift: TAction
      Category = 'Absensi'
      Caption = 'Group Shift'
      OnExecute = actGroupShiftExecute
    end
    object ActJabatan: TAction
      Category = 'Master'
      Caption = 'Jabatan'
      OnExecute = actJabatanExecute
    end
    object ActSchedulling: TAction
      Category = 'Transaksi'
      Caption = 'Schedulling'
      OnExecute = actSchedullingExecute
    end
    object ActLembur: TAction
      Category = 'Transaksi'
      Caption = 'Lembur'
      OnExecute = actLemburExecute
    end
    object ActAbsen: TAction
      Category = 'Transaksi'
      Caption = 'Absen'
    end
    object ActTransaksiAbsen: TAction
      Category = 'Transaksi'
      Caption = 'Transaksi Absen'
      OnExecute = actTransaksiAbsenExecute
    end
    object ActMutasi: TAction
      Category = 'Transaksi'
      Caption = 'Mutasi'
      OnExecute = actMutasiExecute
    end
    object ActMasterShift: TAction
      Category = 'Absensi'
      Caption = 'Shift'
    end
    object ActAbsenManual: TAction
      Category = 'Transaksi'
      Caption = 'Absen Manual'
      OnExecute = actAbsenManualExecute
    end
    object ActLibur: TAction
      Category = 'Absensi'
      Caption = 'Libur'
      OnExecute = actLiburExecute
    end
    object ActProsesClosingShift: TAction
      Category = 'Proses'
      Caption = 'Proses Closing Shift'
      OnExecute = actProsesClosingShiftExecute
    end
    object actJamKerja: TAction
      Category = 'Absensi'
      Caption = 'Jam Kerja'
      OnExecute = actJamKerjaExecute
    end
    object ActDisplayAbsensi: TAction
      Category = 'Display'
      Caption = 'Display Absensi'
      OnExecute = actDisplayAbsensiExecute
    end
    object ActOutSourcing: TAction
      Category = 'Master'
      Caption = 'Outsourcing'
      OnExecute = actOutSourcingExecute
    end
    object ActPeriodeGaji: TAction
      Category = 'Master'
      Caption = 'Periode Payroll'
      OnExecute = actPeriodeGajiExecute
    end
    object ActKomponenPayroll: TAction
      Category = 'Master'
      Caption = 'Tipe Payroll'
      OnExecute = actKomponenPayrollExecute
    end
    object ActPayrollDetail: TAction
      Category = 'Master'
      Caption = 'Payroll Pegawai'
      OnExecute = actPayrollDetailExecute
    end
    object actMasterSyarat: TAction
      Category = 'Master'
      Caption = 'Syarat'
      OnExecute = actMasterSyaratExecute
    end
    object ActMasterGaji: TAction
      Category = 'Master'
      Caption = 'Syarat Payroll'
      OnExecute = actMasterGajiExecute
    end
    object ActBank: TAction
      Category = 'Master'
      Caption = 'Bank'
      OnExecute = actBankExecute
    end
    object Action1: TAction
      Category = 'Master'
      Caption = 'Tenaga Kerja'
      OnExecute = action1Execute
    end
    object ActProsesHarian: TAction
      Category = 'Proses'
      Caption = 'Proses Harian'
      OnExecute = actProsesHarianExecute
    end
    object ActDisplayMutasi: TAction
      Category = 'Display'
      Caption = 'Display Mutasi'
      OnExecute = actDisplayMutasiExecute
    end
    object ActProsesPeriode: TAction
      Category = 'Proses'
      Caption = 'Proses Periode'
      OnExecute = actProsesPeriodeExecute
    end
    object ActTransaksiPayroll: TAction
      Category = 'Transaksi'
      Caption = 'Transaksi Insidentil'
      OnExecute = actTransaksiPayrollExecute
    end
    object actDisplaySlipGaji: TAction
      Category = 'Display'
      Caption = 'Display Slip Gaji'
      OnExecute = actDisplaySlipGajiExecute
    end
    object ActPersonValidation: TAction
      Category = 'Absensi'
      Caption = 'Person Validation'
      OnExecute = ActPersonValidationExecute
    end
    object ActTransaksiPengambilanPayroll: TAction
      Category = 'Transaksi'
      Caption = 'Transaksi Pengambilan Gaji'
      OnExecute = ActTransaksiPengambilanPayrollExecute
    end
    object ActDisplayGaji: TAction
      Category = 'Display'
      Caption = 'Display Gaji 2'
      OnExecute = ActDisplayGajiExecute
    end
    object ActProsesClosingDate: TAction
      Category = 'Proses'
      Caption = 'Proses Closing Tanggal'
      OnExecute = ActProsesClosingDateExecute
    end
    object ActProsesClosingYear: TAction
      Category = 'Proses'
      Caption = 'Proses Closing Tahun'
      OnExecute = ActProsesClosingYearExecute
    end
    object ActDisplayGaji2: TAction
      Category = 'Display'
      Caption = 'Display Gaji'
      OnExecute = ActDisplayGaji2Execute
    end
    object ActDisplayGaji3: TAction
      Category = 'Display'
      Caption = 'Display Slip Gaji'
      OnExecute = ActDisplayGaji3Execute
    end
    object ActDisplayPengambilanInsidentil: TAction
      Category = 'Display'
      Caption = 'Display Pengambilan Insidentil'
      OnExecute = ActDisplayPengambilanInsidentilExecute
    end
    object ActAbsenManualLock: TAction
      Category = 'Transaksi'
      Caption = 'Absen Manual Lock'
      OnExecute = ActAbsenManualLockExecute
    end
    object ActPendidikan: TAction
      Category = 'Master'
      Caption = 'Pendidikan'
      OnExecute = ActPendidikanExecute
    end
    object ActAsset: TAction
      Category = 'Master'
      Caption = 'Asset'
      OnExecute = ActAssetExecute
    end
    object ActBahasa: TAction
      Category = 'Master'
      Caption = 'Bahasa'
      OnExecute = ActBahasaExecute
    end
    object ActKeahlian: TAction
      Category = 'Master'
      Caption = 'Keahlian'
      OnExecute = ActKeahlianExecute
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
  end
end
