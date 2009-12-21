inherited fmSchedulling: TfmSchedulling
  Caption = 'Scheduling'
  ClientHeight = 635
  ClientWidth = 715
  ExplicitWidth = 723
  ExplicitHeight = 669
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter [0]
    Left = 455
    Top = 50
    Height = 585
    ExplicitTop = -36
    ExplicitHeight = 593
  end
  object Splitter1: TSplitter [1]
    Left = 169
    Top = 50
    Height = 585
    ExplicitTop = -36
    ExplicitHeight = 593
  end
  object Splitter3: TSplitter [2]
    Left = 396
    Top = 50
    Height = 585
    ExplicitTop = -36
    ExplicitHeight = 593
  end
  inherited pnlMenu: TPanel
    Width = 715
    ExplicitWidth = 715
  end
  object Panel2: TPanel [4]
    Left = 399
    Top = 50
    Width = 56
    Height = 585
    Align = alLeft
    TabOrder = 1
    object BSet: TcxButton
      Left = 5
      Top = 21
      Width = 42
      Height = 36
      Caption = '>'
      TabOrder = 0
      OnClick = BSetClick
    end
    object BUnSet: TcxButton
      Left = 5
      Top = 63
      Width = 42
      Height = 36
      Caption = '<'
      TabOrder = 1
      OnClick = BUnSetClick
    end
  end
  object Panel3: TPanel [5]
    Left = 172
    Top = 50
    Width = 224
    Height = 585
    Align = alLeft
    TabOrder = 2
    object cgUnSelect: TcxGrid
      Left = 1
      Top = 1
      Width = 222
      Height = 583
      Align = alClient
      TabOrder = 0
      object cgvUnSelect: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsUnSelect
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Jum ,0.;-,0.'
            Kind = skCount
            FieldName = 'nopeg'
            Column = cgvUnSelectnama
            DisplayText = 'Jumlah'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Jum ,0.;-,0.'
            Kind = skCount
            FieldName = 'nopeg'
            Column = cgvUnSelectnopeg
            DisplayText = 'Jumlah'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        Styles.OnGetContentStyle = cgvUnSelectStylesGetContentStyle
        object cgvUnSelectpegawaiid: TcxGridDBColumn
          DataBinding.FieldName = 'pegawaiid'
          Options.Editing = False
        end
        object cgvUnSelectnopeg: TcxGridDBColumn
          DataBinding.FieldName = 'nopeg'
          Options.Editing = False
        end
        object cgvUnSelectnama: TcxGridDBColumn
          DataBinding.FieldName = 'nama'
          Options.Editing = False
        end
        object cgvUnSelecttglmasuk: TcxGridDBColumn
          DataBinding.FieldName = 'tglmasuk'
          Options.Editing = False
        end
        object cgvUnSelectkodeperusahaan: TcxGridDBColumn
          DataBinding.FieldName = 'kodeperusahaan'
          Options.Editing = False
        end
        object cgvUnSelectnamaperusahaan: TcxGridDBColumn
          DataBinding.FieldName = 'namaperusahaan'
          Options.Editing = False
        end
        object cgvUnSelectkodedivisi: TcxGridDBColumn
          DataBinding.FieldName = 'kodedivisi'
          Options.Editing = False
        end
        object cgvUnSelectnamadivisi: TcxGridDBColumn
          DataBinding.FieldName = 'namadivisi'
          Options.Editing = False
        end
        object cgvUnSelectkodedepartemen: TcxGridDBColumn
          DataBinding.FieldName = 'kodedepartemen'
          Options.Editing = False
        end
        object cgvUnSelectnamadepartemen: TcxGridDBColumn
          DataBinding.FieldName = 'namadepartemen'
          Options.Editing = False
        end
        object cgvUnSelecttglkeluar: TcxGridDBColumn
          Caption = 'Tgl Keluar'
          DataBinding.FieldName = 'tglkeluar'
          Options.Editing = False
        end
        object cgvUnSelectflagschedule: TcxGridDBColumn
          DataBinding.FieldName = 'flagschedule'
          Options.Editing = False
        end
        object cgvUnSelectstpegawai: TcxGridDBColumn
          Caption = 'Kode Status'
          DataBinding.FieldName = 'stpegawai'
        end
        object cgvUnSelectnamastatus: TcxGridDBColumn
          Caption = 'Nama Status'
          DataBinding.FieldName = 'namastatus'
        end
        object cgvUnSelectstatusschedule: TcxGridDBColumn
          DataBinding.FieldName = 'statusschedule'
        end
        object cgvUnSelectkodestatus: TcxGridDBColumn
          DataBinding.FieldName = 'kodestatus'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cgvUnSelect
      end
    end
  end
  object Panel4: TPanel [6]
    Left = 458
    Top = 50
    Width = 257
    Height = 585
    Align = alClient
    TabOrder = 3
    object cgSelect: TcxGrid
      Left = 1
      Top = 1
      Width = 255
      Height = 583
      Align = alClient
      TabOrder = 0
      object cgvSelect: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSelect
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Jum ,0.;-,0.'
            Column = cgvSelectnopeg
            DisplayText = 'Jumlah'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Jum ,0.;-,0.'
            Kind = skCount
            FieldName = 'nopeg'
            Column = cgvSelectnopeg
            DisplayText = 'Jumlah'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        Styles.OnGetContentStyle = cgvSelectStylesGetContentStyle
        object cgvSelectpegawaiid: TcxGridDBColumn
          DataBinding.FieldName = 'pegawaiid'
          Options.Editing = False
        end
        object cgvSelectnopeg: TcxGridDBColumn
          DataBinding.FieldName = 'nopeg'
          Options.Editing = False
        end
        object cgvSelectnama: TcxGridDBColumn
          DataBinding.FieldName = 'nama'
          Options.Editing = False
        end
        object cgvSelecttglmasuk: TcxGridDBColumn
          DataBinding.FieldName = 'tglmasuk'
          Options.Editing = False
        end
        object cgvSelectkodeperusahaan: TcxGridDBColumn
          DataBinding.FieldName = 'kodeperusahaan'
          Options.Editing = False
        end
        object cgvSelectnamaperusahaan: TcxGridDBColumn
          DataBinding.FieldName = 'namaperusahaan'
          Options.Editing = False
        end
        object cgvSelectkodedivisi: TcxGridDBColumn
          DataBinding.FieldName = 'kodedivisi'
          Options.Editing = False
        end
        object cgvSelectnamadivisi: TcxGridDBColumn
          DataBinding.FieldName = 'namadivisi'
          Options.Editing = False
        end
        object cgvSelectkodedepartemen: TcxGridDBColumn
          DataBinding.FieldName = 'kodedepartemen'
          Options.Editing = False
        end
        object cgvSelectnamadepartemen: TcxGridDBColumn
          DataBinding.FieldName = 'namadepartemen'
          Options.Editing = False
        end
        object cgvSelecttglkeluar: TcxGridDBColumn
          DataBinding.FieldName = 'tglkeluar'
          Options.Editing = False
        end
        object cgvSelectflagschedule: TcxGridDBColumn
          DataBinding.FieldName = 'flagschedule'
          Options.Editing = False
        end
        object cgvSelectstpegawai: TcxGridDBColumn
          Caption = 'Kode Status'
          DataBinding.FieldName = 'stpegawai'
        end
        object cgvSelectnamastatus: TcxGridDBColumn
          Caption = 'Nama Status'
          DataBinding.FieldName = 'namastatus'
        end
        object cgvSelectstatusschedule: TcxGridDBColumn
          DataBinding.FieldName = 'statusschedule'
        end
        object cgvSelectkodestatus: TcxGridDBColumn
          DataBinding.FieldName = 'kodestatus'
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cgvSelect
      end
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 50
    Width = 169
    Height = 585
    Align = alLeft
    TabOrder = 4
    object lblPerusahaan: TLabel
      Left = 11
      Top = 9
      Width = 57
      Height = 13
      Caption = 'Perusahaan'
      Transparent = True
    end
    object lblDivisi: TLabel
      Left = 11
      Top = 52
      Width = 24
      Height = 13
      Caption = 'Divisi'
      Transparent = True
    end
    object lblDepartemen: TLabel
      Left = 11
      Top = 97
      Width = 59
      Height = 13
      Caption = 'Departemen'
      Transparent = True
    end
    object lblGroupShift: TLabel
      Left = 11
      Top = 141
      Width = 54
      Height = 13
      Caption = 'Group Shift'
      Transparent = True
    end
    object lblShift: TLabel
      Left = 11
      Top = 185
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object tanggal: TcxDateNavigator
      Left = 11
      Top = 229
      Width = 147
      Height = 258
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 0
      OnCustomDrawDayNumber = tanggalCustomDrawDayNumber
      OnPeriodChanged = tanggalPeriodChanged
      OnSelectionChanged = tanggalSelectionChanged
    end
    object pbProcess: TcxProgressBar
      Left = 11
      Top = 493
      ParentColor = False
      Properties.BarStyle = cxbsGradientLEDs
      Properties.BeginColor = clMoneyGreen
      TabOrder = 1
      Transparent = True
      Visible = False
      Width = 147
    end
    object dbePerusahaan: TcxExtLookupComboBox
      Left = 11
      Top = 28
      Properties.View = dmGeneral.cgvPrevPerusahaan
      Properties.KeyFieldNames = 'kodeperusahaan'
      Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = ActUbahExecute
      TabOrder = 2
      Width = 148
    end
    object BPreview: TcxButton
      Left = 87
      Top = 518
      Width = 70
      Height = 25
      Action = ActPreview
      TabOrder = 3
    end
    object BPrint: TcxButton
      Left = 11
      Top = 549
      Width = 70
      Height = 25
      Action = ActPrint
      TabOrder = 4
    end
    object dblcKodeDivisi: TcxExtLookupComboBox
      Left = 11
      Top = 71
      Properties.View = dmGeneral.cgvPrevDivisi
      Properties.KeyFieldNames = 'kodedivisi'
      Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = ActUbahExecute
      TabOrder = 5
      Width = 148
    end
    object dblcKodeDepartemen: TcxExtLookupComboBox
      Left = 11
      Top = 116
      Properties.View = dmGeneral.cgvPrevDepartemen
      Properties.KeyFieldNames = 'kodedepartemen'
      Properties.ListFieldItem = dmGeneral.cgvPrevDepartemennamadepartemen
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = ActUbahExecute
      TabOrder = 6
      Width = 148
    end
    object dbeDouble: TcxCheckBox
      Left = 83
      Top = 553
      Caption = 'Long Shift'
      ParentColor = False
      Properties.DisplayChecked = 'Long Shift'
      Properties.DisplayUnchecked = 'Single Shift'
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = dbeDoublePropertiesEditValueChanged
      TabOrder = 7
      Transparent = True
      Width = 69
    end
    object dblcGroupShift: TcxExtLookupComboBox
      Left = 11
      Top = 160
      Properties.View = dmGeneral.cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = ActUbahExecute
      TabOrder = 8
      Width = 148
    end
    object dblcShift: TcxExtLookupComboBox
      Left = 15
      Top = 204
      Properties.View = dmGeneral.cgvPrevGroupShiftDt1
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = ActUbahExecute
      TabOrder = 9
      Width = 148
    end
    object BSimpan: TcxButton
      Left = 11
      Top = 518
      Width = 70
      Height = 25
      Action = ActCopy
      TabOrder = 10
    end
  end
  inherited ActionList1: TActionList
    Left = 128
    Top = 8
    object ActUbah: TAction [0]
      Caption = 'Ubah'
      ImageIndex = 0
      OnExecute = ActUbahExecute
    end
    object ActCopy: TAction
      Caption = 'Copy'
      ImageIndex = 13
      OnExecute = ActCopyExecute
    end
    object ActPreview: TAction
      Caption = 'Preview'
      ImageIndex = 16
      OnExecute = ActPreviewExecute
    end
    object ActPrint: TAction
      Caption = 'ActPrint'
      ImageIndex = 3
      OnExecute = ActPrintExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 168
    Top = 8
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 200
    Top = 8
  end
  object dsUnSelect: TDataSource
    DataSet = qryUnSelect
    Left = 272
    Top = 16
  end
  object dsSelect: TDataSource
    DataSet = qrySelect
    Left = 576
    Top = 16
  end
  object dsDraw: TDataSource
    DataSet = qryDraw
    Left = 64
    Top = 376
  end
  object qryUnSelect: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'start'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'end'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupsiftid'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodeperusahaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodedivisi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodedepartemen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'tglkeluar'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct b.pegawaiid, b.statusschedule,b.nopeg, b.nama, b' +
        '.tglmasuk, b.tglkeluar, d.kodeperusahaan, d.namaperusahaan, e.ko' +
        'dedivisi, e.namadivisi, f.kodedepartemen, f.namadepartemen,b.kod' +
        'estatus,g.namastatus'
      'from pegawai b'
      'left join scheduling a on a.pegawaiid=b.pegawaiid'
      'left join perusahaan d on b.kodeperusahaan=d.kodeperusahaan'
      'left join divisi e on b.kodedivisi=e.kodedivisi'
      'left join departemen f on b.kodedepartemen=f.kodedepartemen'
      'left join statuskaryawan g on b.kodestatus=g.kodestatus'
      'where b.pegawaiid not in (select pegawaiid from scheduling'
      
        'where tglschedule between dbo.fnGetDate(:start) and dbo.fnGetDat' +
        'e(:end) and kodegroupshiftid=:kodegroupsiftid and shift=:shift)'
      'and b.kodeperusahaan=:kodeperusahaan'
      'and b.kodedivisi=:kodedivisi'
      'and b.kodedepartemen=:kodedepartemen'
      
        'and (b.tglkeluar is null or b.tglkeluar>=dbo.fnGetDate(:tglkelua' +
        'r))'
      'and  b.statusschedule='#39'1'#39
      'and b.kodegroupshiftid=:kodegroupshiftid'
      'order by b.pegawaiid')
    Left = 240
    Top = 16
  end
  object qrySelect: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'start'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'end'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'kodegrouupshiftid'
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
      end
      item
        Name = 'kodeperusahaan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'kodedivisi'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'kodedepartemen'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'tglkeluar'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct a.pegawaiid, b.statusschedule,b.nopeg, b.nama, b' +
        '.tglmasuk, b.tglkeluar, d.kodeperusahaan, d.namaperusahaan, e.ko' +
        'dedivisi, e.namadivisi, f.kodedepartemen, f.namadepartemen,b.kod' +
        'estatus,g.namastatus'
      'from scheduling a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join perusahaan d on b.kodeperusahaan=d.kodeperusahaan'
      'left join divisi e on b.kodedivisi=e.kodedivisi'
      'left join departemen f on b.kodedepartemen=f.kodedepartemen'
      'left join statuskaryawan g on b.kodestatus=g.kodestatus'
      
        'where tglschedule between dbo.fnGetDate(:start) and dbo.fnGetDat' +
        'e(:end)'
      'and a.kodegroupshiftid=:kodegrouupshiftid'
      'and a.shift=:shift'
      'and b.kodeperusahaan=:kodeperusahaan'
      'and b.kodedivisi=:kodedivisi'
      'and b.kodedepartemen=:kodedepartemen'
      
        'and (b.tglkeluar is null or b.tglkeluar>=dbo.fnGetDate(:tglkelua' +
        'r))'
      'and  b.statusschedule='#39'1'#39
      'and b.kodegroupshiftid=:kodegroupshiftid'
      'order by a.pegawaiid'
      '')
    Left = 544
    Top = 16
  end
  object qryDraw: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'awal'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'akhir'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select distinct tglschedule'
      'from scheduling'
      
        'where tglschedule between dbo.fnGetDate(:awal) and dbo.fnGetDate' +
        '(:akhir)'
      'order by tglschedule')
    Left = 32
    Top = 376
  end
  object qryCekHari: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
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
      end
      item
        Name = 'tgl'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select kodehari'
      'from groupshiftdt2'
      'where kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift '
      'and kodehari=datepart(weekday,dbo.fnGetDate(:tgl))')
    Left = 272
    Top = 152
  end
  object qrySet: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'tglschedule'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39826d
      end
      item
        Name = 'kodeperusahaan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '0'
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 'SP'
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '0'
      end
      item
        Name = 'flagpolling'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'flaglongshift'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'insert into scheduling(pegawaiid,tglschedule,kodeperusahaan,kode' +
        'groupshiftid,shift,flagpolling,flaglongshift)'
      
        'values (:pegawaiid,dbo.fnGetDate(:tglschedule),:kodeperusahaan,:' +
        'kodegroupshiftid,:shift,:flagpolling,:flaglongshift)')
    Left = 192
    Top = 152
  end
  object qrySet2: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'kodeperusahaan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'tglschedule'
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
      end
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'delete '
      'from scheduling'
      'where kodeperusahaan=:kodeperusahaan'
      'and tglschedule=dbo.fnGetDate(:tglschedule)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift'
      'and pegawaiid=:pegawaiid')
    Left = 232
    Top = 152
  end
  object qryCekTerdaftar: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
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
      end
      item
        Name = 'tglschedule'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select pegawaiid'
      'from scheduling'
      'where kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift '
      'and dbo.fnGetDate(tglschedule)=dbo.fnGetDate(:tglschedule)'
      'and pegawaiid=:pegawaiid')
    Left = 304
    Top = 152
  end
  object qryCekBelumTerdaftar: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kodegroupshift'
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
      end
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tglschedule'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select pegawaiid from scheduling '
      'where '
      'kodegroupshiftid=:kodegroupshift and'
      'shift=:shift and'
      'pegawaiid=:pegawaiid and'
      'dbo.fnGetDate(tglschedule)=dbo.fnGetDate(:tglschedule)')
    Left = 192
    Top = 192
  end
end
