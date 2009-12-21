object fmGetFPValidation: TfmGetFPValidation
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Validasi Finger Print'
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
    Height = 216
    Width = 494
  end
  object MediaPlayer1: TMediaPlayer
    Left = 168
    Top = 104
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 0
    OnNotify = MediaPlayer1Notify
  end
  object gbSupervisorValidation: TcxGroupBox
    Left = 0
    Top = 248
    Align = alBottom
    Caption = ' Sidik Jari Supervisor '
    ParentColor = False
    TabOrder = 2
    Transparent = True
    Height = 125
    Width = 494
    object lblFPInfo: TLabel
      Left = 80
      Top = 32
      Width = 253
      Height = 42
      Caption = 'Silahkan meletakan jari anda pada finger print scanner.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object btnCancel: TcxButton
      Left = 396
      Top = 18
      Width = 85
      Height = 95
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 0
    end
    object DPFPVerificationControl1: TDPFPVerificationControl
      Left = 16
      Top = 32
      Width = 48
      Height = 47
      TabOrder = 1
      OnComplete = DPFPVerificationControl1Complete
      ControlData = {
        00080000F6040000DC04000008004E0000007B00300030003000300030003000
        300030002D0030003000300030002D0030003000300030002D00300030003000
        30002D003000300030003000300030003000300030003000300030007D000000}
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 168
    Top = 40
    object actCancel: TAction
      Caption = 'Cancel'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 200
    Top = 40
  end
  object DPFPVerification1: TDPFPVerification
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 16
    Top = 336
  end
  object DPFPVerificationResult1: TDPFPVerificationResult
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 48
    Top = 336
  end
  object qryFingerPrint: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*, b.UserName, b.EmployeeName, '
      '  c.PositionName, d.DepartmentName, e.CompanyName,'
      '  c.PositionId, d.DepartmentId, e.CompanyId'
      'from FingerPrint a'
      'inner join Employee b on b.EmployeeId = a.EmployeeId'
      'inner join JobPosition c on c.PositionId = b.PositionId'
      'inner join Department d on d.DepartmentId = c.DepartmentId'
      'inner join Company e on e.CompanyId = d.CompanyId'
      'and b.FlagInactive = '#39'0'#39
      'and b.FlagInactiveUser = '#39'0'#39
      'and b.LevelValidation  >= :LevelValidation')
    Left = 168
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LevelValidation'
      end>
  end
end
