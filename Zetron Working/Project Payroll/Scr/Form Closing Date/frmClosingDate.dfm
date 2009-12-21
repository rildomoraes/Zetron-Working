inherited fmClosingDate: TfmClosingDate
  Caption = 'Tanggal Closing'
  ClientHeight = 112
  ClientWidth = 274
  ExplicitWidth = 282
  ExplicitHeight = 146
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
    Left = 96
    Top = 72
    ParentFont = False
    Properties.SaveTime = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 164
  end
  inherited ActionList1: TActionList
    object actSave: TAction
      Caption = 'Save'
      Hint = 'Save'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = actSaveExecute
    end
  end
  object qrySetup: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforePost = qrySetupBeforePost
    AfterPost = qrySetupAfterPost
    BeforeDelete = qrySetupBeforeDelete
    AfterDelete = qrySetupAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Setup'
      'where SetupId = '#39'GLB01'#39)
    Left = 200
    Top = 80
  end
end
