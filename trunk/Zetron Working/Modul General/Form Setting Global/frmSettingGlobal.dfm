inherited fmSettingGlobal: TfmSettingGlobal
  Caption = 'Setting Global'
  ClientHeight = 566
  ClientWidth = 742
  ExplicitWidth = 750
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object Label29: TLabel [0]
    Left = 9
    Top = 129
    Width = 56
    Height = 13
    Caption = 'Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label30: TLabel [1]
    Left = 26
    Top = 148
    Width = 78
    Height = 13
    Caption = 'Order Penjualan'
    Transparent = True
  end
  object Label31: TLabel [2]
    Left = 26
    Top = 167
    Width = 99
    Height = 13
    Caption = 'Nota Nota Penjualan'
    Transparent = True
  end
  object Label32: TLabel [3]
    Left = 26
    Top = 186
    Width = 110
    Height = 13
    Caption = 'Pembayaran Penjualan'
    Transparent = True
  end
  object Label33: TLabel [4]
    Left = 26
    Top = 205
    Width = 77
    Height = 13
    Caption = 'Retur Penjualan'
    Transparent = True
  end
  inherited pnlMenu: TPanel
    Width = 742
    ExplicitWidth = 742
    inherited bvlSpacer1: TBevel
      Left = 97
      ExplicitLeft = 91
      ExplicitTop = -4
    end
    object btnRefresh: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object btnPost: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object btnCancel: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  object cxPageControl1: TcxPageControl [6]
    Left = 0
    Top = 50
    Width = 742
    Height = 516
    ActivePage = tsGeneral
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    ClientRectBottom = 487
    ClientRectLeft = 3
    ClientRectRight = 736
    ClientRectTop = 3
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      object Label41: TLabel
        Left = 9
        Top = 30
        Width = 99
        Height = 13
        Caption = 'Format display berat'
        Transparent = True
      end
      object Label42: TLabel
        Left = 9
        Top = 48
        Width = 110
        Height = 13
        Caption = 'Format display T / L / P'
        Transparent = True
      end
      object Label1: TLabel
        Left = 9
        Top = 103
        Width = 113
        Height = 13
        Caption = 'Format display quantity'
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 121
        Width = 106
        Height = 13
        Caption = 'Format display persen'
        Transparent = True
      end
      object Label5: TLabel
        Left = 9
        Top = 139
        Width = 97
        Height = 13
        Caption = 'Format display uang'
        Transparent = True
      end
      object Label6: TLabel
        Left = 9
        Top = 66
        Width = 92
        Height = 13
        Caption = 'Format display luas'
        Transparent = True
      end
      object Label7: TLabel
        Left = 9
        Top = 84
        Width = 107
        Height = 13
        Caption = 'Format display volume'
        Transparent = True
      end
      object chkAutoEdit: TcxCheckBox
        Left = 3
        Top = 4
        Caption = 
          'Auto edit untuk entry data (data dapat langsung diubah tanpa men' +
          'ekan tombol ubah)'
        ParentColor = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        State = cbsGrayed
        TabOrder = 0
        Transparent = True
        Width = 440
      end
      object edtFormatDisplayBerat: TcxTextEdit
        Left = 135
        Top = 28
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtFormatDisplayPLT: TcxTextEdit
        Left = 135
        Top = 46
        BeepOnEnter = False
        TabOrder = 2
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtFormatDisplayQty: TcxTextEdit
        Left = 135
        Top = 100
        BeepOnEnter = False
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtFormatDisplayPersen: TcxTextEdit
        Left = 135
        Top = 118
        BeepOnEnter = False
        TabOrder = 6
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtFormatDisplayCurrency: TcxTextEdit
        Left = 135
        Top = 136
        BeepOnEnter = False
        TabOrder = 7
        Text = '0,.00;-0,.00'
        Width = 128
      end
      object edtFormatDisplayLuas: TcxTextEdit
        Left = 135
        Top = 64
        BeepOnEnter = False
        TabOrder = 3
        Text = '0,.0000;-0,.0000'
        Width = 128
      end
      object edtFormatDisplayVolume: TcxTextEdit
        Left = 135
        Top = 82
        BeepOnEnter = False
        TabOrder = 4
        Text = '0,.0000;-0,.0000'
        Width = 128
      end
      object edtDecimalPLT: TcxSpinEdit
        Left = 285
        Top = 46
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 9
        Value = 2
        Width = 73
      end
      object edtDecimalLuas: TcxSpinEdit
        Left = 285
        Top = 64
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 10
        Value = 2
        Width = 73
      end
      object edtDecimalVolume: TcxSpinEdit
        Left = 285
        Top = 82
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 11
        Value = 2
        Width = 73
      end
      object edtDecimalQty: TcxSpinEdit
        Left = 285
        Top = 100
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 12
        Value = 2
        Width = 73
      end
      object edtDecimalPercent: TcxSpinEdit
        Left = 285
        Top = 118
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 13
        Value = 2
        Width = 73
      end
      object edtDecimalCurrency: TcxSpinEdit
        Left = 285
        Top = 136
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 14
        Value = 2
        Width = 73
      end
      object edtDecimalBerat: TcxSpinEdit
        Left = 285
        Top = 28
        Properties.LargeIncrement = 2.000000000000000000
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Properties.SpinButtons.ShowFastButtons = True
        TabOrder = 8
        Value = 2
        Width = 73
      end
    end
  end
  inherited ActionList1: TActionList
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 1
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
    object actPost: TAction
      Caption = 'Simpan'
      Hint = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      Hint = 'Batal'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
end
