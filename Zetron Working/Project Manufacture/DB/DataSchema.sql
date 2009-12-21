/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     16/09/2009 12:34:55 PM                       */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where id = object_id('TR_Item_After')
          and type = 'TR')
   drop trigger TR_Item_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_JournalDt_After')
          and type = 'TR')
   drop trigger TR_JournalDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_KayuMuatDt_D')
          and type = 'TR')
   drop trigger TR_KayuMuatDt_D
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_KayuMuatDt_IU')
          and type = 'TR')
   drop trigger TR_KayuMuatDt_IU
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_OtherTransactionDt_After')
          and type = 'TR')
   drop trigger TR_OtherTransactionDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_OtherTransactionHd_After')
          and type = 'TR')
   drop trigger TR_OtherTransactionHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PurchaseOrderDt_After')
          and type = 'TR')
   drop trigger TR_PurchaseOrderDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PurchaseOrderGroupQty_After')
          and type = 'TR')
   drop trigger TR_PurchaseOrderGroupQty_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PurchaseOrderHd_After')
          and type = 'TR')
   drop trigger TR_PurchaseOrderHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_PurchaseOrderSpec_After')
          and type = 'TR')
   drop trigger TR_PurchaseOrderSpec_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_ReceivingRecordDt_After')
          and type = 'TR')
   drop trigger TR_ReceivingRecordDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_ReceivingRecordHd_After')
          and type = 'TR')
   drop trigger TR_ReceivingRecordHd_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_SPKDt_After')
          and type = 'TR')
   drop trigger TR_SPKDt_After
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_TransactionRecord_After')
          and type = 'TR')
   drop trigger TR_TransactionRecord_After
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetClosingDate')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetClosingDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetTransactionBalance_QtyBalance_DateBefore')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetTransactionBalance_QtyBalance_DateBefore
go

if exists (select 1
          from sysobjects
          where  id = object_id('spInsertingCostingItem')
          and type in ('P','PC'))
   drop procedure spInsertingCostingItem
go

if exists (select 1
          from sysobjects
          where  id = object_id('spGetBOMRawMaterial')
          and type in ('P','PC'))
   drop procedure spGetBOMRawMaterial
go

if exists (select 1
          from sysobjects
          where  id = object_id('spGetSPKRawMaterial')
          and type in ('P','PC'))
   drop procedure spGetSPKRawMaterial
go

if exists (select 1
          from sysobjects
          where  id = object_id('spProcessClosingDate')
          and type in ('P','PC'))
   drop procedure spProcessClosingDate
go

if exists (select 1
          from sysobjects
          where  id = object_id('spProcessClosingBackward')
          and type in ('P','PC'))
   drop procedure spProcessClosingBackward
go

if exists (select 1
          from sysobjects
          where  id = object_id('spProcessClosingForward')
          and type in ('P','PC'))
   drop procedure spProcessClosingForward
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateGeneralLedgerValue')
          and type in ('P','PC'))
   drop procedure spUpdateGeneralLedgerValue
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateItemOrderBalance_QtyPOIn')
          and type in ('P','PC'))
   drop procedure spUpdateItemOrderBalance_QtyPOIn
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateItemOrderBalance_QtyPOOut')
          and type in ('P','PC'))
   drop procedure spUpdateItemOrderBalance_QtyPOOut
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateItemOrderBalance_QtySOIn')
          and type in ('P','PC'))
   drop procedure spUpdateItemOrderBalance_QtySOIn
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateItemOrderBalance_QtySOOut')
          and type in ('P','PC'))
   drop procedure spUpdateItemOrderBalance_QtySOOut
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateStockBalance_QtyIn')
          and type in ('P','PC'))
   drop procedure spUpdateStockBalance_QtyIn
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateStockBalance_QtyOut')
          and type in ('P','PC'))
   drop procedure spUpdateStockBalance_QtyOut
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateStockBalance_ValueIn')
          and type in ('P','PC'))
   drop procedure spUpdateStockBalance_ValueIn
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateStockBalance_ValueOut')
          and type in ('P','PC'))
   drop procedure spUpdateStockBalance_ValueOut
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialDt') and o.name = 'Data_BOM_dipakai_oleh_detailnya')
alter table BillMaterialDt
   drop constraint Data_BOM_dipakai_oleh_detailnya
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialDt') and o.name = 'Data_barang_dipakai_oleh_detail_BOM')
alter table BillMaterialDt
   drop constraint Data_barang_dipakai_oleh_detail_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_BOM')
alter table BillMaterialDt
   drop constraint Data_pegawai_dipakai_oleh_detail_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialHd') and o.name = 'Data_barang_dipakai_oleh_BOM')
alter table BillMaterialHd
   drop constraint Data_barang_dipakai_oleh_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BillMaterialHd') and o.name = 'Data_pegawai_dipakai_oleh_BOM')
alter table BillMaterialHd
   drop constraint Data_pegawai_dipakai_oleh_BOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ChartOfAccount') and o.name = 'Data_COA_dipakai_oleh_COA_detail')
alter table ChartOfAccount
   drop constraint Data_COA_dipakai_oleh_COA_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('City') and o.name = 'Data_propinsi_dipakai_oleh_kota')
alter table City
   drop constraint Data_propinsi_dipakai_oleh_kota
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingEstimate') and o.name = 'Data_costing_dipakai_oleh_perkiraan_costing')
alter table CostingEstimate
   drop constraint Data_costing_dipakai_oleh_perkiraan_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingEstimate') and o.name = 'Data_mata_uang_dipakai_oleh_perkiraan_costing')
alter table CostingEstimate
   drop constraint Data_mata_uang_dipakai_oleh_perkiraan_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingHd') and o.name = 'Data_BOM_dipakai_oleh_costing')
alter table CostingHd
   drop constraint Data_BOM_dipakai_oleh_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingHd') and o.name = 'Data_pegawai_dipakai_oleh_costing')
alter table CostingHd
   drop constraint Data_pegawai_dipakai_oleh_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingItem') and o.name = 'Data_barang_dipakai_oleh_costing')
alter table CostingItem
   drop constraint Data_barang_dipakai_oleh_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingItem') and o.name = 'Data_costing_detail_dipakai_oleh_costing')
alter table CostingItem
   drop constraint Data_costing_detail_dipakai_oleh_costing
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
   where r.fkeyid = object_id('CostingKurs') and o.name = 'Data_costing_dipakai_oleh_kurs_costing')
alter table CostingKurs
   drop constraint Data_costing_dipakai_oleh_kurs_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingKurs') and o.name = 'Data_mata_uang_dipakai_oleh_kurs_costing')
alter table CostingKurs
   drop constraint Data_mata_uang_dipakai_oleh_kurs_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingPrice') and o.name = 'Data_barang_dipakai_oleh_harga_costing')
alter table CostingPrice
   drop constraint Data_barang_dipakai_oleh_harga_costing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CostingPrice') and o.name = 'Data_mata_uang_dipakai_oleh_harga_costing')
alter table CostingPrice
   drop constraint Data_mata_uang_dipakai_oleh_harga_costing
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
   where r.fkeyid = object_id('CustomerShippingDetail') and o.name = 'Data_ekspedisi_dipakai_oleh_ekspedisi_customer')
alter table CustomerShippingDetail
   drop constraint Data_ekspedisi_dipakai_oleh_ekspedisi_customer
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
   where r.fkeyid = object_id('Engine') and o.name = 'Data_unit_produksi_dipakai_oleh_mesin')
alter table Engine
   drop constraint Data_unit_produksi_dipakai_oleh_mesin
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GeneralLedger') and o.name = 'Data_COA_dipakai_oleh_GL')
alter table GeneralLedger
   drop constraint Data_COA_dipakai_oleh_GL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultCuttingDt') and o.name = 'Data_barang_dipakai_oleh_hasil_grade_cutting')
alter table GradeResultCuttingDt
   drop constraint Data_barang_dipakai_oleh_hasil_grade_cutting
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultCuttingDt') and o.name = 'Data_hasil_grade_dipakai_oleh_hasil_grade_cutting')
alter table GradeResultCuttingDt
   drop constraint Data_hasil_grade_dipakai_oleh_hasil_grade_cutting
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultCuttingDt') and o.name = 'Data_tally_dipakai_oleh_hasil_grade_cutting')
alter table GradeResultCuttingDt
   drop constraint Data_tally_dipakai_oleh_hasil_grade_cutting
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_grader_dipakai_oleh_hasil_grade')
alter table GradeResultHd
   drop constraint Data_grader_dipakai_oleh_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_koordinator_grader_dipakai_oleh_hasil_grade')
alter table GradeResultHd
   drop constraint Data_koordinator_grader_dipakai_oleh_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_order_pembelian_dipakai_oleh_hasil_grade')
alter table GradeResultHd
   drop constraint Data_order_pembelian_dipakai_oleh_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_pegawai_yang_membuat_hasil_grade')
alter table GradeResultHd
   drop constraint Data_pegawai_yang_membuat_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultHd') and o.name = 'Data_tallyman_dipakai_oleh_hasil_grade')
alter table GradeResultHd
   drop constraint Data_tallyman_dipakai_oleh_hasil_grade
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultInvoiceDt') and o.name = 'Data_barang_dipakai_oleh_hasil_grade_invoice')
alter table GradeResultInvoiceDt
   drop constraint Data_barang_dipakai_oleh_hasil_grade_invoice
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultInvoiceDt') and o.name = 'Data_hasil_grade_dipakai_oleh_hasil_grade_invoice')
alter table GradeResultInvoiceDt
   drop constraint Data_hasil_grade_dipakai_oleh_hasil_grade_invoice
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GradeResultInvoiceDt') and o.name = 'Data_tally_hasil_grade_dipakai_oleh_hasil_grade_invoice')
alter table GradeResultInvoiceDt
   drop constraint Data_tally_hasil_grade_dipakai_oleh_hasil_grade_invoice
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'Data_kategori_barang_dipakai_oleh_barang')
alter table Item
   drop constraint Data_kategori_barang_dipakai_oleh_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'Data_material_dipakai_oleh_master_barang')
alter table Item
   drop constraint Data_material_dipakai_oleh_master_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'Data_pegawai_dipakai_oleh_master_barang')
alter table Item
   drop constraint Data_pegawai_dipakai_oleh_master_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemDt') and o.name = 'Data_detail_barang_dipakai_oleh_barang')
alter table ItemDt
   drop constraint Data_detail_barang_dipakai_oleh_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemMinStock') and o.name = 'Data_barang_dipakai_oleh_stok_minimum_barang')
alter table ItemMinStock
   drop constraint Data_barang_dipakai_oleh_stok_minimum_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemMinStock') and o.name = 'Data_gudang_dipakai_oleh_minimum_stok_barang')
alter table ItemMinStock
   drop constraint Data_gudang_dipakai_oleh_minimum_stok_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemMinStock') and o.name = 'Data_pegawai_dipakai_oleh_minimum_stok_barang')
alter table ItemMinStock
   drop constraint Data_pegawai_dipakai_oleh_minimum_stok_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemOrderBalance') and o.name = 'Data_barang_dipakai_oleh_order_barang')
alter table ItemOrderBalance
   drop constraint Data_barang_dipakai_oleh_order_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JobPosition') and o.name = 'Data_departemen_dipakai_oleh_posisi_pekerjaan')
alter table JobPosition
   drop constraint Data_departemen_dipakai_oleh_posisi_pekerjaan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JournalDt') and o.name = 'Data_COA_dipakai_oleh_journal')
alter table JournalDt
   drop constraint Data_COA_dipakai_oleh_journal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JournalDt') and o.name = 'Data_journal_dipakai_oleh_journal_detail')
alter table JournalDt
   drop constraint Data_journal_dipakai_oleh_journal_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JournalHd') and o.name = 'Data_pegawai_dipakai_oleh_journal')
alter table JournalHd
   drop constraint Data_pegawai_dipakai_oleh_journal
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatDt') and o.name = 'Data_kayu_muat_dipakai_oleh_kayu_muat_detail')
alter table KayuMuatDt
   drop constraint Data_kayu_muat_dipakai_oleh_kayu_muat_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatDt') and o.name = 'Data_tally_hasil_grade_dipakai_oleh_kayu_muat')
alter table KayuMuatDt
   drop constraint Data_tally_hasil_grade_dipakai_oleh_kayu_muat
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatHd') and o.name = 'Data_order_pembelian_dipakai_oleh_kayu_muat')
alter table KayuMuatHd
   drop constraint Data_order_pembelian_dipakai_oleh_kayu_muat
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatHd') and o.name = 'Data_pegawai_dipakai_oleh_kayu_muat')
alter table KayuMuatHd
   drop constraint Data_pegawai_dipakai_oleh_kayu_muat
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KayuMuatHd') and o.name = 'Reference_36')
alter table KayuMuatHd
   drop constraint Reference_36
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LogProgram') and o.name = 'Data_tipe_log_dipakai_oleh_log_program')
alter table LogProgram
   drop constraint Data_tipe_log_dipakai_oleh_log_program
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiDt') and o.name = 'Data_item_dipakai_oleh_detail_mutasi')
alter table MutasiDt
   drop constraint Data_item_dipakai_oleh_detail_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiDt') and o.name = 'Data_mutasi_dipakai_oleh_mutasi_detail')
alter table MutasiDt
   drop constraint Data_mutasi_dipakai_oleh_mutasi_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiDt') and o.name = 'Data_tally_dipakai_oleh_mutasi')
alter table MutasiDt
   drop constraint Data_tally_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_gudang_dipakai_oleh_gudang_asal_mutasi')
alter table MutasiHd
   drop constraint Data_gudang_dipakai_oleh_gudang_asal_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_gudang_dipakai_oleh_mutasi')
alter table MutasiHd
   drop constraint Data_gudang_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_pegawai_dipakai_oleh_mutasi')
alter table MutasiHd
   drop constraint Data_pegawai_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiHd') and o.name = 'Data_tipe_transaksi_dipakai_oleh_mutasi')
alter table MutasiHd
   drop constraint Data_tipe_transaksi_dipakai_oleh_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiSJ') and o.name = 'Data_mutasi_dipakai_oleh_surat_jalan_mutasi')
alter table MutasiSJ
   drop constraint Data_mutasi_dipakai_oleh_surat_jalan_mutasi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MutasiStorageHd') and o.name = 'Reference_21')
alter table MutasiStorageHd
   drop constraint Reference_21
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionDt') and o.name = 'Data_Item_dipakai_oleh_detail_transaksi_lain')
alter table OtherTransactionDt
   drop constraint Data_Item_dipakai_oleh_detail_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionDt') and o.name = 'Data_pegawai_di_pakai_oleh_detail_transaksi_lain')
alter table OtherTransactionDt
   drop constraint Data_pegawai_di_pakai_oleh_detail_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionDt') and o.name = 'Data_transaksi_lain_dipakai_oleh_detail_transaksi_lain')
alter table OtherTransactionDt
   drop constraint Data_transaksi_lain_dipakai_oleh_detail_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionHd') and o.name = 'Data_gudang_dipakai_oleh_transaksi_lain')
alter table OtherTransactionHd
   drop constraint Data_gudang_dipakai_oleh_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionHd') and o.name = 'Data_pegawai_dipakai_oleh_transaksi_lain')
alter table OtherTransactionHd
   drop constraint Data_pegawai_dipakai_oleh_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OtherTransactionHd') and o.name = 'Data_tipe_transaksi_dipakai_oleh_transaksi_lain')
alter table OtherTransactionHd
   drop constraint Data_tipe_transaksi_dipakai_oleh_transaksi_lain
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PositionAccess') and o.name = 'Data_position_pekerjaan_dipakai_oleh_security_program')
alter table PositionAccess
   drop constraint Data_position_pekerjaan_dipakai_oleh_security_program
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionHd') and o.name = 'Data_SPK_dipakai_oleh_produksi')
alter table ProductionHd
   drop constraint Data_SPK_dipakai_oleh_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionHd') and o.name = 'Data_pegawai_dipakai_oleh_produksi')
alter table ProductionHd
   drop constraint Data_pegawai_dipakai_oleh_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionHd') and o.name = 'Data_unit_produksi_dipakai_oleh_produksi')
alter table ProductionHd
   drop constraint Data_unit_produksi_dipakai_oleh_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionIn') and o.name = 'Data_gudang_dipakai_oleh_input_produksi')
alter table ProductionIn
   drop constraint Data_gudang_dipakai_oleh_input_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionIn') and o.name = 'Data_produksi_dipakai_oleh_detail_produksi')
alter table ProductionIn
   drop constraint Data_produksi_dipakai_oleh_detail_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionIn') and o.name = 'Data_tally_dipakai_oleh_input_unit_produksi')
alter table ProductionIn
   drop constraint Data_tally_dipakai_oleh_input_unit_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionMiss') and o.name = 'Reference_24')
alter table ProductionMiss
   drop constraint Reference_24
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionMiss') and o.name = 'Reference_35')
alter table ProductionMiss
   drop constraint Reference_35
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionOut') and o.name = 'Data_produksi_dipakai_oleh_output_produksi')
alter table ProductionOut
   drop constraint Data_produksi_dipakai_oleh_output_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionOut') and o.name = 'Data_tally_dipakai_oleh_output_produksi')
alter table ProductionOut
   drop constraint Data_tally_dipakai_oleh_output_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionRejected') and o.name = 'Data_produksi_dipakai_oleh_afkir_produksi')
alter table ProductionRejected
   drop constraint Data_produksi_dipakai_oleh_afkir_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionRejected') and o.name = 'Data_tally_dipakai_oleh_afkir_produksi')
alter table ProductionRejected
   drop constraint Data_tally_dipakai_oleh_afkir_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionUnit') and o.name = 'Data_gudang_dipakai_oleh_unit_produksi_gudang_input')
alter table ProductionUnit
   drop constraint Data_gudang_dipakai_oleh_unit_produksi_gudang_input
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionUnit') and o.name = 'Data_gudang_dipakai_oleh_unit_produksi_gudang_output')
alter table ProductionUnit
   drop constraint Data_gudang_dipakai_oleh_unit_produksi_gudang_output
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionWaste') and o.name = 'Data_produksi_dipakai_oleh_sisa_produksi')
alter table ProductionWaste
   drop constraint Data_produksi_dipakai_oleh_sisa_produksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProductionWaste') and o.name = 'Reference_34')
alter table ProductionWaste
   drop constraint Reference_34
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Province') and o.name = 'Data_negara_dipakai_oleh_propinsi')
alter table Province
   drop constraint Data_negara_dipakai_oleh_propinsi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceDt') and o.name = 'Data_barang_dipakai_oleh_nota_pembelian_detail')
alter table PurchaseInvoiceDt
   drop constraint Data_barang_dipakai_oleh_nota_pembelian_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceDt') and o.name = 'Data_nota_pembelian_dipakai_oleh_nota_pembelian_detail')
alter table PurchaseInvoiceDt
   drop constraint Data_nota_pembelian_dipakai_oleh_nota_pembelian_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceDt') and o.name = 'Data_pegawai_dipakai_oleh_nota_pembelian_detail')
alter table PurchaseInvoiceDt
   drop constraint Data_pegawai_dipakai_oleh_nota_pembelian_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_contact_person_supplier_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_contact_person_supplier_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_ekspedisi_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_ekspedisi_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_gudang_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_gudang_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_kategori_nota_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_kategori_nota_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_mata_uang_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_mata_uang_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_order_pembelian_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_order_pembelian_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_outlet_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_outlet_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_pegawai_dipakai_oleh_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_pegawai_dipakai_oleh_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_penerimaan_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_penerimaan_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_proyek_dipakai_oleh_nota_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_proyek_dipakai_oleh_nota_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseInvoiceHd') and o.name = 'Data_supplier_dipakai_oleh_pembelian')
alter table PurchaseInvoiceHd
   drop constraint Data_supplier_dipakai_oleh_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_barang_dipakai_oleh_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_barang_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_group_order_pembelian_dipakai_oleh_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_group_order_pembelian_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_order_pembelian_dipakai_oleh_detail_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_order_pembelian_dipakai_oleh_detail_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_pegawai_dipakai_oleh_detail_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderDt') and o.name = 'Data_spesifikasi_order_pembelian_dipakai_oleh_order_pembelian')
alter table PurchaseOrderDt
   drop constraint Data_spesifikasi_order_pembelian_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderGroupQty') and o.name = 'Data_order_pembelian_dipakai_oleh_group_order_pembelian')
alter table PurchaseOrderGroupQty
   drop constraint Data_order_pembelian_dipakai_oleh_group_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_contact_person_supplier_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_contact_person_supplier_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_mata_uang_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_mata_uang_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_material_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_material_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_outlet_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_outlet_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_pegawai_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_pegawai_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_proyek_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_proyek_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderHd') and o.name = 'Data_supplier_dipakai_oleh_order_pembelian')
alter table PurchaseOrderHd
   drop constraint Data_supplier_dipakai_oleh_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchaseOrderSpec') and o.name = 'Data_order_pembelian_dipakai_oleh_spesifikasi_order_pembelian')
alter table PurchaseOrderSpec
   drop constraint Data_order_pembelian_dipakai_oleh_spesifikasi_order_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchasePrice') and o.name = 'Data_barang_dipakai_oleh_harga_beli_per_barang')
alter table PurchasePrice
   drop constraint Data_barang_dipakai_oleh_harga_beli_per_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchasePrice') and o.name = 'Data_harga_beli_dipakai_oleh_vendor')
alter table PurchasePrice
   drop constraint Data_harga_beli_dipakai_oleh_vendor
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PurchasePriceList') and o.name = 'Data_barang_dipakai_oleh_price_list_pembelian')
alter table PurchasePriceList
   drop constraint Data_barang_dipakai_oleh_price_list_pembelian
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordDt') and o.name = 'Data_barang_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordDt
   drop constraint Data_barang_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordDt') and o.name = 'Data_peneriamaan_barang_dipakai_oleh_penerimaan_barang_detail')
alter table ReceivingRecordDt
   drop constraint Data_peneriamaan_barang_dipakai_oleh_penerimaan_barang_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_gudang_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_gudang_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_kayu_muat_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_kayu_muat_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_order_pembelian_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_order_pembelian_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_pegawai_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_pegawai_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_supplier_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_supplier_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordHd') and o.name = 'Data_tallyman_dipakai_oleh_penerimaan_barang')
alter table ReceivingRecordHd
   drop constraint Data_tallyman_dipakai_oleh_penerimaan_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReceivingRecordSJ') and o.name = 'Data_penerimaan_barang_dipakai_oleh_surat_jalan')
alter table ReceivingRecordSJ
   drop constraint Data_penerimaan_barang_dipakai_oleh_surat_jalan
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
   where r.fkeyid = object_id('RoughSize') and o.name = 'Data_material_dipakai_oleh_master_rough_size')
alter table RoughSize
   drop constraint Data_material_dipakai_oleh_master_rough_size
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
   where r.fkeyid = object_id('SBTB') and o.name = 'Data_mutasi_dipakai_oleh_SBTB')
alter table SBTB
   drop constraint Data_mutasi_dipakai_oleh_SBTB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SBTBDt') and o.name = 'Data_SBTB_dipakai_oleh_SBTB_detail')
alter table SBTBDt
   drop constraint Data_SBTB_dipakai_oleh_SBTB_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SBTBDt') and o.name = 'Data_tally_dipakai_oleh_SBTB_detail')
alter table SBTBDt
   drop constraint Data_tally_dipakai_oleh_SBTB_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKDt') and o.name = 'Data_BOM_dipakai_oleh_detail_SPK')
alter table SPKDt
   drop constraint Data_BOM_dipakai_oleh_detail_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKDt') and o.name = 'Data_SPK_dipakai_oleh_SPK_detail')
alter table SPKDt
   drop constraint Data_SPK_dipakai_oleh_SPK_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKDt') and o.name = 'Data_pegawai_dipakai_oleh_SPK_detail')
alter table SPKDt
   drop constraint Data_pegawai_dipakai_oleh_SPK_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKHd') and o.name = 'Data_order_penjualan_dipakai_oleh_SPK')
alter table SPKHd
   drop constraint Data_order_penjualan_dipakai_oleh_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKHd') and o.name = 'Data_pegawai_dipakai_oleh_SPK')
alter table SPKHd
   drop constraint Data_pegawai_dipakai_oleh_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKItem') and o.name = 'Data_barang_dipakai_oleh_SPK')
alter table SPKItem
   drop constraint Data_barang_dipakai_oleh_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKItem') and o.name = 'Data_barang_jadi_SPK_dipakai_oleh_bahan_baku_SPK')
alter table SPKItem
   drop constraint Data_barang_jadi_SPK_dipakai_oleh_bahan_baku_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKRendemen') and o.name = 'Data_SPK_dipakai_oleh_rendemen_SPK')
alter table SPKRendemen
   drop constraint Data_SPK_dipakai_oleh_rendemen_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKRendemen') and o.name = 'Data_material_dipakai_oleh_rendemen_SPK')
alter table SPKRendemen
   drop constraint Data_material_dipakai_oleh_rendemen_SPK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalePrice') and o.name = 'Data_barang_dipakai_oleh_harga_jual_per_barang')
alter table SalePrice
   drop constraint Data_barang_dipakai_oleh_harga_jual_per_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalePrice') and o.name = 'Data_harga_jual_dipakai_oleh_customer')
alter table SalePrice
   drop constraint Data_harga_jual_dipakai_oleh_customer
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalePriceList') and o.name = 'Data_barang_dipakai_oleh_price_list_penjualan')
alter table SalePriceList
   drop constraint Data_barang_dipakai_oleh_price_list_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_barang_dipakai_oleh_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_barang_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_group_order_penjualan_dipakai_oleh_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_group_order_penjualan_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_order_penjualan_dipakai_oleh_detail_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_order_penjualan_dipakai_oleh_detail_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_pegawai_dipakai_oleh_detail_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_pegawai_dipakai_oleh_detail_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderDt') and o.name = 'Data_spesifikasi_order_penjualan_dipakai_oleh_order_penjualan')
alter table SalesOrderDt
   drop constraint Data_spesifikasi_order_penjualan_dipakai_oleh_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SalesOrderGroupQty') and o.name = 'Data_order_penjualan_dipakai_oleh_group_order_penjualan')
alter table SalesOrderGroupQty
   drop constraint Data_order_penjualan_dipakai_oleh_group_order_penjualan
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
   where r.fkeyid = object_id('SalesOrderSpec') and o.name = 'Data_order_penjualan_dipakai_oleh_spesifikasi_order_penjualan')
alter table SalesOrderSpec
   drop constraint Data_order_penjualan_dipakai_oleh_spesifikasi_order_penjualan
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Shipping') and o.name = 'Data_kota_dari_ekspedisi')
alter table Shipping
   drop constraint Data_kota_dari_ekspedisi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShippingDestination') and o.name = 'Data_ekspedisi_dipakai_oleh_tujuan_pengiriman')
alter table ShippingDestination
   drop constraint Data_ekspedisi_dipakai_oleh_tujuan_pengiriman
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ShippingDestination') and o.name = 'Data_kota_dipakai_dalam_tujuan_pengiriman')
alter table ShippingDestination
   drop constraint Data_kota_dipakai_dalam_tujuan_pengiriman
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockBalance') and o.name = 'Data_barang_dipakai_oleh_saldo_stok_barang')
alter table StockBalance
   drop constraint Data_barang_dipakai_oleh_saldo_stok_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockBalance') and o.name = 'Data_gudang_dipakai_oleh_saldo_stok_barang')
alter table StockBalance
   drop constraint Data_gudang_dipakai_oleh_saldo_stok_barang
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHand') and o.name = 'Data_barang_dipakai_oleh_stok')
alter table StockOnHand
   drop constraint Data_barang_dipakai_oleh_stok
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHand') and o.name = 'Data_gudang_dipakai_oleh_stok')
alter table StockOnHand
   drop constraint Data_gudang_dipakai_oleh_stok
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHandDetail') and o.name = 'Data_stok_dipakai_oleh_detail_stok')
alter table StockOnHandDetail
   drop constraint Data_stok_dipakai_oleh_detail_stok
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHandDetail') and o.name = 'Data_tally_dipakai_oleh_detail_stok')
alter table StockOnHandDetail
   drop constraint Data_tally_dipakai_oleh_detail_stok
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHandDetail') and o.name = 'Data_warna_dipakai_oleh_detail_stok')
alter table StockOnHandDetail
   drop constraint Data_warna_dipakai_oleh_detail_stok
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHandValue') and o.name = 'Data_barang_dipakai_oleh_nilai_stock')
alter table StockOnHandValue
   drop constraint Data_barang_dipakai_oleh_nilai_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('StockOnHandValue') and o.name = 'Data_gudang_dipakai_oleh_nilai_stock')
alter table StockOnHandValue
   drop constraint Data_gudang_dipakai_oleh_nilai_stock
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SuppliesReceiveHd') and o.name = 'Reference_15')
alter table SuppliesReceiveHd
   drop constraint Reference_15
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TableLogDt') and o.name = 'Data_tabel_log_dipakai_oleh_tabel_log_detail')
alter table TableLogDt
   drop constraint Data_tabel_log_dipakai_oleh_tabel_log_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TableLogMaterial') and o.name = 'Data_material_dipakai_oleh_tabel_log_material')
alter table TableLogMaterial
   drop constraint Data_material_dipakai_oleh_tabel_log_material
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TableLogMaterial') and o.name = 'Data_tabel_log_dipakai_oleh_tabel_log_material')
alter table TableLogMaterial
   drop constraint Data_tabel_log_dipakai_oleh_tabel_log_material
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheet') and o.name = 'Data_barang_dipakai_oleh_tally')
alter table TallySheet
   drop constraint Data_barang_dipakai_oleh_tally
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheet') and o.name = 'Data_gudang_dipakai_oleh_tally')
alter table TallySheet
   drop constraint Data_gudang_dipakai_oleh_tally
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheet') and o.name = 'Data_pembelian_dipakai_oleh_tally')
alter table TallySheet
   drop constraint Data_pembelian_dipakai_oleh_tally
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheet') and o.name = 'Data_tallyman_dipakai_oleh_tally_sheet')
alter table TallySheet
   drop constraint Data_tallyman_dipakai_oleh_tally_sheet
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheetDt') and o.name = 'Data_tally_dipakai_oleh_tally_detail')
alter table TallySheetDt
   drop constraint Data_tally_dipakai_oleh_tally_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheetHistory') and o.name = 'Data_gudang_dipakai_oleh_history_tally_detail')
alter table TallySheetHistory
   drop constraint Data_gudang_dipakai_oleh_history_tally_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TallySheetHistory') and o.name = 'Data_tally_dipakai_oleh_history_tally_detail')
alter table TallySheetHistory
   drop constraint Data_tally_dipakai_oleh_history_tally_detail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransactionRecord') and o.name = 'Data_barang_dipakai_oleh_record_transaksi')
alter table TransactionRecord
   drop constraint Data_barang_dipakai_oleh_record_transaksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransactionRecord') and o.name = 'Data_gudang_dipakai_oleh_record_transaksi')
alter table TransactionRecord
   drop constraint Data_gudang_dipakai_oleh_record_transaksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TransactionRecord') and o.name = 'Data_tipe_transaksi_dipakai_oleh_record_transaksi')
alter table TransactionRecord
   drop constraint Data_tipe_transaksi_dipakai_oleh_record_transaksi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vendor') and o.name = 'Data_kategori_supplier_dipakai_oleh_supplier')
alter table Vendor
   drop constraint Data_kategori_supplier_dipakai_oleh_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vendor') and o.name = 'Data_kota_dipakai_oleh_supplier')
alter table Vendor
   drop constraint Data_kota_dipakai_oleh_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VendorContact') and o.name = 'Data_supplier_dipakai_oleh_contact_person_supplier')
alter table VendorContact
   drop constraint Data_supplier_dipakai_oleh_contact_person_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VendorPhone') and o.name = 'Data_supplier_dipakai_oleh_telephone_supplier')
alter table VendorPhone
   drop constraint Data_supplier_dipakai_oleh_telephone_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VendorShippingDetail') and o.name = 'Data_ekspedisi_dipakai_oleh_ekspedisi_supplier')
alter table VendorShippingDetail
   drop constraint Data_ekspedisi_dipakai_oleh_ekspedisi_supplier
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VendorShippingDetail') and o.name = 'Data_supplier_dipakai_oleh_supplier_ekspedisi')
alter table VendorShippingDetail
   drop constraint Data_supplier_dipakai_oleh_supplier_ekspedisi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Warehouse') and o.name = 'Data_kota_dipakai_oleh_gudang')
alter table Warehouse
   drop constraint Data_kota_dipakai_oleh_gudang
go

if exists (select 1
            from  sysobjects
           where  id = object_id('vwItemWarehouse')
            and   type = 'V')
   drop view vwItemWarehouse
go

if exists (select 1
            from  sysobjects
           where  id = object_id('vwSPKItemRoughSizeM2')
            and   type = 'V')
   drop view vwSPKItemRoughSizeM2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('vwSPKItemRoughSizeM3')
            and   type = 'V')
   drop view vwSPKItemRoughSizeM3
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BillMaterialDt')
            and   type = 'U')
   drop table BillMaterialDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BillMaterialHd')
            and   type = 'U')
   drop table BillMaterialHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ChartOfAccount')
            and   type = 'U')
   drop table ChartOfAccount
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
           where  id = object_id('CostingEstimate')
            and   type = 'U')
   drop table CostingEstimate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CostingHd')
            and   type = 'U')
   drop table CostingHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CostingItem')
            and   type = 'U')
   drop table CostingItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CostingKurs')
            and   type = 'U')
   drop table CostingKurs
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CostingPrice')
            and   type = 'U')
   drop table CostingPrice
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
           where  id = object_id('CustomerShippingDetail')
            and   type = 'U')
   drop table CustomerShippingDetail
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
           where  id = object_id('Engine')
            and   type = 'U')
   drop table Engine
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GeneralLedger')
            and   type = 'U')
   drop table GeneralLedger
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GradeResultCuttingDt')
            and   type = 'U')
   drop table GradeResultCuttingDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GradeResultHd')
            and   type = 'U')
   drop table GradeResultHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GradeResultInvoiceDt')
            and   type = 'U')
   drop table GradeResultInvoiceDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Grader')
            and   type = 'U')
   drop table Grader
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Item')
            and   type = 'U')
   drop table Item
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemCategory')
            and   type = 'U')
   drop table ItemCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemDt')
            and   type = 'U')
   drop table ItemDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemMinStock')
            and   type = 'U')
   drop table ItemMinStock
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemOrderBalance')
            and   type = 'U')
   drop table ItemOrderBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JobPosition')
            and   type = 'U')
   drop table JobPosition
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JournalDt')
            and   type = 'U')
   drop table JournalDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JournalHd')
            and   type = 'U')
   drop table JournalHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KayuMuatDt')
            and   type = 'U')
   drop table KayuMuatDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KayuMuatHd')
            and   type = 'U')
   drop table KayuMuatHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KoorGrader')
            and   type = 'U')
   drop table KoorGrader
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
           where  id = object_id('Material')
            and   type = 'U')
   drop table Material
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MenuOptions')
            and   type = 'U')
   drop table MenuOptions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MutasiDt')
            and   type = 'U')
   drop table MutasiDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MutasiHd')
            and   type = 'U')
   drop table MutasiHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MutasiSJ')
            and   type = 'U')
   drop table MutasiSJ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OtherTransactionDt')
            and   type = 'U')
   drop table OtherTransactionDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OtherTransactionHd')
            and   type = 'U')
   drop table OtherTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Outlet')
            and   type = 'U')
   drop table Outlet
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PositionAccess')
            and   type = 'U')
   drop table PositionAccess
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionHd')
            and   type = 'U')
   drop table ProductionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionIn')
            and   type = 'U')
   drop table ProductionIn
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionMiss')
            and   type = 'U')
   drop table ProductionMiss
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionOut')
            and   type = 'U')
   drop table ProductionOut
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionRejected')
            and   type = 'U')
   drop table ProductionRejected
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionUnit')
            and   type = 'U')
   drop table ProductionUnit
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProductionWaste')
            and   type = 'U')
   drop table ProductionWaste
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Project')
            and   type = 'U')
   drop table Project
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Province')
            and   type = 'U')
   drop table Province
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseCategory')
            and   type = 'U')
   drop table PurchaseCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseInvoiceDt')
            and   type = 'U')
   drop table PurchaseInvoiceDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseInvoiceHd')
            and   type = 'U')
   drop table PurchaseInvoiceHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseOrderDt')
            and   type = 'U')
   drop table PurchaseOrderDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseOrderGroupQty')
            and   type = 'U')
   drop table PurchaseOrderGroupQty
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseOrderHd')
            and   type = 'U')
   drop table PurchaseOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchaseOrderSpec')
            and   type = 'U')
   drop table PurchaseOrderSpec
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchasePrice')
            and   type = 'U')
   drop table PurchasePrice
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PurchasePriceList')
            and   type = 'U')
   drop table PurchasePriceList
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReceivingRecordDt')
            and   type = 'U')
   drop table ReceivingRecordDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReceivingRecordHd')
            and   type = 'U')
   drop table ReceivingRecordHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReceivingRecordSJ')
            and   type = 'U')
   drop table ReceivingRecordSJ
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
           where  id = object_id('RoughSize')
            and   type = 'U')
   drop table RoughSize
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SBTB')
            and   type = 'U')
   drop table SBTB
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SBTBDt')
            and   type = 'U')
   drop table SBTBDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SPKDt')
            and   type = 'U')
   drop table SPKDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SPKHd')
            and   type = 'U')
   drop table SPKHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SPKItem')
            and   type = 'U')
   drop table SPKItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SPKRendemen')
            and   type = 'U')
   drop table SPKRendemen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalePrice')
            and   type = 'U')
   drop table SalePrice
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalePriceList')
            and   type = 'U')
   drop table SalePriceList
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalesOrderDt')
            and   type = 'U')
   drop table SalesOrderDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalesOrderGroupQty')
            and   type = 'U')
   drop table SalesOrderGroupQty
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalesOrderHd')
            and   type = 'U')
   drop table SalesOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SalesOrderSpec')
            and   type = 'U')
   drop table SalesOrderSpec
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Setup')
            and   type = 'U')
   drop table Setup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Shipping')
            and   type = 'U')
   drop table Shipping
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShippingDestination')
            and   type = 'U')
   drop table ShippingDestination
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StockBalance')
            and   type = 'U')
   drop table StockBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StockOnHand')
            and   type = 'U')
   drop table StockOnHand
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StockOnHandDetail')
            and   type = 'U')
   drop table StockOnHandDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StockOnHandValue')
            and   type = 'U')
   drop table StockOnHandValue
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableLogDt')
            and   type = 'U')
   drop table TableLogDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableLogHd')
            and   type = 'U')
   drop table TableLogHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableLogMaterial')
            and   type = 'U')
   drop table TableLogMaterial
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TableRegistry')
            and   type = 'U')
   drop table TableRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TallySheet')
            and   type = 'U')
   drop table TallySheet
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TallySheetDt')
            and   type = 'U')
   drop table TallySheetDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TallySheetGrade')
            and   type = 'U')
   drop table TallySheetGrade
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TallySheetHistory')
            and   type = 'U')
   drop table TallySheetHistory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tallyman')
            and   type = 'U')
   drop table Tallyman
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionBalance')
            and   type = 'U')
   drop table TransactionBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionRecord')
            and   type = 'U')
   drop table TransactionRecord
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionRegistry')
            and   type = 'U')
   drop table TransactionRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionType')
            and   type = 'U')
   drop table TransactionType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionValue')
            and   type = 'U')
   drop table TransactionValue
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vendor')
            and   type = 'U')
   drop table Vendor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VendorCategory')
            and   type = 'U')
   drop table VendorCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VendorContact')
            and   type = 'U')
   drop table VendorContact
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VendorPhone')
            and   type = 'U')
   drop table VendorPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VendorShippingDetail')
            and   type = 'U')
   drop table VendorShippingDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Warehouse')
            and   type = 'U')
   drop table Warehouse
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Warna')
            and   type = 'U')
   drop table Warna
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
/* Table: BillMaterialDt                                        */
/*==============================================================*/
create table BillMaterialDt (
   Bil_ItemId           numeric              not null,
   ItemId               numeric              not null,
   EmployeeId           varchar(10)          null,
   RecId                numeric              identity,
   OrderNo              varchar(20)          null,
   Qty                  QuantityPlus         not null,
   constraint PK_BILLMATERIALDT primary key nonclustered (Bil_ItemId, ItemId)
)
go

/*==============================================================*/
/* Table: BillMaterialHd                                        */
/*==============================================================*/
create table BillMaterialHd (
   ItemId               numeric              not null,
   EmployeeId           varchar(10)          null,
   BillMaterialNumber   varchar(30)          not null,
   DrawNo               varchar(30)          not null,
   PrefixCode           varchar(10)          null,
   BillMaterialDate     DateWithTime         not null default getdate(),
   QtyBOM               QuantityPlus         null,
   Memo                 varchar(200)         null,
   FlagProtected        Flag                 null,
   FlagUsed             Flag                 null,
   constraint PK_BILLMATERIALHD primary key nonclustered (ItemId),
   constraint AK_BILLMATERIALHD unique (BillMaterialNumber)
)
go

/*==============================================================*/
/* Table: ChartOfAccount                                        */
/*==============================================================*/
create table ChartOfAccount (
   COAId                numeric              identity,
   COAIdParent          numeric              null,
   COACode              varchar(20)          not null,
   COAName              varchar(30)          null,
   StatusType           Status               null,
   constraint PK_ChartOfAccount primary key (COAId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Asset
   1 = Hutang
   2 = Modal
   3 = Penjualan
   4 = Biaya',
   'user', @CurrentUser, 'table', 'ChartOfAccount', 'column', 'StatusType'
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
/* Table: CostingEstimate                                       */
/*==============================================================*/
create table CostingEstimate (
   CostingCode          varchar(15)          not null,
   No                   numeric              not null,
   CurrencyId           varchar(10)          not null,
   EstimatePercent      "Percent"            null,
   ValueAdded           CurrencyPlus         null,
   constraint PK_CostingEstimate primary key (CostingCode, No)
)
go

/*==============================================================*/
/* Table: CostingHd                                             */
/*==============================================================*/
create table CostingHd (
   CostingCode          varchar(15)          not null,
   ItemId               numeric              null,
   EmployeeId           varchar(10)          null,
   CostingDate          DateWithTime         not null,
   CounterPrint         integer              null,
   StatusApprove        Status               null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   constraint PK_CostingHd primary key (CostingCode)
)
go

/*==============================================================*/
/* Table: CostingItem                                           */
/*==============================================================*/
create table CostingItem (
   CostingCode          varchar(15)          not null,
   ItemId               numeric              not null,
   Qty                  QuantityPlus         null,
   CurrencyIdCosting    varchar(10)          null,
   CostingPrice         CurrencyPlus         null,
   CurrencyIdPurchase   varchar(10)          null,
   PurchasePrice        CurrencyPlus         null,
   CurrencyIdStock      varchar(10)          null,
   StockPrice           CurrencyPlus         null,
   Price                CurrencyPlus         null,
   Rendemen             Disc                 null,
   PriceRendemen        CurrencyPlus         null,
   AmountRendemen       CurrencyPlus         null,
   FlagItemBOM          Flag                 null,
   constraint PK_CostingDt primary key (CostingCode, ItemId)
)
go

/*==============================================================*/
/* Table: CostingKurs                                           */
/*==============================================================*/
create table CostingKurs (
   CostingCode          varchar(15)          not null,
   CurrencyId           varchar(10)          not null,
   Kurs                 CurrencyPlus         null,
   constraint PK_CostingKurs primary key (CostingCode, CurrencyId)
)
go

/*==============================================================*/
/* Table: CostingPrice                                          */
/*==============================================================*/
create table CostingPrice (
   ItemId               numeric              not null,
   CurrencyId           varchar(10)          not null,
   PriceKg              CurrencyPlus         null,
   PriceM2              CurrencyPlus         null,
   PriceM3              CurrencyPlus         null,
   PriceQty             CurrencyPlus         null,
   constraint PK_CostingPrice primary key (ItemId, CurrencyId)
)
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
/* Table: CustomerShippingDetail                                */
/*==============================================================*/
create table CustomerShippingDetail (
   CustomerId           numeric              not null,
   ShippingId           numeric              not null,
   constraint PK_CustomerShippingDetail primary key nonclustered (CustomerId, ShippingId)
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
/* Table: Engine                                                */
/*==============================================================*/
create table Engine (
   EngineId             numeric              identity,
   ProductionUnitId     numeric              not null,
   EngineCode           varchar(10)          not null,
   EngineName           varchar(20)          null,
   Kapasitas            QuantityPlus         null,
   constraint PK_ENGINE primary key nonclustered (EngineId),
   constraint AK_ENGINE unique (EngineCode)
)
go

/*==============================================================*/
/* Table: GeneralLedger                                         */
/*==============================================================*/
create table GeneralLedger (
   COAId                numeric              not null,
   Tahun                integer              not null,
   Bulan                integer              not null,
   ValueBalance         CurrencyPlus         null,
   constraint PK_GeneralLedger primary key nonclustered (COAId, Tahun, Bulan)
)
go

/*==============================================================*/
/* Table: GradeResultCuttingDt                                  */
/*==============================================================*/
create table GradeResultCuttingDt (
   GradeResultCode      varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   TallySheetGradeCode  varchar(30)          not null,
   TCut                 MeasurePlus          null,
   LCut                 MeasurePlus          null,
   PCut                 MeasurePlus          null,
   M3Cut                VolumePlus           null,
   Qty                  QuantityPlus         null,
   BeratCut             BeratPlus            null,
   constraint PK_GRADERESULTCUTTINGDT primary key nonclustered (GradeResultCode, No, ItemId)
)
go

/*==============================================================*/
/* Table: GradeResultHd                                         */
/*==============================================================*/
create table GradeResultHd (
   GradeResultCode      varchar(30)          collate SQL_Latin1_General_CP1_CI_AS not null,
   GradeResultDate      datetime             not null,
   PurchaseOrderCode    varchar(30)          not null,
   KoorGraderId         numeric              not null,
   GraderId             numeric              not null,
   TallymanId           numeric              not null,
   EmployeeId           varchar(10)          null,
   Lokasi               varchar(30)          collate SQL_Latin1_General_CP1_CI_AS null,
   PaletCount           int                  null,
   PaletLoaded          int                  null,
   PaletOutstanding     int                  null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         int                  null,
   StatusGradeResult    Status               null,
   StatusApprove        Status               null,
   constraint PK_GRADERESULTHD primary key nonclustered (GradeResultCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Hasil Grade Balon, 1 = Hasil Grade Log',
   'user', @CurrentUser, 'table', 'GradeResultHd', 'column', 'StatusGradeResult'
go

/*==============================================================*/
/* Table: GradeResultInvoiceDt                                  */
/*==============================================================*/
create table GradeResultInvoiceDt (
   GradeResultCode      varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   TallySheetGradeCode  varchar(30)          not null,
   TInv                 MeasurePlus          null,
   LInv                 MeasurePlus          null,
   PInv                 MeasurePlus          null,
   D1Inv                MeasurePlus          null,
   D2Inv                MeasurePlus          null,
   D3Inv                MeasurePlus          null,
   D4Inv                MeasurePlus          null,
   DAvgInv              MeasurePlus          null,
   M3Inv                VolumePlus           null,
   BeratInv             BeratPlus            null,
   Qty                  QuantityPlus         null,
   Price                CurrencyPlus         null,
   constraint PK_GRADERESULTINVOICEDT primary key nonclustered (GradeResultCode, No, ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '??? Blm tentu dipakai',
   'user', @CurrentUser, 'table', 'GradeResultInvoiceDt', 'column', 'Price'
go

/*==============================================================*/
/* Table: Grader                                                */
/*==============================================================*/
create table Grader (
   GraderId             numeric              identity,
   GraderCode           varchar(30)          null,
   GraderName           varchar(30)          null,
   constraint PK_GRADER primary key nonclustered (GraderId)
)
go

/*==============================================================*/
/* Table: Item                                                  */
/*==============================================================*/
create table Item (
   ItemId               numeric              identity,
   ItemCategoryId       numeric              null,
   MaterialId           numeric              null,
   EmployeeId           varchar(10)          null,
   ItemCode             varchar(60)          not null,
   ItemName             varchar(60)          not null,
   ItemProperty1        varchar(60)          null,
   ItemProperty2        varchar(60)          null,
   ItemProperty3        varchar(60)          null,
   ItemProperty4        varchar(60)          null,
   ItemProperty5        varchar(60)          null,
   ItemProperty6        varchar(60)          null,
   ItemProperty7        varchar(60)          null,
   ItemProperty8        varchar(60)          null,
   ItemProperty9        varchar(60)          null,
   ItemProperty10       varchar(60)          null,
   UnitMeasure          varchar(10)          null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   TConstanta           MeasurePlus          null,
   LConstanta           MeasurePlus          null,
   PConstanta           MeasurePlus          null,
   D                    MeasurePlus          null,
   DConstanta           MeasurePlus          null,
   Berat                BeratPlus            null,
   BeratJenis           BeratPlus            null,
   M2                   MeasureBigPlus       null,
   M3                   MeasureBigPlus       null,
   FlagInactive         Flag                 null,
   StatusItem           Status               null,
   StatusCostMethod     Status               null,
   StatusProduction     Status               null,
   StatusDimensi        Status               null,
   StatusPurchasePricing Status               null,
   StatusSalesPricing   Status               null,
   StatusPurchaseDimensi Status               null,
   constraint PK_ITEM primary key nonclustered (ItemId),
   constraint AK_ITEM unique (ItemCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'BMI = Kondisi Kayu (0=AD & 1=KD)
   KJT = Kondisi Kayu (0=AD & 1=KD)
   BIG = Arah Gulungan (0=Atas & 1=Bawah)
   ',
   'user', @CurrentUser, 'table', 'Item', 'column', 'ItemProperty1'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'BMI = Bentuk Kayu (0=Square & 1=Log)
   KJT = Bentuk Kayu (0=Square & 1=Log)
   BIG = Jumlah Warna',
   'user', @CurrentUser, 'table', 'Item', 'column', 'ItemProperty2'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Active
   1 = Resign',
   'user', @CurrentUser, 'table', 'Item', 'column', 'FlagInactive'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Service
   1 = Item
   2 = Non Stock - Item
   3 = Konsinyasi',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusItem'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = FIFO
   1 = LIFO
   2 = AVERAGE',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusCostMethod'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Bahan Baku
   1 = Bahan Penolong
   2 = Barang Setengah Jadi
   3 = Barang Jadi',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusProduction'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Quantity (Pcs)
   1 = Luas (M2)
   2 = Volume (M3)
   3 = Berat (Kg)',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusDimensi'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Price List
   1 = Vendor / Supplier Price',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusPurchasePricing'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Price List
   1 = Customer Price',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusSalesPricing'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Qty terkecil
   1 = Luas (m2) 
   2 = Kubikasi (m3)
   3 = Berat (kg)',
   'user', @CurrentUser, 'table', 'Item', 'column', 'StatusPurchaseDimensi'
go

/*==============================================================*/
/* Table: ItemCategory                                          */
/*==============================================================*/
create table ItemCategory (
   ItemCategoryId       numeric              identity,
   ItemCategoryCode     varchar(10)          not null,
   ItemCategoryName     varchar(20)          not null,
   constraint PK_ITEMCATEGORY primary key nonclustered (ItemCategoryId),
   constraint AK_ITEMCATEGORY unique (ItemCategoryCode)
)
go

/*==============================================================*/
/* Table: ItemDt                                                */
/*==============================================================*/
create table ItemDt (
   ItemId               numeric              not null,
   BarcodeId            varchar(60)          null,
   BarcodeName          varchar(20)          null,
   Margin               Disc                 not null,
   MinStockQty          QuantityPlus         not null,
   MaxStockQty          QuantityPlus         not null,
   ReorderQty           QuantityPlus         not null,
   FlagPurchaseReturn   Flag                 not null,
   FlagSalesReturn      Flag                 not null,
   FlagProcessOpname    Flag                 not null,
   constraint PK_ITEMDT primary key nonclustered (ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Digunakan apabila status item = Service (0) atau Non-Stock (2)
   Margin berupa prosentase keuntungan yang diperoleh dari harga jual',
   'user', @CurrentUser, 'table', 'ItemDt', 'column', 'Margin'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Default value in PO',
   'user', @CurrentUser, 'table', 'ItemDt', 'column', 'ReorderQty'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1 = Bisa retur pembelian',
   'user', @CurrentUser, 'table', 'ItemDt', 'column', 'FlagPurchaseReturn'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1 = Bisa retur penjualan',
   'user', @CurrentUser, 'table', 'ItemDt', 'column', 'FlagSalesReturn'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1 = Sedang di opname',
   'user', @CurrentUser, 'table', 'ItemDt', 'column', 'FlagProcessOpname'
go

/*==============================================================*/
/* Table: ItemMinStock                                          */
/*==============================================================*/
create table ItemMinStock (
   WarehouseId          numeric              not null,
   ItemId               numeric              not null,
   EmployeeId           varchar(10)          null,
   MinStockQty          QuantityPlus         not null,
   constraint PK_ITEMMINSTOCK primary key nonclustered (WarehouseId, ItemId)
)
go

/*==============================================================*/
/* Table: ItemOrderBalance                                      */
/*==============================================================*/
create table ItemOrderBalance (
   ItemId               numeric              not null,
   Tahun                int                  not null,
   Bulan                int                  not null,
   QtyPOIn              Quantity             null,
   QtyPOOut             Quantity             null,
   QtyPOBalance         Quantity             null,
   QtySOIn              Quantity             null,
   QtySOOut             Quantity             null,
   QtySOBalance         Quantity             null,
   RecordCount          int                  null,
   constraint PK_ItemOrderBalance primary key nonclustered (ItemId, Tahun, Bulan)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Format : YYYY = 2009',
   'user', @CurrentUser, 'table', 'ItemOrderBalance', 'column', 'Tahun'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Format : MM = 1 s/d 12',
   'user', @CurrentUser, 'table', 'ItemOrderBalance', 'column', 'Bulan'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Gak tau gawe opo ?',
   'user', @CurrentUser, 'table', 'ItemOrderBalance', 'column', 'RecordCount'
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
/* Table: JournalDt                                             */
/*==============================================================*/
create table JournalDt (
   JournalId            numeric              not null,
   COAId                numeric              not null,
   No                   integer              null,
   Description          MemoVarchar          null,
   Debit                CurrencyPlus         null,
   Credit               CurrencyPlus         null,
   constraint PK_JournalDt primary key nonclustered (JournalId, COAId)
)
go

/*==============================================================*/
/* Table: JournalHd                                             */
/*==============================================================*/
create table JournalHd (
   JournalId            numeric              identity,
   JournalDate          DateWithTime         not null,
   CounterPrint         integer              null,
   StatusSource         Status               not null,
   StatusApprove        Status               not null,
   EmployeeId           varchar(10)          not null,
   constraint PK_Journal primary key nonclustered (JournalId)
)
go

/*==============================================================*/
/* Table: KayuMuatDt                                            */
/*==============================================================*/
create table KayuMuatDt (
   KayuMuatCode         varchar(30)          not null,
   TallySheetGradeCode  varchar(30)          not null,
   constraint PK_KAYUMUATDT primary key nonclustered (TallySheetGradeCode, KayuMuatCode)
)
go

/*==============================================================*/
/* Table: KayuMuatHd                                            */
/*==============================================================*/
create table KayuMuatHd (
   KayuMuatCode         TransactionCode      not null,
   KayuMuatDate         DateWithTime         not null,
   PurchaseOrderCode    varchar(30)          null,
   WarehouseId          numeric              null,
   EmployeeId           varchar(10)          null,
   LokasiMuat           MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         int                  null,
   StatusApprove        Status               null,
   StatusKayuMuat       Status               null,
   constraint PK_KAYUMUATHD primary key nonclustered (KayuMuatCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Muat Balok, 1 = Muat Log',
   'user', @CurrentUser, 'table', 'KayuMuatHd', 'column', 'StatusKayuMuat'
go

/*==============================================================*/
/* Table: KoorGrader                                            */
/*==============================================================*/
create table KoorGrader (
   KoorGraderId         numeric              identity,
   KoorGraderCode       varchar(30)          null,
   KoorGraderName       varchar(30)          null,
   constraint PK_KOORGRADER primary key nonclustered (KoorGraderId)
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
/* Table: Material                                              */
/*==============================================================*/
create table Material (
   MaterialId           numeric              identity,
   MaterialCode         varchar(10)          not null,
   MaterialName         varchar(40)          not null,
   constraint PK_MATERIAL primary key nonclustered (MaterialId),
   constraint AK_MATERIAL unique (MaterialCode)
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
/* Table: MutasiDt                                              */
/*==============================================================*/
create table MutasiDt (
   MutasiId             numeric              not null,
   TallySheetCode       TransactionCode      not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   Price                CurrencyPlus         null,
   PricePrint           CurrencyPlus         null,
   TotalQty             QuantityPlus         null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   Amount               CurrencyPlus         null,
   constraint PK_MUTASIDt primary key (MutasiId, TallySheetCode)
)
go

/*==============================================================*/
/* Table: MutasiHd                                              */
/*==============================================================*/
create table MutasiHd (
   MutasiId             numeric              identity,
   WarehouseIdSource    numeric              null,
   WarehouseIdDest      numeric              null,
   TransactionTypeId    integer              null,
   MutasiCode           varchar(30)          not null,
   MutasiDate           datetime             null,
   PlanMutasiOut        datetime             null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   CounterPrint         int                  null,
   StatusApprove        Status               null,
   EmployeeId           varchar(10)          null,
   constraint PK_MutasiHd primary key (MutasiId),
   constraint AK_MutasiHd unique (MutasiCode)
)
go

/*==============================================================*/
/* Table: MutasiSJ                                              */
/*==============================================================*/
create table MutasiSJ (
   MutasiId             numeric              not null,
   SJId                 numeric              not null,
   SJDate               datetime             null,
   NoPolisi             varchar(10)          null,
   Kendaraan            varchar(10)          null,
   NoFAKO               varchar(15)          null,
   NoCont               varchar(10)          null,
   Description          MemoVarchar          null,
   constraint PK_BTBSJ primary key (MutasiId, SJId)
)
go

/*==============================================================*/
/* Table: OtherTransactionDt                                    */
/*==============================================================*/
create table OtherTransactionDt (
   OtherTransactionCode varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   ItemText             varchar(30)          null,
   Qty                  QuantityPlus         not null,
   Price                CurrencyPlus         not null,
   Amount               CurrencyPlus         null,
   ExpiredDate          DateWithoutTime      null,
   StatusColor          Status               not null,
   EmployeeId           varchar(10)          null,
   constraint PK_OtherTransactionDt primary key nonclustered (OtherTransactionCode, No)
)
go

/*==============================================================*/
/* Table: OtherTransactionHd                                    */
/*==============================================================*/
create table OtherTransactionHd (
   OtherTransactionCode TransactionCode      not null,
   WarehouseId          numeric              not null,
   TransactionTypeId    integer              not null,
   OtherTransactionDate DateWithTime         not null,
   ProjectId            varchar(10)          null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         integer              null default '0',
   StatusApprove        Status               null,
   EmployeeId           varchar(10)          null,
   constraint PK_OtherTransactionHd primary key nonclustered (OtherTransactionCode),
   constraint AK_OtherTransactionHd unique (OtherTransactionCode)
)
go

/*==============================================================*/
/* Table: Outlet                                                */
/*==============================================================*/
create table Outlet (
   OutletId             numeric              identity,
   OutletCode           varchar(10)          not null,
   CityId               varchar(5)           null,
   OutletName           varchar(40)          null,
   ContactPerson        varchar(25)          null,
   Address              varchar(50)          null,
   Memo                 MemoVarchar          null,
   constraint PK_Outlet primary key nonclustered (OutletId),
   constraint AK_Outlet unique (OutletCode)
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
/* Table: ProductionHd                                          */
/*==============================================================*/
create table ProductionHd (
   ProductionId         numeric              identity,
   EmployeeId           varchar(10)          null,
   SPKCode              varchar(30)          null,
   ProductionUnitId     numeric              null,
   ProductionCode       varchar(30)          not null,
   ProductionDate       datetime             not null,
   ProductionPlanOutDate datetime             not null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   CounterPrint         int                  null,
   StatusApprove        Status               null,
   constraint PK_ProductionHd primary key (ProductionId),
   constraint AK_ProductionHd unique (ProductionCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ProductionIn + ProductionMiss = ProductionOut + ProductionAfkir + ProductionWaste',
   'user', @CurrentUser, 'table', 'ProductionHd'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'No IKP',
   'user', @CurrentUser, 'table', 'ProductionHd', 'column', 'SPKCode'
go

/*==============================================================*/
/* Table: ProductionIn                                          */
/*==============================================================*/
create table ProductionIn (
   ProductionId         numeric              not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      not null,
   WarehouseId          numeric              null,
   RefCode              varchar(30)          null,
   constraint PK_ChamberInDt primary key (ProductionId, No)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bahan baku untuk produksi',
   'user', @CurrentUser, 'table', 'ProductionIn'
go

/*==============================================================*/
/* Table: ProductionMiss                                        */
/*==============================================================*/
create table ProductionMiss (
   ProductionId         numeric              not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   D                    MeasurePlus          null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   D3                   MeasurePlus          null,
   D4                   MeasurePlus          null,
   M3                   VolumePlus           not null,
   Berat                BeratPlus            null,
   Qty                  QuantityPlus         not null,
   constraint PK_ProductionOutMiss primary key (No, ProductionId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bahan baku untuk produksi yang belum dipakai',
   'user', @CurrentUser, 'table', 'ProductionMiss'
go

/*==============================================================*/
/* Table: ProductionOut                                         */
/*==============================================================*/
create table ProductionOut (
   ProductionId         numeric              not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   D                    MeasurePlus          null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   D3                   MeasurePlus          null,
   D4                   MeasurePlus          null,
   M3                   VolumePlus           not null,
   Berat                BeratPlus            null,
   Qty                  QuantityPlus         not null,
   constraint PK_ChamberOutDt primary key (No, ProductionId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Barang jadi hasil produksi yang baik',
   'user', @CurrentUser, 'table', 'ProductionOut'
go

/*==============================================================*/
/* Table: ProductionRejected                                    */
/*==============================================================*/
create table ProductionRejected (
   ProductionId         numeric              not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   D                    MeasurePlus          null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   D3                   MeasurePlus          null,
   D4                   MeasurePlus          null,
   M3                   VolumePlus           not null,
   Berat                BeratPlus            null,
   Qty                  QuantityPlus         not null,
   constraint PK_ProductionOutAfkir primary key (No, ProductionId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Barang jadi hasil produksi yang afkir',
   'user', @CurrentUser, 'table', 'ProductionRejected'
go

/*==============================================================*/
/* Table: ProductionUnit                                        */
/*==============================================================*/
create table ProductionUnit (
   ProductionUnitId     numeric              identity,
   WarehouseIdSource    numeric              null,
   WarehouseIdDest      numeric              not null,
   ProductionUnitCode   nvarchar(10)         not null,
   ProductionUnitName   nvarchar(20)         not null,
   constraint PK_PRODUCTIONUNIT primary key nonclustered (ProductionUnitId),
   constraint AK_PRODUCTIONUNIT unique (ProductionUnitCode)
)
go

/*==============================================================*/
/* Table: ProductionWaste                                       */
/*==============================================================*/
create table ProductionWaste (
   ProductionId         numeric              not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   D                    MeasurePlus          null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   D3                   MeasurePlus          null,
   D4                   MeasurePlus          null,
   M3                   VolumePlus           not null,
   Berat                BeratPlus            null,
   Qty                  QuantityPlus         not null,
   constraint PK_ProductionOutWaste primary key (No, ProductionId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ouput Produksi yang Tidak bisa dipakai lagi (Waste) ?? masih belum jelas',
   'user', @CurrentUser, 'table', 'ProductionWaste'
go

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project (
   ProjectId            numeric              identity,
   ProjectCode          varchar(10)          null,
   ProjectName          varchar(40)          not null,
   DateStart            DateWithTime         null,
   DateEnd              DateWithTime         null,
   ContactPerson        varchar(25)          null,
   Memo                 MemoVarchar          null,
   constraint PK_Project primary key nonclustered (ProjectId),
   constraint AK_Project unique (ProjectCode)
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
/* Table: PurchaseCategory                                      */
/*==============================================================*/
create table PurchaseCategory (
   PurchaseCategoryId   numeric              identity,
   PurchaseCategoryCode varchar(10)          not null,
   PurchaseCategoryName varchar(15)          not null,
   FlagFix              Flag                 null,
   constraint PK_PurchaseCategory primary key nonclustered (PurchaseCategoryId),
   constraint AK_PurchaseCategory unique (PurchaseCategoryCode)
)
go

/*==============================================================*/
/* Table: PurchaseInvoiceDt                                     */
/*==============================================================*/
create table PurchaseInvoiceDt (
   PurchaseInvoiceCode  varchar(30)          not null,
   No                   integer              not null,
   EmployeeId           varchar(10)          null,
   ItemId               numeric              null,
   ItemText             varchar(30)          null,
   ExpiredDate          DateWithTime         not null,
   Qty                  QuantityPlus         not null,
   QtyReturnLeft        QuantityPlus         null,
   Price                CurrencyPlus         null,
   DiscItem             Disc                 null,
   DiscItemPrice        CurrencyPlus         null,
   DiscItem2            Disc                 null,
   DiscItemPrice2       CurrencyPlus         null,
   VoucherItem          CurrencyPlus         null,
   Amount               CurrencyPlus         null,
   StatusColor          Status               not null,
   constraint PK_PurchaseInvoiceDt primary key nonclustered (PurchaseInvoiceCode, No)
)
go

/*==============================================================*/
/* Table: PurchaseInvoiceHd                                     */
/*==============================================================*/
create table PurchaseInvoiceHd (
   PurchaseInvoiceCode  TransactionCode      not null,
   PurchaseInvoiceDate  DateWithTime         null,
   PurchaseInvoiceExt   varchar(30)          null,
   VendorId             numeric              not null,
   VendorContactId      numeric              null,
   WarehouseId          numeric              not null,
   ReceivingRecordCode  varchar(30)          null,
   PurchaseOrderCode    varchar(30)          null,
   PurchaseCategoryId   numeric              null,
   OutletId             numeric              null,
   ProjectId            numeric              null,
   ShippingId           numeric              null,
   EmployeeId           varchar(10)          not null,
   CurrencyId           varchar(10)          not null,
   Kurs                 CurrencyPlus         not null,
   Salesman             varchar(15)          null,
   InvoiceDueDay        integer              null default '0',
   Amount               CurrencyPlus         null,
   Disc                 Disc                 null,
   DiscAmount           CurrencyPlus         null,
   Disc2                Disc                 null,
   DiscAmount2          CurrencyPlus         null,
   Voucher              varchar(20)          null,
   VoucherAmount        CurrencyPlus         null,
   PPN                  Disc                 null,
   PPNAmount            CurrencyPlus         null,
   PPNDate              DateWithTime         null,
   NoFakturPajak        varchar(30)          null,
   PPH22                Disc                 null,
   PPH22Amount          CurrencyPlus         null,
   OtherAmountPlus      CurrencyPlus         null,
   OtherAmountMinus     CurrencyPlus         null,
   TotalAmount          CurrencyPlus         null,
   OutstandingTotalAmount CurrencyPlus         null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   LastModified         DateWithTime         null,
   StatusApprove        Status               null,
   CounterPrint         int                  null,
   constraint PK_PurchaseInvoiceHd primary key nonclustered (PurchaseInvoiceCode),
   constraint AK_PurchaseInvoiceHd unique (PurchaseInvoiceCode)
)
go

/*==============================================================*/
/* Table: PurchaseOrderDt                                       */
/*==============================================================*/
create table PurchaseOrderDt (
   PurchaseOrderCode    varchar(30)          not null,
   No                   int                  not null,
   GroupQtyId           numeric              null,
   SpecId               numeric              null,
   ItemId               numeric              not null,
   Qty                  QuantityPlus         not null,
   QtyPrint             QuantityPlus         null,
   QtyOutstanding       QuantityPlus         null,
   Price                CurrencyPlus         not null,
   PricePrint           CurrencyPlus         null,
   DiscItem             Disc                 null,
   DiscItemPrice        CurrencyPlus         null,
   DiscItem2            Disc                 null,
   DiscItemPrice2       CurrencyPlus         null,
   VoucherItem          CurrencyPlus         null,
   ItemTax              Disc                 null,
   ItemTaxPrice         CurrencyPlus         null,
   Amount               CurrencyPlus         null,
   Description          MemoVarchar          null,
   StatusDimensiPrice   Status               null,
   EmployeeId           varchar(10)          null,
   constraint PK_PurchaseOrderDt primary key nonclustered (PurchaseOrderCode, No),
   constraint AK_PurchaseOrderDt unique (PurchaseOrderCode, ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Qty terkecil
   1 = Luas (m2) 
   2 = Kubikasi (m3)
   3 = Berat (kg)',
   'user', @CurrentUser, 'table', 'PurchaseOrderDt', 'column', 'StatusDimensiPrice'
go

/*==============================================================*/
/* Table: PurchaseOrderGroupQty                                 */
/*==============================================================*/
create table PurchaseOrderGroupQty (
   PurchaseOrderCode    varchar(30)          not null,
   GroupQtyId           numeric              identity,
   GroupQtyCode         varchar(10)          not null,
   GroupQty             QuantityPlus         null,
   OutstandingGroupQty  QuantityPlus         null,
   constraint PK_PurchaseOrderGroupQty primary key nonclustered (GroupQtyId),
   constraint AK_PurchaseOrderGroupQty unique (PurchaseOrderCode, GroupQtyCode)
)
go

/*==============================================================*/
/* Table: PurchaseOrderHd                                       */
/*==============================================================*/
create table PurchaseOrderHd (
   PurchaseOrderCode    TransactionCode      not null,
   PurchaseOrderDate    DateWithTime         null,
   MaterialId           numeric              null,
   VendorContactId      numeric              null,
   CurrencyId           varchar(10)          null,
   EmployeeId           varchar(10)          null,
   VendorId             numeric              not null,
   ProjectId            numeric              null,
   OutletId             numeric              null,
   PurchaseOrderExternal varchar(30)          null,
   PaymentTerm          varchar(50)          null,
   Kurs                 CurrencyPlus         null,
   TglKirimAwal         DateWithoutTime      null,
   TglKirimAkhir        DateWithoutTime      null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         int                  null,
   FlagClose            Flag                 null,
   FlagAT               Flag                 null,
   StatusApprove        Status               null,
   StatusPurchaseOrder  Status               null,
   StatusLogCalculate   Status               null,
   constraint PK_PURCHASEORDERHD primary key nonclustered (PurchaseOrderCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Non Pajak, 1 = Pajak',
   'user', @CurrentUser, 'table', 'PurchaseOrderHd', 'column', 'FlagAT'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'BMI : (0=Bahan Penolong, 1=Bahan Square, 2=Bahan Log)
   BIG : (0)',
   'user', @CurrentUser, 'table', 'PurchaseOrderHd', 'column', 'StatusPurchaseOrder'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Cara Perhitungan:
   0=Kayu Rakyat (Rumus)
   1=Tabel',
   'user', @CurrentUser, 'table', 'PurchaseOrderHd', 'column', 'StatusLogCalculate'
go

/*==============================================================*/
/* Table: PurchaseOrderSpec                                     */
/*==============================================================*/
create table PurchaseOrderSpec (
   PurchaseOrderCode    varchar(30)          not null,
   SpecId               numeric              identity,
   SpecCode             varchar(10)          not null,
   TCut                 MeasurePlus          null,
   TMaxCut              MeasurePlus          null,
   LCut                 MeasurePlus          null,
   LMaxCut              MeasurePlus          null,
   PCut                 MeasurePlus          null,
   PMaxCut              MeasurePlus          null,
   TInv                 MeasurePlus          null,
   TMaxInv              MeasurePlus          null,
   TInterval            MeasurePlus          null,
   LInv                 MeasurePlus          null,
   LMaxInv              MeasurePlus          null,
   LInterval            MeasurePlus          null,
   PInv                 MeasurePlus          null,
   PMaxInv              MeasurePlus          null,
   PInterval            MeasurePlus          null,
   DAvgInv              MeasurePlus          null,
   DAvgInvMax           MeasurePlus          null,
   constraint PK_PurchaseOrderSpec primary key nonclustered (SpecId),
   constraint AK_PurchaseOrderSpec unique (PurchaseOrderCode, SpecCode)
)
go

/*==============================================================*/
/* Table: PurchasePrice                                         */
/*==============================================================*/
create table PurchasePrice (
   ItemId               numeric              not null,
   VendorId             numeric              not null,
   LastPI               varchar(15)          null,
   LastPINo             integer              null,
   Price                CurrencyPlus         not null,
   DiscItem             Disc                 null,
   DiscItemPrice        CurrencyPlus         null,
   DiscItem2            Disc                 null,
   DiscItemPrice2       CurrencyPlus         null,
   DateModified         DateWithoutTime      null,
   constraint PK_PurchasePrice primary key nonclustered (VendorId, ItemId)
)
go

/*==============================================================*/
/* Table: PurchasePriceList                                     */
/*==============================================================*/
create table PurchasePriceList (
   ItemId               numeric              not null,
   Price1               CurrencyPlus         null,
   Price2               CurrencyPlus         null,
   Price3               CurrencyPlus         null,
   Price4               CurrencyPlus         null,
   Price5               CurrencyPlus         null,
   Qty1                 QuantityPlus         null,
   Qty2                 QuantityPlus         null,
   Qty3                 QuantityPlus         null,
   Qty4                 QuantityPlus         null,
   Qty5                 QuantityPlus         null,
   MinQty1              QuantityPlus         null,
   MinQty2              QuantityPlus         null,
   MinQty3              QuantityPlus         null,
   MinQty4              QuantityPlus         null,
   MinQty5              QuantityPlus         null,
   LastModified         DateWithoutTime      not null,
   NewPrice1            CurrencyPlus         null,
   NewPrice2            CurrencyPlus         null,
   NewPrice3            CurrencyPlus         null,
   NewPrice4            CurrencyPlus         null,
   NewPrice5            CurrencyPlus         null,
   EffectiveDate        DateWithoutTime      null,
   ApproveDate          DateWithoutTime      null,
   FlagUpDown1          Flag                 null,
   FlagUpDown2          Flag                 null,
   FlagUpDown3          Flag                 null,
   FlagUpDown4          Flag                 null,
   FlagUpDown5          Flag                 null,
   StatusApprove        Status               not null,
   constraint PK_PurchasePriceList primary key nonclustered (ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Entry
   1 = Approved
   2 = Process',
   'user', @CurrentUser, 'table', 'PurchasePriceList', 'column', 'StatusApprove'
go

/*==============================================================*/
/* Table: ReceivingRecordDt                                     */
/*==============================================================*/
create table ReceivingRecordDt (
   ReceivingRecordCode  varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   Price                CurrencyPlus         null,
   PricePrint           CurrencyPlus         null,
   TotalQty             QuantityPlus         not null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   Amount               CurrencyPlus         null,
   constraint PK_RECEIVINGRECORDDT primary key nonclustered (ReceivingRecordCode, No),
   constraint AK_ReceivingRecordDt unique (ReceivingRecordCode, ItemId)
)
go

/*==============================================================*/
/* Table: ReceivingRecordHd                                     */
/*==============================================================*/
create table ReceivingRecordHd (
   ReceivingRecordCode  TransactionCode      not null,
   ReceivingRecordDate  DateWithTime         not null,
   VendorId             numeric              null,
   PurchaseOrderCode    varchar(30)          not null,
   TallymanId           numeric              not null,
   EmployeeId           varchar(10)          null,
   WarehouseId          numeric              not null,
   KayuMuatCode         TransactionCode      null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   CounterPrint         int                  null,
   StatusReceiving      Status               null,
   StatusApprove        Status               null,
   constraint PK_RECEIVINGRECORDHD primary key nonclustered (ReceivingRecordCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0=Pembelian
   1=Mutasi
   2=Retur Pembelian',
   'user', @CurrentUser, 'table', 'ReceivingRecordHd', 'column', 'StatusReceiving'
go

/*==============================================================*/
/* Table: ReceivingRecordSJ                                     */
/*==============================================================*/
create table ReceivingRecordSJ (
   ReceivingRecordCode  varchar(30)          not null,
   SJCode               TransactionCode      not null,
   SJDate               DateWithTime         null,
   NoPolisi             varchar(10)          null,
   Kendaraan            varchar(10)          null,
   NoFAKO               varchar(15)          null,
   FAKODate             DateWithTime         null,
   NoCont               varchar(10)          null,
   Description          MemoVarchar          null,
   constraint PK_RECEIVINGRECORDSJ primary key nonclustered (ReceivingRecordCode, SJCode)
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
/* Table: RoughSize                                             */
/*==============================================================*/
create table RoughSize (
   RoughSizeId          numeric              identity,
   MaterialId           numeric              not null,
   RoughSizeName        varchar(20)          not null,
   Min_T                MeasurePlus          not null,
   Max_T                MeasurePlus          not null,
   Min_P                MeasurePlus          not null,
   Max_P                MeasurePlus          not null,
   constraint PK_ROUGHSIZE primary key nonclustered (RoughSizeId)
)
go

/*==============================================================*/
/* Table: SBTB                                                  */
/*==============================================================*/
create table SBTB (
   SBTBCode             TransactionCode      not null,
   SBTBDate             datetime             null,
   MutasiId             numeric              null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   CounterPrint         int                  null,
   StatusApprove        Status               null,
   constraint PK_SBTB primary key nonclustered (SBTBCode),
   constraint AK_SBTB unique (SBTBCode)
)
go

/*==============================================================*/
/* Table: SBTBDt                                                */
/*==============================================================*/
create table SBTBDt (
   SBTBCode             TransactionCode      not null,
   No                   int                  not null,
   TallySheetCode       TransactionCode      not null,
   constraint Key_1 primary key (SBTBCode, No)
)
go

/*==============================================================*/
/* Table: SPKDt                                                 */
/*==============================================================*/
create table SPKDt (
   SPKCode              varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   Qty                  QuantityPlus         null,
   Description          MemoVarchar          null,
   EmployeeId           varchar(10)          null,
   constraint PK_SPKDT primary key nonclustered (SPKCode, No)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'No IKP',
   'user', @CurrentUser, 'table', 'SPKDt', 'column', 'SPKCode'
go

/*==============================================================*/
/* Table: SPKHd                                                 */
/*==============================================================*/
create table SPKHd (
   SPKCode              TransactionCode      not null,
   SPKDate              DateWithTime         not null,
   SalesOrderCode       varchar(30)          null,
   EmployeeId           varchar(10)          null,
   ProductionDate       DateWithTime         null,
   FinishDate           DateWithTime         null,
   ColorCode            varchar(15)          null,
   InternalMemo         MemoVarchar          null,
   StatementMemo        MemoVarchar          null,
   CounterPrint         int                  null,
   StatusApprove        Status               null,
   FlagUse              Flag                 null,
   FlagClose            Flag                 null,
   constraint PK_SPKHD primary key nonclustered (SPKCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'No IKP',
   'user', @CurrentUser, 'table', 'SPKHd', 'column', 'SPKCode'
go

/*==============================================================*/
/* Table: SPKItem                                               */
/*==============================================================*/
create table SPKItem (
   SPKCode              varchar(30)          not null,
   No                   int                  not null,
   ItemId               numeric              not null,
   QtySPK               QuantityPlus         null,
   Qty                  QuantityPlus         null,
   QtyOutstanding       QuantityPlus         null,
   ManualRoughSize_L    MeasurePlus          null,
   ManualRoughSize_P    MeasurePlus          null,
   constraint PK_SPKItem primary key (SPKCode, ItemId, No)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'No IKP',
   'user', @CurrentUser, 'table', 'SPKItem', 'column', 'SPKCode'
go

/*==============================================================*/
/* Table: SPKRendemen                                           */
/*==============================================================*/
create table SPKRendemen (
   SPKCode              varchar(30)          not null,
   MaterialId           numeric              not null,
   Rendemen             Disc                 not null,
   constraint PK_SPKRendemen primary key (SPKCode, MaterialId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'No IKP',
   'user', @CurrentUser, 'table', 'SPKRendemen', 'column', 'SPKCode'
go

/*==============================================================*/
/* Table: SalePrice                                             */
/*==============================================================*/
create table SalePrice (
   ItemId               numeric              not null,
   CustomerId           numeric              not null,
   LastSI               varchar(15)          null,
   LastSINo             integer              null,
   Price                CurrencyPlus         not null,
   DiscItem             Disc                 null,
   DiscItemPrice        CurrencyPlus         null,
   DiscItem2            Disc                 null,
   DiscItemPrice2       CurrencyPlus         null,
   DateModified         DateWithoutTime      null,
   constraint PK_SalesPrice primary key nonclustered (ItemId, CustomerId)
)
go

/*==============================================================*/
/* Table: SalePriceList                                         */
/*==============================================================*/
create table SalePriceList (
   ItemId               numeric              not null,
   Price1               CurrencyPlus         null,
   Price2               CurrencyPlus         null,
   Price3               CurrencyPlus         null,
   Price4               CurrencyPlus         null,
   Price5               CurrencyPlus         null,
   Qty1                 QuantityPlus         null,
   Qty2                 QuantityPlus         null,
   Qty3                 QuantityPlus         null,
   Qty4                 QuantityPlus         null,
   Qty5                 QuantityPlus         null,
   MinQty1              QuantityPlus         null,
   MinQty2              QuantityPlus         null,
   MinQty3              QuantityPlus         null,
   MinQty4              QuantityPlus         null,
   MinQty5              QuantityPlus         null,
   LastModified         DateWithoutTime      not null,
   NewPrice1            CurrencyPlus         null,
   NewPrice2            CurrencyPlus         null,
   NewPrice3            CurrencyPlus         null,
   NewPrice4            CurrencyPlus         null,
   NewPrice5            CurrencyPlus         null,
   EffectiveDate        DateWithoutTime      null,
   ApproveDate          DateWithoutTime      null,
   FlagUpDown1          Flag                 null,
   FlagUpDown2          Flag                 null,
   FlagUpDown3          Flag                 null,
   FlagUpDown4          Flag                 null,
   FlagUpDown5          Flag                 null,
   StatusApprove        Status               not null,
   constraint PK_SalePriceList primary key nonclustered (ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Entry
   1 = Approved
   2 = Process',
   'user', @CurrentUser, 'table', 'SalePriceList', 'column', 'StatusApprove'
go

/*==============================================================*/
/* Table: SalesOrderDt                                          */
/*==============================================================*/
create table SalesOrderDt (
   SalesOrderCode       varchar(30)          not null,
   No                   int                  not null,
   GroupQtyId           numeric              null,
   SpecId               numeric              null,
   ItemId               numeric              not null,
   EmployeeId           varchar(10)          null,
   Qty                  QuantityPlus         not null,
   QtyPrint             QuantityPlus         null,
   QtyMinMax            Status               null,
   QtyOutstanding       QuantityPlus         null,
   Price                CurrencyPlus         not null,
   PricePrint           CurrencyPlus         null,
   DiscItem             Disc                 null,
   DiscItemPrice        CurrencyPlus         null,
   DiscItem2            Disc                 null,
   DiscItemPrice2       CurrencyPlus         null,
   VoucherItem          CurrencyPlus         null,
   ItemTax              Disc                 null,
   ItemTaxPrice         CurrencyPlus         null,
   Amount               CurrencyPlus         null,
   Description          MemoVarchar          null,
   StatusDimensiPrice   Status               null,
   constraint PK_SalesOrderDt primary key nonclustered (SalesOrderCode, No),
   constraint AK_SalesOrderDt unique (SalesOrderCode, ItemId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Qty terkecil
   1 = Luas (m2) 
   2 = Kubikasi (m3)
   3 = Berat (kg)',
   'user', @CurrentUser, 'table', 'SalesOrderDt', 'column', 'StatusDimensiPrice'
go

/*==============================================================*/
/* Table: SalesOrderGroupQty                                    */
/*==============================================================*/
create table SalesOrderGroupQty (
   GroupQtyId           numeric              identity,
   SalesOrderCode       varchar(30)          not null,
   GroupQtyCode         varchar(10)          null,
   GroupQty             QuantityPlus         null,
   OutstandingGroupQty  QuantityPlus         null,
   constraint PK_SalesOrderGroupQty primary key nonclustered (GroupQtyId),
   constraint AK_SalesOrderGroupQty unique (SalesOrderCode, GroupQtyCode)
)
go

/*==============================================================*/
/* Table: SalesOrderHd                                          */
/*==============================================================*/
create table SalesOrderHd (
   SalesOrderCode       TransactionCode      not null,
   CustomerId           numeric              not null,
   CustomerContactId    numeric              null,
   CurrencyId           varchar(10)          null,
   EmployeeId           varchar(10)          null,
   SalesOrderExternal   varchar(30)          null,
   SalesOrderDate       DateWithTime         null,
   PaymentType          varchar(50)          null,
   Kurs                 CurrencyPlus         null,
   TglKirimAwal         DateWithoutTime      null,
   TglKirimAkhir        DateWithoutTime      null,
   StatementMemo        MemoVarchar          null,
   InternalMemo         MemoVarchar          null,
   CounterPrint         int                  null,
   FlagUse              Flag                 null,
   FlagClose            Flag                 null,
   FlagAT               Flag                 null,
   StatusApprove        Status               null,
   constraint PK_SALESORDERHD primary key nonclustered (SalesOrderCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Non Pajak, 1 = Pajak',
   'user', @CurrentUser, 'table', 'SalesOrderHd', 'column', 'FlagAT'
go

/*==============================================================*/
/* Table: SalesOrderSpec                                        */
/*==============================================================*/
create table SalesOrderSpec (
   SpecId               numeric              identity,
   SalesOrderCode       varchar(30)          not null,
   SpecCode             varchar(10)          null,
   TCut                 MeasurePlus          null,
   TMaxCut              MeasurePlus          null,
   LCut                 MeasurePlus          null,
   LMaxCut              MeasurePlus          null,
   PCut                 MeasurePlus          null,
   PMaxCut              MeasurePlus          null,
   TInv                 MeasurePlus          null,
   TMaxInv              MeasurePlus          null,
   LInv                 MeasurePlus          null,
   LMaxInv              MeasurePlus          null,
   PInv                 MeasurePlus          null,
   PMaxInv              MeasurePlus          null,
   TInterval            MeasurePlus          null,
   LInterval            MeasurePlus          null,
   PInterval            MeasurePlus          null,
   DAvgInv              MeasurePlus          null,
   DAvgInvMax           MeasurePlus          null,
   D14                  MeasurePlus          null,
   D14Max               MeasurePlus          null,
   DAvgInvInterval      MeasurePlus          null,
   constraint PK_SalesOrderSpec primary key nonclustered (SpecId),
   constraint AK_SalesOrderSpec unique (SalesOrderCode, SpecCode)
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
/* Table: Shipping                                              */
/*==============================================================*/
create table Shipping (
   ShippingId           numeric              identity,
   ShippingCode         varchar(10)          not null,
   ShippingName         varchar(40)          not null,
   CityId               varchar(5)           not null,
   ContactName          varchar(20)          null,
   Address              MemoVarchar          null,
   PhoneNo              varchar(20)          null,
   Memo                 MemoVarchar          null,
   constraint PK_Shipping primary key nonclustered (ShippingId),
   constraint AK_Shipping unique (ShippingCode)
)
go

/*==============================================================*/
/* Table: ShippingDestination                                   */
/*==============================================================*/
create table ShippingDestination (
   ShippingId           numeric              not null,
   CityId               varchar(5)           not null,
   PriceBerat           CurrencyPlus         null,
   PriceDimensi         CurrencyPlus         null,
   Memo                 MemoVarchar          null,
   constraint PK_SHIPPINGDESTINATION primary key nonclustered (ShippingId, CityId)
)
go

/*==============================================================*/
/* Table: StockBalance                                          */
/*==============================================================*/
create table StockBalance (
   WarehouseId          numeric              not null,
   ItemId               numeric              not null,
   Tahun                int                  not null,
   Bulan                int                  not null,
   QtyIn                Quantity             null,
   QtyOut               Quantity             null,
   QtyBalance           Quantity             null,
   ValueIn              Currency             null,
   ValueOut             Currency             null,
   ValueBalance         Currency             null,
   constraint PK_STOCKBALANCE primary key nonclustered (WarehouseId, ItemId, Tahun, Bulan)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Format : YYYY = 2009',
   'user', @CurrentUser, 'table', 'StockBalance', 'column', 'Tahun'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Format : MM = 1 s/d 12',
   'user', @CurrentUser, 'table', 'StockBalance', 'column', 'Bulan'
go

/*==============================================================*/
/* Table: StockOnHand                                           */
/*==============================================================*/
create table StockOnHand (
   WarehouseId          numeric              not null,
   ItemId               numeric              not null,
   TotalQty             QuantityPlus         null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   constraint PK_StockOnHand primary key nonclustered (WarehouseId, ItemId)
)
go

/*==============================================================*/
/* Table: StockOnHandDetail                                     */
/*==============================================================*/
create table StockOnHandDetail (
   WarehouseId          numeric              not null,
   ItemId               numeric              not null,
   StockOnHandDetailId  numeric              identity,
   TallySheetCode       TransactionCode      null,
   WarnaId              numeric              null,
   T                    MeasurePlus          null,
   L                    MeasurePlus          null,
   P                    MeasurePlus          null,
   D                    MeasurePlus          null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   D3                   MeasurePlus          null,
   D4                   MeasurePlus          null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   TotalQty             QuantityPlus         null,
   constraint PK_STOCKONHANDDETAIL primary key nonclustered (WarehouseId, ItemId, StockOnHandDetailId)
)
go

/*==============================================================*/
/* Table: StockOnHandValue                                      */
/*==============================================================*/
create table StockOnHandValue (
   WarehouseId          numeric              not null,
   ItemId               numeric              not null,
   COGSDate             DateWithTime         not null default getdate(),
   COGSQty              QuantityPlus         null,
   COGSValue            Currency             null,
   constraint PK_STOCKONHANDVALUE primary key nonclustered (WarehouseId, ItemId, COGSDate)
)
go

/*==============================================================*/
/* Table: TableLogDt                                            */
/*==============================================================*/
create table TableLogDt (
   TableLogId           numeric              not null,
   D                    MeasurePlus          not null,
   P                    MeasurePlus          not null,
   DConstanta           MeasurePlus          null,
   PConstanta           MeasurePlus          null,
   M3                   MeasurePlus          not null,
   constraint PK_TableLogDt primary key (TableLogId, D, P)
)
go

/*==============================================================*/
/* Table: TableLogHd                                            */
/*==============================================================*/
create table TableLogHd (
   TableLogId           numeric              identity,
   TableLogName         varchar(30)          not null,
   constraint PK_TableLogHd primary key (TableLogId)
)
go

/*==============================================================*/
/* Table: TableLogMaterial                                      */
/*==============================================================*/
create table TableLogMaterial (
   TableLogId           numeric              not null,
   MaterialId           numeric              not null,
   constraint PK_TableLogMaterial primary key (MaterialId, TableLogId),
   constraint AK_TableLogMaterial unique (MaterialId)
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
/* Table: TallySheet                                            */
/*==============================================================*/
create table TallySheet (
   TallySheetCode       TransactionCode      not null,
   TallySheetDate       DateWithTime         null,
   WarehouseId          numeric              null,
   PurchaseInvoiceCode  varchar(30)          null,
   ItemId               numeric              null,
   TallymanId           numeric              null,
   TotalQty             QuantityPlus         null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   LastTransaction      datetime             null,
   LastRef              varchar(10)          null,
   FlagUse              Flag                 null,
   DateUse              DateWithTime         null,
   COGS                 CurrencyPlus         null,
   TotalCOGS            CurrencyPlus         null,
   constraint PK_TallySheet primary key nonclustered (TallySheetCode)
)
go

/*==============================================================*/
/* Table: TallySheetDt                                          */
/*==============================================================*/
create table TallySheetDt (
   TallySheetCode       TransactionCode      not null,
   No                   int                  not null,
   T                    MeasurePlus          not null,
   L                    MeasurePlus          not null,
   P                    MeasurePlus          not null,
   Berat                BeratPlus            not null,
   D1                   MeasurePlus          null,
   D2                   MeasurePlus          null,
   DRata                MeasurePlus          null,
   M3                   VolumePlus           null,
   Luas                 LuasPlus             null,
   Qty                  QuantityPlus         not null,
   COGS                 CurrencyPlus         null,
   TotalCOGS            CurrencyPlus         null,
   constraint PK_TallySheetDt primary key (TallySheetCode, No, T, L, P, Berat)
)
go

/*==============================================================*/
/* Table: TallySheetGrade                                       */
/*==============================================================*/
create table TallySheetGrade (
   TallySheetGradeCode  TransactionCode      not null,
   GradeResultCode      TransactionCode      not null,
   TotalQtyInv          QuantityPlus         null,
   TotalLuasInv         LuasPlus             null,
   TotalVolumeInv       VolumePlus           null,
   TotalBeratInv        BeratPlus            null,
   TotalQtyCut          QuantityPlus         null,
   TotalLuasCut         LuasPlus             null,
   TotalVolumeCut       VolumePlus           null,
   TotalBeratCut        BeratPlus            null,
   FlagMuat             Flag                 null,
   constraint PK_TALLYSHEETGRADE primary key nonclustered (TallySheetGradeCode),
   constraint AK_TALLYSHEETGRADE unique (TallySheetGradeCode, GradeResultCode)
)
go

/*==============================================================*/
/* Table: TallySheetHistory                                     */
/*==============================================================*/
create table TallySheetHistory (
   TallySheetCode       TransactionCode      not null,
   TransactionDate      DateWithTime         not null,
   WarehouseId          numeric              null,
   ReferenceCode        TransactionCode      not null,
   ReferenceNo          integer              not null,
   StatusTransaction    Status               null,
   constraint PK_TallySheetHistory primary key (TallySheetCode, TransactionDate)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = LPB (Penerimaan)
   1 = Mutasi
   2 = OT (Transaksi Lain-Lain)
   3 = LHP (Produsi)',
   'user', @CurrentUser, 'table', 'TallySheetHistory', 'column', 'StatusTransaction'
go

/*==============================================================*/
/* Table: Tallyman                                              */
/*==============================================================*/
create table Tallyman (
   TallymanId           numeric              identity,
   TallymanCode         varchar(30)          null,
   TallymanName         varchar(30)          null,
   constraint PK primary key nonclustered (TallymanId)
)
go

/*==============================================================*/
/* Table: TransactionBalance                                    */
/*==============================================================*/
create table TransactionBalance (
   TransactionId        numeric              not null,
   QtyBalance           Quantity             not null,
   constraint PK_TransactionBalance primary key nonclustered (TransactionId)
)
go

/*==============================================================*/
/* Table: TransactionRecord                                     */
/*==============================================================*/
create table TransactionRecord (
   TransactionId        numeric              identity,
   TransactionTypeId    integer              not null,
   ItemId               numeric              not null,
   WarehouseId          numeric              not null,
   TransactionDate      DateWithTime         not null default getdate(),
   ReferenceCode        varchar(30)          not null,
   ReferenceNo          integer              not null,
   TotalQty             QuantityPlus         not null,
   TotalLuas            LuasPlus             null,
   TotalVolume          VolumePlus           null,
   TotalBerat           BeratPlus            null,
   Price                CurrencyPlus         not null,
   SystemStamp          DateWithTime         null default getdate(),
   constraint PK_TRANSACTIONRECORD primary key nonclustered (TransactionId),
   constraint AK_TransactionRecord unique (TransactionDate, ReferenceCode, ReferenceNo)
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
/* Table: TransactionType                                       */
/*==============================================================*/
create table TransactionType (
   TransactionTypeId    integer              not null,
   TransactionTypeCode  varchar(10)          not null,
   TransactionTypeName  varchar(50)          not null,
   StatusTransaction    Status               null,
   StatusPairTransaction Flag                 null,
   FlagFix              Flag                 null,
   constraint PK_TRANSACTIONTYPE primary key nonclustered (TransactionTypeId),
   constraint AK_TRANSACTIONTYPE unique (TransactionTypeCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0=In, 1=Out, 2=Mutasi',
   'user', @CurrentUser, 'table', 'TransactionType', 'column', 'StatusTransaction'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0=Not Pair Transaction
   1=Pair Transaction for Mutasi
       *   Nilai Transaction In = Nilai Transaction Out
           Qty, Barang -> tidak berubah
           Gudang -> berubah
   2=Pair Transaction for Production
       *   Nilai Transaction In = Nilai Transaction Out
           Qty, Barang, Gudang -> bisa berubah.
   ',
   'user', @CurrentUser, 'table', 'TransactionType', 'column', 'StatusPairTransaction'
go

/*==============================================================*/
/* Table: TransactionValue                                      */
/*==============================================================*/
create table TransactionValue (
   TransactionValueId   numeric              identity,
   TransactionId        numeric              not null,
   COGSDate             DateWithTime         not null default getdate(),
   Qty                  QuantityPlus         not null,
   COGS                 Currency             not null,
   SalePrice            Currency             null,
   QtyReturn            QuantityPlus         null,
   TotalCOGS            Currency             null,
   TotalCOGSRounded     Currency             null,
   TotalSales           Currency             null,
   TotalReturn          Currency             null,
   Margin               Disc                 null,
   "Percent"            PercentBig           null,
   TotalMargin          Currency             null,
   TotalPercent         PercentBig           null,
   constraint PK_TRANSACTIONVALUE primary key nonclustered (TransactionValueId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Digunakan apabila status item = Service (0) atau Non-Stock (2)
   Margin berupa prosentase keuntungan yang diperoleh dari harga jual',
   'user', @CurrentUser, 'table', 'TransactionValue', 'column', 'Margin'
go

/*==============================================================*/
/* Table: Vendor                                                */
/*==============================================================*/
create table Vendor (
   VendorId             numeric              identity,
   VendorCategoryId     numeric              null,
   CityId               varchar(5)           null,
   VendorCode           varchar(10)          not null,
   VendorName           varchar(40)          not null,
   Address              MemoVarchar          null,
   Email                varchar(50)          null,
   MemberId             varchar(15)          null,
   VendorSince          DateWithTime         not null default getdate(),
   NPWP                 varchar(30)          null,
   CreditLimit          Currency             not null,
   InvoiceDue           int                  null,
   DepositBalance       Currency             not null,
   Memo                 text                 null,
   constraint PK_VENDOR primary key nonclustered (VendorId),
   constraint AK_VENDOR unique (VendorCode)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Tanggal kita join dengan supplier',
   'user', @CurrentUser, 'table', 'Vendor', 'column', 'VendorSince'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Batas AR',
   'user', @CurrentUser, 'table', 'Vendor', 'column', 'CreditLimit'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Default Jatuh Tempo Nota',
   'user', @CurrentUser, 'table', 'Vendor', 'column', 'InvoiceDue'
go

/*==============================================================*/
/* Table: VendorCategory                                        */
/*==============================================================*/
create table VendorCategory (
   VendorCategoryId     numeric              identity,
   CategoryName         varchar(20)          not null,
   constraint PK_VENDORCATEGORY primary key nonclustered (VendorCategoryId)
)
go

/*==============================================================*/
/* Table: VendorContact                                         */
/*==============================================================*/
create table VendorContact (
   VendorContactId      numeric              identity,
   VendorId             numeric              not null,
   VendorContactName    varchar(20)          not null,
   JobPosition          varchar(20)          null,
   Address              varchar(50)          null,
   CountryExt           varchar(4)           null,
   CityExt              varchar(4)           null,
   PhoneNo              varchar(20)          null,
   Email                varchar(50)          null,
   Religi               varchar(10)          null,
   Memo                 text                 null,
   constraint PK_VENDORCONTACT primary key nonclustered (VendorContactId)
)
go

/*==============================================================*/
/* Table: VendorPhone                                           */
/*==============================================================*/
create table VendorPhone (
   VendorId             numeric              not null,
   OrderNo              int                  null,
   PhoneName            varchar(20)          not null,
   CountryExt           varchar(4)           null,
   CityExt              varchar(4)           null,
   PhoneNo              varchar(20)          null,
   constraint PK_VENDORPHONE primary key nonclustered (VendorId, PhoneName)
)
go

/*==============================================================*/
/* Table: VendorShippingDetail                                  */
/*==============================================================*/
create table VendorShippingDetail (
   VendorId             numeric              not null,
   ShippingId           numeric              not null,
   constraint PK_VendorShippingDetail primary key nonclustered (VendorId, ShippingId)
)
go

/*==============================================================*/
/* Table: Warehouse                                             */
/*==============================================================*/
create table Warehouse (
   WarehouseId          numeric              identity,
   CityId               varchar(5)           null,
   WarehouseCode        varchar(10)          not null,
   WarehouseName        varchar(40)          not null,
   ContactName          varchar(20)          null,
   Address              varchar(60)          null,
   PriceDimensi         CurrencyPlus         null,
   Memo                 text                 null,
   FlagInactive         Flag                 null,
   constraint PK_WAREHOUSE primary key nonclustered (WarehouseId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0 = Active
   1 = Resign',
   'user', @CurrentUser, 'table', 'Warehouse', 'column', 'FlagInactive'
go

/*==============================================================*/
/* Table: Warna                                                 */
/*==============================================================*/
create table Warna (
   WarnaId              numeric              identity,
   WarnaCode            varchar(10)          not null,
   WarnaName            varchar(20)          null,
   constraint PK_WARNA primary key nonclustered (WarnaId),
   constraint AK_WARNA unique (WarnaCode)
)
go

/*==============================================================*/
/* View: vwItemWarehouse                                        */
/*==============================================================*/
create view vwItemWarehouse as
select 
  a.WarehouseId, a.WarehouseName, 
  b.ItemId, b.ItemCode, b.ItemName, b.UnitMeasure, b.ItemCategoryId, 
  c.ItemCategoryName
from Warehouse a, Item b
left join ItemCategory c on c.ItemCategoryId = b.ItemCategoryId
go

/*==============================================================*/
/* View: vwSPKItemRoughSizeM2                                   */
/*==============================================================*/
create view vwSPKItemRoughSizeM2 as
select
  a.SPKCode,
  c.ItemName as ItemNameBOM,                                                                 
  d.ItemCode, d.ItemName, f.MaterialCode, 
  (a.Qty / b.Qty) as QtyBOM,
  d.T, d.L, d.P, a.Qty,
  (d.M2 * a.Qty) as M2,                   
  (select max(x.RoughSizeName)
  from RoughSize x
  where d.T between x.Min_T and x.Max_T
  and d.P between x.Min_P and x.Max_P
  and x.MaterialId = d.MaterialId) as RoughSizeName,
  e.ItemCategoryCode,
  d.StatusProduction,
  f.MaterialName,
  IsNull(g.Rendemen, 100) as Rendemen,
  cast((d.M2 * a.Qty * 100) / IsNull(g.Rendemen, 100) as decimal(10,4)) as RendemenM2
from SPKItem a
left join SPKDt b on (a.SPKCode = b.SPKCode and a.No = b.No)                                                                                                                                       
left join Item c on b.ItemId = c.ItemId -- Item BOM                           
left join Item d on a.ItemId = d.ItemId -- Item RAW
left join ItemCategory e on d.ItemCategoryId = e.ItemCategoryId    
left join Material f on d.MaterialId = f.MaterialId
left join SPKRendemen g on (a.SPKCode = g.SPKCode and d.MaterialId = g.MaterialId)
go

/*==============================================================*/
/* View: vwSPKItemRoughSizeM3                                   */
/*==============================================================*/
create view vwSPKItemRoughSizeM3 as
select
  a.SPKCode,
  c.ItemName as ItemNameBOM,                                                                 
  d.ItemCode, d.ItemName, f.MaterialCode, 
  (a.Qty / b.Qty) as QtyBOM,
  d.T, d.L, d.P, a.Qty,
  (d.M3 * a.Qty) as M3,                   
  (select max(x.RoughSizeName)
  from RoughSize x
  where d.T between x.Min_T and x.Max_T
  and d.P between x.Min_P and x.Max_P
  and x.MaterialId = d.MaterialId) as RoughSizeName,
  e.ItemCategoryCode,
  d.StatusProduction,
  f.MaterialName,
  IsNull(g.Rendemen, 100) as Rendemen,
  cast((d.M3 * a.Qty * 100) / IsNull(g.Rendemen, 100) as decimal(10,4)) as RendemenM3
from SPKItem a
left join SPKDt b on (a.SPKCode = b.SPKCode and a.No = b.No)                                                                                                                                       
left join Item c on b.ItemId = c.ItemId -- Item BOM                           
left join Item d on a.ItemId = d.ItemId -- Item RAW
left join ItemCategory e on d.ItemCategoryId = e.ItemCategoryId    
left join Material f on d.MaterialId = f.MaterialId
left join SPKRendemen g on (a.SPKCode = g.SPKCode and d.MaterialId = g.MaterialId)
go

alter table BillMaterialDt
   add constraint Data_BOM_dipakai_oleh_detailnya foreign key (Bil_ItemId)
      references BillMaterialHd (ItemId)
go

alter table BillMaterialDt
   add constraint Data_barang_dipakai_oleh_detail_BOM foreign key (ItemId)
      references Item (ItemId)
go

alter table BillMaterialDt
   add constraint Data_pegawai_dipakai_oleh_detail_BOM foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table BillMaterialHd
   add constraint Data_barang_dipakai_oleh_BOM foreign key (ItemId)
      references Item (ItemId)
go

alter table BillMaterialHd
   add constraint Data_pegawai_dipakai_oleh_BOM foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table ChartOfAccount
   add constraint Data_COA_dipakai_oleh_COA_detail foreign key (COAIdParent)
      references ChartOfAccount (COAId)
go

alter table City
   add constraint Data_propinsi_dipakai_oleh_kota foreign key (ProvinceId)
      references Province (ProvinceId)
go

alter table CostingEstimate
   add constraint Data_costing_dipakai_oleh_perkiraan_costing foreign key (CostingCode)
      references CostingHd (CostingCode)
go

alter table CostingEstimate
   add constraint Data_mata_uang_dipakai_oleh_perkiraan_costing foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table CostingHd
   add constraint Data_BOM_dipakai_oleh_costing foreign key (ItemId)
      references BillMaterialHd (ItemId)
go

alter table CostingHd
   add constraint Data_pegawai_dipakai_oleh_costing foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table CostingItem
   add constraint Data_barang_dipakai_oleh_costing foreign key (ItemId)
      references Item (ItemId)
go

alter table CostingItem
   add constraint Data_costing_detail_dipakai_oleh_costing foreign key (CostingCode)
      references CostingHd (CostingCode)
go

alter table CostingItem
   add constraint Data_mata_uang_dipakai_oleh_costing_harga_beli foreign key (CurrencyIdPurchase)
      references CurrencyMaster (CurrencyId)
go

alter table CostingItem
   add constraint Data_mata_uang_dipakai_oleh_costing_harga_stock foreign key (CurrencyIdStock)
      references CurrencyMaster (CurrencyId)
go

alter table CostingItem
   add constraint Data_mata_uang_dipakai_oleh_costing_per_item foreign key (CurrencyIdCosting)
      references CurrencyMaster (CurrencyId)
go

alter table CostingKurs
   add constraint Data_costing_dipakai_oleh_kurs_costing foreign key (CostingCode)
      references CostingHd (CostingCode)
go

alter table CostingKurs
   add constraint Data_mata_uang_dipakai_oleh_kurs_costing foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table CostingPrice
   add constraint Data_barang_dipakai_oleh_harga_costing foreign key (ItemId)
      references Item (ItemId)
go

alter table CostingPrice
   add constraint Data_mata_uang_dipakai_oleh_harga_costing foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
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

alter table CustomerShippingDetail
   add constraint Data_customer_dipakai_oleh_ekspedisi_customer foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table CustomerShippingDetail
   add constraint Data_ekspedisi_dipakai_oleh_ekspedisi_customer foreign key (ShippingId)
      references Shipping (ShippingId)
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

alter table Engine
   add constraint Data_unit_produksi_dipakai_oleh_mesin foreign key (ProductionUnitId)
      references ProductionUnit (ProductionUnitId)
go

alter table GeneralLedger
   add constraint Data_COA_dipakai_oleh_GL foreign key (COAId)
      references ChartOfAccount (COAId)
go

alter table GradeResultCuttingDt
   add constraint Data_barang_dipakai_oleh_hasil_grade_cutting foreign key (ItemId)
      references Item (ItemId)
go

alter table GradeResultCuttingDt
   add constraint Data_hasil_grade_dipakai_oleh_hasil_grade_cutting foreign key (GradeResultCode)
      references GradeResultHd (GradeResultCode)
go

alter table GradeResultCuttingDt
   add constraint Data_tally_dipakai_oleh_hasil_grade_cutting foreign key (TallySheetGradeCode)
      references TallySheetGrade (TallySheetGradeCode)
go

alter table GradeResultHd
   add constraint Data_grader_dipakai_oleh_hasil_grade foreign key (GraderId)
      references Grader (GraderId)
go

alter table GradeResultHd
   add constraint Data_koordinator_grader_dipakai_oleh_hasil_grade foreign key (KoorGraderId)
      references KoorGrader (KoorGraderId)
go

alter table GradeResultHd
   add constraint Data_order_pembelian_dipakai_oleh_hasil_grade foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table GradeResultHd
   add constraint Data_pegawai_yang_membuat_hasil_grade foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table GradeResultHd
   add constraint Data_tallyman_dipakai_oleh_hasil_grade foreign key (TallymanId)
      references Tallyman (TallymanId)
go

alter table GradeResultInvoiceDt
   add constraint Data_barang_dipakai_oleh_hasil_grade_invoice foreign key (ItemId)
      references Item (ItemId)
go

alter table GradeResultInvoiceDt
   add constraint Data_hasil_grade_dipakai_oleh_hasil_grade_invoice foreign key (GradeResultCode)
      references GradeResultHd (GradeResultCode)
go

alter table GradeResultInvoiceDt
   add constraint Data_tally_hasil_grade_dipakai_oleh_hasil_grade_invoice foreign key (TallySheetGradeCode)
      references TallySheetGrade (TallySheetGradeCode)
go

alter table Item
   add constraint Data_kategori_barang_dipakai_oleh_barang foreign key (ItemCategoryId)
      references ItemCategory (ItemCategoryId)
go

alter table Item
   add constraint Data_material_dipakai_oleh_master_barang foreign key (MaterialId)
      references Material (MaterialId)
go

alter table Item
   add constraint Data_pegawai_dipakai_oleh_master_barang foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table ItemDt
   add constraint Data_detail_barang_dipakai_oleh_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table ItemMinStock
   add constraint Data_barang_dipakai_oleh_stok_minimum_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table ItemMinStock
   add constraint Data_gudang_dipakai_oleh_minimum_stok_barang foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table ItemMinStock
   add constraint Data_pegawai_dipakai_oleh_minimum_stok_barang foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table ItemOrderBalance
   add constraint Data_barang_dipakai_oleh_order_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table JobPosition
   add constraint Data_departemen_dipakai_oleh_posisi_pekerjaan foreign key (DepartmentId)
      references Department (DepartmentId)
go

alter table JournalDt
   add constraint Data_COA_dipakai_oleh_journal foreign key (COAId)
      references ChartOfAccount (COAId)
go

alter table JournalDt
   add constraint Data_journal_dipakai_oleh_journal_detail foreign key (JournalId)
      references JournalHd (JournalId)
go

alter table JournalHd
   add constraint Data_pegawai_dipakai_oleh_journal foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table KayuMuatDt
   add constraint Data_kayu_muat_dipakai_oleh_kayu_muat_detail foreign key (KayuMuatCode)
      references KayuMuatHd (KayuMuatCode)
go

alter table KayuMuatDt
   add constraint Data_tally_hasil_grade_dipakai_oleh_kayu_muat foreign key (TallySheetGradeCode)
      references TallySheetGrade (TallySheetGradeCode)
go

alter table KayuMuatHd
   add constraint Data_order_pembelian_dipakai_oleh_kayu_muat foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table KayuMuatHd
   add constraint Data_pegawai_dipakai_oleh_kayu_muat foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table KayuMuatHd
   add constraint Reference_36 foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table LogProgram
   add constraint Data_tipe_log_dipakai_oleh_log_program foreign key (LogTypeId)
      references LogType (LogTypeId)
go

alter table MutasiDt
   add constraint Data_item_dipakai_oleh_detail_mutasi foreign key (ItemId)
      references Item (ItemId)
go

alter table MutasiDt
   add constraint Data_mutasi_dipakai_oleh_mutasi_detail foreign key (MutasiId)
      references MutasiHd (MutasiId)
go

alter table MutasiDt
   add constraint Data_tally_dipakai_oleh_mutasi foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table MutasiHd
   add constraint Data_gudang_dipakai_oleh_gudang_asal_mutasi foreign key (WarehouseIdSource)
      references Warehouse (WarehouseId)
go

alter table MutasiHd
   add constraint Data_gudang_dipakai_oleh_mutasi foreign key (WarehouseIdDest)
      references Warehouse (WarehouseId)
go

alter table MutasiHd
   add constraint Data_pegawai_dipakai_oleh_mutasi foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table MutasiHd
   add constraint Data_tipe_transaksi_dipakai_oleh_mutasi foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
go

alter table MutasiSJ
   add constraint Data_mutasi_dipakai_oleh_surat_jalan_mutasi foreign key (MutasiId)
      references MutasiHd (MutasiId)
go

alter table OtherTransactionDt
   add constraint Data_Item_dipakai_oleh_detail_transaksi_lain foreign key (ItemId)
      references Item (ItemId)
go

alter table OtherTransactionDt
   add constraint Data_pegawai_di_pakai_oleh_detail_transaksi_lain foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table OtherTransactionDt
   add constraint Data_transaksi_lain_dipakai_oleh_detail_transaksi_lain foreign key (OtherTransactionCode)
      references OtherTransactionHd (OtherTransactionCode)
go

alter table OtherTransactionHd
   add constraint Data_gudang_dipakai_oleh_transaksi_lain foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table OtherTransactionHd
   add constraint Data_pegawai_dipakai_oleh_transaksi_lain foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table OtherTransactionHd
   add constraint Data_tipe_transaksi_dipakai_oleh_transaksi_lain foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
go

alter table PositionAccess
   add constraint Data_position_pekerjaan_dipakai_oleh_security_program foreign key (PositionId)
      references JobPosition (PositionId)
go

alter table ProductionHd
   add constraint Data_SPK_dipakai_oleh_produksi foreign key (SPKCode)
      references SPKHd (SPKCode)
go

alter table ProductionHd
   add constraint Data_pegawai_dipakai_oleh_produksi foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table ProductionHd
   add constraint Data_unit_produksi_dipakai_oleh_produksi foreign key (ProductionUnitId)
      references ProductionUnit (ProductionUnitId)
go

alter table ProductionIn
   add constraint Data_gudang_dipakai_oleh_input_produksi foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table ProductionIn
   add constraint Data_produksi_dipakai_oleh_detail_produksi foreign key (ProductionId)
      references ProductionHd (ProductionId)
go

alter table ProductionIn
   add constraint Data_tally_dipakai_oleh_input_unit_produksi foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table ProductionMiss
   add constraint Reference_24 foreign key (ProductionId)
      references ProductionHd (ProductionId)
go

alter table ProductionMiss
   add constraint Reference_35 foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table ProductionOut
   add constraint Data_produksi_dipakai_oleh_output_produksi foreign key (ProductionId)
      references ProductionHd (ProductionId)
go

alter table ProductionOut
   add constraint Data_tally_dipakai_oleh_output_produksi foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table ProductionRejected
   add constraint Data_produksi_dipakai_oleh_afkir_produksi foreign key (ProductionId)
      references ProductionHd (ProductionId)
go

alter table ProductionRejected
   add constraint Data_tally_dipakai_oleh_afkir_produksi foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table ProductionUnit
   add constraint Data_gudang_dipakai_oleh_unit_produksi_gudang_input foreign key (WarehouseIdSource)
      references Warehouse (WarehouseId)
go

alter table ProductionUnit
   add constraint Data_gudang_dipakai_oleh_unit_produksi_gudang_output foreign key (WarehouseIdDest)
      references Warehouse (WarehouseId)
go

alter table ProductionWaste
   add constraint Data_produksi_dipakai_oleh_sisa_produksi foreign key (ProductionId)
      references ProductionHd (ProductionId)
go

alter table ProductionWaste
   add constraint Reference_34 foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table Province
   add constraint Data_negara_dipakai_oleh_propinsi foreign key (CountryId)
      references Country (CountryId)
go

alter table PurchaseInvoiceDt
   add constraint Data_barang_dipakai_oleh_nota_pembelian_detail foreign key (ItemId)
      references Item (ItemId)
go

alter table PurchaseInvoiceDt
   add constraint Data_nota_pembelian_dipakai_oleh_nota_pembelian_detail foreign key (PurchaseInvoiceCode)
      references PurchaseInvoiceHd (PurchaseInvoiceCode)
go

alter table PurchaseInvoiceDt
   add constraint Data_pegawai_dipakai_oleh_nota_pembelian_detail foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table PurchaseInvoiceHd
   add constraint Data_contact_person_supplier_dipakai_oleh_nota_pembelian foreign key (VendorContactId)
      references VendorContact (VendorContactId)
go

alter table PurchaseInvoiceHd
   add constraint Data_ekspedisi_dipakai_oleh_nota_pembelian foreign key (ShippingId)
      references Shipping (ShippingId)
go

alter table PurchaseInvoiceHd
   add constraint Data_gudang_dipakai_oleh_nota_pembelian foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table PurchaseInvoiceHd
   add constraint Data_kategori_nota_dipakai_oleh_nota_pembelian foreign key (PurchaseCategoryId)
      references PurchaseCategory (PurchaseCategoryId)
go

alter table PurchaseInvoiceHd
   add constraint Data_mata_uang_dipakai_oleh_nota_pembelian foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table PurchaseInvoiceHd
   add constraint Data_order_pembelian_dipakai_oleh_nota_pembelian foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table PurchaseInvoiceHd
   add constraint Data_outlet_dipakai_oleh_nota_pembelian foreign key (OutletId)
      references Outlet (OutletId)
go

alter table PurchaseInvoiceHd
   add constraint Data_pegawai_dipakai_oleh_pembelian foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table PurchaseInvoiceHd
   add constraint Data_penerimaan_dipakai_oleh_nota_pembelian foreign key (ReceivingRecordCode)
      references ReceivingRecordHd (ReceivingRecordCode)
go

alter table PurchaseInvoiceHd
   add constraint Data_proyek_dipakai_oleh_nota_pembelian foreign key (ProjectId)
      references Project (ProjectId)
go

alter table PurchaseInvoiceHd
   add constraint Data_supplier_dipakai_oleh_pembelian foreign key (VendorId)
      references Vendor (VendorId)
go

alter table PurchaseOrderDt
   add constraint Data_barang_dipakai_oleh_order_pembelian foreign key (ItemId)
      references Item (ItemId)
go

alter table PurchaseOrderDt
   add constraint Data_group_order_pembelian_dipakai_oleh_order_pembelian foreign key (GroupQtyId)
      references PurchaseOrderGroupQty (GroupQtyId)
go

alter table PurchaseOrderDt
   add constraint Data_order_pembelian_dipakai_oleh_detail_order_pembelian foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table PurchaseOrderDt
   add constraint Data_pegawai_dipakai_oleh_detail_order_pembelian foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table PurchaseOrderDt
   add constraint Data_spesifikasi_order_pembelian_dipakai_oleh_order_pembelian foreign key (SpecId)
      references PurchaseOrderSpec (SpecId)
go

alter table PurchaseOrderGroupQty
   add constraint Data_order_pembelian_dipakai_oleh_group_order_pembelian foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table PurchaseOrderHd
   add constraint Data_contact_person_supplier_dipakai_oleh_order_pembelian foreign key (VendorContactId)
      references VendorContact (VendorContactId)
go

alter table PurchaseOrderHd
   add constraint Data_mata_uang_dipakai_oleh_order_pembelian foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table PurchaseOrderHd
   add constraint Data_material_dipakai_oleh_order_pembelian foreign key (MaterialId)
      references Material (MaterialId)
go

alter table PurchaseOrderHd
   add constraint Data_outlet_dipakai_oleh_order_pembelian foreign key (OutletId)
      references Outlet (OutletId)
go

alter table PurchaseOrderHd
   add constraint Data_pegawai_dipakai_oleh_order_pembelian foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table PurchaseOrderHd
   add constraint Data_proyek_dipakai_oleh_order_pembelian foreign key (ProjectId)
      references Project (ProjectId)
go

alter table PurchaseOrderHd
   add constraint Data_supplier_dipakai_oleh_order_pembelian foreign key (VendorId)
      references Vendor (VendorId)
go

alter table PurchaseOrderSpec
   add constraint Data_order_pembelian_dipakai_oleh_spesifikasi_order_pembelian foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table PurchasePrice
   add constraint Data_barang_dipakai_oleh_harga_beli_per_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table PurchasePrice
   add constraint Data_harga_beli_dipakai_oleh_vendor foreign key (VendorId)
      references Vendor (VendorId)
go

alter table PurchasePriceList
   add constraint Data_barang_dipakai_oleh_price_list_pembelian foreign key (ItemId)
      references Item (ItemId)
go

alter table ReceivingRecordDt
   add constraint Data_barang_dipakai_oleh_penerimaan_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table ReceivingRecordDt
   add constraint Data_peneriamaan_barang_dipakai_oleh_penerimaan_barang_detail foreign key (ReceivingRecordCode)
      references ReceivingRecordHd (ReceivingRecordCode)
go

alter table ReceivingRecordHd
   add constraint Data_gudang_dipakai_oleh_penerimaan_barang foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table ReceivingRecordHd
   add constraint Data_kayu_muat_dipakai_oleh_penerimaan_barang foreign key (KayuMuatCode)
      references KayuMuatHd (KayuMuatCode)
go

alter table ReceivingRecordHd
   add constraint Data_order_pembelian_dipakai_oleh_penerimaan_barang foreign key (PurchaseOrderCode)
      references PurchaseOrderHd (PurchaseOrderCode)
go

alter table ReceivingRecordHd
   add constraint Data_pegawai_dipakai_oleh_penerimaan_barang foreign key (EmployeeId)
      references Employee (EmployeeId)
         on update cascade on delete cascade
go

alter table ReceivingRecordHd
   add constraint Data_supplier_dipakai_oleh_penerimaan_barang foreign key (VendorId)
      references Vendor (VendorId)
go

alter table ReceivingRecordHd
   add constraint Data_tallyman_dipakai_oleh_penerimaan_barang foreign key (TallymanId)
      references Tallyman (TallymanId)
go

alter table ReceivingRecordSJ
   add constraint Data_penerimaan_barang_dipakai_oleh_surat_jalan foreign key (ReceivingRecordCode)
      references ReceivingRecordHd (ReceivingRecordCode)
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

alter table RoughSize
   add constraint Data_material_dipakai_oleh_master_rough_size foreign key (MaterialId)
      references Material (MaterialId)
         on update cascade on delete cascade
go

alter table SBTB
   add constraint Data_mutasi_dipakai_oleh_SBTB foreign key (MutasiId)
      references MutasiHd (MutasiId)
go

alter table SBTBDt
   add constraint Data_SBTB_dipakai_oleh_SBTB_detail foreign key (SBTBCode)
      references SBTB (SBTBCode)
go

alter table SBTBDt
   add constraint Data_tally_dipakai_oleh_SBTB_detail foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table SPKDt
   add constraint Data_BOM_dipakai_oleh_detail_SPK foreign key (ItemId)
      references BillMaterialHd (ItemId)
go

alter table SPKDt
   add constraint Data_SPK_dipakai_oleh_SPK_detail foreign key (SPKCode)
      references SPKHd (SPKCode)
go

alter table SPKDt
   add constraint Data_pegawai_dipakai_oleh_SPK_detail foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table SPKHd
   add constraint Data_order_penjualan_dipakai_oleh_SPK foreign key (SalesOrderCode)
      references SalesOrderHd (SalesOrderCode)
go

alter table SPKHd
   add constraint Data_pegawai_dipakai_oleh_SPK foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table SPKItem
   add constraint Data_barang_dipakai_oleh_SPK foreign key (ItemId)
      references Item (ItemId)
go

alter table SPKItem
   add constraint Data_barang_jadi_SPK_dipakai_oleh_bahan_baku_SPK foreign key (SPKCode, No)
      references SPKDt (SPKCode, No)
         on update cascade on delete cascade
go

alter table SPKRendemen
   add constraint Data_SPK_dipakai_oleh_rendemen_SPK foreign key (SPKCode)
      references SPKHd (SPKCode)
go

alter table SPKRendemen
   add constraint Data_material_dipakai_oleh_rendemen_SPK foreign key (MaterialId)
      references Material (MaterialId)
go

alter table SalePrice
   add constraint Data_barang_dipakai_oleh_harga_jual_per_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table SalePrice
   add constraint Data_harga_jual_dipakai_oleh_customer foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table SalePriceList
   add constraint Data_barang_dipakai_oleh_price_list_penjualan foreign key (ItemId)
      references Item (ItemId)
go

alter table SalesOrderDt
   add constraint Data_barang_dipakai_oleh_order_penjualan foreign key (ItemId)
      references Item (ItemId)
go

alter table SalesOrderDt
   add constraint Data_group_order_penjualan_dipakai_oleh_order_penjualan foreign key (GroupQtyId)
      references SalesOrderGroupQty (GroupQtyId)
go

alter table SalesOrderDt
   add constraint Data_order_penjualan_dipakai_oleh_detail_order_penjualan foreign key (SalesOrderCode)
      references SalesOrderHd (SalesOrderCode)
go

alter table SalesOrderDt
   add constraint Data_pegawai_dipakai_oleh_detail_order_penjualan foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table SalesOrderDt
   add constraint Data_spesifikasi_order_penjualan_dipakai_oleh_order_penjualan foreign key (SpecId)
      references SalesOrderSpec (SpecId)
go

alter table SalesOrderGroupQty
   add constraint Data_order_penjualan_dipakai_oleh_group_order_penjualan foreign key (SalesOrderCode)
      references SalesOrderHd (SalesOrderCode)
go

alter table SalesOrderHd
   add constraint Data_contact_customer_dipakai_oleh_order_penjualan foreign key (CustomerContactId)
      references CustomerContact (CustomerContactId)
go

alter table SalesOrderHd
   add constraint Data_customer_dipakai_oleh_order_penjualan foreign key (CustomerId)
      references Customer (CustomerId)
go

alter table SalesOrderHd
   add constraint Data_mata_uang_dipakai_oleh_order_penjualan foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
go

alter table SalesOrderHd
   add constraint Data_pegawai_dipakai_oleh_order_penjualan foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table SalesOrderSpec
   add constraint Data_order_penjualan_dipakai_oleh_spesifikasi_order_penjualan foreign key (SalesOrderCode)
      references SalesOrderHd (SalesOrderCode)
go

alter table Shipping
   add constraint Data_kota_dari_ekspedisi foreign key (CityId)
      references City (CityId)
go

alter table ShippingDestination
   add constraint Data_ekspedisi_dipakai_oleh_tujuan_pengiriman foreign key (ShippingId)
      references Shipping (ShippingId)
go

alter table ShippingDestination
   add constraint Data_kota_dipakai_dalam_tujuan_pengiriman foreign key (CityId)
      references City (CityId)
go

alter table StockBalance
   add constraint Data_barang_dipakai_oleh_saldo_stok_barang foreign key (ItemId)
      references Item (ItemId)
go

alter table StockBalance
   add constraint Data_gudang_dipakai_oleh_saldo_stok_barang foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table StockOnHand
   add constraint Data_barang_dipakai_oleh_stok foreign key (ItemId)
      references Item (ItemId)
go

alter table StockOnHand
   add constraint Data_gudang_dipakai_oleh_stok foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table StockOnHandDetail
   add constraint Data_stok_dipakai_oleh_detail_stok foreign key (WarehouseId, ItemId)
      references StockOnHand (WarehouseId, ItemId)
go

alter table StockOnHandDetail
   add constraint Data_tally_dipakai_oleh_detail_stok foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table StockOnHandDetail
   add constraint Data_warna_dipakai_oleh_detail_stok foreign key (WarnaId)
      references Warna (WarnaId)
go

alter table StockOnHandValue
   add constraint Data_barang_dipakai_oleh_nilai_stock foreign key (ItemId)
      references Item (ItemId)
go

alter table StockOnHandValue
   add constraint Data_gudang_dipakai_oleh_nilai_stock foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table TableLogDt
   add constraint Data_tabel_log_dipakai_oleh_tabel_log_detail foreign key (TableLogId)
      references TableLogHd (TableLogId)
go

alter table TableLogMaterial
   add constraint Data_material_dipakai_oleh_tabel_log_material foreign key (MaterialId)
      references Material (MaterialId)
go

alter table TableLogMaterial
   add constraint Data_tabel_log_dipakai_oleh_tabel_log_material foreign key (TableLogId)
      references TableLogHd (TableLogId)
go

alter table TallySheet
   add constraint Data_barang_dipakai_oleh_tally foreign key (ItemId)
      references Item (ItemId)
go

alter table TallySheet
   add constraint Data_gudang_dipakai_oleh_tally foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table TallySheet
   add constraint Data_pembelian_dipakai_oleh_tally foreign key (PurchaseInvoiceCode)
      references PurchaseInvoiceHd (PurchaseInvoiceCode)
go

alter table TallySheet
   add constraint Data_tallyman_dipakai_oleh_tally_sheet foreign key (TallymanId)
      references Tallyman (TallymanId)
go

alter table TallySheetDt
   add constraint Data_tally_dipakai_oleh_tally_detail foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table TallySheetHistory
   add constraint Data_gudang_dipakai_oleh_history_tally_detail foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table TallySheetHistory
   add constraint Data_tally_dipakai_oleh_history_tally_detail foreign key (TallySheetCode)
      references TallySheet (TallySheetCode)
go

alter table TransactionRecord
   add constraint Data_barang_dipakai_oleh_record_transaksi foreign key (ItemId)
      references Item (ItemId)
go

alter table TransactionRecord
   add constraint Data_gudang_dipakai_oleh_record_transaksi foreign key (WarehouseId)
      references Warehouse (WarehouseId)
go

alter table TransactionRecord
   add constraint Data_tipe_transaksi_dipakai_oleh_record_transaksi foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
go

alter table Vendor
   add constraint Data_kategori_supplier_dipakai_oleh_supplier foreign key (VendorCategoryId)
      references VendorCategory (VendorCategoryId)
go

alter table Vendor
   add constraint Data_kota_dipakai_oleh_supplier foreign key (CityId)
      references City (CityId)
go

alter table VendorContact
   add constraint Data_supplier_dipakai_oleh_contact_person_supplier foreign key (VendorId)
      references Vendor (VendorId)
go

alter table VendorPhone
   add constraint Data_supplier_dipakai_oleh_telephone_supplier foreign key (VendorId)
      references Vendor (VendorId)
go

alter table VendorShippingDetail
   add constraint Data_ekspedisi_dipakai_oleh_ekspedisi_supplier foreign key (ShippingId)
      references Shipping (ShippingId)
go

alter table VendorShippingDetail
   add constraint Data_supplier_dipakai_oleh_supplier_ekspedisi foreign key (VendorId)
      references Vendor (VendorId)
go

alter table Warehouse
   add constraint Data_kota_dipakai_oleh_gudang foreign key (CityId)
      references City (CityId)
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


create function fnGetTransactionBalance_QtyBalance_DateBefore 
  (@ItemId numeric, @WarehouseId numeric, @TransactionDate DateWithTime)
returns quantity
begin
  declare @Last_QtyBalance quantity

  select top(1) @Last_QtyBalance = QtyBalance
  from TransactionBalance a
  inner join TransactionRecord b on a.TransactionId = b.TransactionId      
  where b.ItemId = @ItemId
  and b.WarehouseId= @WarehouseId
  and b.TransactionDate < @TransactionDate
  and year(b.TransactionDate) = year(@TransactionDate)
  and month(b.TransactionDate) = month(@TransactionDate)
  order by b.TransactionDate desc

  if @Last_QtyBalance is null
    set @Last_QtyBalance = 0
  
  return(@Last_QtyBalance)
end
go


create procedure spGetBOMRawMaterial 
  @ItemId numeric, 
  @spGetBOMRawMaterial_cursor CURSOR VARYING OUTPUT 
as
begin
  SET @spGetBOMRawMaterial_cursor = CURSOR FORWARD_ONLY STATIC FOR

    with #Hierarchical_BOM (Bil_ItemId, ItemId, QtyTotal)
    as
    (
      -- Anchor member definition
      select 
        a.Bil_ItemId, a.ItemId,
        cast(a.Qty as decimal(12,4)) as QtyTotal
      from BillMaterialDt a
      left join BillMaterialHd b on a.Bil_ItemId = b.ItemId
      where a.Bil_ItemId = @ItemId

      union all
  
      -- Recursive member definition
      select
        a.Bil_ItemId, a.ItemId,
        cast((a.Qty * c.QtyTotal) as decimal(12,4)) as QtyTotal
      from BillMaterialDt a
      inner join BillMaterialHd b on a.Bil_ItemId = b.ItemId
      inner join #Hierarchical_BOM c ON a.Bil_ItemId = c.ItemId
    )
    -- Statement that executes the CTE
    select 
      a.ItemId, sum(a.QtyTotal) as QtyTotal,
      IsNull(c.CurrencyId, 'IDR') as CurrencyIdCosting,
      c.PriceQty,
      c.PriceM2,
      c.PriceM3,
      c.PriceKg,
      b.StatusDimensi  
    from #Hierarchical_BOM a
    left join Item b on a.ItemId = b.ItemId
    left join CostingPrice c on a.ItemId = c.ItemId
    where b.StatusProduction = '0' -- Bahan Baku
    or b.StatusProduction = '1' -- bahan Penolong
    group by a.ItemId, c.CurrencyId, c.PriceQty, c.PriceM2, c.PriceM3, c.PriceKg, b.StatusDimensi  

  -- Open cursor
  open @spGetBOMRawMaterial_cursor
end
go


create procedure spGetSPKRawMaterial 
  @ItemId numeric, 
  @spGetSPKRawMaterial_cursor CURSOR VARYING OUTPUT 
as
begin
  SET @spGetSPKRawMaterial_cursor = CURSOR FORWARD_ONLY STATIC FOR

    with #Hierarchical_BOM (Bil_ItemId, ItemId, QtyTotal)
    as
    (
      -- Anchor member definition
      select 
        a.Bil_ItemId, a.ItemId,
        cast(a.Qty as decimal(12,4)) as QtyTotal
      from BillMaterialDt a
      left join BillMaterialHd b on a.Bil_ItemId = b.ItemId
      where a.Bil_ItemId = @ItemId

      union all
  
      -- Recursive member definition
      select
        a.Bil_ItemId, a.ItemId,
        cast((a.Qty * c.QtyTotal) as decimal(12,4)) as QtyTotal
      from BillMaterialDt a
      inner join BillMaterialHd b on a.Bil_ItemId = b.ItemId
      inner join #Hierarchical_BOM c ON a.Bil_ItemId = c.ItemId
    )
    -- Statement that executes the CTE
    select 
      a.ItemId, sum(a.QtyTotal) as QtyTotal
    from #Hierarchical_BOM a
    group by a.ItemId

  -- Open cursor
  open @spGetSPKRawMaterial_cursor
end
go


create procedure spInsertingCostingItem @CostingCode TransactionCode
as
declare
  @Error int,
  @Bil_ItemId numeric,
  @ItemId numeric,
  @QtyTotal QuantityPlus,
  @CurrencyIdCosting varchar(10), 
  @CurrencyIdPurchase varchar(10), 
  @PurchasePrice CurrencyPlus,
  @CurrencyIdStock varchar(10), 
  @StockPrice CurrencyPlus,
  @PriceQty CurrencyPlus, 
  @PriceM2 CurrencyPlus, 
  @PriceM3 CurrencyPlus, 
  @PriceKg CurrencyPlus, 
  @StatusDimensi Status,
  @PriceDimensi CurrencyPlus
begin
  -- Check Parameter First
  if (@CostingCode is null) 
    return 99
    
  set @Error = 0  
  begin transaction

  -- initialize
  set @CurrencyIdPurchase = 'IDR'; 
  set @PurchasePrice = 0;
  set @CurrencyIdStock = 'IDR';
  set @StockPrice = 0;

  select @Bil_ItemId = ItemId
  from CostingHd
  where CostingCode = @CostingCode;
  
  -- delete old record
  delete CostingItem
  where CostingCode = @CostingCode
  and FlagItemBOM = '1';

  -- insert new record from BOM
  DECLARE @MyCursor CURSOR
  EXEC spGetBOMRawMaterial @Bil_ItemId, @spGetBOMRawMaterial_cursor = @MyCursor OUTPUT

  FETCH NEXT FROM @MyCursor into @ItemId, @QtyTotal, @CurrencyIdCosting, @PriceQty, @PriceM2, @PriceM3, @PriceKg, @StatusDimensi
  WHILE (@@FETCH_STATUS = 0)
  BEGIN
    
    if @StatusDimensi = '0'
      set @PriceDimensi = @PriceQty
    if @StatusDimensi = '1'
      set @PriceDimensi = @PriceM2
    if @StatusDimensi = '2'
      set @PriceDimensi = @PriceM3
    if @StatusDimensi = '3'
      set @PriceDimensi = @PriceKg
    
    insert into CostingItem 
      (FlagItemBOM, CostingCode, ItemId, Qty, 
      CurrencyIdCosting, CostingPrice, CurrencyIdPurchase, PurchasePrice, CurrencyIdStock, StockPrice, 
      Price, Rendemen, PriceRendemen, AmountRendemen)
    values
      ('1', @CostingCode, @ItemId, @QtyTotal, 
      @CurrencyIdCosting, @PriceQty, @CurrencyIdPurchase, @PurchasePrice, @CurrencyIdStock, @StockPrice,
      @PriceDimensi, 100, @PriceDimensi, (@QtyTotal * @PriceDimensi));
      
    if @@Error <> 0
      set @Error = 1

    FETCH NEXT FROM @MyCursor into @ItemId, @QtyTotal, @CurrencyIdCosting, @PriceQty, @PriceM2, @PriceM3, @PriceKg, @StatusDimensi
  END

  CLOSE @MyCursor
  DEALLOCATE @MyCursor
    
  if @Error = 0
  begin
    commit transaction
    return 0
  end 
  else
  begin
    rollback transaction
    return 99
  end 
end
go


create procedure spUpdateStockBalance_ValueIn 
  @Sign int, @ItemId numeric, @WarehouseId numeric, @Tahun int, @Bulan int, @Value CurrencyPlus
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalValueBalance CurrencyPlus
begin
  if @Sign = 1
  begin
    -- Transaksi In (Inserted)
    update StockBalance
    set ValueIn = ValueIn + @Value
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from StockBalance
      where WarehouseId = @WarehouseId
      and ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last ValueBalance exist year
      select @LastTotalValueBalance = ValueBalance
      from StockBalance
      where WarehouseId = @WarehouseId
      and Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalValueBalance is null
        set @LastTotalValueBalance = 0

      -- StockBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- StockBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, ValueBalance)
            values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @LastTotalValueBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, ValueIn, ValueBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @Value, (@LastTotalValueBalance + @Value))
            else
              -- After Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, (@LastTotalValueBalance + @Value))
        end
      end
    end
    else
    begin
      -- Update StockBalance QtyBalance (+)
      update StockBalance
        set ValueBalance = ValueBalance + @Value
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi In (Deleted)
    update StockBalance
    set ValueIn = ValueIn - @Value
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update StockBalance ValueBalance (-)
      update StockBalance
        set ValueBalance = ValueBalance - @Value
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spProcessClosingBackward 
  @OldClosingDate DateWithTime, @NewClosingDate DateWithTime
as  
declare 
  @TransactionId numeric, 
  @TransactionDate DateWithTime, 
  @ItemId numeric, 
  @WarehouseId numeric, 
  @TotalQty QuantityPlus, 
  @Price CurrencyPlus,
  @ReferenceCode TransactionCode, 
  @ReferenceNo integer,
  @StatusTransaction status,
  @StatusPairTransaction flag,
  @StatusCostMethod status,
  @Tahun integer,
  @Bulan integer,
  
  @TranValueIn_COGSDate DateWithTime, 
  @TranValueIn_COGS CurrencyPlus,
  @TranValueIn_TotalCOGSRounded CurrencyPlus,
  @TranValueIn_Qty QuantityPlus,
  @TranValueIn_Tahun integer,
  @TranValueIn_Bulan integer,

  @NewCOGSDate DateWithTime,
  @NewCOGSValue CurrencyPlus,
  @OldCOGSValue CurrencyPlus,
  @NewValueIn CurrencyPlus,
  @AVGQtyOld QuantityPlus, 
  @AVGValueOld CurrencyPlus,

  @ReturnState integer
begin
  /* @Return_Status :
   0 : Ok
   1 : Invalid Parameter Condition
   2 : Invalid StatusTransactionType
   3 : Invalid StatusPairTransaction
   99: Commond Error
  */
  
  if @NewClosingDate > @OldClosingDate
  begin
    RAISERROR('^Invalid parameter condition (spProcessClosingBackward) !^', 16, 1)
    return 1
  end

  -- Proses Tgl Closing Mundur 
  BEGIN TRANSACTION;

  -- Get List of TransactionRecord
  declare TransactionRecord_Cursor cursor for
    select 
      a.TransactionId, a.TransactionDate, a.ItemId, a.WarehouseId, a.TotalQty, a.Price,
      a.ReferenceCode, a.ReferenceNo, b.StatusTransaction, b.StatusPairTransaction, c.StatusCostMethod
    from TransactionRecord a 
    left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
    left join Item c on a.ItemId = c.ItemId
    where a.TransactionDate > @NewClosingDate 
    and a.TransactionDate <= @OldClosingDate
    order by a.TransactionDate desc

  -- Intialize Cursor
  open TransactionRecord_Cursor
  fetch next from TransactionRecord_Cursor
  into @TransactionId, @TransactionDate, @ItemId, @WarehouseId, @TotalQty, @Price, 
    @ReferenceCode, @ReferenceNo, @StatusTransaction, @StatusPairTransaction, @StatusCostMethod

  while @@FETCH_STATUS = 0
  begin
    -- Initialize Year & Month
    set @Tahun = year(@TransactionDate)
    set @Bulan = month(@TransactionDate)
    
-- ***************************************** Transaction IN *****************************************
    if @StatusTransaction = '0'
    begin  
A1:   -- Search TransactionValue IN 
      declare TransactionValue_Cursor cursor for
        select COGSDate, COGS, Qty, TotalCOGSRounded
        from TransactionValue
        where TransactionId = @TransactionId
      open TransactionValue_Cursor
      fetch next from TransactionValue_Cursor
      into @TranValueIn_COGSDate, @TranValueIn_COGS, @TranValueIn_Qty, @TranValueIn_TotalCOGSRounded
     
      while @@FETCH_STATUS = 0
      begin
        set @TranValueIn_Tahun = year(@TranValueIn_COGSDate)
        set @TranValueIn_Bulan = month(@TranValueIn_COGSDate)
 
        if (@StatusCostMethod = '0') or (@StatusCostMethod = '1')
        begin
          -- CostMethod : FIFO or LIFO
          set @NewCOGSDate = @TranValueIn_COGSDate
          set @NewCOGSValue = @TranValueIn_COGS
          set @OldCOGSValue = @TranValueIn_COGS
          set @NewValueIn = (@TranValueIn_COGS * @TranValueIn_Qty)
        end
        else
        begin
          -- CostMethod : AVERAGE
          select top (1) @NewCOGSDate = a.TransactionDate
          from TransactionRecord a
          left join TransactionType b on b.TransactionTypeId = a.TransactionTypeId
          where a.TransactionDate < @TranValueIn_COGSDate
          and b.StatusTransaction = '0' -- IN
          if @NewCOGSDate is null
            set @NewCOGSDate = @TranValueIn_COGSDate

          set @NewValueIn = (@TranValueIn_COGS * @TranValueIn_Qty) - @TranValueIn_TotalCOGSRounded

          select @AVGQtyOld = COGSQty, @AVGValueOld = COGSValue
          from StockOnHandValue
          where WarehouseId = @WarehouseId
          and ItemId = @ItemId
          if (@AVGQtyOld - @TranValueIn_Qty) <> 0
            set @NewCOGSValue = ((@AVGQtyOld * @AVGValueOld) - @NewValueIn) / (@AVGQtyOld - @TranValueIn_Qty)          
          else
            set @NewCOGSValue = @AVGValueOld

          set @OldCOGSValue = @AVGValueOld
        end

        -- Update StockOnHandValue
        update StockOnHandValue 
        set COGSDate = @NewCOGSDate,
          COGSQty = COGSQty - @TranValueIn_Qty,            
          COGSValue = @NewCOGSValue
        where WarehouseId = @WarehouseId
        and ItemId = @ItemId
        and COGSDate = @TranValueIn_COGSDate
        and COGSValue = @OldCOGSValue

        -- call spUpdateStockBalance_ValueIn (Berkurang)
        execute @ReturnState = spUpdateStockBalance_ValueIn -1, @ItemId, @WarehouseId, 
          @TranValueIn_Tahun, @TranValueIn_Bulan, @NewValueIn
        if @ReturnState <> 0
        begin
          close TransactionValue_Cursor
          deallocate TransactionValue_Cursor
          close TransactionRecord_Cursor
          deallocate TransactionRecord_Cursor

          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1)
          RETURN 99
        end        
        
        -- fetch next cursor.
        fetch next from TransactionValue_Cursor
        into @TranValueIn_COGSDate, @TranValueIn_COGS, @TranValueIn_Qty, @TranValueIn_TotalCOGSRounded
      end                  
      close TransactionValue_Cursor
      deallocate TransactionValue_Cursor

      -- Delete TransactionValue
      delete from TransactionValue
      where TransactionId = @TransactionId
    end

-- ***************************************** If Transaction OUT *****************************************
    else if @StatusTransaction = '1'
    begin
      -- 
      select 'Transaction OUT'
    end

    -- Invalid StatusTransactionType 
    else
    begin
      close TransactionRecord_Cursor
      deallocate TransactionRecord_Cursor

      IF @@TRANCOUNT <> 0 ROLLBACK TRANSACTION
      RAISERROR('^Invalid Transaction Type Status !^', 16, 1)
      RETURN 2        
    end

    -- fetch next cursor.
    fetch next from TransactionRecord_Cursor
    into @TransactionId, @TransactionDate, @ItemId, @WarehouseId, @TotalQty, @Price, 
      @ReferenceCode, @ReferenceNo, @StatusTransaction, @StatusPairTransaction, @StatusCostMethod
  end     
    
  -- Deintialize Cursor
  close TransactionRecord_Cursor
  deallocate TransactionRecord_Cursor

  COMMIT TRANSACTION
end
go


create procedure spUpdateStockBalance_ValueOut 
  @Sign int, @ItemId numeric, @WarehouseId numeric, @Tahun int, @Bulan int, @Value CurrencyPlus
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalValueBalance CurrencyPlus
begin
  if @Sign = 1
  begin
    -- Transaksi Out (Inserted)
    update StockBalance
    set ValueOut = ValueOut + @Value
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from StockBalance
      where WarehouseId = @WarehouseId
      and ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last ValueBalance exist year
      select @LastTotalValueBalance = ValueBalance
      from StockBalance
      where WarehouseId = @WarehouseId
      and Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalValueBalance is null
        set @LastTotalValueBalance = 0

      -- StockBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- StockBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, ValueBalance)
            values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @LastTotalValueBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, ValueOut, ValueBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @Value, (@LastTotalValueBalance - @Value))
            else
              -- After Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, ValueBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, (@LastTotalValueBalance - @Value))
        end
      end
    end
    else
    begin
      -- Update StockBalance ValueBalance (-)
      update StockBalance
        set ValueBalance = ValueBalance - @Value
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi Out (Deleted)
    update StockBalance
    set ValueOut = ValueOut - @Value
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update StockBalance QtyBalance (+)
      update StockBalance
        set ValueBalance = ValueBalance + @Value
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spProcessClosingForward 
  @OldClosingDate DateWithTime, @NewClosingDate DateWithTime
as  
declare 
  @TransactionId numeric, 
  @TransactionDate DateWithTime, 
  @ItemId numeric, 
  @WarehouseId numeric, 
  @TotalQty QuantityPlus, 
  @Price CurrencyPlus,
  @ReferenceCode TransactionCode, 
  @ReferenceNo integer,
  @StatusTransaction status,
  @StatusPairTransaction flag,
  @StatusCostMethod status,
  @Tahun integer,
  @Bulan integer,
  
  @RecCount integer,
  @ReturnState integer,

  -- Variabel Transaction IN
  @ValueIn currency,
  @AVGQtyOld QuantityPlus, 
  @AVGValueOld currency,
  @AVGValueNew currency,  
  @TotalCOGSRounded currency,
  @TranOut_COGS currency, 
  @TranOut_Qty QuantityPlus,
  @TotalCOGS_TransactionIn Currency,
  
  -- Variabel Transaction OUT    
  @SOHValue_COGSDate DateWithTime, 
  @SOHValue_COGSQty QuantityPlus, 
  @SOHValue_COGSValue CurrencyPlus,
  @OutstandingQtyOut QuantityPlus,
  @ProcessQtyOut QuantityPlus
begin
  /* @Return_Status :
   0 : Ok
   1 : Invalid Parameter Condition
   2 : Invalid StatusTransactionType
   3 : Invalid StatusPairTransaction
   4 : Transaction Pair : Jumlah Record TransactionValue (Out) <> 1, padalhan AVG
   5 : Invalid Transaction Out, Qty Not Allocated
   99: Commond Error
  */

  if @NewClosingDate < @OldClosingDate 
  begin
    RAISERROR('^Invalid parameter condition (spProcessClosingForward) !^', 16, 1)
    return 1
  end

  -- Proses Tgl Closing Maju
  BEGIN TRANSACTION;

  -- Get List of TransactionRecord
  declare TransactionRecord_Cursor cursor for
    select 
      a.TransactionId, a.TransactionDate, a.ItemId, a.WarehouseId, a.TotalQty, a.Price,
      a.ReferenceCode, a.ReferenceNo, b.StatusTransaction, b.StatusPairTransaction, c.StatusCostMethod
    from TransactionRecord a 
    left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
    left join Item c on a.ItemId = c.ItemId
    where a.TransactionDate > @OldClosingDate 
    and a.TransactionDate <= @NewClosingDate
    order by a.TransactionDate asc

  -- Intialize Cursor
  open TransactionRecord_Cursor
  fetch next from TransactionRecord_Cursor
  into @TransactionId, @TransactionDate, @ItemId, @WarehouseId, @TotalQty, @Price, 
    @ReferenceCode, @ReferenceNo, @StatusTransaction, @StatusPairTransaction, @StatusCostMethod

  while @@FETCH_STATUS = 0
  begin
    -- Initialize Year & Month
    set @Tahun = year(@TransactionDate)
    set @Bulan = month(@TransactionDate)

-- ***************************************** Transaction IN *****************************************
    if @StatusTransaction = '0'
    begin       
      -- Transaksi IN_NORMAL, bukan pair transaction
      if @StatusPairTransaction = '0' 
      begin
        if (@StatusCostMethod = '0') or (@StatusCostMethod = '1')
        begin
A1:       -- CostMethod : FIFO or LIFO
          -- Update / Insert StockOnHandValue
          update StockOnHandValue 
          set COGSQty = COGSQty + @TotalQty          
          where WarehouseId = @WarehouseId
          and ItemId = @ItemId
          and COGSDate = @TransactionDate
          and COGSValue = @Price
          if @@ROWCOUNT = 0
          begin
            insert into StockOnHandValue (WarehouseId, ItemId, COGSDate, COGSQty, COGSValue)
            values (@WarehouseId, @ItemId, @TransactionDate, @TotalQty, @Price)
          end

          set @ValueIn = (@TotalQty * @Price)

          -- insert TransactionValue
          insert into TransactionValue (TransactionId, COGSDate, Qty, COGS, TotalCOGS)
          values (@TransactionId, @TransactionDate, @TotalQty, @Price, @ValueIn)

          -- call spUpdateStockBalance_ValueIn (Bertambah)
          execute @ReturnState = spUpdateStockBalance_ValueIn 1, @ItemId, @WarehouseId, @Tahun, @Bulan, @ValueIn
          if @ReturnState <> 0
          begin
            close TransactionRecord_Cursor
            deallocate TransactionRecord_Cursor

            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1)
            RETURN 99
          end
        end

        else
        begin
A2:       -- CostMethod : AVERAGE
          if (select count(ItemId)
            from StockOnHandValue
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId) = 0
          begin
            -- Create New
            insert into StockOnHandValue (WarehouseId, ItemId, COGSDate, COGSQty, COGSValue)
            values (@WarehouseId, @ItemId, @TransactionDate, @TotalQty, @Price)

            set @ValueIn = (@TotalQty * @Price)
            set @TotalCOGSRounded = 0
          end
          else
          begin
            -- Calculate & Update
            select @AVGQtyOld = COGSQty, @AVGValueOld = COGSValue
            from StockOnHandValue
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId

            set @AVGValueNew = round(((@AVGQtyOld * @AVGValueOld) + (@Price * @TotalQty)) / (@AVGQtyOld + @TotalQty), 4)
            set @ValueIn = (@AVGValueNew * (@TotalQty + @AVGQtyOld)) - (@AVGValueOld * @AVGQtyOld)
            set @TotalCOGSRounded = (@Price * @TotalQty) - @ValueIn

            update StockOnHandValue
            set COGSDate = @TransactionDate,
              COGSQty = COGSQty + @TotalQty,
              COGSValue = @AVGValueNew
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId      
          end

          -- insert TransactionValue
          insert into TransactionValue (TransactionId, COGSDate, Qty, COGS, TotalCOGS, TotalCOGSRounded)
          values (@TransactionId, @TransactionDate, @TotalQty, @Price, (@TotalQty * @Price), @TotalCOGSRounded)

          -- call spUpdateStockBalance_ValueIn (Bertambah)
          execute @ReturnState = spUpdateStockBalance_ValueIn 1, @ItemId, @WarehouseId, @Tahun, @Bulan, @ValueIn
          if @ReturnState <> 0
          begin
            close TransactionRecord_Cursor
            deallocate TransactionRecord_Cursor

            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1) 
            RETURN 99
          end
        end
      end

      -- Transaksi IN_MUTASI
      else if @StatusPairTransaction = '1'
      begin 
        if (@StatusCostMethod = '0') or (@StatusCostMethod = '1')
        begin
A3:       -- CostMethod : FIFO or LIFO
          -- Search Transaction OUT paired
          declare TransactionValue_Cursor cursor for
            select a.COGS, sum(a.Qty)
            from TransactionValue a
            left join TransactionRecord b on a.TransactionId = b.TransactionId
            left join TransactionType c on b.TransactionTypeId = c.TransactionTypeId
            where c.StatusTransaction = '1' 
            and b.ReferenceCode = @ReferenceCode
            and b.ReferenceNo = @ReferenceNo
            group by a.COGS
          open TransactionValue_Cursor
          fetch next from TransactionValue_Cursor
          into @TranOut_COGS, @TranOut_Qty
      
          while @@FETCH_STATUS = 0
          begin
            -- Update / Insert StockOnHandValue (COGSDate = Tgl Mutasi IN)
            update StockOnHandValue 
            set COGSQty = COGSQty + @TranOut_Qty
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId
            and COGSDate = @TransactionDate -- Tgl Mutasi IN
            and COGSValue = @TranOut_COGS 
            if @@ROWCOUNT = 0
            begin
              insert into StockOnHandValue (WarehouseId, ItemId, COGSDate, COGSQty, COGSValue)
              values (@WarehouseId, @ItemId, @TransactionDate, @TranOut_Qty, @TranOut_COGS)
            end

            set @ValueIn = (@TranOut_Qty * @TranOut_COGS)

            -- Insert TransactionValue (COGSDate = Tgl Mutasi IN)
            insert into TransactionValue(TransactionId, COGSDate, Qty, COGS, TotalCOGS)
            values (@TransactionId, @TransactionDate, @TranOut_Qty, @TranOut_COGS, @ValueIn)
            
            -- call spUpdateStockBalance_ValueIn (Bertambah)
            execute @ReturnState = spUpdateStockBalance_ValueIn 1, @ItemId, @WarehouseId, @Tahun, @Bulan, @ValueIn
            if @ReturnState <> 0
            begin
              close TransactionRecord_Cursor
              deallocate TransactionRecord_Cursor

              IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
              RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1)
              RETURN 99
            end

            -- fetch next cursor.
            fetch next from TransactionValue_Cursor
            into @TranOut_COGS, @TranOut_Qty
          end                  
          close TransactionValue_Cursor
          deallocate TransactionValue_Cursor
        end

        else
        begin
A4:       -- CostMethod : AVERAGE
          -- get last value, data harus 1 record
          select 
            @RecCount = count(a.COGS),
            @TranOut_COGS = sum(a.COGS), 
            @TranOut_Qty = sum(a.Qty)
          from TransactionValue a
          left join TransactionRecord b on a.TransactionId = b.TransactionId
          left join TransactionType c on b.TransactionTypeId = c.TransactionTypeId
          where c.StatusTransaction = '1' -- Transaction OUT
          and b.ReferenceCode = @ReferenceCode
          and b.ReferenceNo = @ReferenceNo

          if @RecCount <> 1
          begin
            close TransactionRecord_Cursor
            deallocate TransactionRecord_Cursor

            IF @@TRANCOUNT <> 0 ROLLBACK TRANSACTION
            RAISERROR('^Invalid Data of Transaction Pair (Mutasi_In) !^', 16, 1)
            RETURN 4
          end

          if (select count(ItemId)
            from StockOnHandValue
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId) = 0
          begin
            -- Create New
            insert into StockOnHandValue (WarehouseId, ItemId, COGSDate, COGSQty, COGSValue)
            values (@WarehouseId, @ItemId, @TransactionDate, @TranOut_Qty, @TranOut_COGS)

            set @ValueIn = (@TranOut_Qty * @TranOut_COGS)
            set @TotalCOGSRounded = 0
          end
          else
          begin
            -- Calculate & Update
            select @AVGQtyOld = COGSQty, @AVGValueOld = COGSValue
            from StockOnHandValue
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId

            set @AVGValueNew = round(((@AVGQtyOld * @AVGValueOld) + (@TranOut_COGS * @TranOut_Qty)) / (@AVGQtyOld + @TranOut_Qty), 4)
            set @ValueIn = (@AVGValueNew * (@TranOut_Qty + @AVGQtyOld)) - (@AVGValueOld * @AVGQtyOld)
            set @TotalCOGSRounded = (@TranOut_COGS * @TranOut_Qty) - @ValueIn

            update StockOnHandValue
            set COGSDate = @TransactionDate,
              COGSQty = COGSQty + @TranOut_Qty,
              COGSValue = @AVGValueNew
            where WarehouseId = @WarehouseId
            and ItemId = @ItemId      
          end

          -- insert TransactionValue
          insert into TransactionValue (TransactionId, COGSDate, Qty, COGS, TotalCOGS, TotalCOGSRounded)
          values (@TransactionId, @TransactionDate, @TotalQty, @Price, (@TranOut_Qty * @TranOut_COGS), @TotalCOGSRounded)

          -- call spUpdateStockBalance_ValueIn (Bertambah)
          execute @ReturnState = spUpdateStockBalance_ValueIn 1, @ItemId, @WarehouseId, @Tahun, @Bulan, @ValueIn
          if @ReturnState <> 0
          begin
            close TransactionRecord_Cursor
            deallocate TransactionRecord_Cursor

            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1) 
            RETURN 99
          end
        end
      end

      -- Transaksi IN_PRODUKSI
      else if @StatusPairTransaction = '2' 
      begin
        -- 
        select 'Transaksi IN_PRODUKSI'
      end

      -- Invalid StatusPairTransaction
      else
      begin        
        close TransactionRecord_Cursor
        deallocate TransactionRecord_Cursor

        IF @@TRANCOUNT <> 0 ROLLBACK TRANSACTION
        RAISERROR('^Invalid Transaction Type Pair Status !^', 16, 1)
        RETURN 3
      end
    end

-- ***************************************** If Transaction OUT *****************************************
    else if @StatusTransaction = '1'
    begin
/*
into @TransactionId, @TransactionDate, @ItemId, @WarehouseId, @TotalQty, @Price, 
    @ReferenceCode, @ReferenceNo, @StatusTransaction, @StatusPairTransaction, @StatusCostMethod
*/
     
B1:   if (@StatusCostMethod = '0') or (@StatusCostMethod = '2') -- FIFO / AVERAGE
      begin
        declare StockOnHandValue_ASC_Cursor cursor for
          select COGSDate, COGSQty, COGSValue
          from StockOnHandValue
          where WarehouseId = @WarehouseId
          and ItemId = @ItemId
          order by COGSDate asc

        open StockOnHandValue_ASC_Cursor
        fetch next from StockOnHandValue_ASC_Cursor
        into @SOHValue_COGSDate, @SOHValue_COGSQty, @SOHValue_COGSValue
      end
      else -- LIFO
      begin
        declare StockOnHandValue_DESC_Cursor cursor for
          select COGSDate, COGSQty, COGSValue
          from StockOnHandValue
          where WarehouseId = @WarehouseId
          and ItemId = @ItemId
          order by COGSDate desc

        open StockOnHandValue_DESC_Cursor
        fetch next from StockOnHandValue_DESC_Cursor
        into @SOHValue_COGSDate, @SOHValue_COGSQty, @SOHValue_COGSValue
      end
      
      -- Qty proses
      set @OutstandingQtyOut = @TotalQty
      set @ProcessQtyOut = 0

      while @@FETCH_STATUS = 0
      begin
        -- Prepare qty to process
        if @OutstandingQtyOut > @SOHValue_COGSQty
          set @ProcessQtyOut = @SOHValue_COGSQty
        else
          set @ProcessQtyOut = @OutstandingQtyOut

        set @OutstandingQtyOut = @OutstandingQtyOut - @ProcessQtyOut
        set @ValueIn = @ProcessQtyOut * @SOHValue_COGSValue

        -- Insert TransactionValue
        insert into TransactionValue (TransactionId, COGSDate, Qty, COGS, TotalCOGS)
        values (@TransactionId, @SOHValue_COGSDate, @ProcessQtyOut, @SOHValue_COGSValue, @ValueIn)
        
        -- Update StockOnHandValue (-)
        update StockOnHandValue
        set COGSQty = COGSQty - @ProcessQtyOut
        where WarehouseId = @WarehouseId
        and ItemId = @ItemId
        and COGSDate = @SOHValue_COGSDate
        and COGSValue = @SOHValue_COGSValue

        -- call spUpdateStockBalance_ValueOut (Bertambah)
        execute @ReturnState = spUpdateStockBalance_ValueOut 1, @ItemId, @WarehouseId, @Tahun, @Bulan, @ValueIn
        if @ReturnState <> 0
        begin
          if (@StatusCostMethod = '0') or (@StatusCostMethod = '2') -- FIFO / AVERAGE
          begin
            close StockOnHandValue_ASC_Cursor
            deallocate StockOnHandValue_ASC_Cursor
          end
          else -- LIFO
          begin
            close StockOnHandValue_DESC_Cursor
            deallocate StockOnHandValue_DESC_Cursor
          end
          close TransactionRecord_Cursor
          deallocate TransactionRecord_Cursor

          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Fail to execute: spUpdateStockBalance_ValueIn !^', 16, 1) 
          RETURN 99
        end

        -- fetch next cursor.
        if @OutstandingQtyOut = 0 -- Qty out sudah teralokasikan semua 
          BREAK
        if (@StatusCostMethod = '0') or (@StatusCostMethod = '2') -- FIFO / AVERAGE
        begin
          fetch next from StockOnHandValue_ASC_Cursor
          into @SOHValue_COGSDate, @SOHValue_COGSQty, @SOHValue_COGSValue
        end
        else -- LIFO
        begin
          fetch next from StockOnHandValue_DESC_Cursor
          into @SOHValue_COGSDate, @SOHValue_COGSQty, @SOHValue_COGSValue
        end
      end

      -- Deintialize Cursor
      if (@StatusCostMethod = '0') or (@StatusCostMethod = '2') -- FIFO / AVERAGE
      begin
        close StockOnHandValue_ASC_Cursor
        deallocate StockOnHandValue_ASC_Cursor
      end
      else -- LIFO
      begin
        close StockOnHandValue_DESC_Cursor
        deallocate StockOnHandValue_DESC_Cursor
      end

      if @OutstandingQtyOut <> 0
      begin 
        close TransactionRecord_Cursor
        deallocate TransactionRecord_Cursor

        IF @@TRANCOUNT <> 0 ROLLBACK TRANSACTION
        RAISERROR('^Invalid Transaction Out, Qty Not Allocated !^', 16, 1)
        RETURN 5
      end
    end

    -- Invalid StatusTransactionType 
    else
    begin
      close TransactionRecord_Cursor
      deallocate TransactionRecord_Cursor

      IF @@TRANCOUNT <> 0 ROLLBACK TRANSACTION
      RAISERROR('^Invalid Transaction Type Status !^', 16, 1)
      RETURN 2        
    end

    -- fetch next cursor.
    fetch next from TransactionRecord_Cursor
    into @TransactionId, @TransactionDate, @ItemId, @WarehouseId, @TotalQty, @Price, 
      @ReferenceCode, @ReferenceNo, @StatusTransaction, @StatusPairTransaction, @StatusCostMethod
  end     
    
  -- Deintialize Cursor
  close TransactionRecord_Cursor
  deallocate TransactionRecord_Cursor

  COMMIT TRANSACTION
end
go


create procedure spProcessClosingDate 
  @ClosingDate DateWithTime
as  
declare 
  @OldClosingDate DateTime,
  @NewClosingDate DateTime,
  @Return_Value int
begin
  /* @Return_Status : 
   0 : Ok
   1..99: Invalid Condition
  */

  -- Get Current Closing Date
  set @OldClosingDate = 
    (select cast(SetupValue as Datetime) 
    from Setup 
    where SetupId = 'GLB01'
    and ProgramId = 'GLB01')
  if @OldClosingDate is null
    set @OldClosingDate = '19000101'
    
  set @OldClosingDate = DateAdd(dd, 0, DateDiff(dd, 0, @OldClosingDate)) + DateAdd(ms, 86399998, 0)
  set @NewClosingDate = DateAdd(dd, 0, DateDiff(dd, 0, @ClosingDate)) + DateAdd(ms, 86399998, 0)

  -- Tgl Closing Maju 
  if @NewClosingDate > @OldClosingDate 
  begin
    exec @Return_Value = dbo.spProcessClosingForward @OldClosingDate, @NewClosingDate
    if @Return_Value <> 0
      return @Return_Value
  end    

  -- Tgl Closing Mundur
  if @NewClosingDate < @OldClosingDate  
  begin
    exec @Return_Value = dbo.spProcessClosingBackward @OldClosingDate, @NewClosingDate
    if @Return_Value <> 0
      return @Return_Value
  end

  -- Set Current Closing Date
  update Setup 
  set SetupValue = convert(varchar, @NewClosingDate, 112)
  where SetupId = 'GLB01'

  if @@ROWCOUNT = 0
  begin
    insert into Setup (ProgramId, SetupId, SetupName, SetupValue)
    values ('GLB01', 'GLB01', 'Closing Date', convert(varchar, @NewClosingDate, 112))
  end
end
go


create procedure spUpdateGeneralLedgerValue 
  @Sign int, @COAId numeric, @Tahun int, @Bulan int, @Value CurrencyPlus
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalValueBalance CurrencyPlus
begin
  if @Sign = 1
  begin
    -- Transaksi In (Inserted)
    
    -- Update GeneralLedger ValueBalance (+)
    update GeneralLedger
    set ValueBalance = ValueBalance + @Value
    where COAId = @COAId
    and (
      (Tahun = @Tahun and Bulan >= @Bulan)
      or Tahun > @Tahun) 
    
    if @@ROWCOUNT = 0
    begin
      -- Get "max year exist", before param's year
      select @LoopYear = Max(Tahun)
      from GeneralLedger
      where COAId = @COAId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last ValueBalance on "max year exist"
      select @LastTotalValueBalance = ValueBalance
      from GeneralLedger
      where COAId = @COAId
      and Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalValueBalance is null
        set @LastTotalValueBalance = 0

      -- GeneralLedger belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- GeneralLedger belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan Value Balance tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert GeneralLedger (COAId, Tahun, Bulan, ValueBalance)
            values (@COAId, @LoopYear, @LoopMonth, @LastTotalValueBalance)
          else
            -- After Transaction Year & Month
            insert GeneralLedger (COAId, Tahun, Bulan, ValueBalance)
            values (@COAId, @LoopYear, @LoopMonth, (@LastTotalValueBalance + @Value))
        end
      end
    end
  end
  
  else
  
  begin 
    -- Transaksi In (Deleted)

    -- Update GeneralLedger ValueBalance (-) 
    update GeneralLedger
    set ValueBalance = ValueBalance - @Value
    where COAId = @COAId
    and (
      (Tahun = @Tahun and Bulan >= @Bulan)
      or Tahun > @Tahun) 
  end
end
go


create procedure spUpdateItemOrderBalance_QtyPOIn 
  @Sign int, @ItemId numeric, @Tahun int, @Bulan int, @QtyPO quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtyPOBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi In (Inserted)
    update ItemOrderBalance
    set QtyPOIn = QtyPOIn + @QtyPO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from ItemOrderBalance
      where ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtyBalance exist year
      select @LastTotalQtyPOBalance = QtyPOBalance
      from ItemOrderBalance
      where Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtyPOBalance is null
        set @LastTotalQtyPOBalance = 0

      -- ItemOrderBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- ItemOrderBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOBalance)
            values (@ItemId, @LoopYear, @LoopMonth, @LastTotalQtyPOBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOIn, QtyPOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, @QtyPO, (@LastTotalQtyPOBalance + @QtyPO))
            else
              -- After Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, (@LastTotalQtyPOBalance + @QtyPO))
        end
      end
    end
    else
    begin
      -- Update ItemOrderBalance QtyPOBalance (+)
      update ItemOrderBalance
        set QtyPOBalance = QtyPOBalance + @QtyPO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi In (Deleted)
    update ItemOrderBalance
    set QtyPOIn = QtyPOIn - @QtyPO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update ItemOrderBalance QtyPOBalance (-)
      update ItemOrderBalance
        set QtyPOBalance = QtyPOBalance - @QtyPO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spUpdateItemOrderBalance_QtyPOOut 
  @Sign int, @ItemId numeric, @Tahun int, @Bulan int, @QtyPO quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtyPOBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi Out (Inserted)
    update ItemOrderBalance
    set QtyPOOut = QtyPOOut + @QtyPO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from ItemOrderBalance
      where ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtyPOBalance exist year
      select @LastTotalQtyPOBalance = QtyPOBalance
      from ItemOrderBalance
      where Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtyPOBalance is null
        set @LastTotalQtyPOBalance = 0

      -- ItemOrderBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- ItemOrderBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOBalance)
            values (@ItemId, @LoopYear, @LoopMonth, @LastTotalQtyPOBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOOut, QtyPOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, @QtyPO, (@LastTotalQtyPOBalance - @QtyPO))
            else
              -- After Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtyPOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, (@LastTotalQtyPOBalance - @QtyPO))
        end
      end
    end
    else
    begin
      -- Update ItemOrderBalance QtyPOBalance (-)
      update ItemOrderBalance
        set QtyPOBalance = QtyPOBalance - @QtyPO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi Out (Deleted)
    update ItemOrderBalance
    set QtyPOOut = QtyPOOut - @QtyPO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update ItemOrderBalance QtyPOBalance (+)
      update ItemOrderBalance
        set QtyPOBalance = QtyPOBalance + @QtyPO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spUpdateItemOrderBalance_QtySOIn 
  @Sign int, @ItemId numeric, @Tahun int, @Bulan int, @QtySO quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtySOBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi In (Inserted)
    update ItemOrderBalance
    set QtySOIn = QtySOIn + @QtySO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from ItemOrderBalance
      where ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtyBalance exist year
      select @LastTotalQtySOBalance = QtySOBalance
      from ItemOrderBalance
      where Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtySOBalance is null
        set @LastTotalQtySOBalance = 0

      -- ItemOrderBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- ItemOrderBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOBalance)
            values (@ItemId, @LoopYear, @LoopMonth, @LastTotalQtySOBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOIn, QtySOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, @QtySO, (@LastTotalQtySOBalance + @QtySO))
            else
              -- After Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, (@LastTotalQtySOBalance + @QtySO))
        end
      end
    end
    else
    begin
      -- Update ItemOrderBalance QtySOBalance (+)
      update ItemOrderBalance
        set QtySOBalance = QtySOBalance + @QtySO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi In (Deleted)
    update ItemOrderBalance
    set QtySOIn = QtySOIn - @QtySO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update ItemOrderBalance QtySOBalance (-)
      update ItemOrderBalance
        set QtySOBalance = QtySOBalance - @QtySO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spUpdateItemOrderBalance_QtySOOut 
  @Sign int, @ItemId numeric, @Tahun int, @Bulan int, @QtySO quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtySOBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi Out (Inserted)
    update ItemOrderBalance
    set QtySOOut = QtySOOut + @QtySO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from ItemOrderBalance
      where ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtySOBalance exist year
      select @LastTotalQtySOBalance = QtySOBalance
      from ItemOrderBalance
      where Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtySOBalance is null
        set @LastTotalQtySOBalance = 0

      -- ItemOrderBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- ItemOrderBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOBalance)
            values (@ItemId, @LoopYear, @LoopMonth, @LastTotalQtySOBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOOut, QtySOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, @QtySO, (@LastTotalQtySOBalance - @QtySO))
            else
              -- After Transaction Year & Month
              insert ItemOrderBalance (ItemId, Tahun, Bulan, QtySOBalance)
              values (@ItemId, @LoopYear, @LoopMonth, (@LastTotalQtySOBalance - @QtySO))
        end
      end
    end
    else
    begin
      -- Update ItemOrderBalance QtySOBalance (-)
      update ItemOrderBalance
        set QtySOBalance = QtySOBalance - @QtySO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi Out (Deleted)
    update ItemOrderBalance
    set QtySOOut = QtySOOut - @QtySO
    where ItemId = @ItemId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update ItemOrderBalance QtySOBalance (+)
      update ItemOrderBalance
        set QtySOBalance = QtySOBalance + @QtySO
      where ItemId = @ItemId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spUpdateStockBalance_QtyIn 
  @Sign int, @ItemId numeric, @WarehouseId numeric, @Tahun int, @Bulan int, @Qty quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtyBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi In (Inserted)
    update StockBalance
    set QtyIn = QtyIn + @Qty
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from StockBalance
      where WarehouseId = @WarehouseId
      and ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtyBalance exist year
      select @LastTotalQtyBalance = QtyBalance
      from StockBalance
      where WarehouseId = @WarehouseId
      and Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtyBalance is null
        set @LastTotalQtyBalance = 0

      -- StockBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- StockBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyBalance)
            values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @LastTotalQtyBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyIn, QtyBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @Qty, (@LastTotalQtyBalance + @Qty))
            else
              -- After Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, (@LastTotalQtyBalance + @Qty))
        end
      end
    end
    else
    begin
      -- Update StockBalance QtyBalance (+)
      update StockBalance
        set QtyBalance = QtyBalance + @Qty
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi In (Deleted)
    update StockBalance
    set QtyIn = QtyIn - @Qty
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update StockBalance QtyBalance (-)
      update StockBalance
        set QtyBalance = QtyBalance - @Qty
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create procedure spUpdateStockBalance_QtyOut 
  @Sign int, @ItemId numeric, @WarehouseId numeric, @Tahun int, @Bulan int, @Qty quantity
as  
declare 
  @LoopYear int,
  @LoopMonth int,
  @LastTotalQtyBalance quantity
begin
  if @Sign = 1
  begin
    -- Transaksi Out (Inserted)
    update StockBalance
    set QtyOut = QtyOut + @Qty
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      -- Get max year exist
      select @LoopYear = Max(Tahun)
      from StockBalance
      where WarehouseId = @WarehouseId
      and ItemId = @ItemId    
      if @LoopYear is null
        set @LoopYear = @Tahun - 1
    
      -- Get last QtyBalance exist year
      select @LastTotalQtyBalance = QtyBalance
      from StockBalance
      where WarehouseId = @WarehouseId
      and Tahun = @LoopYear
      and Bulan = 12
      if @LastTotalQtyBalance is null
        set @LastTotalQtyBalance = 0

      -- StockBalance belum ada, maka buat baru mulai tahun terakhir s/d @Tahun
      while @LoopYear < @Tahun
      begin
        set @LoopYear = @LoopYear + 1       

        -- StockBalance belum ada, maka buat baru mulai bulan 1 s/d 12
        -- Perhatikan saldo akhir tahun sebelumnya !!!
        set @LoopMonth = 0
        while @LoopMonth <= 11 --Desember
        begin
          set @LoopMonth = @LoopMonth + 1
          
          if (@LoopYear = @Tahun and @LoopMonth < @Bulan) or (@LoopYear < @Tahun)
            -- Between Exist Year s/d Current Transaction Year & Month
            insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyBalance)
            values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @LastTotalQtyBalance)
          else
            if @LoopMonth = @Bulan
              -- on Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyOut, QtyBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, @Qty, (@LastTotalQtyBalance - @Qty))
            else
              -- After Transaction Year & Month
              insert StockBalance (ItemId, WarehouseId, Tahun, Bulan, QtyBalance)
              values (@ItemId, @WarehouseId, @LoopYear, @LoopMonth, (@LastTotalQtyBalance - @Qty))
        end
      end
    end
    else
    begin
      -- Update StockBalance QtyBalance (-)
      update StockBalance
        set QtyBalance = QtyBalance - @Qty
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
  else
  begin 
    -- Transaksi Out (Deleted)
    update StockBalance
    set QtyOut = QtyOut - @Qty
    where ItemId = @ItemId
    and WarehouseId = @WarehouseId
    and Tahun = @Tahun
    and Bulan = @Bulan

    if @@ROWCOUNT = 0
    begin
      RAISERROR('^Invalid condition !^', 16, 1)
    end
    else
    begin
      -- Update StockBalance QtyBalance (+)
      update StockBalance
        set QtyBalance = QtyBalance + @Qty
      where ItemId = @ItemId
      and WarehouseId = @WarehouseId
      and (
        (Tahun = @Tahun and Bulan >= @Bulan)
        or Tahun > @Tahun) 
    end
  end
end
go


create trigger TR_Item_After on Item for update as
begin
  declare
    @numrows int,
    @del_StatusDimensi char(1),
    @ins_ItemId numeric,
    @ins_MaterialId numeric,
    @ins_M2 MeasureBigPlus,
    @ins_M3 MeasureBigPlus,
    @ins_StatusDimensi char(1)

  select @numrows = @@rowcount
  if @numrows = 0
    return
         
  select 
    @del_StatusDimensi = StatusDimensi
  from deleted

  select 
    @ins_ItemId = ItemId,
    @ins_MaterialId = MaterialId,
    @ins_M2 = M2,
    @ins_M3 = M3,
    @ins_StatusDimensi = StatusDimensi
  from inserted
  
  -- Cara pengukuran barang berubah
  if @ins_StatusDimensi <> @del_StatusDimensi 
  begin
    if @ins_StatusDimensi = '1' -- Luas (m2)
    begin
      update BillMaterialDt
      set Qty = @ins_M2
      from BillMaterialDt
      inner join Item b on BillMaterialDt.ItemId = b.ItemId
      where BillMaterialDt.Bil_ItemId = @ins_ItemId
      and b.StatusProduction = '0' -- Bahan Baku
      and b.MaterialId = @ins_MaterialId -- hanya yang material nya sama
    end

    if @ins_StatusDimensi = '2' -- Volume (m3)
    begin
      update BillMaterialDt
      set Qty = @ins_M3
      from BillMaterialDt
      inner join Item b on BillMaterialDt.ItemId = b.ItemId
      where BillMaterialDt.Bil_ItemId = @ins_ItemId
      and b.StatusProduction = '0' -- Bahan Baku
      and b.MaterialId = @ins_MaterialId -- hanya yang material nya sama
    end
  end    
end
go



/*declare
  AJournalDate DateWithoutTime;  
  AJournalYear varchar;
  AJournalMonth varchar;
  AAmount currency;
  ASignValue int;
begin
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select JournalDate from JournalHd
    where JournalId = old.JournalId
    into AJournalDate;
    
    AJournalYear := cast(Extract(Year from AJournalDate) as varchar);
    AJournalMonth := cast(Extract(Month from AJournalDate) as varchar);
    
    if old.Debit <> 0 then
      -- Debit
      ASignValue := -1;
      AAmount := old.Debit;
    else
      -- Credit
      ASignValue := 1;
      AAmount := old.Credit;
    end if;
    
    select spUpdatreGeneralLedger(old.CoaId, AJournalYear, AJournalMonth, ASignValue, AAmount);    
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    select JournalDate from JournalHd
    where JournalId = new.JournalId
    into AJournalDate;
    
    AJournalYear := cast(Extract(Year from AJournalDate) as varchar);
    AJournalMonth := cast(Extract(Month from AJournalDate) as varchar);
    
    if new.Debit <> 0 then
      -- Debit
      ASignValue := -1;
      AAmount := new.Debit;
    else
      -- Credit
      ASignValue := 1;
      AAmount := new.Credit;
    end if;
    
    select spUpdatreGeneralLedger(new.CoaId, AJournalYear, AJournalMonth, ASignValue, AAmount);    
  end if;

  return null;
end*/
go


create trigger TR_KayuMuatDt_D on KayuMuatDt for delete as
begin
  declare
    -- variabel transaction 
    @TallySheetGradeCode TransactionCode
    -- others
    
  -- Initial
  
  -- get Old info from transaction 
  select
    @TallySheetGradeCode = TallySheetGradeCode
  from Deleted
  
  if IsNull(@TallySheetGradeCode, '') <> '' 
  begin
    update TallySheetGrade
    set FlagMuat = '0'
    where TallySheetGradeCode = @TallySheetGradeCode
  end
end
go


create trigger TR_KayuMuatDt_IU on KayuMuatDt for insert,update as
begin
  declare
    -- variabel transaction 
    @TallySheetGradeCode TransactionCode
    -- others
    
  -- Initial
  
  -- get Old info from transaction 
  select
    @TallySheetGradeCode = TallySheetGradeCode
  from Deleted
  
  -- update tallysheetgrade (flagmuat='0') 
  if IsNull(@TallySheetGradeCode, '') <> '' 
  begin
    update TallySheetGrade
    set FlagMuat = '0'
    where TallySheetGradeCode = @TallySheetGradeCode
  end

  -- get New info from transaction 
  select
    @TallySheetGradeCode = TallySheetGradeCode
  from Inserted

  -- update tallysheetgrade (flagmuat='0') 
  if IsNull(@TallySheetGradeCode, '') <> '' 
  begin
    update TallySheetGrade
    set FlagMuat = '1'
    where TallySheetGradeCode = @TallySheetGradeCode
  end
end
go


create trigger TR_OtherTransactionDt_After on OtherTransactionDt for 
  insert, update, delete as
begin
  declare
/* <26/08/2009> *** Variable Template **********************/ 
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,
/**/ @TransactionDate datetime, 
/**/ @StatusApprove status,
/****************** End Variable Template ******************/    

    @ReferenceCode varchar(30),
    @ReferenceNo int,
    @TransactionTypeId int,
    @ItemId int,
    @WarehouseId int,
    @Qty quantity,
    @Price float

/* <26/08/2009> ***************** Trigger Template *********************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Detail 
/**/  if (@OnInsert = 1)
/**/  begin
/**/    select 
/**/      @TransactionDate = b.OtherTransactionDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from inserted a
/**/    left join OtherTransactionHd b on a.OtherTransactionCode = b.OtherTransactionCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if (@OnUpdate = 1) or (@OnDelete = 1) 
/**/  begin
/**/    select       
/**/      @TransactionDate = b.OtherTransactionDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from deleted a
/**/    left join OtherTransactionHd b on a.OtherTransactionCode = b.OtherTransactionCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if @StatusApprove = '2' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/    RETURN
/**/  end
/**/    
/**/  if @StatusApprove = '1' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/    RETURN
/**/  end    
/**/   
/**/  set @DoChecking = 1;
/**/  --> Bypass validasi untuk field2 tertentu !!!!!!
/**/  --if (@OnUpdate = 1)
/**/  --begin
/**/    --select @New_QtyOutstanding = QtyOutstanding
/**/    --from inserted
/**/
/**/    --select @New_QtyOutstanding = QtyOutstanding
/**/    --from deleted
/**/
/**/    --if (@Old_QtyOutstanding <> @New_QtyOutstanding) 
/**/    --  set @DoChecking = 0
/**/  --end  
/**/  
/**/  if @DoChecking = 1 
/**/  begin
/**/    if @TransactionDate <= dbo.fnGetClosingDate() 
/**/    begin
/**/      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/      RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/      RETURN
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

/****************************** On Delete ********************************************/
  if (@OnDelete = 1) 
  begin
    select 
      @ReferenceCode = a.OtherTransactionCode,
      @ReferenceNo = a.No,
      @StatusApprove = b.StatusApprove
    from deleted a  
    left join OtherTransactionHd b on a.OtherTransactionCode = b.OtherTransactionCode

    delete from TransactionRecord 
    where ReferenceCode = @ReferenceCode
    and ReferenceNo = @ReferenceNo
  end
  
/****************************** On Insert & On Update ********************************************/
  if (@OnInsert = 1) or (@OnUpdate = 1)
  begin
    declare Cursor_Inserted cursor for 
      select 
        b.OtherTransactionCode, a.No, a.ItemId, b.WarehouseId,
        b.OtherTransactionDate, b.StatusApprove, b.WarehouseId,
        c.TransactionTypeId, a.Price, a.Qty
      from inserted a
      left join OtherTransactionHd b on a.OtherTransactionCode = b.OtherTransactionCode
      left join TransactionType c on b.TransactionTypeId = c.TransactionTypeId

    open Cursor_Inserted 
    fetch next from Cursor_Inserted 
    into @ReferenceCode, @ReferenceNo, @ItemId, @WarehouseId, @TransactionDate, @StatusApprove, 
      @WarehouseId, @TransactionTypeId, @Price, @Qty

    while @@FETCH_STATUS = 0
    begin
      update TransactionRecord
      set TotalQty = @Qty, Price = @Price 
      where ReferenceCode = @ReferenceCode 
      and ReferenceNo = @ReferenceNo
      if @@ROWCOUNT = 0
      insert into TransactionRecord
        (TransactionTypeId, ItemId, TransactionDate, ReferenceNo, TotalQty, 
        TotalBerat, Price, ReferenceCode, TotalLuas, TotalVolume, WarehouseId)
      values
        (@TransactionTypeId, @ItemId, @TransactionDate, @ReferenceNo, @Qty, 
        0, @Price, @ReferenceCode, 0, 0, @WarehouseId)

      fetch next from Cursor_Inserted 
      into @ReferenceCode, @ReferenceNo, @Itemid, @WareHouseId, @TransactionDate, @StatusApprove, 
        @WarehouseId, @TransactionTypeId, @Price, @Qty
    end
    close Cursor_Inserted 
    deallocate Cursor_Inserted 
  end

end
go


create trigger TR_OtherTransactionHd_After on OtherTransactionHd for 
  insert, update, delete as
begin
  declare
/* <26/08/2009> *** Variable Template *********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,    
/**/ @TransactionDateNew datetime, 
/**/ @TransactionDateOld datetime, 
/**/ @CounterPrintNew datetime, 
/**/ @CounterPrintOld datetime, 
/**/ @StatusApproveNew status, 
/**/ @StatusApproveOld status,
/****************** End Variable Template ******************/  
    
    @New_VendorId numeric,
    @Old_VendorId numeric,
    @New_PurchaseOrderId numeric,
    @CountItemDetailUsed integer

/* <26/08/2009> *************** Trigger Template *************************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Header 
/**/  if (@OnInsert = 1) or (@OnUpdate = 1)
/**/  begin
/**/    set @DoChecking = 1;
/**/
/**/    select 
/**/      @TransactionDateNew = OtherTransactionDate, --> Set Transaction Date Field Here !
/**/      @CounterPrintNew = CounterPrint,
/**/      @StatusApproveNew = StatusApprove
/**/    from inserted
/**/
/**/    if (@OnUpdate = 1)
/**/    begin
/**/      select
/**/        @TransactionDateOld = OtherTransactionDate, --> Set Transaction Date Field Here !
/**/        @CounterPrintOld = CounterPrint,
/**/        @StatusApproveOld = StatusApprove
/**/      from deleted
/**/
/**/      -- Cek status void
/**/      if @StatusApproveOld = '2' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek flag use
/**/      if @StatusApproveOld = '3' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek perubahan periode tanggal
/**/      if (year(@TransactionDateNew) <> year(@TransactionDateOld)) or
/**/        (month(@TransactionDateNew) <> month(@TransactionDateOld))
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Periode tanggal baru tidak sama dengan periode tanggal lama !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      ---####> Bypass pengecekan closing untuk field2 tertentu 
/**/      if (@CounterPrintOld <> @CounterPrintNew) 
/**/        set @DoChecking = 0      
/**/    end
/**/
/**/    if @DoChecking = 1
/**/    begin
/**/      if @TransactionDateNew <= dbo.fnGetClosingDate() -- closing date
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/        RETURN
/**/      end
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

  
  -- ***************************** On Insert *********************************

  /*if (@OnInsert = 1) 
  begin
    
  end*/

  -- ***************************** On Delete *********************************

  /*if (@OnDelete = 1) 
  begin
   
  end*/
  
  -- ***************************** On Update *********************************
  
  /*if (@OnUpdate = 1) 
  begin
  end */
end
go


create trigger TR_PurchaseOrderDt_After on PurchaseOrderDt for 
  insert, update, delete as
begin
/* replace character #### with table transaction */
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,
/**/ @TransactionDate datetime, 
/**/ @StatusApprove status, 
/****************** End Variable Template ******************/  
    
    @New_PurchaseOrderCode TransactionCode,
    @New_PurchaseOrderDate datetime,
    @New_No integer,
    @New_ItemId numeric,
    @New_Qty quantity,
    @New_QtyOutstanding quantity,

    @Old_PurchaseOrderCode TransactionCode,
    @Old_PurchaseOrderDate datetime,
    @Old_No integer,
    @Old_ItemId numeric,
    @Old_Qty quantity,
    @Old_QtyOutstanding quantity,

    @S varchar,
    @ReturnState integer,
    @Tahun integer,
    @Bulan integer

/* <26/08/2009> ***************** Trigger Template *********************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Detail 
/**/  if (@OnInsert = 1)
/**/  begin
/**/    select 
/**/      @TransactionDate = b.PurchaseOrderDate, --#####> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from inserted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --#####> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if (@OnUpdate = 1) or (@OnDelete = 1) 
/**/  begin
/**/    select       
/**/      @TransactionDate = b.PurchaseOrderDate, --#####> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from deleted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --#####> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if @StatusApprove = '2' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/    RETURN
/**/  end
/**/    
/**/  if @StatusApprove = '3' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/    RETURN
/**/  end    
/**/   
/**/  set @DoChecking = 1;
/**/  --#####> Bypass validasi untuk field2 tertentu
/**/  if (@OnUpdate = 1)
/**/  begin
/**/    select @New_QtyOutstanding = QtyOutstanding
/**/    from inserted
/**/
/**/    select @New_QtyOutstanding = QtyOutstanding
/**/    from deleted
/**/
/**/    if (@Old_QtyOutstanding <> @New_QtyOutstanding) 
/**/      set @DoChecking = 0
/**/  end  
/**/  
/**/  if @DoChecking = 1 
/**/  begin
/**/    if @TransactionDate <= dbo.fnGetClosingDate() 
/**/    begin
/**/      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/      RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/      RETURN
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

  -- ***************************** On Insert *********************************

  if (@OnInsert = 1) 
  begin
    -- Initial
    select 
      @New_PurchaseOrderCode = a.PurchaseOrderCode,
      @New_ItemId = a.ItemId,
      @New_No = a.No,
      @New_Qty = a.Qty,
      @New_PurchaseOrderDate = b.PurchaseOrderDate
    from inserted a
    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode

    -- 1. Update QtyOutstanding
    update PurchaseOrderDt
    set QtyOutstanding = @New_Qty
    where PurchaseOrderCode = @New_PurchaseOrderCode
    and No = @New_No

    -- 2. Update Qty Order balance (+)
    -- call spUpdateStockBalance_QtyPOIn (Tipe In, @Sign = 1)
    set @Tahun = year(@New_PurchaseOrderDate) 
    set @Bulan = month(@New_PurchaseOrderDate)
    execute @ReturnState = dbo.spUpdateItemOrderBalance_QtyPOIn 1, @New_ItemId, @Tahun, @Bulan, @New_Qty
    if @ReturnState <> 0
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
      RAISERROR('^Fail to execute: spUpdateStockBalance_QtyPOIn !^', 16, 1)
      RETURN
    end
  end   

  -- ***************************** On Delete *********************************

  if (@OnDelete = 1) 
  begin
    -- Initial
    select 
      @Old_ItemId = a.ItemId,
      @Old_Qty = a.Qty,
      @Old_QtyOutstanding = a.QtyOutstanding,
      @Old_PurchaseOrderDate = b.PurchaseOrderDate
    from deleted a
    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode

    if @Old_QtyOutstanding <> @Old_Qty
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
      RAISERROR('^Transaksi tidak bisa dihapus, karena telah ada penerimaan barang atas PO ini !^', 16, 1)
      RETURN
    end

    -- 1. Update Qty Order balance (-)
    -- call spUpdateStockBalance_QtyPOIn (Tipe In, @Sign = -1)
    set @Tahun = year(@Old_PurchaseOrderDate) 
    set @Bulan = month(@Old_PurchaseOrderDate)
    execute @ReturnState = dbo.spUpdateItemOrderBalance_QtyPOIn -1, @Old_ItemId, @Tahun, @Bulan, @Old_Qty
    if @ReturnState <> 0
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
      RAISERROR('^Fail to execute: spUpdateStockBalance_QtyPOIn !^', 16, 1)
      RETURN
    end
  end
  
  -- ***************************** On Update *********************************
  
  if (@OnUpdate = 1) 
  begin
    -- Initial
    select 
      @New_PurchaseOrderCode = a.PurchaseOrderCode,
      @New_No = a.No,
      @New_ItemId = a.ItemId,
      @New_Qty = a.Qty,
      @New_QtyOutstanding = a.QtyOutstanding,
      @New_PurchaseOrderDate = b.PurchaseOrderDate
    from inserted a
    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode

    select 
      @Old_PurchaseOrderCode = a.PurchaseOrderCode,
      @Old_No = a.No,
      @Old_ItemId = a.ItemId,
      @Old_Qty = a.Qty,
      @Old_QtyOutstanding = a.QtyOutstanding,
      @Old_PurchaseOrderDate = b.PurchaseOrderDate
    from deleted a
    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode

    -- 1. Validasi data detail PO, jika barang sudah pernah di terima (LPB) maka tidak dapat diubah
    if UPDATE(ItemId) or UPDATE(Price) or UPDATE(DiscItem) or UPDATE(DiscItem2) or UPDATE(VoucherItem) or UPDATE(ItemTax)
    begin
      if (@Old_QtyOutstanding <> @Old_Qty) 
      begin        
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Perubahan tidak dapat dilakukan, karena telah ada penerimaan barang atas PO ini !^', 16, 1)
        RETURN
      end
    end

    -- 2. Qty berubah
    if UPDATE(Qty)
    begin
      if @New_Qty > @Old_Qty
      begin
        -- Qty baru lebih besar dari qty lama
        update PurchaseOrderDt
        set QtyOutstanding = QtyOutstanding + (@New_Qty - @Old_Qty)
        where PurchaseOrderCode = @New_PurchaseOrderCode
        and No = @New_No
      end
      else -- Qty baru lebih kecil dari qty lama
      begin
        -- Qty outstanding yang lama lebih besar dari selisih qty baru (Old-New)
        if @Old_QtyOutstanding >= (@Old_Qty - @New_Qty)
          update PurchaseOrderDt
          set QtyOutstanding = QtyOutstanding - (@Old_Qty - @New_Qty)
          where PurchaseOrderCode = @New_PurchaseOrderCode
          and No = @New_No
        else
        begin
          set @S = cast((@Old_Qty - @Old_QtyOutstanding) as varchar)
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Qty baru lebih kecil dari qty PO sudah diproses (%s) !^', 16, 1, @S)
          RETURN
        end
      end
    end

    -- 3. Qty Outstanding berubah
    if UPDATE(QtyOutstanding)
    begin
      if @New_QtyOutstanding < 0 
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Qty proses lebih besar dari qty sisa (qty outstanding) !^', 16, 1)
        RETURN
      end
    end

    -- 4. Update Qty Order balance
    -- call spUpdateStockBalance_QtyPOIn (Tipe In, @Sign = -1) for old record
    set @Tahun = year(@Old_PurchaseOrderDate) 
    set @Bulan = month(@Old_PurchaseOrderDate)
    execute @ReturnState = dbo.spUpdateItemOrderBalance_QtyPOIn -1, @Old_ItemId, @Tahun, @Bulan, @Old_Qty
    if @ReturnState <> 0
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
      RAISERROR('^Fail to execute: spUpdateStockBalance_QtyPOIn !^', 16, 1)
      RETURN
    end
    -- call spUpdateStockBalance_QtyPOIn (Tipe In, @Sign = 1) for new record
    set @Tahun = year(@New_PurchaseOrderDate) 
    set @Bulan = month(@New_PurchaseOrderDate)
    execute @ReturnState = dbo.spUpdateItemOrderBalance_QtyPOIn 1, @New_ItemId, @Tahun, @Bulan, @New_Qty
    if @ReturnState <> 0
    begin
      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
      RAISERROR('^Fail to execute: spUpdateStockBalance_QtyPOIn !^', 16, 1)
      RETURN
    end
  end
end
go


create trigger TR_PurchaseOrderGroupQty_After on PurchaseOrderGroupQty for 
  insert, update, delete as
begin
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,
/**/ @TransactionDate datetime, 
/**/ @StatusApprove status 
/****************** End Variable Template ******************/  
    
    
/* <26/08/2009> ***************** Trigger Template *********************************/
/**/  if @@ROWCOUNT = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Detail 
/**/  if (@OnInsert = 1)
/**/  begin
/**/    select 
/**/      @TransactionDate = b.PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from inserted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if (@OnUpdate = 1) or (@OnDelete = 1) 
/**/  begin
/**/    select       
/**/      @TransactionDate = b.PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from deleted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if @StatusApprove = '2' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/    RETURN
/**/  end
/**/    
/**/  if @StatusApprove = '3' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/    RETURN
/**/  end    
/**/   
/**/  set @DoChecking = 1;
/**/  --> Bypass validasi untuk field2 tertentu !!!!!!!!
/**/  --if (@OnUpdate = 1)
/**/  --begin
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from inserted
/**/
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from deleted
/**/
/**/  --  if (@Old_QtyOutstanding <> @New_QtyOutstanding) 
/**/  --    set @DoChecking = 0
/**/  --end  
/**/  
/**/  if @DoChecking = 1 
/**/  begin
/**/    if @TransactionDate <= dbo.fnGetClosingDate() 
/**/    begin
/**/      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/      RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/      RETURN
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

/****************************** On Insert ********************************************/
--if (@OnInsert = 1) 
--begin
--end

/****************************** On Delete ********************************************/
--if (@OnDelete = 1) 
--begin
--end
  
/****************************** On Update ********************************************/
--if (@OnUpdate = 1) 
--begin
--end
 
end
go


create trigger TR_PurchaseOrderHd_After on PurchaseOrderHd for 
  insert, update, delete as
begin
/* replace character #### with table transaction */
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,    
/**/ @TransactionDateNew datetime, 
/**/ @TransactionDateOld datetime, 
/**/ @CounterPrintNew datetime, 
/**/ @CounterPrintOld datetime, 
/**/ @StatusApproveNew status, 
/**/ @StatusApproveOld status,
/****************** End Variable Template ******************/  
    
    @New_VendorId numeric,
    @Old_VendorId numeric,
    @New_PurchaseOrderCode numeric,
    @CountItemDetailUsed integer

/* <26/08/2009> *************** Trigger Template *************************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Header 
/**/  if (@OnInsert = 1) or (@OnUpdate = 1)
/**/  begin
/**/    set @DoChecking = 1;
/**/
/**/    select 
/**/      @TransactionDateNew = PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/      @CounterPrintNew = CounterPrint
/**/    from inserted
/**/
/**/    if (@OnUpdate = 1)
/**/    begin
/**/      select
/**/        @TransactionDateOld = PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/        @CounterPrintOld = CounterPrint,
/**/        @StatusApproveOld = StatusApprove
/**/      from deleted
/**/
/**/      -- Cek status void
/**/      if @StatusApproveOld = '2' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek flag use
/**/      if @StatusApproveOld = '3' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek perubahan periode tanggal
/**/      if (year(@TransactionDateNew) <> year(@TransactionDateOld)) or
/**/        (month(@TransactionDateNew) <> month(@TransactionDateOld))
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Periode tanggal baru tidak sama dengan periode tanggal lama !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      ---####> Bypass pengecekan closing untuk field2 tertentu 
/**/      if (@CounterPrintOld <> @CounterPrintNew) 
/**/        set @DoChecking = 0      
/**/    end
/**/
/**/    if @DoChecking = 1
/**/    begin
/**/      if @TransactionDateNew <= dbo.fnGetClosingDate() -- closing date
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/        RETURN
/**/      end
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/


/****************************** On Insert ********************************************/
/**/ --if (@OnInsert = 1) 
/**/ --begin
    
/**/ --end

/****************************** On Delete ********************************************/
/**/ --if (@OnDelete = 1) 
/**/ --begin

/**/ --end
  
/****************************** On Update ********************************************/
/**/ if (@OnUpdate = 1) 
/**/ begin
    -- 0. Initialize
    select 
      @New_VendorId = VendorId,
      @New_PurchaseOrderCode = PurchaseOrderCode
    from inserted

    select @Old_VendorId = VendorId
    from deleted

    select @CountItemDetailUsed = Count(ItemId)
    from PurchaseOrderDt
    where PurchaseOrderCode = @New_PurchaseOrderCode
    and Qty <> QtyOutstanding    
    if @CountItemDetailUsed is null
      set @CountItemDetailUsed = 0
        
    -- 1. perform old process here
    
    -- 2. Do void process here
    if (@StatusApproveNew <> @StatusApproveOld) and (@StatusApproveNew = '2')
    begin
      if @CountItemDetailUsed <> 0 -- detail PO telah dipakai pada invoice 
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Void tidak dapat dilakukan, karena barang dalam PO telah diterima (LPB) !^', 16, 1)
        RETURN
      end
    end

    -- 3. perform new process here, if not void process
    if @StatusApproveNew <> '2' 
    begin      
      if (@Old_VendorId <> @New_VendorId) -- Vendor berubah
      begin
        if @CountItemDetailUsed <> 0 
        begin
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Vendor tidak dapat diubah, karena barang dalam PO telah diterima (LPB) !^', 16, 1)
          RETURN
        end
      end
    end
/**/ end

end
go


create trigger TR_PurchaseOrderSpec_After on PurchaseOrderSpec for 
  insert, update, delete as
begin
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,
/**/ @TransactionDate datetime, 
/**/ @StatusApprove status
/****************** End Variable Template ******************/  


/* <26/08/2009> ***************** Trigger Template *********************************/
/**/  if @@ROWCOUNT = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Detail 
/**/  if (@OnInsert = 1)
/**/  begin
/**/    select 
/**/      @TransactionDate = b.PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from inserted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if (@OnUpdate = 1) or (@OnDelete = 1) 
/**/  begin
/**/    select       
/**/      @TransactionDate = b.PurchaseOrderDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from deleted a
/**/    left join PurchaseOrderHd b on a.PurchaseOrderCode = b.PurchaseOrderCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if @StatusApprove = '2' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/    RETURN
/**/  end
/**/    
/**/  if @StatusApprove = '3' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/    RETURN
/**/  end    
/**/   
/**/  set @DoChecking = 1;
/**/  --> Bypass validasi untuk field2 tertentu !!!!!!!!
/**/  --if (@OnUpdate = 1)
/**/  --begin
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from inserted
/**/
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from deleted
/**/
/**/  --  if (@Old_QtyOutstanding <> @New_QtyOutstanding) 
/**/  --    set @DoChecking = 0
/**/  --end  
/**/  
/**/  if @DoChecking = 1 
/**/  begin
/**/    if @TransactionDate <= dbo.fnGetClosingDate() 
/**/    begin
/**/      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/      RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/      RETURN
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

/****************************** On Insert ********************************************/
--if (@OnInsert = 1) 
--begin
--end

/****************************** On Delete ********************************************/
--if (@OnDelete = 1) 
--begin
--end
  
/****************************** On Update ********************************************/
--if (@OnUpdate = 1) 
--begin
--end

end
go


create trigger TR_ReceivingRecordDt_After on ReceivingRecordDt for 
  insert, update, delete as
begin
/* replace character ReceivingRecord with table transaction */
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,
/**/ @TransactionDate datetime, 
/**/ @StatusApprove status
/****************** End Variable Template ******************/  
    
--    @
    
/* <26/08/2009> ***************** Trigger Template *********************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Detail 
/**/  if (@OnInsert = 1)
/**/  begin
/**/    select 
/**/      @TransactionDate = b.ReceivingRecordDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from inserted a
/**/    left join ReceivingRecordHd b on a.ReceivingRecordCode = b.ReceivingRecordCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if (@OnUpdate = 1) or (@OnDelete = 1) 
/**/  begin
/**/    select       
/**/      @TransactionDate = b.ReceivingRecordDate, --> Set Transaction Date Field Here !
/**/      @StatusApprove = b.StatusApprove
/**/    from deleted a
/**/    left join ReceivingRecordHd b on a.ReceivingRecordCode = b.ReceivingRecordCode --> Set Transaction Code Field Here !
/**/  end
/**/
/**/  if @StatusApprove = '2' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/    RETURN
/**/  end
/**/    
/**/  if @StatusApprove = '3' 
/**/  begin
/**/    IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/    RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/    RETURN
/**/  end    
/**/   
/**/  set @DoChecking = 1;
/**/  --> Bypass validasi untuk field2 tertentu !!!!!!!!
/**/  --if (@OnUpdate = 1)
/**/  --begin
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from inserted
/**/
/**/  --  select @New_QtyOutstanding = QtyOutstanding
/**/  --  from deleted
/**/
/**/  --  if (@Old_QtyOutstanding <> @New_QtyOutstanding) 
/**/  --    set @DoChecking = 0
/**/  --end  
/**/  
/**/  if @DoChecking = 1 
/**/  begin
/**/    if @TransactionDate <= dbo.fnGetClosingDate() 
/**/    begin
/**/      IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/      RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/      RETURN
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

/****************************** On Insert ********************************************/
/**/ --if (@OnInsert = 1) 
/**/ --begin
    
/**/ --end

/****************************** On Delete ********************************************/
/**/ --if (@OnDelete = 1) 
/**/ --begin

/**/ --end
  
/****************************** On Update ********************************************/
/**/ --if (@OnUpdate = 1) 
/**/ --begin

/**/ --end

end
go


create trigger TR_ReceivingRecordHd_After on ReceivingRecordHd for 
  insert, update, delete as
begin
/* replace character ReceivingRecord with table transaction */
  declare
/* <26/08/2009> *** Variable Template **********************/
/**/ @OnInsert int,
/**/ @OnUpdate int,
/**/ @OnDelete int,
/**/ @DoChecking int,    
/**/ @TransactionDateNew datetime, 
/**/ @TransactionDateOld datetime, 
/**/ @CounterPrintNew datetime, 
/**/ @CounterPrintOld datetime, 
/**/ @StatusApproveNew status, 
/**/ @StatusApproveOld status
/****************** End Variable Template ******************/  
    
--    @ numeric,

/* <26/08/2009> *************** Trigger Template *************************************/
/**/  if @@rowcount = 0
/**/    return
/**/  
/**/  -- Initial Trigger State
/**/  set @OnUpdate = 0
/**/  set @OnInsert = 0
/**/  set @OnDelete = 0
/**/  if exists (select * from inserted)
/**/  begin
/**/    if exists (select * from deleted)
/**/      set @OnUpdate = 1
/**/    else
/**/      set @OnInsert = 1
/**/  end
/**/  else
/**/    if exists (select * from deleted)
/**/      set @OnDelete = 1
/**/        
/**/  -- Validate Header 
/**/  if (@OnInsert = 1) or (@OnUpdate = 1)
/**/  begin
/**/    set @DoChecking = 1;
/**/
/**/    select 
/**/      @TransactionDateNew = ReceivingRecordDate, --> Set Transaction Date Field Here !
/**/      @CounterPrintNew = CounterPrint,
/**/      @StatusApproveNew = StatusApprove
/**/    from inserted
/**/
/**/    if (@OnUpdate = 1)
/**/    begin
/**/      select
/**/        @TransactionDateOld = ReceivingRecordDate, --> Set Transaction Date Field Here !
/**/        @CounterPrintOld = CounterPrint,
/**/        @StatusApproveOld = StatusApprove
/**/      from deleted
/**/
/**/      -- Cek status void
/**/      if @StatusApproveOld = '2' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah di void !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek flag use
/**/      if @StatusApproveOld = '3' 
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah dipakai oleh transaksi lain !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      -- Cek perubahan periode tanggal
/**/      if (year(@TransactionDateNew) <> year(@TransactionDateOld)) or
/**/        (month(@TransactionDateNew) <> month(@TransactionDateOld))
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Periode tanggal baru tidak sama dengan periode tanggal lama !^', 16, 1)
/**/        RETURN
/**/      end
/**/
/**/      --> Bypass pengecekan closing untuk field2 tertentu !!!!!!
/**/      if (@CounterPrintOld <> @CounterPrintNew) 
/**/        set @DoChecking = 0      
/**/    end
/**/
/**/    if @DoChecking = 1
/**/    begin
/**/      if @TransactionDateNew <= dbo.fnGetClosingDate() -- closing date
/**/      begin
/**/        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
/**/        RAISERROR('^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^', 16, 1)
/**/        RETURN
/**/      end
/**/    end
/**/  end
/****************************** End Trigger Template *********************************/

/****************************** On Insert ********************************************/
/**/ --if (@OnInsert = 1) 
/**/ --begin
    
/**/ --end

/****************************** On Delete ********************************************/
/**/ --if (@OnDelete = 1) 
/**/ --begin

/**/ --end
  
/****************************** On Update ********************************************/
/**/ --if (@OnUpdate = 1) 
/**/ --begin

/**/ --end

end
go


create trigger TR_SPKDt_After on SPKDt 
  for insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    @ins_SPKCode TransactionCode,
    @ins_No integer,
    @ins_ItemId numeric,
    @ins_Qty quantity,
    @del_SPKCode numeric,
    @del_No integer,
    @Raw_ItemId numeric, 
    @Raw_QtyTotal quantity,
    @FlagUse flag,
    @FlagClose flag
       
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
    -- Delete Old Record
    select 
      @del_SPKCode = SPKCode, 
      @del_No = No
    from deleted

    select 
      @FlagUse = FlagUse,
      @FlagClose = FlagClose
    from SPKHd  
    where SPKCode = @del_SPKCode
    
    if (@FlagUse = '1') or (@FlagClose = '1')
    begin
      raiserror('^SPK tidak dapat dihapus atau diubah, karena sudah di produksi^', 10, 1)
    end

    delete from SPKItem 
    where SPKCode = @del_SPKCode
    and No = @del_No
  end

  if (@OnInsert = 1) or (@OnUpdate = 1)
  begin
    -- insert New Record
    select 
      @ins_SPKCode = SPKCode, 
      @ins_No = No,
      @ins_ItemId = ItemId,
      @ins_Qty = Qty
    from inserted

    select 
      @FlagUse = FlagUse,
      @FlagClose = FlagClose
    from SPKHd  
    where SPKCode = @ins_SPKCode
    
    if (@FlagUse = '1') or (@FlagClose = '1')
    begin
      raiserror('^SPK tidak dapat dihapus atau diubah, karena sudah di produksi^', 10, 1)
    end

    declare @MyCursor cursor
    exec spGetSPKRawMaterial @ins_ItemId, @spGetSPKRawMaterial_cursor = @MyCursor OUTPUT
      
    fetch next from @MyCursor into @Raw_ItemId, @Raw_QtyTotal
    while (@@FETCH_STATUS = 0)
    begin
      insert into SPKItem 
        (SPKCode, No, ItemId, QtySPK, Qty)
      values
        (@ins_SPKCode, @ins_No, @Raw_ItemId, (@Raw_QtyTotal * @ins_Qty), (@Raw_QtyTotal * @ins_Qty))
        
      fetch next from @MyCursor into @Raw_ItemId, @Raw_QtyTotal
    end --fetch
      
    close @MyCursor
    deallocate @MyCursor
  end   
end
go


create trigger TR_TransactionRecord_After on TransactionRecord for 
  insert, update, delete as
begin
  declare
    @OnInsert int,
    @OnUpdate int,
    @OnDelete int,
    
    @New_TransactionId numeric,
    @New_TransactionTypeId numeric,
    @New_TransactionDate DateWithTime,
    @New_Tahun int,
    @New_Bulan int,
    @New_WarehouseId numeric,
    @New_ItemId numeric,
    @New_TotalQty quantity,
    @New_Price CurrencyPlus,

    @Old_TransactionId numeric,
    @Old_TransactionTypeId numeric,
    @Old_TransactionDate DateWithTime,
    @Old_Tahun int,
    @Old_Bulan int,
    @Old_WarehouseId numeric,
    @Old_ItemId numeric,
    @Old_TotalQty quantity,

    @StatusTransaction status,
    @TransactionBalance_LastQtyBalance quantity,
    @RecDate DateWithTime,
    @LoopCount int,
    @ReturnState int,
    @S varchar(max)

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
      @New_TransactionId = TransactionId,
      @New_TransactionTypeId = TransactionTypeId,
      @New_TransactionDate = TransactionDate,
      @New_Tahun = year(@New_TransactionDate),
      @New_Bulan = month(@New_TransactionDate),
      @New_WarehouseId = WarehouseId,
      @New_ItemId = ItemId,
      @New_TotalQty = TotalQty,
      @New_Price = Price
    from inserted
    
    -- Get Transaction Type Status
    select @StatusTransaction = StatusTransaction 
    from TransactionType
    where TransactionTypeId = @New_TransactionTypeId
    
    -- Transaction In 
    if @StatusTransaction = '0' 
    begin
      -- Label :
      Ins_IN:

      if @New_WarehouseId is null
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Gudang masuk masih belum diisi !^', 16, 1)
        RETURN
      end
  
      -- Get Last Qty Balance (WH In)
      set @TransactionBalance_LastQtyBalance = dbo.fnGetTransactionBalance_QtyBalance_DateBefore(@New_ItemId, @New_WarehouseId, @New_TransactionDate)
      
      -- Insert Transaction Balance
      insert into TransactionBalance (TransactionId, QtyBalance)
      values (@New_TransactionId, (@TransactionBalance_LastQtyBalance + @New_TotalQty))

      -- Update Transaction Balance
      update TransactionBalance
      set QtyBalance = QtyBalance + @New_TotalQty
      from TransactionBalance
      inner join TransactionRecord b on TransactionBalance.TransactionId = b.TransactionId
      where b.WarehouseId = @New_WarehouseId
      and b.TransactionDate > @New_TransactionDate
      and year(b.TransactionDate) = @New_Tahun
      and month(b.TransactionDate) = @New_Bulan

      -- call spUpdateStockBalance_QtyIn (Tipe In, @Sign = 1)
      execute @ReturnState = spUpdateStockBalance_QtyIn 1, @New_ItemId, @New_WarehouseId, @New_Tahun, @New_Bulan, @New_TotalQty
      if @ReturnState <> 0
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Fail to execute: spUpdateStockBalance_QtyIn !^', 16, 1)
        RETURN
      end
    end
    else
    begin
      -- Transaction Out
      if @StatusTransaction = '1'  
      begin      
        -- Label :
        Ins_OUT:
 
        if @New_WarehouseId is null
        begin
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Gudang keluar masih belum diisi !^', 16, 1)
          RETURN
        end

        -- Get Last Total QtyBalance (WH Out)
        set @TransactionBalance_LastQtyBalance = dbo.fnGetTransactionBalance_QtyBalance_DateBefore(@New_ItemId, @New_WarehouseId, @New_TransactionDate)

        -- Jika bukan OnUpdate
        if (@OnUpdate <> 1)
        begin
          -- Coba alokasikan sisa stock sesudah tanggal transaksi
          select @RecDate = min(b.TransactionDate) 
          from TransactionBalance a
          left join TransactionRecord b on a.TransactionId = b.TransactionId
          left join StockBalance c on 
            (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
            and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
            and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
          where b.ItemId = @New_ItemId
          and b.WarehouseId = @New_WarehouseId
          and b.TransactionDate > @New_TransactionDate
          and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < @New_TotalQty

          -- Cek semua Qty Stock H+1 dari tgl transaksi
          if not(@RecDate is null)
          begin 
            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            set @S = convert(varchar, @RecDate, 113)
            RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
            RETURN
          end
        end
        
        -- Insert Transaction Balance
        insert into TransactionBalance (TransactionId, QtyBalance)
        values (@New_TransactionId, (@TransactionBalance_LastQtyBalance - @New_TotalQty))

        -- Update Transaction Balance
        update TransactionBalance
        set QtyBalance = QtyBalance - @New_TotalQty
        from TransactionBalance
        inner join TransactionRecord b on TransactionBalance.TransactionId = b.TransactionId
        where b.WarehouseId = @New_WarehouseId
        and b.TransactionDate > @New_TransactionDate
        and year(b.TransactionDate) = @New_Tahun
        and month(b.TransactionDate) = @New_Bulan

        -- call spUpdateStockBalance_QtyOut (Tipe Out, @Sign = 1)
        execute @ReturnState = spUpdateStockBalance_QtyOut 1, @New_ItemId, @New_WarehouseId, @New_Tahun, @New_Bulan, @New_TotalQty
        if @ReturnState <> 0
        begin
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Fail to execute: spUpdateStockBalance_QtyOut !^', 16, 1)
          RETURN
        end
      end
      else
      begin
        -- TransactionType Invalid
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Invalid Transaction Type Status !^', 16, 1)
        RETURN
      end
    end

    if (@OnUpdate = 1)
      GOTO Upd_VALIDATE
  end   

  -- **********************************************************************************************************

  if (@OnDelete = 1) 
  begin
    -- Initial
    select 
      @Old_TransactionId = TransactionId,
      @Old_TransactionTypeId = TransactionTypeId,
      @Old_TransactionDate = TransactionDate,
      @Old_Tahun = year(@Old_TransactionDate),
      @Old_Bulan = month(@Old_TransactionDate),
      @Old_WarehouseId = WarehouseId,
      @Old_ItemId = ItemId,
      @Old_TotalQty = TotalQty
    from deleted
    
    -- Get Transaction Type Status
    select @StatusTransaction = StatusTransaction 
    from TransactionType
    where TransactionTypeId = @Old_TransactionTypeId

    -- Transaction In
    if @StatusTransaction = '0'
    begin      
      if @Old_WarehouseId is null
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Gudang masuk masih belum diisi !^', 16, 1)
        RETURN
      end

      -- Coba alokasikan sisa stock sesudah tanggal transaksi
      select @RecDate = min(b.TransactionDate)
      from TransactionBalance a
      left join TransactionRecord b on a.TransactionId = b.TransactionId
      left join StockBalance c on 
        (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
        and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
        and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
      where b.ItemId = @Old_ItemId
      and b.WarehouseId = @Old_WarehouseId
      and b.TransactionDate > @Old_TransactionDate
      and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < @Old_TotalQty
      
      -- Cek semua Qty Stock H+1 dari tgl transaksi
      if not (@RecDate is null)
      begin 
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        set @S = convert(varchar, @RecDate, 113)
        RAISERROR(N'^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
        RETURN
      end

      -- Label :
      Del_IN:

      -- Delete Transaction Balance
      delete TransactionBalance
      where TransactionId = @Old_TransactionId

      -- Update Transaction Balance
      update TransactionBalance
      set QtyBalance = QtyBalance - @Old_TotalQty
      from TransactionBalance
      inner join TransactionRecord b on TransactionBalance.TransactionId = b.TransactionId
      where b.WarehouseId = @Old_WarehouseId
      and b.TransactionDate > @Old_TransactionDate
      and year(b.TransactionDate) = @Old_Tahun
      and month(b.TransactionDate) = @Old_Bulan

      -- call spUpdateStockBalance_QtyIn (Tipe In, @Sign = -1)
      execute @ReturnState = spUpdateStockBalance_QtyIn -1, @Old_ItemId, @Old_WarehouseId, @Old_Tahun, @Old_Bulan, @Old_TotalQty
      if @ReturnState <> 0
      begin
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Fail to execute: spUpdateStockBalance_QtyIn !^', 16, 1)
        RETURN
      end

      if (@OnUpdate = 1)
        GOTO Ins_IN
    end
    else
    begin
      -- Transaction Out
      if @StatusTransaction = '1'
      begin      
        -- Label :
        Del_OUT:

        if @Old_WarehouseId is null
        begin
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Gudang keluar masih belum diisi !^', 16, 1)
          RETURN
        end

        -- Delete Transaction Balance
        delete TransactionBalance
        where TransactionId = @Old_TransactionId

        -- Update Transaction Balance
        update TransactionBalance
        set QtyBalance = QtyBalance + @Old_TotalQty
        from TransactionBalance
        inner join TransactionRecord b on TransactionBalance.TransactionId = b.TransactionId
        where b.WarehouseId = @Old_WarehouseId
        and b.TransactionDate > @Old_TransactionDate
        and year(b.TransactionDate) = @Old_Tahun
        and month(b.TransactionDate) = @Old_Bulan

        -- call spUpdateStockBalance_QtyOut (Tipe Out, @Sign = -1)
        execute @ReturnState = spUpdateStockBalance_QtyOut -1, @Old_ItemId, @Old_WarehouseId, @Old_Tahun, @Old_Bulan, @Old_TotalQty
        if @ReturnState <> 0
        begin
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          RAISERROR('^Fail to execute: spUpdateStockBalance_QtyOut !^', 16, 1)
          RETURN
        end

        if (@OnUpdate = 1) 
          GOTO Ins_OUT
      end
      else
      begin
        -- TransactionType Invalid
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Invalid Transaction Type Status !^', 16, 1)
        RETURN
      end
    end
  end   
  
  -- **********************************************************************************************************
  
  if (@OnUpdate = 1) 
  begin
    -- Initial
    select 
      @New_TransactionId = TransactionId,
      @New_TransactionTypeId = TransactionTypeId,
      @New_TransactionDate = TransactionDate,
      @New_Tahun = year(@New_TransactionDate),
      @New_Bulan = month(@New_TransactionDate),
      @New_WarehouseId = WarehouseId,
      @New_ItemId = ItemId,
      @New_TotalQty = TotalQty,
      @New_Price = Price 
    from inserted

    select 
      @Old_TransactionId = TransactionId,
      @Old_TransactionTypeId = TransactionTypeId,
      @Old_TransactionDate = TransactionDate,
      @Old_Tahun = year(@Old_TransactionDate),
      @Old_Bulan = month(@Old_TransactionDate),
      @Old_WarehouseId = WarehouseId,
      @Old_ItemId = ItemId,
      @Old_TotalQty = TotalQty
    from deleted
    
    -- Get Transaction Type Status
    select @StatusTransaction = StatusTransaction 
    from TransactionType
    where TransactionTypeId = @Old_TransactionTypeId    

    if @StatusTransaction = '0' -- Transaction In
      GOTO Del_IN
    else
    begin      
      if @StatusTransaction = '1' -- Transaction Out
        GOTO Del_OUT  
      else
      begin     
        -- TransactionType Invalid
        IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
        RAISERROR('^Invalid Transaction Type Status !^', 16, 1)
        RETURN
      end
    end
    
    --------------------------- Proses Validasi data pada proses update ---------------------------------
    -- Label :
    Upd_VALIDATE:
          
    if (@StatusTransaction = '0') -- Transaction In
    begin
      if (@New_WarehouseId = @Old_WarehouseId) and (@Old_ItemId = @New_ItemId)  -- Gudang & Item tidak berubah
      begin
        if @New_TotalQty >= @Old_TotalQty -- Qty baru bertambah atau sama
        begin
          if @New_TransactionDate > @Old_TransactionDate -- Tanggal baru lebih maju 
          begin
            -- Cek stock minus sesudah tanggal transaksi
            select @RecDate = min(b.TransactionDate) 
            from TransactionBalance a
            left join TransactionRecord b on a.TransactionId = b.TransactionId
            left join StockBalance c on 
              (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
              and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
              and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
            where b.ItemId = @Old_ItemId
            and b.WarehouseId = @Old_WarehouseId
            and b.TransactionDate > @Old_TransactionDate
            and b.TransactionDate < @New_TransactionDate
            and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

            if not(@RecDate is null)
            begin 
              IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
              set @S = convert(varchar, @RecDate, 113)
              RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
              RETURN
            end  
          end
          --else
          --  Tanggal baru lebih mundur dari tanggal lama, tidak ada yang perlu di cek
        end
        else
        begin -- Qty baru lebih kecil dari qty lama
          -- Cek stock minus sesudah tanggal transaksi
          select @RecDate = min(b.TransactionDate) 
          from TransactionBalance a
          left join TransactionRecord b on a.TransactionId = b.TransactionId
          left join StockBalance c on 
            (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
            and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
            and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
          where b.ItemId = @Old_ItemId
          and b.WarehouseId = @Old_WarehouseId
          and b.TransactionDate > @Old_TransactionDate
          and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

          if not(@RecDate is null)
          begin 
            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            set @S = convert(varchar, @RecDate, 113)
            RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
            RETURN
          end
        end
      end
      else
      begin -- Gudang / Item berubah
        -- Cek stock minus sesudah tanggal transaksi
        select @RecDate = min(b.TransactionDate) 
        from TransactionBalance a
        left join TransactionRecord b on a.TransactionId = b.TransactionId
        left join StockBalance c on 
          (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
          and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
          and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
        where b.ItemId = @Old_ItemId
        and b.WarehouseId = @Old_WarehouseId
        and b.TransactionDate > @Old_TransactionDate
        and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

        if not(@RecDate is null)
        begin 
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          set @S = convert(varchar, @RecDate, 113)
          RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
          RETURN
        end        
      end
    end

    -- Transaction Out
    if (@StatusTransaction = '1')
    begin
      if (@New_WarehouseId = @Old_WarehouseId) and (@Old_ItemId = @New_ItemId)  -- Gudang & Item tidak berubah
      begin
        if @New_TotalQty <= @Old_TotalQty -- Qty baru sama / lebih kecil
        begin
          if @New_TransactionDate < @Old_TransactionDate -- Tanggal baru lebih mundur
          begin
            -- Cek stock minus sesudah tanggal transaksi
            select @RecDate = min(b.TransactionDate) 
            from TransactionBalance a
            left join TransactionRecord b on a.TransactionId = b.TransactionId
            left join StockBalance c on 
              (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
              and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
              and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
            where b.ItemId = @New_ItemId
            and b.WarehouseId = @New_WarehouseId
            and b.TransactionDate > @New_TransactionDate
            and b.TransactionDate < @Old_TransactionDate
            and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

            if not(@RecDate is null)
            begin 
              IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
              set @S = convert(varchar, @RecDate, 113)
              RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
              RETURN
            end  
          end
          --else
          --  Tanggal baru lebih maju dari tanggal lama, tidak ada yang perlu di cek
        end
        else
        begin -- Qty baru lebih besar
          -- Cek stock minus sesudah tanggal transaksi
          select @RecDate = min(b.TransactionDate) 
          from TransactionBalance a
          left join TransactionRecord b on a.TransactionId = b.TransactionId
          left join StockBalance c on 
            (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
            and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
            and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
          where b.ItemId = @New_ItemId
          and b.WarehouseId = @New_WarehouseId
          and b.TransactionDate > @New_TransactionDate
          and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

          if not(@RecDate is null)
          begin 
            IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
            set @S = convert(varchar, @RecDate, 113)
            RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
            RETURN
          end
        end
      end
      else
      begin -- Gudang / Item berubah
        -- Cek stock minus sesudah tanggal transaksi
        select @RecDate = min(b.TransactionDate) 
        from TransactionBalance a
        left join TransactionRecord b on a.TransactionId = b.TransactionId
        left join StockBalance c on 
          (c.ItemId = b.ItemId and c.WarehouseId = b.WarehouseId
          and c.Tahun = year(b.TransactionDate) - floor(2/(month(b.TransactionDate)+1))
          and c.Bulan = (month(b.TransactionDate) - 1) + (floor(2/(month(b.TransactionDate)+1)) * 12))
        where b.ItemId = @New_ItemId
        and b.WarehouseId = @New_WarehouseId
        and b.TransactionDate > @New_TransactionDate
        and (a.QtyBalance + IsNull(c.QtyBalance, 0)) < 0

        if not(@RecDate is null)
        begin 
          IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
          set @S = convert(varchar, @RecDate, 113)
          RAISERROR('^Transaksi tidak dapat di proses ! #13 Karena menyebabkan stok tanggal %s menjadi minus !^', 16, 1, @S)
          RETURN
        end        
      end
    end

  end    
end
go

