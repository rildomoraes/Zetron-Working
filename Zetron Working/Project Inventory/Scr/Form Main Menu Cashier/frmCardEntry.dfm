object fmCardEntry: TfmCardEntry
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Kartu'
  ClientHeight = 287
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object lblCardType: TLabel
    Left = 8
    Top = 11
    Width = 142
    Height = 23
    Caption = 'Tipe Pembayaran'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblCardNo: TLabel
    Left = 8
    Top = 42
    Width = 113
    Height = 23
    Caption = 'Nomor Kartu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblCardHolder: TLabel
    Left = 8
    Top = 73
    Width = 139
    Height = 23
    Caption = 'Nama Pemegang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblDebitAmount: TLabel
    Left = 8
    Top = 128
    Width = 111
    Height = 23
    Caption = 'Jumlah Debit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object btnOk: TcxButton
    Left = 112
    Top = 182
    Width = 85
    Height = 85
    Action = actOk
    Layout = blGlyphTop
    TabOrder = 4
  end
  object btnCancel: TcxButton
    Left = 235
    Top = 182
    Width = 85
    Height = 85
    Action = actCancel
    Layout = blGlyphTop
    TabOrder = 5
  end
  object edtCardHolder: TcxTextEdit
    Left = 155
    Top = 70
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 265
  end
  object edtCardNumber: TcxCurrencyEdit
    Left = 155
    Top = 39
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '0;(0)'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 265
  end
  object edtDebitAmount: TcxCurrencyEdit
    Left = 155
    Top = 125
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -29
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 265
  end
  object lcbPaymentType: TcxExtLookupComboBox
    Left = 155
    Top = 8
    ParentFont = False
    Properties.View = dmRegister.cgvPrevPaymentType
    Properties.KeyFieldNames = 'paymenttypeid'
    Properties.ListFieldItem = dmRegister.cgvPrevPaymentPaymentTypeName
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = []
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 198
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 8
    Top = 161
    object actOk: TAction
      Caption = 'Ok'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
end
