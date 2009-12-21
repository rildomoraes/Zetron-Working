object fmGetValidation: TfmGetValidation
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Validasi'
  ClientHeight = 373
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object lblTitle: TLabel
    Left = 0
    Top = 0
    Width = 494
    Height = 32
    Align = alTop
    Alignment = taCenter
    Caption = 'lblTitle'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 89
  end
  object gbSupervisorValidation: TcxGroupBox
    Left = 0
    Top = 176
    Align = alBottom
    Caption = ' Supervisor '
    ParentColor = False
    TabOrder = 0
    Transparent = True
    Height = 197
    Width = 494
    object Label1: TLabel
      Left = 49
      Top = 28
      Width = 35
      Height = 21
      Caption = 'User'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblPassword: TLabel
      Left = 49
      Top = 54
      Width = 74
      Height = 21
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnCancel: TcxButton
      Left = 268
      Top = 90
      Width = 85
      Height = 95
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 3
    end
    object btnOk: TcxButton
      Left = 133
      Top = 90
      Width = 85
      Height = 95
      Action = actOk
      Layout = blGlyphTop
      TabOrder = 2
    end
    object edtPassword: TcxTextEdit
      Left = 142
      Top = 51
      BeepOnEnter = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 10
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 199
    end
    object edtUsername: TcxTextEdit
      Left = 142
      Top = 25
      BeepOnEnter = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 199
    end
  end
  object memInfo: TcxMemo
    Left = 0
    Top = 32
    TabStop = False
    Align = alClient
    Enabled = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.Color = clWhite
    StyleDisabled.TextColor = clWindowText
    TabOrder = 1
    Height = 144
    Width = 494
  end
  object MediaPlayer1: TMediaPlayer
    Left = 168
    Top = 104
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 2
    OnNotify = MediaPlayer1Notify
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 168
    Top = 40
    object actOk: TAction
      Caption = 'Ok'
      Hint = '3'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
  object qryEmployee: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.EmployeeId, a.UserName, a.EmployeeName'
      'from Employee a'
      'inner join JobPosition b on a.PositionId = b.PositionId'
      'where a.UserName = :IdUserName'
      'and IsVarcharNull(a.Password, '#39#39') like :Password'
      'and a.FlagInactive = '#39'0'#39
      'and a.FlagInactiveUser = '#39'0'#39)
    Left = 168
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdUserName'
      end
      item
        DataType = ftUnknown
        Name = 'Password'
      end>
  end
  object qryValidateMinLevel: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Employee'
      'where EmployeeId = :EmployeeId'
      'and LevelValidation  >= :LevelValidation')
    Left = 200
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EmployeeId'
      end
      item
        DataType = ftUnknown
        Name = 'LevelValidation'
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 200
    Top = 40
  end
end
