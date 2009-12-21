object dmGeneral: TdmGeneral
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 885
  Width = 777
  object gvrGeneral: TcxGridViewRepository
    Left = 48
    Top = 8
    object cgvPrevPerusahaan: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Append.Visible = True
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPerusahaan
      DataController.KeyFieldNames = 'kodeperusahaan'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevPerusahaankodeperusahaan: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kodeperusahaan'
        Visible = False
      end
      object cgvPrevPerusahaannamaperusahaan: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'namaperusahaan'
      end
      object cgvPrevPerusahaanalamat1: TcxGridDBColumn
        DataBinding.FieldName = 'alamat1'
        Visible = False
      end
      object cgvPrevPerusahaanalamat2: TcxGridDBColumn
        DataBinding.FieldName = 'alamat2'
        Visible = False
      end
      object cgvPrevPerusahaankota: TcxGridDBColumn
        DataBinding.FieldName = 'kota'
        Visible = False
      end
      object cgvPrevPerusahaankodepos: TcxGridDBColumn
        DataBinding.FieldName = 'kodepos'
        Visible = False
      end
      object cgvPrevPerusahaanphone: TcxGridDBColumn
        DataBinding.FieldName = 'phone'
        Visible = False
      end
      object cgvPrevPerusahaanfax: TcxGridDBColumn
        DataBinding.FieldName = 'fax'
        Visible = False
      end
      object cgvPrevPerusahaannpwp: TcxGridDBColumn
        DataBinding.FieldName = 'npwp'
        Visible = False
      end
      object cgvPrevPerusahaancorebusiness: TcxGridDBColumn
        DataBinding.FieldName = 'corebusiness'
        Visible = False
      end
      object cgvPrevPerusahaandirector: TcxGridDBColumn
        DataBinding.FieldName = 'director'
        Visible = False
      end
      object cgvPrevPerusahaanklucode: TcxGridDBColumn
        DataBinding.FieldName = 'klucode'
        Visible = False
      end
      object cgvPrevPerusahaanpemotongpajak: TcxGridDBColumn
        DataBinding.FieldName = 'pemotongpajak'
        Visible = False
      end
      object cgvPrevPerusahaantaxaddress: TcxGridDBColumn
        DataBinding.FieldName = 'taxaddress'
      end
    end
    object cgvPrevDivisi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Append.Visible = True
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsDivisi
      DataController.KeyFieldNames = 'kodedivisi'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevDivisikodedivisi: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kodedivisi'
        Visible = False
      end
      object cgvPrevDivisinamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
      end
    end
    object cgvPrevDepartemen: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsDepartemen
      DataController.KeyFieldNames = 'kodedepartemen'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevDepartemenkodedivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
        Visible = False
      end
      object cgvPrevDepartemennamadepartemen: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'namadepartemen'
      end
      object cgvPrevDepartemenkodedepartemen: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kodedepartemen'
        Visible = False
      end
    end
    object cgvPrevOutSourcing: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevOutSourcing
      DataController.KeyFieldNames = 'kodeoutsourcing'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevOutSourcingkodeoutsourcing: TcxGridDBColumn
        Caption = 'Kode OutSourcing'
        DataBinding.FieldName = 'kodeoutsourcing'
      end
      object cgvPrevOutSourcingnama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'namaoutsourcing'
      end
      object cgvPrevOutSourcingwarna: TcxGridDBColumn
        Caption = 'Warna'
        DataBinding.FieldName = 'warna'
        PropertiesClassName = 'TcxColorComboBoxProperties'
        Properties.AllowSelectColor = True
        Properties.ColorValueFormat = cxcvInteger
        Properties.CustomColors = <>
      end
    end
    object cgvPrevPendidikan: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPendidikan
      DataController.KeyFieldNames = 'kodependidikan'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevPendidikankodependidikan: TcxGridDBColumn
        Caption = 'Kode Pendidikan'
        DataBinding.FieldName = 'kodependidikan'
      end
      object cgvPrevPendidikanjurusan: TcxGridDBColumn
        Caption = 'Jurusan'
        DataBinding.FieldName = 'jurusan'
      end
    end
    object cgvPegawai: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPegawai
      DataController.KeyFieldNames = 'dmGeneral.cgvPegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'pegawaiid'
          Column = cgvPegawaipegawaiid
          DisplayText = 'Total'
        end>
      DataController.Summary.SummaryGroups = <>
      object cgvPegawainopeg: TcxGridDBColumn
        Caption = 'NIK'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvPegawaibarcode: TcxGridDBColumn
        DataBinding.FieldName = 'barcode'
      end
      object cgvPegawainama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object cgvPegawaialamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
      end
      object cgvPegawaitelp: TcxGridDBColumn
        DataBinding.FieldName = 'telp'
      end
      object cgvPegawaitmplahir: TcxGridDBColumn
        Caption = 'Tempat Lahir'
        DataBinding.FieldName = 'tmplahir'
      end
      object cgvPegawaitgllahir: TcxGridDBColumn
        Caption = 'Tgl Lahir'
        DataBinding.FieldName = 'tgllahir'
      end
      object cgvPegawaitglmasuk: TcxGridDBColumn
        Caption = 'Tgl Masuk'
        DataBinding.FieldName = 'tglmasuk'
      end
      object cgvPegawaisex: TcxGridDBColumn
        Caption = 'Kelamin'
        DataBinding.FieldName = 'sex'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Pria'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Wanita'
            Value = '1'
          end>
        Visible = False
      end
      object cgvPegawaiagama: TcxGridDBColumn
        DataBinding.FieldName = 'agama'
        Visible = False
      end
      object cgvPegawaistsipil: TcxGridDBColumn
        Caption = 'Status Keluarga'
        DataBinding.FieldName = 'stsipil'
        Visible = False
      end
      object cgvPegawaitglkeluar: TcxGridDBColumn
        Caption = 'Tgl Keluar'
        DataBinding.FieldName = 'tglkeluar'
        Visible = False
      end
      object cgvPegawainoktp: TcxGridDBColumn
        Caption = 'No KTP'
        DataBinding.FieldName = 'noktp'
        Visible = False
      end
      object cgvPegawaipegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
      end
      object cgvPegawaiflagastek: TcxGridDBColumn
        Caption = 'Astek'
        DataBinding.FieldName = 'flagastek'
      end
      object cgvPegawainoastek: TcxGridDBColumn
        Caption = 'No Astek'
        DataBinding.FieldName = 'noastek'
      end
      object cgvPegawaitglastek: TcxGridDBColumn
        Caption = 'Tgl Astek'
        DataBinding.FieldName = 'tglastek'
      end
      object cgvPegawaiflagjpk: TcxGridDBColumn
        Caption = 'JPK'
        DataBinding.FieldName = 'flagjpk'
      end
      object cgvPegawaitgljpk: TcxGridDBColumn
        Caption = 'Tgl JPK'
        DataBinding.FieldName = 'tgljpk'
      end
      object cgvPegawaibloodtype: TcxGridDBColumn
        Caption = 'Golongan Darah'
        DataBinding.FieldName = 'bloodtype'
      end
      object cgvPegawaicountryid: TcxGridDBColumn
        Caption = 'Kode Negara'
        DataBinding.FieldName = 'countryid'
      end
      object cgvPegawaiprovinceid: TcxGridDBColumn
        Caption = 'Kode Propinsi'
        DataBinding.FieldName = 'provinceid'
      end
      object cgvPegawaicityid: TcxGridDBColumn
        Caption = 'Kode Kota'
        DataBinding.FieldName = 'cityid'
      end
      object cgvPegawaikodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
      end
      object cgvPegawaiflagproses: TcxGridDBColumn
        Caption = 'Proses'
        DataBinding.FieldName = 'flagproses'
      end
      object cgvPegawaiflagkeluar: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'flagkeluar'
      end
      object cgvPegawaimemo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
      end
      object cgvPegawaikodestatus: TcxGridDBColumn
        Caption = 'Kode Status'
        DataBinding.FieldName = 'kodestatus'
      end
      object cgvPegawaikodegroupshiftid: TcxGridDBColumn
        Caption = 'Kode Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvPegawaikodeoutsourcing: TcxGridDBColumn
        Caption = 'Kode Outsourcing'
        DataBinding.FieldName = 'kodeoutsourcing'
      end
      object cgvPegawaikodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
      end
      object cgvPegawaikodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
      end
      object cgvPegawaikodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
      end
      object cgvPegawaistatusschedule: TcxGridDBColumn
        Caption = 'Status Schedule'
        DataBinding.FieldName = 'statusschedule'
      end
      object cgvPegawaiflagkonfirmasi: TcxGridDBColumn
        Caption = 'Konfirmasi'
        DataBinding.FieldName = 'flagkonfirmasi'
      end
      object cgvPegawaiflagapproveterlambat: TcxGridDBColumn
        Caption = 'Approve Terlambat'
        DataBinding.FieldName = 'flagapproveterlambat'
      end
      object cgvPegawaiflagapproveabsen: TcxGridDBColumn
        Caption = 'Approve Absen'
        DataBinding.FieldName = 'flagapproveabsen'
      end
      object cgvPegawaistatusspl: TcxGridDBColumn
        Caption = 'Status SPL'
        DataBinding.FieldName = 'statusspl'
      end
      object cgvPegawaiflagapprovepulangawal: TcxGridDBColumn
        Caption = 'Pulang Awal'
        DataBinding.FieldName = 'flagapprovepulangawal'
      end
      object cgvPegawaishift: TcxGridDBColumn
        DataBinding.FieldName = 'shift'
      end
    end
    object cgvPrevAssets: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAssets
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevAssetskodeassets: TcxGridDBColumn
        Caption = 'Kode Asset'
        DataBinding.FieldName = 'kodeassets'
      end
      object cgvPrevAssetsnamaassets: TcxGridDBColumn
        Caption = 'Nama Asset'
        DataBinding.FieldName = 'namaassets'
      end
    end
    object cgvPrevSubAssets: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsSubAssets
      DataController.KeyFieldNames = 'kdsubassets'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevSubAssetskodeassets: TcxGridDBColumn
        Caption = 'Kode Assets'
        DataBinding.FieldName = 'kodeassets'
      end
      object cgvPrevSubAssetskodesubassets: TcxGridDBColumn
        Caption = 'Kode Sub Asset'
        DataBinding.FieldName = 'kodesubassets'
      end
      object cgvPrevSubAssetsnamasubassets: TcxGridDBColumn
        Caption = 'Nama Sub Asset'
        DataBinding.FieldName = 'namasubassets'
      end
    end
    object cgvPrevBahasa: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsBahasa
      DataController.KeyFieldNames = 'kodebahasa'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevBahasakodebahasa: TcxGridDBColumn
        Caption = 'Kode Bahasa'
        DataBinding.FieldName = 'kodebahasa'
      end
      object cgvPrevBahasanamabahasa: TcxGridDBColumn
        Caption = 'Nama Bahasa'
        DataBinding.FieldName = 'namabahasa'
      end
    end
    object cgvPrevKeahlian: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsKeahlian
      DataController.KeyFieldNames = 'kodekeahlian'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevKeahliankodekeahlian: TcxGridDBColumn
        Caption = 'Kode Keahlian'
        DataBinding.FieldName = 'kodekeahlian'
      end
      object cgvPrevKeahliannamakeahlian: TcxGridDBColumn
        Caption = 'Nama Keahlian'
        DataBinding.FieldName = 'namakeahlian'
      end
    end
    object cgvStatusKaryawan: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsStatusKaryawan
      DataController.KeyFieldNames = 'kodestatus'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvStatusKaryawankodestatus: TcxGridDBColumn
        Caption = 'Kode Status'
        DataBinding.FieldName = 'kodestatus'
      end
      object cgvStatusKaryawannamastatus: TcxGridDBColumn
        Caption = 'Nama Status'
        DataBinding.FieldName = 'namastatus'
      end
      object cgvStatusKaryawanwarna: TcxGridDBColumn
        Caption = 'Warna'
        DataBinding.FieldName = 'warna'
        PropertiesClassName = 'TcxColorComboBoxProperties'
        Properties.AllowSelectColor = True
        Properties.ColorValueFormat = cxcvInteger
        Properties.CustomColors = <>
      end
    end
    object cgvPrevKodeAbsen: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsKodeAbsen
      DataController.KeyFieldNames = 'kodeabsen'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevKodeAbsenkodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvPrevKodeAbsenketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        SortIndex = 0
        SortOrder = soAscending
        Width = 201
      end
    end
    object cgvPrevPegawai: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPegawai
      DataController.KeyFieldNames = 'pegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPegawaipegawaiid: TcxGridDBColumn
        Caption = 'Pegawaiid'
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
      end
      object cgvPrevPegawainopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvPrevPegawainama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
      object cgvPrevPegawaikodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Visible = False
      end
      object cgvPrevPegawaikodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Visible = False
      end
      object cgvPrevPegawaikodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Visible = False
      end
      object cgvPrevPegawaikodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
      end
      object cgvPrevPegawaikodestatus: TcxGridDBColumn
        Caption = 'Kode Status'
        DataBinding.FieldName = 'kodestatus'
        Visible = False
      end
      object cgvPrevPegawainamaperusahaan: TcxGridDBColumn
        Caption = 'Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
      end
      object cgvPrevPegawainamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
      end
      object cgvPrevPegawainamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'namadepartemen'
      end
      object cgvPrevPegawainamajabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvPrevPegawainamastatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'namastatus'
      end
      object cgvPrevPegawaitglkeluar: TcxGridDBColumn
        Caption = 'Tgl Keluar'
        DataBinding.FieldName = 'tglkeluar'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevPegawaiflagkeluar: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'flagkeluar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
    end
    object cgvPrevJabatan: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsJabatan
      DataController.KeyFieldNames = 'kodejabatan'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevJabatankodejabatan: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kodejabatan'
      end
      object cgvPrevJabatannamajabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
    end
    object cgvPrevPegawaiActive: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevPegawaiActive
      DataController.KeyFieldNames = 'pegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cgvPrevPegawaiActiveStylesGetContentStyle
      object cgvPrevPegawaiActivepegawaiid: TcxGridDBColumn
        Caption = 'ID Peg'
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
      end
      object cgvPrevPegawaiActivenopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
        SortIndex = 0
        SortOrder = soAscending
        Width = 78
      end
      object cgvPrevPegawaiActivenama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 198
      end
      object cgvPrevPegawaiActivekodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Visible = False
      end
      object cgvPrevPegawaiActivekodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Visible = False
      end
      object cgvPrevPegawaiActivekodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Visible = False
      end
      object cgvPrevPegawaiActivekodejabatan: TcxGridDBColumn
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
      end
      object cgvPrevPegawaiActivekodestatus: TcxGridDBColumn
        DataBinding.FieldName = 'kodestatus'
        Visible = False
      end
      object cgvPrevPegawaiActivenamaperusahaan: TcxGridDBColumn
        Caption = 'Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
        Visible = False
      end
      object cgvPrevPegawaiActivenamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'namadivisi'
        Width = 100
      end
      object cgvPrevPegawaiActivenamadepartemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'namadepartemen'
        Width = 121
      end
      object cgvPrevPegawaiActivenamajabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvPrevPegawaiActivenamastatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'namastatus'
      end
      object cgvPrevPegawaiActiveflagkeluar: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'flagkeluar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cgvPrevPegawaiActivetglkeluar: TcxGridDBColumn
        Caption = 'Tgl Keluar'
        DataBinding.FieldName = 'tglkeluar'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 86
      end
      object cgvPrevPegawaiActivekodegroupshiftid: TcxGridDBColumn
        Caption = 'Kode Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
      end
      object cgvPrevPegawaiActiveshift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
      end
      object cgvPrevPegawaiActivenamagroupshift: TcxGridDBColumn
        Caption = 'Nama Group Shift'
        DataBinding.FieldName = 'namagroupshift'
      end
    end
    object cgvPosisiActiveTgl: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevPosisiActiveTglShift
      DataController.KeyFieldNames = 'pegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPosisiActiveTglpegawaiid: TcxGridDBColumn
        Caption = 'ID Peg '
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
      end
      object cgvPosisiActiveTglnopeg: TcxGridDBColumn
        Caption = 'NIK'
        DataBinding.FieldName = 'nopeg'
        Width = 78
      end
      object cgvPosisiActiveTglnama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 176
      end
      object cgvPosisiActiveTglkodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Visible = False
      end
      object cgvPosisiActiveTglnamaperusahaan: TcxGridDBColumn
        Caption = 'Nama Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
        Visible = False
      end
      object cgvPosisiActiveTglkodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Visible = False
      end
      object cgvPosisiActiveTglnamadivisi: TcxGridDBColumn
        Caption = 'Nama Divisi'
        DataBinding.FieldName = 'namadivisi'
        Width = 84
      end
      object cgvPosisiActiveTglkodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Visible = False
      end
      object cgvPosisiActiveTglnamadepartemen: TcxGridDBColumn
        Caption = 'Nama Departemen'
        DataBinding.FieldName = 'namadepartemen'
        Width = 96
      end
      object cgvPosisiActiveTglkodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
      end
      object cgvPosisiActiveTglnamajabatan: TcxGridDBColumn
        Caption = 'Nama Jabatan'
        DataBinding.FieldName = 'namajabatan'
        Visible = False
      end
      object cgvPosisiActiveTglkodestatus: TcxGridDBColumn
        Caption = 'Kode Status'
        DataBinding.FieldName = 'kodestatus'
        Visible = False
      end
      object cgvPosisiActiveTglnamastatus: TcxGridDBColumn
        Caption = 'Nama Status'
        DataBinding.FieldName = 'namastatus'
        Width = 73
      end
    end
    object cgvPosisiActiveTglShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevPosisiActiveTglShift
      DataController.KeyFieldNames = 'pegawaiid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPosisiActiveTglShiftnopeg: TcxGridDBColumn
        Caption = 'NIK'
        DataBinding.FieldName = 'nopeg'
        Width = 79
      end
      object cgvPosisiActiveTglShiftnama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 157
      end
      object cgvPosisiActiveTglShiftnamaperusahaan: TcxGridDBColumn
        Caption = 'Nama Perusahaan'
        DataBinding.FieldName = 'namaperusahaan'
        Visible = False
      end
      object cgvPosisiActiveTglShiftnamadivisi: TcxGridDBColumn
        Caption = 'Nama Divisi'
        DataBinding.FieldName = 'namadivisi'
        Width = 82
      end
      object cgvPosisiActiveTglShiftnamadepartemen: TcxGridDBColumn
        Caption = 'Nama Departemen'
        DataBinding.FieldName = 'namadepartemen'
        Width = 107
      end
      object cgvPosisiActiveTglShiftnamajabatan: TcxGridDBColumn
        Caption = 'Nama Jabatan'
        DataBinding.FieldName = 'namajabatan'
        Visible = False
      end
      object cgvPosisiActiveTglShiftnamastatus: TcxGridDBColumn
        Caption = 'Nama Status'
        DataBinding.FieldName = 'namastatus'
        Width = 73
      end
      object cgvPosisiActiveTglShiftnoreg: TcxGridDBColumn
        Caption = 'No Mutasi'
        DataBinding.FieldName = 'noreg'
        Width = 92
      end
      object cgvPosisiActiveTglShiftuangmakan: TcxGridDBColumn
        Caption = 'Uang Makan'
        DataBinding.FieldName = 'uangmakan'
        Width = 74
      end
      object cgvPosisiActiveTglShiftuangtransport: TcxGridDBColumn
        Caption = 'Uang Transport'
        DataBinding.FieldName = 'uangtransport'
        Width = 80
      end
      object cgvPosisiActiveTglShiftpegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
      end
      object cgvPosisiActiveTglShiftkodeperusahaan: TcxGridDBColumn
        DataBinding.FieldName = 'kodeperusahaan'
      end
      object cgvPosisiActiveTglShiftkodedivisi: TcxGridDBColumn
        DataBinding.FieldName = 'kodedivisi'
      end
      object cgvPosisiActiveTglShiftkodedepartemen: TcxGridDBColumn
        DataBinding.FieldName = 'kodedepartemen'
      end
      object cgvPosisiActiveTglShiftkodejabatan: TcxGridDBColumn
        DataBinding.FieldName = 'kodejabatan'
      end
      object cgvPosisiActiveTglShiftkodestatus: TcxGridDBColumn
        DataBinding.FieldName = 'kodestatus'
      end
      object cgvPosisiActiveTglShiftjamkerjaawal: TcxGridDBColumn
        DataBinding.FieldName = 'jamkerjaawal'
      end
      object cgvPosisiActiveTglShiftjamkerjaakhir: TcxGridDBColumn
        DataBinding.FieldName = 'jamkerjaakhir'
      end
    end
    object cgvPrevKodeJamKerja: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMasterJamKerja
      DataController.KeyFieldNames = 'kodejamkerja'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevKodeJamKerjakodejamkerja: TcxGridDBColumn
        Caption = 'Kode Jam Kerja'
        DataBinding.FieldName = 'kodejamkerja'
      end
      object cgvPrevKodeJamKerjajamkerjaawal: TcxGridDBColumn
        Caption = 'Awal'
        DataBinding.FieldName = 'jamkerjaawal'
      end
      object cgvPrevKodeJamKerjajamkerjaakhir: TcxGridDBColumn
        Caption = 'Akhir'
        DataBinding.FieldName = 'jamkerjaakhir'
      end
      object cgvPrevKodeJamKerjaoverday: TcxGridDBColumn
        Caption = 'Overday'
        DataBinding.FieldName = 'overday'
      end
      object cgvPrevKodeJamKerjaaktif: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'aktif'
      end
    end
    object cgvPrevGroupShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGroupShiftHd
      DataController.KeyFieldNames = 'kodegroupshiftid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupShiftkodegroupshiftid: TcxGridDBColumn
        Caption = 'Kode Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvPrevGroupShiftnamagroupshift: TcxGridDBColumn
        Caption = 'Nama Group'
        DataBinding.FieldName = 'namagroupshift'
      end
    end
    object cgvPrevGroupShiftDt1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGroupShiftDt1
      DataController.KeyFieldNames = 'shift'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupShiftDt1kodegroupshiftid: TcxGridDBColumn
        Caption = 'Kode Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvPrevGroupShiftDt1shift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
      end
    end
    object cgvPrevGroupShiftDt2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGroupShiftDt2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupShiftDt2kodegroupshiftid: TcxGridDBColumn
        Caption = 'Kode Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvPrevGroupShiftDt2kodehari: TcxGridDBColumn
        Caption = 'Hari'
        DataBinding.FieldName = 'kodehari'
      end
      object cgvPrevGroupShiftDt2shift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
      end
      object cgvPrevGroupShiftDt2kodejamkerja: TcxGridDBColumn
        Caption = 'Kode Jam Kerja'
        DataBinding.FieldName = 'kodejamkerja'
      end
      object cgvPrevGroupShiftDt2spl: TcxGridDBColumn
        DataBinding.FieldName = 'spl'
        PropertiesClassName = 'TcxCheckBoxProperties'
      end
    end
    object cgvPrevPayrollType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPayrollType
      DataController.KeyFieldNames = 'payrolltype'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPayrollTypepayrolltype: TcxGridDBColumn
        Caption = 'Kode Komponen Gaji'
        DataBinding.FieldName = 'payrolltype'
      end
      object cgvPrevPayrollTypepayrolltypename: TcxGridDBColumn
        Caption = 'Nama Komponen Gaji'
        DataBinding.FieldName = 'payrolltypename'
      end
    end
    object cgvPrevPayrollDetail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPayrollDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPayrollDetailpegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
      end
      object cgvPrevPayrollDetailkodebank: TcxGridDBColumn
        DataBinding.FieldName = 'kodebank'
      end
      object cgvPrevPayrollDetailkodegroupgaji: TcxGridDBColumn
        DataBinding.FieldName = 'kodegroupgaji'
      end
      object cgvPrevPayrollDetailaccount: TcxGridDBColumn
        DataBinding.FieldName = 'account'
      end
      object cgvPrevPayrollDetailnpwp: TcxGridDBColumn
        DataBinding.FieldName = 'npwp'
      end
      object cgvPrevPayrollDetailstatuspajak: TcxGridDBColumn
        DataBinding.FieldName = 'statuspajak'
      end
      object cgvPrevPayrollDetailmodegaji: TcxGridDBColumn
        DataBinding.FieldName = 'modegaji'
      end
    end
    object cgvPrevGroupGaji: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGroupGaji
      DataController.KeyFieldNames = 'kodegroupgaji'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevGroupGajikodegroupgaji: TcxGridDBColumn
        Caption = 'Kode Group Gaji'
        DataBinding.FieldName = 'kodegroupgaji'
      end
      object cgvPrevGroupGajinamagroupgaji: TcxGridDBColumn
        Caption = 'Nama Group Gaji'
        DataBinding.FieldName = 'namagroupgaji'
      end
    end
    object cgvPrevBank: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsBank
      DataController.KeyFieldNames = 'kodebank'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevBankkodebank: TcxGridDBColumn
        Caption = 'Kode Bank'
        DataBinding.FieldName = 'kodebank'
      end
      object cgvPrevBanknamabank: TcxGridDBColumn
        Caption = 'Nama Bank'
        DataBinding.FieldName = 'namabank'
      end
    end
    object cgvSyaratHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSyaratHd
      DataController.DetailKeyFieldNames = 'nosyarat'
      DataController.KeyFieldNames = 'nosyarat'
      DataController.MasterKeyFieldNames = 'nosyarat'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvSyaratHdnosyarat: TcxGridDBColumn
        Caption = 'No Syarat'
        DataBinding.FieldName = 'nosyarat'
      end
      object cgvSyaratHdnamasyarat: TcxGridDBColumn
        Caption = 'Nama Syarat'
        DataBinding.FieldName = 'namasyarat'
      end
      object cgvSyaratHdstatusproses: TcxGridDBColumn
        DataBinding.FieldName = 'statusproses'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Harian'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Periode'
            Value = '1'
          end>
      end
      object cgvSyaratHdqtyhari: TcxGridDBColumn
        DataBinding.FieldName = 'qtyhari'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvSyaratHdterlambat1: TcxGridDBColumn
        DataBinding.FieldName = 'terlambat1'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvSyaratHdterlambat2: TcxGridDBColumn
        DataBinding.FieldName = 'terlambat2'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvSyaratHdsyntaxquery: TcxGridDBColumn
        DataBinding.FieldName = 'syntaxquery'
      end
      object cgvSyaratHdgrouping: TcxGridDBColumn
        DataBinding.FieldName = 'grouping'
      end
      object cgvSyaratHdflagexecutequery: TcxGridDBColumn
        DataBinding.FieldName = 'flagexecutequery'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cgvSyaratHdflagbayarsesuaitglproses: TcxGridDBColumn
        DataBinding.FieldName = 'flagbayarsesuaitglproses'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cgvSyaratHdflagterlambat: TcxGridDBColumn
        DataBinding.FieldName = 'flagterlambat'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cgvSyaratHdflagsyarat: TcxGridDBColumn
        DataBinding.FieldName = 'flagsyarat'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
    end
    object cgvPrevPeriode: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPeriodeGajiHd
      DataController.KeyFieldNames = 'kodeperiode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPeriodekodeperiode: TcxGridDBColumn
        Caption = 'Kode Periode'
        DataBinding.FieldName = 'kodeperiode'
      end
      object cgvPrevPeriodenamaperiode: TcxGridDBColumn
        Caption = 'Nama Periode'
        DataBinding.FieldName = 'namaperiode'
      end
      object cgvPrevPeriodetglawal: TcxGridDBColumn
        Caption = 'Tgl Awal'
        DataBinding.FieldName = 'tglawal'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevPeriodetglakhir: TcxGridDBColumn
        Caption = 'Tgl Akhir'
        DataBinding.FieldName = 'tglakhir'
        PropertiesClassName = 'TcxDateEditProperties'
      end
    end
    object cgvPrevKodeAbsenAbsenManual: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsKodeAbsenAbsenManual
      DataController.KeyFieldNames = 'kodeabsen'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevKodeAbsenAbsenManualkodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvPrevKodeAbsenAbsenManualketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
      end
    end
    object cgvPrevKodeAbsenTransaksi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsKodeAbsenTransaksi
      DataController.KeyFieldNames = 'kodeabsen'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevKodeAbsenTransaksikodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvPrevKodeAbsenTransaksiketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
      end
    end
  end
  object dsPrevStatusApprove: TDataSource
    DataSet = qryPrevStatusApprove
    Left = 392
    Top = 104
  end
  object dsPerusahaan: TDataSource
    DataSet = qryPerusahaan
    Left = 624
    Top = 56
  end
  object dsDivisi: TDataSource
    DataSet = qryDivisi
    Left = 624
    Top = 104
  end
  object dsPegawai: TDataSource
    DataSet = qryPegawai
    Left = 160
    Top = 56
  end
  object dsDepartemen: TDataSource
    DataSet = qryDepartemen
    Left = 624
    Top = 152
  end
  object dsPrevOutSourcing: TDataSource
    DataSet = qryOutSourcing
    Left = 624
    Top = 200
  end
  object dsPendidikan: TDataSource
    DataSet = qryPendidikan
    Left = 624
    Top = 344
  end
  object dsStatusKaryawan: TDataSource
    DataSet = qryStatusKaryawan
    Left = 624
    Top = 392
  end
  object dsGroupShiftHd: TDataSource
    DataSet = qryGroupShiftHd
    Left = 624
    Top = 440
  end
  object dsLibur: TDataSource
    DataSet = qryLibur
    Left = 392
    Top = 488
  end
  object dsKodeAbsen: TDataSource
    DataSet = qryKodeAbsen
    Left = 163
    Top = 392
  end
  object dsJabatan: TDataSource
    DataSet = qryJabatan
    Left = 163
    Top = 344
  end
  object dsPrevPegawai: TDataSource
    DataSet = qryPrevPegawai
    Left = 392
    Top = 200
  end
  object dsPrevPegawaiActive: TDataSource
    DataSet = qryPrevPegawaiActive
    Left = 392
    Top = 248
  end
  object dsPrevPosisiActiveTglShift: TDataSource
    DataSet = qryPrevPosisiActiveTglShift
    Left = 392
    Top = 392
  end
  object dsMasterJamKerja: TDataSource
    DataSet = qryMasterJamKerja
    Left = 624
    Top = 296
  end
  object dsGroupShiftDt1: TDataSource
    DataSet = qryGroupShiftDt1
    Left = 624
    Top = 488
  end
  object dsGroupShiftDt2: TDataSource
    DataSet = qryGroupShiftDt2
    Left = 624
    Top = 536
  end
  object dsPayrollType: TDataSource
    DataSet = qryPayrollType
    Left = 160
    Top = 536
  end
  object dsPayrollDetail: TDataSource
    DataSet = qryPayrollDetail
    Left = 624
    Top = 680
  end
  object dsGroupGaji: TDataSource
    DataSet = qryGroupGaji
    Left = 160
    Top = 584
  end
  object dsBank: TDataSource
    DataSet = qryBank
    Left = 160
    Top = 632
  end
  object dsPeriodeGajiHd: TDataSource
    DataSet = qryPeriodeGajiHd
    Left = 624
    Top = 584
  end
  object dsPeriodeGajiDt: TDataSource
    DataSet = qryPeriodeGajiDt
    Left = 624
    Top = 632
  end
  object dsTransaksiPayrollHd: TDataSource
    DataSet = qryTransaksiPayrollHd
    Left = 160
    Top = 688
  end
  object dsTransaksiPayrollDt: TDataSource
    DataSet = qryTransaksiPayrollDt
    OnDataChange = dsTransaksiPayrollDtDataChange
    Left = 160
    Top = 736
  end
  object dsPersonValidation: TDataSource
    DataSet = qryPersonValidation
    Left = 160
    Top = 784
  end
  object dsPegawaiApproval: TDataSource
    DataSet = qryPegawaiApproval
    Left = 392
    Top = 152
  end
  object dsKeahlian: TDataSource
    DataSet = qryKeahlian
    Left = 160
    Top = 152
  end
  object dsBahasa: TDataSource
    DataSet = qryBahasa
    Left = 160
    Top = 200
  end
  object dsAssets: TDataSource
    DataSet = qryAssets
    Left = 160
    Top = 248
  end
  object dsSubAssets: TDataSource
    DataSet = qrySubAssets
    Left = 160
    Top = 296
  end
  object dsSyaratHd: TDataSource
    DataSet = qrySyaratHd
    Left = 392
    Top = 344
  end
  object dsSettingGajiNominal: TDataSource
    DataSet = qrySettingGajiNominal
    Left = 392
    Top = 536
  end
  object dsSettingGajiSyarat: TDataSource
    DataSet = qrySettingGajiSyarat
    Left = 392
    Top = 584
  end
  object dsPegawaiFoto: TDataSource
    DataSet = qryPegawaiFoto
    Left = 160
    Top = 104
  end
  object dsKodeAbsenAbsenManual: TDataSource
    DataSet = qryKodeAbsenAbsenManual
    Left = 163
    Top = 440
  end
  object dsKodeAbsenTransaksi: TDataSource
    DataSet = qryKodeAbsenTransaksi
    Left = 163
    Top = 488
  end
  object qryPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPegawaiBeforePost
    AfterPost = qryPegawaiAfterPost
    BeforeDelete = qryPegawaiBeforeDelete
    AfterDelete = qryPegawaiAfterDelete
    OnNewRecord = qryPegawaiNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *,'
      
        '(select namaperusahaan from perusahaan where kodeperusahaan=pega' +
        'wai.kodeperusahaan) as perusahaan, '
      
        '(select namadivisi from divisi where kodedivisi=pegawai.kodedivi' +
        'si) as divisi, '
      
        '(select namadepartemen from departemen where kodedepartemen=pega' +
        'wai.kodedepartemen) as departemen '
      'from pegawai')
    Left = 48
    Top = 56
  end
  object qryJabatan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryJabatanBeforePost
    AfterPost = qryJabatanAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryJabatanAfter
    Parameters = <>
    SQL.Strings = (
      'select * from jabatan')
    Left = 48
    Top = 344
  end
  object qryKodeAbsen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryKodeAbsenAfter
    BeforeDelete = qryKodeAbsenBeforeDelete
    AfterDelete = qryKodeAbsenAfter
    OnNewRecord = qryKodeAbsenNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from kodeabsen'
      'order by kodeabsen')
    Left = 48
    Top = 392
  end
  object qryPrevStatusApprove: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPrevStatusApproveAfter
    AfterDelete = qryPrevStatusApproveAfter
    Parameters = <>
    SQL.Strings = (
      'select '#39'0'#39' as chStatusApprove, '#39'Entry'#39' as vcStatusName'
      'union all'
      'select '#39'1'#39' as chStatusApprove, '#39'App - 1'#39' as vcStatusName'
      'union all'
      'select '#39'2'#39' as chStatusApprove, '#39'App - 2'#39' as vcStatusName'
      'union all'
      'select '#39'3'#39' as chStatusApprove, '#39'App - 3'#39' as vcStatusName'
      'union all'
      'select '#39'4'#39' as chStatusApprove, '#39'App - 4'#39' as vcStatusName'
      'union all'
      'select '#39'5'#39' as chStatusApprove, '#39'Reject'#39' as vcStatusName'
      'union all'
      'select '#39'6'#39' as chStatusApprove, '#39'Done'#39' as vcStatusName')
    Left = 278
    Top = 104
  end
  object qryPrevPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPrevPegawaiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPrevPegawaiAfter
    Parameters = <>
    SQL.Strings = (
      
        'select a.pegawaiid,a.nopeg,a.nama,a.kodeperusahaan,a.kodedivisi,' +
        'a.kodedepartemen,'
      
        'f.kodejabatan,g.kodestatus,b.namaperusahaan,c.namadivisi,d.namad' +
        'epartemen,f.namajabatan,g.namastatus,a.tglkeluar,a.flagkeluar'
      'from Pegawai a'
      'left join Perusahaan b on a.kodeperusahaan=b.kodeperusahaan'
      'left join divisi c on a.kodedivisi=c.kodedivisi'
      'left join departemen d on a.kodedepartemen=d.kodedepartemen'
      'left join jabatan f on a.kodejabatan=f.kodejabatan'
      'left join statuskaryawan g on a.kodestatus=g.kodestatus'
      'order by a.nopeg')
    Left = 280
    Top = 200
  end
  object qryPrevPegawaiActive: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPrevPegawaiActiveAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPrevPegawaiActiveAfter
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.pegawaiid,a.nopeg,a.nama,a.kodeperusahaan,a.kodedivisi,' +
        'a.kodedepartemen,'
      
        'f.kodejabatan,g.kodestatus,b.namaperusahaan,c.namadivisi,d.namad' +
        'epartemen,f.namajabatan,g.namastatus,a.tglkeluar,a.flagkeluar,'
      'a.kodegroupshiftid,a.shift,h.namagroupshift,i.noreg'
      'from Pegawai a'
      'left join Perusahaan b on a.kodeperusahaan=b.kodeperusahaan'
      'left join divisi c on a.kodedivisi=c.kodedivisi'
      'left join departemen d on a.kodedepartemen=d.kodedepartemen'
      'left join jabatan f on a.kodejabatan=f.kodejabatan'
      'left join statuskaryawan g on a.kodestatus=g.kodestatus'
      
        'left join groupshifthd h on a.kodegroupshiftid=h.kodegroupshifti' +
        'd'
      'left join mutasi i on a.Pegawaiid=i.Pegawaiid'
      
        'where tglmulai=(select max(tglmulai) from mutasi where tglmulai<' +
        '=cast(:tgl as datetime) and pegawaiid=a.pegawaiid and statusappr' +
        'ove='#39'1'#39')'
      
        'and (isnull(tglkeluar,'#39#39')='#39#39'  or tglkeluar>cast(:tgl2 as datetim' +
        'e))'
      'order by a.nopeg')
    Left = 280
    Top = 248
  end
  object qryPrevPosisiActiveTglShift: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodeperusahaan'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodedivisi'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodedepartemen'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodejabatan'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodestatus'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
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
        Name = 'statusspl'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodeperusahaan'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodedivisi'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodedepartemen'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodejabatan'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodestatus'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'statusspl'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodeperusahaan'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodedivisi'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodedepartemen'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodejabatan'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodestatus'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'shiftautomatic'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'statusspl'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from'
      '('
      
        'select a.pegawaiid,b.kodegroupshiftid,b.nopeg,b.nama,c.kodeperus' +
        'ahaan,c.namaperusahaan,d.kodedivisi,d.namadivisi,e.kodedeparteme' +
        'n,e.namadepartemen,f.kodejabatan,f.namajabatan,g.kodestatus,g.na' +
        'mastatus,a.noreg,j.jamkerjaawal,j.jamkerjaakhir'
      'from mutasi a left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join perusahaan c on a.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on a.kodedivisi=d.kodedivisi'
      'left join departemen e on a.kodedepartemen=e.kodedepartemen'
      'left join jabatan f on a.kodejabatan=f.kodejabatan'
      'left join statuskaryawan g on a.kodestatus=g.kodestatus'
      
        'left join groupshiftdt2 i on b.kodegroupshiftid=i.kodegroupshift' +
        'id and b.shift=i.shift and i.kodehari=DatePart(weekday,dbo.fnGet' +
        'Date(:tgl))'
      'left join masterjamkerja j on i.kodejamkerja=j.kodejamkerja'
      
        'where tglmulai=(select max(tglmulai) from mutasi where tglmulai<' +
        '=dbo.fnGetDate(:tgl) and pegawaiid=a.pegawaiid and statusapprove' +
        '='#39'1'#39')'
      'and (tglkeluar is null or tglkeluar>dbo.fnGetDate(:tgl))'
      'and a.kodeperusahaan  like :kodeperusahaan'
      'and a.kodedivisi like :kodedivisi'
      'and a.kodedepartemen like :kodedepartemen'
      'and a.kodejabatan like :kodejabatan'
      'and a.kodestatus like :kodestatus'
      'and b.kodegroupshiftid like :kodegroupshiftid'
      'and b.shift like :shift'
      'and b.statusschedule like '#39'0'#39
      'and b.statusspl like :statusspl'
      'union'
      
        'select a.pegawaiid,b.kodegroupshiftid,b.nopeg,b.nama,c.kodeperus' +
        'ahaan,c.namaperusahaan,d.kodedivisi,d.namadivisi,e.kodedeparteme' +
        'n,e.namadepartemen,f.kodejabatan,f.namajabatan,g.kodestatus,g.na' +
        'mastatus,a.noreg,j.jamkerjaawal,j.jamkerjaakhir'
      'from mutasi a left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join perusahaan c on a.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on a.kodedivisi=d.kodedivisi'
      'left join departemen e on a.kodedepartemen=e.kodedepartemen'
      'left join jabatan f on a.kodejabatan=f.kodejabatan'
      'left join statuskaryawan g on a.kodestatus=g.kodestatus'
      
        'left join scheduling h on a.pegawaiid=h.pegawaiid and h.tglsched' +
        'ule = dbo.fnGetDate(:tgl) and h.kodegroupshiftid like :kodegroup' +
        'shiftid and h.shift like :shift'
      
        'left join groupshiftdt2 i on h.kodegroupshiftid=i.kodegroupshift' +
        'id and h.shift=i.shift and i.kodehari=DatePart(weekday,dbo.fnGet' +
        'Date(:tgl))'
      'left join masterjamkerja j on i.kodejamkerja=j.kodejamkerja'
      
        'where tglmulai=(select max(tglmulai) from mutasi where tglmulai<' +
        '=dbo.fnGetDate(:tgl) and pegawaiid=a.pegawaiid and statusapprove' +
        '='#39'1'#39')'
      'and (tglkeluar is null or tglkeluar>dbo.fnGetDate(:tgl))'
      'and a.kodeperusahaan like :kodeperusahaan'
      'and a.kodedivisi like :kodedivisi'
      'and a.kodedepartemen like :kodedepartemen'
      'and a.kodejabatan like :kodejabatan'
      'and a.kodestatus like :kodestatus'
      'and b.statusschedule='#39'1'#39
      'and b.statusspl like :statusspl'
      'union'
      
        'select a.pegawaiid,b.kodegroupshiftid,b.nopeg,b.nama,c.kodeperus' +
        'ahaan,c.namaperusahaan,d.kodedivisi,d.namadivisi,e.kodedeparteme' +
        'n,e.namadepartemen,f.kodejabatan,f.namajabatan,g.kodestatus,g.na' +
        'mastatus,a.noreg,j.jamkerjaawal,j.jamkerjaakhir'
      'from mutasi a left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join perusahaan c on a.kodeperusahaan=c.kodeperusahaan'
      'left join divisi d on a.kodedivisi=d.kodedivisi'
      'left join departemen e on a.kodedepartemen=e.kodedepartemen'
      'left join jabatan f on a.kodejabatan=f.kodejabatan'
      'left join statuskaryawan g on a.kodestatus=g.kodestatus'
      
        'left join groupshiftdt2 i on b.kodegroupshiftid=i.kodegroupshift' +
        'id and i.shift = :shift and i.kodehari=DatePart(weekday,dbo.fnGe' +
        'tDate(:tgl))'
      'left join masterjamkerja j on i.kodejamkerja=j.kodejamkerja'
      
        'where tglmulai=(select max(tglmulai) from mutasi where tglmulai<' +
        '=dbo.fnGetDate(:tgl) and pegawaiid=a.pegawaiid and statusapprove' +
        '='#39'1'#39')'
      'and (tglkeluar is null or tglkeluar>dbo.fnGetDate(:tgl))'
      'and a.kodeperusahaan  like :kodeperusahaan'
      'and a.kodedivisi like :kodedivisi'
      'and a.kodedepartemen like :kodedepartemen'
      'and a.kodejabatan like :kodejabatan'
      'and a.kodestatus like :kodestatus'
      'and b.kodegroupshiftid like :kodegroupshiftid'
      'and i.shift like :shiftautomatic'
      'and b.statusschedule like '#39'2'#39
      'and b.statusspl like :statusspl'
      ') b order by pegawaiid')
    Left = 280
    Top = 392
  end
  object qryPerusahaan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPerusahaanAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPerusahaanAfter
    Parameters = <>
    SQL.Strings = (
      'select * from perusahaan')
    Left = 512
    Top = 56
  end
  object qryDivisi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDivisiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDivisiAfter
    Parameters = <>
    SQL.Strings = (
      'select * from divisi')
    Left = 512
    Top = 104
  end
  object qryDepartemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryDepartemenAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryDepartemenAfter
    DataSource = dsDivisi
    Parameters = <
      item
        Name = 'kodedivisi'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from departemen a'
      'where kodedivisi=:kodedivisi'
      'order by namadepartemen')
    Left = 512
    Top = 152
  end
  object qryOutSourcing: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryOutSourcingAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryOutSourcingAfter
    Parameters = <>
    SQL.Strings = (
      'select * from outsourcing '
      'order by kodeoutsourcing')
    Left = 512
    Top = 200
  end
  object qryPendidikan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPendidikanAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPendidikanAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Pendidikan'
      'order by kodependidikan')
    Left = 512
    Top = 344
  end
  object qryStatusKaryawan: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryStatusKaryawanAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryStatusKaryawanAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from statuskaryawan'
      'order by kodestatus')
    Left = 512
    Top = 392
  end
  object qryGroupShiftHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryGroupShiftHdAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from GroupShiftHd'
      'order by KodeGroupShiftId')
    Left = 512
    Top = 440
  end
  object qryLibur: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryLiburAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryLiburAfter
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
      'select * from libur'
      'where year(tgl) = :tahun and '
      'month(tgl) = :bulan'
      '')
    Left = 280
    Top = 488
  end
  object qryMasterJamKerja: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryMasterJamKerjaAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryMasterJamKerjaAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from MasterJamKerja')
    Left = 512
    Top = 296
  end
  object qryGroupShiftDt1: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryGroupShiftDt1After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryGroupShiftDt1After
    OnNewRecord = qryGroupShiftDt1NewRecord
    DataSource = dsGroupShiftHd
    Parameters = <
      item
        Name = 'KodeGroupShiftId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 'BO'
      end>
    SQL.Strings = (
      'select *'
      'from GroupShiftDt1'
      'where KodeGroupShiftId =:KodeGroupShiftId')
    Left = 512
    Top = 488
  end
  object qryGroupShiftDt2: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryGroupShiftDt2After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryGroupShiftDt2After
    OnNewRecord = qryGroupShiftDt2NewRecord
    DataSource = dsGroupShiftDt1
    Parameters = <
      item
        Name = 'KodeGroupShiftId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 'BO'
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '1'
      end>
    SQL.Strings = (
      'select *'
      'from GroupShiftDt2'
      'where KodeGroupShiftId =:KodeGroupShiftId'
      'and shift=:shift')
    Left = 512
    Top = 536
  end
  object qryPayrollType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPayrollTypeAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPayrollTypeAfter
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from payrolltype')
    Left = 48
    Top = 536
  end
  object qryPayrollDetail: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPayrollDetailAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPayrollDetailAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from payrolldetail'
      'order by pegawaiid,kodegroupgaji')
    Left = 512
    Top = 680
  end
  object qryGroupGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryGroupGajiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryGroupGajiAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from groupgaji')
    Left = 48
    Top = 584
  end
  object qryBank: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryBankAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryBankAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from bank'
      '')
    Left = 48
    Top = 632
  end
  object qryPeriodeGajiHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPeriodeGajiHdAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPeriodeGajiHdAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from periodegajihd')
    Left = 512
    Top = 592
  end
  object qryPeriodeGajiDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPeriodeGajiDtAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPeriodeGajiDtAfter
    DataSource = dsPeriodeGajiHd
    Parameters = <
      item
        Name = 'kodeperiode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from periodegajidt'
      'where kodeperiode=:kodeperiode')
    Left = 512
    Top = 632
  end
  object qryGetLastNo: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NoSyarat'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 ANo'
      'from SyaratDt'
      'where NoSyarat = :NoSyarat'
      'order by Ano desc')
    Left = 278
    Top = 632
  end
  object qryTransaksiPayrollHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryTransaksiPayrollHdAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTransaksiPayrollHdAfter
    OnNewRecord = qryTransaksiPayrollHdNewRecord
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
      'select *'
      'from transaksipayrollhd  '
      'where year(tglpayroll)=:tahun'
      'and month(tglpayroll)=:bulan')
    Left = 48
    Top = 688
  end
  object qryTransaksiPayrollDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryTransaksiPayrollDtAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTransaksiPayrollDtAfter
    OnNewRecord = qryTransaksiPayrollDtNewRecord
    DataSource = dsTransaksiPayrollHd
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from transaksipayrollDt'
      '')
    Left = 48
    Top = 736
  end
  object qryPersonValidation: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPersonValidationAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPersonValidationAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from PersonValidation')
    Left = 48
    Top = 784
  end
  object qryPegawaiApproval: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPegawaiApprovalAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPegawaiApprovalAfter
    OnNewRecord = qryPegawaiApprovalNewRecord
    DataSource = dsPegawai
    Parameters = <
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from pegawaiapproval'
      'where pegawaiid=:pegawaiid')
    Left = 280
    Top = 152
  end
  object qryKeahlian: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryKeahlianAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryKeahlianAfter
    Parameters = <>
    SQL.Strings = (
      'select * from keahlian')
    Left = 48
    Top = 152
  end
  object qryBahasa: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryBahasaAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryBahasaAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Bahasa')
    Left = 48
    Top = 200
  end
  object qryAssets: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryAssetsAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryAssetsAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from Assets')
    Left = 48
    Top = 248
  end
  object qrySubAssets: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySubAssetsAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySubAssetsAfter
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from SubAssets')
    Left = 48
    Top = 296
  end
  object qrySyaratHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySyaratHdAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySyaratHdAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from syarathd')
    Left = 280
    Top = 344
  end
  object qrySettingGajiNominal: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySettingGajiNominalAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySettingGajiNominalAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from settinggajinominal')
    Left = 280
    Top = 536
  end
  object qrySettingGajiSyarat: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySettingGajiSyaratAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySettingGajiSyaratAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from settinggajisyarat')
    Left = 280
    Top = 584
  end
  object qryPegawaiFoto: TADOQuery
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPegawaiFotoAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPegawaiFotoAfter
    DataSource = dsPegawai
    Parameters = <
      item
        Name = 'Pegawaiid'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from PegawaiFoto'
      'where Pegawaiid=:Pegawaiid')
    Left = 48
    Top = 104
  end
  object qryKodeAbsenAbsenManual: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryKodeAbsenAbsenManualAfter
    BeforeDelete = qryKodeAbsenBeforeDelete
    AfterDelete = qryKodeAbsenAbsenManualAfter
    OnNewRecord = qryKodeAbsenNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from kodeabsen'
      'where flagabsenmanual='#39'1'#39)
    Left = 48
    Top = 440
  end
  object qryKodeAbsenTransaksi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryKodeAbsenTransaksiAfter
    BeforeDelete = qryKodeAbsenBeforeDelete
    AfterDelete = qryKodeAbsenTransaksiAfter
    OnNewRecord = qryKodeAbsenNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from kodeabsen'
      'where flagabsenmanual='#39'0'#39)
    Left = 48
    Top = 488
  end
  object qryCariAbsen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryCariAbsenAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCariAbsenAfter
    Parameters = <
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tglkeluar'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select pegawaiid '
      'from absen '
      'where '
      'pegawaiid=:pegawaiid and '
      'tgl>=:tglkeluar')
    Left = 280
    Top = 440
  end
  object qryGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mode'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl'
        Size = -1
        Value = Null
      end
      item
        Name = 'param'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select dbo.fnGetId(:mode,:tgl,:param) as GenCounter')
    Left = 280
    Top = 728
  end
  object qryspGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
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
        Name = 'param'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'exec spSetId :mode,:tgl,:param')
    Left = 280
    Top = 784
  end
  object dsCounterHd: TDataSource
    DataSet = qryCounterHd
    Left = 392
    Top = 680
  end
  object qryCounterHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryCounterHdAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCounterHdAfter
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from CounterHd')
    Left = 280
    Top = 680
  end
  object dsCariABsen: TDataSource
    DataSet = qryCariAbsen
    Left = 392
    Top = 440
  end
  object qryLog: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TransactionLog')
    Left = 280
    Top = 56
  end
  object dsLog: TDataSource
    DataSet = qryLog
    Left = 392
    Top = 56
  end
end
