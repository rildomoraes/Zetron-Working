object fmLogin: TfmLogin
  Left = 355
  Top = 278
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 113
  ClientWidth = 266
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Caption = ' Information '
    ParentColor = False
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    Transparent = True
    Visible = False
    Height = 81
    Width = 266
    object lblDatabase: TLabel
      Left = 13
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Data Storage'
      Transparent = True
    end
    object Label1: TLabel
      Left = 13
      Top = 48
      Width = 73
      Height = 13
      Caption = 'Picture Storage'
      Transparent = True
    end
    object edtDatabase: TcxTextEdit
      Left = 93
      Top = 24
      BeepOnEnter = False
      Properties.MaxLength = 20
      TabOrder = 0
      Width = 156
    end
    object edtDatabasePic: TcxTextEdit
      Left = 93
      Top = 48
      BeepOnEnter = False
      Properties.ReadOnly = False
      TabOrder = 1
      Width = 156
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Caption = ' Login '
    ParentColor = False
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 1
    Transparent = True
    Height = 113
    Width = 266
    object lblUsername: TLabel
      Left = 13
      Top = 24
      Width = 22
      Height = 13
      Caption = 'User'
      Transparent = True
    end
    object lblPassword: TLabel
      Left = 13
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Password'
      Transparent = True
    end
    object edtUsername: TcxTextEdit
      Left = 94
      Top = 24
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      TabOrder = 0
      Width = 156
    end
    object edtPassword: TcxTextEdit
      Left = 94
      Top = 48
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 10
      TabOrder = 1
      Width = 156
    end
    object btnOk: TcxButton
      Left = 59
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 2
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
      Left = 139
      Top = 77
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = btnCancelClick
    end
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
    Left = 152
  end
  object qryEmployee: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    Left = 120
  end
end
