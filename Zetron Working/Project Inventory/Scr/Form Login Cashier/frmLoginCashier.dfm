object fmLogin: TfmLogin
  Left = 355
  Top = 278
  BorderStyle = bsSingle
  Caption = 'Login Cashier'
  ClientHeight = 307
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 13
    Top = 92
    Width = 86
    Height = 21
    Caption = 'Saldo Awal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 13
    Top = 129
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
  object Label3: TLabel
    Left = 13
    Top = 40
    Width = 46
    Height = 21
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblPassword: TLabel
    Left = 13
    Top = 156
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
  object lblRegisterCode: TLabel
    Left = 13
    Top = 14
    Width = 61
    Height = 21
    Caption = 'Register'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblShift: TLabel
    Left = 13
    Top = 66
    Width = 35
    Height = 21
    Caption = 'Shift'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblFPInfo: TLabel
    Left = 332
    Top = 124
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
  object btnCancel: TcxButton
    Left = 229
    Top = 200
    Width = 85
    Height = 95
    Action = actCancel
    Cancel = True
    Layout = blGlyphTop
    TabOrder = 8
  end
  object btnOk: TcxButton
    Left = 101
    Top = 200
    Width = 85
    Height = 95
    Action = actOk
    Layout = blGlyphTop
    TabOrder = 7
  end
  object btnRefresh: TcxButton
    Left = 323
    Top = 11
    Width = 85
    Height = 95
    Action = actRefresh
    Cancel = True
    Layout = blGlyphTop
    TabOrder = 1
    TabStop = False
    WordWrap = True
  end
  object cbFlagUse: TcxImageComboBox
    Left = 107
    Top = 37
    TabStop = False
    ParentFont = False
    Properties.Images = dmGlobal.imgIcon16
    Properties.Items = <
      item
        Description = 'Ready'
        ImageIndex = 13
        Value = '0'
      end
      item
        Description = 'Online'
        ImageIndex = 12
        Value = '1'
      end>
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 199
  end
  object edtOpeningBalance: TcxCalcEdit
    Left = 107
    Top = 89
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.DisplayFormat = ',0.00;(,0.00)'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 199
  end
  object edtPassword: TcxTextEdit
    Left = 107
    Top = 153
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
    TabOrder = 6
    Width = 199
  end
  object edtRegisterCode: TcxLookupComboBox
    Left = 107
    Top = 11
    ParentFont = False
    Properties.KeyFieldNames = 'cashregisterid'
    Properties.ListColumns = <
      item
        FieldName = 'cashregistername'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsPrevCashRegister
    Properties.OnEditValueChanged = edtRegisterCodePropertiesEditValueChanged
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 199
  end
  object edtUsername: TcxTextEdit
    Left = 107
    Top = 127
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
    TabOrder = 5
    Width = 199
  end
  object edtShift: TcxExtLookupComboBox
    Left = 107
    Top = 63
    ParentFont = False
    Properties.View = dmRegister.cgvPrevShift
    Properties.KeyFieldNames = 'shiftcode'
    Properties.ListFieldItem = dmRegister.cgvPrevShiftshiftname
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 199
  end
  object qryEmployee: TUniQuery
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
    Left = 168
    Top = 82
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
  object qryPrevCashRegister: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from CashRegister'
      'order by CashRegisterName')
    Left = 200
    Top = 18
  end
  object dsPrevCashRegister: TDataSource
    DataSet = qryPrevCashRegister
    Left = 232
    Top = 18
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 168
    Top = 18
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
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 2
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
  end
  object qryGetCashRegister: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, b.*, c.UserName'
      'from CashRegister a'
      
        'left join CashRegisterTransaction b on a.CashRegisterId = b.Cash' +
        'RegisterId '
      
        '  and a.LastCashRegisterTransaction = b.CashRegisterTransactionI' +
        'd'
      'left join Employee c on b.EmployeeId = c.EmployeeId'
      'where a.CashRegisterId = :CashRegisterId')
    Left = 168
    Top = 50
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashRegisterId'
      end>
  end
  object qryGetLastCashRegisterTransactionId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      
        'select max(CashRegisterTransactionId) as CashRegisterTransaction' +
        'Id'
      'from CashRegisterTransaction'
      'where CashRegisterTransactionId like :CashRegisterTransactionId')
    Left = 200
    Top = 82
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashRegisterTransactionId'
      end>
  end
  object qryInsCashRegisterTransaction: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from CashRegisterTransaction '
      'where CashRegisterTransactionId = '#39'XXX'#39)
    Left = 232
    Top = 82
  end
  object DPFPVerification1: TDPFPVerification
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 336
    Top = 200
  end
  object DPFPVerificationResult1: TDPFPVerificationResult
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 368
    Top = 200
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
      'and b.FlagInactiveUser = '#39'0'#39)
    Left = 168
    Top = 112
  end
end
