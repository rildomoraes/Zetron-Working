inherited fmMainMenu: TfmMainMenu
  Caption = 'fmMainMenu'
  ClientHeight = 591
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbMainMenu: TStatusBar
    Top = 572
    ExplicitTop = 572
  end
  inherited MainMenu1: TMainMenu
    inherited mnuMaster: TMenuItem
      inherited mnuInventory: TMenuItem
        inherited mnuItem: TMenuItem
          OnClick = mnuItemClick
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object mnuTableLog: TMenuItem
          Caption = 'Table Log'
          OnClick = mnuTableLogClick
        end
        object mnuRoughSize: TMenuItem
          Caption = 'Rough Size'
          OnClick = mnuRoughSizeClick
        end
      end
    end
    inherited mnuOptions: TMenuItem
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
    end
    inherited mnuPembelian: TMenuItem
      inherited mnuOrderPembelian: TMenuItem
        object mnuPOItemApprove: TMenuItem
          Caption = 'PO Bahan Penolong'
          Hint = 'PO'
          OnClick = mnuPOItemApproveClick
        end
        object mnuPOSawnTimberApprove: TMenuItem
          Caption = 'PO Sawn Timber'
          Hint = 'PO'
          OnClick = mnuPOSawnTimberApproveClick
        end
        object mnuPOLogApprove: TMenuItem
          Caption = 'PO Log'
          OnClick = mnuPOLogApproveClick
        end
      end
      object mnuHasilGrade: TMenuItem [3]
        Caption = 'Hasil Grade'
        object mnuHasilGradeSawnTimber: TMenuItem
          Caption = 'Hasil Grade Sawn Timber'
          OnClick = mnuHasilGradeSawnTimberClick
        end
        object mnuHasilGradeLog: TMenuItem
          Caption = 'Hasil Grade Log'
          OnClick = mnuHasilGradeLogClick
        end
      end
      inherited mnuLPB: TMenuItem
        object mnuLPBItem: TMenuItem
          Caption = 'Penerimaan Barang'
          OnClick = mnuLPBItemClick
        end
        object mnuLPBBalok: TMenuItem
          Caption = 'Penerimaan Sawn Timber'
          OnClick = mnuLPBBalokClick
        end
        object mnuLPBLog: TMenuItem
          Caption = 'Penerimaan Log'
          OnClick = mnuLPBLogClick
        end
      end
    end
    inherited mnuProduksi: TMenuItem
      inherited mnuSPK: TMenuItem
        OnClick = mnuSPKClick
      end
      inherited mnuBPPB: TMenuItem
        object mnuBPPBSawnTimber: TMenuItem
          Caption = 'Permintaan Penerimaan Bahan Sawn Timber'
          Hint = '(BPPB)'
          OnClick = mnuBPPBSawnTimberClick
        end
        object mnuBPPBLog: TMenuItem
          Caption = 'Permintaan Penerimaan Bahan Log'
          Hint = '(BPPB)'
          OnClick = mnuBPPBLogClick
        end
      end
      inherited mnuLHP: TMenuItem
        OnClick = mnuLHPClick
      end
    end
  end
end
