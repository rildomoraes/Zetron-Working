inherited fmMainMenu: TfmMainMenu
  Left = 0
  Top = 50
  Caption = 'fmMainMenu'
  ClientHeight = 651
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbMainMenu: TStatusBar
    Top = 632
    ExplicitTop = 632
  end
  inherited MainMenu1: TMainMenu
    inherited mnuOptions: TMenuItem
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
      object SettingCounter1: TMenuItem
        Caption = 'Setting Counter'
        OnClick = SettingCounter1Click
      end
      object LogDictionary1: TMenuItem
        Caption = 'Log Dictionary'
        OnClick = LogDictionary1Click
      end
    end
    inherited mnuMaster: TMenuItem
      inherited mnuGeneral: TMenuItem
        object Country21: TMenuItem
          Caption = 'Kota Jurusan'
          OnClick = Country21Click
        end
      end
      object mnuEkspedisi: TMenuItem
        Caption = 'Ekspedisi'
        object Satuan1: TMenuItem
          Caption = 'Satuan'
          OnClick = Satuan1Click
        end
        object mnuStorageLocation: TMenuItem
          Caption = 'Lokasi'
          OnClick = mnuStorageLocationClick
        end
        object mnuShipCrew: TMenuItem
          Caption = 'Krew Kapal'
          OnClick = mnuShipCrewClick
        end
        object mnuKapal: TMenuItem
          Caption = 'Kapal'
          OnClick = mnuKapalClick
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object mnuRoute: TMenuItem
          Caption = 'Rute'
          OnClick = mnuRouteClick
        end
        object TarifType1: TMenuItem
          Caption = 'Tipe Tarif'
          OnClick = TarifType1Click
        end
        object TarifItem1: TMenuItem
          Caption = 'Tarif per Barang'
          OnClick = TarifItem1Click
        end
        object KelompokCustomer1: TMenuItem
          Caption = 'Kelompok Customer'
          OnClick = KelompokCustomer1Click
        end
        object CustomerForwarding1: TMenuItem
          Caption = 'Customer'
          OnClick = CustomerForwarding1Click
        end
        object Merek1: TMenuItem
          Caption = 'Merek'
          OnClick = Merek1Click
        end
      end
    end
    object mnuTransaction: TMenuItem [3]
      Caption = 'Transaksi'
      object mnuShipDailyLog: TMenuItem
        Caption = 'Log Kapal Harian'
        OnClick = mnuShipDailyLogClick
      end
      object Penerimaan1: TMenuItem
        Caption = 'Penerimaan Surat Jalan'
        OnClick = Penerimaan1Click
      end
      object PackingTrans1: TMenuItem
        Caption = 'Transaksi Packing'
        OnClick = PackingTrans1Click
      end
      object rayek1: TMenuItem
        Caption = 'Daftar Muat Kapal'
        OnClick = rayek1Click
      end
      object Konosemen1: TMenuItem
        Caption = 'Konosemen'
        OnClick = Konosemen1Click
      end
      object KonosemenCustom1: TMenuItem
        Caption = 'Konosemen Custom'
        OnClick = KonosemenCustom1Click
      end
      object Mutasi1: TMenuItem
        Caption = 'Pindah Lokasi'
        OnClick = Mutasi1Click
      end
      object Bongkaran1: TMenuItem
        Caption = 'Bongkaran'
        OnClick = Bongkaran1Click
      end
      object BeritaAcara1: TMenuItem
        Caption = 'Berita Acara'
        OnClick = BeritaAcara1Click
      end
      object SuratJalan1: TMenuItem
        Caption = 'Surat Jalan'
        OnClick = SuratJalan1Click
      end
    end
    inherited mnuDisplay: TMenuItem
      object DisplaySuppliesReceive1: TMenuItem
        Caption = 'Display Supplies Receive'
        OnClick = DisplaySuppliesReceive1Click
      end
      object DisplayBeritaAcara1: TMenuItem
        Caption = 'Display Berita Acara'
        OnClick = DisplayBeritaAcara1Click
      end
      object DisplayStock1: TMenuItem
        Caption = 'Display Stock Lokasi'
        OnClick = DisplayStock1Click
      end
      object DisplayKonosemen1: TMenuItem
        Caption = 'Display Konosemen'
        OnClick = DisplayKonosemen1Click
      end
      object DisplayStock21: TMenuItem
        Caption = 'Display Stock 2'
        OnClick = DisplayStock21Click
      end
      object DisplayStock31: TMenuItem
        Caption = 'Display Stock 3'
        OnClick = DisplayStock31Click
      end
      object DisplaySearchPacking1: TMenuItem
        Caption = 'Display Search Packing'
      end
    end
  end
end
