inherited fmDisplaySlipGaji: TfmDisplaySlipGaji
  Caption = 'Display Slip Gaji'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer12: TBevel [1]
      Left = 299
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 600
      ExplicitTop = 2
    end
    object btnOK: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actOk
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object cxButton1: TcxButton
      Left = 251
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPrintSlipGaji
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object pnlProgressBar: TPanel
      Left = 309
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 6
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object pnlCustom: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object Label4: TLabel
      Left = 257
      Top = 5
      Width = 54
      Height = 13
      Caption = 'Group Shift'
      Transparent = True
    end
    object Label3: TLabel
      Left = 481
      Top = 6
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object lcbPayrollPeriod: TcxExtLookupComboBox
      Left = 48
      Top = 3
      Properties.View = cgvPrevPayrollPeriod
      Properties.KeyFieldNames = 'kodeperiode'
      Properties.ListFieldItem = cgvPrevPayrollPeriodperiodename
      TabOrder = 0
      Width = 193
    end
    object lcbGroupShift: TcxExtLookupComboBox
      Left = 317
      Top = 3
      Properties.View = cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = cgvPrevGroupShiftnamagroupshift
      Properties.OnEditValueChanged = lcbGroupShiftPropertiesEditValueChanged
      TabOrder = 1
      Width = 145
    end
    object lcbShift: TcxExtLookupComboBox
      Left = 509
      Top = 3
      Properties.View = cgvPrevShift
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = cgvPrevShiftshift
      TabOrder = 2
      Width = 73
    end
  end
  object cgDisplay: TcxGrid [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 2
    object cgvDisplayHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollHd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'nopeg'
          Column = cgvDisplayHdnopeg
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'grandtotal'
          Column = cgvDisplayHdgrandtotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvDisplayHdCetak: TcxGridDBColumn
        Caption = 'Cetak'
        DataBinding.FieldName = 'FlagCetak'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 34
      end
      object cgvDisplayHdnopeg: TcxGridDBColumn
        Caption = 'No Pegawai'
        DataBinding.FieldName = 'nopeg'
        Options.Editing = False
        Width = 78
      end
      object cgvDisplayHdnama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Options.Editing = False
        Width = 223
      end
      object cgvDisplayHdgrandtotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'grandtotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 129
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollDt
      DataController.DetailKeyFieldNames = 'nopeg'
      DataController.MasterKeyFieldNames = 'nopeg'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvDisplayDtnopeg: TcxGridDBColumn
        DataBinding.FieldName = 'nopeg'
        Visible = False
        VisibleForCustomization = False
        Width = 64
      end
      object cgvDisplayDttglpayroll: TcxGridDBColumn
        DataBinding.FieldName = 'tglpayroll'
      end
      object cgvDisplayDtnamagroupshift: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'namagroupshift'
        Visible = False
        Width = 59
      end
      object cgvDisplayDtshift: TcxGridDBColumn
        Caption = ' Shift'
        DataBinding.FieldName = 'shift'
        Visible = False
        Width = 37
      end
      object cgvDisplayDtpayrolltypename: TcxGridDBColumn
        Caption = 'Tipe Payroll'
        DataBinding.FieldName = 'payrolltypename'
        Width = 97
      end
      object cgvDisplayDtamount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDtkoefisien: TcxGridDBColumn
        Caption = ' Koefisien'
        DataBinding.FieldName = 'koefisien'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDttotal: TcxGridDBColumn
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplayHd
      object cgDisplayLevel2: TcxGridLevel
        GridView = cgvDisplayDt
      end
    end
  end
  inherited ActionList1: TActionList
    object actOk: TAction
      Caption = '&Ok'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
    object actPrintSlipGaji: TAction
      Caption = 'Slip Gaji'
      ImageIndex = 3
      OnExecute = actPrintSlipGajiExecute
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsPrevPayrollPeriod: TDataSource
    DataSet = qryPrevPayrollPeriod
    Left = 200
    Top = 208
  end
  object dsGroupShift: TDataSource
    DataSet = qryPrevGroupShift
    Left = 200
    Top = 240
  end
  object dsShift: TDataSource
    DataSet = qryPrevShift
    Left = 200
    Top = 272
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 232
    Top = 208
    object cgvPrevPayrollPeriod: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPayrollPeriod
      DataController.KeyFieldNames = 'kodeperiode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPayrollPeriodkodeperiode: TcxGridDBColumn
        DataBinding.FieldName = 'kodeperiode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPayrollPeriodnamaperiode: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'namaperiode'
        VisibleForCustomization = False
      end
      object cgvPrevPayrollPeriodperiodename: TcxGridDBColumn
        Caption = 'Nama Periode'
        DataBinding.FieldName = 'periodename'
      end
      object cgvPrevPayrollPeriodtglakhir: TcxGridDBColumn
        Caption = 'Tgl Awal'
        DataBinding.FieldName = 'tglakhir'
      end
      object cgvPrevPayrollPeriodtglawal: TcxGridDBColumn
        Caption = 'Tgl Akhir'
        DataBinding.FieldName = 'tglawal'
      end
    end
    object cgvPrevGroupShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGroupShift
      DataController.KeyFieldNames = 'kodegroupshiftid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupShiftkodegroupshiftid: TcxGridDBColumn
        DataBinding.FieldName = 'kodegroupshiftid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevGroupShiftnamagroupshift: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'namagroupshift'
      end
    end
    object cgvPrevShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsShift
      DataController.KeyFieldNames = 'shift'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShiftkodegroupshiftid: TcxGridDBColumn
        DataBinding.FieldName = 'kodegroupshiftid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevShiftshift: TcxGridDBColumn
        Caption = ' Shift'
        DataBinding.FieldName = 'shift'
      end
      object cgvPrevShiftwarna: TcxGridDBColumn
        Caption = ' Warna'
        DataBinding.FieldName = 'warna'
        PropertiesClassName = 'TcxColorComboBoxProperties'
        Properties.CustomColors = <>
        Visible = False
      end
    end
  end
  object mdTransaksiPayrollHd: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 144
  end
  object dsTransaksiPayrollHd: TDataSource
    DataSet = mdTransaksiPayrollHd
    Left = 232
    Top = 144
  end
  object dsTransaksiPayrollDt: TDataSource
    DataSet = qryTransaksiPayrollDt
    Left = 200
    Top = 176
  end
  object qryPrevPayrollPeriod: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  *,'
      
        '  cast(TglAwal as varchar(30)) + '#39' s/d '#39' + cast(TglAkhir as varc' +
        'har(30)) as PeriodeName'
      'from PeriodeGajiHd')
    Left = 168
    Top = 208
  end
  object qryPrevGroupShift: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from GroupShiftHd')
    Left = 168
    Top = 240
  end
  object qryPrevShift: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsGroupShift
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from GroupShiftDt1')
    Left = 168
    Top = 272
  end
  object qryTransaksiPayrollDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DateStart'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateEnd'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'KodeGroupShiftId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Shift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  d.NoPeg, b.TglPayroll, e.NamaGroupShift, b.Shift,'
      '  c.PayrollTypeName, a.Amount, a.Koefisien, a.Total  '
      'from TransaksiPayrollDt a'
      'left join TransaksiPayrollHd b on a.NoPayroll = b.NoPayroll'
      'left join PayrollType c on a.PayrollType = c.PayrollType'
      'left join Pegawai d on b.PegawaiId = d.PegawaiId'
      
        'left join GroupShiftHd e on b.KodeGroupShiftId = e.KodeGroupShif' +
        'tId'
      'where b.TglPayroll between :DateStart and :DateEnd    '
      'and b.KodeGroupShiftId like :KodeGroupShiftId'
      'and b.Shift like :Shift'
      'order by d.NoPeg, b.TglPayroll'
      '')
    Left = 168
    Top = 176
  end
  object qryTransaksiPayrollHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DateStart'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateEnd'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'KodeGroupShiftId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  cast(1 as integer) as FlagCetak,'
      '  b.NoPeg, b.Nama, sum(a.Total) as GrandTotal'
      'from TransaksiPayrollHd a'
      'left join Pegawai b on a.PegawaiId = b.PegawaiId'
      'where a.TglPayroll between :DateStart and :DateEnd    '
      'and a.KodeGroupShiftId like :KodeGroupShiftId'
      'and a.Shift like :Shift'
      'group by FlagCetak, b.NoPeg, b.Nama'
      'order by b.NoPeg')
    Left = 168
    Top = 144
  end
end
