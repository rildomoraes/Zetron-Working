object fmProsesLockHari: TfmProsesLockHari
  Left = 0
  Top = 0
  Caption = 'Proses Closing Shift'
  ClientHeight = 127
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 81
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Tanggal'
    ParentColor = False
  end
  object DtTgl: TcxDateEdit
    Left = 81
    Top = 8
    TabOrder = 0
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 60
    Caption = 'Shift'
    ParentColor = False
  end
  object lcbShift: TcxExtLookupComboBox
    Left = 81
    Top = 59
    Properties.View = dmgeneral.cgvPrevGroupShiftDt1
    Properties.KeyFieldNames = 'shift'
    Properties.ListFieldItem = dmgeneral.cgvPrevGroupShiftDt1shift
    TabOrder = 2
    Width = 120
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 34
    Caption = 'Group Shift'
    ParentColor = False
  end
  object lcbGroupShift: TcxExtLookupComboBox
    Left = 81
    Top = 33
    Properties.View = dmgeneral.cgvPrevGroupShift
    Properties.KeyFieldNames = 'kodegroupshiftid'
    Properties.ListFieldItem = dmgeneral.cgvPrevGroupShiftnamagroupshift
    TabOrder = 1
    Width = 120
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <
      item
      end>
    Filename = 'Setting Proses Bulan.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 168
    Top = 88
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Proses Bulan.cfg'
    Sorting = True
    Version = '1.3'
    Left = 192
    Top = 88
  end
  object qryProses: TZQuery
    Connection = dmGlobal.zconGlobal
    SQL.Strings = (
      
        'select spprosesabsentglmanual(cast(:tgl as datewithouttime),:kod' +
        'egroupshift,:shift)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
end
