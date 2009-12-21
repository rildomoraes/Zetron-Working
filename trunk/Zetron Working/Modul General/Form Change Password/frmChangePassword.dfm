inherited fmChangePassword: TfmChangePassword
  Caption = 'Ubah Password'
  ClientHeight = 117
  ClientWidth = 321
  ExplicitWidth = 329
  ExplicitHeight = 151
  PixelsPerInch = 96
  TextHeight = 13
  object lblOldPassword: TLabel [0]
    Left = 8
    Top = 57
    Width = 65
    Height = 13
    Caption = 'Old Password'
    Transparent = True
  end
  object lblNewPassword: TLabel [1]
    Left = 8
    Top = 75
    Width = 70
    Height = 13
    Caption = 'New Password'
    Transparent = True
  end
  object lblConfirmNewPassword: TLabel [2]
    Left = 8
    Top = 93
    Width = 110
    Height = 13
    Caption = 'Confirm New Password'
    Transparent = True
  end
  inherited pnlMenu: TPanel
    Width = 321
    ExplicitWidth = 321
    object btnPost: TcxButton
      Left = 59
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actSave
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
  end
  object edtOldPassword: TcxTextEdit [4]
    Left = 132
    Top = 55
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 10
    TabOrder = 1
    Width = 177
  end
  object edtNewPassword: TcxTextEdit [5]
    Left = 132
    Top = 73
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 10
    TabOrder = 2
    Width = 177
  end
  object edtConfirmPassword: TcxTextEdit [6]
    Left = 132
    Top = 91
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 10
    TabOrder = 3
    Width = 177
  end
  inherited ActionList1: TActionList
    Top = 64
    object actSave: TAction
      Caption = 'Save'
      Hint = 'Save'
      ImageIndex = 8
      OnExecute = actSaveExecute
    end
  end
  object IvEncryption1: TIvEncryption
    About = 'Created by Ivan Handoyo'
    Version = '1.31'
    Left = 200
    Top = 64
  end
end
