object fmSupervisorValidation: TfmSupervisorValidation
  Left = 500
  Top = 500
  BorderStyle = bsNone
  Caption = 'Supervisor'
  ClientHeight = 275
  ClientWidth = 840
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDetail: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 275
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 5
    Color = 14540287
    TabOrder = 0
    object lblInvalidCode: TLabel
      Left = 359
      Top = 79
      Width = 74
      Height = 13
      Caption = 'Kode Salah !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lSupervisor: TLabel
      Left = 127
      Top = 141
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lKeterangan: TLabel
      Left = 6
      Top = 6
      Width = 828
      Height = 62
      Align = alTop
      Caption = 'Hapus Item !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -53
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 350
    end
    object lStatus: TLabel
      Left = 127
      Top = 167
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 24
      Top = 139
      Width = 97
      Height = 121
      BevelOuter = bvLowered
      BevelWidth = 2
      TabOrder = 0
      object Image1: TImage
        Left = 2
        Top = 2
        Width = 93
        Height = 117
        Align = alClient
        ExplicitLeft = 4
      end
    end
  end
  object qrySupervisorValidate: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'EmployeeId'
        Size = -1
        Value = Null
      end
      item
        Name = 'PositionId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from Employee'
      'where EmployeeId = :EmployeeId'
      'and PositionId = :PositionId')
    Left = 112
    Top = 48
  end
  object Timer1: TTimer
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 176
    Top = 72
  end
  object Timer2: TTimer
    Interval = 200
    OnTimer = Timer2Timer
    Left = 296
    Top = 88
  end
  object clsFPDatabase1: TclsFPDatabase
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 48
    Top = 80
  end
  object clsFPVerification1: TclsFPVerification
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnFPVerificationImage = clsFPVerification1FPVerificationImage
    OnFPVerificationStatus = clsFPVerification1FPVerificationStatus
    OnFPVerificationID = clsFPVerification1FPVerificationID
    Left = 16
    Top = 80
  end
end
