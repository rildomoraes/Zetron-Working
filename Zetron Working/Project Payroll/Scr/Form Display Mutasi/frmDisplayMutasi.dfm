inherited fmDisplayMutasi: TfmDisplayMutasi
  Caption = 'Display Mutasi'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 63
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 34
      Height = 13
      Caption = 'No Peg'
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 35
      Width = 27
      Height = 13
      Caption = 'Nama'
      Transparent = True
    end
    object lcbNoPeg: TcxExtLookupComboBox
      Left = 58
      Top = 8
      Properties.View = dmGeneral.cgvPrevPegawai
      Properties.KeyFieldNames = 'pegawaiid'
      Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
      Properties.OnEditValueChanged = lcbNoPegPropertiesEditValueChanged
      TabOrder = 0
      Width = 145
    end
    object lcbNama: TcxExtLookupComboBox
      Left = 58
      Top = 33
      Properties.View = dmGeneral.cgvPrevPegawai
      Properties.KeyFieldNames = 'pegawaiid'
      Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
      Properties.OnEditValueChanged = lcbNamaPropertiesEditValueChanged
      TabOrder = 1
      Width = 287
    end
  end
  object cgDisplayMutasi: TcxGrid [2]
    Left = 0
    Top = 113
    Width = 592
    Height = 254
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 110
    object cgvDisplayMutasi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDefault
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvDisplayMutasinoreg: TcxGridDBColumn
        Caption = 'No Mutasi'
        DataBinding.FieldName = 'noreg'
      end
      object cgvDisplayMutasitglmulai: TcxGridDBColumn
        Caption = 'Tgl Mulai'
        DataBinding.FieldName = 'tglmulai'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayMutasikodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Visible = False
        Width = 89
      end
      object cgvDisplayMutasikodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Visible = False
        Width = 56
      end
      object cgvDisplayMutasikodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Visible = False
        Width = 91
      end
      object cgvDisplayMutasikodeoutsourcing: TcxGridDBColumn
        Caption = 'Kode OutSourcing'
        DataBinding.FieldName = 'kodeoutsourcing'
        Visible = False
        Width = 91
      end
      object cgvDisplayMutasikodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
        Width = 71
      end
      object cgvDisplayMutasikodestatus: TcxGridDBColumn
        Caption = 'Kode Status'
        DataBinding.FieldName = 'kodestatus'
        Visible = False
        Width = 63
      end
      object cgvDisplayMutasinamaperusahaan: TcxGridDBColumn
        Caption = 'Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
        Width = 99
      end
      object cgvDisplayMutasinamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvDisplayMutasinamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'namadepartemen'
      end
      object cgvDisplayMutasinamaoutsourcing: TcxGridDBColumn
        Caption = 'OutSourcing'
        DataBinding.FieldName = 'namaoutsourcing'
      end
      object cgvDisplayMutasinamajabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvDisplayMutasinamastatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'namastatus'
      end
      object cgvDisplayMutasiketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
      end
    end
    object cgDisplayMutasiLevel1: TcxGridLevel
      GridView = cgvDisplayMutasi
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsDefault: TDataSource
    DataSet = qryDisplayMutasi
    Left = 8
    Top = 152
  end
  object qryDisplayMutasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.noreg,a.tglmulai,a.kodeperusahaan,a.kodedivisi,a.kodede' +
        'partemen,'
      'a.kodeoutsourcing,a.kodejabatan,a.kodestatus,f.namaperusahaan,'
      
        'b.namadivisi,c.namadepartemen,g.namaoutsourcing,d.namajabatan,e.' +
        'namastatus,'
      'a.keterangan'
      'from mutasi a'
      'left join perusahaan f on a.kodeperusahaan=f.kodeperusahaan'
      'left join divisi b on a.kodedivisi=b.kodedivisi'
      'left join departemen c on a.kodedepartemen=c.kodedepartemen'
      'left join outsourcing g on a.kodeoutsourcing=g.kodeoutsourcing'
      'left join jabatan d on a.kodejabatan=d.kodejabatan'
      'left join statuskaryawan e on a.kodestatus=e.kodestatus'
      'where a.pegawaiid=:pegawaiid')
    Left = 44
    Top = 152
  end
end
