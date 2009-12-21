object frmPegawai: TfrmPegawai
  Left = 0
  Top = 0
  Caption = 'Pegawai'
  ClientHeight = 422
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline feSetupButton1: TfeSetupButton
    Left = 0
    Top = 0
    Width = 678
    Height = 63
    Align = alTop
    Constraints.MinWidth = 633
    TabOrder = 0
    TabStop = True
    inherited shpToolbarBackground: TShape
      Width = 678
    end
    inherited btnReset: TcxButton
      Left = 651
    end
  end
  object qryPegawai: TADOQuery
    Parameters = <>
    Left = 328
    Top = 208
  end
end
