inherited fmSettingGlobalInventory: TfmSettingGlobalInventory
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    object tsItem: TcxTabSheet
      Caption = 'Barang'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
      object chkItemNameUnique: TcxCheckBox
        Left = 25
        Top = 46
        Caption = 'Nama barang tidak boleh sama'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 296
      end
      object chkShowInactiveItem: TcxCheckBox
        Left = 25
        Top = 69
        Caption = 'Tampilkan barang non aktif'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 1
        Transparent = True
        Width = 297
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 176
  end
end
