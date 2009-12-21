/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     06/12/2009 15:08:33                          */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where id = object_id('TR_BeritaAcaraHd_After')
          and type = 'TR')
   drop trigger TR_BeritaAcaraHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_DaftarMuatKapal_After')
          and type = 'TR')
   drop trigger TR_DaftarMuatKapal_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_KonosemenDt_After')
          and type = 'TR')
   drop trigger TR_KonosemenDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_MutasiStorageDt_After')
          and type = 'TR')
   drop trigger TR_MutasiStorageDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_MutasiStorageHd_After')
          and type = 'TR')
   drop trigger TR_MutasiStorageHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PackingTransactionDt_After')
          and type = 'TR')
   drop trigger TR_PackingTransactionDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PackingTransactionHd_After')
          and type = 'TR')
   drop trigger TR_PackingTransactionHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_Stock_After')
          and type = 'TR')
   drop trigger TR_Stock_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_StorageLocation_After')
          and type = 'TR')
   drop trigger TR_StorageLocation_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_SuppliesReceiveDt_After')
          and type = 'TR')
   drop trigger TR_SuppliesReceiveDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_SuppliesReceiveHd_After')
          and type = 'TR')
   drop trigger TR_SuppliesReceiveHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_SuratJalanDt_After')
          and type = 'TR')
   drop trigger TR_SuratJalanDt_After
go

if exists (select 1
          from sysobjects
          where  id = object_id('CurrencyString')
          and type in ('IF', 'FN', 'TF'))
   drop function CurrencyString
go

if exists (select 1
          from sysobjects
          where  id = object_id('Roman')
          and type in ('IF', 'FN', 'TF'))
   drop function Roman
go

if exists (select 1
          from sysobjects
          where  id = object_id('TerbilangDetil')
          and type in ('IF', 'FN', 'TF'))
   drop function TerbilangDetil
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGarbage')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGarbage
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetClosingDate')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetClosingDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetDaftarMuatKapal')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetDaftarMuatKapal
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetDate')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetId')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetId
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetIndexDelimitedbyComma')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetIndexDelimitedbyComma
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetListDelimitedbyComma')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetListDelimitedbyComma
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSetId')
          and type in ('P','PC'))
   drop procedure spSetId
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BeritaAcaraDt') and o.name = 'Data_berita_acara_dipakai_oleh_detail_berita_acara')
alter table BeritaAcaraDt
   drop constraint Data_berita_acara_dipakai_oleh_detail_berita_acara
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BeritaAcaraDt') and o.name = 'Data_lokasi_dipakai_oleh_detail_berita_acara')
alter table BeritaAcaraDt
   drop constraint Data_lokasi_dipakai_oleh_detail_berita_acara
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BeritaAcaraDt') and o.name = 'Data_satuan_dipakai_oleh_detail_berita_acara')
alter table BeritaAcaraDt
   drop constraint Data_satuan_dipakai_oleh_detail_berita_acara
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BeritaAcaraHd') and o.name = 'Data_bongkaran_dipakai_oleh_berita_acara')
alter table BeritaAcaraHd
   drop constraint Data_bongkaran_dipakai_oleh_berita_acara
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BeritaAcaraHd') and o.name = 'Data_merk_dipakai_oleh_berita_acara')
alter table BeritaAcaraHd
   drop constraint Data_merk_dipakai_oleh_berita_acara
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_BOM')
alter table BillMaterialDt
   drop constraint Data_pegawai_dipakai_oleh_detail_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialHd') and o.name = 'Data_pegawai_dipakai_oleh_BOM')
alter table BillMaterialHd
   drop constraint Data_pegawai_dipakai_oleh_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BongkaranHd') and o.name = 'Data_jurusan_dipakai_oleh_bongkaran')
alter table BongkaranHd
   drop constraint Data_jurusan_dipakai_oleh_bongkaran
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BongkaranHd') and o.name = 'Data_kapal_dipakai_oleh_bongkaran')
alter table BongkaranHd
   drop constraint Data_kapal_dipakai_oleh_bongkaran
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BongkaranHd') and o.name = 'Data_krew_kapal_dipakai_oleh_kerani_bongkaran')
alter table BongkaranHd
   drop constraint Data_krew_kapal_dipakai_oleh_kerani_bongkaran
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BongkaranHd') and o.name = 'Data_krew_kapal_dipakai_oleh_komprador_kapal')
alter table BongkaranHd
   drop constraint Data_krew_kapal_dipakai_oleh_komprador_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BongkaranHd') and o.name = 'Data_pegawai_dipakai_oleh_bongkaran')
alter table BongkaranHd
   drop constraint Data_pegawai_dipakai_oleh_bongkaran
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('City') and o.name = 'Data_propinsi_dipakai_oleh_kota')
alter table City
   drop constraint Data_propinsi_dipakai_oleh_kota
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingEstimate') and o.name = 'Data_mata_uang_dipakai_oleh_perkiraan_costing')
alter table CostingEstimate
   drop constraint Data_mata_uang_dipakai_oleh_perkiraan_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingHd') and o.name = 'Data_pegawai_dipakai_oleh_costing')
alter table CostingHd
   drop constraint Data_pegawai_dipakai_oleh_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingItem') and o.name = 'Data_mata_uang_dipakai_oleh_costing_harga_beli')
alter table CostingItem
   drop constraint Data_mata_uang_dipakai_oleh_costing_harga_beli
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingItem') and o.name = 'Data_mata_uang_dipakai_oleh_costing_harga_stock')
alter table CostingItem
   drop constraint Data_mata_uang_dipakai_oleh_costing_harga_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingItem') and o.name = 'Data_mata_uang_dipakai_oleh_costing_per_item')
alter table CostingItem
   drop constraint Data_mata_uang_dipakai_oleh_costing_per_item
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingKurs') and o.name = 'Data_mata_uang_dipakai_oleh_kurs_costing')
alter table CostingKurs
   drop constraint Data_mata_uang_dipakai_oleh_kurs_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingPrice') and o.name = 'Data_mata_uang_dipakai_oleh_harga_costing')
alter table CostingPrice
   drop constraint Data_mata_uang_dipakai_oleh_harga_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CounterDt1') and o.name = 'Reference_14')
alter table CounterDt1
   drop constraint Reference_14
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CounterDt2') and o.name = 'Reference_13')
alter table CounterDt2
   drop constraint Reference_13
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Customer') and o.name = 'Data_kategori_customer_dipakai_oleh_customer')
alter table Customer
   drop constraint Data_kategori_customer_dipakai_oleh_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Customer') and o.name = 'Data_kota_dipakai_oleh_customer')
alter table Customer
   drop constraint Data_kota_dipakai_oleh_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CustomerContact') and o.name = 'Data_customer_dipakai_oleh_contact_person')
alter table CustomerContact
   drop constraint Data_customer_dipakai_oleh_contact_person
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CustomerPhone') and o.name = 'Data_customer_dipakai_oleh_telephone_customer')
alter table CustomerPhone
   drop constraint Data_customer_dipakai_oleh_telephone_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CustomerShippingDetail') and o.name = 'Data_customer_dipakai_oleh_ekspedisi_customer')
alter table CustomerShippingDetail
   drop constraint Data_customer_dipakai_oleh_ekspedisi_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DaftarMuatKapal') and o.name = 'Data_kapal_dipakai_oleh_trayek')
alter table DaftarMuatKapal
   drop constraint Data_kapal_dipakai_oleh_trayek
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DaftarMuatKapal') and o.name = 'Data_krew_kapal_dipakai_oleh_daftar_muat_kapal')
alter table DaftarMuatKapal
   drop constraint Data_krew_kapal_dipakai_oleh_daftar_muat_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DaftarMuatKapal') and o.name = 'Data_pegawai_dipakai_oleh_daftar_muat_kapal')
alter table DaftarMuatKapal
   drop constraint Data_pegawai_dipakai_oleh_daftar_muat_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DaftarMuatKapalRoute') and o.name = 'Daftar_muat_kapal_dipakai_oleh_jurusan_daftar_muat_kapal')
alter table DaftarMuatKapalRoute
   drop constraint Daftar_muat_kapal_dipakai_oleh_jurusan_daftar_muat_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DaftarMuatKapalRoute') and o.name = 'Data_jurusan_di_pakai_oleh_jurusan_daftar_muat_kapal')
alter table DaftarMuatKapalRoute
   drop constraint Data_jurusan_di_pakai_oleh_jurusan_daftar_muat_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DailyKurs') and o.name = 'Data_mata_uang_dipakai_oleh_kurs_harian')
alter table DailyKurs
   drop constraint Data_mata_uang_dipakai_oleh_kurs_harian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Department') and o.name = 'Data_negara_dipakai_pada_department')
alter table Department
   drop constraint Data_negara_dipakai_pada_department
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Display') and o.name = 'Data_laporan_dipakai_oleh_display')
alter table Display
   drop constraint Data_laporan_dipakai_oleh_display
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Employee') and o.name = 'Data_pegawai_dipakai_oleh_posisi_pekerjaan')
alter table Employee
   drop constraint Data_pegawai_dipakai_oleh_posisi_pekerjaan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_pegawai_yang_membuat_hasil_grade')
alter table GradeResultHd
   drop constraint Data_pegawai_yang_membuat_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'Data_pegawai_dipakai_oleh_master_barang')
alter table Item
   drop constraint Data_pegawai_dipakai_oleh_master_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemMinStock') and o.name = 'Data_pegawai_dipakai_oleh_minimum_stok_barang')
alter table ItemMinStock
   drop constraint Data_pegawai_dipakai_oleh_minimum_stok_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JobPosition') and o.name = 'Data_departemen_dipakai_oleh_posisi_pekerjaan')
alter table JobPosition
   drop constraint Data_departemen_dipakai_oleh_posisi_pekerjaan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JournalHd') and o.name = 'Data_pegawai_dipakai_oleh_journal')
alter table JournalHd
   drop constraint Data_pegawai_dipakai_oleh_journal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatHd') and o.name = 'Data_pegawai_dipakai_oleh_kayu_muat')
alter table KayuMuatHd
   drop constraint Data_pegawai_dipakai_oleh_kayu_muat
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Konosemen') and o.name = 'Data_daftar_muat_kapal_dipakai_oleh_konosemen')
alter table Konosemen
   drop constraint Data_daftar_muat_kapal_dipakai_oleh_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Konosemen') and o.name = 'Data_merk_dipakai_oleh_konosemen')
alter table Konosemen
   drop constraint Data_merk_dipakai_oleh_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KonosemenDt') and o.name = 'Data_konosemen_dipakai_oleh_detail_konosemen')
alter table KonosemenDt
   drop constraint Data_konosemen_dipakai_oleh_detail_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KonosemenDt') and o.name = 'Data_satuan_dipakai_oleh_detail_konosemen')
alter table KonosemenDt
   drop constraint Data_satuan_dipakai_oleh_detail_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KonosemenDt') and o.name = 'Data_surat_jalan_dipakai_oleh_konosemen')
alter table KonosemenDt
   drop constraint Data_surat_jalan_dipakai_oleh_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KonosemenDt') and o.name = 'Data_tipe_tarif_dipakai_oleh_detail_konosemen')
alter table KonosemenDt
   drop constraint Data_tipe_tarif_dipakai_oleh_detail_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KonosemenDt') and o.name = 'Data_transaksi_packing_dipakai_oleh_konosemen')
alter table KonosemenDt
   drop constraint Data_transaksi_packing_dipakai_oleh_konosemen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LogProgram') and o.name = 'Data_tipe_log_dipakai_oleh_log_program')
alter table LogProgram
   drop constraint Data_tipe_log_dipakai_oleh_log_program
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Merek') and o.name = 'Data_customer_dipakai_oleh_merek')
alter table Merek
   drop constraint Data_customer_dipakai_oleh_merek
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Merek') and o.name = 'Data_rute_dipakai_oleh_merek')
alter table Merek
   drop constraint Data_rute_dipakai_oleh_merek
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_pegawai_dipakai_oleh_mutasi')
alter table MutasiHd
   drop constraint Data_pegawai_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageDt') and o.name = 'Data_barang_disurat_jalan_dipakai_oleh_mutasi')
alter table MutasiStorageDt
   drop constraint Data_barang_disurat_jalan_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageDt') and o.name = 'Data_mutasi_dipakai_oleh_detail_mutasi')
alter table MutasiStorageDt
   drop constraint Data_mutasi_dipakai_oleh_detail_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageDt') and o.name = 'Data_satuan_dipakai_oleh_pindah_gudang')
alter table MutasiStorageDt
   drop constraint Data_satuan_dipakai_oleh_pindah_gudang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageDt') and o.name = 'Data_transaksi_packing_dipakai_oleh_mutasi')
alter table MutasiStorageDt
   drop constraint Data_transaksi_packing_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Data_daftar_muat_kapal_dipakai_oleh_mutasi')
alter table MutasiStorageHd
   drop constraint Data_daftar_muat_kapal_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Data_lokasi_dipakai_oleh_sumber_mutasi')
alter table MutasiStorageHd
   drop constraint Data_lokasi_dipakai_oleh_sumber_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Data_lokasi_dipakai_oleh_tujuan_mutasi')
alter table MutasiStorageHd
   drop constraint Data_lokasi_dipakai_oleh_tujuan_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Data_pegawai_dipakai_oleh_mutasi_ekspedisi')
alter table MutasiStorageHd
   drop constraint Data_pegawai_dipakai_oleh_mutasi_ekspedisi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionDt') and o.name = 'Data_pegawai_di_pakai_oleh_detail_transaksi_lain')
alter table OtherTransactionDt
   drop constraint Data_pegawai_di_pakai_oleh_detail_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionHd') and o.name = 'Data_pegawai_dipakai_oleh_transaksi_lain')
alter table OtherTransactionHd
   drop constraint Data_pegawai_dipakai_oleh_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionDt') and o.name = 'Data_barang_surat_jalan_dipakai_oleh_transaksi_packing_detail')
alter table PackingTransactionDt
   drop constraint Data_barang_surat_jalan_dipakai_oleh_transaksi_packing_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionDt') and o.name = 'Data_satuan_dipakai_oleh_transaksi_packing')
alter table PackingTransactionDt
   drop constraint Data_satuan_dipakai_oleh_transaksi_packing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionDt') and o.name = 'Data_transaksi_packing_dipakai_transaksi_packing_detail')
alter table PackingTransactionDt
   drop constraint Data_transaksi_packing_dipakai_transaksi_packing_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionHd') and o.name = 'Data_customer_dipakai_oleh_transaction_packing')
alter table PackingTransactionHd
   drop constraint Data_customer_dipakai_oleh_transaction_packing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionHd') and o.name = 'Data_jurusan_dipakai_oleh_transaksi_packing')
alter table PackingTransactionHd
   drop constraint Data_jurusan_dipakai_oleh_transaksi_packing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionHd') and o.name = 'Data_lokasi_dipakai_oleh_packing')
alter table PackingTransactionHd
   drop constraint Data_lokasi_dipakai_oleh_packing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionHd') and o.name = 'Data_merk_dipakai_oleh_transaksi_packing')
alter table PackingTransactionHd
   drop constraint Data_merk_dipakai_oleh_transaksi_packing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PackingTransactionHd') and o.name = 'Reference_72')
alter table PackingTransactionHd
   drop constraint Reference_72
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PositionAccess') and o.name = 'Data_position_pekerjaan_dipakai_oleh_security_program')
alter table PositionAccess
   drop constraint Data_position_pekerjaan_dipakai_oleh_security_program
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionHd') and o.name = 'Data_pegawai_dipakai_oleh_produksi')
alter table ProductionHd
   drop constraint Data_pegawai_dipakai_oleh_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Province') and o.name = 'Data_negara_dipakai_oleh_propinsi')
alter table Province
   drop constraint Data_negara_dipakai_oleh_propinsi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceDt') and o.name = 'Data_pegawai_dipakai_oleh_nota_pembelian_detail')
alter table PurchaseInvoiceDt
   drop constraint Data_pegawai_dipakai_oleh_nota_pembelian_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_mata_uang_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_mata_uang_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_pegawai_dipakai_oleh_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_pegawai_dipakai_oleh_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_pegawai_dipakai_oleh_detail_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_mata_uang_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_mata_uang_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_pegawai_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_pegawai_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_pegawai_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_pegawai_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Report') and o.name = 'Data_kategori_laporan_dipakai_oleh_laporan')
alter table Report
   drop constraint Data_kategori_laporan_dipakai_oleh_laporan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReportCounter') and o.name = 'Data_laporan_dipakai_oleh_counter_laporan')
alter table ReportCounter
   drop constraint Data_laporan_dipakai_oleh_counter_laporan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReportCounter') and o.name = 'Data_pegawai_dipakai_counter_laporan')
alter table ReportCounter
   drop constraint Data_pegawai_dipakai_counter_laporan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Route') and o.name = 'Data_kota_dipakai_oleh_rute_asal')
alter table Route
   drop constraint Data_kota_dipakai_oleh_rute_asal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Route') and o.name = 'Data_kota_dipakai_oleh_rute_tujuan')
alter table Route
   drop constraint Data_kota_dipakai_oleh_rute_tujuan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKDt') and o.name = 'Data_pegawai_dipakai_oleh_SPK_detail')
alter table SPKDt
   drop constraint Data_pegawai_dipakai_oleh_SPK_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKHd') and o.name = 'Data_pegawai_dipakai_oleh_SPK')
alter table SPKHd
   drop constraint Data_pegawai_dipakai_oleh_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalePrice') and o.name = 'Data_harga_jual_dipakai_oleh_customer')
alter table SalePrice
   drop constraint Data_harga_jual_dipakai_oleh_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_pegawai_dipakai_oleh_detail_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderHd') and o.name = 'Data_contact_customer_dipakai_oleh_order_penjualan')
alter table SalesOrderHd
   drop constraint Data_contact_customer_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderHd') and o.name = 'Data_customer_dipakai_oleh_order_penjualan')
alter table SalesOrderHd
   drop constraint Data_customer_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderHd') and o.name = 'Data_mata_uang_dipakai_oleh_order_penjualan')
alter table SalesOrderHd
   drop constraint Data_mata_uang_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderHd') and o.name = 'Data_pegawai_dipakai_oleh_order_penjualan')
alter table SalesOrderHd
   drop constraint Data_pegawai_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Ship') and o.name = 'Data_lokasi_dipakai_oleh_kapal')
alter table Ship
   drop constraint Data_lokasi_dipakai_oleh_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipCrew') and o.name = 'Data_lokasi_dipakai_oleh_crew_kapal')
alter table ShipCrew
   drop constraint Data_lokasi_dipakai_oleh_crew_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipCrew') and o.name = 'Data_posisi_dipakai_oleh_crew_kapal')
alter table ShipCrew
   drop constraint Data_posisi_dipakai_oleh_crew_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipDailyLog') and o.name = 'Data_kapal_dipakai_oleh_log_harian_kapal')
alter table ShipDailyLog
   drop constraint Data_kapal_dipakai_oleh_log_harian_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipHistory') and o.name = 'Data_kapal_dipakai_oleh_history_kapal')
alter table ShipHistory
   drop constraint Data_kapal_dipakai_oleh_history_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipProperty') and o.name = 'Data_kapal_dipakai_oleh_property_kapal')
alter table ShipProperty
   drop constraint Data_kapal_dipakai_oleh_property_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipPropertyDetail') and o.name = 'Data_property_kapal_dipakai_oleh_detail_property_kapal')
alter table ShipPropertyDetail
   drop constraint Data_property_kapal_dipakai_oleh_detail_property_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipRoute') and o.name = 'Data_kapal_dipakai_oleh_rute_kapal')
alter table ShipRoute
   drop constraint Data_kapal_dipakai_oleh_rute_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShipRoute') and o.name = 'Data_rute_dipakai_oleh_rute_kapal')
alter table ShipRoute
   drop constraint Data_rute_dipakai_oleh_rute_kapal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Shipping') and o.name = 'Data_kota_dari_ekspedisi')
alter table Shipping
   drop constraint Data_kota_dari_ekspedisi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShippingDestination') and o.name = 'Data_kota_dipakai_dalam_tujuan_pengiriman')
alter table ShippingDestination
   drop constraint Data_kota_dipakai_dalam_tujuan_pengiriman
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Stock') and o.name = 'Data_barang_surat_jalan_dipakai_oleh_stock')
alter table Stock
   drop constraint Data_barang_surat_jalan_dipakai_oleh_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Stock') and o.name = 'Data_berita_acara_dipakai_oleh_stock')
alter table Stock
   drop constraint Data_berita_acara_dipakai_oleh_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Stock') and o.name = 'Data_lokasi_dipakai_oleh_stock')
alter table Stock
   drop constraint Data_lokasi_dipakai_oleh_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Stock') and o.name = 'Data_satuan_dipakai_oleh_stock')
alter table Stock
   drop constraint Data_satuan_dipakai_oleh_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Stock') and o.name = 'Data_transaksi_packing_dipakai_oleh_data_stock')
alter table Stock
   drop constraint Data_transaksi_packing_dipakai_oleh_data_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveDt') and o.name = 'Data_lokasi_dipakai_oleh_surat_jalan')
alter table SuppliesReceiveDt
   drop constraint Data_lokasi_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveDt') and o.name = 'Data_muat_kapal_dipakai_oleh_penerimaan_barang')
alter table SuppliesReceiveDt
   drop constraint Data_muat_kapal_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveDt') and o.name = 'Data_satuan_dipakai_oleh_detail_penerimaan_barang')
alter table SuppliesReceiveDt
   drop constraint Data_satuan_dipakai_oleh_detail_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveDt') and o.name = 'Data_surat_jalan_dipakai_oleh_detail_surat_jalan')
alter table SuppliesReceiveDt
   drop constraint Data_surat_jalan_dipakai_oleh_detail_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_customer_dipakai_oleh_customer_penerimaan_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_customer_dipakai_oleh_customer_penerimaan_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_customer_dipakai_oleh_pengirim_penerimaan_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_customer_dipakai_oleh_pengirim_penerimaan_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_merek_dipakai_oleh_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_merek_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_pegawai_dipakai_oleh_penerima_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_pegawai_dipakai_oleh_penerima_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_pegawai_dipakai_oleh_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_pegawai_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Data_rute_dipakai_oleh_surat_jalan')
alter table SuppliesReceiveHd
   drop constraint Data_rute_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuratJalanDt') and o.name = 'Data_berita_acara_dipakai_oleh_surat_jalan')
alter table SuratJalanDt
   drop constraint Data_berita_acara_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuratJalanDt') and o.name = 'Data_satuan_dipakai_oleh_detail_surat_jalan')
alter table SuratJalanDt
   drop constraint Data_satuan_dipakai_oleh_detail_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuratJalanDt') and o.name = 'Data_surat_jalan_bongkaran_dipakai_detail_surat_jalan_bongkaran')
alter table SuratJalanDt
   drop constraint Data_surat_jalan_bongkaran_dipakai_detail_surat_jalan_bongkaran
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuratJalanHd') and o.name = 'Data_customer_dipakai_oleh_surat_jalan')
alter table SuratJalanHd
   drop constraint Data_customer_dipakai_oleh_surat_jalan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TarifItem') and o.name = 'Data_rute_dipakai_oleh_tarif_barang')
alter table TarifItem
   drop constraint Data_rute_dipakai_oleh_tarif_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TarifItem') and o.name = 'Data_tipe_tarif_dipakai_oleh_tarif_barang')
alter table TarifItem
   drop constraint Data_tipe_tarif_dipakai_oleh_tarif_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vendor') and o.name = 'Data_kota_dipakai_oleh_supplier')
alter table Vendor
   drop constraint Data_kota_dipakai_oleh_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Warehouse') and o.name = 'Data_kota_dipakai_oleh_gudang')
alter table Warehouse
   drop constraint Data_kota_dipakai_oleh_gudang
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BeritaAcaraDt')
            and   type = 'U')
   drop table BeritaAcaraDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BeritaAcaraHd')
            and   type = 'U')
   drop table BeritaAcaraHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BongkaranHd')
            and   type = 'U')
   drop table BongkaranHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('City')
            and   type = 'U')
   drop table City
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Company')
            and   type = 'U')
   drop table Company
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CounterDt1')
            and   type = 'U')
   drop table CounterDt1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CounterDt2')
            and   type = 'U')
   drop table CounterDt2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CounterHd')
            and   type = 'U')
   drop table CounterHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Country')
            and   type = 'U')
   drop table Country
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CurrencyMaster')
            and   type = 'U')
   drop table CurrencyMaster
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customer')
            and   type = 'U')
   drop table Customer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CustomerCategory')
            and   type = 'U')
   drop table CustomerCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CustomerContact')
            and   type = 'U')
   drop table CustomerContact
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CustomerPhone')
            and   type = 'U')
   drop table CustomerPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DaftarMuatKapal')
            and   type = 'U')
   drop table DaftarMuatKapal
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DaftarMuatKapalRoute')
            and   type = 'U')
   drop table DaftarMuatKapalRoute
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DailyKurs')
            and   type = 'U')
   drop table DailyKurs
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Department')
            and   type = 'U')
   drop table Department
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Display')
            and   type = 'U')
   drop table Display
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Employee')
            and   type = 'U')
   drop table Employee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JobPosition')
            and   type = 'U')
   drop table JobPosition
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Konosemen')
            and   type = 'U')
   drop table Konosemen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KonosemenDt')
            and   type = 'U')
   drop table KonosemenDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LogDictionary')
            and   type = 'U')
   drop table LogDictionary
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LogProgram')
            and   type = 'U')
   drop table LogProgram
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LogType')
            and   type = 'U')
   drop table LogType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MenuOptions')
            and   type = 'U')
   drop table MenuOptions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Merek')
            and   type = 'U')
   drop table Merek
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MutasiStorageDt')
            and   type = 'U')
   drop table MutasiStorageDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MutasiStorageHd')
            and   type = 'U')
   drop table MutasiStorageHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PackingTransactionDt')
            and   type = 'U')
   drop table PackingTransactionDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PackingTransactionHd')
            and   type = 'U')
   drop table PackingTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PositionAccess')
            and   type = 'U')
   drop table PositionAccess
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PositionCrew')
            and   type = 'U')
   drop table PositionCrew
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Province')
            and   type = 'U')
   drop table Province
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Report')
            and   type = 'U')
   drop table Report
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReportCategory')
            and   type = 'U')
   drop table ReportCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReportCounter')
            and   type = 'U')
   drop table ReportCounter
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Route')
            and   type = 'U')
   drop table Route
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Setup')
            and   type = 'U')
   drop table Setup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Ship')
            and   type = 'U')
   drop table Ship
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipCrew')
            and   type = 'U')
   drop table ShipCrew
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipDailyLog')
            and   type = 'U')
   drop table ShipDailyLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipHistory')
            and   type = 'U')
   drop table ShipHistory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipProperty')
            and   type = 'U')
   drop table ShipProperty
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipPropertyDetail')
            and   type = 'U')
   drop table ShipPropertyDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipRoute')
            and   type = 'U')
   drop table ShipRoute
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Stock')
            and   type = 'U')
   drop table Stock
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StorageLocation')
            and   type = 'U')
   drop table StorageLocation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SuppliesReceiveDt')
            and   type = 'U')
   drop table SuppliesReceiveDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SuppliesReceiveHd')
            and   type = 'U')
   drop table SuppliesReceiveHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SuratJalanDt')
            and   type = 'U')
   drop table SuratJalanDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SuratJalanHd')
            and   type = 'U')
   drop table SuratJalanHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableRegistry')
            and   type = 'U')
   drop table TableRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TarifItem')
            and   type = 'U')
   drop table TarifItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TarifType')
            and   type = 'U')
   drop table TarifType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionLog')
            and   type = 'U')
   drop table TransactionLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionRegistry')
            and   type = 'U')
   drop table TransactionRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UnitMeasure')
            and   type = 'U')
   drop table UnitMeasure
go

if exists(select 1 from systypes where name='BeratPlus')
   execute sp_unbindrule BeratPlus
go

if exists(select 1 from systypes where name='BeratPlus')
   drop type BeratPlus
go

if exists(select 1 from systypes where name='BlobFile')
   drop type BlobFile
go

if exists(select 1 from systypes where name='BlobImage')
   drop type BlobImage
go

if exists(select 1 from systypes where name='Counter')
   drop type Counter
go

if exists(select 1 from systypes where name='Currency')
   drop type Currency
go

if exists(select 1 from systypes where name='CurrencyPlus')
   execute sp_unbindrule CurrencyPlus
go

if exists(select 1 from systypes where name='CurrencyPlus')
   drop type CurrencyPlus
go

if exists(select 1 from systypes where name='DateWithTime')
   drop type DateWithTime
go

if exists(select 1 from systypes where name='DateWithoutTime')
   drop type DateWithoutTime
go

if exists(select 1 from systypes where name='Disc')
   execute sp_unbindrule Disc
go

if exists(select 1 from systypes where name='Disc')
   drop type Disc
go

if exists(select 1 from systypes where name='Flag')
   drop type Flag
go

if exists(select 1 from systypes where name='ItemId')
   drop type ItemId
go

if exists(select 1 from systypes where name='LuasPlus')
   execute sp_unbindrule LuasPlus
go

if exists(select 1 from systypes where name='LuasPlus')
   drop type LuasPlus
go

if exists(select 1 from systypes where name='MeasureBigPlus')
   execute sp_unbindrule MeasureBigPlus
go

if exists(select 1 from systypes where name='MeasureBigPlus')
   drop type MeasureBigPlus
go

if exists(select 1 from systypes where name='MeasurePlus')
   execute sp_unbindrule MeasurePlus
go

if exists(select 1 from systypes where name='MeasurePlus')
   drop type MeasurePlus
go

if exists(select 1 from systypes where name='Memo')
   drop type Memo
go

if exists(select 1 from systypes where name='MemoVarchar')
   drop type MemoVarchar
go

if exists(select 1 from systypes where name='Percent')
   drop type "Percent"
go

if exists(select 1 from systypes where name='PercentBig')
   drop type PercentBig
go

if exists(select 1 from systypes where name='Quantity')
   drop type Quantity
go

if exists(select 1 from systypes where name='QuantityPlus')
   execute sp_unbindrule QuantityPlus
go

if exists(select 1 from systypes where name='QuantityPlus')
   drop type QuantityPlus
go

if exists(select 1 from systypes where name='Status')
   drop type Status
go

if exists(select 1 from systypes where name='TransactionCode')
   drop type TransactionCode
go

if exists(select 1 from systypes where name='VolumePlus')
   execute sp_unbindrule VolumePlus
go

if exists(select 1 from systypes where name='VolumePlus')
   drop type VolumePlus
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'D_0'
   )
   drop default D_0
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'D_1'
   )
   drop default D_1
go

if exists (select 1 from sysobjects where id=object_id('R_BeratPlus') and type='R')
   drop rule  R_BeratPlus
go

if exists (select 1 from sysobjects where id=object_id('R_CurrencyPlus') and type='R')
   drop rule  R_CurrencyPlus
go

if exists (select 1 from sysobjects where id=object_id('R_Disc') and type='R')
   drop rule  R_Disc
go

if exists (select 1 from sysobjects where id=object_id('R_LuasPlus') and type='R')
   drop rule  R_LuasPlus
go

if exists (select 1 from sysobjects where id=object_id('R_MeasureBigPlus') and type='R')
   drop rule  R_MeasureBigPlus
go

if exists (select 1 from sysobjects where id=object_id('R_MeasurePlus') and type='R')
   drop rule  R_MeasurePlus
go

if exists (select 1 from sysobjects where id=object_id('R_QuantityPlus') and type='R')
   drop rule  R_QuantityPlus
go

if exists (select 1 from sysobjects where id=object_id('R_VolumePlus') and type='R')
   drop rule  R_VolumePlus
go

create rule R_BeratPlus as
      @column >= 0
go

create rule R_CurrencyPlus as
      @column >= 0
go

create rule R_Disc as
      @column between 0 and 100
go

create rule R_LuasPlus as
      @column >= 0
go

create rule R_MeasureBigPlus as
      @column >= 0
go

create rule R_MeasurePlus as
      @column >= 0
go

create rule R_QuantityPlus as
      @column >= 0
go

create rule R_VolumePlus as
      @column >= 0
go

/*==============================================================*/
/* Default: D_0                                                 */
/*==============================================================*/
create default D_0
    as 0
go

/*==============================================================*/
/* Default: D_1                                                 */
/*==============================================================*/
create default D_1
    as '0'
go

/*==============================================================*/
/* Domain: BeratPlus                                            */
/*==============================================================*/
create type BeratPlus
   from decimal(8,2)
go

execute sp_bindrule R_BeratPlus, BeratPlus
go

execute sp_bindefault D_0, 'BeratPlus'
go

/*==============================================================*/
/* Domain: BlobFile                                             */
/*==============================================================*/
create type BlobFile
   from ntext
go

/*==============================================================*/
/* Domain: BlobImage                                            */
/*==============================================================*/
create type BlobImage
   from image
go

/*==============================================================*/
/* Domain: Counter                                              */
/*==============================================================*/
create type Counter
   from integer
go

execute sp_bindefault D_0, 'Counter'
go

/*==============================================================*/
/* Domain: Currency                                             */
/*==============================================================*/
create type Currency
   from money
go

execute sp_bindefault D_0, 'Currency'
go

/*==============================================================*/
/* Domain: CurrencyPlus                                         */
/*==============================================================*/
create type CurrencyPlus
   from money
go

execute sp_bindrule R_CurrencyPlus, CurrencyPlus
go

execute sp_bindefault D_0, 'CurrencyPlus'
go

/*==============================================================*/
/* Domain: DateWithTime                                         */
/*==============================================================*/
create type DateWithTime
   from datetime
go

/*==============================================================*/
/* Domain: DateWithoutTime                                      */
/*==============================================================*/
create type DateWithoutTime
   from datetime
go

/*==============================================================*/
/* Domain: Disc                                                 */
/*==============================================================*/
create type Disc
   from decimal(5,2)
go

execute sp_bindrule R_Disc, Disc
go

execute sp_bindefault D_0, 'Disc'
go

/*==============================================================*/
/* Domain: Flag                                                 */
/*==============================================================*/
create type Flag
   from char(1)
go

execute sp_bindefault D_1, 'Flag'
go

/*==============================================================*/
/* Domain: ItemId                                               */
/*==============================================================*/
create type ItemId
   from int
go

/*==============================================================*/
/* Domain: LuasPlus                                             */
/*==============================================================*/
create type LuasPlus
   from decimal(10,4)
go

execute sp_bindrule R_LuasPlus, LuasPlus
go

execute sp_bindefault D_0, 'LuasPlus'
go

/*==============================================================*/
/* Domain: MeasureBigPlus                                       */
/*==============================================================*/
create type MeasureBigPlus
   from float
go

execute sp_bindrule R_MeasureBigPlus, MeasureBigPlus
go

execute sp_bindefault D_0, 'MeasureBigPlus'
go

/*==============================================================*/
/* Domain: MeasurePlus                                          */
/*==============================================================*/
create type MeasurePlus
   from decimal(10,4)
go

execute sp_bindrule R_MeasurePlus, MeasurePlus
go

execute sp_bindefault D_0, 'MeasurePlus'
go

/*==============================================================*/
/* Domain: Memo                                                 */
/*==============================================================*/
create type Memo
   from text
go

/*==============================================================*/
/* Domain: MemoVarchar                                          */
/*==============================================================*/
create type MemoVarchar
   from varchar(500)
go

/*==============================================================*/
/* Domain: "Percent"                                            */
/*==============================================================*/
create type "Percent"
   from decimal(5,2)
go

execute sp_bindefault D_0, 'Percent'
go

/*==============================================================*/
/* Domain: PercentBig                                           */
/*==============================================================*/
create type PercentBig
   from decimal(18,2)
go

execute sp_bindefault D_0, 'PercentBig'
go

/*==============================================================*/
/* Domain: Quantity                                             */
/*==============================================================*/
create type Quantity
   from float
go

execute sp_bindefault D_0, 'Quantity'
go

/*==============================================================*/
/* Domain: QuantityPlus                                         */
/*==============================================================*/
create type QuantityPlus
   from float
go

execute sp_bindrule R_QuantityPlus, QuantityPlus
go

execute sp_bindefault D_0, 'QuantityPlus'
go

/*==============================================================*/
/* Domain: Status                                               */
/*==============================================================*/
create type Status
   from char(1)
go

execute sp_bindefault D_1, 'Status'
go

/*==============================================================*/
/* Domain: TransactionCode                                      */
/*==============================================================*/
create type TransactionCode
   from varchar(30)
go

/*==============================================================*/
/* Domain: VolumePlus                                           */
/*==============================================================*/
create type VolumePlus
   from decimal(10,4)
go

execute sp_bindrule R_VolumePlus, VolumePlus
go

execute sp_bindefault D_0, 'VolumePlus'
go

/*==============================================================*/
/* Table: BeritaAcaraDt                                         */
/*==============================================================*/
create table BeritaAcaraDt (
   BeritaAcaraCode      character varying(30) not null,
   SuppliesCode         character varying(30) not null,
   SuppliesName         character varying(50) not null,
   StorageLocationId    numeric              not null,
   Qty                  QuantityPlus         not null,
   UnitMeasureId        numeric              not null,
   QtyKonosemen         QuantityPlus         not null,
   QtySelisih           QuantityPlus         not null,
   QtyOutStanding       QuantityPlus         not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   constraint Key_1 primary key (BeritaAcaraCode, SuppliesCode, SuppliesName)
)
go

/*==============================================================*/
/* Table: BeritaAcaraHd                                         */
/*==============================================================*/
create table BeritaAcaraHd (
   BeritaAcaraCode      character varying(30) not null,
   BongkaranCode        character varying(30) not null,
   BeritaAcaraDate      DateWithTime         not null,
   MerekId              numeric              not null,
   TotalM3              VolumePlus           not null,
   TotalBerat           BeratPlus            not null,
   EmployeeId           varchar(10)          not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   constraint PK_BeritaAcara primary key (BeritaAcaraCode)
)
go

/*==============================================================*/
/* Table: BongkaranHd                                           */
/*==============================================================*/
create table BongkaranHd (
   BongkaranCode        character varying(30) not null,
   ArrivalDate          DateWithTime         not null,
   BongkaranDateStart   DateWithTime         not null,
   BongkaranDateEnd     DateWithTime         not null,
   Kerani               numeric              not null,
   Komprador            numeric              not null,
   ShipId               numeric              not null,
   RouteId              numeric              not null,
   EmployeeId           varchar(10)          not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   constraint PK_Bongkaran primary key (BongkaranCode)
)
go

/*==============================================================*/
/* Table: City                                                  */
/*==============================================================*/
create table City (
   CityId               varchar(5)           not null,
   ProvinceId           varchar(10)          not null,
   CityName             varchar(50)          not null,
   CityExt              varchar(4)           null,
   constraint PK_CITY primary key nonclustered (CityId)
)
go

/*==============================================================*/
/* Table: Company                                               */
/*==============================================================*/
create table Company (
   CompanyId            varchar(10)          not null,
   CompanyName          varchar(40)          not null,
   Address              varchar(40)          null,
   Address2             varchar(40)          null,
   Telephone            varchar(30)          null,
   Fax                  varchar(30)          null,
   Email                varchar(40)          null,
   Website              varchar(40)          null,
   Logo                 BlobImage            null,
   Year                 int                  null,
   FlagFix              Flag                 null,
   constraint PK_COMPANY primary key nonclustered (CompanyId)
)
go

/*==============================================================*/
/* Table: CounterDt1                                            */
/*==============================================================*/
create table CounterDt1 (
   CounterID            char(10)             not null,
   Position             int                  not null,
   Nama                 character varying(30) not null,
   Panjang              int                  not null
      constraint CKC_PANJANG_COUNTERD check (Panjang >= 0),
   CharacterStr         character varying(50) null,
   Reset                character varying(50) null,
   Bentuk               Status               not null,
   Param                Status               null,
   constraint PK_CounterDt1 primary key (CounterID, Position)
)
go

execute sp_bindefault D_0, 'CounterDt1.Panjang'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Table Mode, mis PO mode = 0,SO mode=1
   CounterMode disesuaikan kebutuhan jenis counter di satu tablemode,mis pajak,non pajak
   Position berisi urutan counter
   Reset berisi urutan posisi yang dibandingkan, mis 3,1
   Bentuk ini berisi bentuk counter, mis angka, huruf, romawi dsb',
   'user', @CurrentUser, 'table', 'CounterDt1'
go

/*==============================================================*/
/* Table: CounterDt2                                            */
/*==============================================================*/
create table CounterDt2 (
   CounterID            char(10)             not null,
   Pembanding           character varying(50) not null,
   NilaiSekarang        character varying(50) not null,
   constraint PK_CounterDt2 primary key (CounterID, Pembanding)
)
go

/*==============================================================*/
/* Table: CounterHd                                             */
/*==============================================================*/
create table CounterHd (
   CounterID            char(10)             not null,
   CounterCode          varchar(30)          not null,
   constraint PK_Counter primary key (CounterID)
)
go

execute sp_bindefault D_1, 'CounterHd.CounterCode'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Table Mode, mis PO mode = 0,SO mode=1
   CounterMode disesuaikan kebutuhan jenis counter di satu tablemode,mis pajak,non pajak
   Position berisi urutan counter
   Reset berisi urutan posisi yang dibandingkan, mis 3,1
   Bentuk ini berisi bentuk counter, mis angka, huruf, romawi dsb',
   'user', @CurrentUser, 'table', 'CounterHd'
go

/*==============================================================*/
/* Table: Country                                               */
/*==============================================================*/
create table Country (
   CountryId            varchar(3)           not null,
   CountryName          varchar(30)          not null,
   CountryExt           varchar(4)           null,
   constraint PK_COUNTRY primary key nonclustered (CountryId)
)
go

/*==============================================================*/
/* Table: CurrencyMaster                                        */
/*==============================================================*/
create table CurrencyMaster (
   CurrencyId           varchar(10)          not null,
   CurrencyName         varchar(20)          not null,
   constraint PK_CURRENCYMASTER primary key nonclustered (CurrencyId)
)
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   CustomerId           numeric              identity,
   CustomerCategoryId   numeric              null,
   CityId               varchar(5)           null,
   CustomerCode         varchar(10)          not null,
   CustomerName         varchar(40)          not null,
   Address              MemoVarchar          null,
   Email                varchar(50)          null,
   MemberId             varchar(15)          null,
   CustomerSince        DateWithTime         not null default getdate(),
   NPWP                 varchar(30)          null,
   CreditLimit          Currency             not null,
   InvoiceDue           int                  null,
   DepositBalance       Currency             not null,
   Memo                 text                 null,
   constraint PK_CUSTOMER primary key nonclustered (CustomerId),
   constraint AK_CUSTOMER unique (CustomerCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Batas AR',
   'user', @CurrentUser, 'table', 'Customer', 'column', 'CreditLimit'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Default Jatuh Tempo Nota',
   'user', @CurrentUser, 'table', 'Customer', 'column', 'InvoiceDue'
go

/*==============================================================*/
/* Table: CustomerCategory                                      */
/*==============================================================*/
create table CustomerCategory (
   CustomerCategoryId   numeric              identity,
   CategoryName         varchar(20)          not null,
   constraint PK_CUSTOMERCATEGORY primary key nonclustered (CustomerCategoryId)
)
go

/*==============================================================*/
/* Table: CustomerContact                                       */
/*==============================================================*/
create table CustomerContact (
   CustomerContactId    numeric              identity,
   CustomerId           numeric              not null,
   CustomerContactName  varchar(20)          not null,
   JobPosition          varchar(20)          null,
   Address              varchar(50)          null,
   CountryExt           varchar(4)           null,
   CityExt              varchar(4)           null,
   PhoneNo              varchar(20)          null,
   Email                varchar(50)          null,
   Religi               varchar(10)          null,
   Memo                 text                 null,
   constraint PK_CUSTOMERCONTACT primary key nonclustered (CustomerContactId)
)
go

/*==============================================================*/
/* Table: CustomerPhone                                         */
/*==============================================================*/
create table CustomerPhone (
   CustomerId           numeric              not null,
   OrderNo              int                  null,
   PhoneName            varchar(20)          not null,
   CountryExt           varchar(4)           null,
   CityExt              varchar(4)           null,
   PhoneNo              varchar(20)          not null,
   constraint PK_CUSTOMERPHONE primary key nonclustered (CustomerId, PhoneName)
)
go

/*==============================================================*/
/* Table: DaftarMuatKapal                                       */
/*==============================================================*/
create table DaftarMuatKapal (
   DaftarMuatKapalCode  varchar(30)          not null,
   DaftarMuatKapalDate  DateWithTime         not null,
   ShipId               numeric              not null,
   ShipCrewId           numeric              not null,
   EmployeeId           varchar(10)          not null,
   DaftarMuatKapalOpen  DateWithTime         null,
   DaftarMuatKapalClose DateWithTime         null,
   DaftarMuatKapalDateGo DateWithTime         null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   TotalM3              VolumePlus           not null,
   TotalTon             BeratPlus            not null,
   constraint PK_Trayek primary key (DaftarMuatKapalCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ShipCrewId = Nahkoda kapal secara default diisi sesuai dengan default Nahkoda Kapal',
   'user', @CurrentUser, 'table', 'DaftarMuatKapal'
go

/*==============================================================*/
/* Table: DaftarMuatKapalRoute                                  */
/*==============================================================*/
create table DaftarMuatKapalRoute (
   DaftarMuatKapalCode  varchar(30)          not null,
   RouteId              numeric              not null,
   constraint PK_DaftarMuatKapalRoute primary key (DaftarMuatKapalCode, RouteId)
)
go

/*==============================================================*/
/* Table: DailyKurs                                             */
/*==============================================================*/
create table DailyKurs (
   CurrencyId           varchar(10)          not null,
   KursDate             DateWithoutTime      not null,
   KursValue            CurrencyPlus         null,
   constraint PK_DAILYKURS primary key nonclustered (CurrencyId, KursDate)
)
go

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Department (
   DepartmentId         varchar(5)           not null,
   CompanyId            varchar(10)          not null,
   DepartmentName       varchar(40)          not null,
   FlagFix              Flag                 null,
   constraint PK_DEPARTMENT primary key nonclustered (DepartmentId)
)
go

/*==============================================================*/
/* Table: Display                                               */
/*==============================================================*/
create table Display (
   DisplayId            varchar(20)          not null,
   ProgramId            varchar(10)          not null,
   ReportId             varchar(30)          not null,
   OrderNo              int                  null,
   DisplayName          varchar(60)          not null,
   SQLSyntax            text                 null,
   FilterSyntax         BlobFile             null,
   FlagEnableGroupBox   Flag                 not null,
   FlagEnableColumnFilter Flag                 not null,
   FlagHide             Flag                 not null,
   constraint PK_DISPLAY primary key nonclustered (DisplayId, ProgramId)
)
go

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table Employee (
   EmployeeId           varchar(10)          not null,
   PositionId           varchar(5)           not null,
   EmployeeName         varchar(40)          not null,
   PrefixCode           varchar(3)           null,
   UserName             varchar(20)          not null,
   Password             varchar(30)          null,
   LevelValidation      int                  null default '0',
   FlagInactive         Flag                 null,
   FlagInactiveUser     Flag                 null,
   FlagSalesman         Flag                 null,
   FlagFix              Flag                 null,
   constraint PK_EMPLOYEE primary key nonclustered (EmployeeId),
   constraint AK_EMPLOYEE unique (UserName)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Can Login
   1 = Cannot Login',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'FlagInactiveUser'
go

/*==============================================================*/
/* Table: JobPosition                                           */
/*==============================================================*/
create table JobPosition (
   PositionId           varchar(5)           not null,
   DepartmentId         varchar(5)           not null,
   PositionName         varchar(40)          not null,
   FlagFix              Flag                 null,
   constraint PK_JOBPOSITION primary key nonclustered (PositionId)
)
go

/*==============================================================*/
/* Table: Konosemen                                             */
/*==============================================================*/
create table Konosemen (
   KonosemenCode        varchar(30)          not null,
   DaftarMuatKapalCode  varchar(30)          not null,
   MerekId              numeric              not null,
   KonosemenDate        datetime             not null,
   TarifKonosemen       CurrencyPlus         not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   EmployeeId           varchar(10)          not null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   CustomKonosemen      Status               not null,
   constraint PK_Konosemen primary key (KonosemenCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Pada saat konosemen dibuat maka qtyoutstanding di penerimaan akan dipotong sesuai dengan jumlah konosemen',
   'user', @CurrentUser, 'table', 'Konosemen'
go

/*==============================================================*/
/* Table: KonosemenDt                                           */
/*==============================================================*/
create table KonosemenDt (
   KonosemenCode        varchar(30)          not null,
   KonosemenNo          char(10)             not null,
   ItemReceiveCode      TransactionCode      null,
   No                   int                  null,
   PackingTransactionCode varchar(30)          null,
   TarifTypeId          numeric              not null,
   UnitMeasureId        numeric              not null,
   SuppliesCode         varchar(30)          not null,
   SuppliesName         varchar(50)          not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   Qty                  QuantityPlus         not null,
   Price                CurrencyPlus         not null,
   PriceFra             CurrencyPlus         not null,
   PricePort            CurrencyPlus         not null,
   PricePacking         CurrencyPlus         not null,
   TotalAmount          CurrencyPlus         not null,
   ModeCY               Status               not null,
   constraint PK_KonosemenDt primary key (KonosemenCode, KonosemenNo)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Mode CY
   0 = Port
   1 = Door
   
   ',
   'user', @CurrentUser, 'table', 'KonosemenDt'
go

/*==============================================================*/
/* Table: LogDictionary                                         */
/*==============================================================*/
create table LogDictionary (
   QueryName            varchar(100)         not null,
   TableName            varchar(100)         not null,
   FieldName            varchar(100)         not null,
   DisplayFieldName     varchar(200)         null,
   Value1               varchar(200)         null,
   Value2               varchar(200)         null,
   ReferenceTableName   varchar(100)         null,
   ReferenceKeyField    varchar(100)         null,
   ReferenceFieldDisplay varchar(100)         null,
   KeyField             varchar(100)         null,
   DisplayKeyField      varchar(200)         null,
   constraint PK_LogDictionary primary key (QueryName, TableName, FieldName)
)
go

/*==============================================================*/
/* Table: LogProgram                                            */
/*==============================================================*/
create table LogProgram (
   ProgramId            varchar(10)          not null,
   LogId                varchar(15)          not null,
   LogTypeId            varchar(15)          not null default '0',
   LogDate              datetime             not null,
   EmployeeNameEntry    varchar(40)          not null,
   EmployeeNameValidation varchar(40)          not null,
   Ref                  varchar(20)          null,
   Message              text                 null,
   constraint PK_LOGPROGRAM primary key nonclustered (ProgramId, LogId)
)
go

/*==============================================================*/
/* Table: LogType                                               */
/*==============================================================*/
create table LogType (
   LogTypeId            varchar(15)          not null default '0',
   LogTypeName          varchar(40)          null,
   constraint PK_LOGTYPE primary key nonclustered (LogTypeId)
)
go

/*==============================================================*/
/* Table: MenuOptions                                           */
/*==============================================================*/
create table MenuOptions (
   ProgramId            varchar(10)          not null,
   MenuId               varchar(60)          not null,
   ParentId             varchar(60)          null,
   ActionName           varchar(60)          null,
   LevelValidation      int                  null default '0',
   constraint PK_MENUOPTIONS primary key nonclustered (ProgramId, MenuId)
)
go

/*==============================================================*/
/* Table: Merek                                                 */
/*==============================================================*/
create table Merek (
   MerekId              numeric              identity,
   MerekCode            TransactionCode      not null,
   MerekName            varchar(50)          not null,
   RouteId              numeric              not null,
   CustomerId           numeric              not null,
   constraint PK_Merek primary key (MerekId),
   constraint AK_Merek unique (MerekCode, RouteId)
)
go

/*==============================================================*/
/* Table: MutasiStorageDt                                       */
/*==============================================================*/
create table MutasiStorageDt (
   MutasiCode           TransactionCode      not null,
   MutasiNo             integer              not null,
   ItemReceiveCode      TransactionCode      null,
   No                   int                  null,
   PackingTransactionCode varchar(30)          null,
   Qty                  QuantityPlus         null,
   UnitMeasureId        numeric              not null,
   SuppliesCode         TransactionCode      not null,
   SuppliesName         varchar(50)          not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   constraint PK_MutasiStorageDt primary key (MutasiCode, MutasiNo)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Mutasi akan memindahkan stok barang dari satu lokasi ke lokasi lain',
   'user', @CurrentUser, 'table', 'MutasiStorageDt'
go

/*==============================================================*/
/* Table: MutasiStorageHd                                       */
/*==============================================================*/
create table MutasiStorageHd (
   MutasiCode           TransactionCode      not null,
   MutasiDate           DateWithTime         not null,
   StorageLocationIdSource numeric              not null,
   StorageLocationIdDest numeric              not null,
   EmployeeId           varchar(10)          not null,
   DaftarMuatKapalCode  varchar(30)          null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   constraint PK_MutasiStorageHd primary key (MutasiCode)
)
go

/*==============================================================*/
/* Table: PackingTransactionDt                                  */
/*==============================================================*/
create table PackingTransactionDt (
   PackingTransactionCode varchar(30)          not null,
   PackingTransactionNo int                  not null,
   ItemReceiveCode      TransactionCode      not null,
   No                   int                  not null,
   UnitMeasureId        numeric              not null,
   Qty                  QuantityPlus         not null,
   SuppliesCode         TransactionCode      not null,
   SuppliesName         varchar(50)          not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   QtyOutStanding       QuantityPlus         not null,
   QtyTotal             QuantityPlus         null,
   constraint PK_PackingTransactionDt primary key (PackingTransactionCode, PackingTransactionNo, ItemReceiveCode, No)
)
go

/*==============================================================*/
/* Table: PackingTransactionHd                                  */
/*==============================================================*/
create table PackingTransactionHd (
   PackingTransactionCode varchar(30)          not null,
   StorageLocationId    numeric              not null,
   MerekId              numeric              not null,
   RouteId              numeric              not null,
   CustomerId           numeric              null,
   UnitMeasureId        numeric              null,
   PackingTransactionDate DateWithTime         not null,
   PackingAlias         varchar(30)          null,
   T                    QuantityPlus         null,
   L                    QuantityPlus         null,
   P                    QuantityPlus         null,
   Berat                BeratPlus            null,
   Qty                  QuantityPlus         not null,
   QtyOutStanding       QuantityPlus         not null,
   Price                CurrencyPlus         not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   EmployeeId           varchar(10)          not null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   TotalM3              VolumePlus           not null,
   TotalBerat           BeratPlus            not null,
   PackingClose         Status               null,
   constraint PK_PackingTransactionHd primary key (PackingTransactionCode)
)
go

/*==============================================================*/
/* Table: PositionAccess                                        */
/*==============================================================*/
create table PositionAccess (
   ProgramId            varchar(10)          not null,
   MenuId               varchar(60)          not null,
   ActionName           varchar(60)          not null,
   PositionId           varchar(5)           not null,
   MaxReprint           int                  null default '0',
   FlagOpen             Flag                 not null,
   FlagInsert           Flag                 not null,
   FlagEdit             Flag                 not null,
   FlagDelete           Flag                 not null,
   constraint PK_POSITIONACCESS primary key nonclustered (ProgramId, MenuId, ActionName, PositionId)
)
go

/*==============================================================*/
/* Table: PositionCrew                                          */
/*==============================================================*/
create table PositionCrew (
   PositionId           numeric              identity,
   PositionName         char(10)             not null,
   constraint PK_PositionCrew primary key (PositionId)
)
go

/*==============================================================*/
/* Table: Province                                              */
/*==============================================================*/
create table Province (
   ProvinceId           varchar(10)          not null,
   CountryId            varchar(3)           not null,
   ProvinceName         varchar(50)          not null,
   constraint PK_PROVINCE primary key nonclustered (ProvinceId)
)
go

/*==============================================================*/
/* Table: Report                                                */
/*==============================================================*/
create table Report (
   ProgramId            varchar(10)          not null,
   ReportId             varchar(30)          not null,
   ReportCategoryId     numeric              null,
   OrderNo              int                  null,
   ReportName           varchar(60)          not null,
   Name1                varchar(40)          null,
   Name2                varchar(40)          null,
   Name3                varchar(40)          null,
   Name4                varchar(40)          null,
   Name5                varchar(40)          null,
   Name6                varchar(40)          null,
   Printer              varchar(40)          null,
   FileBlob             BlobFile             null,
   FlagShowDialog       Flag                 not null,
   FlagShowProgress     Flag                 not null,
   FlagHide             Flag                 not null,
   FlagDotMatrix        Flag                 not null,
   FlagDoCounter        Flag                 null,
   constraint PK_REPORT primary key nonclustered (ReportId, ProgramId)
)
go

/*==============================================================*/
/* Table: ReportCategory                                        */
/*==============================================================*/
create table ReportCategory (
   ReportCategoryId     numeric              identity,
   ReportCategoryName   varchar(20)          not null,
   FlagHide             Flag                 null,
   constraint PK_ReportCategory primary key (ReportCategoryId)
)
go

/*==============================================================*/
/* Table: ReportCounter                                         */
/*==============================================================*/
create table ReportCounter (
   EmployeeId           varchar(10)          not null,
   ReportId             varchar(30)          not null,
   ProgramId            varchar(10)          not null,
   ReportCounterDate    DateWithoutTime      not null,
   ReportCount          int                  null default '0',
   constraint PK_REPORTCOUNTER primary key nonclustered (EmployeeId, ReportId, ProgramId, ReportCounterDate)
)
go

/*==============================================================*/
/* Table: Route                                                 */
/*==============================================================*/
create table Route (
   RouteId              numeric              identity,
   RouteCode            TransactionCode      not null,
   RouteName            varchar(50)          not null,
   DepatureCityId       varchar(5)           not null,
   DestinationCityId    varchar(5)           not null,
   constraint PK_Route primary key (RouteId),
   constraint AK_Route unique (RouteCode)
)
go

/*==============================================================*/
/* Table: Setup                                                 */
/*==============================================================*/
create table Setup (
   ProgramId            varchar(10)          not null,
   SetupId              varchar(10)          not null,
   SetupName            varchar(50)          not null,
   SetupValue           varchar(30)          null default '0',
   constraint PK_SETUP primary key nonclustered (ProgramId, SetupId)
)
go

/*==============================================================*/
/* Table: Ship                                                  */
/*==============================================================*/
create table Ship (
   ShipId               numeric              identity,
   StorageLocationId    numeric              not null,
   ShipCode             TransactionCode      not null,
   ShipName             varchar(30)          not null,
   EngineName           varchar(30)          null,
   Origin               varchar(20)          null,
   YearMade             varchar(4)           null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   GrossTon             MeasurePlus          not null,
   NettoTon             MeasurePlus          not null,
   FlagMuat             Flag                 not null,
   constraint PK_Ship primary key (ShipId),
   constraint AK_Ship unique (ShipCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ShipCrewId = Nahkoda kapal',
   'user', @CurrentUser, 'table', 'Ship'
go

/*==============================================================*/
/* Table: ShipCrew                                              */
/*==============================================================*/
create table ShipCrew (
   ShipCrewId           numeric              identity,
   StorageLocationId    numeric              null,
   PositionId           numeric              null,
   ShipCrewCode         TransactionCode      not null,
   ShipCrewName         varchar(50)          not null,
   constraint PK_ShipCrew primary key (ShipCrewId)
)
go

/*==============================================================*/
/* Table: ShipDailyLog                                          */
/*==============================================================*/
create table ShipDailyLog (
   ShipId               numeric              not null,
   ShipLogDate          DateWithTime         not null,
   ShipPosition         varchar(50)          not null,
   StatusWeather        Status               not null,
   EmployeeId           varchar(10)          not null,
   DaftarMuatKapalCode  varchar(30)          not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   constraint PK_ShipDailyLog primary key (ShipId, ShipLogDate)
)
go

/*==============================================================*/
/* Table: ShipHistory                                           */
/*==============================================================*/
create table ShipHistory (
   ShipId               numeric              not null,
   Cek                  Flag                 null,
   HistoryDate          DateWithTime         not null,
   Ket1                 varchar(Max)         null,
   ket2                 varchar(Max)         null,
   constraint PK_ShipHistory primary key (ShipId, HistoryDate)
)
go

/*==============================================================*/
/* Table: ShipProperty                                          */
/*==============================================================*/
create table ShipProperty (
   ShipId               numeric              not null,
   Property             varchar(100)         not null,
   constraint PK_ShipProperty primary key (ShipId, Property)
)
go

/*==============================================================*/
/* Table: ShipPropertyDetail                                    */
/*==============================================================*/
create table ShipPropertyDetail (
   ShipId               numeric              not null,
   Property             varchar(100)         not null,
   Detail               varchar(100)         not null,
   Value                varchar(100)         null,
   Keterangan           varchar(500)         null,
   constraint PK_ShipPropertyDetail primary key (ShipId, Property, Detail)
)
go

/*==============================================================*/
/* Table: ShipRoute                                             */
/*==============================================================*/
create table ShipRoute (
   ShipId               numeric              not null,
   RouteId              numeric              not null,
   constraint PK_ShipRoute primary key (ShipId, RouteId)
)
go

/*==============================================================*/
/* Table: Stock                                                 */
/*==============================================================*/
create table Stock (
   StockId              ItemId               identity,
   StorageLocationId    numeric              not null,
   ItemReceiveCode      TransactionCode      null,
   No                   int                  null,
   PackingTransactionCode varchar(30)          null,
   BeritaAcaraCode      character varying(30) null,
   SuppliesCode         character varying(30) not null,
   SuppliesName         character varying(50) not null,
   UnitMeasureId        numeric              not null,
   Qty                  QuantityPlus         not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   ReferenceCode        varchar(30)          not null,
   Mode                 Status               not null,
   StorageInDate        DateWithTime         not null,
   constraint PK_Stock primary key (StockId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Saat ada trigger jika posisi pada kapal 
    Insert : maka akan dibuatkan konosemen sesuai dengan data stok dan 
    update : merubah data konosemen
    delete : menghapus data konosemen kalo udah dibuat
   ',
   'user', @CurrentUser, 'table', 'Stock'
go

/*==============================================================*/
/* Table: StorageLocation                                       */
/*==============================================================*/
create table StorageLocation (
   StorageLocationId    numeric              identity,
   StorageLocationCode  TransactionCode      not null,
   StorageLocationName  varchar(50)          not null,
   FlagShipStorage      Flag                 not null,
   constraint PK_StorageLocation primary key (StorageLocationId),
   constraint AK_StorageLocation unique (StorageLocationCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'FlagShipStorage
   ''0'' = gudang
   ''1'' = kapal',
   'user', @CurrentUser, 'table', 'StorageLocation'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0=Gudang Fisik
   1=Gudang Kapal',
   'user', @CurrentUser, 'table', 'StorageLocation', 'column', 'FlagShipStorage'
go

/*==============================================================*/
/* Table: SuppliesReceiveDt                                     */
/*==============================================================*/
create table SuppliesReceiveDt (
   ItemReceiveCode      TransactionCode      not null,
   No                   int                  not null,
   SuppliesCode         TransactionCode      not null,
   SuppliesName         varchar(50)          not null,
   StorageLocationId    numeric              not null,
   DaftarMuatKapalCode  varchar(30)          null,
   UnitMeasureId        numeric              not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   Qty                  QuantityPlus         not null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   QtyOutStanding       QuantityPlus         not null,
   QtyRetur             QuantityPlus         not null,
   constraint PK_SuppliesReceiveDt primary key (ItemReceiveCode, No)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Default Qty Packing = Qty dan berkurang pada saat barang di packing
   Default QtyOutStanding = Qty dan berkurang pada saat di bongkar
   Daftar Muat Kapal akan diisi hanya jika storage location adalah kapal
   
   Trigger akan memasukkan data dari surat jalan ke stok
   
   
   ',
   'user', @CurrentUser, 'table', 'SuppliesReceiveDt'
go

/*==============================================================*/
/* Table: SuppliesReceiveHd                                     */
/*==============================================================*/
create table SuppliesReceiveHd (
   ItemReceiveCode      TransactionCode      not null,
   ItemReceiveDate      DateWithTime         not null,
   NoSuratJalan         varchar(30)          not null,
   JenisKendaraan       varchar(15)          null,
   NoPolisi             varchar(10)          null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   EmployeeId           varchar(10)          not null,
   MerekId              numeric              not null,
   RouteId              numeric              not null,
   Penerima             varchar(10)          not null,
   CustomerId           numeric              not null,
   PengirimId           numeric              not null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   constraint PK_SuppliesReceiveHd primary key (ItemReceiveCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'EmployeeId adalah orang yang menginputkan surat jalan
   Penerima adalah orang yang menerima barang
   Merek harus disimpan karena harus tahu mereknya 1 customer bisa punya banyak merek
   kalo ada perubahan di Merk harus dicek soal Merk dengan customer karena redundant maka harus dicek',
   'user', @CurrentUser, 'table', 'SuppliesReceiveHd'
go

/*==============================================================*/
/* Table: SuratJalanDt                                          */
/*==============================================================*/
create table SuratJalanDt (
   SuratJalanCode       character varying(30) not null,
   No                   int                  not null,
   BeritaAcaraCode      character varying(30) null,
   SuppliesCode         character varying(30) not null,
   SuppliesName         character varying(50) not null,
   UnitMeasureId        numeric              not null,
   Qty                  QuantityPlus         not null,
   P                    MeasurePlus          null,
   L                    MeasurePlus          null,
   T                    MeasurePlus          null,
   Berat                MeasurePlus          null,
   TotalM3              MeasureBigPlus       not null,
   TotalBerat           MeasureBigPlus       not null,
   constraint PK_SuratJalanDt primary key (SuratJalanCode, No)
)
go

/*==============================================================*/
/* Table: SuratJalanHd                                          */
/*==============================================================*/
create table SuratJalanHd (
   SuratJalanCode       character varying(30) not null,
   CustomerId           numeric              not null,
   SuratJalanDate       DateWithTime         not null,
   TotalM3              VolumePlus           not null,
   TotalBerat           BeratPlus            not null,
   EmployeeId           varchar(10)          not null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              not null,
   StatusApprove        Status               not null,
   Penerima             character varying(50) not null,
   constraint PK_SuratJalanHd primary key (SuratJalanCode)
)
go

/*==============================================================*/
/* Table: TableRegistry                                         */
/*==============================================================*/
create table TableRegistry (
   TableName            varchar(30)          not null,
   CounterId            bigint               null default 0,
   constraint PK_TableRegistry primary key nonclustered (TableName)
)
go

/*==============================================================*/
/* Table: TarifItem                                             */
/*==============================================================*/
create table TarifItem (
   TarifTypeId          numeric              not null,
   RouteId              numeric              not null,
   Price                CurrencyPlus         not null,
   PriceFra             CurrencyPlus         not null,
   constraint PK_TarifItem primary key (TarifTypeId, RouteId)
)
go

/*==============================================================*/
/* Table: TarifType                                             */
/*==============================================================*/
create table TarifType (
   TarifTypeId          numeric              identity,
   TarifTypeCode        TransactionCode      not null,
   TarifTypeName        varchar(50)          not null,
   StatusDimensi        Status               not null,
   constraint PK_TarifType primary key (TarifTypeId),
   constraint AK_TarifType unique (TarifTypeCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Status Dimensi
   0 = total kubikasi / m3 (selalu) harus dicek total m3 ada tidak
   1 = total luas / m2 (selalu) harus dicek total m2 ada tidak
   2 = total berat / kg (selalu) harus dicek total berat ada tidak
   3 = unit / qty  harus dicek qty ada tidak
   4= borongan / langsung harganya tidak perlu di cek harga bisa nol kalo disewa 1 kapal
   ',
   'user', @CurrentUser, 'table', 'TarifType'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0=Kubikasi
   1=Berat
   2=Quantity',
   'user', @CurrentUser, 'table', 'TarifType', 'column', 'StatusDimensi'
go

/*==============================================================*/
/* Table: TransactionLog                                        */
/*==============================================================*/
create table TransactionLog (
   "User"               varchar(10)          not null,
   TransactionDate      DateWithTime         not null,
   Action               Status               not null,
   TableName            varchar(30)          not null,
   Description          varchar(500)         null,
   KeyField             varchar(30)          not null,
   constraint PK_TransactionLog primary key ("User", TransactionDate, Action, TableName, KeyField)
)
go

/*==============================================================*/
/* Table: TransactionRegistry                                   */
/*==============================================================*/
create table TransactionRegistry (
   TableName            varchar(30)          not null,
   Prefix               varchar(10)          not null,
   Year                 int                  not null,
   ValueRun             bigint               null default '0',
   Value1               bigint               null default '0',
   Value2               bigint               null default '0',
   Value3               bigint               null default '0',
   Value4               bigint               null default '0',
   Value5               bigint               null default '0',
   Value6               bigint               null default '0',
   Value7               bigint               null default '0',
   Value8               bigint               null default '0',
   Value9               bigint               null default '0',
   Value10              bigint               null default '0',
   Value11              bigint               null default '0',
   Value12              bigint               null default '0',
   constraint PK_TRANSACTIONREGISTRY primary key nonclustered (TableName, Prefix, Year)
)
go

/*==============================================================*/
/* Table: UnitMeasure                                           */
/*==============================================================*/
create table UnitMeasure (
   UnitMeasureId        numeric              identity,
   UnitMeasureCode      varchar(10)          not null,
   UnitMeasureName      varchar(30)          not null,
   constraint PK_Satuan primary key (UnitMeasureId)
)
go

alter table BeritaAcaraDt
   add constraint Data_berita_acara_dipakai_oleh_detail_berita_acara foreign key (BeritaAcaraCode)
      references BeritaAcaraHd (BeritaAcaraCode)
go

alter table BeritaAcaraDt
   add constraint Data_lokasi_dipakai_oleh_detail_berita_acara foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
go

alter table BeritaAcaraDt
   add constraint Data_satuan_dipakai_oleh_detail_berita_acara foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table BeritaAcaraHd
   add constraint Data_bongkaran_dipakai_oleh_berita_acara foreign key (BongkaranCode)
      references BongkaranHd (BongkaranCode)
go

alter table BeritaAcaraHd
   add constraint Data_merk_dipakai_oleh_berita_acara foreign key (MerekId)
      references Merek (MerekId)
go

alter table BongkaranHd
   add constraint Data_jurusan_dipakai_oleh_bongkaran foreign key (RouteId)
      references Route (RouteId)
go

alter table BongkaranHd
   add constraint Data_kapal_dipakai_oleh_bongkaran foreign key (ShipId)
      references Ship (ShipId)
go

alter table BongkaranHd
   add constraint Data_krew_kapal_dipakai_oleh_kerani_bongkaran foreign key (Kerani)
      references ShipCrew (ShipCrewId)
go

alter table BongkaranHd
   add constraint Data_krew_kapal_dipakai_oleh_komprador_kapal foreign key (Komprador)
      references ShipCrew (ShipCrewId)
go

alter table BongkaranHd
   add constraint Data_pegawai_dipakai_oleh_bongkaran foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table City
   add constraint Data_propinsi_dipakai_oleh_kota foreign key (ProvinceId)
      references Province (ProvinceId)
go

alter table CounterDt1
   add constraint Reference_14 foreign key (CounterID)
      references CounterHd (CounterID)
go

alter table CounterDt2
   add constraint Reference_13 foreign key (CounterID)
      references CounterHd (CounterID)
go

alter table Customer
   add constraint Data_kategori_customer_dipakai_oleh_customer foreign key (CustomerCategoryId)
      references CustomerCategory (CustomerCategoryId)
go

alter table Customer
   add constraint Data_kota_dipakai_oleh_customer foreign key (CityId)
      references City (CityId)
go

alter table CustomerContact
   add constraint Data_customer_dipakai_oleh_contact_person foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table CustomerPhone
   add constraint Data_customer_dipakai_oleh_telephone_customer foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table DaftarMuatKapal
   add constraint Data_kapal_dipakai_oleh_trayek foreign key (ShipId)
      references Ship (ShipId)
go

alter table DaftarMuatKapal
   add constraint Data_krew_kapal_dipakai_oleh_daftar_muat_kapal foreign key (ShipCrewId)
      references ShipCrew (ShipCrewId)
go

alter table DaftarMuatKapal
   add constraint Data_pegawai_dipakai_oleh_daftar_muat_kapal foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table DaftarMuatKapalRoute
   add constraint Daftar_muat_kapal_dipakai_oleh_jurusan_daftar_muat_kapal foreign key (DaftarMuatKapalCode)
      references DaftarMuatKapal (DaftarMuatKapalCode)
go

alter table DaftarMuatKapalRoute
   add constraint Data_jurusan_di_pakai_oleh_jurusan_daftar_muat_kapal foreign key (RouteId)
      references Route (RouteId)
go

alter table DailyKurs
   add constraint Data_mata_uang_dipakai_oleh_kurs_harian foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table Department
   add constraint Data_negara_dipakai_pada_department foreign key (CompanyId)
      references Company (CompanyId)
go

alter table Display
   add constraint Data_laporan_dipakai_oleh_display foreign key (ReportId, ProgramId)
      references Report (ReportId, ProgramId)
go

alter table Employee
   add constraint Data_pegawai_dipakai_oleh_posisi_pekerjaan foreign key (PositionId)
      references JobPosition (PositionId)
go

alter table JobPosition
   add constraint Data_departemen_dipakai_oleh_posisi_pekerjaan foreign key (DepartmentId)
      references Department (DepartmentId)
go

alter table Konosemen
   add constraint Data_daftar_muat_kapal_dipakai_oleh_konosemen foreign key (DaftarMuatKapalCode)
      references DaftarMuatKapal (DaftarMuatKapalCode)
go

alter table Konosemen
   add constraint Data_merk_dipakai_oleh_konosemen foreign key (MerekId)
      references Merek (MerekId)
go

alter table KonosemenDt
   add constraint Data_konosemen_dipakai_oleh_detail_konosemen foreign key (KonosemenCode)
      references Konosemen (KonosemenCode)
go

alter table KonosemenDt
   add constraint Data_satuan_dipakai_oleh_detail_konosemen foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table KonosemenDt
   add constraint Data_surat_jalan_dipakai_oleh_konosemen foreign key (ItemReceiveCode, No)
      references SuppliesReceiveDt (ItemReceiveCode, No)
go

alter table KonosemenDt
   add constraint Data_tipe_tarif_dipakai_oleh_detail_konosemen foreign key (TarifTypeId)
      references TarifType (TarifTypeId)
go

alter table KonosemenDt
   add constraint Data_transaksi_packing_dipakai_oleh_konosemen foreign key (PackingTransactionCode)
      references PackingTransactionHd (PackingTransactionCode)
go

alter table LogProgram
   add constraint Data_tipe_log_dipakai_oleh_log_program foreign key (LogTypeId)
      references LogType (LogTypeId)
go

alter table Merek
   add constraint Data_customer_dipakai_oleh_merek foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table Merek
   add constraint Data_rute_dipakai_oleh_merek foreign key (RouteId)
      references Route (RouteId)
go

alter table MutasiStorageDt
   add constraint Data_barang_disurat_jalan_dipakai_oleh_mutasi foreign key (ItemReceiveCode, No)
      references SuppliesReceiveDt (ItemReceiveCode, No)
go

alter table MutasiStorageDt
   add constraint Data_mutasi_dipakai_oleh_detail_mutasi foreign key (MutasiCode)
      references MutasiStorageHd (MutasiCode)
go

alter table MutasiStorageDt
   add constraint Data_satuan_dipakai_oleh_pindah_gudang foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table MutasiStorageDt
   add constraint Data_transaksi_packing_dipakai_oleh_mutasi foreign key (PackingTransactionCode)
      references PackingTransactionHd (PackingTransactionCode)
go

alter table MutasiStorageHd
   add constraint Data_daftar_muat_kapal_dipakai_oleh_mutasi foreign key (DaftarMuatKapalCode)
      references DaftarMuatKapal (DaftarMuatKapalCode)
go

alter table MutasiStorageHd
   add constraint Data_lokasi_dipakai_oleh_sumber_mutasi foreign key (StorageLocationIdSource)
      references StorageLocation (StorageLocationId)
go

alter table MutasiStorageHd
   add constraint Data_lokasi_dipakai_oleh_tujuan_mutasi foreign key (StorageLocationIdDest)
      references StorageLocation (StorageLocationId)
go

alter table MutasiStorageHd
   add constraint Data_pegawai_dipakai_oleh_mutasi_ekspedisi foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table PackingTransactionDt
   add constraint Data_barang_surat_jalan_dipakai_oleh_transaksi_packing_detail foreign key (ItemReceiveCode, No)
      references SuppliesReceiveDt (ItemReceiveCode, No)
go

alter table PackingTransactionDt
   add constraint Data_satuan_dipakai_oleh_transaksi_packing foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table PackingTransactionDt
   add constraint Data_transaksi_packing_dipakai_transaksi_packing_detail foreign key (PackingTransactionCode)
      references PackingTransactionHd (PackingTransactionCode)
go

alter table PackingTransactionHd
   add constraint Data_customer_dipakai_oleh_transaction_packing foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table PackingTransactionHd
   add constraint Data_jurusan_dipakai_oleh_transaksi_packing foreign key (RouteId)
      references Route (RouteId)
go

alter table PackingTransactionHd
   add constraint Data_lokasi_dipakai_oleh_packing foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
go

alter table PackingTransactionHd
   add constraint Data_merk_dipakai_oleh_transaksi_packing foreign key (MerekId)
      references Merek (MerekId)
go

alter table PackingTransactionHd
   add constraint Reference_72 foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table PositionAccess
   add constraint Data_position_pekerjaan_dipakai_oleh_security_program foreign key (PositionId)
      references JobPosition (PositionId)
go

alter table Province
   add constraint Data_negara_dipakai_oleh_propinsi foreign key (CountryId)
      references Country (CountryId)
go

alter table Report
   add constraint Data_kategori_laporan_dipakai_oleh_laporan foreign key (ReportCategoryId)
      references ReportCategory (ReportCategoryId)
go

alter table ReportCounter
   add constraint Data_laporan_dipakai_oleh_counter_laporan foreign key (ReportId, ProgramId)
      references Report (ReportId, ProgramId)
go

alter table ReportCounter
   add constraint Data_pegawai_dipakai_counter_laporan foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table Route
   add constraint Data_kota_dipakai_oleh_rute_asal foreign key (DepatureCityId)
      references City (CityId)
go

alter table Route
   add constraint Data_kota_dipakai_oleh_rute_tujuan foreign key (DestinationCityId)
      references City (CityId)
go

alter table Ship
   add constraint Data_lokasi_dipakai_oleh_kapal foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
         on update cascade on delete cascade
go

alter table ShipCrew
   add constraint Data_lokasi_dipakai_oleh_crew_kapal foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
go

alter table ShipCrew
   add constraint Data_posisi_dipakai_oleh_crew_kapal foreign key (PositionId)
      references PositionCrew (PositionId)
go

alter table ShipDailyLog
   add constraint Data_kapal_dipakai_oleh_log_harian_kapal foreign key (ShipId)
      references Ship (ShipId)
go

alter table ShipHistory
   add constraint Data_kapal_dipakai_oleh_history_kapal foreign key (ShipId)
      references Ship (ShipId)
go

alter table ShipProperty
   add constraint Data_kapal_dipakai_oleh_property_kapal foreign key (ShipId)
      references Ship (ShipId)
go

alter table ShipPropertyDetail
   add constraint Data_property_kapal_dipakai_oleh_detail_property_kapal foreign key (ShipId, Property)
      references ShipProperty (ShipId, Property)
go

alter table ShipRoute
   add constraint Data_kapal_dipakai_oleh_rute_kapal foreign key (ShipId)
      references Ship (ShipId)
go

alter table ShipRoute
   add constraint Data_rute_dipakai_oleh_rute_kapal foreign key (RouteId)
      references Route (RouteId)
go

alter table Stock
   add constraint Data_barang_surat_jalan_dipakai_oleh_stock foreign key (ItemReceiveCode, No)
      references SuppliesReceiveDt (ItemReceiveCode, No)
         on delete cascade
go

alter table Stock
   add constraint Data_berita_acara_dipakai_oleh_stock foreign key (BeritaAcaraCode, SuppliesCode, SuppliesName)
      references BeritaAcaraDt (BeritaAcaraCode, SuppliesCode, SuppliesName)
go

alter table Stock
   add constraint Data_lokasi_dipakai_oleh_stock foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
go

alter table Stock
   add constraint Data_satuan_dipakai_oleh_stock foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table Stock
   add constraint Data_transaksi_packing_dipakai_oleh_data_stock foreign key (PackingTransactionCode)
      references PackingTransactionHd (PackingTransactionCode)
go

alter table SuppliesReceiveDt
   add constraint Data_lokasi_dipakai_oleh_surat_jalan foreign key (StorageLocationId)
      references StorageLocation (StorageLocationId)
go

alter table SuppliesReceiveDt
   add constraint Data_muat_kapal_dipakai_oleh_penerimaan_barang foreign key (DaftarMuatKapalCode)
      references DaftarMuatKapal (DaftarMuatKapalCode)
go

alter table SuppliesReceiveDt
   add constraint Data_satuan_dipakai_oleh_detail_penerimaan_barang foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table SuppliesReceiveDt
   add constraint Data_surat_jalan_dipakai_oleh_detail_surat_jalan foreign key (ItemReceiveCode)
      references SuppliesReceiveHd (ItemReceiveCode)
go

alter table SuppliesReceiveHd
   add constraint Data_customer_dipakai_oleh_customer_penerimaan_surat_jalan foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table SuppliesReceiveHd
   add constraint Data_customer_dipakai_oleh_pengirim_penerimaan_surat_jalan foreign key (PengirimId)
      references Customer (CustomerId)
go

alter table SuppliesReceiveHd
   add constraint Data_merek_dipakai_oleh_surat_jalan foreign key (MerekId)
      references Merek (MerekId)
go

alter table SuppliesReceiveHd
   add constraint Data_pegawai_dipakai_oleh_penerima_surat_jalan foreign key (Penerima)
      references Employee (EmployeeId)
go

alter table SuppliesReceiveHd
   add constraint Data_pegawai_dipakai_oleh_surat_jalan foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table SuppliesReceiveHd
   add constraint Data_rute_dipakai_oleh_surat_jalan foreign key (RouteId)
      references Route (RouteId)
go

alter table SuratJalanDt
   add constraint Data_berita_acara_dipakai_oleh_surat_jalan foreign key (BeritaAcaraCode, SuppliesCode, SuppliesName)
      references BeritaAcaraDt (BeritaAcaraCode, SuppliesCode, SuppliesName)
go

alter table SuratJalanDt
   add constraint Data_satuan_dipakai_oleh_detail_surat_jalan foreign key (UnitMeasureId)
      references UnitMeasure (UnitMeasureId)
go

alter table SuratJalanDt
   add constraint Data_surat_jalan_bongkaran_dipakai_detail_surat_jalan_bongkaran foreign key (SuratJalanCode)
      references SuratJalanHd (SuratJalanCode)
go

alter table SuratJalanHd
   add constraint Data_customer_dipakai_oleh_surat_jalan foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table TarifItem
   add constraint Data_rute_dipakai_oleh_tarif_barang foreign key (RouteId)
      references Route (RouteId)
go

alter table TarifItem
   add constraint Data_tipe_tarif_dipakai_oleh_tarif_barang foreign key (TarifTypeId)
      references TarifType (TarifTypeId)
go


create function CurrencyString (@angka as decimal(19,2))
RETURNS varchar (200) AS
BEGIN
 Declare 
  @b Decimal, 
  @r Decimal, 
  @J Decimal, 
  @M Decimal, 
  @T1 Decimal, 
  @koma1 Decimal, 
  @koma2 Integer, 
  @hasil varchar(200),
  @s_t varchar(200), 
  @ribu varchar(200), 
  @Juta varchar(200), 
  @Miliar varchar(200), 
  @tx varchar(200), 
  @angka1 varchar(200), 
  @tx1 varchar(200)

set @s_t = case 
             when Len(rTrim(cast(cast(@Angka as bigint) as varchar(20)))) < 15 then replicate('0',15 - Len(rTrim(cast(cast(@Angka as bigint) as varchar(20))))) + rTrim(cast(cast(@Angka as bigint) as varchar(20)))
             else rTrim(cast(cast(@Angka as bigint) as varchar(20)))
           end

set @r = cast(Right(@s_t, 3) as integer)
set @b = cast(substring(@s_t, 10, 3) as integer)
set @J = cast(substring(@s_t, 7, 3) as integer)
set @M = cast(substring(@s_t, 4, 3) as integer)
set @T1 = cast(Left(@s_t, 3) as integer)
set @ribu = case 
              when @b = 0 then ' ' 
              else 
                case when @b = 1 then 'Seribu' 
                    else [dbo].TerbilangDetil(@b) + 'Ribu' 
                end 
            end
set @Juta = case when @J = 0 then ' ' else [dbo].TerbilangDetil(@J) + 'Juta ' end
set @Miliar = case when @M = 0 then ' ' else [dbo].TerbilangDetil(@M) + 'Miliar' end
set @tx = Case
when @Angka < 1000 
then [dbo].TerbilangDetil(@r)
when @Angka < 1000000 
then @ribu + ' ' + [dbo].TerbilangDetil(@r)
when @Angka < 1000000000 
then [dbo].TerbilangDetil(@J) + '' + rTrim('Juta ' + @ribu) + ' ' + [dbo].TerbilangDetil(@r)
when @Angka < 1000000000000 
then [dbo].TerbilangDetil(@M) + '' + rTrim('Miliar ' + @Juta + @ribu) + ' ' + [dbo].TerbilangDetil(@r)
when @Angka < 1000000000000 
then [dbo].TerbilangDetil(@T1) + '' + rTrim('Trilliun ' + @Miliar + @Juta + @ribu) + ' ' + [dbo].TerbilangDetil(@r)
End
set @angka1 = rTrim(cast(@Angka as varchar(20)))
set @koma1 = case when charindex('.', @angka1) = 0 then 0 else cast(rTrim(substring(@angka1, charindex('.',@angka1) + 1, 2)) as integer) end
set @koma2 = Len(case when charindex('.',@angka1) = 0 then '0' else rTrim(substring(@angka1, charindex('.',@angka1) + 1, 2)) end)
If @koma1 > 0
begin
 If @koma1 < 10 And @koma2 = 1
  set @koma1 = @koma1 * 10
  set @tx1 = [dbo].TerbilangDetil(@koma1)
  set @hasil = @tx + 'Rupiah ' + @tx1 + 'Sen'
end
Else
set @hasil = @tx + 'Rupiah'
return (@hasil)
END
go


create function Roman 
(
  @arabic int
) returns varchar(30) as begin
  if @arabic > 10000 return '*'
  declare @roman varchar(30)
  set @roman = replicate('M',@arabic/1000)
  set @arabic = @arabic%1000
  set @roman = @roman + replicate('C',@arabic/100)
  set @arabic = @arabic%100
  set @roman = @roman + replicate('X',@arabic/10)
  set @arabic = @arabic%10
  set @roman = @roman + replicate('I',@arabic)

  set @roman = replace(@roman,replicate('C',9),'CM')
  set @roman = replace(@roman,replicate('X',9),'XC')
  set @roman = replace(@roman,replicate('I',9),'IX')

  set @roman = replace(@roman,replicate('C',5),'D')
  set @roman = replace(@roman,replicate('X',5),'L')
  set @roman = replace(@roman,replicate('I',5),'V')

  set @roman = replace(@roman,replicate('C',4),'CD')
  set @roman = replace(@roman,replicate('X',4),'XL')
  set @roman = replace(@roman,replicate('I',4),'IV')

  return @roman
end
go


create function TerbilangDetil (@Nilai as decimal) 
RETURNS varchar(200) AS
BEGIN
declare 
  @TS varchar(200), 
  @ST varchar(200), 
  @S integer, 
  @p integer, 
  @r1 integer, 
  @Bil varchar(200), 
  @TP varchar(200), 
  @hasil varchar(200)

  set @ST = Right(rTrim(Str(@Nilai + 1000)), 3)
  set @S = cast(Right(@ST, 1) as integer)
  set @p = cast(substring(@ST, 2, 1) as integer)
  set @r1 = cast(Left(@ST, 1) as integer)
  set @Bil = 'Satu    Dua     Tiga    Empat   Lima    Enam    Tujuh   Delapan Sembilan'

  If @S = 0
     set @TS = ''
  Else
     set @TS = rTrim(substring(@Bil, @S * 8 - 7, 8)) + ' '

  If @p = 0
     set @TP = @TS
  Else
     If @p = 1
        If @S = 0
           set @TP = 'Sepuluh '
        Else
           If @S = 1
              set @TP = 'Sebelas '
           Else
              set @TP = rTrim(substring(@Bil, @S * 8 - 7, 8)) + ' Belas '
     Else
        set @TP = rTrim(substring(@Bil, @p * 8 - 7, 8)) + ' Puluh ' + @TS

If @r1 = 0
   set @hasil = @TP
Else
   If @r1 = 1
      set @hasil = 'Seratus ' + @TP
   Else
      set @hasil = rTrim(substring(@Bil, @r1 * 8 - 7, 8)) + ' Ratus ' + @TP
 return @hasil
END
go


create function fnGarbage (@Rand int)
RETURNS varchar(50)
as
begin
  declare 
   @Garbage varchar(50),
   @GarbageTemp varchar(50),
   @GarbageTemp2 varchar(50),
   @Proses varchar(2),
   @Date datewithtime,
   @tgl varchar(2),
   @bulan varchar(2),
   @tahun varchar(2),
   @jam varchar(2),
   @menit varchar(2),
   @Template varchar(10),
   @i int

  set @Template='^&$#+@~?\<'

  set @Garbage=''
 
  set @Date='2007/06/21 16:45'

  select 
   @tahun=substring(cast(datepart(year,@Date) as varchar),3,2),
   @bulan=replicate('0',2-len(cast(datepart(month,@Date) as varchar)))+cast(datepart(month,@Date) as varchar),
   @tgl=replicate('0',2-len(cast(datepart(day,@Date) as varchar)))+cast(datepart(day,@Date) as varchar),
   @jam=replicate('0',2-len(cast(datepart(Hour,@Date) as varchar)))+cast(datepart(Hour,@Date) as varchar),
   @menit=replicate('0',2-len(cast(datepart(minute,@Date) as varchar)))+cast(datepart(minute,@Date) as varchar)

  set @GarbageTemp=@Tgl+@Jam+@Bulan+@Menit+@tahun

  set @i=1

  set @GarbageTemp2=''

  while (@i <= 10) 
  begin
    set @Proses=replicate('0',2-len(cast((cast(substring(@GarbageTemp,@i,1) as integer)+@rand) as varchar)))+cast((cast(substring(@GarbageTemp,@i,1) as integer)+@rand) as varchar)
    if cast(substring(@Proses,2,1) as int)<>0
      set @GarbageTemp2=@GarbageTemp2+substring(@Template,cast(substring(@Proses,2,1) as int),1)
    else
      set @GarbageTemp2=@GarbageTemp2+substring(@Template,10,1)
    set @i=@i+1
  end 

  if @Rand=1 
     set @Garbage='{'+@GarbageTemp2
  if @Rand=2 
     set @Garbage='|'+@GarbageTemp2
  if @Rand=3 
     set @Garbage='='+@GarbageTemp2

  Return(@Garbage)
end
go


create function fnGetClosingDate ()
RETURNS Datetime
begin
  declare @ClosingDate Datetime;
  
  select @ClosingDate = cast(SetupValue as Datetime) 
  from Setup 
  where SetupId = 'GLB01'  
  if @ClosingDate is null
    set @ClosingDate = '19000101'

  set @ClosingDate = DateAdd(dd, 0, DateDiff(dd, 0, @ClosingDate)) + DateAdd(ms, 86399998, 0)  
  
  Return(@ClosingDate);
end
go


create function fnGetDaftarMuatKapal (@StorageLocationId numeric,@RouteId numeric)  
RETURNS varchar(30)
begin

  declare 
    @DaftarMuatKapalCode varchar(30),
    @ShipId numeric(18,0)

  select @ShipId=ShipId
  from Ship
  where StorageLocationId=@StorageLocationId

  select @DaftarMuatKapalCode=DaftarMuatKapalCode
  from DaftarMuatKapal
  where @ShipId=@ShipId and @RouteId=@RouteId and not DaftarMuatKapalOpen is null and DaftarMuatKapalClose is null 

  Return(@DaftarMuatKapalCode)
end
go


create function fnGetDate (@ATgl Datetime) 
RETURNS Datetime
begin

  declare 
   @Tgl datetime

  set @Tgl=convert(datetime,cast(datepart(yyyy,@ATgl) as varchar)+'/'+cast(datepart(mm,@ATgl) as varchar)+'/'+cast(datepart(dd,@ATgl) as varchar),111)

  Return(@Tgl)
end
go


create function fnGetId (@ACounterCode varchar(30),@ATgl Datetime,@AParam1 varchar(50)) 
RETURNS varchar(50)
begin

  --bentuk tergantung dari namanya
  --0 : angka (0,1,2)
  --1 : romawi (I,IV)
  --2 : kata (Aug)
  --3 : huruf (a,b,c,d)
  declare 
    @Temp varchar(50),
    @NilaiSekarang varchar(50),
    @Param varchar(50),
    @CounterId varchar(10),
    @TempNomorBaru varchar(50),
    @NomorBaruComma varchar(50),
    @TempNomorPembanding varchar(50),
    @TempStr varchar(50),
    @NomorBaru varchar(50),
    @Position int,
    @Nama varchar(30),
    @Panjang int,
    @CharacterStr varchar(50),
    @Reset varchar(50),
    @Bentuk Status

  set @NomorBaru=''
  set @NomorBaruComma=''

  declare Setting_Nomor cursor for
    select a.CounterId,b.Position,b.Nama,b.Panjang,b.CharacterStr,b.Reset,b.Bentuk,b.Param
    from CounterHd a left join CounterDt1 b on a.CounterId=b.CounterId
    where a.CounterCode =@ACounterCode
    order by b.position asc

  open Setting_Nomor
  fetch next from Setting_Nomor
  into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param

  while @@FETCH_STATUS = 0
  begin  
    set @TempNomorBaru=''
    
    if (@Nama=1) 
    begin
	  if (@panjang>0)
	  begin
        if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=left(ltrim(rtrim(dbo.roman(month(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
	  end
	  else
	  begin
		if (@Bentuk=1)
        begin
          set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES'   
                              end)
        end
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))  
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(month(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))
	  end
    end

    if (@Nama=2) 
    begin
	  if (@panjang>0)
	  begin	
		if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(year(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
      end
	  else
	  begin
		if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(year(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
	  end
	end

    if (@Nama=3) 
    begin
      if @Panjang>0
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(day(@ATgl)))),@Panjang)
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)
      end
      else
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl))) 
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(day(@ATgl))))
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))
      end   
    end

    if (@Nama=4) 
    begin
	  if @panjang>0
      begin
	    if @Param<>0 
          set @TempNomorBaru=left(ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param))),@Panjang)   
        else
          set @TempNomorBaru=left(ltrim(rtrim(@characterstr)),@Panjang) 
	  end
	  else
	  begin
		if @Param<>0 
          set @TempNomorBaru=ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param)))   
        else
          set @TempNomorBaru=ltrim(rtrim(@characterstr))
	  end  
    end

    if (@Nama=5) 
    begin
      set @TempNomorBaru=''
    end

    fetch next from Setting_Nomor
    into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param
  
    set @NomorBaruComma=@NomorBaruComma+@TempNomorBaru+','

  end

  close Setting_Nomor
 
  open Setting_Nomor
  fetch next from Setting_Nomor
  into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param

  while @@FETCH_STATUS = 0
  begin  
    set @TempNomorBaru=''

    if (@Nama=1) 
    begin
	  if (@panjang>0)
	  begin
        if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=left(ltrim(rtrim(dbo.roman(month(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
	  end
	  else
	  begin
		if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))  
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(month(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))
	  end
    end

    if (@Nama=2) 
    begin
	  if (@panjang>0)
	  begin	
		if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(year(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
      end
	  else
	  begin
		if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(year(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
	  end
	end

    if (@Nama=3) 
    begin
      if @Panjang>0
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(day(@ATgl)))),@Panjang)
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)
      end
      else
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl))) 
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(day(@ATgl))))
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))
      end   
    end

    if (@Nama=4) 
    begin
	  if @panjang>0
      begin
	    if @Param<>0 
          set @TempNomorBaru=left(ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param))),@Panjang)   
        else
          set @TempNomorBaru=left(ltrim(rtrim(@characterstr)),@Panjang) 
	  end
	  else
	  begin
		if @Param<>0 
          set @TempNomorBaru=ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param)))   
        else
          set @TempNomorBaru=ltrim(rtrim(@characterstr))
	  end  
    end

    if (@Nama=5) 
    begin
      set @TempNomorPembanding=''
    
      while (@reset<>'')
      begin
        if (patindex('%,%',@reset)<>0)
        begin
          --set @TempNomorPembanding=@TempNomorPembanding+left(@reset,patindex('%,%',@reset)-1)
          set @TempNomorPembanding=@TempNomorPembanding+dbo.fnGetListDelimitedbyComma(@NomorBaruComma,left(@reset,patindex('%,%',@reset)-1))
          set @reset=right(@reset,len(@reset)-patindex('%,%',@reset))
        end
        else
        begin
          --set @TempNomorPembanding=@TempNomorPembanding+@reset
          set @TempNomorPembanding=@TempNomorPembanding+dbo.fnGetListDelimitedbyComma(@NomorBaruComma,@reset)
          set @reset=''
        end
      end 
--      set @TempNomorBaru=@TempNomorPembanding
      set @TempNomorBaru=@TempNomorPembanding

      if exists(select nilaisekarang 
         from CounterDt2
         where CounterId=@CounterId and Pembanding=@TempNomorPembanding)
      begin
        set @NilaiSekarang=(select max(nilaisekarang) 
           from CounterDt2
           where CounterId=@CounterId and Pembanding=@TempNomorPembanding)+1  
        set @NilaiSekarang=replicate('0',@Panjang-len(@NilaiSekarang))+@NilaiSekarang
      end
      else
      begin
        set @NilaiSekarang=replicate('0',@Panjang-1)+'1'
      end

      set @TempNomorBaru=@NilaiSekarang
    end

    fetch next from Setting_Nomor
    into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param
  
    set @NomorBaru=@NomorBaru+@TempNomorBaru

  end

  close Setting_Nomor
  deallocate Setting_Nomor

  Return(@NomorBaru)
end
go


create function fnGetIndexDelimitedbyComma (@Str varchar(500), @Pattern varchar(500)) 
RETURNS int
begin

  declare 
    @TempPosition int,
    @TempPatternStr varchar(500),
    @TempStr varchar(500),
    @reset varchar(500)

  set @TempPosition = 0

  set @TempPatternStr='%'+@Pattern+'%'


  if patindex(@TempPatternStr,@STr)>0
  begin
    set @TempStr=@str
    while (@TempStr<>'') 
    begin
      if patindex('%,%',@TempStr)>0
      begin
         set @reset=left(@TempStr,patindex('%,%',@TempStr)-1)
         set @TempStr=right(@TempStr,len(@TempStr)-patindex('%,%',@TempStr))
      end
      else
         set @TempStr=''
      if @reset=@pattern
         set @TempStr=''
      set @TempPosition=@TempPosition+1
    end
  end

  Return(@TempPosition)
end
go


create function fnGetListDelimitedbyComma (@Str varchar(500), @Position int) 
RETURNS varchar(500)
begin

  declare 
    @reset varchar(500),
    @TempStr varchar(500),
    @TempPosition int


  set @TempPosition = 1

  set @TempStr=''

  set @reset=@Str

  while (@TempPosition < @Position) and (@reset<>'')
  begin  
    if patindex('%,%',@reset)>0
       set @reset=right(@reset,len(@reset)-patindex('%,%',@reset))
    else
       set @reset=''
    set @TempPosition = @TempPosition+1
  end
  if (@reset<>'') and (@TempPosition=@Position)
  begin
    if patindex('%,%',@reset)>0
     set @TempStr=substring(@reset,1,patindex('%,%',@reset)-1)
    else
     set @TempStr=@reset
  end

  Return(@TempStr)
end
go


create procedure spSetId 
@ACounterCode varchar(30),@ATgl Datetime,@AParam1 varchar(50)
as
begin

  --bentuk tergantung dari namanya
  --0 : angka (0,1,2)
  --1 : romawi (I,IV)
  --2 : kata (Aug)
  --3 : huruf (a,b,c,d)
  declare 
    @Temp varchar(50),
    @NilaiSekarang varchar(50),
    @Param varchar(50),
    @CounterId varchar(10),
    @TempNomorBaru varchar(50),
    @NomorBaruComma varchar(50),
    @TempNomorPembanding varchar(50),
    @TempStr varchar(50),
    @NomorBaru varchar(50),
    @Position int,
    @Nama varchar(30),
    @Panjang int,
    @CharacterStr varchar(50),
    @Reset varchar(50),
    @Bentuk Status

  set @NomorBaru=''
  set @NomorBaruComma=''

  declare Setting_Nomor cursor for
    select a.CounterId,b.Position,b.Nama,b.Panjang,b.CharacterStr,b.Reset,b.Bentuk,b.Param
    from CounterHd a left join CounterDt1 b on a.CounterId=b.CounterId
    where a.CounterCode =@ACounterCode 
    order by b.position asc

  open Setting_Nomor
  fetch next from Setting_Nomor
  into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param

  while @@FETCH_STATUS = 0
  begin  
    set @TempNomorBaru=''
    
    if (@Nama=1) 
    begin
	  if (@panjang>0)
	  begin
        if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=left(ltrim(rtrim(dbo.roman(month(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
	  end
	  else
	  begin
		if (@Bentuk=1)
         begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))  
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(month(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))
	  end
    end

    if (@Nama=2) 
    begin
	  if (@panjang>0)
	  begin	
		if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(year(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
      end
	  else
	  begin
		if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(year(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
	  end
	end

    if (@Nama=3) 
    begin
      if @Panjang>0
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(day(@ATgl)))),@Panjang)
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)
      end
      else
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl))) 
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(day(@ATgl))))
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))
      end   
    end

    if (@Nama=4) 
    begin
	  if @panjang>0
      begin
	    if @Param<>0 
          set @TempNomorBaru=left(ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param))),@Panjang)   
        else
          set @TempNomorBaru=left(ltrim(rtrim(@characterstr)),@Panjang) 
	  end
	  else
	  begin
		if @Param<>0 
          set @TempNomorBaru=ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param)))   
        else
          set @TempNomorBaru=ltrim(rtrim(@characterstr))
	  end  
    end

    if (@Nama=5) 
    begin
      set @TempNomorBaru=''
    end

    fetch next from Setting_Nomor
    into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param
  
    set @NomorBaruComma=@NomorBaruComma+@TempNomorBaru+','

  end

  close Setting_Nomor
 
  open Setting_Nomor
  fetch next from Setting_Nomor
  into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param

  while @@FETCH_STATUS = 0
  begin  
    set @TempNomorBaru=''

    if (@Nama=1) 
    begin
	  if (@panjang>0)
	  begin
        if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=left(ltrim(rtrim(dbo.roman(month(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
	  end
	  else
	  begin
		if (@Bentuk=1)
        begin
           set @TempNomorBaru=(case
            when month(@ATgl)=1 then 'JAN'   
            when month(@ATgl)=2 then 'FEB'   
            when month(@ATgl)=3 then 'MAR'   
            when month(@ATgl)=4 then 'APR'   
            when month(@ATgl)=5 then 'MEI'   
            when month(@ATgl)=6 then 'JUN'   
            when month(@ATgl)=7 then 'JUL'   
            when month(@ATgl)=8 then 'AUG'   
            when month(@ATgl)=9 then 'SEP'   
            when month(@ATgl)=10 then 'OCT'   
            when month(@ATgl)=11 then 'NOP'   
            when month(@ATgl)=12 then 'DES' 
               end)  
        end
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))  
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(month(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))
	  end
    end

    if (@Nama=2) 
    begin
	  if (@panjang>0)
	  begin	
		if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(year(@ATgl)))),@Panjang)   
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(year(@ATgl))),@Panjang)   
      end
	  else
	  begin
		if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(year(@ATgl))))  
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(year(@ATgl)))
	  end
	end

    if (@Nama=3) 
    begin
      if @Panjang>0
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=2)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)   
        if (@Bentuk=3)
           set @TempNomorBaru=right(ltrim(rtrim(dbo.roman(day(@ATgl)))),@Panjang)
        if (@Bentuk=4)
           set @TempNomorBaru=right(ltrim(rtrim(day(@ATgl))),@Panjang)
      end
      else
      begin
        if (@Bentuk=1)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))   
        if (@Bentuk=2)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl))) 
        if (@Bentuk=3)
           set @TempNomorBaru=ltrim(rtrim(dbo.roman(day(@ATgl))))
        if (@Bentuk=4)
           set @TempNomorBaru=ltrim(rtrim(day(@ATgl)))
      end   
    end

    if (@Nama=4) 
    begin
	  if @panjang>0
      begin
	    if @Param<>0 
          set @TempNomorBaru=left(ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param))),@Panjang)   
        else
          set @TempNomorBaru=left(ltrim(rtrim(@characterstr)),@Panjang) 
	  end
	  else
	  begin
		if @Param<>0 
          set @TempNomorBaru=ltrim(rtrim(dbo.fngetListDelimitedbyComma(@AParam1,@Param)))   
        else
          set @TempNomorBaru=ltrim(rtrim(@characterstr))
	  end  
    end

    if (@Nama=5) 
    begin
      set @TempNomorPembanding=''
    
      while (@reset<>'')
      begin
        if (patindex('%,%',@reset)<>0)
        begin
          set @TempNomorPembanding=@TempNomorPembanding+dbo.fnGetListDelimitedbyComma(@NomorBaruComma,left(@reset,patindex('%,%',@reset)-1))
          set @reset=right(@reset,len(@reset)-patindex('%,%',@reset))
        end
        else
        begin
          set @TempNomorPembanding=@TempNomorPembanding+dbo.fnGetListDelimitedbyComma(@NomorBaruComma,@reset)
          set @reset=''
        end
      end 
      set @TempNomorBaru=@TempNomorPembanding

      if exists(select nilaisekarang 
         from CounterDt2
         where CounterId=@CounterId and Pembanding=@TempNomorPembanding)
      begin
        set @NilaiSekarang=(select max(nilaisekarang) 
           from CounterDt2
           where CounterId=@CounterId and Pembanding=@TempNomorPembanding)+1  
        set @NilaiSekarang=replicate('0',@Panjang-len(@NilaiSekarang))+@NilaiSekarang
        update CounterDt2 set NilaiSekarang=@NilaiSekarang
        where Counterid=@Counterid and Pembanding=@TempNomorPembanding 
      end
      else
      begin
        set @NilaiSekarang=replicate('0',@Panjang-1)+'1'
        insert into CounterDt2(Counterid,Pembanding,NilaiSekarang) values (@CounterId,@TempNomorPembanding,@NilaiSekarang)
      end

      set @TempNomorBaru=@NilaiSekarang
    end

    fetch next from Setting_Nomor
    into @CounterId,@Position,@Nama,@Panjang,@CharacterStr,@Reset,@Bentuk,@Param
  
    set @NomorBaru=@NomorBaru+@TempNomorBaru

  end

  close Setting_Nomor
  deallocate Setting_Nomor

end
go


create trigger TR_DaftarMuatKapal_After on DaftarMuatKapal for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_DaftarMuatKapalCode varchar(30),
    @New_DaftarMuatKapalOpen DateWithTime,
    @New_DaftarMuatKapalClose DateWithTime,
    @New_StatusApprove status,
    @New_ShipId numeric(18,0),

    @Old_DaftarMuatKapalCode varchar(30),
    @Old_DaftarMuatKapalOpen DateWithTime,
    @Old_DaftarMuatKapalClose DateWithTime,
    @Old_StatusApprove status,
    @Old_ShipId numeric(18,0),

    @Other_DaftarMuatKapalCode varchar(30)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnUpdate = 1 or @OnInsert = 1) 
  begin
    select 
      @Old_ShipId = ShipId,
      @Old_DaftarMuatKapalCode = DaftarMuatKapalCode,
      @Old_DaftarMuatKapalOpen = DaftarMuatKapalOpen,
      @Old_DaftarMuatKapalClose = DaftarMuatKapalClose
    from deleted

    select 
      @New_ShipId = ShipId,
      @New_DaftarMuatKapalCode = DaftarMuatKapalCode,
      @New_DaftarMuatKapalOpen = DaftarMuatKapalOpen,
      @New_DaftarMuatKapalClose = DaftarMuatKapalClose
    from inserted

    if @Old_StatusApprove='2'
    begin
      if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end
       
    if (@Old_DaftarMuatKapalOpen<>@New_DaftarMuatKapalOpen)
    begin
      select @Other_DaftarMuatKapalCode=daftarmuatkapalcode from daftarmuatkapal 
              where shipid=@New_ShipId and DaftarMuatKapalclose is null and not(DaftarMuatkapalopen is null) and daftarmuatkapalcode<>@New_DaftarMuatKapalCode
      if not(@Other_DaftarMuatKapalCode is null)
      begin
        if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
        raiserror('Kapal sudah memuat daftar muat lain %s !!!',16,1,@Other_DaftarMuatKapalCode)          
        return
      end
      update ship set flagmuat='1' where ShipId=@New_ShipId
    end

    if (@Old_DaftarMuatKapalClose<>@New_DaftarMuatKapalClose) 
    begin
      if not(@New_DaftarMuatKapalClose is null)  
         update ship set flagmuat='0' where ShipId=@New_ShipId
    end

    if @New_StatusApprove='2'
    begin
       if exists(select DaftarMuatKapalCode from Konosemen where DaftarMuatKapalCode=@New_DaftarMuatKapalCode and statusapprove<>'2') 
       begin
          if (@@TRANCOUNT = 1) 
             ROLLBACK TRANSACTION
          raiserror('Data tidak bisa dibatalkan karena sudah di dipakai di konosemen !!!',16,1)          
          return
       end
    end
 
  end    
end
go


create trigger TR_KonosemenDt_After on KonosemenDt for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric,
    @New_KonosemenCode varchar(30),
    @New_No int,
    @New_PackingTransactionCode varchar(30),
    @New_BeritaAcaraCode varchar(30),
    @New_SuppliesCode varchar(30),
    @New_SuppliesName varchar(50),
    @New_Qty quantityplus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_UnitMeasureId numeric,
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,
    @New_ReferenceCode varchar(30),
    @New_Mode status,
    @New_StatusApprove status,
    @New_StorageInDate DateWithTime,

    @Old_StorageLocationId numeric,
    @Old_KonosemenCode varchar(30),
    @Old_No int,
    @Old_PackingTransactionCode varchar(30),
    @Old_BeritaAcaraCode varchar(30),
    @Old_SuppliesCode varchar(30),
    @Old_SuppliesName varchar(50),
    @Old_Qty quantityplus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_UnitMeasureId numeric,
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Old_ReferenceCode varchar(30),
    @Old_Mode status,
    @Old_StatusApprove status,
    @Old_StorageInDate DateWithTime,
    
    @no int,
    @New_DaftarMuatKapalCode varchar(30),
    @Old_DaftarMuatKapalCode varchar(30),
    @New_KonosemenDate DateWithTime,
    @Old_KonosemenDate DateWithTime,
    @MerekId numeric,
    @KonosemenCode varchar(30),
    @FlagShipStorage Flag,
    @New_FlagMuat Flag,
    @Old_FlagMuat Flag


  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial

    declare KonosemenDtInsertCursor CURSOR FOR 
      SELECT 
        KonosemenCode,No,SuppliesCode,SuppliesName,Qty,P,L,T,Berat,UnitMeasureId,
        TotalM3,TotalBerat    
      FROM inserted  
      
    open KonosemenDtInsertCursor

    Fetch Next From KonosemenDtInsertCursor INTO 
      @New_KonosemenCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat
  
    WHILE @@FETCH_STATUS = 0
    begin

    select @New_DaftarMuatKapalCode=a.DaftarMuatKapalCode,@New_KonosemenDate=a.KonosemenDate,@New_FlagMuat=c.FlagMuat,@New_StatusApprove=a.StatusApprove
    from Konosemen a
    left join DaftarMuatKapal b on a.DaftarMuatKapalCode=b.DaftarMuatKapalCode 
    left join Ship c on b.ShipId=c.ShipId
    where KonosemenCode=@New_KonosemenCode

    if (@New_KonosemenDate <= dbo.fnGetClosingDate())      
    begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
    end

    if @New_FlagMuat='0'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Buka Daftar Muat Kapal %s dulu !!!',16,1,@New_DaftarMuatKapalCode)
      return
    end

    set nocount on
    
    update DaftarMuatKapal
    set TotalM3=isnull(TotalM3,0)+isnull(@New_TotalM3,0),TotalTon=isnull(TotalTon,0)+isnull(@New_TotalBerat,0)
    where DaftarMuatKapalCode=@New_DaftarMuatKapalCode

    set nocount off

    Fetch Next From KonosemenDtInsertCursor INTO 
      @New_KonosemenCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat
  
    end
    
    close KonosemenDtInsertCursor
    deallocate KonosemenDtInsertCursor
  end   

  if (@OnDelete = 1) 
  begin
    -- Initial

    declare KonosemenDtDeleteCursor CURSOR FOR 
      SELECT 
        KonosemenCode,No,SuppliesCode,SuppliesName,Qty,P,L,T,Berat,
        UnitMeasureId,TotalM3,TotalBerat
      FROM deleted a 
      
    open KonosemenDtDeleteCursor

    Fetch Next From KonosemenDtDeleteCursor INTO 
      @Old_KonosemenCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat
  
    WHILE @@FETCH_STATUS = 0
    BEGIN

    select @Old_DaftarMuatKapalCode=a.DaftarMuatKapalCode,@Old_KonosemenDate=a.KonosemenDate,@Old_FlagMuat=c.FlagMuat,@Old_StatusApprove=a.StatusApprove
    from Konosemen a
    left join DaftarMuatKapal b on a.DaftarMuatKapalCode=b.DaftarMuatKapalCode 
    left join Ship c on b.ShipId=c.ShipId
    where KonosemenCode=@Old_KonosemenCode

    if (@Old_KonosemenDate <= dbo.fnGetClosingDate())      
    begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
    end

    if @Old_StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end

    if @Old_FlagMuat='0'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Buka Daftar Muat Kapal %s dulu !!!',16,1,@Old_DaftarMuatKapalCode)
      return
    end

    update DaftarMuatKapal
    set TotalM3=isnull(TotalM3,0)-isnull(@Old_TotalM3,0),TotalTon=isnull(TotalTon,0)-isnull(@Old_TotalBerat,0)
    where DaftarMuatKapalCode=@Old_DaftarMuatKapalCode

    Fetch Next From KonosemenDtDeleteCursor INTO 
      @Old_KonosemenCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat    

    end
   
    close KonosemenDtDeleteCursor
    deallocate KonosemenDtDeleteCursor
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin

    declare KonosemenDtUpdateCursor CURSOR FOR 
      SELECT 
        a.KonosemenCode,a.No,a.SuppliesCode,a.SuppliesName,a.Qty,a.P,a.L,a.T,a.Berat,
        a.UnitMeasureId,a.TotalM3,a.TotalBerat,
        b.KonosemenCode,b.No,b.SuppliesCode,b.SuppliesName,b.Qty,b.P,b.L,b.T,b.Berat,
        b.UnitMeasureId,b.TotalM3,b.TotalBerat
      FROM deleted a 
      left join inserted b on a.konosemencode=b.konosemencode and a.konosemenno=b.konosemenno

    open KonosemenDtUpdateCursor

    Fetch Next From KonosemenDtUpdateCursor INTO 
      @Old_KonosemenCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat,
      @New_KonosemenCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat
  
    WHILE @@FETCH_STATUS = 0
    BEGIN
    
    select @Old_DaftarMuatKapalCode=a.DaftarMuatKapalCode,@Old_KonosemenDate=a.KonosemenDate,@Old_FlagMuat=c.FlagMuat,@Old_StatusApprove=a.StatusApprove
    from Konosemen a
    left join DaftarMuatKapal b on a.DaftarMuatKapalCode=b.DaftarMuatKapalCode 
    left join Ship c on b.ShipId=c.ShipId
    where KonosemenCode=@Old_KonosemenCode

    select @New_DaftarMuatKapalCode=a.DaftarMuatKapalCode,@New_KonosemenDate=a.KonosemenDate,@New_FlagMuat=c.FlagMuat,@New_StatusApprove=a.StatusApprove
    from Konosemen a
    left join DaftarMuatKapal b on a.DaftarMuatKapalCode=b.DaftarMuatKapalCode 
    left join Ship c on b.ShipId=c.ShipId
    where KonosemenCode=@New_KonosemenCode

    if (@Old_KonosemenDate <= dbo.fnGetClosingDate()) or (@New_KonosemenDate <= dbo.fnGetClosingDate())      
    begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
    end

    if @Old_StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end

    if @Old_FlagMuat='0'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Buka Daftar Muat Kapal %s dulu !!!',16,1,@Old_DaftarMuatKapalCode)
      return
    end

    if @New_FlagMuat='0'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Buka Daftar Muat Kapal %s dulu !!!',16,1,@New_DaftarMuatKapalCode)
      return
    end

    update DaftarMuatKapal
    set TotalM3=isnull(TotalM3,0)+isnull(@New_TotalM3,0)-isnull(@Old_TotalM3,0),TotalTon=isnull(TotalTon,0)+isnull(@New_TotalBerat,0)-isnull(@Old_TotalBerat,0)
    where DaftarMuatKapalCode=@New_DaftarMuatKapalCode

    Fetch Next From KonosemenDtUpdateCursor INTO 
      @Old_KonosemenCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat,
      @New_KonosemenCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat

   end

    close KonosemenDtUpdateCursor
    deallocate KonosemenDtUpdateCursor

  end    
end
go


create trigger TR_MutasiStorageDt_After on MutasiStorageDt for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric(18,0),
    @New_MutasiCode varchar(30),
    @New_MutasiNo int,
    @New_ItemReceiveCode varchar(30),
    @New_No int,
    @New_PackingTransactionCode varchar(30),
    @New_BeritaAcaraCode varchar(30),
    @New_SuppliesCode varchar(30),
    @New_SuppliesName varchar(50),
    @New_Qty quantityplus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_UnitMeasureId numeric(18,0),
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,
    @New_ReferenceCode varchar(30),
    @New_Mode status,
    @New_StorageInDate DateWithTime,

    @Old_StorageLocationId numeric(18,0),
    @Old_MutasiCode varchar(30),
    @Old_MutasiNo int,
    @Old_ItemReceiveCode varchar(30),
    @Old_No int,
    @Old_PackingTransactionCode varchar(30),
    @Old_BeritaAcaraCode varchar(30),
    @Old_SuppliesCode varchar(30),
    @Old_SuppliesName varchar(50),
    @Old_Qty quantityplus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_UnitMeasureId numeric(18,0),
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Old_ReferenceCode varchar(30),
    @Old_Mode status,
    @Old_StorageInDate DateWithTime,
    
    @StorageLocationIdSource numeric(18,0),
    @StorageLocationIdDest numeric(18,0),
    @Storage1 numeric(18,0),
    @MutasiDate DateWithTime,
    @no int,
    @StockIdSource int,
    @StockIdDest int,
    @Qty quantityplus,
    @ItemReceiveDate DateWithTime,
    @Str varchar(30),
    @RouteId numeric(18,0),
    @FlagShipStorage Flag,
    @Temp1 int,
    @Temp2 int,
    @Str1 varchar(100),
    @Str2 varchar(100)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    declare MutasiStorageDtInsertCursor CURSOR FOR 
      SELECT 
        MutasiCode,MutasiNo,ItemReceiveCode,No,PackingTransactionCode,SuppliesCode,
        SuppliesName,Qty,P,L,T,Berat,UnitMeasureId,TotalM3,TotalBerat
      FROM inserted  
      
    open MutasiStorageDtInsertCursor

    Fetch Next From MutasiStorageDtInsertCursor INTO 
      @New_MutasiCode,@New_MutasiNo,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat    
  
    WHILE @@FETCH_STATUS = 0
    begin

    if not(@New_ItemReceiveCode is null) and not(@New_PackingTransactionCode is null)
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('^Yang diisi harus salah satu Barang atau packing^',16,1)
      return      
    end

    select @StorageLocationIdSource=StorageLocationIdSource,@StorageLocationIdDest=StorageLocationIdDest,@MutasiDate=MutasiDate
    from MutasiStorageHd 
    where MutasiCode = @New_MutasiCode

    if (@MutasiDate <= dbo.fnGetClosingDate())     
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end

    set nocount on

    if (@New_PackingTransactionCode is null)
    begin
      update Stock set qty=qty-@New_Qty
      where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No 

      delete 
      from Stock
      where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No and qty=0

      select @StockidDest=StockId,@Qty=Qty 
      from Stock
      where StorageLocationId=@StorageLocationIdDest and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No and PackingTransactionCode=@New_PackingTransactionCode
      
      if not @StockidDest is null 
      begin
        update Stock set qty=qty-@New_Qty
        where StockId=@StockidDest
      end
      else
      begin
        insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
        values (@StorageLocationIdDest,@New_ItemReceiveCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'3',@New_MutasiCode,@MutasiDate)
      end
    end
    else
    begin
      update Stock set qty=qty-@New_Qty
      where StorageLocationId=@StorageLocationIdSource and PackingTransactionCode=@New_PackingTransactionCode

      delete 
      from Stock
      where StorageLocationId=@StorageLocationIdSource and PackingTransactionCode=@New_PackingTransactionCode and qty=0
 
      select @StockidDest=StockId,@Qty=Qty 
      from Stock
      where StorageLocationId=@StorageLocationIdDest and PackingTransactionCode=@New_PackingTransactionCode

      if not @StockidDest is null 
      begin
        update Stock set qty=qty-@New_Qty
        where StockId=@StockidDest
      end
      else
      begin

        insert into Stock (StorageLocationId,PackingTransactionCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
        values (@StorageLocationIdDest,@New_PackingTransactionCode,NULL,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'3',@New_MutasiCode,@MutasiDate)

      end
    end
    set nocount off

    Fetch Next From MutasiStorageDtInsertCursor INTO 
      @New_MutasiCode,@New_MutasiNo,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat 
   end

    close MutasiStorageDtInsertCursor
    deallocate MutasiStorageDtInsertCursor   
  end   

  if (@OnDelete = 1) 
  begin
   
    declare MutasiStorageDtDeleteCursor CURSOR FOR 
      SELECT 
        MutasiCode,MutasiNo,ItemReceiveCode,No,PackingTransactionCode,SuppliesCode,
        SuppliesName,Qty,P,L,T,Berat,UnitMeasureId,TotalM3,TotalBerat
      FROM deleted  
      
    open MutasiStorageDtDeleteCursor

    Fetch Next From MutasiStorageDtDeleteCursor INTO 
      @Old_MutasiCode,@Old_MutasiNo,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat 
 

    --  where MutasiCode = @Old_MutasiCode
 
    WHILE @@FETCH_STATUS = 0
    BEGIN
    -- Initial
      select @StorageLocationIdDest=StorageLocationIdDest,@StorageLocationIdSource=StorageLocationIdSource,@MutasiDate=MutasiDate
      from MutasiStorageHd 
      where MutasiCode = @Old_MutasiCode

      if (@MutasiDate <= dbo.fnGetClosingDate())     
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
          RETURN
      end

      set nocount on

      if (@Old_PackingTransactionCode is null)
      begin

        update Stock set qty=qty-@Old_Qty
        where StorageLocationId=@StorageLocationIdDest and ItemReceiveCode=@Old_ItemReceiveCode and no=@Old_No 

        delete 
        from Stock
        where StorageLocationId=@StorageLocationIdDest and ItemReceiveCode=@Old_ItemReceiveCode and no=@Old_No and qty=0

        select @StockidSource=StockId,@Qty=Qty 
        from Stock
        where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@Old_ItemReceiveCode and no=@Old_No

        if not @StockidSource is null 
        begin
           update Stock set qty=qty+@Old_Qty
           where StockId=@StockidSource
        end
        else
        begin 
          insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
          values (@StorageLocationIdSource,@Old_ItemReceiveCode,@Old_No,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_SuppliesCode,@Old_SuppliesName,@Old_TotalBerat,@Old_TotalM3,@Old_UnitMeasureId,'3',@Old_MutasiCode,@MutasiDate)
        end
      end
      else
      begin

        update Stock set qty=qty-@Old_Qty
        where StorageLocationId=@StorageLocationIdDest and PackingTransactionCode=@Old_PackingTransactionCode

        delete 
        from Stock
        where StorageLocationId=@StorageLocationIdDest and PackingTransactionCode=@Old_PackingTransactionCode and qty=0

        select @StockidSource=StockId,@Qty=Qty 
        from Stock
        where StorageLocationId=@StorageLocationIdSource and PackingTransactionCode=@Old_PackingTransactionCode

        if not @StockidSource is null 
        begin
           update Stock set qty=qty+@Old_Qty
           where StockId=@StockidSource
        end
        else
        begin 
          insert into Stock (StorageLocationId,PackingTransactionCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
          values (@StorageLocationIdSource,@Old_PackingTransactionCode,@Old_No,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_SuppliesCode,@Old_SuppliesName,@Old_TotalBerat,@Old_TotalM3,@Old_UnitMeasureId,'3',@Old_MutasiCode,@MutasiDate)
        end
      end
      set nocount off

    Fetch Next From MutasiStorageDtDeleteCursor INTO 
      @Old_MutasiCode,@Old_MutasiNo,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat 
    end

    close MutasiStorageDtDeleteCursor
    deallocate MutasiStorageDtDeleteCursor 
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin

    declare MutasiStorageDtUpdateCursor CURSOR FOR 
      SELECT 
        a.MutasiCode,a.MutasiNo,a.ItemReceiveCode,a.No,a.PackingTransactionCode,a.SuppliesCode,
        a.SuppliesName,a.Qty,a.P,a.L,a.T,a.Berat,a.UnitMeasureId,a.TotalM3,a.TotalBerat,
        b.MutasiCode,b.MutasiNo,b.ItemReceiveCode,b.No,b.PackingTransactionCode,b.SuppliesCode,
        b.SuppliesName,b.Qty,b.P,b.L,b.T,b.Berat,b.UnitMeasureId,b.TotalM3,b.TotalBerat
      FROM deleted a      
      left join inserted b on a.mutasicode=b.mutasicode and a.mutasino=b.mutasino
    
    open MutasiStorageDtUpdateCursor

    Fetch Next From MutasiStorageDtUpdateCursor INTO 
      @Old_MutasiCode,@Old_MutasiNo,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat, 
      @New_MutasiCode,@New_MutasiNo,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat 

  
    WHILE @@FETCH_STATUS = 0
    BEGIN
  
    select @StorageLocationIdSource=StorageLocationIdSource,@StorageLocationIdDest=StorageLocationIdDest,@MutasiDate=MutasiDate
    from MutasiStorageHd 
    where MutasiCode = @New_MutasiCode

    if (@MutasiDate <= dbo.fnGetClosingDate())     
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end

    if (@New_Qty<>@Old_Qty)
    begin

    if (@New_PackingTransactionCode is null)
    begin
       select @StockIdSource=stockid 
       from stock 
       where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No

       set nocount on

       if not @StockIdSource is null
          update Stock set qty=qty+@Old_Qty-@New_Qty
          where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No
       else
          insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
          values (@StorageLocationIdSource,@New_ItemReceiveCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'3',@New_MutasiCode,@MutasiDate)

       delete 
       from Stock
       where StorageLocationId=@StorageLocationIdSource and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No and qty=0

       select @StockIdDest=stockid from stock where StorageLocationId=@StorageLocationIdDest and ItemReceiveCode=@New_ItemReceiveCode and no=@New_No

       set @Temp1=cast(@Old_Qty as integer)
       set @Temp2=cast(@New_Qty as integer)

       if not @StockIdDest is null 
          update Stock set qty=qty-@Old_Qty+@New_Qty
          where StockId=@StockIdDest
       else
          insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
          values (@StorageLocationIdDest,@New_ItemReceiveCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'3',@New_MutasiCode,@MutasiDate)
       set nocount off

    end
    else
    begin
       set nocount on
       update Stock set qty=qty+@Old_Qty-@New_Qty
       where StorageLocationId=@StorageLocationIdSource and PackingTransactionCode=@New_PackingTransactionCode

       delete 
       from Stock
       where StorageLocationId=@StorageLocationIdSource and PackingTransactionCode=@New_PackingTransactionCode and qty=0

       select @StockidDest=StockId,@Qty=Qty 
       from Stock
       where StorageLocationId=@StorageLocationIdDest and PackingTransactionCode=@New_PackingTransactionCode

       if not @StockidDest is null 
       begin
          update Stock set qty=qty-@Old_Qty+@New_Qty
          where StockId=@StockidDest
       end
       else
       begin
         insert into Stock (StorageLocationId,PackingTransactionCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
         values (@StorageLocationIdDest,@New_PackingTransactionCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'3',@New_MutasiCode,@MutasiDate)
       end
      set nocount off
    end
   end

    Fetch Next From MutasiStorageDtUpdateCursor INTO 
      @Old_MutasiCode,@Old_MutasiNo,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat, 
      @New_MutasiCode,@New_MutasiNo,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,
      @New_TotalM3,@New_TotalBerat 
  end    

    close MutasiStorageDtUpdateCursor
    deallocate MutasiStorageDtUpdateCursor
end
end
go


create trigger TR_MutasiStorageHd_After on MutasiStorageHd for 
  update as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StatusApprove Status,
    @New_MutasiCode TransactionCode,
    @New_MutasiDate DateWithTime,

    @Old_StatusApprove Status,
    @Old_MutasiCode TransactionCode,
    @Old_MutasiDate DateWithTime

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnUpdate = 1) 
  begin

    declare MutasiStorageHdUpdateCursor CURSOR FOR 
      SELECT 
        a.StatusApprove,a.MutasiCode,a.MutasiDate,
        b.StatusApprove,b.MutasiCode,b.MutasiDate
      FROM deleted a 
      left join inserted b on a.mutasicode=b.mutasicode

    open MutasiStorageHdUpdateCursor

    Fetch Next From MutasiStorageHdUpdateCursor INTO 
      @Old_StatusApprove,@Old_MutasiCode,@Old_MutasiDate,
      @New_StatusApprove,@New_MutasiCode,@New_MutasiDate
  
    WHILE @@FETCH_STATUS = 0
    BEGIN

    if (@New_MutasiDate <= dbo.fnGetClosingDate()) or (@Old_MutasiDate <= dbo.fnGetClosingDate())     
    begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
    end

    if @Old_StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end

    if @New_StatusApprove='2'
    begin
       set nocount on
       delete from MutasiStorageDt where MutasiCode=@New_MutasiCode       
       set nocount off
    end

    Fetch Next From MutasiStorageHdUpdateCursor INTO 
      @Old_StatusApprove,@Old_MutasiCode,@Old_MutasiDate,
      @New_StatusApprove,@New_MutasiCode,@New_MutasiDate


   end

   close MutasiStorageHdUpdateCursor
   deallocate MutasiStorageHdUpdateCursor   

 end    

end
go


create trigger TR_PackingTransactionDt_After on PackingTransactionDt for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_PackingTransactionCode varchar(30),
    
    @Old_PackingTransactionCode varchar(30),
        
    @New_PackingTransactionDate DateWithTime,
    @New_StatusApprove status,

    @Old_PackingTransactionDate DateWithTime,
    @Old_StatusApprove status

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    declare PackingTransactionDtInsertCursor CURSOR FOR 
      SELECT 
         PackingTransactionCode      
      FROM Inserted  
      
    open PackingTransactionDtInsertCursor

    Fetch Next From PackingTransactionDtInsertCursor INTO 
      @New_PackingTransactionCode

    WHILE @@FETCH_STATUS = 0
    BEGIN

      select @New_PackingTransactionDate=PackingTransactionDate,@New_StatusApprove=StatusApprove
      from PackingTransactionHd 
      where PackingTransactionCode = @New_PackingTransactionCode

      if (@New_PackingTransactionDate <= dbo.fnGetClosingDate())      
      begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
      end

      if @New_StatusApprove='2'
      begin
	    if (@@TRANCOUNT = 1) 
          ROLLBACK TRANSACTION
        raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
        return
      end

      Fetch Next From PackingTransactionDtInsertCursor INTO 
        @New_PackingTransactionCode
    end

    close PackingTransactionDtInsertCursor
    deallocate PackingTransactionDtInsertCursor

  end   


  if (@OnDelete = 1) 
  begin
    -- Initial

    declare PackingTransactionDtDeleteCursor CURSOR FOR 
      SELECT 
         PackingTransactionCode      
      FROM Deleted  
      
    open PackingTransactionDtDeleteCursor

    Fetch Next From PackingTransactionDtDeleteCursor INTO 
      @Old_PackingTransactionCode

    WHILE @@FETCH_STATUS = 0
    BEGIN

      select @Old_PackingTransactionDate=PackingTransactionDate,@Old_StatusApprove=StatusApprove
      from PackingTransactionHd 
      where PackingTransactionCode = @Old_PackingTransactionCode

      if (@Old_PackingTransactionDate <= dbo.fnGetClosingDate())      
      begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
      end

      if @Old_StatusApprove='2'
      begin
	    if (@@TRANCOUNT = 1) 
          ROLLBACK TRANSACTION
        raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
        return
      end

      Fetch Next From PackingTransactionDtDeleteCursor INTO 
        @Old_PackingTransactionCode
    end

    close PackingTransactionDtDeleteCursor
    deallocate PackingTransactionDtDeleteCursor
    
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin
-- Initial
    declare PackingTransactionDtUpdateCursor CURSOR FOR 
      SELECT 
         a.PackingTransactionCode      
      FROM Deleted a
         left join Inserted b on a.PackingTransactionCode=b.PackingTransactionCode and a.no=b.no
      
    open PackingTransactionDtUpdateCursor

    Fetch Next From PackingTransactionDtUpdateCursor INTO 
      @New_PackingTransactionCode

    WHILE @@FETCH_STATUS = 0
    BEGIN

      select @New_PackingTransactionDate=PackingTransactionDate,@New_StatusApprove=StatusApprove
      from PackingTransactionHd 
      where PackingTransactionCode = @New_PackingTransactionCode

      select @Old_PackingTransactionDate=PackingTransactionDate,@Old_StatusApprove=StatusApprove
      from PackingTransactionHd 
      where PackingTransactionCode = @Old_PackingTransactionCode

      if (@New_PackingTransactionDate <= dbo.fnGetClosingDate()) or (@Old_PackingTransactionDate <= dbo.fnGetClosingDate())     
      begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
      end

      if @Old_StatusApprove='2'
      begin
	    if (@@TRANCOUNT = 1) 
          ROLLBACK TRANSACTION
        raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
        return
      end

      Fetch Next From PackingTransactionDtUpdateCursor INTO 
        @New_PackingTransactionCode
    end

    close PackingTransactionDtUpdateCursor
    deallocate PackingTransactionDtUpdateCursor

  end    
end
go


create trigger TR_PackingTransactionHd_After on PackingTransactionHd for 
  insert,update as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_MerekId numeric(18,0),
    @New_RouteId numeric(18,0),
    @New_UnitMeasureId numeric(18,0),
    @New_StorageLocationId numeric(18,0),
    @New_StatusApprove Status,
    @New_PackingTransactionCode TransactionCode,
    @New_PackingTransactionDate DateWithtime,
    @New_PackingClose status,
    @New_QtyOutStanding QuantityPlus,
    @New_Qty QuantityPlus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,

    @Old_MerekId numeric(18,0),
    @Old_RouteId numeric(18,0),
    @Old_UnitMeasureId numeric(18,0),
    @Old_StorageLocationId numeric(18,0),
    @Old_StatusApprove Status,
    @Old_PackingTransactionCode TransactionCode,
    @Old_PackingTransactionDate DateWithtime,
    @Old_PackingClose status,
    @Old_QtyOutStanding QuantityPlus,
    @Old_Qty QuantityPlus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Temp1 varchar(100)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  if (@OnInsert = 1) 
  begin
    declare PackingTransactionHdInsertCursor CURSOR FOR 
      SELECT 
        MerekId,RouteId,UnitMeasureId,StatusApprove,PackingTransactionCode,PackingTransactionDate,
        QtyOutStanding,StorageLocationId,Qty,P,L,T,Berat,TotalM3,TotalBerat,PackingClose
      FROM inserted  
      
    open PackingTransactionHdInsertCursor

    Fetch Next From PackingTransactionHdInsertCursor INTO 
      @New_MerekId,@New_RouteId,@New_UnitMeasureId,@New_StatusApprove,@New_PackingTransactionCode,@New_PackingTransactionDate,
      @New_QtyOutStanding,@New_StorageLocationId,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_TotalM3,@New_TotalBerat,
      @New_PackingClose
  
    WHILE @@FETCH_STATUS = 0
    begin

     if (@New_PackingTransactionDate <= dbo.fnGetClosingDate())     
     begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
     end

     if @New_StatusApprove='2'
     begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
     end
 
     update PackingTransactionHd set QtyOutStanding=@New_Qty
     where PackingTransactionCode=@New_PackingTransactionCode

     Fetch Next From PackingTransactionHdInsertCursor INTO 
      @New_MerekId,@New_RouteId,@New_UnitMeasureId,@New_StatusApprove,@New_PackingTransactionCode,@New_PackingTransactionDate,
      @New_QtyOutStanding,@New_StorageLocationId,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_TotalM3,@New_TotalBerat,
      @New_PackingClose

    end
    close PackingTransactionHdInsertCursor
    deallocate PackingTransactionHdInsertCursor
  end

  if (@OnUpdate = 1) 
  begin
    declare PackingTransactionHdUpdateCursor CURSOR FOR 
      SELECT 
        a.MerekId,a.RouteId,a.UnitMeasureId,a.StatusApprove,a.PackingTransactionCode,a.PackingTransactionDate,
        a.QtyOutStanding,a.StorageLocationId,a.Qty,a.P,a.L,a.T,a.Berat,a.TotalM3,a.TotalBerat,a.PackingClose,
        b.MerekId,b.RouteId,b.UnitMeasureId,b.StatusApprove,b.PackingTransactionCode,b.PackingTransactionDate,
        b.QtyOutStanding,b.StorageLocationId,b.Qty,b.P,b.L,b.T,b.Berat,b.TotalM3,b.TotalBerat,b.PackingClose
      FROM deleted a
      left join inserted b on a.PackingTransactionCode=b.PackingTransactionCode  
      
    open PackingTransactionHdUpdateCursor

    Fetch Next From PackingTransactionHdUpdateCursor INTO 
      @Old_MerekId,@Old_RouteId,@Old_UnitMeasureId,@Old_StatusApprove,@Old_PackingTransactionCode,@Old_PackingTransactionDate,
      @Old_QtyOutStanding,@Old_StorageLocationId,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_TotalM3,@Old_TotalBerat,
      @Old_PackingClose,
      @New_MerekId,@New_RouteId,@New_UnitMeasureId,@New_StatusApprove,@New_PackingTransactionCode,@New_PackingTransactionDate,
      @New_QtyOutStanding,@New_StorageLocationId,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_TotalM3,@New_TotalBerat,
      @New_PackingClose
  
    WHILE @@FETCH_STATUS = 0
    begin

     if (@New_PackingTransactionDate <= dbo.fnGetClosingDate()) or (@Old_PackingTransactionDate <= dbo.fnGetClosingDate())     
     begin
       IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
         RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
         RETURN
     end

    update PackingTransactionHd set QtyOutStanding=QtyOutStanding-@Old_Qty+@New_Qty
    where PackingTransactionCode=@New_PackingTransactionCode

    if @Old_StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end
    
    if @New_StatusApprove='2'
    begin
       if @New_Qty<>@New_QtyOutStanding 
       begin
   	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
            raiserror('Data tidak bisa dibatalkan karena sudah di dipakai di transaksi !!!',16,1)
         return
       end
       else    
       begin
          set nocount on
          delete from PackingTransactionDt where PackingTransactionCode=@New_PackingTransactionCode       
          set nocount off
       end
    end
    
    if (@Old_MerekId<>@New_MerekId) or (@Old_RouteId<>@New_RouteId)
    begin
      if exists(select itemreceivecode from packingtransactiondt where packingtransactioncode=@New_PackingTransactionCode)
      begin
   	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
            raiserror('Merek / Juruan tidak bisa dibatalkan karena sudah di dipakai di transaksi !!!',16,1)
         return
      end
    end   

--    set @Temp1=cast(@New_PackingTransactionDate as datetime)
--    raiserror('%s',16,1,@Temp1)

    if (@Old_PackingClose<>@New_PackingClose) 
    begin
      if (@New_PackingClose='1')
      begin
        set nocount on

        insert into Stock (StorageLocationId,PackingTransactionCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
        values (@New_StorageLocationId,@New_PackingTransactionCode,1,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_PackingTransactionCode,@New_PackingTransactionCode,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'1',@New_PackingTransactionCode,@New_PackingTransactionDate)

        update SuppliesReceivedt set SuppliesReceivedt.QtyOutStanding=SuppliesReceivedt.QtyOutStanding-(b.qty*@New_Qty)
        from SuppliesReceivedt 
        left join PackingTransactionDt b on SuppliesReceivedt.ItemReceiveCode=b.ItemReceiveCode and SuppliesReceivedt.no=b.no
        where b.PackingTransactionCode=@New_PackingTransactionCode

        set nocount off
      end
      else
      begin

        if exists(select stockid from Stock 
           where PackingTransactionCode=@New_PackingTransactionCode and StorageLocationId<>@New_StorageLocationId) 
        begin
   	      if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
            raiserror('Packing sudah pernah dimutasi kembalikan dulu ke gudang asal !!!',16,1)
          return
        end
        
        if (@New_Qty<>@New_QtyOutStanding)
        begin
   	      if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
            raiserror('Packing sudah dipakai di transaksi lain !!!',16,1)
          return
        end
      
        set nocount on

        delete from Stock 
        where PackingTransactionCode=@New_PackingTransactionCode and StorageLocationId=@New_StorageLocationId 

        update SuppliesReceivedt set SuppliesReceivedt.QtyOutStanding=SuppliesReceivedt.QtyOutStanding+(b.qty*@New_Qty)
        from SuppliesReceivedt 
        left join PackingTransactionDt b on SuppliesReceivedt.ItemReceiveCode=b.ItemReceiveCode and SuppliesReceivedt.no=b.no
        where b.PackingTransactionCode=@New_PackingTransactionCode
        set nocount off

      end
    end

    Fetch Next From PackingTransactionHdUpdateCursor INTO 
      @Old_MerekId,@Old_RouteId,@Old_UnitMeasureId,@Old_StatusApprove,@Old_PackingTransactionCode,@Old_PackingTransactionDate,
      @Old_QtyOutStanding,@Old_StorageLocationId,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_TotalM3,@Old_TotalBerat,
      @Old_PackingClose,
      @New_MerekId,@New_RouteId,@New_UnitMeasureId,@New_StatusApprove,@New_PackingTransactionCode,@New_PackingTransactionDate,
      @New_QtyOutStanding,@New_StorageLocationId,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_TotalM3,@New_TotalBerat,
      @New_PackingClose
  end  
    close PackingTransactionHdUpdateCursor
    deallocate PackingTransactionHdUpdateCursor  

 end  
end
go


create trigger TR_Stock_After on Stock for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric,
    @New_ItemReceiveCode varchar(30),
    @New_No int,
    @New_PackingTransactionCode varchar(30),
    @New_BeritaAcaraCode varchar(30),
    @New_SuppliesCode varchar(30),
    @New_SuppliesName varchar(50),
    @New_Qty quantityplus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_UnitMeasureId numeric,
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,
    @New_ReferenceCode varchar(30),
    @New_Mode status,
    @New_StorageInDate DateWithTime,

    @Old_StorageLocationId numeric,
    @Old_ItemReceiveCode varchar(30),
    @Old_No int,
    @Old_PackingTransactionCode varchar(30),
    @Old_BeritaAcaraCode varchar(30),
    @Old_SuppliesCode varchar(30),
    @Old_SuppliesName varchar(50),
    @Old_Qty quantityplus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_UnitMeasureId numeric,
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Old_ReferenceCode varchar(30),
    @Old_Mode status,
    @Old_StorageInDate DateWithTime,
    
    @no int,
    @DaftarMuatKapalCode varchar(30),
    @CityName varchar(50),
    @ShipCode varchar(30),
    @ShipId numeric(18,0),
    @RouteId numeric(18,0),
    @MerekId numeric,
    @KonosemenCode varchar(30),
    @FlagShipStorage Flag,
    @FlagMuat Flag,
    @Str1 varchar(50),
    @Str2 varchar(50)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    declare StockInsertCursor CURSOR FOR 
      SELECT 
        StorageLocationId,ItemReceiveCode,No,PackingTransactionCode,BeritaAcaraCode,
        SuppliesCode,SuppliesName,Qty,P,L,T,Berat,UnitMeasureId,TotalM3,TotalBerat,
        ReferenceCode,Mode,StorageInDate
      FROM inserted  
      
    open StockInsertCursor

    Fetch Next From StockInsertCursor INTO 
      @New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_BeritaAcaraCode,@New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,
      @New_T,@New_Berat,@New_UnitMeasureId,@New_TotalM3,@New_TotalBerat,@New_ReferenceCode,
      @New_Mode,@New_StorageInDate
      

    WHILE @@FETCH_STATUS = 0
    BEGIN
    
    select @FlagShipStorage=FlagShipStorage,@FlagMuat=isnull(b.FlagMuat,''),@ShipCode=b.shipcode,@ShipId=b.ShipId,
           @DaftarMuatKapalCode=c.DaftarMuatKapalCode 
    from StorageLocation a
         left join ship b on a.StorageLocationid=b.StorageLocationId
         left join DaftarMuatKapal c on b.ShipId=c.ShipId and c.DaftarMuatKapalClose is null and not(c.DaftarMuatKapalOpen is null)
    where a.StorageLocationId=@New_StorageLocationId

    if @FlagShipStorage='1'
    begin
      --1 cari konosemen kalo sudah ada

      if not(@New_ItemReceiveCode is null)
      begin
        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join suppliesreceivehd d on a.itemreceivecode=d.itemreceivecode
        left join suppliesreceivedt b on a.itemreceivecode=b.itemreceivecode and a.no=b.no
        left join konosemen c on c.MerekId=d.MerekId
        where b.itemreceivecode=@New_ItemReceiveCode and b.no=@New_No
      end
      else
      begin
        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join PackingTransactionhd d on a.PackingTransactionCode=d.PackingTransactionCode
        left join konosemen c on c.MerekId=d.MerekId
        where d.PackingTransactionCode=@New_PackingTransactionCode
      end
      set nocount on

      --2. kalo belum ada buat
      if (@KonosemenCode is null)
      begin

       if @FlagMuat='1' 
       begin
           set @KonosemenCode =(select dbo.fngetid('KONOSEMEN',@New_StorageInDate,@ShipCode+','+@CityName))

           insert into konosemen (KonosemenCode,KonosemenDate,EmployeeId,CounterPrint,StatusApprove,MerekId,CustomKonosemen,DaftarMuatKapalCode)
           values (@KonosemenCode,@New_StorageInDate,'USER',1,'0',@MerekId,'0',@DaftarMuatKapalCode)

           exec dbo.spSetId 'KONOSEMEN',@New_StorageInDate,''

       end
       else
       begin
	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         raiserror('Muat Daftar Muat Dulu !!!',16,1)
         return         
       end
      end
      --3. tambahkan ke detailnya
      

      select @no=isnull(max(cast(konosemenno as int)),0)+1 
      from konosemendt 
      where konosemencode=@konosemencode

      if not(@New_ItemReceiveCode is null)
      begin      
         insert into KonosemenDt (KonosemenCode,KonosemenNo,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,tariftypeid)
         values (@KonosemenCode,@no,@New_ItemReceiveCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,1)
      end
      else
      begin
         insert into KonosemenDt (KonosemenCode,KonosemenNo,PackingTransactionCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,tariftypeid)
         values (@KonosemenCode,@no,@New_PackingTransactionCode,null,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,1)
      end

/*
      set @Str1=cast(@KonosemenCode as varchar)
      set @Str2=cast(@no as varchar)
      raiserror('^Juanda %s %s^',16,1,@Str1,@str2)
      ROLLBACK TRANSACTION
      return 
*/
    end

    set nocount off
    
    Fetch Next From StockInsertCursor INTO 
      @New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,
      @New_BeritaAcaraCode,@New_SuppliesCode,@New_SuppliesName,@New_Qty,@New_P,@New_L,
      @New_T,@New_Berat,@New_UnitMeasureId,@New_TotalM3,@New_TotalBerat,@New_ReferenceCode,
      @New_Mode,@New_StorageInDate

   end

   close StockInsertCursor
   deallocate StockInsertCursor
  end   


  if (@OnDelete = 1) 
  begin
    -- Initial
    declare StockDeleteCursor CURSOR FOR 
      SELECT 
         StorageLocationId,ItemReceiveCode,No,PackingTransactionCode,BeritaAcaraCode,SuppliesCode,
         SuppliesName,Qty,P,L,T,Berat,UnitMeasureId,TotalM3,TotalBerat,ReferenceCode,Mode,StorageInDate
      FROM deleted  
      
    open StockDeleteCursor

    Fetch Next From StockDeleteCursor INTO 
      @Old_StorageLocationId,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,@Old_BeritaAcaraCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat,@Old_ReferenceCode,@Old_Mode,@Old_StorageInDate

  
    WHILE @@FETCH_STATUS = 0
    BEGIN
      select @FlagShipStorage=FlagShipStorage,@FlagMuat=isnull(b.FlagMuat,''),@ShipCode=b.shipcode,@ShipId=b.ShipId,
           @DaftarMuatKapalCode=c.DaftarMuatKapalCode 
      from StorageLocation a
         left join ship b on a.StorageLocationid=b.StorageLocationId
         left join DaftarMuatKapal c on b.ShipId=c.ShipId and c.DaftarMuatKapalClose is null and not(c.DaftarMuatKapalOpen is null)
      where a.StorageLocationId=@Old_StorageLocationId

      if @FlagShipStorage='1'
      begin
        if @FlagMuat='1'
        begin

      if not(@Old_ItemReceiveCode is null)
      begin
        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join suppliesreceivehd d on a.itemreceivecode=d.itemreceivecode
        left join suppliesreceivedt b on a.itemreceivecode=b.itemreceivecode and a.no=b.no
        left join konosemen c on c.MerekId=d.MerekId
        where b.itemreceivecode=@Old_ItemReceiveCode and b.no=@Old_No

      end
      else
      begin

        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join PackingTransactionhd d on a.PackingTransactionCode=d.PackingTransactionCode
        left join konosemen c on c.MerekId=d.MerekId
        where d.PackingTransactionCode=@Old_PackingTransactionCode



      end    
      if (@KonosemenCode is null)
      begin
	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         raiserror('Konosemen tidak ada !!!',16,1)
         return  
      end
      else
      begin
       set nocount on
       if not(@New_ItemReceiveCode is null)
        begin
          delete from KonosemenDt 
          where KonosemenCode=@KonosemenCode and ItemReceiveCode=@Old_ItemReceiveCode and No=@Old_no
        end
        else
        begin
         delete from KonosemenDt 
          where KonosemenCode=@KonosemenCode and PackingTransactionCode=@Old_PackingTransactionCode 
        end
        if not(exists(select konosemencode from konosemendt where konosemencode=@konosemencode))
        begin
             update konosemen set statusapprove='2' where konosemencode=@konosemencode 
        end
       set nocount off

      end
        end     
        else
        begin
	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         raiserror('Kapal dalam posisi tidak muat !!!',16,1)
         return   
        end
      end


    Fetch Next From StockDeleteCursor INTO 
      @Old_StorageLocationId,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,@Old_BeritaAcaraCode,
      @Old_SuppliesCode,@Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,
      @Old_TotalM3,@Old_TotalBerat,@Old_ReferenceCode,@Old_Mode,@Old_StorageInDate

    END

   close StockDeleteCursor
   deallocate StockDeleteCursor
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin
    declare StockUpdateCursor CURSOR FOR 
      SELECT 
         a.StorageLocationId,a.ItemReceiveCode,a.No,a.PackingTransactionCode,a.BeritaAcaraCode,a.SuppliesCode,
         a.SuppliesName,a.Qty,a.P,a.L,a.T,a.Berat,a.UnitMeasureId,a.TotalM3,a.TotalBerat,a.ReferenceCode,a.Mode,
         a.StorageInDate,
         b.StorageLocationId,b.ItemReceiveCode,b.No,b.PackingTransactionCode,b.BeritaAcaraCode,b.SuppliesCode,
         b.SuppliesName,b.Qty,b.P,b.L,b.T,b.Berat,b.UnitMeasureId,b.TotalM3,b.TotalBerat,b.ReferenceCode,b.Mode,
         b.StorageInDate
      FROM deleted a 
      left join inserted b on a.stockid=b.stockid

    open StockUpdateCursor

    Fetch Next From StockUpdateCursor INTO 
      @Old_StorageLocationId,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,@Old_BeritaAcaraCode,@Old_SuppliesCode,
      @Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat,@Old_ReferenceCode,
      @Old_Mode,@Old_StorageInDate,
      @New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,@New_BeritaAcaraCode,@New_SuppliesCode,
      @New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,@New_TotalM3,@New_TotalBerat,@New_ReferenceCode,
      @New_Mode,@New_StorageInDate
 
    WHILE @@FETCH_STATUS = 0
    BEGIN

      select @FlagShipStorage=FlagShipStorage,@FlagMuat=isnull(b.FlagMuat,''),@ShipCode=b.shipcode,@ShipId=b.ShipId,
           @DaftarMuatKapalCode=c.DaftarMuatKapalCode 
      from StorageLocation a
         left join ship b on a.StorageLocationid=b.StorageLocationId
         left join DaftarMuatKapal c on b.ShipId=c.ShipId and c.DaftarMuatKapalClose is null and not(c.DaftarMuatKapalOpen is null)
      where a.StorageLocationId=@New_StorageLocationId

      if @FlagShipStorage='1'
      begin
        if @FlagMuat='1'
        begin

      if not(@New_ItemReceiveCode is null)
      begin
        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join suppliesreceivehd d on a.itemreceivecode=d.itemreceivecode
        left join suppliesreceivedt b on a.itemreceivecode=b.itemreceivecode and a.no=b.no
        left join konosemen c on c.MerekId=d.MerekId
        where b.itemreceivecode=@New_ItemReceiveCode and b.no=@New_No
      end
      else
      begin
        select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId 
        from stock a
        left join PackingTransactionhd d on a.PackingTransactionCode=d.PackingTransactionCode
        left join konosemen c on c.MerekId=d.MerekId
        where d.PackingTransactionCode=@New_PackingTransactionCode
      end    
      if (@KonosemenCode is null)
      begin
	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         raiserror('Konosemen tidak ada !!!',16,1)
         return  
      end
      else
      begin
        set nocount on
        if not(@New_ItemReceiveCode is null)
        begin
          update KonosemenDt set qty=@New_Qty
          where KonosemenCode=@KonosemenCode and ItemReceiveCode=@New_ItemReceiveCode and No=@New_no
        end
        else
        begin
          update KonosemenDt set qty=@New_Qty
          where KonosemenCode=@KonosemenCode and PackingTransactionCode=@New_PackingTransactionCode 
        end
        set nocount off
      end
        end     
        else
        begin
	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         raiserror('Kapal dalam posisi tidak muat !!!',16,1)
         return   
        end
      end

    Fetch Next From StockUpdateCursor INTO 
      @Old_StorageLocationId,@Old_ItemReceiveCode,@Old_No,@Old_PackingTransactionCode,@Old_BeritaAcaraCode,@Old_SuppliesCode,
      @Old_SuppliesName,@Old_Qty,@Old_P,@Old_L,@Old_T,@Old_Berat,@Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat,@Old_ReferenceCode,
      @Old_Mode,@Old_StorageInDate,
      @New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_PackingTransactionCode,@New_BeritaAcaraCode,@New_SuppliesCode,
      @New_SuppliesName,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_UnitMeasureId,@New_TotalM3,@New_TotalBerat,@New_ReferenceCode,
      @New_Mode,@New_StorageInDate

    end

    close StockUpdateCursor
    deallocate StockUpdateCursor

  end    

/*
      set @Str1=cast(@no as varchar)
      set @Str2=cast(@New_Qty as varchar)
      raiserror('^Juanda %s %s %s^',16,1,@Str1,@New_PackingTransactionCode,@str2)
      ROLLBACK TRANSACTION
      return  
*/
end
go


create trigger TR_StorageLocation_After on StorageLocation for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric,
    @New_StorageLocationCode TransactionCode,
    @New_StorageLocationName varchar(50),
    @New_FlagShipStorage Flag,

    @Old_StorageLocationId numeric,
    @Old_StorageLocationCode TransactionCode,
    @Old_StorageLocationName varchar(50),
    @Old_FlagShipStorage Flag,

    @KonosemenCode varchar(30)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    select 
      @New_StorageLocationId = StorageLocationId,
      @New_StorageLocationCode = StorageLocationCode,
      @New_StorageLocationName = StorageLocationName,
      @New_FlagShipStorage = FlagShipStorage
    from inserted


    if @New_FlagShipStorage = '1' 
    begin
      insert into ship (StorageLocationId,ShipCode,ShipName,FlagMuat)
      values (@New_StorageLocationId,@New_StorageLocationCode,@New_StorageLocationName,'0') 
    end
  end   


  if (@OnDelete = 1) 
  begin
    -- Initial
    select 
      @Old_StorageLocationId = StorageLocationId,
      @Old_StorageLocationCode = StorageLocationCode,
      @Old_StorageLocationName = StorageLocationName,
      @Old_FlagShipStorage = FlagShipStorage
    from deleted

   
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin
    select 
      @Old_StorageLocationId = StorageLocationId,
      @Old_StorageLocationCode = StorageLocationCode,
      @Old_StorageLocationName = StorageLocationName,
      @Old_FlagShipStorage = FlagShipStorage 
    from deleted
  
    select 
      @New_StorageLocationId = StorageLocationId,
      @New_StorageLocationCode = StorageLocationCode,
      @New_StorageLocationName = StorageLocationName,
      @New_FlagShipStorage = FlagShipStorage 
    from deleted
    
    if (@New_FlagShipStorage='0') and (@Old_FlagShipStorage='1')
    begin

       delete from ship where ShipCode=@Old_StorageLocationCode 
    
       select @KonosemenCode=c.KonosemenCode
       from Ship a 
       left join DaftarMuatKapal b on a.ShipId=b.ShipId
       left join Konosemen c on b.DaftarMuatKapalCode=c.DaftarMuatKapalCode
       where not c.KonosemenCode is null and c.statusapprove='1'

       if (not @KonosemenCode is null)
          RAISERROR('^Data Lokasi sudah pernah dipakai oleh konosemen no %s !^', 16, 1,@KonosemenCode)

    end
  end    
end
go


create trigger TR_SuppliesReceiveDt_After on SuppliesReceiveDt for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric,
    @New_ItemReceiveCode varchar(30),
    @New_No int,
    @New_PackingTransactionCode varchar(30),
    @New_BeritaAcaraCode varchar(30),
    @New_SuppliesCode varchar(30),
    @New_SuppliesName varchar(50),
    @New_Qty quantityplus,
    @New_QtyOutStanding quantityplus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_UnitMeasureId numeric,
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,
    @New_ReferenceCode varchar(30),
    @New_Mode status,
    @New_StorageInDate DateWithTime,

    @Old_StorageLocationId numeric,
    @Old_ItemReceiveCode varchar(30),
    @Old_No int,
    @Old_PackingTransactionCode varchar(30),
    @Old_BeritaAcaraCode varchar(30),
    @Old_SuppliesCode varchar(30),
    @Old_SuppliesName varchar(50),
    @Old_Qty quantityplus,
    @Old_QtyOutStanding quantityplus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_UnitMeasureId numeric,
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Old_ReferenceCode varchar(30),
    @Old_Mode status,
    @Old_StorageInDate DateWithTime,
    
    @no int,
    @QtySisa int,
    @StatusApprove status,
    @SelisihQtyUpdate quantity,
    @ItemReceiveDate DateWithTime,
    @Str varchar(30),
    @RouteId numeric,
    @FlagShipStorage Flag,
    @DaftarMuatKapalCode varchar(30)

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    declare SuppliesReceiveDtInsertCursor CURSOR FOR 
      SELECT 
         a.ItemReceiveCode,a.No,a.SuppliesCode,a.SuppliesName,a.StorageLocationId,
         a.Qty,a.QtyOutStanding,a.P,a.L,a.T,a.Berat,a.UnitMeasureId,a.TotalM3,a.TotalBerat 
      FROM inserted a 
      
    open SuppliesReceiveDtInsertCursor

    Fetch Next From SuppliesReceiveDtInsertCursor INTO 
      @New_ItemReceiveCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_StorageLocationId,@New_Qty,@New_QtyOutStanding,@New_P,@New_L,@New_T,@New_Berat,
      @New_UnitMeasureId,@New_TotalM3,@New_TotalBerat    
  
    WHILE @@FETCH_STATUS = 0
    BEGIN
  
    
    select @ItemReceiveDate=ItemReceiveDate,@RouteId=RouteId,@StatusApprove=StatusApprove
    from SuppliesReceiveHd 
    where ItemReceiveCode = @New_ItemReceiveCode

    if (@ItemReceiveDate <= dbo.fnGetClosingDate())     
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end
 
    if @StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data baru tidak bisa masuk karena sudah di Batalkan !!!',16,1)
      return
    end      

--    set @Str=(select dbo.fnGetDaftarMuatKapal(@New_StorageLocationId,@RouteId))
--    raiserror('hallo%s',16,1,@Str)

    update SuppliesReceivedt set QtyOutStanding=Qty,DaftarMuatKapalCode=(select dbo.fnGetDaftarMuatKapal(@New_StorageLocationId,@RouteId))
    where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No

    insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
    values (@New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId,'0',@New_ItemReceiveCode,@ItemReceiveDate)

    Fetch Next From SuppliesReceiveDtInsertCursor INTO 
      @New_ItemReceiveCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_StorageLocationId,@New_Qty,@New_QtyOutStanding,@New_P,@New_L,@New_T,@New_Berat,
      @New_UnitMeasureId,@New_TotalM3,@New_TotalBerat    

   end

   close SuppliesReceiveDtInsertCursor
   deallocate SuppliesReceiveDtInsertCursor

  end   

  -- **********************************************************************************************************
  if (@Ondelete = 1) 
  begin
    declare SuppliesReceiveDtDeleteCursor CURSOR FOR 
      SELECT 
         a.ItemReceiveCode,a.No,a.SuppliesCode,a.SuppliesName,a.StorageLocationId,
         a.Qty,a.QtyOutStanding,a.P,a.L,a.T,a.Berat,a.UnitMeasureId,a.TotalM3,a.TotalBerat   
      FROM deleted a 
      
    open SuppliesReceiveDtDeleteCursor

    Fetch Next From SuppliesReceiveDtDeleteCursor INTO 
      @Old_ItemReceiveCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_StorageLocationId,@Old_Qty,@Old_QtyOutStanding,@Old_P,@Old_L,@Old_T,@Old_Berat,
      @Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat    
  
    WHILE @@FETCH_STATUS = 0
    BEGIN

    select @ItemReceiveDate=ItemReceiveDate,@RouteId=RouteId,@StatusApprove=StatusApprove
    from SuppliesReceiveHd 
    where ItemReceiveCode = @Old_ItemReceiveCode

--    if @StatusApprove='2'
--       raiserror('Data tidak bisa dihapus karena sudah di Batalkan !!!',16,1)

    if (@ItemReceiveDate <= dbo.fnGetClosingDate())     
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end
 
    if (@Old_Qty<>@Old_QtyOutStanding)
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data sudah terpakai !!!',16,1,@Str)
      return
    end
    else
    begin
      set nocount on 
      delete from Stock 
      where ItemReceiveCode=@Old_ItemReceiveCode and no=@Old_No
      set nocount off 
    end

    Fetch Next From SuppliesReceiveDtDeleteCursor INTO 
      @Old_ItemReceiveCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_StorageLocationId,@Old_Qty,@Old_QtyOutStanding,@Old_P,@Old_L,@Old_T,@Old_Berat,
      @Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat    
   end

   close SuppliesReceiveDtDeleteCursor
   deallocate SuppliesReceiveDtDeleteCursor
  end
  
  if (@OnUpdate = 1) 
  begin
    declare SuppliesReceiveDtUpdateCursor CURSOR FOR 
      SELECT 
         a.ItemReceiveCode,a.No,a.SuppliesCode,a.SuppliesName,a.StorageLocationId,
         a.Qty,a.QtyOutStanding,a.P,a.L,a.T,a.Berat,a.UnitMeasureId,a.TotalM3,a.TotalBerat, 
         b.ItemReceiveCode,b.No,b.SuppliesCode,b.SuppliesName,b.StorageLocationId,
         b.Qty,b.QtyOutStanding,b.P,b.L,b.T,b.Berat,b.UnitMeasureId,b.TotalM3,b.TotalBerat 
      FROM deleted a 
      left join inserted b on a.ItemReceiveCode=b.ItemReceiveCode and a.no=b.no

    open SuppliesReceiveDtUpdateCursor

    Fetch Next From SuppliesReceiveDtUpdateCursor INTO 
      @Old_ItemReceiveCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_StorageLocationId,@Old_Qty,@Old_QtyOutStanding,@Old_P,@Old_L,@Old_T,@Old_Berat,
      @Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat,
      @New_ItemReceiveCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_StorageLocationId,@New_Qty,@New_QtyOutStanding,@New_P,@New_L,@New_T,@New_Berat,
      @New_UnitMeasureId,@New_TotalM3,@New_TotalBerat    
  
    WHILE @@FETCH_STATUS = 0
    BEGIN

    select @ItemReceiveDate=ItemReceiveDate,@RouteId=RouteId,@StatusApprove=StatusApprove
    from SuppliesReceiveHd 
    where ItemReceiveCode = @Old_ItemReceiveCode

    if (@ItemReceiveDate <= dbo.fnGetClosingDate())     
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end

    if @StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end


    if (@New_ItemReceiveCode=@Old_ItemReceiveCode) and (@New_No=@Old_No)
    begin
       if (@New_qty<>@Old_qty)
       begin
          set @SelisihQtyUpdate=@New_qty-@Old_qty

          if (@SelisihQtyUpdate<0)
          begin

             if (@SelisihQtyUpdate+@Old_QtyOutStanding<0) 
             begin
	           if (@@TRANCOUNT = 1) 
                  ROLLBACK TRANSACTION
               raiserror('Data kurang !!!',16,1,@Str)
               return
             end

             update SuppliesReceivedt set QtyOutStanding=QtyOutStanding+@SelisihQtyUpdate
             where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No

             update Stock set Qty=Qty+@SelisihQtyUpdate
             where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and storagelocationid=@New_StorageLocationId

             delete from stock 
             where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and qty=0 and storagelocationid=@New_StorageLocationId

          end
          else
          begin

            if not(exists(select stockid from stock where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and storagelocationid=@New_StorageLocationId))
            begin

              
              set @QtySisa=@SelisihQtyUpdate+@New_QtyOutStanding
              insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
              values (@New_StorageLocationId,@New_ItemReceiveCode,@New_No,@QtySisa,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@QtySisa*@New_Berat,@QtySisa*@New_P*@New_L*@New_T,@New_UnitMeasureId,'0',@New_ItemReceiveCode,@ItemReceiveDate)
            end
            else
            begin
              --raiserror('juan',16,1)
              --rollback
              --return

              update Stock set Qty=Qty+@SelisihQtyUpdate
              where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and storagelocationid=@New_StorageLocationId

              delete from stock 
              where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and qty=0 and storagelocationid=@New_StorageLocationId
            end
              update SuppliesReceivedt set QtyOutStanding=QtyOutStanding+@SelisihQtyUpdate
              where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No
          end


          set nocount off
       end

       if (@New_qtyoutstanding<>@Old_qtyoutstanding)
       begin


          set @SelisihQtyUpdate=@New_qtyoutstanding-@Old_qtyoutstanding

          set nocount on           

          if not(exists(select ItemReceiveCode from stock where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and storagelocationid=@New_StorageLocationId)) 
          begin
            insert into Stock (StorageLocationId,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId,Mode,ReferenceCode,StorageInDate)
            values (@New_StorageLocationId,@New_ItemReceiveCode,@New_No,@New_QtyOutStanding-@Old_QtyOutStanding,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,(@New_QtyOutStanding-@Old_QtyOutStanding)*@New_Berat,(@New_QtyOutStanding-@Old_QtyOutStanding)*@New_P*@New_L*@New_T/1000000,@New_UnitMeasureId,'0',@New_ItemReceiveCode,@ItemReceiveDate)
          end
          else
          begin
            update Stock set Qty=Qty+@SelisihQtyUpdate
            where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and storagelocationid=@New_StorageLocationId
            delete from stock 
            where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No and qty=0 and storagelocationid=@New_StorageLocationId
          end

          set nocount off           
       end

    end

    set nocount on 
    update Stock set SuppliesCode=@New_SuppliesCode,SuppliesName=@New_SuppliesName,T=@New_T,L=@New_L,P=@New_P,
           Berat = @New_Berat,UnitMeasureId = @New_UnitMeasureId,TotalM3 = @New_TotalM3,TotalBerat = @New_TotalBerat   
    where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No

    update PackingTransactionDt set SuppliesCode=@New_SuppliesCode,SuppliesName=@New_SuppliesName,T=@New_T,L=@New_L,P=@New_P,
           Berat = @New_Berat,UnitMeasureId = @New_UnitMeasureId,TotalM3 = @New_P*@New_L*@New_T*qty/1000000,TotalBerat = @New_Berat*qty/1000
    where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No
    
    update MutasiStorageDt set SuppliesCode=@New_SuppliesCode,SuppliesName=@New_SuppliesName,T=@New_T,L=@New_L,P=@New_P,
           Berat = @New_Berat,UnitMeasureId = @New_UnitMeasureId,TotalM3 = @New_P*@New_L*@New_T*qty/1000000,TotalBerat = @New_Berat*qty/1000   
    where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No
    
    update KonosemenDt set SuppliesCode=@New_SuppliesCode,SuppliesName=@New_SuppliesName,T=@New_T,L=@New_L,P=@New_P,
           Berat = @New_Berat,UnitMeasureId = @New_UnitMeasureId,TotalM3 = @New_P*@New_L*@New_T*qty/1000000,TotalBerat = @New_Berat*qty/1000   
    where ItemReceiveCode=@New_ItemReceiveCode and No=@New_No

    set nocount off 

    Fetch Next From SuppliesReceiveDtUpdateCursor INTO 
      @Old_ItemReceiveCode,@Old_No,@Old_SuppliesCode,@Old_SuppliesName,
      @Old_StorageLocationId,@Old_Qty,@Old_QtyOutStanding,@Old_P,@Old_L,@Old_T,@Old_Berat,
      @Old_UnitMeasureId,@Old_TotalM3,@Old_TotalBerat,
      @New_ItemReceiveCode,@New_No,@New_SuppliesCode,@New_SuppliesName,
      @New_StorageLocationId,@New_Qty,@New_QtyOutStanding,@New_P,@New_L,@New_T,@New_Berat,
      @New_UnitMeasureId,@New_TotalM3,@New_TotalBerat    

  end    

    close SuppliesReceiveDtUpdateCursor
    deallocate SuppliesReceiveDtUpdateCursor
  end
end
go


create trigger TR_SuppliesReceiveHd_After on SuppliesReceiveHd for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StatusApprove Status,
    @New_ItemReceiveCode TransactionCode,
    @New_ItemReceiveDate DateWithTime,

    @Old_StatusApprove Status,
    @Old_ItemReceiveCode TransactionCode,
    @Old_ItemReceiveDate DateWithTime

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnUpdate = 1) 
  begin

    declare SuppliesReceiveHdUpdateCursor CURSOR FOR 
      SELECT 
        a.StatusApprove,a.ItemReceiveCode,a.ItemReceiveDate,
        b.StatusApprove,b.ItemReceiveCode,b.ItemReceiveDate
      FROM deleted a 
      left join inserted b on a.itemreceivecode=b.itemreceivecode

    open SuppliesReceiveHdUpdateCursor

    Fetch Next From SuppliesReceiveHdUpdateCursor INTO 
      @Old_StatusApprove,@Old_ItemReceiveCode,@Old_ItemReceiveDate,
      @New_StatusApprove,@New_ItemReceiveCode,@New_ItemReceiveDate
  
    WHILE @@FETCH_STATUS = 0
    BEGIN

    if @Old_StatusApprove='2'
    begin
	  if (@@TRANCOUNT = 1) 
         ROLLBACK TRANSACTION
      raiserror('Data tidak bisa dirubah karena sudah di Batalkan !!!',16,1)
      return
    end
       
    if @New_StatusApprove='2'
    begin
       if exists(select ItemReceiveCode from SuppliesReceiveDt where (Qty<>QtyOutStanding) and ItemReceiveCode=@New_ItemReceiveCode) 
       begin
   	     if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
            raiserror('Data tidak bisa dibatalkan karena sudah di dipakai di transaksi !!!',16,1)
         return
       end
       else    
       begin
          set nocount on
          delete from SuppliesReceiveDt where ItemReceiveCode=@New_ItemReceiveCode       
          set nocount off
       end
    end
 
    if (@New_ItemReceiveDate <= dbo.fnGetClosingDate()) or (@Old_ItemReceiveDate <= dbo.fnGetClosingDate()) -- closing date
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
        RETURN
    end

    Fetch Next From SuppliesReceiveHdUpdateCursor INTO 
      @Old_StatusApprove,@Old_ItemReceiveCode,@Old_ItemReceiveDate,
      @New_StatusApprove,@New_ItemReceiveCode,@New_ItemReceiveDate
  end    

   close SuppliesReceiveHdUpdateCursor
   deallocate SuppliesReceiveHdUpdateCursor   
  end
end
go


create trigger TR_SuratJalanDt_After on SuratJalanDt for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_StorageLocationId numeric,
    @New_SuratJalanCode varchar(30),
    @New_No int,
    @New_PackingTransactionCode varchar(30),
    @New_BeritaAcaraCode varchar(30),
    @New_SuppliesCode varchar(30),
    @New_SuppliesName varchar(50),
    @New_Qty quantityplus,
    @New_P measureplus,
    @New_L measureplus,
    @New_T measureplus,
    @New_Berat measureplus,
    @New_UnitMeasureId numeric,
    @New_TotalM3 MeasureBigPlus,
    @New_TotalBerat MeasureBigPlus,
    @New_ReferenceCode varchar(30),
    @New_Mode status,
    @New_StorageInDate DateWithTime,

    @Old_StorageLocationId numeric,
    @Old_SuratJalanCode varchar(30),
    @Old_No int,
    @Old_PackingTransactionCode varchar(30),
    @Old_BeritaAcaraCode varchar(30),
    @Old_SuppliesCode varchar(30),
    @Old_SuppliesName varchar(50),
    @Old_Qty quantityplus,
    @Old_P measureplus,
    @Old_L measureplus,
    @Old_T measureplus,
    @Old_Berat measureplus,
    @Old_UnitMeasureId numeric,
    @Old_TotalM3 MeasureBigPlus,
    @Old_TotalBerat MeasureBigPlus,
    @Old_ReferenceCode varchar(30),
    @Old_Mode status,
    @Old_StorageInDate DateWithTime,
    
    @no int,
    @DaftarMuatKapalCode varchar(30),
    @MerekId numeric,
    @KonosemenCode varchar(30),
    @FlagShipStorage Flag

  if @@rowcount = 0
    return
  
  -- Initial Trigger State
  set @OnUpdate = 0
  set @OnInsert = 0
  set @OnDelete = 0
  if exists (select * from inserted)
  begin
    if exists (select * from deleted)
      set @OnUpdate = 1
    else
      set @OnInsert = 1
  end
  else
    if exists (select * from deleted)
      set @OnDelete = 1
        
  ------------------------- Main Trigger -------------------------
  
  if (@OnInsert = 1) 
  begin
    -- Initial
    select 
      @New_SuratJalanCode = SuratJalanCode,
      @New_No = No,
      @New_SuppliesCode = SuppliesCode,
      @New_SuppliesName = SuppliesName,
      @New_Qty= Qty ,
      @New_P = P,
      @New_L = L,
      @New_T = T,
      @New_Berat = Berat,
      @New_UnitMeasureId = UnitMeasureId,
      @New_TotalM3 = TotalM3,
      @New_TotalBerat = TotalBerat    
    from inserted
    
    select @FlagShipStorage=FlagShipStorage 
    from StorageLocation
    where StorageLocationId=@New_StorageLocationId
    
    if @FlagShipStorage='1'
    begin
      --1 cari konosemen kalo sudah ada
      select @KonosemenCode=c.konosemencode,@MerekId=d.MerekId,@DaftarMuatKapalCode=b.DaftarMuatKapalCode 
      from stock a
      left join suppliesreceivehd d on a.itemreceivecode=d.itemreceivecode
      left join suppliesreceivedt b on a.itemreceivecode=b.itemreceivecode and a.no=b.no
      left join konosemen c on b.daftarmuatkapalcode=c.daftarmuatkapalcode and c.MerekId=d.MerekId
    
      --2. kalo belum ada buat
      if (@KonosemenCode is null)
      begin
       set @KonosemenCode =(select dbo.fngetid('KONOSEMEN',@New_StorageInDate,''))
       
       insert into konosemen (KonosemenCode,KonosemenDate,EmployeeId,CounterPrint,StatusApprove,MerekId,CustomKonosemen,DaftarMuatKapalCode)
       values (@KonosemenCode,@New_StorageInDate,'USER',1,'0',@MerekId,'0',@DaftarMuatKapalCode)

       select @KonosemenCode=c.konosemencode 
       from stock a
       left join suppliesreceivehd d on a.itemreceivecode=d.itemreceivecode
       left join suppliesreceivedt b on a.itemreceivecode=b.itemreceivecode and a.no=b.no
       left join konosemen c on b.daftarmuatkapalcode=c.daftarmuatkapalcode and c.MerekId=d.MerekId

      end
      --3. tambahkan ke detailnya
      set @no=(select max(no) from konosementdt where konosemencode=@konosemencode)+1
      insert into KonosemenDt (KonosemenCode,KonosemenNo,ItemReceiveCode,No,Qty,P,L,T,Berat,SuppliesCode,SuppliesName,TotalBerat,TotalM3,UnitMeasureId)
      values (@KonosemenCode,@no,@New_SuratJalanCode,@New_No,@New_Qty,@New_P,@New_L,@New_T,@New_Berat,@New_SuppliesCode,@New_SuppliesName,@New_TotalBerat,@New_TotalM3,@New_UnitMeasureId)

    end
  end   


  if (@OnDelete = 1) 
  begin
    -- Initial
    select 
      @Old_SuratJalanCode = SuratJalanCode,
      @Old_No = No,
      @Old_SuppliesCode = SuppliesCode,
      @Old_SuppliesName = SuppliesName,
      @Old_Qty = Qty ,
      @Old_P = P,
      @Old_L = L,
      @Old_T = T,
      @Old_Berat = Berat,
      @Old_UnitMeasureId = UnitMeasureId,
      @Old_TotalM3 = TotalM3,
      @Old_TotalBerat = TotalBerat
    from deleted
    
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin
    select 
      @Old_SuratJalanCode = SuratJalanCode,
      @Old_No = No,
      @Old_SuppliesCode = SuppliesCode,
      @Old_SuppliesName = SuppliesName,
      @Old_Qty = Qty,
      @Old_P = P,
      @Old_L = L,
      @Old_T = T,
      @Old_Berat = Berat,
      @Old_UnitMeasureId = UnitMeasureId,
      @Old_TotalM3 = TotalM3,
      @Old_TotalBerat = TotalBerat    
    from deleted
  end    
end
go

