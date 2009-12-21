inherited fmClosingYear: TfmClosingYear
  Caption = 'Proses Tutup Tahun'
  ClientHeight = 146
  ClientWidth = 242
  ExplicitWidth = 250
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 13
  object lblYear: TLabel [0]
    Left = 8
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Tahun'
    Transparent = True
  end
  object lblProcess: TLabel [1]
    Left = 152
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Proses ...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblInfo: TLabel [2]
    Left = 8
    Top = 88
    Width = 225
    Height = 39
    AutoSize = False
    Caption = 
      '* Proses ini akan memindahkan saldo akhir tahun diatas ke saldo ' +
      'awal tahun berikutnya.'
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
    Width = 242
    object cxButton1: TcxButton
      Left = 59
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actProcess
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
      ExplicitLeft = 113
      ExplicitTop = 2
    end
  end
  object cbYear: TcxComboBox [4]
    Left = 48
    Top = 56
    TabOrder = 1
    Width = 97
  end
  inherited ActionList1: TActionList
    object actProcess: TAction
      Caption = 'Proses'
      ImageIndex = 8
      OnExecute = actProcessExecute
    end
  end
  object spProcessClosingYear: TADOStoredProc
    Connection = dmGlobal.conGlobal
    ProcedureName = 'spProcessClosingYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Year'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 8
  end
end
