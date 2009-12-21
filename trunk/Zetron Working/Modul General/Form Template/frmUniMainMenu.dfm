object FormUniMainMenu: TFormUniMainMenu
  Left = 388
  Top = 223
  Caption = 'FormUniMainMenu'
  ClientHeight = 551
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stbMainMenu: TStatusBar
    Left = 0
    Top = 532
    Width = 792
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 38
      end
      item
        Width = 38
      end
      item
        Width = 38
      end
      item
        Width = 38
      end
      item
        Width = 230
      end
      item
        Width = 50
      end>
  end
  object tmMainMenuTimer: TTimer
    Enabled = False
    OnTimer = tmMainMenuTimerTimer
    Left = 40
    Top = 8
  end
  object aeMainMenuEvent: TApplicationEvents
    OnIdle = aeMainMenuEventIdle
    OnHint = aeMainMenuEventHint
    Left = 72
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuBackupDatabase: TMenuItem
        Caption = 'Backup Database'
        ImageIndex = 4
        OnClick = mnuBackupDatabaseClick
      end
      object mnuMaintenanceDatabase: TMenuItem
        Caption = 'Maintenance Database'
        ImageIndex = 7
        OnClick = mnuMaintenanceDatabaseClick
      end
      object SP1: TMenuItem
        Caption = '-'
      end
      object mnuExportImportData: TMenuItem
        Caption = 'Export Import Data'
        OnClick = mnuExportImportDataClick
      end
      object SP2: TMenuItem
        Caption = '-'
      end
      object mnuLogOff: TMenuItem
        Caption = 'Log Off'
        ImageIndex = 2
        OnClick = mnuLogOffClick
      end
      object mnuExit: TMenuItem
        Caption = 'Exit'
        ImageIndex = 3
        OnClick = mnuExitClick
      end
    end
    object mnuOptions: TMenuItem
      Caption = 'Options'
      object mnuSettingLocal: TMenuItem
        Caption = 'Setting'
        OnClick = mnuSettingLocalClick
      end
      object mnuSettingGlobal: TMenuItem
        Caption = 'Setting Global'
      end
      object mnuResetSemuaForm: TMenuItem
        Caption = 'Reset Semua Form'
        ImageIndex = 1
        OnClick = mnuResetSemuaFormClick
      end
      object SP3: TMenuItem
        Caption = '-'
      end
      object mnuSecurity: TMenuItem
        Caption = 'Security'
        OnClick = mnuSecurityClick
      end
      object mnuUbahPassword: TMenuItem
        Caption = 'Ubah Password'
        ImageIndex = 5
        OnClick = mnuUbahPasswordClick
      end
    end
    object mnuMaster: TMenuItem
      Caption = 'Master'
      object mnuGeneral: TMenuItem
        Caption = 'General'
        object mnuPerusahaan: TMenuItem
          Caption = 'Perusahaan'
          OnClick = mnuPerusahaanClick
        end
        object mnuDepartment: TMenuItem
          Caption = 'Departmen'
          OnClick = mnuDepartmentClick
        end
        object mnuJabatan: TMenuItem
          Caption = 'Jabatan'
          OnClick = mnuJabatanClick
        end
        object mnuPegawai: TMenuItem
          Caption = 'Pegawai'
          OnClick = mnuPegawaiClick
        end
        object SP5: TMenuItem
          Caption = '-'
        end
        object mnuNegara: TMenuItem
          Caption = 'Negara'
          OnClick = mnuNegaraClick
        end
        object mnuPropinsi: TMenuItem
          Caption = 'Propinsi'
          OnClick = mnuPropinsiClick
        end
        object mnuKota: TMenuItem
          Caption = 'Kota'
          OnClick = mnuKotaClick
        end
      end
    end
    object mnuDisplay: TMenuItem
      Caption = 'Display'
    end
    object mnuReport: TMenuItem
      Caption = 'Report'
      object mnuReportCategory: TMenuItem
        Caption = 'Kategori Report'
        OnClick = mnuReportCategoryClick
      end
      object mnuReportDesigner: TMenuItem
        Caption = 'Report Designer'
        OnClick = mnuReportDesignerClick
      end
      object SP6: TMenuItem
        Caption = '-'
      end
      object mnuExportReport: TMenuItem
        Caption = 'Export Report'
        OnClick = mnuExportReportClick
      end
      object mnuImportReport: TMenuItem
        Caption = 'Import Report'
        OnClick = mnuImportReportClick
      end
      object SP7: TMenuItem
        Caption = '-'
      end
    end
    object mnuHelp: TMenuItem
      Caption = 'Help'
      object mnuAbout: TMenuItem
        Caption = 'About'
        OnClick = mnuAboutClick
      end
    end
  end
end
