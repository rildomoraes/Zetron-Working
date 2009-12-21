inherited fmDisplayAbsensi: TfmDisplayAbsensi
  Caption = 'Display Absensi'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object Bevel1: TBevel [1]
      Left = 203
      Top = 1
      Width = 254
      Height = 48
      Align = alLeft
      Shape = bsFrame
      ExplicitLeft = 207
      ExplicitTop = -4
    end
    object bvlSpacer12: TBevel [2]
      Left = 457
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 679
      ExplicitTop = -4
    end
    object cxLabel1: TcxLabel
      Left = 209
      Top = 16
      Caption = 'Periode'
      ParentColor = False
    end
    object cbMonth: TcxComboBox
      Left = 253
      Top = 15
      TabOrder = 5
      Width = 92
    end
    object cbYear: TcxComboBox
      Left = 351
      Top = 15
      TabOrder = 6
      Width = 92
    end
  end
  object cgDisplay: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    Align = alClient
    TabOrder = 1
    object cgvDisplay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvDisplaytgl: TcxGridDBColumn
        Caption = 'Tgl'
        DataBinding.FieldName = 'tgl'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplaypegawaiid: TcxGridDBColumn
        Caption = 'Pegawaiid'
        DataBinding.FieldName = 'pegawaiid'
      end
      object cgvDisplaynopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvDisplaynama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
      object cgvDisplaykodegroupshiftid: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvDisplayshift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
      end
      object cgvDisplaynoreg: TcxGridDBColumn
        Caption = 'No Mutasi'
        DataBinding.FieldName = 'noreg'
      end
      object cgvDisplaystatus: TcxGridDBColumn
        Caption = 'Status Masuk'
        DataBinding.FieldName = 'status'
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
      object cgvDisplaykodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvDisplayterlambat: TcxGridDBColumn
        Caption = 'Terlambat'
        DataBinding.FieldName = 'terlambat'
      end
      object cgvDisplaymodemasuk: TcxGridDBColumn
        Caption = 'Mode Masuk'
        DataBinding.FieldName = 'modemasuk'
      end
      object cgvDisplaymodekeluar: TcxGridDBColumn
        Caption = 'Mode Keluar'
        DataBinding.FieldName = 'modekeluar'
      end
      object cgvDisplaymasuk1: TcxGridDBColumn
        Caption = 'Masuk 1 '
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvDisplaykeluar1: TcxGridDBColumn
        Caption = 'Keluar 1'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvDisplaylembur: TcxGridDBColumn
        Caption = 'Lembur'
        DataBinding.FieldName = 'lembur'
      end
      object cgvDisplayemployeeid: TcxGridDBColumn
        Caption = 'Supervisor'
        DataBinding.FieldName = 'employeeid'
      end
      object cgvDisplaystatusabsen: TcxGridDBColumn
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
      object cgvDisplayflagupdate: TcxGridDBColumn
        Caption = 'Update'
        DataBinding.FieldName = 'flagupdate'
      end
      object cgvDisplayflagprosesgaji: TcxGridDBColumn
        Caption = 'Proses Gaji'
        DataBinding.FieldName = 'flagprosesgaji'
      end
      object cgvDisplaynamaperusahaan: TcxGridDBColumn
        Caption = 'Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
      end
      object cgvDisplaynamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvDisplaynamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'namadepartemen'
      end
      object cgvDisplaydutyon: TcxGridDBColumn
        Caption = 'Jam Kerja Awal'
        DataBinding.FieldName = 'dutyon'
      end
      object cgvDisplaydutyoff: TcxGridDBColumn
        Caption = 'Jam Kerja Akhir'
        DataBinding.FieldName = 'dutyoff'
      end
      object cgvDisplayoverday: TcxGridDBColumn
        Caption = 'Overday'
        DataBinding.FieldName = 'overday'
      end
      object cgvDisplaytoleransiterlambat: TcxGridDBColumn
        Caption = 'Toleransi Terlambat'
        DataBinding.FieldName = 'toleransiterlambat'
      end
      object cgvDisplaynamaoutsourcing: TcxGridDBColumn
        Caption = 'OutSourcing'
        DataBinding.FieldName = 'namaoutsourcing'
      end
      object cgvDisplaynamastatus: TcxGridDBColumn
        DataBinding.FieldName = 'namastatus'
      end
      object cgvDisplaystatusschedule: TcxGridDBColumn
        Caption = 'Status Schedule'
        DataBinding.FieldName = 'statusschedule'
      end
      object cgvDisplaynamagroupshift: TcxGridDBColumn
        Caption = 'Nama Group Shift'
        DataBinding.FieldName = 'namagroupshift'
      end
      object cgvDisplayjammulaiabsen: TcxGridDBColumn
        Caption = 'Jam Mulai Absen'
        DataBinding.FieldName = 'jammulaiabsen'
      end
      object cgvDisplayjamakhirabsen: TcxGridDBColumn
        Caption = 'Jam Akhir Absen'
        DataBinding.FieldName = 'jamakhirabsen'
      end
      object cgvDisplayjambataslembur: TcxGridDBColumn
        Caption = 'Jam Batas Lembur'
        DataBinding.FieldName = 'jambataslembur'
      end
      object cgvDisplaypulangawal: TcxGridDBColumn
        DataBinding.FieldName = 'pulangawal'
      end
      object cgvDisplayalatm1: TcxGridDBColumn
        Caption = 'Alat M1'
        DataBinding.FieldName = 'alatm1'
      end
      object cgvDisplayalatk1: TcxGridDBColumn
        Caption = 'Alat K1'
        DataBinding.FieldName = 'alatk1'
      end
      object cgvDisplayketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DetailKeyFieldNames = 'PurchaseInvoiceId'
      DataController.MasterKeyFieldNames = 'PurchaseInvoiceId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplay
    end
  end
  inherited ActionList1: TActionList
    object actShow: TAction
      Caption = 'Show'
      ImageIndex = 0
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsDisplay: TDataSource
    DataSet = qryDisplay
    Left = 280
    Top = 144
  end
  object qryDisplay: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tahun'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'bulan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct b.nopeg,b.nama,a.*,c.noreg,d.namaperusahaan, e.n' +
        'amadivisi, f.namadepartemen,'
      
        'a.shift,j.jamkerjaawal as dutyon,j.jamkerjaakhir as dutyoff,j.ov' +
        'erday,j.toleransiterlambat,h.namaoutsourcing,i.namastatus,'
      
        'b.statusschedule,k.namagroupshift,j.jammulaiabsen,j.jamakhirabse' +
        'n,j.jambataslembur,'
      'case'
      '  when m1='#39'1'#39' then '#39'AUTO'#39
      
        '  when isnull(m1,'#39#39')='#39#39' and not (isnull(masuk1,'#39#39')='#39#39' ) then '#39'MA' +
        'NUAL'#39
      '  when isnull(m1,'#39#39')='#39#39' then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatm1,'
      'case'
      '  when k1='#39'1'#39' then '#39'AUTO'#39
      
        ' when isnull(k1,'#39#39')='#39#39' and not (isnull(keluar1,'#39#39')='#39#39')  then '#39'MA' +
        'NUAL'#39
      '  when isnull(k1,'#39#39')='#39#39' then '#39#39
      '  else '#39'MANUAL'#39
      'end as alatk1'
      'from absen a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join mutasi c on a.noreg=c.noreg'
      'left join perusahaan d on c.kodeperusahaan=d.kodeperusahaan'
      'left join divisi e on c.kodedivisi=e.kodedivisi'
      'left join departemen f on c.kodedepartemen=f.kodedepartemen'
      
        'left join groupshiftdt2 g on a.kodegroupshiftid=g.kodegroupshift' +
        'id and a.shift=g.shift and g.kodehari=datepart(weekday,cast(a.tg' +
        'l as datetime))'
      'left join outsourcing h on c.kodeoutsourcing=h.kodeoutsourcing'
      'left join statuskaryawan i on c.kodestatus=i.kodestatus'
      'left join masterjamkerja j on g.kodejamkerja=j.kodejamkerja'
      
        'left join groupshifthd k on g.kodegroupshiftid=k.kodegroupshifti' +
        'd'
      'where year(tgl) = :tahun and month(tgl) =:bulan')
    Left = 248
    Top = 144
  end
end
