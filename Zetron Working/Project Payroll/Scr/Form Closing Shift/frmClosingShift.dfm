inherited fmClosingShift: TfmClosingShift
  Caption = 'Form Closing Shift'
  ClientHeight = 489
  ClientWidth = 685
  ExplicitWidth = 693
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 685
    ExplicitWidth = 685
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 685
    Height = 71
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 9
      Top = 6
      Caption = 'Tanggal'
      ParentColor = False
      Transparent = True
    end
    object DtTgl: TcxDateEdit
      Left = 81
      Top = 5
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = DtTglPropertiesEditValueChanged
      TabOrder = 0
      Width = 120
    end
    object lcbGroupShift: TcxExtLookupComboBox
      Left = 81
      Top = 23
      Properties.View = dmGeneral.cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
      Properties.OnEditValueChanged = lcbGroupShiftPropertiesEditValueChanged
      TabOrder = 1
      Width = 120
    end
    object cxLabel3: TcxLabel
      Left = 9
      Top = 24
      Caption = 'Group Shift'
      ParentColor = False
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 42
      Caption = 'Shift'
      ParentColor = False
      Transparent = True
    end
    object lcbShift: TcxExtLookupComboBox
      Left = 81
      Top = 41
      Properties.View = dmGeneral.cgvPrevGroupShiftDt1
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
      Properties.OnEditValueChanged = lcbShiftPropertiesEditValueChanged
      TabOrder = 2
      Width = 120
    end
    object BProses: TcxButton
      Left = 281
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 3
      OnClick = BProsesClick
    end
  end
  object cgAbsen: TcxGrid [2]
    Left = 0
    Top = 305
    Width = 685
    Height = 184
    Align = alClient
    TabOrder = 2
    object cgvAbsen: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAnomali
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvAbsennopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnopeg
        Width = 57
      end
      object cgvAbsenNama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnama
        Width = 49
      end
      object cgvAbsennamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadivisi
        Width = 46
      end
      object cgvAbsennamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadepartemen
      end
      object cgvAbsennamastatus: TcxGridDBColumn
        Caption = 'Status Karyawan'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamastatus
        Width = 104
      end
      object cgvAbsenkodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenketerangan
        Width = 62
      end
      object cgvAbsenterlambat: TcxGridDBColumn
        DataBinding.FieldName = 'terlambat'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvAbsenmodemasuk: TcxGridDBColumn
        Caption = 'Mode Masuk'
        DataBinding.FieldName = 'modemasuk'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = '1'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = '2'
            Value = '2'
          end
          item
            Description = '3'
            Value = '3'
          end
          item
            Description = '4'
            Value = '4'
          end
          item
            Description = '5'
            Value = '5'
          end>
      end
      object cgvAbsenmodekeluar: TcxGridDBColumn
        Caption = 'Mode Keluar'
        DataBinding.FieldName = 'modekeluar'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = '1'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = '2'
            Value = '2'
          end
          item
            Description = '3'
            Value = '3'
          end
          item
            Description = '4'
            Value = '4'
          end
          item
            Description = '5'
            Value = '5'
          end>
      end
      object cgvAbsenmasuk1: TcxGridDBColumn
        Caption = 'Masuk 1'
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvAbsenkeluar1: TcxGridDBColumn
        Caption = 'Keluar 1'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvAbsenlembur: TcxGridDBColumn
        DataBinding.FieldName = 'lembur'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvAbsenflagupdate: TcxGridDBColumn
        Caption = 'Ubah'
        DataBinding.FieldName = 'flagupdate'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Editing = False
      end
      object cgvAbsenemployeeid: TcxGridDBColumn
        Caption = 'Pengubah'
        DataBinding.FieldName = 'employeeid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevEmployee
        Properties.KeyFieldNames = 'EmployeeId'
        Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        Options.Editing = False
      end
      object cgvAbsentgl: TcxGridDBColumn
        DataBinding.FieldName = 'tgl'
      end
      object cgvAbsenkodegroupshiftid: TcxGridDBColumn
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvAbsenshift: TcxGridDBColumn
        DataBinding.FieldName = 'shift'
      end
      object cgvAbsennoreg: TcxGridDBColumn
        DataBinding.FieldName = 'noreg'
      end
      object cgvAbsenpulangawal: TcxGridDBColumn
        DataBinding.FieldName = 'pulangawal'
      end
      object cgvAbsenalatm1: TcxGridDBColumn
        Caption = 'Alat M1'
        DataBinding.FieldName = 'alatm1'
      end
      object cgvAbsenalatk1: TcxGridDBColumn
        Caption = 'Alat K1'
        DataBinding.FieldName = 'alatk1'
      end
      object cgvAbsenstatusabsen: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'statusabsen'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Belum OK'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Sudah OK'
            Value = '1'
          end
          item
            Description = 'Sudah Closing'
            Value = '2'
          end>
      end
      object cgvAbsenketerangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
    end
    object cgAbsenLevel1: TcxGridLevel
      GridView = cgvAbsen
    end
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 121
    Width = 685
    Height = 184
    Align = alTop
    TabOrder = 3
    object cgvClosing: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsClosing
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnopeg
        Width = 57
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnama
        Width = 49
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadivisi
        Width = 46
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadepartemen
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Status Karyawan'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPosisiActiveTglShift
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamastatus
        Width = 104
      end
      object cxGridDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Masuk'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Keluar'
            Value = '1'
          end>
        Width = 36
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenketerangan
        Width = 62
      end
      object cxGridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'terlambat'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = 'Mode Masuk'
        DataBinding.FieldName = 'modemasuk'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = '1'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = '2'
            Value = '2'
          end
          item
            Description = '3'
            Value = '3'
          end
          item
            Description = '4'
            Value = '4'
          end
          item
            Description = '5'
            Value = '5'
          end>
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = 'Mode Keluar'
        DataBinding.FieldName = 'modekeluar'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = '1'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = '2'
            Value = '2'
          end
          item
            Description = '3'
            Value = '3'
          end
          item
            Description = '4'
            Value = '4'
          end
          item
            Description = '5'
            Value = '5'
          end>
      end
      object cxGridDBColumn11: TcxGridDBColumn
        Caption = 'Masuk 1'
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn12: TcxGridDBColumn
        Caption = 'Keluar 1'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn13: TcxGridDBColumn
        Caption = 'Masuk 2'
        DataBinding.FieldName = 'masuk2'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn14: TcxGridDBColumn
        Caption = 'Keluar 2'
        DataBinding.FieldName = 'keluar2'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn15: TcxGridDBColumn
        Caption = 'Masuk 3'
        DataBinding.FieldName = 'masuk3'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn16: TcxGridDBColumn
        Caption = 'Keluar 3'
        DataBinding.FieldName = 'keluar3'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn17: TcxGridDBColumn
        Caption = 'Masuk 4'
        DataBinding.FieldName = 'masuk4'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn18: TcxGridDBColumn
        Caption = 'Keluar 4'
        DataBinding.FieldName = 'keluar4'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn19: TcxGridDBColumn
        Caption = 'Masuk 5'
        DataBinding.FieldName = 'masuk5'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn20: TcxGridDBColumn
        Caption = 'Keluar 5'
        DataBinding.FieldName = 'keluar5'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = 'lembur'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGridDBColumn22: TcxGridDBColumn
        Caption = 'Ubah'
        DataBinding.FieldName = 'flagupdate'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Editing = False
      end
      object cxGridDBColumn23: TcxGridDBColumn
        Caption = 'Pengubah'
        DataBinding.FieldName = 'employeeid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevEmployee
        Properties.KeyFieldNames = 'EmployeeId'
        Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
        Options.Editing = False
      end
      object cgvClosingstatusabsen: TcxGridDBColumn
        Caption = 'Status Absen'
        DataBinding.FieldName = 'statusabsen'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Belum OK'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Sudah OK'
            Value = '1'
          end
          item
            Description = 'Sudah Closing'
            Value = '2'
          end>
      end
      object cgvClosingketerangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cgvClosingalatm1: TcxGridDBColumn
        Caption = 'Alat M1'
        DataBinding.FieldName = 'alatm1'
      end
      object cgvClosingalatk1: TcxGridDBColumn
        Caption = 'Alat K1'
        DataBinding.FieldName = 'alatk1'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cgvClosing
    end
  end
  inherited ActionList1: TActionList
    Left = 192
    Top = 0
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 224
    Top = 0
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 256
    Top = 0
  end
  object dsAnomali: TDataSource
    DataSet = qryAnomali
    Left = 584
    Top = 144
  end
  object dsClosing: TDataSource
    DataSet = qryClosing
    Left = 576
    Top = 344
  end
  object qryProses: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'kodegroupshift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'shift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'exec spprosesclosingshift :tgl,:kodegroupshift,:shift')
    Left = 8
    Top = 176
  end
  object qryAnomali: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryAnomaliBeforePost
    AfterPost = qryAnomaliAfter
    BeforeDelete = qryAnomaliBeforeDelete
    AfterDelete = qryAnomaliAfter
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      'case'
      '  when m1='#39'1'#39' then '#39'AUTO'#39
      '  when m1 is null and not masuk1 is null then '#39'MANUAL'#39
      '  when m1 is null then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatm1,'
      'case'
      '  when k1='#39'1'#39' then '#39'AUTO'#39
      '  when k1 is null and not keluar1 is null then '#39'MANUAL'#39
      '  when k1 is null then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatk1'
      'from absen'
      'where tgl=cast(:tgl as datetime)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      'and statusabsen='#39'0'#39)
    Left = 552
    Top = 144
  end
  object qryProsesHarian: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ATgl1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ATgl2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'AGroupGaji'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'AGroupShift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'AShift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'APegawaiid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'exec spprosesharian :ATgl1,:ATgl2,:AGroupGaji,:AGroupShift,:AShi' +
        'ft,:APegawaiid')
    Left = 8
    Top = 208
  end
  object qryClosing: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryClosingBeforePost
    AfterPost = qryClosingAfterPost
    BeforeDelete = qryClosingBeforeDelete
    AfterDelete = qryClosingAfterDelete
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *,case'
      '  when m1='#39'1'#39' then '#39'AUTO'#39
      '  when m1 is null and not masuk1 is null then '#39'MANUAL'#39
      '  when m1 is null then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatm1,'
      'case'
      '  when k1='#39'1'#39' then '#39'AUTO'#39
      '  when k1 is null and not keluar1 is null then '#39'MANUAL'#39
      '  when k1 is null then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatk1'
      'from absen'
      'where tgl=cast(:tgl as datetime)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      'and statusabsen='#39'2'#39)
    Left = 544
    Top = 344
  end
end
