inherited fmBackupDatabase: TfmBackupDatabase
  Caption = 'Backup Database'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSaparator1: TBevel [0]
      Left = 107
      Top = 1
      Width = 9
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 145
    end
    object btnBackup: TcxButton
      Left = 116
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actBackup
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object pnlInfo: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 86
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      592
      86)
    object lblDirectory: TLabel
      Left = 9
      Top = 9
      Width = 44
      Height = 13
      Caption = 'Directory'
      Transparent = True
    end
    object lblFilename: TLabel
      Left = 8
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Filename'
      Transparent = True
    end
    object lblDBUser: TLabel
      Left = 8
      Top = 45
      Width = 38
      Height = 13
      Caption = 'DB User'
      Transparent = True
    end
    object lblDBPassword: TLabel
      Left = 8
      Top = 63
      Width = 62
      Height = 13
      Caption = 'DB Password'
      Transparent = True
    end
    object edtDirectory: TcxShellComboBox
      Left = 88
      Top = 7
      Anchors = [akLeft, akTop, akRight]
      Properties.ShowFullPath = sfpAlways
      TabOrder = 0
      Width = 393
    end
    object edtFilename: TcxTextEdit
      Left = 88
      Top = 25
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 233
    end
    object edtDBUser: TcxTextEdit
      Left = 88
      Top = 43
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 145
    end
    object edtDBPassword: TcxTextEdit
      Left = 88
      Top = 61
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      TabOrder = 3
      Width = 145
    end
  end
  object memInfo: TcxMemo [2]
    Left = 0
    Top = 136
    Align = alClient
    Properties.ReadOnly = True
    Properties.ScrollBars = ssBoth
    TabOrder = 2
    Height = 231
    Width = 592
  end
  inherited ActionList1: TActionList
    object actBackup: TAction
      Caption = '&Backup'
      Hint = 'Backup (Alt+B)'
      ImageIndex = 8
      OnExecute = actBackupExecute
    end
  end
  object qryBackupDatabase: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'DatabaseName'
        Size = -1
        Value = Null
      end
      item
        Name = 'Path'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Backup Database :DatabaseName To Disk = :Path')
    Left = 168
    Top = 112
  end
end
