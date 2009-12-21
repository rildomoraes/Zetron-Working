/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     26/11/2009 14:14:04                          */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where id = object_id('TR_Absen_After')
          and type = 'TR')
   drop trigger TR_Absen_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_AbsenBulan_After')
          and type = 'TR')
   drop trigger TR_AbsenBulan_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_HitPayroll_After')
          and type = 'TR')
   drop trigger TR_HitPayroll_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_Lembur_After')
          and type = 'TR')
   drop trigger TR_Lembur_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_Mutasi_After')
          and type = 'TR')
   drop trigger TR_Mutasi_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_Pegawai_After')
          and type = 'TR')
   drop trigger TR_Pegawai_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_Scheduling_After')
          and type = 'TR')
   drop trigger TR_Scheduling_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_TransaksiAbsen_After')
          and type = 'TR')
   drop trigger TR_TransaksiAbsen_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_TransaksiPayrollHd_Before')
          and type = 'TR')
   drop trigger TR_TransaksiPayrollHd_Before
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
          where  id = object_id('currencytoString')
          and type in ('IF', 'FN', 'TF'))
   drop function currencytoString
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetClosingDate')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetClosingDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetDate')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetFirstDateofMonth')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetFirstDateofMonth
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetId')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetId
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetLastDateOfMonth')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetLastDateOfMonth
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetListDelimitedbyComma')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetListDelimitedbyComma
go

if exists (select 1
          from sysobjects
          where  id = object_id('fngetperiod')
          and type in ('IF', 'FN', 'TF'))
   drop function fngetperiod
go

if exists (select 1
          from sysobjects
          where  id = object_id('getshiftschedule')
          and type in ('IF', 'FN', 'TF'))
   drop function getshiftschedule
go

if exists (select 1
          from sysobjects
          where  id = object_id('mutasi2')
          and type in ('IF', 'FN', 'TF'))
   drop function mutasi2
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSetId')
          and type in ('P','PC'))
   drop procedure spSetId
go

if exists (select 1
          from sysobjects
          where  id = object_id('spcopygroupgaji')
          and type in ('P','PC'))
   drop procedure spcopygroupgaji
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesbatalharian')
          and type in ('P','PC'))
   drop procedure spprosesbatalharian
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesbatalperiode')
          and type in ('P','PC'))
   drop procedure spprosesbatalperiode
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesbln')
          and type in ('P','PC'))
   drop procedure spprosesbln
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesclosingshift')
          and type in ('P','PC'))
   drop procedure spprosesclosingshift
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesharian')
          and type in ('P','PC'))
   drop procedure spprosesharian
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesisitanggal')
          and type in ('P','PC'))
   drop procedure spprosesisitanggal
go

if exists (select 1
          from sysobjects
          where  id = object_id('spprosesperiode')
          and type in ('P','PC'))
   drop procedure spprosesperiode
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Absen') and o.name = 'Data_detail_group_shift_dipakai_oleh_absen')
alter table Absen
   drop constraint Data_detail_group_shift_dipakai_oleh_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Absen') and o.name = 'Data_kode_absen_dipakai_oleh_absen')
alter table Absen
   drop constraint Data_kode_absen_dipakai_oleh_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Absen') and o.name = 'Data_mutasi_pegawai_dipakai_oleh_absen')
alter table Absen
   drop constraint Data_mutasi_pegawai_dipakai_oleh_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Absen') and o.name = 'Data_pegawai_dipakai_oleh_absen')
alter table Absen
   drop constraint Data_pegawai_dipakai_oleh_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Absen') and o.name = 'Data_user_dipakai_oleh_absen')
alter table Absen
   drop constraint Data_user_dipakai_oleh_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AbsenBulan') and o.name = 'Data_mutasi_pegawai_dipakai_oleh_absen_bulan')
alter table AbsenBulan
   drop constraint Data_mutasi_pegawai_dipakai_oleh_absen_bulan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AbsenBulan') and o.name = 'Data_pegawai_dipakai_oleh_absen_bulan')
alter table AbsenBulan
   drop constraint Data_pegawai_dipakai_oleh_absen_bulan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AbsenRekapBulan') and o.name = 'Data_kode_absen_dipakai_oleh_absen_rekap_bulan')
alter table AbsenRekapBulan
   drop constraint Data_kode_absen_dipakai_oleh_absen_rekap_bulan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AbsenRekapBulan') and o.name = 'Data_mutasi_pegawai_dipakai_oleh_absen_rekap_bulan')
alter table AbsenRekapBulan
   drop constraint Data_mutasi_pegawai_dipakai_oleh_absen_rekap_bulan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AbsenRekapBulan') and o.name = 'Data_pegawai_dipakai_oleh_absen_rekap_bulan')
alter table AbsenRekapBulan
   drop constraint Data_pegawai_dipakai_oleh_absen_rekap_bulan
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
   where r.fkeyid = object_id('CounterDt1') and o.name = 'Reference_26')
alter table CounterDt1
   drop constraint Reference_26
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CounterDt2') and o.name = 'Reference_25')
alter table CounterDt2
   drop constraint Reference_25
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Customer') and o.name = 'Data_kota_dipakai_oleh_customer')
alter table Customer
   drop constraint Data_kota_dipakai_oleh_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DailyKurs') and o.name = 'Data_mata_uang_dipakai_oleh_kurs_harian')
alter table DailyKurs
   drop constraint Data_mata_uang_dipakai_oleh_kurs_harian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataAsset') and o.name = 'Data_pegawai_dipakai_oleh_data_asset')
alter table DataAsset
   drop constraint Data_pegawai_dipakai_oleh_data_asset
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataAsset') and o.name = 'Data_sub_asset_dipakai_oleh_data_sub_asset')
alter table DataAsset
   drop constraint Data_sub_asset_dipakai_oleh_data_sub_asset
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataBahasa') and o.name = 'Data_bahasa_dipakai_oleh_data_bahasa')
alter table DataBahasa
   drop constraint Data_bahasa_dipakai_oleh_data_bahasa
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataBahasa') and o.name = 'Data_pegawai_dipakai_oleh_data_bahasa')
alter table DataBahasa
   drop constraint Data_pegawai_dipakai_oleh_data_bahasa
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataFamily') and o.name = 'Data_pegawai_dipakai_oleh_data_family')
alter table DataFamily
   drop constraint Data_pegawai_dipakai_oleh_data_family
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataKeahlian') and o.name = 'Data_keahlian_dipakai_oleh_data_keahlian')
alter table DataKeahlian
   drop constraint Data_keahlian_dipakai_oleh_data_keahlian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataKeahlian') and o.name = 'Data_pegawai_dipakai_oleh_data_keahlian')
alter table DataKeahlian
   drop constraint Data_pegawai_dipakai_oleh_data_keahlian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataOrganisasi') and o.name = 'Data_pegawai_dipakai_oleh_data_organisasi')
alter table DataOrganisasi
   drop constraint Data_pegawai_dipakai_oleh_data_organisasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataPendidikan') and o.name = 'Data_pegawai_dipakai_oleh_data_pendidikan')
alter table DataPendidikan
   drop constraint Data_pegawai_dipakai_oleh_data_pendidikan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataPendidikan') and o.name = 'Data_pendidikan_dipakai_oleh_data_pendidikan')
alter table DataPendidikan
   drop constraint Data_pendidikan_dipakai_oleh_data_pendidikan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataPengalamanKerja') and o.name = 'Data_pegawai_dipakai_oleh_data_pengalaman_kerja')
alter table DataPengalamanKerja
   drop constraint Data_pegawai_dipakai_oleh_data_pengalaman_kerja
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataReferensi') and o.name = 'Data_pegawai_dipakai_oleh_data_referensi')
alter table DataReferensi
   drop constraint Data_pegawai_dipakai_oleh_data_referensi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DataRelasi') and o.name = 'Data_pegawai_dipakai_oleh_data_relasi')
alter table DataRelasi
   drop constraint Data_pegawai_dipakai_oleh_data_relasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Departemen') and o.name = 'Data_divisi_dipakai_oleh_departemen')
alter table Departemen
   drop constraint Data_divisi_dipakai_oleh_departemen
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
   where r.fkeyid = object_id('GroupShiftDt1') and o.name = 'Data_group_shift_dipakai_oleh_group_shift')
alter table GroupShiftDt1
   drop constraint Data_group_shift_dipakai_oleh_group_shift
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GroupShiftDt1') and o.name = 'Data_shift_dipakai_oleh_detail_group_shift')
alter table GroupShiftDt1
   drop constraint Data_shift_dipakai_oleh_detail_group_shift
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GroupShiftDt2') and o.name = 'Data_detail_group_shift_dipakai_oleh_data_group_shift_detail_detail')
alter table GroupShiftDt2
   drop constraint Data_detail_group_shift_dipakai_oleh_data_group_shift_detail_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll') and o.name = 'Data_detail_group_shift_dipakai_oleh_hitpayroll')
alter table HitPayroll
   drop constraint Data_detail_group_shift_dipakai_oleh_hitpayroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll') and o.name = 'Data_detail_syarat_payroll_di_pakai_oleh_hitpayroll')
alter table HitPayroll
   drop constraint Data_detail_syarat_payroll_di_pakai_oleh_hitpayroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll') and o.name = 'Data_pegawai_dipakai_oleh_hitpayroll')
alter table HitPayroll
   drop constraint Data_pegawai_dipakai_oleh_hitpayroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll2') and o.name = 'Data_detail_group_shift_dipakai_oleh_hitpayroll2')
alter table HitPayroll2
   drop constraint Data_detail_group_shift_dipakai_oleh_hitpayroll2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll2') and o.name = 'Data_pegawai_dipakai_oleh_hitpayroll2')
alter table HitPayroll2
   drop constraint Data_pegawai_dipakai_oleh_hitpayroll2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll3') and o.name = 'Data_detail_group_shift_dipakai_oleh_hitpayroll3')
alter table HitPayroll3
   drop constraint Data_detail_group_shift_dipakai_oleh_hitpayroll3
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll3') and o.name = 'Data_detail_syarat_payroll_dipakai_oleh_hitpayroll3')
alter table HitPayroll3
   drop constraint Data_detail_syarat_payroll_dipakai_oleh_hitpayroll3
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HitPayroll3') and o.name = 'Data_pegawai_dipakai_oleh_hitpayroll3')
alter table HitPayroll3
   drop constraint Data_pegawai_dipakai_oleh_hitpayroll3
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
   where r.fkeyid = object_id('Lembur') and o.name = 'Data_detail_group_shift_dipakai_oleh_lembur')
alter table Lembur
   drop constraint Data_detail_group_shift_dipakai_oleh_lembur
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Lembur') and o.name = 'Data_mutasi_pegawai_dipakai_oleh_lembur')
alter table Lembur
   drop constraint Data_mutasi_pegawai_dipakai_oleh_lembur
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Lembur') and o.name = 'Data_pegawai_dipakai_oleh_lembur')
alter table Lembur
   drop constraint Data_pegawai_dipakai_oleh_lembur
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LogProgram') and o.name = 'Data_tipe_log_dipakai_oleh_log_program')
alter table LogProgram
   drop constraint Data_tipe_log_dipakai_oleh_log_program
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_departemen_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_departemen_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_divisi_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_divisi_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_jabatan_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_jabatan_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_outsourcing_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_outsourcing_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_pegawai_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_pegawai_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_perusahaan_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_perusahaan_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_status_karyawan_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_status_karyawan_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Mutasi') and o.name = 'Data_user_dipakai_oleh_mutasi_pegawai')
alter table Mutasi
   drop constraint Data_user_dipakai_oleh_mutasi_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_pegawai_dipakai_oleh_mutasi')
alter table MutasiHd
   drop constraint Data_pegawai_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Reference_21')
alter table MutasiStorageHd
   drop constraint Reference_21
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
   where r.fkeyid = object_id('PayrollBalance') and o.name = 'Data_pegawai_dipakai_oleh_payroll_balance')
alter table PayrollBalance
   drop constraint Data_pegawai_dipakai_oleh_payroll_balance
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PayrollDetail') and o.name = 'Data_bank_dipakai_oleh_payroll_detail')
alter table PayrollDetail
   drop constraint Data_bank_dipakai_oleh_payroll_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PayrollDetail') and o.name = 'Data_group_gaji_dipakai_oleh_payroll_detail')
alter table PayrollDetail
   drop constraint Data_group_gaji_dipakai_oleh_payroll_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PayrollDetail') and o.name = 'Data_pegawai_dipakai_oleh_payroll_detail')
alter table PayrollDetail
   drop constraint Data_pegawai_dipakai_oleh_payroll_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_departemen_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_departemen_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_detail_group_shift_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_detail_group_shift_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_divisi_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_divisi_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_jabatan_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_jabatan_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_outsourcing_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_outsourcing_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_perusahaan_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_perusahaan_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pegawai') and o.name = 'Data_status_karyawan_dipakai_oleh_pegawai')
alter table Pegawai
   drop constraint Data_status_karyawan_dipakai_oleh_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PegawaiApproval') and o.name = 'Data_pegawai_dipakai_oleh_pegawai_approval')
alter table PegawaiApproval
   drop constraint Data_pegawai_dipakai_oleh_pegawai_approval
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PenambahanPayrollDetail') and o.name = 'Data_pegawai_dipakai_oleh_detail_penambahan_payroll')
alter table PenambahanPayrollDetail
   drop constraint Data_pegawai_dipakai_oleh_detail_penambahan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PenambahanPayrollDetail') and o.name = 'Data_penambahan_payroll_dipakai_oleh_detail_penambahan_payroll')
alter table PenambahanPayrollDetail
   drop constraint Data_penambahan_payroll_dipakai_oleh_detail_penambahan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PenguranganPayrollDetail') and o.name = 'Data_pegawai_dipakai_oleh_detail_pengurangan_payroll')
alter table PenguranganPayrollDetail
   drop constraint Data_pegawai_dipakai_oleh_detail_pengurangan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PenguranganPayrollDetail') and o.name = 'Data_pengurangan_payroll_dipakai_detail_pengurangan_payroll')
alter table PenguranganPayrollDetail
   drop constraint Data_pengurangan_payroll_dipakai_detail_pengurangan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PeriodeGajiDt') and o.name = 'Data_group_gaji_dipakai_oleh_detail_periode_gaji')
alter table PeriodeGajiDt
   drop constraint Data_group_gaji_dipakai_oleh_detail_periode_gaji
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PeriodeGajiDt') and o.name = 'Data_periode_gaji_dipakai_oleh_detail_periode_gaji')
alter table PeriodeGajiDt
   drop constraint Data_periode_gaji_dipakai_oleh_detail_periode_gaji
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PeriodeGajiHd') and o.name = 'Data_pegawai_dipakai_oleh_periode_gaji_pegawai')
alter table PeriodeGajiHd
   drop constraint Data_pegawai_dipakai_oleh_periode_gaji_pegawai
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PersonValidation') and o.name = 'Data_pegawai_dipakai_oleh_data_validasi')
alter table PersonValidation
   drop constraint Data_pegawai_dipakai_oleh_data_validasi
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
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_pegawai_dipakai_oleh_detail_order_penjualan
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
   where r.fkeyid = object_id('Scheduling') and o.name = 'Data_detail_group_shift_dipakai_oleh_scheduling')
alter table Scheduling
   drop constraint Data_detail_group_shift_dipakai_oleh_scheduling
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Scheduling') and o.name = 'Data_pegawai_dipakai_oleh_schedule')
alter table Scheduling
   drop constraint Data_pegawai_dipakai_oleh_schedule
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Scheduling') and o.name = 'Data_perusahaan_dipakai_oleh_scheduling')
alter table Scheduling
   drop constraint Data_perusahaan_dipakai_oleh_scheduling
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SettingGajiNominal') and o.name = 'Data_group_gaji_dipakai_setting_gaji_nominal')
alter table SettingGajiNominal
   drop constraint Data_group_gaji_dipakai_setting_gaji_nominal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SettingGajiNominal') and o.name = 'Data_tipe_payroll_dipakai_setting_gaji_nominal')
alter table SettingGajiNominal
   drop constraint Data_tipe_payroll_dipakai_setting_gaji_nominal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SettingGajiSyarat') and o.name = 'Data_group_gaji_dipakai_oleh_setting_syarat_gaji')
alter table SettingGajiSyarat
   drop constraint Data_group_gaji_dipakai_oleh_setting_syarat_gaji
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SettingGajiSyarat') and o.name = 'Data_syarat_dipakai_oleh_setting_syarat_gaji')
alter table SettingGajiSyarat
   drop constraint Data_syarat_dipakai_oleh_setting_syarat_gaji
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SettingGajiSyarat') and o.name = 'Data_tipe_payroll_dipakai_oleh_setting_gaji_syarat')
alter table SettingGajiSyarat
   drop constraint Data_tipe_payroll_dipakai_oleh_setting_gaji_syarat
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
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Reference_15')
alter table SuppliesReceiveHd
   drop constraint Reference_15
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SyaratDt') and o.name = 'Data_syarat_dipakai_oleh_syarat_detail')
alter table SyaratDt
   drop constraint Data_syarat_dipakai_oleh_syarat_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SyaratDt2') and o.name = 'Data_kode_absen_dipakai_oleh_syarat_detail_detail')
alter table SyaratDt2
   drop constraint Data_kode_absen_dipakai_oleh_syarat_detail_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SyaratDt2') and o.name = 'Data_syarat_detail_dipakai_oleh_syarat_detail_detail')
alter table SyaratDt2
   drop constraint Data_syarat_detail_dipakai_oleh_syarat_detail_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiAbsen') and o.name = 'Data_kode_absen_dipakai_oleh_transaksi_absen')
alter table TransaksiAbsen
   drop constraint Data_kode_absen_dipakai_oleh_transaksi_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiAbsen') and o.name = 'Data_pegawai_dipakai_oleh_transaksi_absen')
alter table TransaksiAbsen
   drop constraint Data_pegawai_dipakai_oleh_transaksi_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiAbsen') and o.name = 'Data_user_dipakai_oleh_transaksi_absen')
alter table TransaksiAbsen
   drop constraint Data_user_dipakai_oleh_transaksi_absen
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPayrollBalance') and o.name = 'Data_pegawai_dipakai_oleh_transaksi_payroll_balance')
alter table TransaksiPayrollBalance
   drop constraint Data_pegawai_dipakai_oleh_transaksi_payroll_balance
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPayrollDt') and o.name = 'Data_syarat_payroll_dipakai_oleh_detail_transaksi_payroll')
alter table TransaksiPayrollDt
   drop constraint Data_syarat_payroll_dipakai_oleh_detail_transaksi_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPayrollDt') and o.name = 'Data_tipe_payroll_dipakai_oleh_detail_transaksi_payroll')
alter table TransaksiPayrollDt
   drop constraint Data_tipe_payroll_dipakai_oleh_detail_transaksi_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPayrollDt') and o.name = 'Data_transaksi_payroll_dipakai_oleh_detail_transaksi_payroll')
alter table TransaksiPayrollDt
   drop constraint Data_transaksi_payroll_dipakai_oleh_detail_transaksi_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPengambilanPayrollDt') and o.name = 'Data_transaksi_payroll_dipakai_oleh_detail_transaksi_pengambilan_payroll')
alter table TransaksiPengambilanPayrollDt
   drop constraint Data_transaksi_payroll_dipakai_oleh_detail_transaksi_pengambilan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPengambilanPayrollDt') and o.name = 'Data_transaksi_pengambilan_payroll_dipakai_oleh_detail_pengambilan_payroll')
alter table TransaksiPengambilanPayrollDt
   drop constraint Data_transaksi_pengambilan_payroll_dipakai_oleh_detail_pengambilan_payroll
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransaksiPengambilanPayrollHd') and o.name = 'Data_employee_dipakai_oleh_transaksi_pengambilan_payroll')
alter table TransaksiPengambilanPayrollHd
   drop constraint Data_employee_dipakai_oleh_transaksi_pengambilan_payroll
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
           where  id = object_id('Absen')
            and   type = 'U')
   drop table Absen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AbsenBulan')
            and   type = 'U')
   drop table AbsenBulan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AbsenRekapBulan')
            and   type = 'U')
   drop table AbsenRekapBulan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Assets')
            and   type = 'U')
   drop table Assets
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Bahasa')
            and   type = 'U')
   drop table Bahasa
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Bank')
            and   type = 'U')
   drop table Bank
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
           where  id = object_id('DailyKurs')
            and   type = 'U')
   drop table DailyKurs
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataAsset')
            and   type = 'U')
   drop table DataAsset
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataBahasa')
            and   type = 'U')
   drop table DataBahasa
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataFamily')
            and   type = 'U')
   drop table DataFamily
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataKeahlian')
            and   type = 'U')
   drop table DataKeahlian
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataOrganisasi')
            and   type = 'U')
   drop table DataOrganisasi
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataPendidikan')
            and   type = 'U')
   drop table DataPendidikan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataPengalamanKerja')
            and   type = 'U')
   drop table DataPengalamanKerja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataReferensi')
            and   type = 'U')
   drop table DataReferensi
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DataRelasi')
            and   type = 'U')
   drop table DataRelasi
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Departemen')
            and   type = 'U')
   drop table Departemen
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
           where  id = object_id('Divisi')
            and   type = 'U')
   drop table Divisi
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Employee')
            and   type = 'U')
   drop table Employee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FingerPrint')
            and   type = 'U')
   drop table FingerPrint
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GroupGaji')
            and   type = 'U')
   drop table GroupGaji
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GroupShiftDt1')
            and   type = 'U')
   drop table GroupShiftDt1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GroupShiftDt2')
            and   type = 'U')
   drop table GroupShiftDt2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GroupShiftHd')
            and   type = 'U')
   drop table GroupShiftHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HitPayroll')
            and   type = 'U')
   drop table HitPayroll
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HitPayroll2')
            and   type = 'U')
   drop table HitPayroll2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HitPayroll3')
            and   type = 'U')
   drop table HitPayroll3
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Jabatan')
            and   type = 'U')
   drop table Jabatan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JobPosition')
            and   type = 'U')
   drop table JobPosition
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Keahlian')
            and   type = 'U')
   drop table Keahlian
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KodeAbsen')
            and   type = 'U')
   drop table KodeAbsen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Lembur')
            and   type = 'U')
   drop table Lembur
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Libur')
            and   type = 'U')
   drop table Libur
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
           where  id = object_id('MasterJamKerja')
            and   type = 'U')
   drop table MasterJamKerja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MenuOptions')
            and   type = 'U')
   drop table MenuOptions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Mutasi')
            and   type = 'U')
   drop table Mutasi
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OutSourcing')
            and   type = 'U')
   drop table OutSourcing
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PayrollBalance')
            and   type = 'U')
   drop table PayrollBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PayrollDetail')
            and   type = 'U')
   drop table PayrollDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PayrollType')
            and   type = 'U')
   drop table PayrollType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pegawai')
            and   type = 'U')
   drop table Pegawai
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PegawaiApproval')
            and   type = 'U')
   drop table PegawaiApproval
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PenambahanPayroll')
            and   type = 'U')
   drop table PenambahanPayroll
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PenambahanPayrollDetail')
            and   type = 'U')
   drop table PenambahanPayrollDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pendidikan')
            and   type = 'U')
   drop table Pendidikan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PenguranganPayroll')
            and   type = 'U')
   drop table PenguranganPayroll
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PenguranganPayrollDetail')
            and   type = 'U')
   drop table PenguranganPayrollDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PeriodeGajiDt')
            and   type = 'U')
   drop table PeriodeGajiDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PeriodeGajiHd')
            and   type = 'U')
   drop table PeriodeGajiHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PersonValidation')
            and   type = 'U')
   drop table PersonValidation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Perusahaan')
            and   type = 'U')
   drop table Perusahaan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PositionAccess')
            and   type = 'U')
   drop table PositionAccess
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
           where  id = object_id('Scheduling')
            and   type = 'U')
   drop table Scheduling
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SettingGajiNominal')
            and   type = 'U')
   drop table SettingGajiNominal
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SettingGajiSyarat')
            and   type = 'U')
   drop table SettingGajiSyarat
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Setup')
            and   type = 'U')
   drop table Setup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Shift')
            and   type = 'U')
   drop table Shift
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StatusKaryawan')
            and   type = 'U')
   drop table StatusKaryawan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SubAssets')
            and   type = 'U')
   drop table SubAssets
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SyaratDt')
            and   type = 'U')
   drop table SyaratDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SyaratDt2')
            and   type = 'U')
   drop table SyaratDt2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SyaratHd')
            and   type = 'U')
   drop table SyaratHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableRegistry')
            and   type = 'U')
   drop table TableRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tanggal')
            and   type = 'U')
   drop table Tanggal
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
           where  id = object_id('TransaksiAbsen')
            and   type = 'U')
   drop table TransaksiAbsen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransaksiPayrollBalance')
            and   type = 'U')
   drop table TransaksiPayrollBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransaksiPayrollDt')
            and   type = 'U')
   drop table TransaksiPayrollDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransaksiPayrollHd')
            and   type = 'U')
   drop table TransaksiPayrollHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransaksiPengambilanPayrollDt')
            and   type = 'U')
   drop table TransaksiPengambilanPayrollDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransaksiPengambilanPayrollHd')
            and   type = 'U')
   drop table TransaksiPengambilanPayrollHd
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
   from decimal(10,4)
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
/* Table: Absen                                                 */
/*==============================================================*/
create table Absen (
   Tgl                  DateWithoutTime      not null,
   Pegawaiid            ItemId               not null,
   KodeGroupShiftid     varchar(2)           not null,
   Shift                varchar(2)           not null,
   Noreg                varchar(15)          not null,
   KodeAbsen            varchar(2)           not null,
   EmployeeId           varchar(10)          null,
   Terlambat            int                  not null default 0,
   PulangAwal           int                  null,
   Masuk1               DateWithTime         null,
   Masuk2               DateWithTime         null,
   Masuk3               DateWithTime         null,
   Masuk4               DateWithTime         null,
   Masuk5               DateWithTime         null,
   Keluar1              DateWithTime         null,
   Keluar2              DateWithTime         null,
   Keluar3              DateWithTime         null,
   Keluar4              DateWithTime         null,
   Keluar5              DateWithTime         null,
   Lembur               int                  null default 0,
   M1                   Status               null,
   M2                   Status               null,
   M3                   Status               null,
   M4                   Status               null,
   M5                   Status               null,
   K1                   Status               null,
   K2                   Status               null,
   K3                   Status               null,
   K4                   Status               null,
   K5                   Status               null,
   StatusAbsen          Status               not null,
   FlagProsesGaji       Flag                 not null,
   Status               Status               not null,
   ModeMasuk            Status               not null,
   ModeKeluar           Status               not null,
   FlagUpdate           Flag                 not null,
   Keterangan           MemoVarchar          null,
   constraint PK_ABSEN primary key nonclustered (Pegawaiid, Tgl, KodeGroupShiftid, Shift)
)
go

/*==============================================================*/
/* Table: AbsenBulan                                            */
/*==============================================================*/
create table AbsenBulan (
   PegawaiId            ItemId               not null,
   Bulan                DateWithoutTime      not null,
   TglKeluar            DateWithoutTime      null,
   Noreg                varchar(15)          not null,
   T1                   varchar              null,
   T2                   varchar              null,
   T3                   varchar              null,
   T4                   varchar              null,
   T5                   varchar              null,
   T6                   varchar              null,
   T7                   varchar              null,
   T8                   varchar              null,
   T9                   varchar              null,
   T10                  varchar              null,
   T11                  varchar              null,
   T12                  varchar              null,
   T13                  varchar              null,
   T14                  varchar              null,
   T15                  varchar              null,
   T16                  varchar              null,
   T17                  varchar              null,
   T18                  varchar              null,
   T19                  varchar              null,
   T20                  varchar              null,
   T21                  varchar              null,
   T22                  varchar              null,
   T23                  varchar              null,
   T24                  varchar              null,
   T25                  varchar              null,
   T26                  varchar              null,
   T27                  varchar              null,
   T28                  varchar              null,
   T29                  varchar              null,
   T30                  varchar              null,
   T31                  varchar              null,
   L1                   varchar              null,
   L2                   varchar              null,
   L3                   varchar              null,
   L4                   varchar              null,
   L5                   varchar              null,
   L6                   varchar              null,
   L7                   varchar              null,
   L8                   varchar              null,
   L9                   varchar              null,
   L10                  varchar              null,
   L11                  varchar              null,
   L12                  varchar              null,
   L13                  varchar              null,
   L14                  varchar              null,
   L15                  varchar              null,
   L16                  varchar              null,
   L17                  varchar              null,
   L18                  varchar              null,
   L19                  varchar              null,
   L20                  varchar              null,
   L21                  varchar              null,
   L22                  varchar              null,
   L23                  varchar              null,
   L24                  varchar              null,
   L25                  varchar              null,
   L26                  varchar              null,
   L27                  varchar              null,
   L28                  varchar              null,
   L29                  varchar              null,
   L30                  varchar              null,
   L31                  varchar              null,
   OT1                  Disc                 null,
   OT2                  Disc                 null,
   OT3                  Disc                 null,
   OT4                  Disc                 null,
   OT5                  Disc                 null,
   OT6                  Disc                 null,
   OT7                  Disc                 null,
   OT8                  Disc                 null,
   OT9                  Disc                 null,
   OT10                 Disc                 null,
   OT11                 Disc                 null,
   OT12                 Disc                 null,
   OT13                 Disc                 null,
   OT14                 Disc                 null,
   OT15                 Disc                 null,
   OT16                 Disc                 null,
   OT17                 Disc                 null,
   OT18                 Disc                 null,
   OT19                 Disc                 null,
   OT20                 Disc                 null,
   OT21                 Disc                 null,
   OT22                 Disc                 null,
   OT23                 Disc                 null,
   OT24                 Disc                 null,
   OT25                 Disc                 null,
   OT26                 Disc                 null,
   OT27                 Disc                 null,
   OT28                 Disc                 null,
   OT29                 Disc                 null,
   OT30                 Disc                 null,
   OT31                 Disc                 null,
   S1                   varchar              null,
   S2                   varchar              null,
   S3                   varchar              null,
   S4                   varchar              null,
   S5                   varchar              null,
   S6                   varchar              null,
   S7                   varchar              null,
   S8                   varchar              null,
   S9                   varchar              null,
   S10                  varchar              null,
   S11                  varchar              null,
   S12                  varchar              null,
   S13                  varchar              null,
   S14                  varchar              null,
   S15                  varchar              null,
   S16                  varchar              null,
   S17                  varchar              null,
   S18                  varchar              null,
   S19                  varchar              null,
   S20                  varchar              null,
   S21                  varchar              null,
   S22                  varchar              null,
   S23                  varchar              null,
   S24                  varchar              null,
   S25                  varchar              null,
   S26                  varchar              null,
   S27                  varchar              null,
   S28                  varchar              null,
   S29                  varchar              null,
   S30                  varchar              null,
   S31                  varchar              null,
   G1                   varchar(2)           null,
   G2                   varchar(2)           null,
   G3                   varchar(2)           null,
   G4                   varchar(2)           null,
   G5                   varchar(2)           null,
   G6                   varchar(2)           null,
   G7                   varchar(2)           null,
   G8                   varchar(2)           null,
   G9                   varchar(2)           null,
   G10                  varchar(2)           null,
   G11                  varchar(2)           null,
   G12                  varchar(2)           null,
   G13                  varchar(2)           null,
   G14                  varchar(2)           null,
   G15                  varchar(2)           null,
   G16                  varchar(2)           null,
   G17                  varchar(2)           null,
   G18                  varchar(2)           null,
   G19                  varchar(2)           null,
   G20                  varchar(2)           null,
   G21                  varchar(2)           null,
   G22                  varchar(2)           null,
   G23                  varchar(2)           null,
   G24                  varchar(2)           null,
   G25                  varchar(2)           null,
   G26                  varchar(2)           null,
   G27                  varchar(2)           null,
   G28                  varchar(2)           null,
   G29                  varchar(2)           null,
   G30                  varchar(2)           null,
   G31                  varchar(2)           null,
   constraint PK_ABSENBULAN primary key nonclustered (PegawaiId, Bulan, Noreg)
)
go

/*==============================================================*/
/* Table: AbsenRekapBulan                                       */
/*==============================================================*/
create table AbsenRekapBulan (
   Periode              DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   Noreg                varchar(15)          not null,
   KodeAbsen            varchar(2)           not null,
   JumKodeAbsen         int                  null,
   Terlambat            int                  null,
   constraint PK_ABSENREKAPBULAN primary key nonclustered (Periode, PegawaiId, Noreg, KodeAbsen)
)
go

/*==============================================================*/
/* Table: Assets                                                */
/*==============================================================*/
create table Assets (
   KodeAssets           varchar(5)           not null,
   NamaAssets           varchar(30)          null,
   constraint PK_MSTASSETS primary key nonclustered (KodeAssets)
)
go

/*==============================================================*/
/* Table: Bahasa                                                */
/*==============================================================*/
create table Bahasa (
   KodeBahasa           varchar(5)           not null,
   NamaBahasa           varchar(30)          null,
   constraint PK_MSTBAHASA primary key nonclustered (KodeBahasa)
)
go

/*==============================================================*/
/* Table: Bank                                                  */
/*==============================================================*/
create table Bank (
   KodeBank             varchar(5)           not null,
   NamaBank             varchar(30)          null,
   AlamatBank           varchar(50)          null,
   Telp                 varchar(20)          null,
   KodeTransfer         ItemId               null,
   constraint PK_MSTBANK primary key nonclustered (KodeBank)
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
/* Table: DataAsset                                             */
/*==============================================================*/
create table DataAsset (
   PegawaiId            ItemId               not null,
   KodeSubAssets        varchar(5)           not null,
   KodeAssets           varchar(5)           null,
   constraint PK_DATAASSET primary key nonclustered (PegawaiId, KodeSubAssets)
)
go

/*==============================================================*/
/* Table: DataBahasa                                            */
/*==============================================================*/
create table DataBahasa (
   PegawaiId            ItemId               not null,
   KodeBahasa           varchar(5)           not null,
   FlagOral             Flag                 not null,
   FlagWritten          Flag                 not null,
   constraint PK_DATABAHASA primary key nonclustered (PegawaiId, KodeBahasa)
)
go

/*==============================================================*/
/* Table: DataFamily                                            */
/*==============================================================*/
create table DataFamily (
   PegawaiId            ItemId               not null,
   Nama                 varchar(50)          not null,
   Alamat               varchar(100)         null,
   Alamat1              varchar(100)         null,
   TglLahir             DateWithoutTime      null,
   TmpLahir             varchar(50)          null,
   JenisKelamin         Flag                 null,
   GolDarah             varchar(2)           null,
   Pekerjaan            varchar(50)          null,
   FlagStatusKeluarga   Flag                 null,
   FlagStatusTanggungan Flag                 null,
   FlagPassAway         Flag                 null,
   constraint PK_DATAFAMILY primary key nonclustered (PegawaiId, Nama)
)
go

/*==============================================================*/
/* Table: DataKeahlian                                          */
/*==============================================================*/
create table DataKeahlian (
   PegawaiId            ItemId               not null,
   KodeKeahlian         varchar(5)           not null,
   constraint PK_DATAKEAHLIAN primary key nonclustered (PegawaiId, KodeKeahlian)
)
go

/*==============================================================*/
/* Table: DataOrganisasi                                        */
/*==============================================================*/
create table DataOrganisasi (
   PegawaiId            ItemId               not null,
   Organisasi           varchar(50)          not null,
   Jabatan              varchar(30)          null,
   constraint PK_DATAORGANISASI primary key nonclustered (PegawaiId, Organisasi)
)
go

/*==============================================================*/
/* Table: DataPendidikan                                        */
/*==============================================================*/
create table DataPendidikan (
   PegawaiId            ItemId               not null,
   KodePendidikan       varchar(5)           not null,
   TahunMulai           varchar(4)           null,
   Nilai                CurrencyPlus         null,
   Lulus                Status               not null,
   Keterangan           varchar(50)          null,
   constraint PK_DATAPENDIDIKAN primary key nonclustered (PegawaiId, KodePendidikan)
)
go

/*==============================================================*/
/* Table: DataPengalamanKerja                                   */
/*==============================================================*/
create table DataPengalamanKerja (
   PegawaiId            ItemId               not null,
   NamaPerusahaan       varchar(50)          not null,
   PosisiTerakhir       varchar(50)          null,
   DariTgl              DateWithoutTime      null,
   SampaiTgl            DateWithoutTime      null,
   Lama                 CurrencyPlus         null,
   Keterangan           varchar(50)          null,
   constraint PK_DATAPENGALAMANKERJA primary key nonclustered (PegawaiId, NamaPerusahaan)
)
go

/*==============================================================*/
/* Table: DataReferensi                                         */
/*==============================================================*/
create table DataReferensi (
   PegawaiId            ItemId               not null,
   NamaReferensi        varchar(50)          not null,
   Alamat               varchar(100)         null,
   Pekerjaan            varchar(50)          null,
   constraint PK_DATAREFERENSI primary key nonclustered (PegawaiId, NamaReferensi)
)
go

/*==============================================================*/
/* Table: DataRelasi                                            */
/*==============================================================*/
create table DataRelasi (
   PegawaiId            ItemId               not null,
   NamaRelasi           varchar(50)          not null,
   Hubungan             varchar(30)          null,
   KodeDepartemen       varchar(5)           null,
   constraint PK_DATARELASI primary key nonclustered (PegawaiId, NamaRelasi)
)
go

/*==============================================================*/
/* Table: Departemen                                            */
/*==============================================================*/
create table Departemen (
   KodeDepartemen       varchar(5)           not null,
   KodeDivisi           varchar(5)           null,
   NamaDepartemen       varchar(30)          not null,
   UrutReport           int                  null,
   GroupReport          int                  null,
   constraint PK_MSTDEPARTEMEN primary key nonclustered (KodeDepartemen)
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
/* Table: Divisi                                                */
/*==============================================================*/
create table Divisi (
   KodeDivisi           varchar(5)           not null,
   NamaDivisi           varchar(30)          not null,
   constraint PK_DIVISI primary key nonclustered (KodeDivisi)
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
/* Table: FingerPrint                                           */
/*==============================================================*/
create table FingerPrint (
   EmployeeId           varchar(10)          not null,
   FingerMask           int                  not null,
   FingerData           varchar(Max)         null,
   constraint PK_FingerPrint_t primary key nonclustered (EmployeeId, FingerMask)
)
go

/*==============================================================*/
/* Table: GroupGaji                                             */
/*==============================================================*/
create table GroupGaji (
   KodeGroupGaji        varchar(2)           not null,
   NamaGroupGaji        varchar(30)          not null,
   constraint PK_GROUPGAJI primary key nonclustered (KodeGroupGaji)
)
go

/*==============================================================*/
/* Table: GroupShiftDt1                                         */
/*==============================================================*/
create table GroupShiftDt1 (
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   Warna                int                  null,
   ModeValidasi         Flag                 not null,
   constraint PK_GROUPSHIFTDT1 primary key nonclustered (KodeGroupShiftId, Shift)
)
go

/*==============================================================*/
/* Table: GroupShiftDt2                                         */
/*==============================================================*/
create table GroupShiftDt2 (
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   KodeHari             ItemId               not null,
   KodeJamKerja         varchar(2)           null,
   SPL                  Flag                 not null,
   constraint PK_GROUPSHIFTDT2 primary key nonclustered (KodeGroupShiftId, KodeHari, Shift)
)
go

/*==============================================================*/
/* Table: GroupShiftHd                                          */
/*==============================================================*/
create table GroupShiftHd (
   KodeGroupShiftId     varchar(2)           not null,
   NamaGroupShift       varchar(30)          not null,
   constraint PK_GROUPSHIFTHD primary key nonclustered (KodeGroupShiftId)
)
go

/*==============================================================*/
/* Table: HitPayroll                                            */
/*==============================================================*/
create table HitPayroll (
   TglPayroll           DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   NoSyarat             varchar(3)           not null,
   Ano                  smallint             not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   ModeSyarat           Status               not null,
   ModeOperator         char(10)             not null,
   AGroup               varchar(2)           not null,
   OK                   bit                  not null,
   constraint PK_HITPAYROLL primary key nonclustered (TglPayroll, PegawaiId, NoSyarat, Ano, KodeGroupShiftId, Shift)
)
go

/*==============================================================*/
/* Table: HitPayroll2                                           */
/*==============================================================*/
create table HitPayroll2 (
   TglPayroll           DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   Nosyarat             varchar(3)           not null,
   Agroup               varchar(2)           not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   OK                   bit                  not null,
   constraint PK_HITPAYROLL2 primary key nonclustered (TglPayroll, PegawaiId, Nosyarat, Agroup, KodeGroupShiftId, Shift)
)
go

/*==============================================================*/
/* Table: HitPayroll3                                           */
/*==============================================================*/
create table HitPayroll3 (
   TglPayroll           DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   NoSyarat             varchar(3)           not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   OK                   bit                  not null,
   constraint PK_HITPAYROLL3 primary key nonclustered (TglPayroll, PegawaiId, NoSyarat, KodeGroupShiftId, Shift)
)
go

/*==============================================================*/
/* Table: Jabatan                                               */
/*==============================================================*/
create table Jabatan (
   KodeJabatan          varchar(5)           not null,
   NamaJabatan          varchar(30)          not null,
   StatusLevel          Status               null,
   JmlPegawai           CurrencyPlus         null,
   Induk                varchar(50)          null,
   Deskripsi            MemoVarchar          null,
   constraint PK_MSTJABATAN primary key nonclustered (KodeJabatan)
)
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
/* Table: Keahlian                                              */
/*==============================================================*/
create table Keahlian (
   KodeKeahlian         varchar(5)           not null,
   NamaKeahlian         varchar(30)          null,
   constraint PK_KEAHLIAN primary key nonclustered (KodeKeahlian)
)
go

/*==============================================================*/
/* Table: KodeAbsen                                             */
/*==============================================================*/
create table KodeAbsen (
   KodeAbsen            varchar(2)           not null,
   Keterangan           varchar(100)         null,
   FlagCheckLock        Flag                 not null,
   FlagFix              Flag                 not null,
   FlagAbsenManual      Flag                 null,
   constraint PK_KODEABSEN primary key nonclustered (KodeAbsen)
)
go

/*==============================================================*/
/* Table: Lembur                                                */
/*==============================================================*/
create table Lembur (
   Tgl                  DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   Noreg                varchar(15)          not null,
   Pekerjaan            varchar(20)          null,
   JamMulai2            DateWithTime         null,
   JamAkhir2            DateWithTime         null,
   JumLembur            Quantity             null,
   Batal                Flag                 null,
   Keterangan           MemoVarchar          null,
   StatusApprove        Status               not null,
   CounterPrint         QuantityPlus         null,
   FlagAnomali          Flag                 not null,
   EmployeeId           varchar(10)          null,
   JamMulai             DateWithTime         null,
   JamAkhir             DateWithTime         null,
   JumIstirahat         DateWithTime         null,
   constraint PK_LEMBUR primary key nonclustered (Tgl, Shift, KodeGroupShiftId, Noreg, PegawaiId)
)
go

/*==============================================================*/
/* Table: Libur                                                 */
/*==============================================================*/
create table Libur (
   Tgl                  DateWithoutTime      not null,
   Keterangan           varchar(30)          null,
   constraint PK_LIBUR primary key nonclustered (Tgl)
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
/* Table: MasterJamKerja                                        */
/*==============================================================*/
create table MasterJamKerja (
   KodeJamKerja         varchar(2)           not null,
   JamKerjaAwal         DateWithoutTime      null,
   JamKerjaAkhir        DateWithoutTime      null,
   Overday              Flag                 null,
   Aktif                Flag                 null,
   ToleransiTerlambat   QuantityPlus         null,
   JumlahSetengahHari   QuantityPlus         null,
   JamBatasLembur       DateWithTime         null,
   JamMulaiAbsen        DateWithTime         null,
   JamAkhirAbsen        DateWithTime         null,
   constraint PK_MASTERJAMKERJA primary key nonclustered (KodeJamKerja)
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
/* Table: Mutasi                                                */
/*==============================================================*/
create table Mutasi (
   Noreg                varchar(15)          not null,
   PegawaiId            ItemId               null,
   TglMulai             DateWithoutTime      not null,
   KodeDivisi           varchar(5)           not null,
   KodeDepartemen       varchar(5)           not null,
   KodeJabatan          varchar(5)           not null,
   KodeStatus           char(1)              not null,
   KodePerusahaan       varchar(5)           not null,
   EmployeeId           varchar(10)          null,
   KodeOutsourcing      varchar(3)           null,
   Keterangan           varchar(50)          null,
   CounterPrint         QuantityPlus         not null,
   StatusApprove        Status               not null,
   TglMutasi            DateWithoutTime      null,
   constraint PK_TRMUTASI primary key nonclustered (Noreg)
)
go

/*==============================================================*/
/* Table: OutSourcing                                           */
/*==============================================================*/
create table OutSourcing (
   KodeOutsourcing      varchar(3)           not null,
   NamaOutsourcing      varchar(30)          not null,
   Warna                int                  null,
   constraint PK_OUTSOURCING primary key nonclustered (KodeOutsourcing)
)
go

/*==============================================================*/
/* Table: PayrollBalance                                        */
/*==============================================================*/
create table PayrollBalance (
   PegawaiId            ItemId               not null,
   Year                 varchar(4)           not null,
   Value0               CurrencyPlus         null,
   Value1               CurrencyPlus         null,
   Value2               CurrencyPlus         null,
   Value3               CurrencyPlus         null,
   Value4               CurrencyPlus         null,
   Value5               CurrencyPlus         null,
   Value6               CurrencyPlus         null,
   Value7               CurrencyPlus         null,
   Value8               CurrencyPlus         null,
   Value9               CurrencyPlus         null,
   Value10              CurrencyPlus         null,
   Value11              CurrencyPlus         null,
   constraint PK_PAYROLLBALANCE primary key nonclustered (PegawaiId, Year)
)
go

/*==============================================================*/
/* Table: PayrollDetail                                         */
/*==============================================================*/
create table PayrollDetail (
   PegawaiId            ItemId               not null,
   KodeBank             varchar(5)           null,
   KodeGroupGaji        varchar(2)           null,
   Account              varchar(15)          null,
   NPWP                 varchar(20)          null,
   StatusPajak          varchar(5)           null,
   ModeGaji             Status               not null,
   constraint PK_PAYROLLDETAIL primary key nonclustered (PegawaiId)
)
go

/*==============================================================*/
/* Table: PayrollType                                           */
/*==============================================================*/
create table PayrollType (
   PayrollType          varchar(2)           not null,
   PayrollTypeName      varchar(50)          not null,
   constraint PK_PAYROLLTYPE primary key nonclustered (PayrollType)
)
go

/*==============================================================*/
/* Table: Pegawai                                               */
/*==============================================================*/
create table Pegawai (
   PegawaiId            ItemId               identity,
   NoPeg                varchar(20)          not null,
   Barcode              varchar(20)          not null,
   Nama                 varchar(50)          not null,
   Alamat               varchar(100)         null,
   Telp                 varchar(20)          null,
   TmpLahir             varchar(25)          null,
   TglLahir             DateWithoutTime      not null,
   Sex                  varchar(1)           not null,
   Agama                varchar(1)           null,
   StSipil              Flag                 null,
   TglMasuk             DateWithoutTime      not null,
   TglKeluar            DateWithoutTime      null,
   NoKTP                varchar(35)          null,
   FlagAstek            Flag                 null,
   NoAstek              varchar(35)          null,
   TglAstek             DateWithoutTime      null,
   FlagJpk              Flag                 null,
   TglJpk               DateWithoutTime      null,
   BloodType            varchar(2)           not null,
   CityId               varchar(5)           not null,
   KodePerusahaan       varchar(5)           not null,
   FlagProses           Flag                 not null,
   FlagKeluar           Flag                 not null,
   Memo                 varchar(255)         null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   KodeJabatan          varchar(5)           not null,
   KodeOutsourcing      varchar(3)           null,
   KodeDepartemen       varchar(5)           null,
   KodeDivisi           varchar(5)           null,
   KodeStatus           Status               null,
   StatusSchedule       Status               not null,
   StatusSPL            Status               not null,
   UrutReport           Quantity             null,
   constraint PK_MSTPEGAWAI primary key nonclustered (PegawaiId)
)
go

/*==============================================================*/
/* Table: PegawaiApproval                                       */
/*==============================================================*/
create table PegawaiApproval (
   PegawaiId            ItemId               not null,
   FlagBolehLongShift   Flag                 not null,
   FlagValidasiLongShift Flag                 not null,
   FlagApproveLongShift Flag                 not null,
   FlagBolehTerlambat   Flag                 not null,
   FlagValidasiTerlambat Flag                 not null,
   FlagApproveTerlambat Flag                 not null,
   FlagBolehPulangAwal  Flag                 not null,
   FlagValidasiPulangAwal Flag                 not null,
   FlagApprovePulangAwal Flag                 not null,
   FlagBolehMasukKaloAlpha Flag                 not null,
   FlagValidasiMasukKaloAlpha Flag                 not null,
   FlagApproveMasukKaloAlpha Flag                 not null,
   FlagBolehMasukTdkAbsenPlg Flag                 not null,
   FlagValidasiMasukTdkAbsenPlg Flag                 not null,
   FlagApproveMasukTdkAbsenPlg Flag                 not null,
   constraint Key_1 primary key (PegawaiId)
)
go

/*==============================================================*/
/* Table: PenambahanPayroll                                     */
/*==============================================================*/
create table PenambahanPayroll (
   NoPenambahan         varchar(10)          not null,
   Keterangan           varchar(100)         null,
   constraint PK_PENAMBAHANPAYROLL primary key nonclustered (NoPenambahan)
)
go

/*==============================================================*/
/* Table: PenambahanPayrollDetail                               */
/*==============================================================*/
create table PenambahanPayrollDetail (
   NoPenambahan         varchar(10)          not null,
   PegawaiId            ItemId               not null,
   TglAmbil             DateWithoutTime      null,
   Keterangan           varchar(100)         null,
   constraint PK_PENAMBAHANPAYROLLDETAIL primary key nonclustered (NoPenambahan, PegawaiId)
)
go

/*==============================================================*/
/* Table: Pendidikan                                            */
/*==============================================================*/
create table Pendidikan (
   KodePendidikan       varchar(5)           not null,
   Jurusan              varchar(30)          null,
   constraint PK_MSTPENDIDIKAN primary key nonclustered (KodePendidikan)
)
go

/*==============================================================*/
/* Table: PenguranganPayroll                                    */
/*==============================================================*/
create table PenguranganPayroll (
   NoPengurangan        varchar(10)          not null,
   Keterangan           varchar(100)         null,
   constraint PK_PENGURANGANPAYROLL primary key nonclustered (NoPengurangan)
)
go

/*==============================================================*/
/* Table: PenguranganPayrollDetail                              */
/*==============================================================*/
create table PenguranganPayrollDetail (
   NoPengurangan        varchar(10)          not null,
   PegawaiId            ItemId               not null,
   TglAmbil             char(10)             null,
   Keterangan           varchar(100)         null,
   constraint PK_PENGURANGANPAYROLLDETAIL primary key nonclustered (NoPengurangan, PegawaiId)
)
go

/*==============================================================*/
/* Table: PeriodeGajiDt                                         */
/*==============================================================*/
create table PeriodeGajiDt (
   KodePeriode          varchar(10)          not null,
   KodeGroupGaji        varchar(2)           not null,
   constraint PK_PERIODEGAJIDT primary key nonclustered (KodePeriode, KodeGroupGaji)
)
go

/*==============================================================*/
/* Table: PeriodeGajiHd                                         */
/*==============================================================*/
create table PeriodeGajiHd (
   KodePeriode          varchar(10)          not null,
   NamaPeriode          varchar(30)          not null,
   TglAwal              DateWithoutTime      not null,
   TglAkhir             DateWithoutTime      not null,
   TglTutup             DateWithoutTime      null,
   PegawaiId            ItemId               null,
   constraint PK_PERIODEGAJIHD primary key nonclustered (KodePeriode)
)
go

/*==============================================================*/
/* Table: PersonValidation                                      */
/*==============================================================*/
create table PersonValidation (
   PegawaiId            ItemId               not null,
   constraint PK_PERSONVALIDATION primary key nonclustered (PegawaiId)
)
go

/*==============================================================*/
/* Table: Perusahaan                                            */
/*==============================================================*/
create table Perusahaan (
   KodePerusahaan       varchar(5)           not null,
   NamaPerusahaan       varchar(50)          not null,
   Alamat1              varchar(50)          not null,
   Alamat2              varchar(50)          null,
   Kota                 varchar(30)          not null,
   KodePos              varchar(5)           not null,
   Phone                varchar(30)          not null,
   Fax                  varchar(30)          not null,
   NPWP                 varchar(20)          not null,
   CoreBusiness         varchar(30)          null,
   Director             varchar(30)          null,
   constraint PK_PERUSAHAAN primary key nonclustered (KodePerusahaan)
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
/* Table: Scheduling                                            */
/*==============================================================*/
create table Scheduling (
   PegawaiId            int                  not null,
   Tglschedule          DateWithoutTime      not null,
   KodePerusahaan       varchar(5)           not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   FlagPolling          Flag                 null,
   FlagLongShift        Flag                 null,
   constraint PK_SCHEDULING primary key nonclustered (PegawaiId, Tglschedule, KodeGroupShiftId, Shift)
)
go

/*==============================================================*/
/* Table: SettingGajiNominal                                    */
/*==============================================================*/
create table SettingGajiNominal (
   TglBerlaku           DateWithoutTime      not null,
   KodeGroupGaji        varchar(2)           not null,
   PayrollType          varchar(2)           not null,
   Nominal              CurrencyPlus         not null,
   constraint PK_SETTINGGAJINOMINAL primary key nonclustered (TglBerlaku, KodeGroupGaji, PayrollType)
)
go

/*==============================================================*/
/* Table: SettingGajiSyarat                                     */
/*==============================================================*/
create table SettingGajiSyarat (
   KodeGroupGaji        varchar(2)           not null,
   PayrollType          varchar(2)           not null,
   NoSyarat             varchar(3)           not null,
   Koefisien            smallint             null,
   constraint PK_SETTINGGAJISYARAT primary key nonclustered (KodeGroupGaji, PayrollType, NoSyarat)
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
/* Table: Shift                                                 */
/*==============================================================*/
create table Shift (
   Shift                varchar(2)           not null,
   NamaShift            varchar(20)          null,
   Warna                int                  null,
   constraint PK_SHIFT primary key nonclustered (Shift)
)
go

/*==============================================================*/
/* Table: StatusKaryawan                                        */
/*==============================================================*/
create table StatusKaryawan (
   KodeStatus           Status               not null,
   NamaStatus           varchar(20)          not null,
   Warna                int                  null,
   UangMakan            CurrencyPlus         null,
   UangTransport        CurrencyPlus         null,
   constraint PK_STATUSKARYAWAN primary key nonclustered (KodeStatus)
)
go

/*==============================================================*/
/* Table: SubAssets                                             */
/*==============================================================*/
create table SubAssets (
   KodeAssets           varchar(5)           not null,
   KodeSubAssets        varchar(5)           not null,
   NamaSubAssets        varchar(30)          null,
   constraint PK_SUBASSETS primary key nonclustered (KodeAssets, KodeSubAssets)
)
go

/*==============================================================*/
/* Table: SyaratDt                                              */
/*==============================================================*/
create table SyaratDt (
   NoSyarat             varchar(3)           not null,
   Ano                  smallint             not null,
   ModeSyarat           Status               not null,
   QtyMode              QuantityPlus         not null,
   Urut                 Flag                 not null,
   ModeOperator         char(10)             not null,
   Agroup               varchar(2)           null,
   constraint PK_SYARATDT primary key nonclustered (NoSyarat, Ano)
)
go

/*==============================================================*/
/* Table: SyaratDt2                                             */
/*==============================================================*/
create table SyaratDt2 (
   NoSyarat             varchar(3)           not null,
   ANo                  smallint             not null,
   KodeAbsen            varchar(2)           not null,
   constraint PK_SYARATDT2 primary key nonclustered (NoSyarat, ANo, KodeAbsen)
)
go

/*==============================================================*/
/* Table: SyaratHd                                              */
/*==============================================================*/
create table SyaratHd (
   NoSyarat             varchar(3)           not null,
   NamaSyarat           varchar(40)          not null,
   StatusProses         Status               not null,
   QtyHari              QuantityPlus         not null,
   Terlambat1           QuantityPlus         not null,
   Terlambat2           QuantityPlus         not null,
   FlagExecuteQuery     Flag                 not null,
   SyntaxQuery          MemoVarchar          null,
   Grouping             varchar(60)          null,
   FlagBayarSesuaiTglProses Flag                 not null,
   FlagTerlambat        Flag                 not null,
   FlagSyarat           Flag                 not null,
   constraint PK_SYARATHD primary key nonclustered (NoSyarat)
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
/* Table: Tanggal                                               */
/*==============================================================*/
create table Tanggal (
   Tanggal              DateWithoutTime      not null,
   constraint PK_TANGGAL primary key nonclustered (Tanggal)
)
go

/*==============================================================*/
/* Table: TransactionLog                                        */
/*==============================================================*/
create table TransactionLog (
   "User"               varchar(10)          not null,
   TransactionDate      DateWithTime         not null,
   Action               Status               not null,
   TableName            varchar(30)          not null,
   Description          varchar(500)         not null,
   constraint PK_TransactionLog primary key ("User", TransactionDate, Action, TableName)
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
/* Table: TransaksiAbsen                                        */
/*==============================================================*/
create table TransaksiAbsen (
   NoTransaksiAbsen     varchar(15)          not null,
   PegawaiId            ItemId               not null,
   KodeAbsen            varchar(2)           not null,
   EmployeeId           varchar(10)          null,
   DariTgl              DateWithoutTime      not null,
   SampaiTgl            DateWithoutTime      not null,
   Lama                 QuantityPlus         not null,
   Keterangan           varchar(50)          null,
   CounterPrint         QuantityPlus         not null,
   StatusApprove        Status               not null,
   constraint PK_TRANSAKSIABSEN primary key nonclustered (NoTransaksiAbsen)
)
go

/*==============================================================*/
/* Table: TransaksiPayrollBalance                               */
/*==============================================================*/
create table TransaksiPayrollBalance (
   PegawaiId            ItemId               not null,
   Year                 varchar(4)           not null,
   constraint PK_TRANSAKSIPAYROLLBALANCE primary key nonclustered (PegawaiId, Year)
)
go

/*==============================================================*/
/* Table: TransaksiPayrollDt                                    */
/*==============================================================*/
create table TransaksiPayrollDt (
   NoPayroll            varchar(10)          not null,
   PayrollType          varchar(2)           not null,
   NoSyarat             varchar(3)           not null,
   Amount               Currency             not null,
   Koefisien            Disc                 not null,
   Total                Currency             not null,
   constraint PK_TRANSAKSIPAYROLLDT primary key nonclustered (NoPayroll, PayrollType, NoSyarat)
)
go

/*==============================================================*/
/* Table: TransaksiPayrollHd                                    */
/*==============================================================*/
create table TransaksiPayrollHd (
   NoPayroll            varchar(10)          not null,
   TglPayroll           DateWithoutTime      not null,
   PegawaiId            ItemId               not null,
   KodeGroupGaji        varchar(2)           not null,
   KodeGroupShiftId     varchar(2)           not null,
   Shift                varchar(2)           not null,
   Total                CurrencyPlus         not null,
   CounterPrint         QuantityPlus         not null,
   StatusApprove        Status               not null,
   Status               Status               not null,
   EmployeeId           ItemId               null,
   FlagCetak            Status               null,
   constraint PK_TRANSAKSIPAYROLLHD primary key nonclustered (NoPayroll)
)
go

/*==============================================================*/
/* Table: TransaksiPengambilanPayrollDt                         */
/*==============================================================*/
create table TransaksiPengambilanPayrollDt (
   NoTransaksiPengambilan varchar(10)          not null,
   NoPayroll            varchar(10)          not null,
   PayrollType          varchar(2)           null,
   Nosyarat             varchar(3)           not null,
   AOK                  Flag                 not null,
   constraint PK_TRANSAKSIPENGAMBILANPAYROLLDT primary key nonclustered (NoTransaksiPengambilan, NoPayroll, Nosyarat)
)
go

/*==============================================================*/
/* Table: TransaksiPengambilanPayrollHd                         */
/*==============================================================*/
create table TransaksiPengambilanPayrollHd (
   NoTransaksiPengambilan varchar(10)          not null,
   EmployeeId           varchar(10)          null,
   TglPengambilanPayroll DateWithoutTime      not null,
   PegawaiId            int                  not null,
   Shift                varchar(2)           not null,
   Jumlah               CurrencyPlus         not null,
   Potongan             CurrencyPlus         not null,
   Total                CurrencyPlus         not null,
   CounterPrint         QuantityPlus         not null,
   StatusApprove        Status               not null,
   BatasTgl1            DateWithoutTime      not null,
   BatasTgl2            DateWithoutTime      not null,
   Shift1               varchar(2)           not null,
   Shift2               varchar(2)           not null,
   Bruto                CurrencyPlus         null,
   Netto                CurrencyPlus         null,
   TglCetak             DateWithTime         null,
   constraint PK_TRANSAKSIPENGAMBILANPAYROLLHD primary key nonclustered (NoTransaksiPengambilan)
)
go

alter table Absen
   add constraint Data_detail_group_shift_dipakai_oleh_absen foreign key (KodeGroupShiftid, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table Absen
   add constraint Data_kode_absen_dipakai_oleh_absen foreign key (KodeAbsen)
      references KodeAbsen (KodeAbsen)
go

alter table Absen
   add constraint Data_mutasi_pegawai_dipakai_oleh_absen foreign key (Noreg)
      references Mutasi (Noreg)
         on update cascade on delete cascade
go

alter table Absen
   add constraint Data_pegawai_dipakai_oleh_absen foreign key (Pegawaiid)
      references Pegawai (PegawaiId)
go

alter table Absen
   add constraint Data_user_dipakai_oleh_absen foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table AbsenBulan
   add constraint Data_mutasi_pegawai_dipakai_oleh_absen_bulan foreign key (Noreg)
      references Mutasi (Noreg)
         on update cascade on delete cascade
go

alter table AbsenBulan
   add constraint Data_pegawai_dipakai_oleh_absen_bulan foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table AbsenRekapBulan
   add constraint Data_kode_absen_dipakai_oleh_absen_rekap_bulan foreign key (KodeAbsen)
      references KodeAbsen (KodeAbsen)
go

alter table AbsenRekapBulan
   add constraint Data_mutasi_pegawai_dipakai_oleh_absen_rekap_bulan foreign key (Noreg)
      references Mutasi (Noreg)
         on update cascade on delete cascade
go

alter table AbsenRekapBulan
   add constraint Data_pegawai_dipakai_oleh_absen_rekap_bulan foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table City
   add constraint Data_propinsi_dipakai_oleh_kota foreign key (ProvinceId)
      references Province (ProvinceId)
go

alter table CounterDt1
   add constraint Reference_26 foreign key (CounterID)
      references CounterHd (CounterID)
go

alter table CounterDt2
   add constraint Reference_25 foreign key (CounterID)
      references CounterHd (CounterID)
go

alter table DailyKurs
   add constraint Data_mata_uang_dipakai_oleh_kurs_harian foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table DataAsset
   add constraint Data_pegawai_dipakai_oleh_data_asset foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataAsset
   add constraint Data_sub_asset_dipakai_oleh_data_sub_asset foreign key (KodeAssets, KodeSubAssets)
      references SubAssets (KodeAssets, KodeSubAssets)
go

alter table DataBahasa
   add constraint Data_bahasa_dipakai_oleh_data_bahasa foreign key (KodeBahasa)
      references Bahasa (KodeBahasa)
go

alter table DataBahasa
   add constraint Data_pegawai_dipakai_oleh_data_bahasa foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataFamily
   add constraint Data_pegawai_dipakai_oleh_data_family foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataKeahlian
   add constraint Data_keahlian_dipakai_oleh_data_keahlian foreign key (KodeKeahlian)
      references Keahlian (KodeKeahlian)
go

alter table DataKeahlian
   add constraint Data_pegawai_dipakai_oleh_data_keahlian foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataOrganisasi
   add constraint Data_pegawai_dipakai_oleh_data_organisasi foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataPendidikan
   add constraint Data_pegawai_dipakai_oleh_data_pendidikan foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataPendidikan
   add constraint Data_pendidikan_dipakai_oleh_data_pendidikan foreign key (KodePendidikan)
      references Pendidikan (KodePendidikan)
go

alter table DataPengalamanKerja
   add constraint Data_pegawai_dipakai_oleh_data_pengalaman_kerja foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataReferensi
   add constraint Data_pegawai_dipakai_oleh_data_referensi foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table DataRelasi
   add constraint Data_pegawai_dipakai_oleh_data_relasi foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table Departemen
   add constraint Data_divisi_dipakai_oleh_departemen foreign key (KodeDivisi)
      references Divisi (KodeDivisi)
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

alter table GroupShiftDt1
   add constraint Data_group_shift_dipakai_oleh_group_shift foreign key (KodeGroupShiftId)
      references GroupShiftHd (KodeGroupShiftId)
go

alter table GroupShiftDt1
   add constraint Data_shift_dipakai_oleh_detail_group_shift foreign key (Shift)
      references Shift (Shift)
go

alter table GroupShiftDt2
   add constraint Data_detail_group_shift_dipakai_oleh_data_group_shift_detail_detail foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table HitPayroll
   add constraint Data_detail_group_shift_dipakai_oleh_hitpayroll foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table HitPayroll
   add constraint Data_detail_syarat_payroll_di_pakai_oleh_hitpayroll foreign key (NoSyarat, Ano)
      references SyaratDt (NoSyarat, Ano)
go

alter table HitPayroll
   add constraint Data_pegawai_dipakai_oleh_hitpayroll foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table HitPayroll2
   add constraint Data_detail_group_shift_dipakai_oleh_hitpayroll2 foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table HitPayroll2
   add constraint Data_pegawai_dipakai_oleh_hitpayroll2 foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table HitPayroll3
   add constraint Data_detail_group_shift_dipakai_oleh_hitpayroll3 foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table HitPayroll3
   add constraint Data_detail_syarat_payroll_dipakai_oleh_hitpayroll3 foreign key (NoSyarat)
      references SyaratHd (NoSyarat)
go

alter table HitPayroll3
   add constraint Data_pegawai_dipakai_oleh_hitpayroll3 foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table JobPosition
   add constraint Data_departemen_dipakai_oleh_posisi_pekerjaan foreign key (DepartmentId)
      references Department (DepartmentId)
go

alter table Lembur
   add constraint Data_detail_group_shift_dipakai_oleh_lembur foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table Lembur
   add constraint Data_mutasi_pegawai_dipakai_oleh_lembur foreign key (Noreg)
      references Mutasi (Noreg)
         on update cascade on delete cascade
go

alter table Lembur
   add constraint Data_pegawai_dipakai_oleh_lembur foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table LogProgram
   add constraint Data_tipe_log_dipakai_oleh_log_program foreign key (LogTypeId)
      references LogType (LogTypeId)
go

alter table Mutasi
   add constraint Data_departemen_dipakai_oleh_mutasi_pegawai foreign key (KodeDepartemen)
      references Departemen (KodeDepartemen)
go

alter table Mutasi
   add constraint Data_divisi_dipakai_oleh_mutasi_pegawai foreign key (KodeDivisi)
      references Divisi (KodeDivisi)
go

alter table Mutasi
   add constraint Data_jabatan_dipakai_oleh_mutasi_pegawai foreign key (KodeJabatan)
      references Jabatan (KodeJabatan)
go

alter table Mutasi
   add constraint Data_outsourcing_dipakai_oleh_mutasi_pegawai foreign key (KodeOutsourcing)
      references OutSourcing (KodeOutsourcing)
go

alter table Mutasi
   add constraint Data_pegawai_dipakai_oleh_mutasi_pegawai foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table Mutasi
   add constraint Data_perusahaan_dipakai_oleh_mutasi_pegawai foreign key (KodePerusahaan)
      references Perusahaan (KodePerusahaan)
go

alter table Mutasi
   add constraint Data_status_karyawan_dipakai_oleh_mutasi_pegawai foreign key (KodeStatus)
      references StatusKaryawan (KodeStatus)
go

alter table Mutasi
   add constraint Data_user_dipakai_oleh_mutasi_pegawai foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table PayrollBalance
   add constraint Data_pegawai_dipakai_oleh_payroll_balance foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table PayrollDetail
   add constraint Data_bank_dipakai_oleh_payroll_detail foreign key (KodeBank)
      references Bank (KodeBank)
go

alter table PayrollDetail
   add constraint Data_group_gaji_dipakai_oleh_payroll_detail foreign key (KodeGroupGaji)
      references GroupGaji (KodeGroupGaji)
go

alter table PayrollDetail
   add constraint Data_pegawai_dipakai_oleh_payroll_detail foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table Pegawai
   add constraint Data_departemen_dipakai_oleh_pegawai foreign key (KodeDepartemen)
      references Departemen (KodeDepartemen)
go

alter table Pegawai
   add constraint Data_detail_group_shift_dipakai_oleh_pegawai foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table Pegawai
   add constraint Data_divisi_dipakai_oleh_pegawai foreign key (KodeDivisi)
      references Divisi (KodeDivisi)
go

alter table Pegawai
   add constraint Data_jabatan_dipakai_oleh_pegawai foreign key (KodeJabatan)
      references Jabatan (KodeJabatan)
go

alter table Pegawai
   add constraint Data_outsourcing_dipakai_oleh_pegawai foreign key (KodeOutsourcing)
      references OutSourcing (KodeOutsourcing)
go

alter table Pegawai
   add constraint Data_perusahaan_dipakai_oleh_pegawai foreign key (KodePerusahaan)
      references Perusahaan (KodePerusahaan)
go

alter table Pegawai
   add constraint Data_status_karyawan_dipakai_oleh_pegawai foreign key (KodeStatus)
      references StatusKaryawan (KodeStatus)
go

alter table PegawaiApproval
   add constraint Data_pegawai_dipakai_oleh_pegawai_approval foreign key (PegawaiId)
      references Pegawai (PegawaiId)
         on update cascade on delete cascade
go

alter table PenambahanPayrollDetail
   add constraint Data_pegawai_dipakai_oleh_detail_penambahan_payroll foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table PenambahanPayrollDetail
   add constraint Data_penambahan_payroll_dipakai_oleh_detail_penambahan_payroll foreign key (NoPenambahan)
      references PenambahanPayroll (NoPenambahan)
go

alter table PenguranganPayrollDetail
   add constraint Data_pegawai_dipakai_oleh_detail_pengurangan_payroll foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table PenguranganPayrollDetail
   add constraint Data_pengurangan_payroll_dipakai_detail_pengurangan_payroll foreign key (NoPengurangan)
      references PenguranganPayroll (NoPengurangan)
go

alter table PeriodeGajiDt
   add constraint Data_group_gaji_dipakai_oleh_detail_periode_gaji foreign key (KodeGroupGaji)
      references GroupGaji (KodeGroupGaji)
go

alter table PeriodeGajiDt
   add constraint Data_periode_gaji_dipakai_oleh_detail_periode_gaji foreign key (KodePeriode)
      references PeriodeGajiHd (KodePeriode)
go

alter table PeriodeGajiHd
   add constraint Data_pegawai_dipakai_oleh_periode_gaji_pegawai foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table PersonValidation
   add constraint Data_pegawai_dipakai_oleh_data_validasi foreign key (PegawaiId)
      references Pegawai (PegawaiId)
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

alter table Scheduling
   add constraint Data_detail_group_shift_dipakai_oleh_scheduling foreign key (KodeGroupShiftId, Shift)
      references GroupShiftDt1 (KodeGroupShiftId, Shift)
go

alter table Scheduling
   add constraint Data_pegawai_dipakai_oleh_schedule foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table Scheduling
   add constraint Data_perusahaan_dipakai_oleh_scheduling foreign key (KodePerusahaan)
      references Perusahaan (KodePerusahaan)
go

alter table SettingGajiNominal
   add constraint Data_group_gaji_dipakai_setting_gaji_nominal foreign key (KodeGroupGaji)
      references GroupGaji (KodeGroupGaji)
go

alter table SettingGajiNominal
   add constraint Data_tipe_payroll_dipakai_setting_gaji_nominal foreign key (PayrollType)
      references PayrollType (PayrollType)
go

alter table SettingGajiSyarat
   add constraint Data_group_gaji_dipakai_oleh_setting_syarat_gaji foreign key (KodeGroupGaji)
      references GroupGaji (KodeGroupGaji)
go

alter table SettingGajiSyarat
   add constraint Data_syarat_dipakai_oleh_setting_syarat_gaji foreign key (NoSyarat)
      references SyaratHd (NoSyarat)
go

alter table SettingGajiSyarat
   add constraint Data_tipe_payroll_dipakai_oleh_setting_gaji_syarat foreign key (PayrollType)
      references PayrollType (PayrollType)
go

alter table SyaratDt
   add constraint Data_syarat_dipakai_oleh_syarat_detail foreign key (NoSyarat)
      references SyaratHd (NoSyarat)
go

alter table SyaratDt2
   add constraint Data_kode_absen_dipakai_oleh_syarat_detail_detail foreign key (KodeAbsen)
      references KodeAbsen (KodeAbsen)
go

alter table SyaratDt2
   add constraint Data_syarat_detail_dipakai_oleh_syarat_detail_detail foreign key (NoSyarat, ANo)
      references SyaratDt (NoSyarat, Ano)
go

alter table TransaksiAbsen
   add constraint Data_kode_absen_dipakai_oleh_transaksi_absen foreign key (KodeAbsen)
      references KodeAbsen (KodeAbsen)
go

alter table TransaksiAbsen
   add constraint Data_pegawai_dipakai_oleh_transaksi_absen foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table TransaksiAbsen
   add constraint Data_user_dipakai_oleh_transaksi_absen foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table TransaksiPayrollBalance
   add constraint Data_pegawai_dipakai_oleh_transaksi_payroll_balance foreign key (PegawaiId)
      references Pegawai (PegawaiId)
go

alter table TransaksiPayrollDt
   add constraint Data_syarat_payroll_dipakai_oleh_detail_transaksi_payroll foreign key (NoSyarat)
      references SyaratHd (NoSyarat)
go

alter table TransaksiPayrollDt
   add constraint Data_tipe_payroll_dipakai_oleh_detail_transaksi_payroll foreign key (PayrollType)
      references PayrollType (PayrollType)
go

alter table TransaksiPayrollDt
   add constraint Data_transaksi_payroll_dipakai_oleh_detail_transaksi_payroll foreign key (NoPayroll)
      references TransaksiPayrollHd (NoPayroll)
go

alter table TransaksiPengambilanPayrollDt
   add constraint Data_transaksi_payroll_dipakai_oleh_detail_transaksi_pengambilan_payroll foreign key (NoPayroll, PayrollType, Nosyarat)
      references TransaksiPayrollDt (NoPayroll, PayrollType, NoSyarat)
go

alter table TransaksiPengambilanPayrollDt
   add constraint Data_transaksi_pengambilan_payroll_dipakai_oleh_detail_pengambilan_payroll foreign key (NoTransaksiPengambilan)
      references TransaksiPengambilanPayrollHd (NoTransaksiPengambilan)
go

alter table TransaksiPengambilanPayrollHd
   add constraint Data_employee_dipakai_oleh_transaksi_pengambilan_payroll foreign key (EmployeeId)
      references Employee (EmployeeId)
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


create function TerbilangDetil 
(@Nilai as decimal)
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


create function currencytoString 
  (@angka as decimal(19,2))
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


create function fnGetDate 
(@ATgl Datetime) 
RETURNS Datetime
begin

  declare 
   @Tgl datetime

  set @Tgl=cast(cast(datepart(yyyy,@ATgl) as varchar)+cast(datepart(mm,@ATgl) as varchar)+cast(datepart(dd,@ATgl) as varchar) as datetime)

  Return(@Tgl)
end
go


create function fnGetFirstDateofMonth 
(@ATgl Datetime) 
RETURNS Datetime
begin

  declare 
   @Tgl datetime

  set @Tgl=cast(cast(datepart(yyyy,@ATgl) as varchar)+cast(datepart(mm,@ATgl) as varchar)+'01' as datetime)

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
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
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
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))   
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
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
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
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))   
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


create function fnGetLastDateOfMonth 
(@TransactionDate DateWithoutTime) 
RETURNS Datetime
begin
declare 
  @CurrentYear integer,
  @CurrentMonth integer,
  @NextDayOfMonth datetime

  select @CurrentYear=Year(@TransactionDate)
  select @CurrentMonth=Month(@TransactionDate) + 1

  if (@CurrentMonth = 13) 
  begin
    set @CurrentMonth = 1
    set @CurrentYear  = @CurrentYear + 1
  end

  set @NextDayOfMonth = CAST(CAST(@CurrentYear as varchar) + replicate('0',2-len(CAST(@CurrentMonth as varchar)))+CAST(@CurrentMonth as varchar)+'01' as datetime) - 1
  
  Return(@NextDayOfMonth)
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


create function fngetperiod 
(@Date datewithouttime) 
RETURNS varchar(6)
begin
declare 
  @Periode varchar(6),
  @Thn varchar(4),
  @Bln varchar(2)
  
  select @Thn=cast(year(@Date) as varchar)
  select @Bln=cast(month(@Date) as varchar)
 
  set @Periode = @Thn + replicate('0',2-len(@Bln)) + @Bln

  Return(@Periode)
end
go


create function getshiftschedule 
(@PegawaiId integer, @TglAbsen datetime, @JamAbsen datetime) 
RETURNS varchar(2)
begin
declare 
  @Shift varchar(2)
 
  select @Shift=(
   case 
     when shift1 is null then Shift2
     when shift2 is null then Shift1
     when cast(selisih1 as datetime)>cast(selisih2 as datetime) then Shift2
     else Shift1
   end) 
  from
  (    
  select a.Shift as Shift1,b.Shift as Shift2,
     datediff(minute,cast(@JamAbsen as datetime),a.jammulaiabsen)as selisih1,
     datediff(minute,cast(@JamAbsen as datetime),b.jammulaiabsen)as selisih2
  from
  (
  select top 1 a.pegawaiid,b.Shift,c.jammulaiabsen
  from pegawai a
  left join groupShiftdt2 b on a.KodeGroupShiftId=b.KodeGroupShiftId
  left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja
  where pegawaiid=@PegawaiId and kodehari=DatePart(weekday,cast(@TglAbsen as datetime))
  and jammulaiabsen<=@JamAbsen 
  order by jammulaiabsen desc) a
  full join 
  (
  select Top 1 a.pegawaiid,b.Shift,c.jammulaiabsen 
  from pegawai a
  left join groupShiftdt2 b on a.KodeGroupShiftId=b.KodeGroupShiftId
  left join masterjamkerja c on b.kodejamkerja=c.kodejamkerja
  where pegawaiid=@PegawaiId and kodehari=DatePart(weekday,cast(@TglAbsen as datetime))
  and jammulaiabsen>=@JamAbsen 
  order by jammulaiabsen asc) b on a.pegawaiid=b.pegawaiid
  ) a 

  return(@Shift)
end
go


create function mutasi2 
(@date datewithouttime, @pegawaiid integer) 
RETURNS varchar(15)
begin

  declare
    @Noreg varchar(15)

  select top 1 @Noreg=Noreg 
  from mutasi where tglmulai<=@date and pegawaiid=@pegawaiid and statusapprove='1'
  order by tglmulai desc 

  return(@Noreg)
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
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
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
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))   
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
           set @TempNomorBaru=left(ltrim(rtrim(month(@ATgl))),@Panjang)   
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
           set @TempNomorBaru=ltrim(rtrim(month(@ATgl)))   
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


create procedure spcopygroupgaji 
  @groupgajiasal varchar, @groupgajitujuan varchar
as
begin
 declare
  @tglberlaku datewithouttime,
  @KodeGroupGaji varchar,
  @Payrolltype varchar,
  @NoSyarat varchar,
  @Nominal currency,
  @Koefisien int
 
  declare crcopysettinggajinominal CURSOR FOR 
    SELECT tglberlaku,kodegroupgaji,payrolltype,nominal 
    from settinggajinominal 
    where kodegroupgaji=@groupgajiasal
   
  Open crcopysettinggajinominal
  
  fetch next from crcopysettinggajinominal into @tglberlaku,@kodegroupgaji,@payrolltype,@nominal
  
  while @@FETCH_STATUS = 0
  begin
    if not(exists(select * from settinggajinominal where tglberlaku=@tglberlaku and kodegroupgaji=@GroupGajiTujuan and payrolltype=@payrolltype)) 
       insert into settinggajinominal (tglberlaku,kodegroupgaji,payrolltype,nominal) values (@tglberlaku,@GroupGajiTujuan,@payrolltype,@nominal)
    fetch next from crcopysettinggajinominal into @tglberlaku,@kodegroupgaji,@payrolltype,@nominal
  end

  CLOSE crcopysettinggajinominal
  DEALLOCATE crcopysettinggajinominal

  declare crcopysettinggajisyarat cursor for 
    select kodegroupgaji,payrolltype,nosyarat,koefisien 
    from settinggajisyarat 
    where kodegroupgaji=@groupgajiasal
  
  fetch next from crcopysettinggajisyarat into @kodegroupgaji,@payrolltype,@nosyarat,@koefisien

  while @@FETCH_STATUS = 0
  begin
    fetch next from crcopysettinggajisyarat into @kodegroupgaji,@payrolltype,@nosyarat,@koefisien
    if not(exists(select * from settinggajisyarat where kodegroupgaji=@GroupGajiTujuan and payrolltype=@payrolltype and nosyarat=@nosyarat)) 
       insert into settinggajisyarat (kodegroupgaji,payrolltype,nosyarat,koefisien) values (@GroupGajiTujuan,@payrolltype,@nosyarat,@koefisien)
  end 
 
 close crcopysettinggajisyarat
 DEALLOCATE crcopysettinggajisyarat

end
go


create procedure spprosesbatalharian 
  @tgl1 DateWithoutTime, @tgl2 DateWithoutTime, @GroupGaji varchar, @GroupShiftId varchar, @ShiftId varchar, @PegawaiId varchar
as
begin


  if exists (select 1
            from  sysobjects
           where  id = object_id('xtemp')
            and   type = 'U')
  drop table xtemp
  
  select * into xtemp from
  (select kodegroupgaji from groupgaji where kodegroupgaji like @GroupGaji) a,
  (select kodegroupShiftId,ShiftId from GroupShiftIdDt1 where kodegroupShiftId like @GroupShiftId and kodegroupShiftId like @ShiftId) b,
  (select pegawaiid from pegawai where cast(pegawaiid as character varying) like @Pegawaiid) c 
  
  update absen set flagprosesgaji='0' 
  from
   absen a 
   left join xtemp b on a.kodegroupShiftId=b.kodegroupShiftId and a.ShiftId=b.ShiftId and a.pegawaiid=cast(b.pegawaiid as integer) 
   left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
  where a.tgl between @tgl1 and @tgl2;   
  


end
go


create procedure spprosesbatalperiode 
  @periode character varying, @groupgaji character varying, @groupshiftid character varying, @shiftid character varying, @pegawaiid character varying
as
begin

  if exists (select 1
            from  sysobjects
           where  id = object_id('xtemp')
            and   type = 'U')
  drop table xtemp
  
  select * into xtemp from
  (select kodegroupgaji from groupgaji where kodegroupgaji like @GroupGaji) a,
  (select kodegroupShiftId,ShiftId from GroupShiftIdDt1 where kodegroupShiftId like AGroupShiftId and kodegroupShiftId like AShiftId) b,
  (select pegawaiid from pegawai where cast(pegawaiid as character varying) like APegawaiid) c ;

  update absen set flagprosesgaji='0' 
  from
    absen a 
    left join xtemp b on a.kodegroupShiftId=b.kodegroupShiftId and a.ShiftId=b.ShiftId and a.pegawaiid=cast(b.pegawaiid as integer) 
    left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
    where a.tgl between Atgl1 and Atgl2; 


end
go


create procedure spprosesbln 
  @bulan datetime
as
begin
 declare
  @TglAkhir integer,
  @Tgl datewithouttime,
  @I integer,
  @Counter varchar,
  @BulanStr varchar
  
 insert into absenbulan(bulan,pegawaiid,noreg) 
  (select dbo.fnFirstDate(@bulan),a.pegawaiid,b.noreg
   from pegawai a,mutasi b 
   where (a.flagkeluar='0' or (a.flagkeluar='1' and a.tglkeluar>=dbo.fngetlastdateofmonth(@bulan))) and a.statusschedule='0'
   and a.pegawaiid=b.pegawaiid and b.tglmulai=
   (select max(tglmulai) from mutasi where pegawaiid=a.pegawaiid and tglmulai<=dbo.fngetfirstdateofmonth(@bulan))
    and not(a.pegawaiid in (select pegawaiid from absenbulan where dbo.fnFirstDate(bulan)=dbo.fnFirstDate(@bulan) and pegawaiid=a.pegawaiid and noreg=b.noreg))
    union
    select dbo.fnFirstDate(@bulan),a.pegawaiid,b.noreg
    from pegawai a,mutasi b 
    where (a.flagkeluar='0' or (a.flagkeluar='1' and a.tglkeluar>=dbo.fngetlastdateofmonth(@bulan))) and a.statusschedule='0'
    and a.pegawaiid=b.pegawaiid and dbo.fnFirstDate(b.tglmulai)=dbo.fnFirstDate(@bulan)
    and not(a.pegawaiid in (select pegawaiid from absenbulan where dbo.fnFirstDate(bulan)=dbo.fnFirstDate(@bulan) and pegawaiid=a.pegawaiid and noreg=b.noreg)
   )
  );
  --ubah semua tanggal selain minggu menjadi 'A'
  select @TglAkhir=day(dbo.fngetlastdateofmonth(@bulan))

  set @Tgl=@bulan
  while @I<=@TglAkhir
  begin
      if not(exists(select tgl from libur where tgl=@Tgl))
      begin
        set @Counter=ltrim(cast(@I as varchar))
        set @BulanStr=cast(@Bulan as varchar)
        print 'update absenbulan set t'+@Counter+'=''A'' where pegawaiid in (select pegawaiid from pegawai where flagschedule=''0'')'+
        'and bulan='''+@BulanStr+''' and t'+@Counter+'='''' '
      end 
      set @Tgl=@Tgl+1
      set @I=@I+1
  end
end
go


create procedure spprosesclosingshift 
  @Tgl datewithouttime, @KodeGroupShiftId varchar, @Shift varchar
as
begin
declare
  @SqlStr varchar(500),
  @Otomatis varchar(500),
  @KodeOtomatis varchar(500),
  @DefaultKodeAbsen varchar(2)

  select @DefaultKodeAbsen=setupvalue from setup where setupid='OPT05'
  select @Otomatis=setupvalue from setup where setupid='OPT07'
  select @KodeOtomatis=setupvalue from setup where setupid='OPT08'

  set @SqlStr='insert into absen(tgl,pegawaiid,noreg,kodegroupshiftid,shift,kodeabsen,statusabsen) '
  set @SqlStr=@SqlStr+'select cast('''+@tgl+''' as datewithouttime),a.pegawaiid,b.noreg,a.kodegroupshiftid,a.shift,'''+@DefaultKodeAbsen+''',''2'' '
  set @SqlStr=@SqlStr+'from pegawai a '
  set @SqlStr=@SqlStr+'left join mutasi b '
  set @SqlStr=@SqlStr+'on a.pegawaiid=b.pegawaiid and tglmulai=(select max(tglmulai) from mutasi where pegawaiid=a.pegawaiid and tglmulai<=cast('''+@tgl+''' as datewithouttime)) '
  set @SqlStr=@SqlStr+'where a.kodegroupshiftid ='''+@KodeGroupShiftId+''' and a.shift ='''+@Shift+''' '
  set @SqlStr=@SqlStr+'and (tglkeluar is null or a.tglkeluar>=cast('''+@tgl+''' as datewithouttime)) '
  set @SqlStr=@SqlStr+'and a.statusschedule=''0'''
  set @SqlStr=@SqlStr+'and a.pegawaiid not in '
  set @SqlStr=@SqlStr+'( '
  set @SqlStr=@SqlStr+'select pegawaiid from absen where tgl=cast('''+@tgl+''' as datewithouttime) '
  set @SqlStr=@SqlStr+') and not b.noreg is null '
  set @SqlStr=@SqlStr+'and '''+@tgl+''' not in (select tgl from libur)'
  set @SqlStr=@SqlStr+'union '
  set @SqlStr=@SqlStr+'select cast('''+@tgl+''' as datewithouttime),a.pegawaiid,b.noreg,a.kodegroupshiftid,a.shift,'''+@DefaultKodeAbsen+''',''2'' '
  set @SqlStr=@SqlStr+'from scheduling a '
  set @SqlStr=@SqlStr+'left join mutasi b  '
  set @SqlStr=@SqlStr+'on a.pegawaiid=b.pegawaiid and tglmulai=(select max(tglmulai) from mutasi where pegawaiid=a.pegawaiid and tglmulai<=cast('''+@tgl+''' as datewithouttime)) '
  set @SqlStr=@SqlStr+'where a.kodegroupshiftid ='''+@KodeGroupShiftId+''' and a.shift ='''+@Shift+''' '
  set @SqlStr=@SqlStr+'and tglschedule='''+@tgl+''' '
  set @SqlStr=@SqlStr+'and a.pegawaiid not in  '
  set @SqlStr=@SqlStr+'( '
  set @SqlStr=@SqlStr+' select pegawaiid from absen where tgl=cast('''+@tgl+''' as datewithouttime) '
  set @SqlStr=@SqlStr+') and not b.noreg is null '
  execute @SqlStr

  if (@Otomatis='1')
  begin
   -- set jam keluar
   set @SqlStr='update absen set kodeabsen='''+@KodeOtomatis+''',statusabsen=''2'' where tgl=cast('''+@tgl+''' as datewithouttime)'
   set @SqlStr=@SqlStr+'and kodegroupshiftid ='''+@KodeGroupShiftId+''' and shift ='''+@Shift+''' '
   set @SqlStr=@SqlStr+'and statusabsen=''0'''
   execute @SqlStr
  end

  set @SqlStr='update absen set statusabsen=''2'' where tgl=cast('''+@tgl+''' as datewithouttime)'
  set @SqlStr=@SqlStr+'and kodegroupshiftid ='''+@KodeGroupShiftId+''' and shift ='''+@Shift+''' '
  set @SqlStr=@SqlStr+'and statusabsen=''1'''
  execute @SqlStr


end
go


create procedure spprosesharian 
  @Tgl1 datewithouttime, @Tgl2 datewithouttime, @agroupgaji character varying, @agroupshift character varying, @Shift character varying, @PegawaiId character varying
as
begin
declare
  @TglProses datewithouttime,
  @i integer,
  @Str character varying,

  @crtgl datewithouttime,
  @crpegawaiid character varying,
  @crnosyarat character varying,

  @crkodeabsen3 character varying,
  @crterlambat3 quantityplus,
  
  @crqtyhari quantityplus,
  @crterlambat1 quantityplus,
  @crterlambat2 quantityplus,
  @crflagexecutequery flag,
  @crsyntaxquery character varying,
  @crpayrolltype character varying,
  @crgrouping character varying,
  @crflagbayarsesuaitglproses flag,
  @crflagterlambat flag,
  @crflagsyarat flag,
  @crkodeabsen character varying,
  @crkodegroupgaji character varying,
  @crterlambat quantityplus,

  @okSyaratDt bit,
  @okurut bit,

  @ano character varying,
  @modesyarat status,
  @qtymode quantityplus,
  @urut flag,
  @modeoperator flag,
  @agroup character varying, 

  @jumterlambat quantityplus,
  @qtyAbsen quantityplus,
  @crquantityhari quantityplus,
  @Koefisien integer,

  @okTerlambat bit,
  @okGrouping bit,
  @crgroup character varying,
  @crok bit, 
  @SyaratOk  bit,
  @anominal currencyplus,
  @crkodegroupshiftid character varying, 
  @crshift character varying, 
  @anopayroll character varying,
  @Msg varchar(200) 
  
  if exists (select 1
            from  sysobjects
           where  id = object_id('xtemp')
            and   type = 'U')
  drop table xtemp  

  select * into xtemp from
  (select kodegroupgaji from groupgaji where kodegroupgaji like @agroupGaji) a,
  (select kodegroupshiftid,shift from GroupShiftDt1 where kodegroupshiftid like @agroupshift and shift like @Shift) b,
  (select pegawaiid from pegawai where cast(pegawaiid as character varying) like @PegawaiId) c 

  set @TglProses = @Tgl1 
  -- looping dari tgl1 sampai tgl2

  while (@TglProses <= @Tgl2) 
  begin
    -- loop untuk pegawai yang akan diproses sesuai hari itu
 --   if exists(select * 
 --             from absen a 
 --             left join payrolldetail b on a.pegawaiid=b.pegawaiid 
 --             left join xtemp c on a.kodegroupshiftid=c.kodegroupshiftid and a.shift=c.shift and a.pegawaiid=cast(c.pegawaiid as integer) and b.KodeGroupGaji = c.KodeGroupGaji
 --             where a.tgl=@TglProses and a.statusabsen<>'2') then
 --      raise exception '%', '^Ada Data Absen Yang Belum Di Closing^'
 --   else  
      -- cari syarat yang periodenya harian yang ada ditabel xtemp

      declare crproses cursor for 
      select distinct a.pegawaiid,d.nosyarat,a.kodegroupshiftid,a.shift 
      from absen a 
      left join payrolldetail b on a.pegawaiid=b.pegawaiid 
      left join xtemp c on a.kodegroupshiftid=c.kodegroupshiftid and a.shift=c.shift and a.pegawaiid=cast(c.pegawaiid as integer) and c.kodegroupgaji=b.kodegroupgaji
      left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
      left join syarathd e on d.nosyarat=e.nosyarat
      where a.tgl=@TglProses and e.statusproses='0' and a.statusabsen='2'
      order by a.pegawaiid,a.kodegroupshiftid,a.shift,d.nosyarat 

      open crproses
      fetch next from crproses into @crpegawaiid,@crnosyarat,@crkodegroupshiftid,@crshift
      WHILE @@FETCH_STATUS = 0
      BEGIN
        select @crqtyhari=qtyhari,@crterlambat1=terlambat1,@crterlambat2=terlambat2,@crflagexecutequery=flagexecutequery,
               @crsyntaxquery=syntaxquery,@crgrouping=grouping,@crflagbayarsesuaitglproses=flagbayarsesuaitglproses,@crflagterlambat=flagterlambat,@crflagsyarat=flagsyarat
        from 
        syarathd
        where nosyarat=@crnosyarat

        set @okSyaratDt=0

        if (@crflagsyarat='0') 
           set @okSyaratDt=1
        else
        begin
        -- cek syarat detail
           declare crsyaratdt cursor for 
           select ano,modesyarat,qtymode,urut,modeoperator,agroup 
           from syaratdt where nosyarat=@crnosyarat

           open crsyaratdt
           fetch next from crsyaratdt into @ano,@modesyarat,@qtymode,@urut,@modeoperator,@agroup

           WHILE @@FETCH_STATUS = 0
           BEGIN
             set @okSyaratDt=0  
             set @okurut='1'  
           
             fetch next from crsyaratdt into @ano,@modesyarat,@qtymode,@urut,@modeoperator,@agroup

  	         -- mencari qty absen	
             set @qtyAbsen=0
             
             declare crabsen cursor for select kodeabsen
             from absen 
             where pegawaiid=cast(@crpegawaiid as integer) and tgl between @TglProses-cast(@crqtyhari as integer)+1 and @TglProses and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift 
             order by tgl

             open crabsen

             fetch next from crabsen into @crkodeabsen3 
              
             WHILE @@FETCH_STATUS = 0
             BEGIN
               if (@crkodeabsen3 in (select kodeabsen from syaratdt2 where nosyarat=@crnosyarat and ano=cast(@ano as integer))) 
                 set @qtyAbsen=@qtyAbsen+1
               else
                 set @okurut='0'
               fetch next from crabsen into @crkodeabsen3 
             end 
	         close crabsen

             if (@modesyarat='0')
                if (@qtyAbsen>=@qtymode)
                   set @okSyaratDt=1  

 	     -- tidak boleh ada
             if (@modesyarat='1') 
                if (@qtyAbsen<@qtymode) 
                   set @okSyaratDt=1  

	     -- lebih besar sama dengan	
             if (@modesyarat='2')
                if (@qtyAbsen>=@qtymode)
                   set @okSyaratDt=1  

         -- lebih besar 
             if (@modesyarat='3') 
                if (@qtyAbsen>@qtymode) 
                   set @okSyaratDt=1  

         -- lebih kecil sama dengan
             if (@modesyarat='4') 
                if (@qtyAbsen<=@qtymode) 
                   set @okSyaratDt=1  

         -- lebih kecil
             if (@modesyarat='5')
                if (@qtyAbsen<@qtymode)
                   set @okSyaratDt=1  

             if (@urut='1') 
                set @okSyaratDt=cast(@okSyaratDt as bit) & cast(@okurut as bit)

             delete from hitpayroll where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and nosyarat=@crnosyarat and ano=cast(@ano as integer) and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift

             insert into hitpayroll (tglpayroll,pegawaiid,nosyarat,ano,modesyarat,modeoperator,agroup,ok,kodegroupshiftid,shift) 
             values (@TglProses,cast(@crpegawaiid as integer),@crnosyarat,cast(@ano as integer),@modesyarat,@modeoperator,@agroup,@okSyaratDt,@crkodegroupshiftid,@crshift)

           end 
	       close crsyaratdt

           declare crHitPayroll2 cursor for select agroup,cast(ok as bit) from hitpayroll2 where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and nosyarat=@crnosyarat and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift

           open crHitPayroll2

           fetch next from crHitPayroll2 into @crgroup,@crok 

           WHILE @@FETCH_STATUS = 0
           BEGIN
             if (@crok=1)
                set @crgrouping=replace(@crgrouping,@crgroup,'1')
             else
                set @crgrouping=replace(@crgrouping,@crgroup,'0')
             fetch next from crHitPayroll2 into @crgroup,@crok 
           end 
           close crHitPayroll2

           set @okGrouping=@crgrouping
        end
         
        if (@crflagterlambat ='1')
        begin   
           select @jumterlambat=sum(terlambat)  
           from absen where pegawaiid=cast(@crpegawaiid as integer) and tgl between @TglProses-cast(@crqtyhari as integer)+1 and @TglProses and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift
           
           if (@jumterlambat between @crterlambat1 and @crterlambat2)
              set @okTerlambat='1'
           else
              set @okTerlambat='0'   
        end
        else
           set @okTerlambat='1'

--        if @crflagexecutequery='1' then
           
--        else
        
--        end if 

        set @SyaratOk=@okGrouping & @okTerlambat
        
        delete from hitpayroll3 where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and nosyarat=@crnosyarat and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift

        insert into hitpayroll3 (tglpayroll,pegawaiid,nosyarat,ok,kodegroupshiftid,shift) 
        values (@TglProses,cast(@crpegawaiid as integer),@crnosyarat,@SyaratOk,@crkodegroupshiftid,@crshift)


      --cari dulu syaratnya
         
      -- matchkan dengan tabel gaji yang paling akhir

      -- masukkan ke tabel payroll
      end 
      close crproses


       -- cari kodegroup gaji yang akan dihitung
      declare crproses cursor for select distinct a.pegawaiid,a.kodegroupshiftid,a.shift,c.kodegroupgaji,d.payrolltype,d.nosyarat,e.qtyhari
      from absen a 
      left join xtemp b on a.kodegroupshiftid=b.kodegroupshiftid and a.shift=b.shift and a.pegawaiid=cast(b.pegawaiid as integer)
      left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
      left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
      left join syarathd e on d.nosyarat=e.nosyarat
      where a.tgl=@TglProses and e.statusproses='0' and a.statusabsen='2'       

      open crproses 

      fetch next from crproses into @crpegawaiid,@crkodegroupshiftid,@crshift,@crkodegroupgaji,@crpayrolltype,@crnosyarat,@crqtyhari

      WHILE @@FETCH_STATUS = 0
      BEGIN

        --cek apakah sudah menerima atau belum

   --     if not(exists(select tglpayroll from transaksipayrollhd a,transaksipayrolldt b where a.nopayroll=b.nopayroll and a.pegawaiid=cast(@crpegawaiid as integer) and b.payrolltype=@crpayrolltype and tglpayroll>@TglProses-cast(@crqtyhari as integer) and tglpayroll<>@TglProses)) then
         
         select top 1 @anominal=nominal 
         from settinggajinominal
         where kodegroupgaji=@crkodegroupgaji and payrolltype=@crpayrolltype and tglberlaku<=@TglProses
         order by tglberlaku desc 

         if (@anominal is null) 
         begin
           set @Msg=@crpayrolltype+' Belum Ditentukan !!!'
           RAISERROR('%',16,1,@Msg)
         end

         select @Koefisien=a.koefisien
         from settinggajisyarat a 
         left join hitpayroll3 b on b.pegawaiid=cast(@crpegawaiid as integer) and a.nosyarat=b.nosyarat and tglpayroll=@TglProses
         where kodegroupgaji=@crkodegroupgaji and payrolltype=@crpayrolltype and b.ok=1 and b.kodegroupshiftid=@crkodegroupshiftid and b.shift=@crshift
         
         if not(exists(select nopayroll 
                       from transaksipayrollhd
                       where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift
               )) 
           insert into transaksipayrollhd(tglpayroll,pegawaiid,kodegroupshiftid,shift,kodegroupgaji,total,employeeid,counterprint,statusapprove)
           values (@TglProses,cast(@crpegawaiid as integer),@crkodegroupshiftid,@crshift,@crkodegroupgaji,0,null,0,'1')
         else
           select @anopayroll=nopayroll 
           from transaksipayrollhd
           where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift 
           update transaksipayrollhd set kodegroupgaji=@crkodegroupgaji where nopayroll=@anopayroll
         
         select @anopayroll=nopayroll 
         from transaksipayrollhd
         where tglpayroll=@TglProses and pegawaiid=cast(@crpegawaiid as integer) and kodegroupshiftid=@crkodegroupshiftid and shift=@crshift 
 
         if not(exists(select payrolltype from transaksipayrolldt where nopayroll=@anopayroll and payrolltype=@crpayrolltype and nosyarat=@crnosyarat)) 
           insert into transaksipayrolldt(nopayroll,payrolltype,nosyarat)
           values (@anopayroll,@crpayrolltype,@crnosyarat)
 
         update transaksipayrolldt set koefisien=isnull(@Koefisien,0),amount=isnull(@anominal,0),total=isnull(@Koefisien,0)*isnull(@anominal,0) 
         where nopayroll=@anopayroll and payrolltype=@crpayrolltype and nosyarat=@crnosyarat

         update transaksipayrollhd set total=(select sum(total) from transaksipayrolldt where nopayroll=@anopayroll) where nopayroll=@anopayroll
      end 
      close crproses
      
  --  end if
    set @TglProses=@TglProses+1
  end 
  -- hapus 
end
go


create procedure spprosesisitanggal 
  @tgl datewithouttime
as
begin
declare
  @tgl1 datewithouttime,
  @tgl2 datewithouttime,
  @str varchar

  select @Str=cast(year(@tgl) as varchar(4))+'/01/01'

  if not(exists(select tanggal from tanggal where tanggal=@tgl)) 
  begin
     select @tgl1=cast(cast(year(@tgl) as varchar)+'/01/01' as datetime)
     select @tgl2=cast(cast(year(@tgl) as varchar)+'/12/31' as datetime)
     while @tgl1<>@tgl2 
     begin
       insert into tanggal (tanggal) values (@tgl1);
       set @tgl1=@tgl1+1;
     end
  end
end
go


create procedure spprosesperiode 
  @Periode character varying, @GroupGaji character varying, @GroupShiftId character varying, @ShiftId character varying, @PegawaiId character varying
as
begin
declare
  @Tgl1 datewithouttime,
  @Tgl2 datewithouttime,
  @i integer,
  @Str character varying,
  
  @crTgl datewithouttime,
  @crPegawaiId character varying,
  @crNoSyarat character varying,

  @crKodeAbsen3 character varying,
  @crTerlambat3 quantityplus,
  
  @crTerlambat1 quantityplus,
  @crTerlambat2 quantityplus,
  @crFlagExecuteQuery flag,
  @crSyntaxQuery character varying,
  @crPayrollType character varying,
  @crGrouping character varying,
  @crFlagBayarSesuaiTglProses flag,
  @crFlagTerlambat flag,
  @crFlagSyarat flag,
  @crKodeAbsen character varying,
  @crKodeGroupGaji character varying,
  @crTerlambat quantityplus,

  @OKSyaratDt character varying,
  @OKUrut character varying,

  @No character varying,
  @ModeSyarat status,
  @QtyMode quantityplus,
  @Urut flag,
  @ModeOperator flag,
  @Group character varying, 

  @JumTerlambat quantityplus,
  @QtyAbsen quantityplus,
  @crQtyHari quantityplus,
  @Koefisien quantityplus,

  @OKTerlambat flag,
  @OKGrouping flag,
  @crGroup character varying,
  @crOK character varying, 
  @SyaratOK  flag,
  @Nominal currencyplus,
  @crKodeGroupShiftId character varying, 
  @crShiftId character varying, 
  @Nopayroll character varying, 
  @Msg varchar(100)
  
  if exists (select 1
            from  sysobjects
           where  id = object_id('xtemp')
            and   type = 'U')
  drop table xtemp  
  
  select * into xtemp from
  (select kodegroupgaji from groupgaji where kodegroupgaji like @GroupGaji) a,
  (select kodegroupshiftId,shift from GroupShiftDt1 where kodegroupshiftid like @GroupShiftId and Shift like @ShiftId) b,
  (select pegawaiid from pegawai where cast(pegawaiid as character varying) like @PegawaiId) c 

  select @Tgl1=tglawal,@Tgl2=tglakhir 
  from periodegajihd
  where kodeperiode=@Periode

  -- loop untuk pegawai yang akan diproses sesuai hari itu
  if exists(select a.tgl,a.pegawaiid,a.kodegroupshiftId,a.shiftId,a.kodeabsen,a.statusabsen,c.kodegroupgaji 
            from absen a 
            left join xtemp b on a.kodegroupshiftId=b.kodegroupshiftId and a.shiftId=b.shiftId and a.pegawaiid=cast(b.pegawaiid as integer) 
            left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
            where a.tgl between @Tgl1 and @Tgl2 and a.statusabsen<>'3') 
  begin
    set @Msg='^Ada Data Absen Yang Belum Di Closing^'
    raiserror('%s',16,1,@Msg)
  end
  else  
  begin
     -- cari syarat yang periodenya harian yang ada ditabel xtemp
    declare crproses cursor for select distinct a.pegawaiid,d.nosyarat 
    from absen a 
    left join xtemp b on a.kodegroupshiftId=b.kodegroupshiftId and a.shiftId=b.shiftId and a.pegawaiid=cast(b.pegawaiid as integer) 
    left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
    left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
    left join syarathd e on d.nosyarat=e.nosyarat
    where a.tgl=@Tgl1 and e.statusproses='1'

    open crproses
    fetch next from crproses into @crPegawaiId,@crNoSyarat
    WHILE @@FETCH_STATUS = 0
    BEGIN
       
        select @crTerlambat1=terlambat1,@crTerlambat2=terlambat2,@crFlagExecuteQuery=flagexecutequery,@crSyntaxQuery=syntaxquery,
               @crGrouping=grouping,@crFlagBayarSesuaiTglProses=flagbayarsesuaitglproses,@crFlagTerlambat=flagterlambat,@crFlagSyarat=flagsyarat
        from 
        syarathd
        where nosyarat=@crNoSyarat 

        set @OKSyaratDt='0'

        if (@crFlagSyarat='1') 
        begin
           set @OKSyaratDt='1'
        end
        else
        begin
        -- cek syarat detail
           declare crsyaratdt cursor for 
           select ano,modesyarat,qtymode,urut,modeoperator,aGroup
           from syaratdt where nosyarat=@crNoSyarat
           set @OKSyaratDt='0'  
           set @OKUrut='1'  
           open crsyaratdt
	       fetch next from crsyaratdt into @No,@ModeSyarat,@QtyMode,@Urut,@ModeOperator,@Group
           WHILE @@FETCH_STATUS = 0
           BEGIN       
	     -- mencari qty absen	
             set @QtyAbsen=0
             declare crabsen cursor for select kodeabsen
             from absen 
             where pegawaiid=cast(@crPegawaiId as integer) and tgl between @Tgl1 and @Tgl2
             order by tgl
             open crabsen
             fetch next from crabsen into @crKodeAbsen3 
             WHILE @@FETCH_STATUS = 0
             BEGIN       
               if @crKodeAbsen3 in (select kodeabsen from syaratdt2 where nosyarat=@crNoSyarat and ano=cast(@No as integer)) 
                  set @QtyAbsen=@QtyAbsen+1
               else
                  set @OKUrut='0'
               fetch next from crabsen into @crKodeAbsen3 
             end 
             close crabsen
             
             if (@ModeSyarat=0) 
                if (@QtyAbsen>@QtyMode) 
                   set @OKSyaratDt='1'  

	     -- tidak boleh ada
             if (@ModeSyarat=1) 
                if (@QtyAbsen<@Qtymode) 
                   set @OKSyaratDt='1'  

	     -- lebih besar sama dengan	
             if (@ModeSyarat=2) 
                if (@QtyAbsen>=@QtyMode) 
                   set @OKSyaratDt='1'  

             -- lebih besar 
             if (@ModeSyarat=3) 
                if (@QtyAbsen>@QtyMode) 
                   set @OKSyaratDt='1'  

             -- lebih kecil sama dengan
             if (@ModeSyarat=4) 
                if (@QtyAbsen<=@QtyMode) 
                   set @OKSyaratDt='1'  

             -- lebih kecil
             if (@ModeSyarat=5) 
                if (@QtyAbsen<@QtyMode) 
                   set @OKSyaratDt='1'  

             if (@Urut=1) 
                set @OKSyaratDt=cast(@OKSyaratDt as bit) & cast(@OKUrut as bit)
             
             delete from hitpayroll where tglpayroll=@Tgl1 and pegawaiid=@crPegawaiId and nosyarat=@crNoSyarat and ano=@No

             insert into hitpayroll (tglpayroll,pegawaiid,nosyarat,ano,modesyarat,modeoperator,aGroup,ok) 
             values (@Tgl1,@crPegawaiId,@crNoSyarat,@No,@ModeSyarat,@ModeOperator,@Group,@OKSyaratDt)
             
             fetch next from crsyaratdt into @No,@ModeSyarat,@QtyMode,@Urut,@ModeOperator,@Group
           end
           close crsyaratdt

           declare crHitPayroll2 cursor for select agroup,ok from hitpayroll2 where tglpayroll=@Tgl1 and pegawaiid=@crPegawaiId and nosyarat=@crNoSyarat
           open crHitPayroll2 
           fetch next from crHitPayroll2 into @crGroup,@crOK 

           WHILE @@FETCH_STATUS = 0
           BEGIN                  
             set @crGrouping=replace(@crGrouping,@crGroup,@crOK)
             fetch next from crHitPayroll2 into @crGroup,@crOK 
           end
           close crHitPayroll2
           
           set @OKGrouping=@crGrouping
        end
         
        if (@crflagTerlambat='1') 
        begin
           select @JumTerlambat=sum(terlambat)  
           from absen where pegawaiid=@crPegawaiId and tgl between @Tgl1-@crqtyhari and @Tgl1 
           
           if (@JumTerlambat between @crTerlambat1 and @crTerlambat2) 
              set @OKTerlambat='1'
           else
              set @OKTerlambat='0'   
        end
        else
           set @OKTerlambat='1'

   
--        if (AflagExecuteQuery='1') 
           
--        else
        
--        end if 

        set @SyaratOK=cast(@OKGrouping as character varying) & cast(@OKTerlambat as bit) & cast(@OKSyaratDt as bit)
        
        delete from hitpayroll3 where tglpayroll=@Tgl1 and pegawaiid=@crPegawaiId and nosyarat=@crNoSyarat
        insert into hitpayroll (tglpayroll,pegawaiid,nosyarat,ok) 
        values (@Tgl1,@crPegawaiId,@crNoSyarat,@SyaratOK)


      --cari dulu syaratnya
         
      -- matchkan dengan tabel gaji yang paling akhir

      -- masukkan ke tabel payroll
      fetch next from crproses into @crPegawaiId,@crNoSyarat
    end
    close crproses
       -- cari kodegroup gaji yang akan dihitung
    declare crproses cursor for select distinct a.pegawaiid,a.kodegroupshiftId,a.shiftId,c.kodegroupgaji,d.payrolltype,d.nosyarat,e.qtyhari
    from absen a 
    left join xtemp b on a.kodegroupshiftId=b.kodegroupshiftId and a.shiftId=b.shiftId and a.pegawaiid=cast(b.pegawaiid as integer) 
    left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
    left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
    left join syarathd e on d.nosyarat=e.nosyarat
    where a.tgl=@Tgl1 and e.statusproses='0'       

    open crproses
    fetch next from crproses into @crPegawaiId,@crKodeGroupShiftId,@crShiftId,@crKodeGroupGaji,@crPayrollType,@crNoSyarat

    WHILE @@FETCH_STATUS = 0
    BEGIN 
        
        --cek apakah sudah menerima atau belum
        if not(exists(select tglpayroll from transaksipayrollhd a,transaksipayrolldt b where a.nopayroll=b.nopayroll and a.pegawaiid=@crPegawaiId and b.payrolltype=@crPayrollType and tglpayroll=@Tgl1)) 
        begin
         select top 1 @Nominal=nominal 
         from settinggajinominal
         where kodegroupgaji=@crKodeGroupGaji and payrolltype=@crPayrollType and tglberlaku<=@Tgl1
         order by tglberlaku desc 

         select @Koefisien=a.koefisien
         from settinggajisyarat a 
         left join hitpayroll3 b on b.pegawaiid=@crPegawaiId and a.nosyarat=b.nosyarat and tglpayroll=@Tgl1
         where kodegroupgaji=@crKodeGroupGaji and payrolltype=@crPayrollType and b.ok='1'

         if not(exists(select nopayroll 
                       from transaksipayrollhd
                       where tglpayroll=@Tgl1 and pegawaiid=@crPegawaiId and kodegroupshiftId=@crKodeGroupShiftId and shift=@crShiftId
               )) 
           insert into transaksipayrollhd(tglpayroll,pegawaiid,kodegroupshiftId,shift,kodegroupgaji,total,employeeid,status,counterprint,statusapprove)
           values (@Tgl1,@crPegawaiId,@crkodegroupshiftId,@crshiftId,@crkodegroupgaji,0,'',0,0,'1')
         
         select @Nopayroll=nopayroll 
         from transaksipayrollhd
         where tglpayroll=@Tgl1 and pegawaiid=@crPegawaiId and kodegroupshiftId=@crKodeGroupShiftId and shift=@crShiftId
         
         if not(exists(select payrolltype from transaksipayrolldt where nopayroll=@Nopayroll and payrolltype=@crPayrolltype and nosyarat=@crNoSyarat)) 
           insert into transaksipayrolldt(nopayroll,payrolltype,nosyarat)
           values (@Nopayroll,@crPayrollType,@crNoSyarat)
         
         update transaksipayrolldt set koefisien=@Koefisien,amount=@Nominal,total=@Koefisien*@Nominal 
         where nopayroll=@Nopayroll and payrolltype=@crPayrolltype and nosyarat=@crNoSyarat
         
         update transaksipayrollhd set total=(select sum(total) from transaksipayrolldt where nopayroll=@Nopayroll) where nopayroll=@Nopayroll
         
        end 

       fetch next from crproses into @crPegawaiId,@crNoSyarat
    end 
    close crproses
  end
end
go


create trigger TR_Absen_After on Absen for insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

    @New_Tgl DateWithoutTime,
	@New_Pegawaiid ItemId,
	@New_KodeGroupShiftid varchar(2),
	@New_Shift varchar(2),
	@New_Noreg varchar(15),
	@New_kodeAbsen varchar(2),
	@New_EmployeeId varchar(10),
	@New_Terlambat int,
	@New_PulangAwal int,
	@New_Masuk1 DateWithTime,
	@New_Masuk2 DateWithTime,
	@New_Masuk3 DateWithTime,
	@New_Masuk4 DateWithTime,
	@New_Masuk5 DateWithTime,
	@New_Keluar1 DateWithTime,
	@New_Keluar2 DateWithTime,
	@New_Keluar3 DateWithTime,
	@New_Keluar4 DateWithTime,
	@New_Keluar5 DateWithTime,
	@New_Lembur int,
	@New_M1 Status,
	@New_M2 Status,
	@New_M3 Status,
	@New_M4 Status,
	@New_M5 Status,
	@New_K1 Status,
	@New_K2 Status,
	@New_K3 Status,
	@New_K4 Status,
	@New_K5 Status,
	@New_StatusAbsen Status,
	@New_FlagProsesGaji Flag,
	@New_Status Status,
	@New_ModeMasuk Status,
	@New_ModeKeluar Status,
	@New_FlagUpdate Flag,
	@New_Keterangan MemoVarchar,
    
    @Old_Tgl DateWithoutTime,
	@Old_Pegawaiid ItemId,
	@Old_KodeGroupShiftid varchar(2),
	@Old_Shift varchar(2),
	@Old_Noreg varchar(15),
	@Old_kodeAbsen varchar(2),
	@Old_EmployeeId varchar(10),
	@Old_Terlambat int,
	@Old_PulangAwal int,
	@Old_Masuk1 DateWithTime,
	@Old_Masuk2 DateWithTime,
	@Old_Masuk3 DateWithTime,
	@Old_Masuk4 DateWithTime,
	@Old_Masuk5 DateWithTime,
	@Old_Keluar1 DateWithTime,
	@Old_Keluar2 DateWithTime,
	@Old_Keluar3 DateWithTime,
	@Old_Keluar4 DateWithTime,
	@Old_Keluar5 DateWithTime,
	@Old_Lembur int,
	@Old_M1 Status,
	@Old_M2 Status,
	@Old_M3 Status,
	@Old_M4 Status,
	@Old_M5 Status,
	@Old_K1 Status,
	@Old_K2 Status,
	@Old_K3 Status,
	@Old_K4 Status,
	@Old_K5 Status,
	@Old_StatusAbsen Status,
	@Old_FlagProsesGaji Flag,
	@Old_Status Status,
	@Old_ModeMasuk Status,
	@Old_ModeKeluar Status,
	@Old_FlagUpdate Flag,
	@Old_Keterangan MemoVarchar,
    
    @Tgl varchar(20),
    @Bln varchar(20),
    @FirstDate varchar(20),
    @Sql varchar(200),
    @ErrorMsg varchar(200),
    @FlagCheckLock varchar,
    @Ok flag,
    @JamKerjaAwal datetime,
    @JamKerjaAwal1 datetime,
    @year varchar(4),
    @month varchar(2),
    @Day varchar(2),
    @Hour varchar(2),
    @Minute varchar(2),
    @Jam varchar(30)

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

  if (@OnDelete = 1) or (@OnUpdate = 1)
  begin
    -- Initial
    select 
      @Old_Tgl=Tgl,
  	  @Old_Pegawaiid=Pegawaiid,
	  @Old_KodeGroupShiftid=KodeGroupShiftid,
	  @Old_Shift=Shift,
	  @Old_Noreg=Noreg,
	  @Old_KodeAbsen=KodeAbsen,
	  @Old_EmployeeId=EmployeeId,
	  @Old_Terlambat=Terlambat,
	  @Old_PulangAwal=PulangAwal,
	  @Old_Masuk1=Masuk1,
	  @Old_Masuk2=Masuk2,
	  @Old_Masuk3=Masuk3,
	  @Old_Masuk4=Masuk4,
	  @Old_Masuk5=Masuk5,
	  @Old_Keluar1=Keluar1,
	  @Old_Keluar2=Keluar2,
	  @Old_Keluar3=Keluar3,
	  @Old_Keluar4=Keluar4,
	  @Old_Keluar5=Keluar5,
	  @Old_Lembur=Lembur,
	  @Old_M1=M1,
	  @Old_M2=M2,
	  @Old_M3=M3,
	  @Old_M4=M4,
	  @Old_M5=M5,
	  @Old_K1=K1,
	  @Old_K2=K2,
	  @Old_K3=K3,
	  @Old_K4=K4,
	  @Old_K5=K5,
	  @Old_StatusAbsen=StatusAbsen,
	  @Old_FlagProsesGaji=FlagProsesGaji,
	  @Old_Status=Status,
	  @Old_ModeMasuk=ModeMasuk,
	  @Old_ModeKeluar=ModeKeluar,
	  @Old_FlagUpdate=FlagUpdate,
	  @Old_Keterangan=Keterangan   
    from deleted

    select @Tgl=cast(day(@Old_tgl) as varchar)
    select @Bln=cast(month(@Old_tgl) as varchar)
    select @FirstDate=cast(dbo.fnGetFirstDateOfMonth(@Old_tgl) as varchar)

    execute('update absenbulan set t'+@Tgl+'='''' where pegawaiid='''+@Old_PegawaiId+''' and bulan=convert(datetime,'''+@FirstDate+''',20) and noreg='''+@Old_noreg+'''');

    execute('update absenbulan set g'+@Tgl+'='''' where pegawaiid='''+@Old_PegawaiId+''' and bulan=convert(datetime,'''+@FirstDate+''',20) and noreg='''+@Old_noreg+'''');

    update absenrekapbulan set jumkodeabsen=isNull(jumkodeabsen,0)-1,terlambat=isNull(terlambat,0)-isNull(@Old_terlambat,0)
    where periode=dbo.fnGetFirstDateOfMonth(@Old_tgl) and pegawaiid=@Old_pegawaiid and noreg=@Old_noreg and kodeabsen=@Old_kodeabsen;

  end

  if (@OnInsert = 1) or (@OnUpdate = 1)
  begin
    -- Initial
 
   select 
      @New_Tgl=Tgl,
  	  @New_Pegawaiid=Pegawaiid,
	  @New_KodeGroupShiftid=KodeGroupShiftid,
	  @New_Shift=Shift,
	  @New_Noreg=Noreg,
	  @New_KodeAbsen=KodeAbsen,
	  @New_EmployeeId=EmployeeId,
	  @New_Terlambat=Terlambat,
	  @New_PulangAwal=PulangAwal,
	  @New_Masuk1=Masuk1,
	  @New_Masuk2=Masuk2,
	  @New_Masuk3=Masuk3,
	  @New_Masuk4=Masuk4,
	  @New_Masuk5=Masuk5,
	  @New_Keluar1=Keluar1,
	  @New_Keluar2=Keluar2,
	  @New_Keluar3=Keluar3,
	  @New_Keluar4=Keluar4,
	  @New_Keluar5=Keluar5,
	  @New_Lembur=Lembur,
	  @New_M1=M1,
	  @New_M2=M2,
	  @New_M3=M3,
	  @New_M4=M4,
	  @New_M5=M5,
	  @New_K1=K1,
	  @New_K2=K2,
	  @New_K3=K3,
	  @New_K4=K4,
	  @New_K5=K5,
	  @New_StatusAbsen=StatusAbsen,
	  @New_FlagProsesGaji=FlagProsesGaji,
	  @New_Status=Status,
	  @New_ModeMasuk=ModeMasuk,
	  @New_ModeKeluar=ModeKeluar,
	  @New_FlagUpdate=FlagUpdate,
	  @New_Keterangan=Keterangan   
    from inserted

    set @Ok ='1'
     
    if (@OnUpdate=1)
        if @New_Statusabsen='2'
           set @Ok ='0'

    if (@ok='1')
    begin
       select @FlagCheckLock=flagchecklock from kodeabsen where kodeabsen=@New_Kodeabsen

       set @New_Statusabsen='1'

       if (@FlagCheckLock = '1') 
       begin
          if not(@New_Masuk1 is null) and (@New_Keluar1 is null) 
            set @New_Statusabsen='0' 

          if not(@New_Masuk2 is null) and (@New_Keluar2 is null)
            set @New_Statusabsen='0' 

          if not(@New_Masuk3 is null) and (@New_Keluar3 is null)
            set @New_Statusabsen='0' 

          if not(@New_Masuk4 is null) and (@New_Keluar4 is null)
            set @New_Statusabsen='0' 

          if not(@New_Masuk5 is null) and (@New_Keluar5 is null)
            set @New_Statusabsen='0' 
        end
     --pengecekan ok
     set @errormsg=''

     if not(@New_Keluar1 is null) and (@New_Masuk1 is null)
        set @errormsg='^Absen Masuk 1 Diisi Dulu ^'         
     if not(@New_Keluar2 is null) and (@New_Masuk2 is null)
        set @errormsg='^Absen Masuk 2 Diisi Dulu ^'
  
     if not(@New_Keluar3 is null) and (@New_Masuk3 is null)
        set @errormsg='^Absen Masuk 3 Diisi Dulu ^'
 
     if not(@New_Keluar4 is null) and (@New_Masuk4 is null)
        set @errormsg='^Absen Masuk 4 Diisi Dulu ^'
  
     if not(@New_Keluar5 is null) and (@New_Masuk5 is null)
        set @errormsg='^Absen Masuk 5 Diisi Dulu ^'
  

     if not(@New_Masuk2 is null) and (@New_Keluar1 is null)
        set @errormsg='^Absen Keluar 1 Diisi Dulu ^'
   
     if not(@New_Masuk3 is null) and (@New_Keluar2 is null)
        set @errormsg='^Absen Keluar 2 Diisi Dulu ^'
 
     if not(@New_Masuk4 is null) and (@New_Keluar3 is null)
        set @errormsg='^Absen Keluar 3 Diisi Dulu ^'
 
     if not(@New_Masuk5 is null) and (@New_Keluar4 is null)
        set @errormsg='^Absen Keluar 4 Diisi Dulu ^'
   

     if not(@New_Masuk1 is null) and not(@New_Keluar1 is null) and (@New_Keluar1<@New_Masuk1)
        set @errormsg='^Absen Masuk 1 > Keluar 1 ^'
  
     if not(@New_Masuk2 is null) and not(@New_Keluar2 is null) and (@New_Keluar2<@New_Masuk2)
        set @errormsg='^Absen Masuk 2 > Keluar 2 ^'
 
     if not(@New_Masuk3 is null) and not(@New_Keluar3 is null) and (@New_Keluar3<@New_Masuk3)
        set @errormsg='^Absen Masuk 3 > Keluar 3 ^'
   
     if not(@New_Masuk4 is null) and not(@New_Keluar4 is null) and (@New_Keluar4<@New_Masuk4)
        set @errormsg='^Absen Masuk 4 > Keluar 4 ^'
  
     if not(@New_Masuk5 is null) and not(@New_Keluar5 is null) and (@New_Keluar5<@New_Masuk5)
        set @errormsg='^Absen Masuk 5 > Keluar 5 ^'
 

     if not(@New_Masuk2 is null) and not(@New_Keluar1 is null) and (@New_Masuk2<@New_Keluar1)
        set @errormsg='^Absen Masuk 2 < Keluar 1 ^'

     if not(@New_Masuk3 is null) and not(@New_Keluar2 is null) and (@New_Masuk3<@New_Keluar2)
        set @errormsg='^Absen Masuk 3 < Keluar 2 ^'

     if not(@New_Masuk4 is null) and not(@New_Keluar3 is null) and (@New_Masuk4<@New_Keluar3)
        set @errormsg='^Absen Masuk 4 < Keluar 3 ^'

     if not(@New_Masuk5 is null) and not(@New_Keluar4 is null) and (@New_Masuk5<@New_Keluar4)
        set @errormsg='^Absen Masuk 5 < Keluar 4 ^'

     if @errormsg<>''
     begin
	   if (@@TRANCOUNT = 1) 
	       ROLLBACK TRANSACTION	
           RAISERROR('%s',16,1,@errorMsg)        
     	   return
     end

     if not(@New_Masuk1 is null)
        set @New_Modemasuk='1'
     if not(@New_Masuk2 is null)
        set @New_Modemasuk='2'
     if not(@New_Masuk3 is null)
        set @New_Modemasuk='3'
     if not(@New_Masuk4 is null)
        set @New_Modemasuk='4'
     if not(@New_Masuk5 is null)
        set @New_Modemasuk='5'

     if not(@New_Keluar1 is null)
        set @New_Modekeluar='1'
     if not(@New_Keluar2 is null)
        set @New_Modekeluar='2'
     if not(@New_Keluar3 is null)
        set @New_Modekeluar='3'
     if not(@New_Keluar4 is null)
        set @New_Modekeluar='4'
     if not(@New_Keluar5 is null)
        set @New_Modekeluar='5'

     if @New_Modemasuk>@New_Modekeluar
        set @New_Status=1
     else
        set @New_Status=2


     if not(@New_Masuk1 is null)
     begin

        select @JamKerjaAwal=b.jamkerjaawal 
        from groupshiftdt2 a 
        left join masterjamkerja b on a.kodejamkerja=b.kodejamkerja
        where 
        a.kodegroupshiftid=@New_Kodegroupshiftid and a.shift=@New_Shift and a.kodehari=DATEPART(dw,@New_Tgl) 

        select @Year = cast(datepart(year,@New_Masuk1) as varchar(4))
        select @Month = replicate('0',2-len(cast(datepart(month,@New_Masuk1) as varchar(2))))+cast(datepart(month,@New_Masuk1) as varchar(2))
        select @Day = replicate('0',2-len(cast(datepart(day,@New_Masuk1) as varchar(2))))+cast(datepart(day,@New_Masuk1) as varchar(2))
        select @Hour = replicate('0',2-len(cast(datepart(hour,@JamKerjaAwal) as varchar(2))))+cast(datepart(hour,@JamKerjaAwal) as varchar(2))
        select @Minute = replicate('0',2-len(cast(datepart(minute,@JamKerjaAwal) as varchar(2))))+cast(datepart(minute,@JamKerjaAwal) as varchar(2))

        set @Jam=@Year+'-'+@Month+'-'+@Day+'  '+@Hour+':'+@Minute+':00'


        select @JamKerjaAwal1 = convert(datetime,@Year+'-'+@Month+'-'+@Day+'  '+@Hour+':'+@Minute+':00',20)

        if @New_Masuk1>@JamKerjaAwal1 
           select @New_Terlambat=((cast(datename(hour,@New_Masuk1) as int) - cast(datename(hour,@JamKerjaAwal1) as int)*60)+(cast(datename(minute,@New_Masuk1) as int) - cast(datename(minute,@JamKerjaAwal1) as int)))
        else
           set @New_Terlambat=0
    end
  end


    select @Tgl=cast(day(@New_Tgl) as varchar)
    select @Bln=cast(month(@New_tgl) as varchar)
    select @FirstDate=convert(varchar(20),dbo.fnGetFirstDateOfMonth(@New_tgl),20)    

    set @Sql=cast(@New_Tgl as varchar(100))

    if not (exists(select pegawaiid from absenbulan where bulan=dbo.fnGetFirstDateOfMonth(@New_tgl) and pegawaiid=@New_pegawaiid and noreg=@New_noreg)) 
       insert into absenbulan(bulan,pegawaiid,noreg) values (dbo.fnGetFirstDateOfMonth(@New_tgl),@New_pegawaiid,@New_noreg);

    set @Sql='update absenbulan set t'+@Tgl+'='''+@New_kodeabsen+''' where pegawaiid='''+isnull(cast(@New_pegawaiid as varchar(30)),'')+''' and bulan=convert(datetime,'''+@FirstDate+''',20) and noreg='''+@New_noreg+''''

    execute(@Sql);


    set @Sql='update absenbulan set g'+@Tgl+'='''+@New_kodegroupShiftId+''' where pegawaiid='+isnull(cast(@New_pegawaiid as varchar(30)),'')+' and bulan=convert(datetime,'''+@FirstDate+''',20) and noreg='''+@New_noreg+''''

    execute(@Sql);
    if (exists(select pegawaiid from absenrekapbulan where periode=dbo.fnGetFirstDateOfMonth(@New_tgl) and pegawaiid=@New_pegawaiid and noreg=@New_noreg and kodeabsen=@New_kodeabsen))
       update absenrekapbulan set jumkodeabsen=isNull(jumkodeabsen,0)+1,terlambat=isNull(terlambat,0)+isNull(@New_terlambat,0)
       where periode=dbo.fnGetFirstDateOfMonth(@New_tgl) and pegawaiid=@New_pegawaiid and noreg=@New_noreg and kodeabsen=@New_kodeabsen;
    else
       insert into absenrekapbulan(periode,pegawaiid,kodeabsen,jumkodeabsen,noreg,terlambat) values (dbo.fnGetFirstDateOfMonth(@New_tgl),@New_pegawaiid,@New_kodeabsen,1,@New_noreg,isNull(@New_terlambat,0));
 end
end
go


create trigger TR_AbsenBulan_After on AbsenBulan For insert as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

    @New_PEGAWAIID ItemId,
	@New_BULAN DateWithoutTime,
	@New_TGLKELUAR DateWithoutTime,
	@New_NOREG varchar(15),
	@New_T1 varchar,
	@New_T2 varchar,
	@New_T3 varchar,
	@New_T4 varchar,
	@New_T5 varchar,
	@New_T6 varchar,
	@New_T7 varchar,
	@New_T8 varchar,
	@New_T9 varchar,
	@New_T10 varchar,
	@New_T11 varchar,
	@New_T12 varchar,
	@New_T13 varchar,
	@New_T14 varchar,
	@New_T15 varchar,
	@New_T16 varchar,
	@New_T17 varchar,
	@New_T18 varchar,
	@New_T19 varchar,
	@New_T20 varchar,
	@New_T21 varchar,
	@New_T22 varchar,
	@New_T23 varchar,
	@New_T24 varchar,
	@New_T25 varchar,
	@New_T26 varchar,
	@New_T27 varchar,
	@New_T28 varchar,
	@New_T29 varchar,
	@New_T30 varchar,
	@New_T31 varchar,
	@New_L1 varchar,
	@New_L2 varchar,
	@New_L3 varchar,
	@New_L4 varchar,
	@New_L5 varchar,
	@New_L6 varchar,
	@New_L7 varchar,
	@New_L8 varchar,
	@New_L9 varchar,
	@New_L10 varchar,
	@New_L11 varchar,
	@New_L12 varchar,
	@New_L13 varchar,
	@New_L14 varchar,
	@New_L15 varchar,
	@New_L16 varchar,
	@New_L17 varchar,
	@New_L18 varchar,
	@New_L19 varchar,
	@New_L20 varchar,
	@New_L21 varchar,
	@New_L22 varchar,
	@New_L23 varchar,
	@New_L24 varchar,
	@New_L25 varchar,
	@New_L26 varchar,
	@New_L27 varchar,
	@New_L28 varchar,
	@New_L29 varchar,
	@New_L30 varchar,
	@New_L31 varchar,
	@New_OT1 Disc,
	@New_OT2 Disc,
	@New_OT3 Disc,
	@New_OT4 Disc,
	@New_OT5 Disc,
	@New_OT6 Disc,
	@New_OT7 Disc,
	@New_OT8 Disc,
	@New_OT9 Disc,
	@New_OT10 Disc,
	@New_OT11 Disc,
	@New_OT12 Disc,
	@New_OT13 Disc,
	@New_OT14 Disc,
	@New_OT15 Disc,
	@New_OT16 Disc,
	@New_OT17 Disc,
	@New_OT18 Disc,
	@New_OT19 Disc,
	@New_OT20 Disc,
	@New_OT21 Disc,
	@New_OT22 Disc,
	@New_OT23 Disc,
	@New_OT24 Disc,
	@New_OT25 Disc,
	@New_OT26 Disc,
	@New_OT27 Disc,
	@New_OT28 Disc,
	@New_OT29 Disc,
	@New_OT30 Disc,
	@New_OT31 Disc,
	@New_S1 varchar,
	@New_S2 varchar,
	@New_S3 varchar,
	@New_S4 varchar,
	@New_S5 varchar,
	@New_S6 varchar,
	@New_S7 varchar,
	@New_S8 varchar,
	@New_S9 varchar,
	@New_S10 varchar,
	@New_S11 varchar,
	@New_S12 varchar,
	@New_S13 varchar,
	@New_S14 varchar,
	@New_S15 varchar,
	@New_S16 varchar,
	@New_S17 varchar,
	@New_S18 varchar,
	@New_S19 varchar,
	@New_S20 varchar,
	@New_S21 varchar,
	@New_S22 varchar,
	@New_S23 varchar,
	@New_S24 varchar,
	@New_S25 varchar,
	@New_S26 varchar,
	@New_S27 varchar,
	@New_S28 varchar,
	@New_S29 varchar,
	@New_S30 varchar,
	@New_S31 varchar,
	@New_G1 varchar(2),
	@New_G2 varchar(2),
	@New_G3 varchar(2),
	@New_G4 varchar(2),
	@New_G5 varchar(2),
	@New_G6 varchar(2),
	@New_G7 varchar(2),
	@New_G8 varchar(2),
	@New_G9 varchar(2),
	@New_G10 varchar(2),
	@New_G11 varchar(2),
	@New_G12 varchar(2),
	@New_G13 varchar(2),
	@New_G14 varchar(2),
	@New_G15 varchar(2),
	@New_G16 varchar(2),
	@New_G17 varchar(2),
	@New_G18 varchar(2),
	@New_G19 varchar(2),
	@New_G20 varchar(2),
	@New_G21 varchar(2),
	@New_G22 varchar(2),
	@New_G23 varchar(2),
	@New_G24 varchar(2),
	@New_G25 varchar(2),
	@New_G26 varchar(2),
	@New_G27 varchar(2),
	@New_G28 varchar(2),
	@New_G29 varchar(2),
	@New_G30 varchar(2),
	@New_G31 varchar(2),

    @Old_PEGAWAIID ItemId,
	@Old_BULAN DateWithoutTime,
	@Old_TGLKELUAR DateWithoutTime,
	@Old_NOREG varchar(15),
	@Old_T1 varchar,
	@Old_T2 varchar,
	@Old_T3 varchar,
	@Old_T4 varchar,
	@Old_T5 varchar,
	@Old_T6 varchar,
	@Old_T7 varchar,
	@Old_T8 varchar,
	@Old_T9 varchar,
	@Old_T10 varchar,
	@Old_T11 varchar,
	@Old_T12 varchar,
	@Old_T13 varchar,
	@Old_T14 varchar,
	@Old_T15 varchar,
	@Old_T16 varchar,
	@Old_T17 varchar,
	@Old_T18 varchar,
	@Old_T19 varchar,
	@Old_T20 varchar,
	@Old_T21 varchar,
	@Old_T22 varchar,
	@Old_T23 varchar,
	@Old_T24 varchar,
	@Old_T25 varchar,
	@Old_T26 varchar,
	@Old_T27 varchar,
	@Old_T28 varchar,
	@Old_T29 varchar,
	@Old_T30 varchar,
	@Old_T31 varchar,
	@Old_L1 varchar,
	@Old_L2 varchar,
	@Old_L3 varchar,
	@Old_L4 varchar,
	@Old_L5 varchar,
	@Old_L6 varchar,
	@Old_L7 varchar,
	@Old_L8 varchar,
	@Old_L9 varchar,
	@Old_L10 varchar,
	@Old_L11 varchar,
	@Old_L12 varchar,
	@Old_L13 varchar,
	@Old_L14 varchar,
	@Old_L15 varchar,
	@Old_L16 varchar,
	@Old_L17 varchar,
	@Old_L18 varchar,
	@Old_L19 varchar,
	@Old_L20 varchar,
	@Old_L21 varchar,
	@Old_L22 varchar,
	@Old_L23 varchar,
	@Old_L24 varchar,
	@Old_L25 varchar,
	@Old_L26 varchar,
	@Old_L27 varchar,
	@Old_L28 varchar,
	@Old_L29 varchar,
	@Old_L30 varchar,
	@Old_L31 varchar,
	@Old_OT1 Disc,
	@Old_OT2 Disc,
	@Old_OT3 Disc,
	@Old_OT4 Disc,
	@Old_OT5 Disc,
	@Old_OT6 Disc,
	@Old_OT7 Disc,
	@Old_OT8 Disc,
	@Old_OT9 Disc,
	@Old_OT10 Disc,
	@Old_OT11 Disc,
	@Old_OT12 Disc,
	@Old_OT13 Disc,
	@Old_OT14 Disc,
	@Old_OT15 Disc,
	@Old_OT16 Disc,
	@Old_OT17 Disc,
	@Old_OT18 Disc,
	@Old_OT19 Disc,
	@Old_OT20 Disc,
	@Old_OT21 Disc,
	@Old_OT22 Disc,
	@Old_OT23 Disc,
	@Old_OT24 Disc,
	@Old_OT25 Disc,
	@Old_OT26 Disc,
	@Old_OT27 Disc,
	@Old_OT28 Disc,
	@Old_OT29 Disc,
	@Old_OT30 Disc,
	@Old_OT31 Disc,
	@Old_S1 varchar,
	@Old_S2 varchar,
	@Old_S3 varchar,
	@Old_S4 varchar,
	@Old_S5 varchar,
	@Old_S6 varchar,
	@Old_S7 varchar,
	@Old_S8 varchar,
	@Old_S9 varchar,
	@Old_S10 varchar,
	@Old_S11 varchar,
	@Old_S12 varchar,
	@Old_S13 varchar,
	@Old_S14 varchar,
	@Old_S15 varchar,
	@Old_S16 varchar,
	@Old_S17 varchar,
	@Old_S18 varchar,
	@Old_S19 varchar,
	@Old_S20 varchar,
	@Old_S21 varchar,
	@Old_S22 varchar,
	@Old_S23 varchar,
	@Old_S24 varchar,
	@Old_S25 varchar,
	@Old_S26 varchar,
	@Old_S27 varchar,
	@Old_S28 varchar,
	@Old_S29 varchar,
	@Old_S30 varchar,
	@Old_S31 varchar,
	@Old_G1 varchar(2),
	@Old_G2 varchar(2),
	@Old_G3 varchar(2),
	@Old_G4 varchar(2),
	@Old_G5 varchar(2),
	@Old_G6 varchar(2),
	@Old_G7 varchar(2),
	@Old_G8 varchar(2),
	@Old_G9 varchar(2),
	@Old_G10 varchar(2),
	@Old_G11 varchar(2),
	@Old_G12 varchar(2),
	@Old_G13 varchar(2),
	@Old_G14 varchar(2),
	@Old_G15 varchar(2),
	@Old_G16 varchar(2),
	@Old_G17 varchar(2),
	@Old_G18 varchar(2),
	@Old_G19 varchar(2),
	@Old_G20 varchar(2),
	@Old_G21 varchar(2),
	@Old_G22 varchar(2),
	@Old_G23 varchar(2),
	@Old_G24 varchar(2),
	@Old_G25 varchar(2),
	@Old_G26 varchar(2),
	@Old_G27 varchar(2),
	@Old_G28 varchar(2),
	@Old_G29 varchar(2),
	@Old_G30 varchar(2),
	@Old_G31 varchar(2),
   
	@noreg varchar(15),
	@TglMulai datewithouttime,
	@Tgl integer,
	@Mulai integer,
	@Akhir integer,
	@i integer,
	@noreglama varchar(15),
	@noregAkhir varchar(15),
	@noregAwal varchar(15),
	@TglMulailama datewithouttime,
	@TglAkhir datewithouttime,
	@TglAwal datewithouttime,
	@Tgllama integer,
	@Mulailama integer,
	@Akhirlama integer,
	@ilama integer,
	@temptrim varchar(2),

    @Nama varchar(100),
    @TglAbsen datewithouttime,
    @TglAbsenstr varchar(20),
	@errorMessage varchar(100)

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
  SELECT
    @NEW_PEGAWAIID=PegawaiId,
    @NEW_BULAN=bulan,
    @New_NOREG=noreg
  FROM INSERTED

  select 
    @Old_PEGAWAIID=PEGAWAIID,
    @Old_BULAN=bulan,
    @Old_NOREG=noreg
  from deleted

  if (@OnInsert = 1)
  begin
    set @noregAkhir='';

	declare Cnoreg CURSOR FOR 
       select a.noreg,b.tglmulai 
       from absenbulan a left join mutasi b on a.noreg=b.noreg and a.pegawaiid=b.pegawaiid 
       where bulan=@NEW_BULAN and a.pegawaiid=@NEW_PEGAWAIID order by b.tglmulai

    open Cnoreg 
	FETCH NEXT FROM Cnoreg INTO @noreg,@TglMulai

/*    raiserror('%s',16,1,@noreg)
    rollback
    return*/
    
	WHILE @@FETCH_STATUS = 0
    BEGIN

       if (@noregAkhir='') or (@TglMulai>@TglAkhir)
       begin
         set @noregAkhir=@noreg;     
         set @TglAkhir=@TglMulai;
       end
   
       if (@noregAwal='') or (@TglMulai<@TglAkhir)
       begin
         set @noregAwal=@noreg;     
         set @TglAwal=@TglMulai;
       end

       if dbo.fnGetFirstDateOfMonth(@TglMulai)>=@NEW_BULAN
       begin
          set @Mulai=1
          set @Akhir=day(@TglMulai)
		  set @i = @Mulai
          set @temptrim = cast(@i as varchar(2))

		  while @i<=@Akhir
		  begin
			execute('update absenbulan set t'+@temptrim+'=''M'' where pegawaiid='''+ @NEW_PEGAWAIID + ''' and bulan='''+ @NEW_BULAN +''' and noreg='''+ @noreg+''' and t'+@temptrim+'<>'''' ');
            set @i=@i+1
		  end 
       end

       -- update bulan sendiri
  
  	   declare Cnoreglama CURSOR FOR select top 1 a.noreg,b.tglmulai from absenbulan a left join mutasi b on a.noreg=b.noreg and a.pegawaiid=b.pegawaiid where bulan=@new_bulan and a.pegawaiid=@NEW_pegawaiid and b.tglmulai<@Tglmulai order by b.tglmulai
	   OPEN Cnoreglama
	   FETCH NEXT FROM Cnoreglama INTO @noreglama, @TglMulailama
	   
	   WHILE @@FETCH_STATUS = 0
       BEGIN
		 set @Mulailama=day(@TglMulai);
         set @Akhirlama=31;
		 set @i = @Mulailama
		 set @temptrim = cast(@i as varchar(2))
		 WHILE @i<=@Akhirlama
         BEGIN
            execute('update absenbulan set t'+@temptrim+'=''M'' where pegawaiid='''+@NEW_PEGAWAIID+''' and bulan='''+@NEW_BULAN+''' and noreg='''+@noreglama+''' and t'+@temptrim+'<>'''' ');
            set @i=@i+1
		 END
         FETCH NEXT FROM Cnoreglama INTO @noreglama, @TglMulailama
	   END

       CLOSE Cnoreglama
       DEALLOCATE Cnoreglama
		
	  FETCH NEXT FROM Cnoreg INTO @noreg,@TglMulai	
	END

    CLOSE Cnoreg
    DEALLOCATE Cnoreg
    
  end

  if (@OnDelete = 1)
  begin
     -- kalo masih ada data absen
     if (exists(select tgl from absen where dbo.fnGetFirstDateOfMonth(tgl)=@Old_bulan and pegawaiid=@Old_pegawaiid and noreg=@Old_noreg)) 
     begin
        select @Nama=nama 
        from pegawai 
        where pegawaiid=@Old_PegawaiId 
        
        select @TglAbsen=tgl 
        from absen 
        where dbo.fnGetFirstDateOfMonth(tgl)=@Old_bulan and pegawaiid=@Old_pegawaiid  and noreg=@Old_noreg 

        set @TglAbsenstr=cast(@TglAbsen as varchar)
        set @errorMessage = 'Data Absen Harian Pegawai '+@Nama+' Tgl '+@TglAbsenstr+' masih ada !!! Hapus Manual Tgl Absen kalau mau menghapus !!!' 

		if (@@TRANCOUNT = 1) 
		   ROLLBACK TRANSACTION	
           RAISERROR('%s',16,1,@errorMessage)        
     	   return
     end
  end
end
go


create trigger TR_HitPayroll_After on HitPayroll For
 insert, update, delete  as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

	@NEW_TGLPAYROLL DateWithoutTime,
	@NEW_PEGAWAIID ItemId,
	@NEW_NOSYARAT varchar(3), 
	@NEW_ANO smallint,
	@NEW_KODEGROUPSHIFTID varchar(2), 
	@NEW_SHIFT varchar(2), 
	@NEW_MODESYARAT Status,
	@NEW_MODEOPERATOR char(10), 
	@NEW_AGROUP varchar(2), 
	@NEW_OK bit,

	@OLD_TGLPAYROLL DateWithoutTime,
	@OLD_PEGAWAIID ItemId,
	@OLD_NOSYARAT varchar(3), 
	@OLD_ANO smallint,
	@OLD_KODEGROUPSHIFTID varchar(2), 
	@OLD_SHIFT varchar(2), 
	@OLD_MODESYARAT Status,
	@OLD_MODEOPERATOR char(10), 
	@OLD_AGROUP varchar(2), 
	@OLD_OK bit,

   
	@Tgl integer,
	@Noreg varchar(15),
	@KodeGroupShiftId varchar,
	@Shift varchar(100),
	@KodeAbsen varchar(5),
	@i datewithouttime,
	@SampaiTgl datewithouttime



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
 
  select
     @OLD_MODEOPERATOR = modeoperator,
	 @OLD_OK = ok,
     @OLD_TGLPAYROLL = tglpayroll,
     @OLD_PEGAWAIID = pegawaiid,
	 @Old_NOSYARAT = nosyarat,
     @Old_AGROUP = agroup,
	 @OLD_KODEGROUPSHIFTID = kodegroupshiftid, 
	 @OLD_SHIFT = shift
  from deleted

  select
     @NEW_MODEOPERATOR = modeoperator,
	 @NEW_OK = ok,
     @NEW_TGLPAYROLL = tglpayroll,
     @NEW_PEGAWAIID = pegawaiid,
	 @NEW_NOSYARAT = nosyarat,
     @NEW_AGROUP = agroup,
	 @NEW_KODEGROUPSHIFTID = kodegroupshiftid, 
	 @NEW_SHIFT = shift
  from inserted

  if (@OnDelete = 1)
   begin

    if @OLD_MODEOPERATOR='0'
     begin
       update hitpayroll2
       set ok=ok & @OLD_ok
       where tglpayroll=@OLD_tglpayroll and pegawaiid=@OLD_pegawaiid and nosyarat=@OLD_nosyarat and agroup=@OLD_agroup and kodegroupshiftid=@OLD_kodegroupshiftid and shift=@OLD_shift;
     end
    else
     begin
       update hitpayroll2
       set ok=ok | @OLD_ok
       where tglpayroll=@OLD_tglpayroll and pegawaiid=@OLD_pegawaiid and nosyarat=@OLD_nosyarat and agroup=@OLD_agroup and kodegroupshiftid=@OLD_kodegroupshiftid and shift=@OLD_shift;
     end  

   end

  if (@OnInsert=1) or (@OnUpdate=1)
   begin
     if (not(exists(select pegawaiid from hitpayroll2 where tglpayroll=@NEW_tglpayroll and pegawaiid=@NEW_pegawaiid and nosyarat=@NEW_nosyarat and agroup=@NEW_agroup and kodegroupshiftid=@NEW_kodegroupshiftid and shift=@NEW_shift)))
      begin
        insert into hitpayroll2(tglpayroll,pegawaiid,nosyarat,agroup,kodegroupshiftid,shift,OK) values (@NEW_tglpayroll,@NEW_pegawaiid,@NEW_nosyarat,@NEW_agroup,@NEW_kodegroupshiftid,@NEW_shift,'1');
      end
     
     if @NEW_modeoperator='0' 
      begin
       update hitpayroll2
       set ok=ok & @NEW_ok
       where tglpayroll=@NEW_tglpayroll and pegawaiid=@NEW_pegawaiid and nosyarat=@NEW_nosyarat and agroup=@NEW_agroup and kodegroupshiftid=@NEW_kodegroupshiftid and shift=@NEW_shift;
      end
     else
      begin
       update hitpayroll2
       set ok=ok | @NEW_ok
       where tglpayroll=@NEW_tglpayroll and pegawaiid=@NEW_pegawaiid and nosyarat=@NEW_nosyarat and agroup=@NEW_agroup and kodegroupshiftid=@NEW_kodegroupshiftid and shift=@NEW_shift;
      end  
   end

end
go


create trigger TR_Lembur_After on Lembur For
 insert, update, delete  as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

	@New_TGL DateWithoutTime ,
	@New_PEGAWAIID ItemId ,
	@New_KODEGROUPSHIFTID varchar(2) ,
	@New_SHIFT varchar(2) ,
	@New_NOREG varchar(15) ,
	@New_PEKERJAAN varchar(20) ,
	@New_JAMMULAI2 DateWithTime ,
	@New_JAMAKHIR2 DateWithTime ,
	@New_JUMLEMBUR Quantity ,
	@New_BATAL Flag ,
	@New_KETERANGAN MemoVarchar ,
	@New_STATUSAPPROVE Status ,
	@New_COUNTERPRINT QuantityPlus ,
	@New_FLAGANOMALI Flag ,
	@New_EMPLOYEEID varchar(10) ,
	@New_JAMMULAI DateWithTime ,
	@New_JAMAKHIR DateWithTime ,
	@New_JUMISTIRAHAT DateWithTime ,

	@Old_TGL DateWithoutTime ,
	@Old_PEGAWAIID ItemId ,
	@Old_KODEGROUPSHIFTID varchar(2) ,
	@Old_SHIFT varchar(2) ,
	@Old_NOREG varchar(15) ,
	@Old_PEKERJAAN varchar(20) ,
	@Old_JAMMULAI2 DateWithTime ,
	@Old_JAMAKHIR2 DateWithTime ,
	@Old_JUMLEMBUR Quantity ,
	@Old_BATAL Flag ,
	@Old_KETERANGAN MemoVarchar ,
	@Old_STATUSAPPROVE Status ,
	@Old_COUNTERPRINT QuantityPlus ,
	@Old_FLAGANOMALI Flag ,
	@Old_EMPLOYEEID varchar(10) ,
	@Old_JAMMULAI DateWithTime ,
	@Old_JAMAKHIR DateWithTime ,
	@Old_JUMISTIRAHAT DateWithTime ,

	@Tgl integer,
    @temptrim varchar(2),
    @temptgl DateWithoutTime
	
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

	select
	  @Old_TGL = tgl,
      @Old_PEGAWAIID = pegawaiid,
      @Old_NOREG = noreg
	from deleted

	select
	  @New_TGL = tgl,
      @New_PEGAWAIID = pegawaiid,
      @New_NOREG = noreg,
	  @New_JUMLEMBUR = jumlembur
	from inserted


  if (@OnDelete=1) or (@OnUpdate=1)
   begin
     set @tgl=day(@Old_tgl)
     set @temptrim = cast(@tgl as varchar)
	 set @temptgl = dbo.fnFirstDate(@Old_TGL)
     execute('update absenbulan set ot'+@temptrim+'=0 where pegawaiid='''+@Old_pegawaiid+''' and bulan='''+ @temptgl +''' and noreg='''+@Old_noreg+'''')
   end

  if (@OnInsert=1) or (@OnUpdate=1)
   begin   
     set @tgl=day(@New_tgl)
     if (not(exists(select pegawaiid from absenbulan where bulan=dbo.fnFirstDate(@New_tgl) and pegawaiid=@New_pegawaiid and noreg=@New_noreg)))
      begin
        set @temptgl = dbo.FirstDate(@New_tgl)
        insert into absenbulan(bulan,pegawaiid,noreg) values (@temptgl,@New_pegawaiid,@New_noreg);
      end   
     set @temptrim = cast(@tgl as varchar)
	 set @temptgl = dbo.FirstDate(@New_tgl)
     execute('update absenbulan set ot'+@temptrim+'='+@New_jumlembur+' where pegawaiid='''+@New_pegawaiid+''' and bulan='''+@temptgl+''' and noreg='''+@New_noreg+'''')
   end


end
go


create trigger TR_Mutasi_After on Mutasi For
 insert, update, delete  as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

	@New_NOREG varchar(15) ,
	@New_PEGAWAIID ItemId ,
	@New_TGLMULAI DateWithoutTime ,
	@New_KODEDIVISI varchar(5) ,
	@New_KODEDEPARTEMEN varchar(5) ,
	@New_KODEJABATAN varchar(5) ,
	@New_KODESTATUS char(1) ,
	@New_KODEOUTSOURCING varchar(3) ,
	@New_KODEPERUSAHAAN varchar(5) ,
	@New_KETERANGAN varchar(50) ,
	@New_COUNTERPRINT QuantityPlus ,
	@New_STATUSAPPROVE Status ,
	@New_TGLMUTASI DateWithoutTime ,
	@New_EMPLOYEEID varchar(10) ,

	@Old_NOREG varchar(15) ,
	@Old_PEGAWAIID ItemId ,
	@Old_TGLMULAI DateWithoutTime ,
	@Old_KODEDIVISI varchar(5) ,
	@Old_KODEDEPARTEMEN varchar(5) ,
	@Old_KODEJABATAN varchar(5) ,
	@Old_KODESTATUS char(1) ,
	@Old_KODEOUTSOURCING varchar(3) ,
	@Old_KODEPERUSAHAAN varchar(5) ,
	@Old_KETERANGAN varchar(50) ,
	@Old_COUNTERPRINT QuantityPlus ,
	@Old_STATUSAPPROVE Status ,
	@Old_TGLMUTASI DateWithoutTime ,
	@Old_EMPLOYEEID varchar(10) ,

	@StatusTransaction integer,
    @temptrim varchar(2),
    @temptgl DateWithoutTime,
    @noreg varchar(15),
    @nama varchar(100),
    @error varchar(100),
    @mintgl datewithouttime,
    @maxtgl datewithouttime,
    @errormessage varchar(200)
	
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

  select
    @Old_TglMulai = TglMulai,
    @Old_Pegawaiid = pegawaiid,
    @Old_Noreg = noreg
  from deleted
 
  select
    @New_NOREG = noreg,
	@New_PEGAWAIID = pegawaiid ,
	@New_TGLMULAI = tglmulai ,
	@New_KODEDIVISI = kodedivisi ,
	@New_KODEDEPARTEMEN = kodedepartemen ,
	@New_KODEJABATAN = kodejabatan ,
	@New_KODESTATUS = kodestatus ,
	@New_KODEOUTSOURCING = kodeoutsourcing ,
	@New_KODEPERUSAHAAN = kodeperusahaan ,
	@New_KETERANGAN = keterangan ,
	@New_COUNTERPRINT = counterprint ,
	@New_STATUSAPPROVE = statusapprove ,
	@New_TGLMUTASI = tglmutasi ,
	@New_EMPLOYEEID = employeeid
  from inserted

  if (@OnDelete=1)
  begin
     -- hapus yang noreg nya tersebut juga dihapus
     select @noreg = dbo.mutasi2(@Old_tglmulai-1,@Old_pegawaiid);

     if (isnull(@noreg,'')='')
     begin
		if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
		raiserror('%s',16,1,'^ No Mutasi Pengganti Absen Tidak Ada Data tidak bisa di hapus !!!^')  
		return
     end
     else
     begin        
       set nocount on 
       update absen set noreg=@noreg where noreg=@Old_noreg;
       set nocount off 

       if exists(select tgl from absen where dbo.fnGetFirstDateOfMonth(tgl)=dbo.fnGetFirstDateOfMonth(@Old_tglmulai) and pegawaiid=@Old_pegawaiid and noreg=@Old_noreg)
       begin
         set @errormessage = @Old_noreg + '   ' + @Noreg
	     if (@@TRANCOUNT = 1) 
			ROLLBACK TRANSACTION
			raiserror('%s',16,1,@errormessage) 
		 return
       end 

       set nocount on 
       update pegawai
       set kodeperusahaan=b.kodeperusahaan,kodedivisi=b.kodedivisi,
         kodedepartemen=b.kodedepartemen,kodejabatan=b.kodejabatan,
         kodeoutsourcing=b.kodeoutsourcing,kodestatus=b.kodestatus
       from mutasi b 
       where pegawai.pegawaiid=b.pegawaiid and pegawai.pegawaiid=@Old_pegawaiid
       and b.noreg=(select top 1 noreg from mutasi
                  where pegawaiid=pegawai.pegawaiid and statusapprove='1' 
                  order by tglmulai desc);
       set nocount off 

     end 
  end

  if (@OnInsert=1 or @OnUpdate=1) 
  begin
     -- set pegawai yang aktif=mutasi yang terakhir
     update pegawai 
     set kodeperusahaan=b.kodeperusahaan,kodedivisi=b.kodedivisi,
         kodedepartemen=b.kodedepartemen,kodejabatan=b.kodejabatan,
         kodeoutsourcing=b.kodeoutsourcing,kodestatus=b.kodestatus
     from
     mutasi b 
     where pegawai.pegawaiid=b.pegawaiid and pegawai.pegawaiid=@New_pegawaiid
     and b.noreg=(select top 1 noreg from mutasi 
				  where pegawaiid=pegawai.pegawaiid and statusapprove='1' 
                  order by tglmulai desc);

     if not(exists(select pegawaiid from absenbulan 
                   where pegawaiid=@New_pegawaiid and bulan=dbo.fnGetFirstDateOfMonth(@New_tglmulai) 
                   and noreg=@New_noreg)) and substring(@New_noreg,1,1)<>'B'
     begin
        set @temptgl = dbo.fnGetFirstDateOfMonth(@New_tglmulai)
        set nocount on 
        insert into absenbulan(pegawaiid,bulan,noreg) values(@New_pegawaiid,@temptgl,@New_noreg);
        set nocount off 
     end

   end

   if (@OnUpdate=1)
   begin
     if @Old_pegawaiid<>@New_pegawaiid
     begin

       select @mintgl = min(a.tgl), @maxtgl = max(a.tgl), @nama = b.nama
       from absen a left join pegawai b on a.pegawaiid=b.pegawaiid
       where a.noreg=@Old_noreg 
       group by b.nama;
         
       if not(isnull(@nama,'')='')
       begin
         set @errormessage =  @nama + ' dari tgl ' + @Mintgl + ' - ' + @Maxtgl
	     if (@@TRANCOUNT = 1) 
				ROLLBACK TRANSACTION
         raiserror('Batalkan Absen %s',16,1,@errormessage)     
		 return         
       end

       select @noreg = min(noreg)
       from absen  
       where tgl>=@New_tglmulai and pegawaiid=@New_pegawaiid; 
         

       select @mintgl = min(a.tgl), @maxtgl = max(a.tgl), @nama = b.nama
       from absen a left join pegawai b on a.pegawaiid=b.pegawaiid
       where a.noreg=@noreg 
       group by b.nama;

       if not(@nama  is null)
       begin
          set @errormessage = @nama + ' dari tgl ' + @Mintgl + ' - ' + @Maxtgl
		  if (@@TRANCOUNT = 1) 
		     ROLLBACK TRANSACTION	
          raiserror('Batalkan Absen %s',16,1,@errormessage)  
		  return
       end
     end
   end
end
go


create trigger TR_Pegawai_After on Pegawai for
  insert,update,delete as
begin
declare 
    @NoregBaru varchar(15),
    @NoregLama varchar(15),
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

    @New_PegawaiId ItemId,
    @New_TglKeluar DateWithoutTime,
	@New_TglMasuk DateWithoutTime,
	@New_KodeDivisi varchar(5),
	@New_KodeDepartemen varchar(5),
	@New_KodeJabatan varchar(5),
	@New_KodeStatus Status,
	@New_KodeOutsourcing varchar(3),
	@New_KodePerusahaan varchar(5),
    
	@Old_PegawaiId ItemId,
    @Old_TglKeluar DateWithoutTime,
	@Old_TglMasuk DateWithoutTime
  

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
  
  -- set kodeperusahaan,kodedivisi,kodedepartemen,kodejabatan,kodeoutsourcing,stpegawai sesuai jabatan lama yang paling baru
  select
       @Old_TglKeluar=TglKeluar,
	   @Old_TglMasuk=TglMasuk,
	   @Old_PegawaiId=PegawaiId	
  from deleted

  select
       @New_TglKeluar=TglKeluar,
	   @New_TglMasuk=TglMasuk,
	   @New_PegawaiId=PegawaiId,	
	   @New_KodeDivisi=KodeDivisi,
	   @New_KodeDepartemen=KodeDepartemen,
	   @New_KodeJabatan=KodeJabatan,
	   @New_KodeStatus=KodeStatus,
	   @New_KodeOutsourcing=KodeOutsourcing,
	   @New_KodePerusahaan=KodePerusahaan
  from inserted

   if (@OnUpdate = 1)
   begin  

     if @Old_tglkeluar<>@New_tglkeluar
     begin
	   -- hapus semua data di scheduling tang lebih besar dati tanggal keluar
       if exists(select * from scheduling where tglschedule>@New_tglkeluar and pegawaiid=@New_pegawaiid)
       begin
         if (@@TRANCOUNT = 1) 
            ROLLBACK TRANSACTION
         Raiserror ('%s',16,1,'^Ada Scheduling Setelah Tgl Keluar Tolong dihapus dulu !!! ')
         Return
       end
     end

     if @Old_TglKeluar<>@New_TglKeluar
	 begin
     -- hapus semua data di scheduling tang lebih besar dati tanggal keluar
        delete from scheduling where TglSchedule>@Old_tglkeluar and pegawaiid=@New_PegawaiId;
     end

	 if @Old_TglMasuk<>@New_TglMasuk
	 begin
       select @noreglama = dbo.fnMutasi2(@Old_TglMasuk,@Old_PegawaiId)

       select @NoregBaru = dbo.fnGetId('MUTASI BARU',@New_TglMasuk,'')

       insert into mutasi (noreg,pegawaiid,tglmulai,tglmutasi,kodedivisi,kodedepartemen,kodejabatan,kodestatus,kodeoutsourcing,kodeperusahaan,keterangan,statusapprove,counterprint)  
       values (@noregBaru,@New_PegawaiId,@New_TglMasuk,@New_TglMasuk,@New_KodeDivisi,@New_KodeDepartemen,@New_KodeJabatan,@New_KodeStatus,@New_KodeOutsourcing,@New_KodePerusahaan,' ','1',0);
       
       delete from mutasi where noreg=@noreglama;

       exec dbo.spsetid 'MUTASI BARU',@New_TglMasuk,''

     end
   end
 
   if (@OnInsert = 1)
   begin 
 
     select @NoregBaru = dbo.fnGetId('MUTASI BARU',@New_TglMasuk,'')

     insert into mutasi (noreg,pegawaiid,tglmulai,tglmutasi,kodedivisi,kodedepartemen,kodejabatan,kodestatus,kodeoutsourcing,kodeperusahaan,keterangan,statusapprove,counterprint) 
     values (@noregBaru,@New_pegawaiid,@New_tglmasuk,@New_tglmasuk,@New_kodedivisi,@New_kodedepartemen,@New_kodejabatan,@New_kodestatus,@New_kodeoutsourcing,@New_kodeperusahaan,'','1',0);

     insert into pegawaiapproval(pegawaiid,flagbolehlongshift,flagvalidasilongshift,flagapprovelongshift,flagbolehterlambat,flagvalidasiterlambat,flagapproveterlambat,
     flagbolehpulangawal,flagvalidasipulangawal,flagapprovepulangawal,flagbolehmasukkaloalpha,flagvalidasimasukkaloalpha,flagapprovemasukkaloalpha,flagbolehmasuktdkabsenplg,
     flagvalidasimasuktdkabsenplg,flagapprovemasuktdkabsenplg)      
     values (@New_pegawaiid,'1','1','0','1','1','0','1','1','0','1','1','0','1','1','0')

     exec dbo.spsetid 'MUTASI BARU',@New_TglMasuk,''

   end
end
go


create trigger TR_Scheduling_After on Scheduling for
  insert,update,delete as
begin
declare
    @noreg varchar,
    @Tgl integer,
    @KodeAbsen character varying(5),
	@tglstr DateWithoutTime,
	@time DateWithoutTime,
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
	@New_tglschedule DateWithoutTime,
	@New_PegawaiId int,
	@New_FlagLongShift char,
	@New_Shift varchar(2),

    @Old_TglSchedule DateWithoutTime,
	@Old_PegawaiId int,
    @Old_flaglongShift char,
	@Old_Shift varchar(2), 
    @Old_KodeGroupShiftId varchar(2)
  

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
  
  -- set kodeperusahaan,kodedivisi,kodedepartemen,kodejabatan,kodeoutsourcing,stpegawai sesuai jabatan lama yang paling baru

   if (@OnDelete = 1) or (@OnUpdate = 1)
   begin  
     select
		@Old_TglSchedule = TglSchedule,
		@Old_PegawaiId = PegawaiId,
		@Old_flaglongShift = FlagLongShift,
		@Old_Shift = Shift,
		@Old_KodeGroupShiftId = KodeGroupShiftId
     from deleted

     if (@OnDelete = 1)
     begin   
       select
		@Old_tglschedule = TglSchedule,	
		@Old_KodeGroupShiftId = KodeGroupShiftId,
		@Old_Shift = Shift,
		@Old_pegawaiid = PegawaiId
       from inserted
     end

     if exists(select pegawaiid from absen where tgl=@Old_tglschedule and KodeGroupShiftId=@Old_KodeGroupShiftId and Shift=@Old_Shift and pegawaiid=@Old_pegawaiid)
     begin
	   if (@@TRANCOUNT = 1) 
		   ROLLBACK TRANSACTION	
       RAISERROR('%s',16,1,'^Perubahan tidak dapat dilakukan, karena pegawai masuk pada tgl tersebut ! Hapus Dulu Absen !')
	   return
     end


	 select @tgl=day(@Old_TglSchedule)
     select top 1 @noreg = noreg 
     from mutasi where tglmulai<=@Old_tglschedule and pegawaiid=@Old_pegawaiid
     order by tglmulai desc 
 
     delete from absen where pegawaiid=@Old_pegawaiid and tgl=@Old_tglschedule
       
     if @Old_flaglongShift='1'
     begin
        set @tglstr=cast(@tgl as character varying)
		set @time=Dbo.fnFirstDate(@Old_tglschedule)
        execute ('update absenbulan set l'+@tglstr+'=replace(isvarcharnull(l'+@tglstr+',''''),'''+@Old_Shift+''','''') where pegawaiid='''+@Old_pegawaiid+''' and bulan='''+@time+''' and noreg='''+@noreg+'''')
     end
     else
        execute ('update absenbulan set s'+@tglstr+'=replace(isvarcharnull(s'+@tglstr+',''''),'''+@Old_Shift+''','''') where pegawaiid='''+@Old_pegawaiid+''' and bulan='''+@time+''' and noreg='''+@noreg+'''')
     
     execute ('update absenbulan set g'+@tglstr+'=replace(isvarcharnull(g'+@tglstr+',''''),'''+@Old_KodeGroupShiftId+''','''') where pegawaiid='''+@Old_pegawaiid+''' and bulan='''+@time+''' and noreg='''+@noreg+'''') 

     
   end
 
   if (@OnInsert = 1) or (@OnUpdate = 1)
   begin 
     select
		@New_tglschedule = TglSchedule,
		@New_PegawaiId = PegawaiId,
		@New_FlagLongShift = FlagLongShift,	
		@New_Shift = Shift
     from inserted
     
	 -- cari noreg waktu itu
     select @tgl=day(@New_tglschedule);
   
     select top 1 @noreg = noreg 
     from mutasi where tglmulai<=@New_tglschedule and pegawaiid=@New_pegawaiid
     order by tglmulai desc ;
    
     if (isnull(@noreg,'')='')
     begin
       if (@@TRANCOUNT = 1) 
		   ROLLBACK TRANSACTION	
       RAISERROR('%s',16,1,'^Cek Mutasi Karyawan Apakah Karyawan sudah terdaftar belum !!!')
       return
     end
     set @time=Dbl.fnFirstDate(@New_tglschedule)
     if not(exists(select pegawaiid from absenbulan where pegawaiid=@New_pegawaiid and bulan=@time and noreg=@noreg)) 
        execute ('insert into absenbulan(pegawaiid,bulan,noreg) values('''+@New_pegawaiid+''','''+@time+''','''+@noreg+''')')
    
     set @tglstr=cast(@tgl as character varying)
     if @New_flaglongShift='1'
        execute ('update absenbulan set l'+@tglstr+'=isvarcharnull(l'+@tglstr+','''')+'''+@New_Shift+''' where pegawaiid='''+@New_pegawaiid+''' and bulan='''+@time+''' and noreg='''+@noreg+'''')
     else
        execute ('update absenbulan set s'+@tglstr+'=isvarcharnull(s'+@tglstr+','''')+'''+@New_Shift+''' where pegawaiid='''+@New_pegawaiid+''' and bulan='''+@time+''' and noreg='''+@noreg+'''')

    
   end
end
go


create trigger TR_TransaksiAbsen_After on TransaksiAbsen For
 insert, update, delete  as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

	@New_NOTRANSAKSIABSEN varchar(15)  ,
	@New_PEGAWAIID ItemId  ,
	@New_KODEABSEN varchar(2)  ,
	@New_DARITGL DateWithoutTime  ,
	@New_SAMPAITGL DateWithoutTime  ,
	@New_LAMA QuantityPlus  ,
	@New_KETERANGAN varchar(50) ,
	@New_COUNTERPRINT QuantityPlus  ,
	@New_STATUSAPPROVE Status  ,
	@New_EMPLOYEEID varchar(10) ,

	@Old_NOTRANSAKSIABSEN varchar(15)  ,
	@Old_PEGAWAIID ItemId  ,
	@Old_KODEABSEN varchar(2)  ,
	@Old_DARITGL DateWithoutTime  ,
	@Old_SAMPAITGL DateWithoutTime  ,
	@Old_LAMA QuantityPlus  ,
	@Old_KETERANGAN varchar(50) ,
	@Old_COUNTERPRINT QuantityPlus  ,
	@Old_STATUSAPPROVE Status  ,
	@Old_EMPLOYEEID varchar(10) ,

    @Tgl integer,
    @noreg varchar(15),
    @notransaksiabsen varchar(15),
    @KodeGroupShiftId varchar(100),
    @DefaultKodeAbsenHadir varchar(100),
    @Keterangan varchar(100),
	@Shift varchar(100),
	@KodeAbsen varchar(5),
	@i datewithouttime,
	@SampaiTgl datewithouttime
	
	

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

  select @DefaultKodeAbsenHadir =  setupvalue 
  from setup 
  where setupid='OPT04';


  if (@OnDelete=1)
   begin

	 select 
      @Old_StatusApprove = statusapprove,
      @Old_daritgl = daritgl,
      @Old_sampaitgl = sampaitgl,
      @Old_pegawaiid = pegawaiid
     from deleted

     if @Old_statusapprove='1'
      begin
       set @i = @Old_daritgl
       set @SampaiTgl = @Old_sampaitgl
       while (@i<=@SampaiTgl)
        begin
         set @tgl=day(@i)
         select top 1 @noreg = noreg 
         from mutasi where tglmulai<=@i and pegawaiid=@Old_pegawaiid
         order by tglmulai desc; 
         -- sementara kodeabsen yang lama diisi dulu dengan A (tidak boleh, kalau memang dihapus data absen yang sudah ada dirubah jadi default Hadir karena jam masuk dan keluarnya penting)
         -- AKodeAbsen='A';
         --a.execute 'update absenbulan set t'||trim(cast(Atgl as character varying))||'='''||AKodeAbsen||''' where pegawaiid='''||old.pegawaiid||''' and bulan='''||date_trunc('month',i)||''' and noreg='''||Anoreg||''' and t'||trim(cast(Atgl as character varying))||'=''''';
         --b.update absenrekapbulan set jumkodeabsen=iscurrencynull(jumkodeabsen,0)-1
         --c.where periode=date_trunc('month',i) and pegawaiid=old.pegawaiid and noreg=Anoreg and kodeabsen=AKodeabsen;
         update absen set kodeabsen=@DefaultKodeAbsenHadir 
         where pegawaiid=@Old_pegawaiid and tgl=@i ; 
         -- hanya perlu di update tidak perlu di hapus karena kalau memang masuk tanggal tersebut jam masuk dan keluarnya diperlukan !!!
         -- delete from absen where pegawaiid=old.pegawaiid and tgl=i ;
         set @i=@i+1;
        end
      end

   end

  if (@OnInsert=1) or (@OnUpdate=1)
   begin
     
	 select
       @New_pegawaiid = pegawaiid,
       @New_kodeabsen = kodeabsen,
       @New_keterangan = keterangan,
       @New_daritgl = daritgl,
       @New_sampaitgl = sampaitgl,
       @New_statusapprove = statusapprove
     from inserted

	select
      @New_Pegawaiid = pegawaiid,
      @New_Notransaksiabsen = notransaksiabsen,
      @New_daritgl = daritgl,
      @New_sampaitgl = sampaitgl
	from inserted

    select @Notransaksiabsen = max(notransaksiabsen) 
     from transaksiabsen 
     where pegawaiid=@New_pegawaiid and notransaksiabsen<>@New_notransaksiabsen 
     and ((daritgl between @New_daritgl and @New_sampaitgl) 
     or (sampaitgl between @New_daritgl and @New_sampaitgl)
     or (@New_daritgl between daritgl and sampaitgl)
     );
     
     if not(isnull(@Notransaksiabsen,'')='')
     begin
	   if (@@TRANCOUNT = 1) 
	      ROLLBACK TRANSACTION	
          RAISERROR('^Data tanggal absen bersilangan dengan nomor transaksi absen  ! % ^',16,1,@Notransaksiabsen) 
          return
     end

     set @KodeAbsen = @New_kodeabsen
     set @i = @New_daritgl
     set @SampaiTgl = @New_sampaitgl
     while (@i<=@SampaiTgl)
      begin
       set @tgl=day(@i)
       if not(exists(select tgl from libur where tgl=@i))
        begin
          if exists(select pegawaiid from pegawai where statusschedule='1' and pegawaiid=@New_pegawaiid)
             select @KodeGroupShiftId = KodeGroupShiftId, @Shift = Shift 
             from scheduling 
             where pegawaiid=@New_pegawaiid and tglschedule=@i and flaglongShift='0';
          else
             select @KodeGroupShiftId = KodeGroupShiftId, @Shift = Shift 
             from pegawai where pegawaiid=@New_pegawaiid;

          if (isnull(@KodeGroupShiftId,'')='') or (isnull(@Shift,'')='')
          begin
	        if (@@TRANCOUNT = 1) 
	           ROLLBACK TRANSACTION	
           RAISERROR('^Data Tidak dapat diproses karena ada data schedule atau Shift yang belum lengkap !',16,1,'') 
           return 
          end
        end
       set @i= @i+1
      end


     if @New_statusapprove='1'
      begin
        -- kalau statusnya approve
        set @KodeAbsen = @New_kodeabsen
        set @Keterangan = @New_keterangan
		set @i = @New_daritgl
        set @SampaiTgl = @New_sampaitgl
        while (@i<=@SampaiTgl)
         begin
          set @tgl=day(@i)
          if not(exists(select tgl from libur where tgl=@i))
           begin

             select top 1 @noreg = noreg 
             from mutasi where tglmulai<=@i and pegawaiid=@New_pegawaiid
             order by tglmulai desc; 

             if exists(select pegawaiid from pegawai where statusschedule='1' and pegawaiid=@New_pegawaiid)
               select @KodeGroupShiftid = KodeGroupShiftId, @Shift = Shift from scheduling where pegawaiid=@New_pegawaiid and tglschedule=@i and flaglongShift='0';
             else
               select @KodeGroupShiftId = KodeGroupShiftId, @Shift = Shift from pegawai where pegawaiid=@New_pegawaiid;

     
             if (not(exists(select pegawaiid from absen where tgl=@i and pegawaiid=@New_pegawaiid)))
                -- masukkan di absen kalau memang belum di absenkan
                insert into absen(tgl,pegawaiid,KodeGroupShiftId,Shift,noreg,kodeabsen,keterangan) values (@i,@New_pegawaiid,@KodeGroupShiftId,@Shift,@noreg,@KodeAbsen,@Keterangan);
             
             -- ubah kodeabsen di absen manual sesuai dengan transaksi absen jika absen sudah dimasukkan
              update absen 
             set kodeabsen=@KodeAbsen,keterangan=@keterangan 
             where pegawaiid=@New_pegawaiid and tgl=@i; 
             -- masukkan di absenbulan kalau memang belum ada ??? kan seharusnya di trigger di absen bulan sudah melakukan ini ???
   		     --(a,b,c,d,e,f,g,h,i,j) tidak perlu dilakukan karena sudah dimasukkan pada saat merubah absen
			 --a.if (not(exists(select pegawaiid from absenbulan where bulan=date_trunc('month',i) and pegawaiid=new.pegawaiid and noreg=Anoreg))) then
             --b.   insert into absenbulan(bulan,pegawaiid,noreg) values (date_trunc('month',i),new.pegawaiid,Anoreg);
             --c.end if;
             --d.execute 'update absenbulan set t'||trim(cast(Atgl as character varying))||'='''||AkodeAbsen||''' where pegawaiid='''||new.pegawaiid||''' and bulan='''||date_trunc('month',i)||''' and noreg='''||Anoreg||'''';
             --e.if (exists(select pegawaiid from absenrekapbulan where periode=date_trunc('month',i) and pegawaiid=new.pegawaiid and noreg=Anoreg and kodeabsen=AkodeAbsen)) then
             --f.   update absenrekapbulan set jumkodeabsen=iscurrencynull(jumkodeabsen,0)+1
             --g.   where periode=date_trunc('month',i) and pegawaiid=new.pegawaiid and noreg=Anoreg and kodeabsen=AkodeAbsen;
             --h.else
             --i.   insert into absenrekapbulan(periode,pegawaiid,kodeabsen,jumkodeabsen,noreg) values (date_trunc('month',i),new.pegawaiid,AKodeAbsen,1,Anoreg);
             --j.end if;    
           end
          set @i=@i+1;
         end
      end
     else
      begin
        -- kalau statusnya batal
        set @i = @New_daritgl
        set @SampaiTgl = @New_sampaitgl
        while (@i<=@SampaiTgl)
         begin
          set @tgl=day(@i)
          select top 1 @noreg = noreg 
          from mutasi where tglmulai<=@i and pegawaiid=@New_pegawaiid
          order by tglmulai desc; 
          -- sementara kodeabsen yang lama diisi dulu dengan A
          set @KodeAbsen='A';
          update absen 
          set kodeabsen=@DefaultKodeAbsenHadir 
          where pegawaiid=@New_pegawaiid and tgl=@i;

          --a.execute 'update absenbulan set t'||trim(cast(Atgl as character varying))||'='''||AKodeAbsen||''' where pegawaiid='''||new.pegawaiid||''' and bulan='''||date_trunc('month',i)||''' and noreg='''||Anoreg||''' and t'||trim(cast(Atgl as character varying))||'=''''';
          --b.update absenrekapbulan set jumkodeabsen=iscurrencynull(jumkodeabsen,0)-1
          --c.where periode=date_trunc('month',i) and pegawaiid=new.pegawaiid and noreg=Anoreg and kodeabsen=AKodeabsen;
          --d.delete from absen where pegawaiid=new.pegawaiid and tgl=i ;
          set @i=@i+1
         end
      end 


   end

end
go


create trigger TR_TransaksiPayrollHd_Before on TransaksiPayrollHd instead of
  insert, update as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,

	@New_NOPAYROLL varchar(10) ,
	@New_TGLPAYROLL DateWithoutTime ,
	@New_PEGAWAIID ItemId ,
	@New_KODEGROUPGAJI varchar(2) ,
	@New_KODEGROUPSHIFTID varchar(2) ,
	@New_SHIFT varchar(2) ,
	@New_TOTAL CurrencyPlus ,
	@New_COUNTERPRINT QuantityPlus ,
	@New_STATUSAPPROVE Status ,
	@New_STATUS Status ,
	@New_EMPLOYEEID ItemId ,

	@Old_NOPAYROLL varchar(10) ,
	@Old_TGLPAYROLL DateWithoutTime ,
	@Old_PEGAWAIID ItemId ,
	@Old_KODEGROUPGAJI varchar(2) ,
	@Old_KODEGROUPSHIFTID varchar(2) ,
	@Old_SHIFT varchar(2) ,
	@Old_TOTAL CurrencyPlus ,
	@Old_COUNTERPRINT QuantityPlus ,
	@Old_STATUSAPPROVE Status ,
	@Old_STATUS Status ,
	@Old_EMPLOYEEID ItemId ,
	
	@Tgl integer

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

  if (@OnUpdate=1) or (@OnInsert=1) 
   begin		
 
     select
      @New_nopayroll = nopayroll
     from inserted
     -- update amount di transaksipayroll
     if (isnull(@New_nopayroll,'')='')
       set @New_nopayroll = (select dbo.fnGetTransactionId('transaksipayrollhd', 'nopayroll', 'P', 9, @New_tglpayroll))

   end

 If (@OnInsert=1)
  begin
	select
		@New_NOPAYROLL = nopayroll,
		@New_TGLPAYROLL = tglpayroll ,
		@New_PEGAWAIID = pegawaiid,
		@New_KODEGROUPGAJI = kodegroupgaji ,
		@New_KODEGROUPSHIFTID = kodegroupshiftid,
		@New_SHIFT = shift,
		@New_TOTAL = total ,
		@New_COUNTERPRINT = counterprint ,
		@New_STATUSAPPROVE = statusapprove ,
		@New_STATUS = status ,
		@New_EMPLOYEEID = employeeid
	from inserted

	insert into transaksipayrollhd(nopayroll, tglpayroll, pegawaiid,
           kodegroupgaji, kodegroupshiftid, shift, total, counterprint,
           statusapprove, status, employeeid) values ( @New_nopayroll,
           @New_tglpayroll, @New_pegawaiid, @New_kodegroupgaji, 
           @New_kodegroupshiftid, @New_shift, @New_total, @New_counterprint, 
           @New_statusapprove, @New_status, @New_employeeid)

  end

 if (@OnUpdate=1)
  begin

	select
		@New_NOPAYROLL = nopayroll,
		@New_TGLPAYROLL = tglpayroll ,
		@New_PEGAWAIID = pegawaiid,
		@New_KODEGROUPGAJI = kodegroupgaji ,
		@New_KODEGROUPSHIFTID = kodegroupshiftid,
		@New_SHIFT = shift,
		@New_TOTAL = total ,
		@New_COUNTERPRINT = counterprint ,
		@New_STATUSAPPROVE = statusapprove ,
		@New_STATUS = status ,
		@New_EMPLOYEEID = employeeid
	from inserted

	update transaksipayrollhd
    set
		tglpayroll = @New_TGLPAYROLL ,
		pegawaiid = @New_PEGAWAIID,
		kodegroupgaji = @New_KODEGROUPGAJI,
		kodegroupshiftid = @New_KODEGROUPSHIFTID,
		shift = @New_SHIFT,
		total = @New_TOTAL,
		counterprint = @New_COUNTERPRINT,
		statusapprove = @New_STATUSAPPROVE,
		status = @New_STATUS,
		employeeid = @New_EMPLOYEEID 
    where nopayroll = @New_nopayroll
   
  end


end
go

