object fmLogin: TfmLogin
  Left = 355
  Top = 278
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 123
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbLogin: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = ' Login '
    ParentBackground = False
    ParentColor = False
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    Height = 123
    Width = 294
    object lblPassword: TLabel
      Left = 13
      Top = 46
      Width = 46
      Height = 13
      Caption = 'Password'
      Transparent = True
    end
    object lblUsername: TLabel
      Left = 13
      Top = 22
      Width = 22
      Height = 13
      Caption = 'User'
      Transparent = True
    end
    object lblFPInfo: TLabel
      Left = 220
      Top = 17
      Width = 66
      Height = 13
      Caption = 'Finger Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtUsername: TcxTextEdit
      Left = 71
      Top = 19
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      TabOrder = 0
      Width = 142
    end
    object edtPassword: TcxTextEdit
      Left = 71
      Top = 43
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 10
      TabOrder = 1
      Width = 142
    end
    object btnOk: TcxButton
      Left = 49
      Top = 82
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 2
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
      Left = 138
      Top = 82
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = btnCancelClick
    end
  end
  object qryEmployeeUni: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.EmployeeId, a.UserName, a.EmployeeName, '
      '  b.PositionName, c.DepartmentName, d.CompanyName,'
      '  b.PositionId, c.DepartmentId, d.CompanyId'
      'from Employee a'
      'inner join JobPosition b on a.PositionId = b.PositionId'
      'inner join Department c on b.DepartmentId = c.DepartmentId'
      'inner join Company d on c.CompanyId = d.CompanyId'
      'where a.UserName = :IdUserName'
      'and IsVarcharNull(a.Password, '#39#39') like :Password'
      'and a.FlagInactive = '#39'0'#39
      'and a.FlagInactiveUser = '#39'0'#39)
    Left = 88
    Top = 16
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
  object qryFingerPrintUni: TUniQuery
    Connection = dmGlobal.conReadOnly
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
      'and b.FlagInactiveUser = '#39'0'#39)
    Left = 120
    Top = 16
  end
  object DPFPVerification1: TDPFPVerification
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 152
    Top = 16
  end
  object DPFPVerificationResult1: TDPFPVerificationResult
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 184
    Top = 16
  end
  object qryEmployee: TADOQuery
    Parameters = <>
    Left = 88
    Top = 48
  end
  object IvSQLStorage1: TIvSQLStorage
    Tag = 1
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    DatabaseEngine = dbPostgre
    Dataset = qryEmployee
    SQLMsSQL = 
      'select '#13#10'  a.EmployeeId, a.UserName, a.EmployeeName, '#13#10'  b.Posit' +
      'ionName, c.DepartmentName, d.CompanyName,'#13#10'  b.PositionId, c.Dep' +
      'artmentId, d.CompanyId'#13#10'from Employee a'#13#10'inner join JobPosition ' +
      'b on a.PositionId = b.PositionId'#13#10'inner join Department c on b.D' +
      'epartmentId = c.DepartmentId'#13#10'inner join Company d on c.CompanyI' +
      'd = d.CompanyId'#13#10'where a.UserName = :IdUserName'#13#10'and IsNull(a.Pa' +
      'ssword, '#39#39') like :Password'#13#10'and IsNull(a.FlagInactive, '#39'0'#39') = '#39'0' +
      #39#13#10'and IsNull(a.FlagInactiveUser, '#39'0'#39') = '#39'0'#39#13#10
    SQLPosgres = 
      'select '#13#10'  a.EmployeeId, a.UserName, a.EmployeeName, '#13#10'  b.Posit' +
      'ionName, c.DepartmentName, d.CompanyName,'#13#10'  b.PositionId, c.Dep' +
      'artmentId, d.CompanyId'#13#10'from Employee a'#13#10'inner join JobPosition ' +
      'b on a.PositionId = b.PositionId'#13#10'inner join Department c on b.D' +
      'epartmentId = c.DepartmentId'#13#10'inner join Company d on c.CompanyI' +
      'd = d.CompanyId'#13#10'where a.UserName = :IdUserName'#13#10'and IsVarcharNu' +
      'll(a.Password, '#39#39') like :Password'#13#10'and a.FlagInactive = '#39'0'#39#13#10'and' +
      ' a.FlagInactiveUser = '#39'0'#39#13#10
    SQLite = 
      'select '#13#10'  a.EmployeeId, a.UserName, a.EmployeeName, '#13#10'  b.Posit' +
      'ionName, c.DepartmentName, d.CompanyName,'#13#10'  b.PositionId, c.Dep' +
      'artmentId, d.CompanyId'#13#10'from Employee a'#13#10'inner join JobPosition ' +
      'b on a.PositionId = b.PositionId'#13#10'inner join Department c on b.D' +
      'epartmentId = c.DepartmentId'#13#10'inner join Company d on c.CompanyI' +
      'd = d.CompanyId'#13#10'where a.FlagInactive = '#39'0'#39#13#10'and a.FlagInactiveU' +
      'ser = '#39'0'#39#13#10'and a.UserName = :IdUserName'#13#10'and ifnull(a.Password, ' +
      #39#39') = :Password'#13#10
    Version = '2.0'
    Left = 120
    Top = 48
  end
  object qryFingerPrint: TADOQuery
    Parameters = <>
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
      'and b.FlagInactiveUser = '#39'0'#39)
    Left = 152
    Top = 48
  end
end
