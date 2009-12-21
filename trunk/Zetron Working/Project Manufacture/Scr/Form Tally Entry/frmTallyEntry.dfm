object fmTallyEntry: TfmTallyEntry
  Left = 0
  Top = 0
  Caption = 'fmTallyEntry'
  ClientHeight = 395
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 50
    Align = alTop
    TabOrder = 0
    object bvlSpacer1: TBevel
      Left = 97
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
    end
    object btnClose: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actClose
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
    object btnReset: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actReset
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object btnProcess: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actProcess
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 50
    Width = 553
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblTallySheetCode: TLabel
      Left = 7
      Top = 9
      Width = 38
      Height = 13
      Caption = 'No Tally'
      Transparent = True
    end
    object lblTallySheetDate: TLabel
      Left = 7
      Top = 27
      Width = 40
      Height = 13
      Caption = 'Tgl Tiket'
      Transparent = True
    end
    object lblItemId: TLabel
      Left = 231
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Barang'
      Transparent = True
    end
    object lblTallyman: TLabel
      Left = 231
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Tallyman'
      Transparent = True
    end
    object edtTallySheetCode: TcxTextEdit
      Left = 57
      Top = 6
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Text = 'EDTTALLYSHEETCODE'
      Width = 157
    end
    object edtTallySheetDate: TcxDateEdit
      Left = 57
      Top = 24
      BeepOnEnter = False
      Properties.Kind = ckDateTime
      TabOrder = 1
      Width = 157
    end
    object edtItemId: TcxExtLookupComboBox
      Left = 281
      Top = 6
      BeepOnEnter = False
      TabOrder = 2
      Width = 256
    end
    object edtTallyman: TcxExtLookupComboBox
      Left = 281
      Top = 24
      BeepOnEnter = False
      Properties.View = dmInventory.cgvPrevTallyman
      Properties.KeyFieldNames = 'TallymanId'
      Properties.ListFieldItem = dmInventory.cgvPrevTallymanTallymanName
      TabOrder = 3
      Width = 157
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon24
    Left = 168
    Top = 80
    object actClose: TAction
      Caption = '&Close'
      Hint = 'Close (Alt+C)'
      ImageIndex = 2
    end
    object actReset: TAction
      Caption = '&Reset'
      Hint = 'Reset (Alt+R)'
      ImageIndex = 4
    end
    object actProcess: TAction
      Caption = 'Process'
      ImageIndex = 0
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Tally Entry.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Tally Entry.cfg'
    Sorting = True
    Version = '1.3'
    Left = 232
    Top = 80
  end
end
