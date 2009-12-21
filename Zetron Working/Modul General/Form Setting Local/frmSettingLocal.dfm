inherited fmSettingLocal: TfmSettingLocal
  Caption = 'Setting'
  ClientHeight = 134
  ClientWidth = 249
  ExplicitWidth = 257
  ExplicitHeight = 168
  PixelsPerInch = 96
  TextHeight = 13
  object lblLanguage: TLabel [0]
    Left = 8
    Top = 65
    Width = 36
    Height = 13
    Caption = 'Bahasa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 83
    Width = 24
    Height = 13
    Caption = 'Skin '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 102
    Width = 34
    Height = 13
    Caption = 'Device'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited pnlMenu: TPanel
    Width = 249
    ExplicitWidth = 249
    inherited bvlSpacer1: TBevel
      Left = 97
      ExplicitLeft = 91
      ExplicitTop = 6
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
  object cbLanguage: TcxComboBox [4]
    Left = 60
    Top = 63
    BeepOnEnter = False
    Properties.Items.Strings = (
      'English'
      'Indonesian')
    TabOrder = 1
    Width = 121
  end
  object cbSkin: TcxComboBox [5]
    Left = 60
    Top = 81
    BeepOnEnter = False
    TabOrder = 2
    Width = 121
  end
  object chkFingerPrintDevice: TcxCheckBox [6]
    Left = 60
    Top = 102
    Caption = 'Finger Print'
    ParentColor = False
    Properties.ImmediatePost = True
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = '1'
    Properties.ValueUnchecked = '0'
    TabOrder = 4
    Transparent = True
    Width = 91
  end
  object chkUseSkins: TcxCheckBox [7]
    Left = 187
    Top = 83
    Caption = 'Active'
    ParentColor = False
    Properties.ImmediatePost = True
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = '1'
    Properties.ValueUnchecked = '0'
    TabOrder = 3
    Transparent = True
    Width = 53
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
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.jpg'
    Filter = 'jpg (*.jpg)|*.jpg|jpeg (*.jpeg)|*.jpeg'
    Left = 200
    Top = 80
  end
end
