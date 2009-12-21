inherited fmMainMenu: TfmMainMenu
  Left = 0
  Top = 50
  Caption = 'fmMainMenu'
  ClientHeight = 651
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbMainMenu: TStatusBar
    Top = 632
    ExplicitTop = 632
  end
  inherited MainMenu1: TMainMenu
    inherited mnuOptions: TMenuItem [1]
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
    end
    inherited mnuMaster: TMenuItem [2]
      inherited mnuInventory: TMenuItem
        inherited mnuItem: TMenuItem
          OnClick = mnuItemClick
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object mnuTabelLog: TMenuItem
          Caption = 'Tabel Log'
          OnClick = mnuTabelLogClick
        end
      end
    end
    inherited mnuPembelian: TMenuItem
      inherited mnuOrderPembelian: TMenuItem
        object mnuPOItemEntry: TMenuItem
          Caption = 'PO Bahan Penolong - Entry'
          OnClick = mnuPOItemEntryClick
        end
        object mnuPOItemApprove: TMenuItem
          Caption = 'PO Bahan Penolong - Approve'
          OnClick = mnuPOItemApproveClick
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object mnuPOSawnTimberApprove: TMenuItem
          Caption = 'PO Sawn Timber'
          OnClick = mnuPOSawnTimberApproveClick
        end
        object mnuPOLogApprove: TMenuItem
          Caption = 'PO Log'
          OnClick = mnuPOLogApproveClick
        end
      end
      object mnuHasilGrade: TMenuItem [3]
        Caption = 'Hasil Grade'
        object mnuTallySheetGrade: TMenuItem
          Caption = 'Tally Sheet Grade'
          OnClick = mnuTallySheetGradeClick
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object mnuHasilGradeSawnTimber: TMenuItem
          Caption = 'Hasil Grade Sawn Timber'
          OnClick = mnuHasilGradeSawnTimberClick
        end
        object mnuHasilGradeLog: TMenuItem
          Caption = 'Hasil Grade Log'
          OnClick = mnuHasilGradeLogClick
        end
      end
      object mnuMuatHasilGrade: TMenuItem [4]
        Caption = 'Muat Hasil Grade'
        object mnuMuatSawnTimber: TMenuItem
          Caption = 'Muat Sawn Timber / Square'
          OnClick = mnuMuatSawnTimberClick
        end
        object mnuMuatLog: TMenuItem
          Caption = 'Muat Log'
          OnClick = mnuMuatLogClick
        end
      end
      inherited mnuLPB: TMenuItem
        object mnuLPBBarang: TMenuItem
          Caption = 'LPB Barang'
          OnClick = mnuLPBBarangClick
        end
        object mnuLPBSawnTimber: TMenuItem
          Caption = 'LPB Sawn Timber'
          OnClick = mnuLPBSawnTimberClick
        end
        object mnuLPBLog: TMenuItem
          Caption = 'LPB Log'
          OnClick = mnuLPBLogClick
        end
      end
      object mnuPeriodePembelian: TMenuItem
        Caption = 'Periode Pembelian'
        OnClick = mnuPeriodePembelianClick
      end
    end
    inherited mnuProduksi: TMenuItem
      inherited mnuSPK: TMenuItem
        OnClick = mnuSPKClick
      end
      inherited mnuBPPB: TMenuItem
        object mnuBPPBSawnTimber: TMenuItem
          Caption = 'BPPB Sawn Timber'
          OnClick = mnuBPPBSawnTimberClick
        end
        object mnuBPPBLog: TMenuItem
          Caption = 'BPPB Log'
          OnClick = mnuBPPBLogClick
        end
      end
    end
    inherited mnuTransaksi: TMenuItem
      inherited mnuTransaksiLainLain: TMenuItem
        object mnuTransaksiBarang: TMenuItem
          Caption = 'Transaksi Barang'
          OnClick = mnuTransaksiBarangClick
        end
        object mnuTransaksiSawnTimber: TMenuItem
          Caption = 'Transaksi Sawn Timber'
        end
        object mnuTransaksiLog: TMenuItem
          Caption = 'Transaksi Log'
        end
      end
    end
  end
end
