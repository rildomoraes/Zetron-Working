inherited fmClosingYear: TfmClosingYear
  Caption = 'Tutup Tahun'
  ClientHeight = 154
  ClientWidth = 241
  ExplicitWidth = 249
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  object lblProcess: TLabel [0]
    Left = 152
    Top = 72
    Width = 79
    Height = 13
    Caption = 'Processing ...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblYear: TLabel [1]
    Left = 8
    Top = 72
    Width = 35
    Height = 13
    Caption = 'Tahun'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblInfo: TLabel [2]
    Left = 8
    Top = 104
    Width = 225
    Height = 39
    AutoSize = False
    Caption = 
      '* Proses ini akan memindah saldo akhir tahun yang dipilih ke sal' +
      'do awal tahun berikutnya.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  inherited pnlMenu: TPanel
    Width = 241
    ExplicitWidth = 241
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
  object cbYear: TcxComboBox [4]
    Left = 48
    Top = 72
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 99
  end
  inherited ActionList1: TActionList
    object actSave: TAction
      Caption = 'Save'
      Hint = 'Save'
      ImageIndex = 8
      OnExecute = actSaveExecute
    end
  end
  object qryClosingYear: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * from spClosingYear(cast(:Year as varchar))')
    Left = 168
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end>
  end
end
