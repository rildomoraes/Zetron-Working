inherited fmClosingDate: TfmClosingDate
  Caption = 'Proses Closing'
  ClientHeight = 112
  ClientWidth = 274
  ExplicitWidth = 282
  ExplicitHeight = 141
  PixelsPerInch = 96
  TextHeight = 13
  object lblCurrentClosingDate: TLabel [0]
    Left = 8
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Tangal closing '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  inherited pnlMenu: TPanel
    Width = 274
    ExplicitWidth = 274
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
  object edtNewClosingDate: TcxDateEdit [2]
    Left = 97
    Top = 65
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 164
  end
  inherited ActionList1: TActionList
    Left = 104
    Top = 56
    object actSave: TAction
      Caption = 'Save'
      Hint = 'Save'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = actSaveExecute
    end
  end
  object spProcessClosingDate: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spProcessClosingDate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@ClosingDate'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 168
    Top = 56
  end
  object qryGetClosingDate: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <>
    SQL.Strings = (
      'select dbo.fnGetClosingDate()')
    Left = 136
    Top = 56
  end
end
