inherited fmMainMenu: TfmMainMenu
  Caption = 'fmMainMenu'
  ClientHeight = 711
  ExplicitHeight = 765
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbMainMenu: TStatusBar
    Top = 692
    ExplicitTop = 692
  end
  inherited MainMenu1: TMainMenu
    inherited mnuMaster: TMenuItem
      inherited mnuInventory: TMenuItem
        inherited mnuItem: TMenuItem
          OnClick = mnuItemClick
        end
      end
      inherited mnuAkunting: TMenuItem
        object Jurnal1: TMenuItem
          Caption = 'Jurnal'
          OnClick = Jurnal1Click
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
        object mnuPOTax: TMenuItem
          Caption = 'Order Pembelian'
          OnClick = mnuPOTaxClick
        end
        object mnuPONonTax: TMenuItem
          Caption = 'Order Pembelian (Non Pajak)'
          Hint = 'PO'
          OnClick = mnuPONonTaxClick
        end
      end
      inherited mnuLPB: TMenuItem
        OnClick = mnuLPBClick
      end
    end
    inherited mnuProduksi: TMenuItem
      inherited mnuSPK: TMenuItem
        OnClick = mnuSPKClick
      end
      inherited mnuLHP: TMenuItem
        OnClick = mnuLHPClick
      end
    end
  end
end
