inherited fmCurrency: TfmCurrency
  Caption = 'Mata Uang'
  ClientHeight = 185
  ClientWidth = 346
  ExplicitWidth = 354
  ExplicitHeight = 214
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 8
    Top = 59
    Width = 47
    Height = 13
    Caption = 'Kurs US'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel [1]
    Left = 8
    Top = 82
    Width = 52
    Height = 13
    Caption = 'Kurs Yen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited pnlMenu: TPanel
    Width = 346
    ExplicitWidth = 346
    inherited bvlSpacer1: TBevel
      Left = 97
      ExplicitLeft = 97
    end
    object cxButton1: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object edtRateUS: TcxCalcEdit [3]
    Left = 72
    Top = 56
    BeepOnEnter = False
    EditValue = 0.000000000000000000
    TabOrder = 1
    Width = 121
  end
  object edtRateYen: TcxCalcEdit [4]
    Left = 72
    Top = 79
    BeepOnEnter = False
    EditValue = 0.000000000000000000
    TabOrder = 2
    Width = 121
  end
  inherited ActionList1: TActionList
    object actPost: TAction
      Caption = 'Simpan'
      ImageIndex = 8
      OnExecute = actPostExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      ImageIndex = 9
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 1
      OnExecute = actRefreshExecute
    end
  end
  object qrySetup: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ProgramId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Setup'
      'where ProgramId = :ProgramId')
    Left = 168
    Top = 112
  end
end
