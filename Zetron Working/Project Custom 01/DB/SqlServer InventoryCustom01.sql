/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     19/11/2009 2:43:39 PM                        */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where id = object_id('TR_tbACTransactionAP_Ins')
          and type = 'TR')
   drop trigger TR_tbACTransactionAP_Ins
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbACTransactionAR_Ins')
          and type = 'TR')
   drop trigger TR_tbACTransactionAR_Ins
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbACTransactionRevenue_Ins')
          and type = 'TR')
   drop trigger TR_tbACTransactionRevenue_Ins
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbACTransactionRevenue_U')
          and type = 'TR')
   drop trigger TR_tbACTransactionRevenue_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMMutation_D')
          and type = 'TR')
   drop trigger TR_tbIMMutation_D
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMMutation_IU')
          and type = 'TR')
   drop trigger TR_tbIMMutation_IU
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMMutationHd_U')
          and type = 'TR')
   drop trigger TR_tbIMMutationHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMOtherTransactionDt_D')
          and type = 'TR')
   drop trigger TR_tbIMOtherTransactionDt_D
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMOtherTransactionDt_IU')
          and type = 'TR')
   drop trigger TR_tbIMOtherTransactionDt_IU
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMOtherTransactionHd_U')
          and type = 'TR')
   drop trigger TR_tbIMOtherTransactionHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMPurchaseReturnDt_D')
          and type = 'TR')
   drop trigger TR_tbIMPurchaseReturnDt_D
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMPurchaseReturnDt_IU')
          and type = 'TR')
   drop trigger TR_tbIMPurchaseReturnDt_IU
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMPurchaseReturnHd_U')
          and type = 'TR')
   drop trigger TR_tbIMPurchaseReturnHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMReceivingRecordHd_U')
          and type = 'TR')
   drop trigger TR_tbIMReceivingRecordHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMSalesInvoiceDt_D')
          and type = 'TR')
   drop trigger TR_tbIMSalesInvoiceDt_D
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMSalesInvoiceDt_IU')
          and type = 'TR')
   drop trigger TR_tbIMSalesInvoiceDt_IU
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMSalesInvoiceHd_U')
          and type = 'TR')
   drop trigger TR_tbIMSalesInvoiceHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMSalesReturnHd_U')
          and type = 'TR')
   drop trigger TR_tbIMSalesReturnHd_U
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMStockOnHandDt_Upd')
          and type = 'TR')
   drop trigger TR_tbIMStockOnHandDt_Upd
go

if exists (select 1
          from sysobjects
          where id = object_id('TR_tbIMTransaction_Ins')
          and type = 'TR')
   drop trigger TR_tbIMTransaction_Ins
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetAPOpeningBalance')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetAPOpeningBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetAROpeningBalance')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetAROpeningBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCurrentIdDeliveryOrder')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCurrentIdDeliveryOrder
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCurrentIdPurchaseDownPayment')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCurrentIdPurchaseDownPayment
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCurrentIdRRMutation')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCurrentIdRRMutation
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCurrentIdRRSalesReturn')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCurrentIdRRSalesReturn
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCurrentIdSalesDownPayment')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCurrentIdSalesDownPayment
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetCustomerDPOpeningBalance')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetCustomerDPOpeningBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSupplierDPOpeningBalance')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSupplierDPOpeningBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSuppliesOpeningBalanceQty')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSuppliesOpeningBalanceQty
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSuppliesOpeningBalanceValue')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSuppliesOpeningBalanceValue
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSuppliesTotalEndQtyReady')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSuppliesTotalEndQtyReady
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSuppliesTotalEndValue')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSuppliesTotalEndValue
go

if exists (select 1
          from sysobjects
          where  id = object_id('fnGetSuppliesTotalEndQty')
          and type in ('IF', 'FN', 'TF'))
   drop function fnGetSuppliesTotalEndQty
go

if exists (select 1
          from sysobjects
          where  id = object_id('spAssemblyTransactionValidation')
          and type = 'P')
   drop procedure spAssemblyTransactionValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spMutationValidation')
          and type = 'P')
   drop procedure spMutationValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spOtherTransactionValidation')
          and type = 'P')
   drop procedure spOtherTransactionValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spProcessClosingYear')
          and type = 'P')
   drop procedure spProcessClosingYear
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchaseReturnValidation')
          and type = 'P')
   drop procedure spPurchaseReturnValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchaseEditingProcess')
          and type = 'P')
   drop procedure spPurchaseEditingProcess
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchaseDownPaymentValidation')
          and type = 'P')
   drop procedure spPurchaseDownPaymentValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchaseInvoiceValidation')
          and type = 'P')
   drop procedure spPurchaseInvoiceValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchaseOrderValidation')
          and type = 'P')
   drop procedure spPurchaseOrderValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spPurchasePaymentValidation')
          and type = 'P')
   drop procedure spPurchasePaymentValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesReturnValidation')
          and type = 'P')
   drop procedure spSalesReturnValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesEditingProcess')
          and type = 'P')
   drop procedure spSalesEditingProcess
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesDownPaymentValidation')
          and type = 'P')
   drop procedure spSalesDownPaymentValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesInvoiceValidation')
          and type = 'P')
   drop procedure spSalesInvoiceValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesOrderValidation')
          and type = 'P')
   drop procedure spSalesOrderValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spSalesPaymentValidation')
          and type = 'P')
   drop procedure spSalesPaymentValidation
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateCustomerDPBalance')
          and type = 'P')
   drop procedure spUpdateCustomerDPBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateSupplierDPBalance')
          and type = 'P')
   drop procedure spUpdateSupplierDPBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateSuppliesBalance')
          and type = 'P')
   drop procedure spUpdateSuppliesBalance
go

if exists (select 1
          from sysobjects
          where  id = object_id('spUpdateTransactionBalance')
          and type = 'P')
   drop procedure spUpdateTransactionBalance
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('City') and o.name = 'FK_GNCity_GNProvince')
alter table City
   drop constraint FK_GNCity_GNProvince
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Department') and o.name = 'FK_Department_Company')
alter table Department
   drop constraint FK_Department_Company
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Display') and o.name = 'FK_DISPLAY_DISPLAY_M_REPORT')
alter table Display
   drop constraint FK_DISPLAY_DISPLAY_M_REPORT
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Employee') and o.name = 'FK_GNEmployee_GNPosition')
alter table Employee
   drop constraint FK_GNEmployee_GNPosition
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JobPosition') and o.name = 'FK_GNPosition_GNDepartment')
alter table JobPosition
   drop constraint FK_GNPosition_GNDepartment
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LogProgram') and o.name = 'FK_LOGPROGR_TIPE_LOGP_LOGTYPE')
alter table LogProgram
   drop constraint FK_LOGPROGR_TIPE_LOGP_LOGTYPE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PositionAccess') and o.name = 'FK_POSITION_POSITIONS_JOBPOSIT')
alter table PositionAccess
   drop constraint FK_POSITION_POSITIONS_JOBPOSIT
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Province') and o.name = 'FK_GNProvince_GNCountry')
alter table Province
   drop constraint FK_GNProvince_GNCountry
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReportCounter') and o.name = 'FK_REPORTCO_EMPLOYEE__EMPLOYEE')
alter table ReportCounter
   drop constraint FK_REPORTCO_EMPLOYEE__EMPLOYEE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ReportCounter') and o.name = 'FK_REPORTCO_REPORT_ME_REPORT')
alter table ReportCounter
   drop constraint FK_REPORTCO_REPORT_ME_REPORT
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACAccountPayableBalance') and o.name = 'FK_ACAccountPayable_GNSupplier')
alter table tbACAccountPayableBalance
   drop constraint FK_ACAccountPayable_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACAccountReceivableBalance') and o.name = 'FK_ACAccountReceivable_GNCustomer')
alter table tbACAccountReceivableBalance
   drop constraint FK_ACAccountReceivable_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACBank') and o.name = 'FK_ACBank_GNCity')
alter table tbACBank
   drop constraint FK_ACBank_GNCity
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACBankAccount') and o.name = 'FK_ACBankAccount_ACBank')
alter table tbACBankAccount
   drop constraint FK_ACBankAccount_ACBank
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACCustomerBankAccount') and o.name = 'FK_ACCustomerBank_ACBank')
alter table tbACCustomerBankAccount
   drop constraint FK_ACCustomerBank_ACBank
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACCustomerBankAccount') and o.name = 'FK_ACCustomerBank_GNCustomer')
alter table tbACCustomerBankAccount
   drop constraint FK_ACCustomerBank_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACCustomerDownPaymentBalance') and o.name = 'FK_ACCustomerDownPaymentBalance_GNCustomer')
alter table tbACCustomerDownPaymentBalance
   drop constraint FK_ACCustomerDownPaymentBalance_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACPurchaseDownPayment') and o.name = 'FK_ACPurchaseDownPayment_ACBankAccount')
alter table tbACPurchaseDownPayment
   drop constraint FK_ACPurchaseDownPayment_ACBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACPurchaseDownPayment') and o.name = 'FK_ACPurchaseDownPayment_ACSupplierBankAccount')
alter table tbACPurchaseDownPayment
   drop constraint FK_ACPurchaseDownPayment_ACSupplierBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACPurchaseDownPayment') and o.name = 'FK_ACPurchaseDownPayment_GNPaymentType')
alter table tbACPurchaseDownPayment
   drop constraint FK_ACPurchaseDownPayment_GNPaymentType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACPurchaseDownPayment') and o.name = 'FK_ACPurchaseDownPayment_GNSupplier')
alter table tbACPurchaseDownPayment
   drop constraint FK_ACPurchaseDownPayment_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACRevenueBalance') and o.name = 'FK_ACRevenueBalance_IMSupplies')
alter table tbACRevenueBalance
   drop constraint FK_ACRevenueBalance_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSalesDownPayment') and o.name = 'FK_ACSalesDownPayment_ACBankAccount')
alter table tbACSalesDownPayment
   drop constraint FK_ACSalesDownPayment_ACBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSalesDownPayment') and o.name = 'FK_ACSalesDownPayment_ACCustomerBankAccount')
alter table tbACSalesDownPayment
   drop constraint FK_ACSalesDownPayment_ACCustomerBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSalesDownPayment') and o.name = 'FK_ACSalesDownPayment_GNCustomer')
alter table tbACSalesDownPayment
   drop constraint FK_ACSalesDownPayment_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSalesDownPayment') and o.name = 'FK_ACSalesDownPayment_GNPaymentType')
alter table tbACSalesDownPayment
   drop constraint FK_ACSalesDownPayment_GNPaymentType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSupplierBankAccount') and o.name = 'FK_ACSupplierBank_ACBank')
alter table tbACSupplierBankAccount
   drop constraint FK_ACSupplierBank_ACBank
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSupplierBankAccount') and o.name = 'FK_ACSupplierBank_GNSupplier')
alter table tbACSupplierBankAccount
   drop constraint FK_ACSupplierBank_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACSupplierDownPaymentBalance') and o.name = 'FK_ACSupplierDownPaymentBalance_GNSupplier')
alter table tbACSupplierDownPaymentBalance
   drop constraint FK_ACSupplierDownPaymentBalance_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACTransactionAP') and o.name = 'FK_ACTransactionAP_ACTransactionType')
alter table tbACTransactionAP
   drop constraint FK_ACTransactionAP_ACTransactionType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACTransactionAP') and o.name = 'FK_ACTransactionAP_GNSupplier')
alter table tbACTransactionAP
   drop constraint FK_ACTransactionAP_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACTransactionAR') and o.name = 'FK_ACTransactionAR_ACTransactionType')
alter table tbACTransactionAR
   drop constraint FK_ACTransactionAR_ACTransactionType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACTransactionAR') and o.name = 'FK_ACTransactionAR_GNCustomer')
alter table tbACTransactionAR
   drop constraint FK_ACTransactionAR_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbACTransactionRevenue') and o.name = 'FK_ACSalesRevenue_IMSupplies')
alter table tbACTransactionRevenue
   drop constraint FK_ACSalesRevenue_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNCustomer') and o.name = 'FK_GNCustomer_GNCategory')
alter table tbGNCustomer
   drop constraint FK_GNCustomer_GNCategory
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNCustomer') and o.name = 'FK_GNCustomer_GNCity')
alter table tbGNCustomer
   drop constraint FK_GNCustomer_GNCity
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNCustomerPhone') and o.name = 'FK_GNCustomerPhone_GNCustomer')
alter table tbGNCustomerPhone
   drop constraint FK_GNCustomerPhone_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNSupplier') and o.name = 'FK_GNSupplier_GNCategory')
alter table tbGNSupplier
   drop constraint FK_GNSupplier_GNCategory
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNSupplier') and o.name = 'FK_GNSupplier_GNCity')
alter table tbGNSupplier
   drop constraint FK_GNSupplier_GNCity
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNSupplierPhone') and o.name = 'FK_GNSupplierPhone_GNSupplier')
alter table tbGNSupplierPhone
   drop constraint FK_GNSupplierPhone_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNWarehouse') and o.name = 'FK_TBGNWARE_REFERENCE_CITY')
alter table tbGNWarehouse
   drop constraint FK_TBGNWARE_REFERENCE_CITY
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbGNWarehousePhone') and o.name = 'FK_GNWarehousePhone_GNWarehouse')
alter table tbGNWarehousePhone
   drop constraint FK_GNWarehousePhone_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMAssemblyTransactionDt') and o.name = 'FK_tbIMAssemblyTransactionDt_tbIMAssemblyTransactionHd')
alter table tbIMAssemblyTransactionDt
   drop constraint FK_tbIMAssemblyTransactionDt_tbIMAssemblyTransactionHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMAssemblyTransactionDt') and o.name = 'FK_TBIMASSE_REFERENCE_TBIMSUPP')
alter table tbIMAssemblyTransactionDt
   drop constraint FK_TBIMASSE_REFERENCE_TBIMSUPP
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMAssemblyTransactionHd') and o.name = 'FK_tbIMAssemblyTransactionHd_tbGNWarehouse')
alter table tbIMAssemblyTransactionHd
   drop constraint FK_tbIMAssemblyTransactionHd_tbGNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMAssemblyTransactionHd') and o.name = 'FK_TBIMASSE_REFERENCE_TBIMSUPP2')
alter table tbIMAssemblyTransactionHd
   drop constraint FK_TBIMASSE_REFERENCE_TBIMSUPP2
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMDeliveryOrderDt') and o.name = 'FK_IMDeliveryOrderDt_IMDeliveryOrderHd')
alter table tbIMDeliveryOrderDt
   drop constraint FK_IMDeliveryOrderDt_IMDeliveryOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMDeliveryOrderDt') and o.name = 'FK_IMSalesDONt_IMSupplies')
alter table tbIMDeliveryOrderDt
   drop constraint FK_IMSalesDONt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMDeliveryOrderHd') and o.name = 'FK_IMDeliveryOrderHd_GNWarehouse')
alter table tbIMDeliveryOrderHd
   drop constraint FK_IMDeliveryOrderHd_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMDeliveryOrderNt') and o.name = 'FK_IMDeliveryOrderNt_IMDeliveryOrderDt')
alter table tbIMDeliveryOrderNt
   drop constraint FK_IMDeliveryOrderNt_IMDeliveryOrderDt
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMMutationDt') and o.name = 'FK_IMMutationDt_IMMutationHd')
alter table tbIMMutationDt
   drop constraint FK_IMMutationDt_IMMutationHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMMutationDt') and o.name = 'FK_IMMutationDt_IMSupplies')
alter table tbIMMutationDt
   drop constraint FK_IMMutationDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMMutationHd') and o.name = 'FK_IMMutationHd_GNWarehouse1')
alter table tbIMMutationHd
   drop constraint FK_IMMutationHd_GNWarehouse1
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMMutationHd') and o.name = 'FK_IMMutationHd_GNWarehouse2')
alter table tbIMMutationHd
   drop constraint FK_IMMutationHd_GNWarehouse2
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMMutationPrice') and o.name = 'FK_IMMutationPrice_IMMutationDt')
alter table tbIMMutationPrice
   drop constraint FK_IMMutationPrice_IMMutationDt
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMOtherTransactionDt') and o.name = 'FK_GNSupplies_IMOtherTransactionDt')
alter table tbIMOtherTransactionDt
   drop constraint FK_GNSupplies_IMOtherTransactionDt
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMOtherTransactionDt') and o.name = 'FK_IMOtherTransactionDt_IMOtherTransactionHd')
alter table tbIMOtherTransactionDt
   drop constraint FK_IMOtherTransactionDt_IMOtherTransactionHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMOtherTransactionHd') and o.name = 'FK_IMOtherTransactionHd_GNWarehouse1')
alter table tbIMOtherTransactionHd
   drop constraint FK_IMOtherTransactionHd_GNWarehouse1
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMOtherTransactionHd') and o.name = 'FK_IMOtherTransactionHd_GNWarehouse2')
alter table tbIMOtherTransactionHd
   drop constraint FK_IMOtherTransactionHd_GNWarehouse2
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMOtherTransactionHd') and o.name = 'FK_IMOtherTransactionHd_IMTransactionType')
alter table tbIMOtherTransactionHd
   drop constraint FK_IMOtherTransactionHd_IMTransactionType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseInvoiceDt') and o.name = 'FK_IMPurchaseInvoiceDt_IMPurchaseInvoiceHd')
alter table tbIMPurchaseInvoiceDt
   drop constraint FK_IMPurchaseInvoiceDt_IMPurchaseInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseInvoiceDt') and o.name = 'FK_IMPurchaseInvoiceDt_IMSupplies')
alter table tbIMPurchaseInvoiceDt
   drop constraint FK_IMPurchaseInvoiceDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseInvoiceHd') and o.name = 'FK_IMPurchaseInvoiceHd_GNSupplier')
alter table tbIMPurchaseInvoiceHd
   drop constraint FK_IMPurchaseInvoiceHd_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseInvoiceHd') and o.name = 'FK_IMPurchaseInvoiceHd_IMPurchaseOrderHd')
alter table tbIMPurchaseInvoiceHd
   drop constraint FK_IMPurchaseInvoiceHd_IMPurchaseOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseInvoiceHd') and o.name = 'FK_IMPurchaseInvoiceHd_IMReceivingRecordHd')
alter table tbIMPurchaseInvoiceHd
   drop constraint FK_IMPurchaseInvoiceHd_IMReceivingRecordHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseOrderDt') and o.name = 'FK_IMPurchaseOrderDt_IMPurchaseOrderHd')
alter table tbIMPurchaseOrderDt
   drop constraint FK_IMPurchaseOrderDt_IMPurchaseOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseOrderDt') and o.name = 'FK_IMPurchaseOrderDt_IMSupplies')
alter table tbIMPurchaseOrderDt
   drop constraint FK_IMPurchaseOrderDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseOrderHd') and o.name = 'FK_IMPurchaseOrderHd_GNSupplier')
alter table tbIMPurchaseOrderHd
   drop constraint FK_IMPurchaseOrderHd_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePayment') and o.name = 'FK_IMPurchasePayment_ACBankAccount')
alter table tbIMPurchasePayment
   drop constraint FK_IMPurchasePayment_ACBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePayment') and o.name = 'FK_IMPurchasePayment_ACSupplierBankAccount')
alter table tbIMPurchasePayment
   drop constraint FK_IMPurchasePayment_ACSupplierBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePayment') and o.name = 'FK_IMPurchasePayment_GNPaymentType')
alter table tbIMPurchasePayment
   drop constraint FK_IMPurchasePayment_GNPaymentType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePayment') and o.name = 'FK_IMPurchasePayment_IMPurchaseInvoiceHd')
alter table tbIMPurchasePayment
   drop constraint FK_IMPurchasePayment_IMPurchaseInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePrice') and o.name = 'FK_IMPurchasePrice_GNSupplier')
alter table tbIMPurchasePrice
   drop constraint FK_IMPurchasePrice_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchasePrice') and o.name = 'FK_IMPurchasePrice_IMSupplies')
alter table tbIMPurchasePrice
   drop constraint FK_IMPurchasePrice_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseReturnDt') and o.name = 'FK_IMPurchaseReturnDt_IMPurchaseReturnHd')
alter table tbIMPurchaseReturnDt
   drop constraint FK_IMPurchaseReturnDt_IMPurchaseReturnHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseReturnDt') and o.name = 'FK_IMPurchaseReturnDt_IMSupplies')
alter table tbIMPurchaseReturnDt
   drop constraint FK_IMPurchaseReturnDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseReturnHd') and o.name = 'FK_IMPurchaseReturnHd_GNSupplier')
alter table tbIMPurchaseReturnHd
   drop constraint FK_IMPurchaseReturnHd_GNSupplier
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseReturnHd') and o.name = 'FK_IMPurchaseReturnHd_GNWarehouse')
alter table tbIMPurchaseReturnHd
   drop constraint FK_IMPurchaseReturnHd_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMPurchaseReturnHd') and o.name = 'FK_IMPurchaseReturnHd_IMPurchaseInvoiceHd')
alter table tbIMPurchaseReturnHd
   drop constraint FK_IMPurchaseReturnHd_IMPurchaseInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMReceivingRecordDt') and o.name = 'FK_IMReceiveRecordDt_IMSupplies')
alter table tbIMReceivingRecordDt
   drop constraint FK_IMReceiveRecordDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMReceivingRecordDt') and o.name = 'FK_IMReceivingRecordDt_IMReceivingRecordHd')
alter table tbIMReceivingRecordDt
   drop constraint FK_IMReceivingRecordDt_IMReceivingRecordHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMReceivingRecordHd') and o.name = 'FK_IMReceivingRecordHd_GNWarehouse')
alter table tbIMReceivingRecordHd
   drop constraint FK_IMReceivingRecordHd_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMReceivingRecordNt') and o.name = 'FK_IMReceivingRecordNt_IMReceivingRecordDt')
alter table tbIMReceivingRecordNt
   drop constraint FK_IMReceivingRecordNt_IMReceivingRecordDt
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalePrice') and o.name = 'FK_IMSalePrice_GNCustomer')
alter table tbIMSalePrice
   drop constraint FK_IMSalePrice_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalePrice') and o.name = 'FK_IMSalePrice_IMSupplies')
alter table tbIMSalePrice
   drop constraint FK_IMSalePrice_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceDt') and o.name = 'FK_IMSalesInvoiceDt_IMSalesInvoiceHd')
alter table tbIMSalesInvoiceDt
   drop constraint FK_IMSalesInvoiceDt_IMSalesInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceDt') and o.name = 'FK_IMSalesInvoiceDt_IMSupplies')
alter table tbIMSalesInvoiceDt
   drop constraint FK_IMSalesInvoiceDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceHd') and o.name = 'FK_IMSalesInvoiceHd_GNCustomer')
alter table tbIMSalesInvoiceHd
   drop constraint FK_IMSalesInvoiceHd_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceHd') and o.name = 'FK_IMSalesInvoiceHd_GNWarehouse')
alter table tbIMSalesInvoiceHd
   drop constraint FK_IMSalesInvoiceHd_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceHd') and o.name = 'FK_IMSalesInvoiceHd_IMDeliveryOrderHd')
alter table tbIMSalesInvoiceHd
   drop constraint FK_IMSalesInvoiceHd_IMDeliveryOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesInvoiceHd') and o.name = 'FK_IMSalesInvoiceHd_IMSalesOrderHd')
alter table tbIMSalesInvoiceHd
   drop constraint FK_IMSalesInvoiceHd_IMSalesOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesOrderDt') and o.name = 'FK_IMSalesOrderDt_IMSalesOrderHd')
alter table tbIMSalesOrderDt
   drop constraint FK_IMSalesOrderDt_IMSalesOrderHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesOrderDt') and o.name = 'FK_IMSalesOrderDt_IMSupplies')
alter table tbIMSalesOrderDt
   drop constraint FK_IMSalesOrderDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesOrderHd') and o.name = 'FK_IMSalesOrderHd_GNCustomer')
alter table tbIMSalesOrderHd
   drop constraint FK_IMSalesOrderHd_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesPayment') and o.name = 'FK_IMSalesPayment_ACBankAccount')
alter table tbIMSalesPayment
   drop constraint FK_IMSalesPayment_ACBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesPayment') and o.name = 'FK_IMSalesPayment_ACCustomerBankAccount')
alter table tbIMSalesPayment
   drop constraint FK_IMSalesPayment_ACCustomerBankAccount
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesPayment') and o.name = 'FK_IMSalesPayment_GNPaymentType')
alter table tbIMSalesPayment
   drop constraint FK_IMSalesPayment_GNPaymentType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesPayment') and o.name = 'FK_IMSalesPayment_IMSalesInvoiceHd')
alter table tbIMSalesPayment
   drop constraint FK_IMSalesPayment_IMSalesInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesReturnDt') and o.name = 'FK_IMSalesReturnDt_IMSalesReturnHd')
alter table tbIMSalesReturnDt
   drop constraint FK_IMSalesReturnDt_IMSalesReturnHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesReturnDt') and o.name = 'FK_IMSalesReturnDt_IMSupplies')
alter table tbIMSalesReturnDt
   drop constraint FK_IMSalesReturnDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesReturnHd') and o.name = 'FK_IMSalesReturnHd_GNCustomer')
alter table tbIMSalesReturnHd
   drop constraint FK_IMSalesReturnHd_GNCustomer
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesReturnHd') and o.name = 'FK_IMSalesReturnHd_GNWarehouse')
alter table tbIMSalesReturnHd
   drop constraint FK_IMSalesReturnHd_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSalesReturnHd') and o.name = 'FK_IMSalesReturnHd_IMSalesInvoiceHd')
alter table tbIMSalesReturnHd
   drop constraint FK_IMSalesReturnHd_IMSalesInvoiceHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMStockOnHandDt') and o.name = 'FK_IMStockOnHandDt_IMStockOnHandHd')
alter table tbIMStockOnHandDt
   drop constraint FK_IMStockOnHandDt_IMStockOnHandHd
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMStockOnHandHd') and o.name = 'FK_IMStockOnHand_GNWarehouse')
alter table tbIMStockOnHandHd
   drop constraint FK_IMStockOnHand_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMStockOnHandHd') and o.name = 'FK_IMStockOnHand_IMSupplies')
alter table tbIMStockOnHandHd
   drop constraint FK_IMStockOnHand_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSupplies') and o.name = 'FK_IMSupplies_IMSuppliesCategory')
alter table tbIMSupplies
   drop constraint FK_IMSupplies_IMSuppliesCategory
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesBalance') and o.name = 'FK_IMSuppliesBalance_GNWarehouse')
alter table tbIMSuppliesBalance
   drop constraint FK_IMSuppliesBalance_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesBalance') and o.name = 'FK_tbIMSuppliesBalance_tbIMStockOnHand')
alter table tbIMSuppliesBalance
   drop constraint FK_tbIMSuppliesBalance_tbIMStockOnHand
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesDt') and o.name = 'FK_IMSuppliesDt_IMSupplies')
alter table tbIMSuppliesDt
   drop constraint FK_IMSuppliesDt_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesDt') and o.name = 'FK_IMSuppliesDt_IMSuppliesParent')
alter table tbIMSuppliesDt
   drop constraint FK_IMSuppliesDt_IMSuppliesParent
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesImage') and o.name = 'FK_TBIMSUPP_REFERENCE_TBIMSUPP')
alter table tbIMSuppliesImage
   drop constraint FK_TBIMSUPP_REFERENCE_TBIMSUPP
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesMinStock') and o.name = 'FK_IMSuppliesMinStock_GNWarehouse')
alter table tbIMSuppliesMinStock
   drop constraint FK_IMSuppliesMinStock_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMSuppliesMinStock') and o.name = 'FK_IMSuppliesMinStock_IMSupplies')
alter table tbIMSuppliesMinStock
   drop constraint FK_IMSuppliesMinStock_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransaction') and o.name = 'FK_IMTransaction_GNWarehouse1')
alter table tbIMTransaction
   drop constraint FK_IMTransaction_GNWarehouse1
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransaction') and o.name = 'FK_IMTransaction_GNWarehouse2')
alter table tbIMTransaction
   drop constraint FK_IMTransaction_GNWarehouse2
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransaction') and o.name = 'FK_IMTransaction_IMSupplies')
alter table tbIMTransaction
   drop constraint FK_IMTransaction_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransaction') and o.name = 'FK_IMTransaction_IMTransactionType')
alter table tbIMTransaction
   drop constraint FK_IMTransaction_IMTransactionType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionBalance') and o.name = 'FK_IMTransactionBalance_GNWarehouse')
alter table tbIMTransactionBalance
   drop constraint FK_IMTransactionBalance_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionBalance') and o.name = 'FK_IMTransactionBalance_IMSupplies')
alter table tbIMTransactionBalance
   drop constraint FK_IMTransactionBalance_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionBalance') and o.name = 'FK_IMTransactionBalance_IMTransactionType')
alter table tbIMTransactionBalance
   drop constraint FK_IMTransactionBalance_IMTransactionType
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionCosting') and o.name = 'FK_IMTransactionCosting_GNWarehouse')
alter table tbIMTransactionCosting
   drop constraint FK_IMTransactionCosting_GNWarehouse
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionCosting') and o.name = 'FK_IMTransactionCosting_IMSupplies')
alter table tbIMTransactionCosting
   drop constraint FK_IMTransactionCosting_IMSupplies
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbIMTransactionCosting') and o.name = 'FK_IMTransactionCosting_IMTransactionType')
alter table tbIMTransactionCosting
   drop constraint FK_IMTransactionCosting_IMTransactionType
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
           where  id = object_id('Department')
            and   type = 'U')
   drop table Department
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Display')
            and   name  = 'Display_Memiliki_FK'
            and   indid > 0
            and   indid < 255)
   drop index Display.Display_Memiliki_FK
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
            from  sysindexes
           where  id    = object_id('LogProgram')
            and   name  = 'Tipe_LogProgram_FK'
            and   indid > 0
            and   indid < 255)
   drop index LogProgram.Tipe_LogProgram_FK
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
            from  sysindexes
           where  id    = object_id('PositionAccess')
            and   name  = 'PositionSecurity_FK'
            and   indid > 0
            and   indid < 255)
   drop index PositionAccess.PositionSecurity_FK
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
            from  sysindexes
           where  id    = object_id('ReportCounter')
            and   name  = 'Employee_Memiliki_ReportCounter_FK'
            and   indid > 0
            and   indid < 255)
   drop index ReportCounter.Employee_Memiliki_ReportCounter_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ReportCounter')
            and   name  = 'Report_Memiliki_FK'
            and   indid > 0
            and   indid < 255)
   drop index ReportCounter.Report_Memiliki_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ReportCounter')
            and   type = 'U')
   drop table ReportCounter
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Setup')
            and   type = 'U')
   drop table Setup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransactionRegistry')
            and   type = 'U')
   drop table TransactionRegistry
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACAccountPayableBalance')
            and   type = 'U')
   drop table tbACAccountPayableBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACAccountReceivableBalance')
            and   type = 'U')
   drop table tbACAccountReceivableBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACBank')
            and   type = 'U')
   drop table tbACBank
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACBankAccount')
            and   type = 'U')
   drop table tbACBankAccount
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACCustomerBankAccount')
            and   type = 'U')
   drop table tbACCustomerBankAccount
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACCustomerDownPaymentBalance')
            and   type = 'U')
   drop table tbACCustomerDownPaymentBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACPurchaseDownPayment')
            and   type = 'U')
   drop table tbACPurchaseDownPayment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACRevenueBalance')
            and   type = 'U')
   drop table tbACRevenueBalance
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbACSalesDownPayment')
            and   name  = 'ID_tbACSalesDownPayment'
            and   indid > 0
            and   indid < 255)
   drop index tbACSalesDownPayment.ID_tbACSalesDownPayment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACSalesDownPayment')
            and   type = 'U')
   drop table tbACSalesDownPayment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACSupplierBankAccount')
            and   type = 'U')
   drop table tbACSupplierBankAccount
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACSupplierDownPaymentBalance')
            and   type = 'U')
   drop table tbACSupplierDownPaymentBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACTransactionAP')
            and   type = 'U')
   drop table tbACTransactionAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACTransactionAR')
            and   type = 'U')
   drop table tbACTransactionAR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACTransactionRevenue')
            and   type = 'U')
   drop table tbACTransactionRevenue
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbACTransactionType')
            and   type = 'U')
   drop table tbACTransactionType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNCategory')
            and   type = 'U')
   drop table tbGNCategory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNCustomer')
            and   type = 'U')
   drop table tbGNCustomer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbGNCustomerPhone')
            and   name  = 'ID_tbGNCustomerPhone'
            and   indid > 0
            and   indid < 255)
   drop index tbGNCustomerPhone.ID_tbGNCustomerPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNCustomerPhone')
            and   type = 'U')
   drop table tbGNCustomerPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNPaymentType')
            and   type = 'U')
   drop table tbGNPaymentType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNSupplier')
            and   type = 'U')
   drop table tbGNSupplier
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbGNSupplierPhone')
            and   name  = 'ID_tbGNSupplierPhone'
            and   indid > 0
            and   indid < 255)
   drop index tbGNSupplierPhone.ID_tbGNSupplierPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNSupplierPhone')
            and   type = 'U')
   drop table tbGNSupplierPhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNWarehouse')
            and   type = 'U')
   drop table tbGNWarehouse
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbGNWarehousePhone')
            and   name  = 'ID_tbGNWarehousePhone'
            and   indid > 0
            and   indid < 255)
   drop index tbGNWarehousePhone.ID_tbGNWarehousePhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbGNWarehousePhone')
            and   type = 'U')
   drop table tbGNWarehousePhone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMAssemblyTransactionDt')
            and   type = 'U')
   drop table tbIMAssemblyTransactionDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMAssemblyTransactionHd')
            and   name  = 'ID_tbIMAssemblyTransactionHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMAssemblyTransactionHd.ID_tbIMAssemblyTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMAssemblyTransactionHd')
            and   type = 'U')
   drop table tbIMAssemblyTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMDeliveryOrderDt')
            and   type = 'U')
   drop table tbIMDeliveryOrderDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMDeliveryOrderHd')
            and   name  = 'ID_tbIMDeliveryOrderHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMDeliveryOrderHd.ID_tbIMDeliveryOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMDeliveryOrderHd')
            and   type = 'U')
   drop table tbIMDeliveryOrderHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMDeliveryOrderNt')
            and   name  = 'ID_tbIMDeliveryOrderNt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMDeliveryOrderNt.ID_tbIMDeliveryOrderNt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMDeliveryOrderNt')
            and   type = 'U')
   drop table tbIMDeliveryOrderNt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMMutationDt')
            and   name  = 'ID_tbIMMutationDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMMutationDt.ID_tbIMMutationDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMMutationDt')
            and   type = 'U')
   drop table tbIMMutationDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMMutationHd')
            and   name  = 'ID_tbIMMutationHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMMutationHd.ID_tbIMMutationHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMMutationHd')
            and   type = 'U')
   drop table tbIMMutationHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMMutationPrice')
            and   type = 'U')
   drop table tbIMMutationPrice
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMOtherTransactionDt')
            and   name  = 'ID_tbIMOtherTransactionDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMOtherTransactionDt.ID_tbIMOtherTransactionDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMOtherTransactionDt')
            and   type = 'U')
   drop table tbIMOtherTransactionDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMOtherTransactionHd')
            and   name  = 'ID_tbIMOtherTransactionHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMOtherTransactionHd.ID_tbIMOtherTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMOtherTransactionHd')
            and   type = 'U')
   drop table tbIMOtherTransactionHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseInvoiceDt')
            and   type = 'U')
   drop table tbIMPurchaseInvoiceDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseInvoiceHd')
            and   type = 'U')
   drop table tbIMPurchaseInvoiceHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMPurchaseOrderDt')
            and   name  = 'ID_tbIMPurchaseOrderDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMPurchaseOrderDt.ID_tbIMPurchaseOrderDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseOrderDt')
            and   type = 'U')
   drop table tbIMPurchaseOrderDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMPurchaseOrderHd')
            and   name  = 'ID_tbIMPurschaseOrderHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMPurchaseOrderHd.ID_tbIMPurschaseOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseOrderHd')
            and   type = 'U')
   drop table tbIMPurchaseOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchasePayment')
            and   type = 'U')
   drop table tbIMPurchasePayment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchasePrice')
            and   type = 'U')
   drop table tbIMPurchasePrice
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMPurchaseReturnDt')
            and   name  = 'ID_tbIMPurchaseReturnDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMPurchaseReturnDt.ID_tbIMPurchaseReturnDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseReturnDt')
            and   type = 'U')
   drop table tbIMPurchaseReturnDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMPurchaseReturnHd')
            and   name  = 'ID_tbIMPurchaseReturnHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMPurchaseReturnHd.ID_tbIMPurchaseReturnHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMPurchaseReturnHd')
            and   type = 'U')
   drop table tbIMPurchaseReturnHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMReceivingRecordDt')
            and   name  = 'ID_tbIMReceivingRecordDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMReceivingRecordDt.ID_tbIMReceivingRecordDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMReceivingRecordDt')
            and   type = 'U')
   drop table tbIMReceivingRecordDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMReceivingRecordHd')
            and   type = 'U')
   drop table tbIMReceivingRecordHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMReceivingRecordNt')
            and   name  = 'ID_tbIMReceiveRecordNt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMReceivingRecordNt.ID_tbIMReceiveRecordNt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMReceivingRecordNt')
            and   type = 'U')
   drop table tbIMReceivingRecordNt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalePrice')
            and   type = 'U')
   drop table tbIMSalePrice
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesInvoiceDt')
            and   name  = 'ID_tbIMSalesInvoiceDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesInvoiceDt.ID_tbIMSalesInvoiceDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesInvoiceDt')
            and   type = 'U')
   drop table tbIMSalesInvoiceDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesInvoiceHd')
            and   name  = 'ID_tbIMSalesInvoiceHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesInvoiceHd.ID_tbIMSalesInvoiceHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesInvoiceHd')
            and   type = 'U')
   drop table tbIMSalesInvoiceHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesOrderDt')
            and   name  = '_IDtbIMSalesOrder'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesOrderDt._IDtbIMSalesOrder
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesOrderDt')
            and   type = 'U')
   drop table tbIMSalesOrderDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesOrderHd')
            and   name  = 'ID_tbIMSalesOrderHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesOrderHd.ID_tbIMSalesOrderHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesOrderHd')
            and   type = 'U')
   drop table tbIMSalesOrderHd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesPayment')
            and   name  = 'ID_tbIMSalesPayment'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesPayment.ID_tbIMSalesPayment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesPayment')
            and   type = 'U')
   drop table tbIMSalesPayment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesReturnDt')
            and   name  = 'ID_tbIMSalesReturnDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesReturnDt.ID_tbIMSalesReturnDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesReturnDt')
            and   type = 'U')
   drop table tbIMSalesReturnDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSalesReturnHd')
            and   name  = 'ID_tbIMSalesReturnHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSalesReturnHd.ID_tbIMSalesReturnHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSalesReturnHd')
            and   type = 'U')
   drop table tbIMSalesReturnHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMStockOnHandDt')
            and   type = 'U')
   drop table tbIMStockOnHandDt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMStockOnHandHd')
            and   name  = 'ID_tbIMStockOnHandHd'
            and   indid > 0
            and   indid < 255)
   drop index tbIMStockOnHandHd.ID_tbIMStockOnHandHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMStockOnHandHd')
            and   type = 'U')
   drop table tbIMStockOnHandHd
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSupplies')
            and   type = 'U')
   drop table tbIMSupplies
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSuppliesBalance')
            and   name  = 'ID_tbIMSuppliesBalance'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSuppliesBalance.ID_tbIMSuppliesBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSuppliesBalance')
            and   type = 'U')
   drop table tbIMSuppliesBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSuppliesCategory')
            and   type = 'U')
   drop table tbIMSuppliesCategory
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tbIMSuppliesDt')
            and   name  = 'ID_tbIMSuppliesDt'
            and   indid > 0
            and   indid < 255)
   drop index tbIMSuppliesDt.ID_tbIMSuppliesDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSuppliesDt')
            and   type = 'U')
   drop table tbIMSuppliesDt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSuppliesImage')
            and   type = 'U')
   drop table tbIMSuppliesImage
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMSuppliesMinStock')
            and   type = 'U')
   drop table tbIMSuppliesMinStock
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMTransaction')
            and   type = 'U')
   drop table tbIMTransaction
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMTransactionBalance')
            and   type = 'U')
   drop table tbIMTransactionBalance
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMTransactionCosting')
            and   type = 'U')
   drop table tbIMTransactionCosting
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbIMTransactionType')
            and   type = 'U')
   drop table tbIMTransactionType
go

if exists(select 1 from systypes where name='BlobFile')
   execute sp_droptype BlobFile
go

if exists(select 1 from systypes where name='BlobImage')
   execute sp_droptype BlobImage
go

if exists(select 1 from systypes where name='Coa')
   execute sp_droptype Coa
go

if exists(select 1 from systypes where name='Currency')
   execute sp_droptype Currency
go

if exists(select 1 from systypes where name='DateWithoutTime')
   execute sp_droptype DateWithoutTime
go

if exists(select 1 from systypes where name='Disc')
   execute sp_droptype Disc
go

if exists(select 1 from systypes where name='Flag')
   execute sp_droptype Flag
go

if exists(select 1 from systypes where name='GUID')
   execute sp_droptype GUID
go

if exists(select 1 from systypes where name='Period')
   execute sp_droptype Period
go

if exists(select 1 from systypes where name='Quantity')
   execute sp_droptype Quantity
go

if exists(select 1 from systypes where name='QuantityDec')
   execute sp_droptype QuantityDec
go

if exists(select 1 from systypes where name='Stamp')
   execute sp_droptype Stamp
go

if exists(select 1 from systypes where name='StampAuto')
   execute sp_droptype StampAuto
go

if exists(select 1 from systypes where name='Status')
   execute sp_droptype Status
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'Blank'
   )
   drop default Blank
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'Getdate'
   )
   drop default Getdate
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'Newid'
   )
   drop default Newid
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'Zero'
   )
   drop default Zero
go

/*==============================================================*/
/* Default: Blank                                               */
/*==============================================================*/
create default Blank
    as ''
go

/*==============================================================*/
/* Default: Getdate                                             */
/*==============================================================*/
create default Getdate
    as getdate()
go

/*==============================================================*/
/* Default: Newid                                               */
/*==============================================================*/
create default Newid
    as newid()
go

/*==============================================================*/
/* Default: Zero                                                */
/*==============================================================*/
create default Zero
    as 0
go

/*==============================================================*/
/* Domain: BlobFile                                             */
/*==============================================================*/
execute sp_addtype BlobFile, 'ntext'
go

/*==============================================================*/
/* Domain: BlobImage                                            */
/*==============================================================*/
execute sp_addtype BlobImage, 'image'
go

/*==============================================================*/
/* Domain: Coa                                                  */
/*==============================================================*/
execute sp_addtype Coa, 'varchar(15)'
go

/*==============================================================*/
/* Domain: Currency                                             */
/*==============================================================*/
execute sp_addtype Currency, 'money'
go

execute sp_bindefault Zero, 'Currency'
go

/*==============================================================*/
/* Domain: DateWithoutTime                                      */
/*==============================================================*/
execute sp_addtype DateWithoutTime, 'datetime'
go

/*==============================================================*/
/* Domain: Disc                                                 */
/*==============================================================*/
execute sp_addtype Disc, 'decimal(4,2)'
go

execute sp_bindefault Zero, 'Disc'
go

/*==============================================================*/
/* Domain: Flag                                                 */
/*==============================================================*/
execute sp_addtype Flag, 'char(1)'
go

execute sp_bindefault Zero, 'Flag'
go

/*==============================================================*/
/* Domain: GUID                                                 */
/*==============================================================*/
execute sp_addtype GUID, 'uniqueidentifier'
go

execute sp_bindefault Newid, 'GUID'
go

/*==============================================================*/
/* Domain: Period                                               */
/*==============================================================*/
execute sp_addtype Period, 'varchar(6)'
go

/*==============================================================*/
/* Domain: Quantity                                             */
/*==============================================================*/
execute sp_addtype Quantity, 'integer'
go

execute sp_bindefault Zero, 'Quantity'
go

/*==============================================================*/
/* Domain: QuantityDec                                          */
/*==============================================================*/
execute sp_addtype QuantityDec, 'decimal(10,2)'
go

execute sp_bindefault Zero, 'QuantityDec'
go

/*==============================================================*/
/* Domain: Stamp                                                */
/*==============================================================*/
execute sp_addtype Stamp, 'datetime', 'not null'
go

/*==============================================================*/
/* Domain: StampAuto                                            */
/*==============================================================*/
execute sp_addtype StampAuto, 'datetime'
go

execute sp_bindefault Getdate, 'StampAuto'
go

/*==============================================================*/
/* Domain: Status                                               */
/*==============================================================*/
execute sp_addtype Status, 'char(1)'
go

execute sp_bindefault Zero, 'Status'
go

/*==============================================================*/
/* Table: City                                                  */
/*==============================================================*/
create table City (
   ProvinceId           varchar(10)          not null,
   CityId               varchar(5)           not null,
   CityName             varchar(20)          not null,
   CityExt              varchar(4)           null,
   constraint PK_CITY primary key nonclustered (CityId)
)
go

/*==============================================================*/
/* Table: Company                                               */
/*==============================================================*/
create table Company (
   CompanyId            varchar(5)           not null,
   CompanyName          varchar(40)          not null,
   Address              varchar(40)          null,
   Address2             varchar(40)          null,
   Telephone            varchar(40)          null,
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
/* Table: Country                                               */
/*==============================================================*/
create table Country (
   CountryId            varchar(3)           not null,
   CountryName          varchar(15)          not null,
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
/* Table: Department                                            */
/*==============================================================*/
create table Department (
   CompanyId            varchar(5)           not null,
   DepartmentId         varchar(5)           not null,
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
   ReportId             varchar(20)          null,
   OrderNo              int                  null,
   DisplayName          varchar(40)          not null,
   SQLSyntax            text                 null,
   FilterSyntax         BlobFile             null,
   FlagEnableGroupBox   Flag                 not null,
   FlagEnableColumnFilter Flag                 not null,
   FlagHide             Flag                 not null,
   constraint PK_DISPLAY primary key nonclustered (DisplayId, ProgramId)
)
go

/*==============================================================*/
/* Index: Display_Memiliki_FK                                   */
/*==============================================================*/
create index Display_Memiliki_FK on Display (
ProgramId ASC,
ReportId ASC
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
   LevelValidation      int                  null,
   FlagInactive         Flag                 null,
   FlagInactiveUser     Flag                 null,
   FlagSalesman         Flag                 null,
   FlagFix              Flag                 null,
   constraint PK_EMPLOYEE primary key nonclustered (EmployeeId),
   constraint AK_AK_EMPLOYEE_EMPLOYEE unique (UserName)
)
go

execute sp_bindefault Zero, 'Employee.LevelValidation'
go

/*==============================================================*/
/* Table: JobPosition                                           */
/*==============================================================*/
create table JobPosition (
   DepartmentId         varchar(5)           not null,
   PositionId           varchar(5)           not null,
   PositionName         varchar(40)          not null,
   FlagFix              Flag                 null,
   constraint PK_JOBPOSITION primary key nonclustered (PositionId)
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
/* Index: Tipe_LogProgram_FK                                    */
/*==============================================================*/
create index Tipe_LogProgram_FK on LogProgram (
LogTypeId ASC
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
/* Index: PositionSecurity_FK                                   */
/*==============================================================*/
create index PositionSecurity_FK on PositionAccess (
PositionId ASC
)
go

/*==============================================================*/
/* Table: Province                                              */
/*==============================================================*/
create table Province (
   CountryId            varchar(3)           not null,
   ProvinceId           varchar(10)          not null,
   ProvinceName         varchar(20)          not null,
   constraint PK_PROVINCE primary key nonclustered (ProvinceId)
)
go

/*==============================================================*/
/* Table: Report                                                */
/*==============================================================*/
create table Report (
   ReportId             varchar(20)          not null,
   ProgramId            varchar(10)          not null,
   OrderNo              int                  null,
   ReportName           varchar(40)          not null,
   Name1                varchar(40)          null,
   Name2                varchar(40)          null,
   Name3                varchar(40)          null,
   Name4                varchar(40)          null,
   Name5                varchar(40)          null,
   Name6                varchar(40)          null,
   Printer              varchar(40)          null,
   FileBlob             BlobFile             null,
   FlagShowDialog       Flag                 null,
   FlagShowProgress     Flag                 null,
   FlagHide             Flag                 null,
   FlagDotMatrix        Flag                 null,
   constraint PK_TBGNREPORT primary key (ProgramId, ReportId)
)
go

/*==============================================================*/
/* Table: ReportCounter                                         */
/*==============================================================*/
create table ReportCounter (
   ReportId             varchar(20)          not null,
   ProgramId            varchar(10)          not null,
   EmployeeId           varchar(10)          not null,
   ReportCounterDate    DateWithoutTime      not null,
   ReportCount          int                  null default '0',
   constraint PK_REPORTCOUNTER primary key nonclustered (ReportId, ProgramId, EmployeeId, ReportCounterDate)
)
go

/*==============================================================*/
/* Index: Report_Memiliki_FK                                    */
/*==============================================================*/
create index Report_Memiliki_FK on ReportCounter (
ProgramId ASC,
ReportId ASC
)
go

/*==============================================================*/
/* Index: Employee_Memiliki_ReportCounter_FK                    */
/*==============================================================*/
create index Employee_Memiliki_ReportCounter_FK on ReportCounter (
EmployeeId ASC
)
go

/*==============================================================*/
/* Table: Setup                                                 */
/*==============================================================*/
create table Setup (
   ProgramId            varchar(10)          not null,
   SetupId              varchar(10)          not null,
   SetupName            varchar(50)          not null,
   SetupValue           varchar(30)          null,
   constraint PK_SETUP primary key nonclustered (ProgramId, SetupId)
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
/* Table: tbACAccountPayableBalance                             */
/*==============================================================*/
create table tbACAccountPayableBalance (
   vcIdSupplier         varchar(10)          not null,
   vcYear               varchar(4)           not null,
   dcOpeningValue       Currency             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBACACCOUNTPAYABLEBALANCE primary key nonclustered (vcIdSupplier, vcYear)
)
go

/*==============================================================*/
/* Table: tbACAccountReceivableBalance                          */
/*==============================================================*/
create table tbACAccountReceivableBalance (
   vcIdCustomer         varchar(10)          not null,
   vcYear               varchar(4)           not null,
   dcOpeningValue       Currency             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBACACCOUNTRECEIVABLEBALANC primary key nonclustered (vcIdCustomer, vcYear)
)
go

/*==============================================================*/
/* Table: tbACBank                                              */
/*==============================================================*/
create table tbACBank (
   vcIdBank             varchar(15)          not null,
   vcBankName           varchar(20)          not null,
   vcBankContactPerson  varchar(25)          null,
   vcBankAddress        varchar(50)          null,
   vcIdCity             varchar(5)           null,
   vcPhone              varchar(20)          null,
   txNotes              Text                 null,
   constraint PK_TBACBANK primary key nonclustered (vcIdBank)
)
go

/*==============================================================*/
/* Table: tbACBankAccount                                       */
/*==============================================================*/
create table tbACBankAccount (
   vcIdBank             varchar(15)          not null,
   vcAccountNo          varchar(20)          not null,
   vcAccountName        varchar(25)          not null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   chFlagInactive       Flag                 null,
   constraint PK_TBACBANKACCOUNT primary key nonclustered (vcIdBank, vcAccountNo)
)
go

/*==============================================================*/
/* Table: tbACCustomerBankAccount                               */
/*==============================================================*/
create table tbACCustomerBankAccount (
   vcCustomerIdBank     varchar(15)          not null,
   vcCustomerAccountNo  varchar(20)          not null,
   vcAccountName        varchar(25)          not null,
   vcIdCustomer         varchar(10)          not null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   chFlagInactive       Flag                 null,
   constraint PK_TBACCUSTOMERBANKACCOUNT primary key nonclustered (vcCustomerIdBank, vcCustomerAccountNo)
)
go

/*==============================================================*/
/* Table: tbACCustomerDownPaymentBalance                        */
/*==============================================================*/
create table tbACCustomerDownPaymentBalance (
   vcIdCustomer         varchar(10)          not null,
   vcYear               varchar(4)           not null,
   dcOpeningValue       Currency             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBACCUSTOMERDOWNPAYMENTBALA primary key nonclustered (vcIdCustomer, vcYear)
)
go

/*==============================================================*/
/* Table: tbACPurchaseDownPayment                               */
/*==============================================================*/
create table tbACPurchaseDownPayment (
   vcIdPurchaseDownPayment varchar(12)          not null,
   dtPurchaseDownPaymentDate datetime             not null,
   vcIdSupplier         varchar(10)          not null,
   vcIdPaymentType      varchar(2)           not null,
   dtEffectiveDate      datetime             null,
   vcIdBank             varchar(15)          null,
   vcAccountNo          varchar(20)          null,
   vcSupplierIdBank     varchar(15)          null,
   vcSupplierAccountNo  varchar(20)          null,
   dcAmount             Currency             null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   inCounterPrint       int                  null,
   chFlagTransType      Flag                 null,
   chStatusApprove      Status               null,
   constraint PK_TBACPURCHASEDOWNPAYMENT primary key nonclustered (vcIdPurchaseDownPayment)
)
go

/*==============================================================*/
/* Table: tbACRevenueBalance                                    */
/*==============================================================*/
create table tbACRevenueBalance (
   vcIdSupplies         varchar(20)          not null,
   vcYear               varchar(4)           not null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBACREVENUEBALANCE primary key nonclustered (vcIdSupplies, vcYear)
)
go

/*==============================================================*/
/* Table: tbACSalesDownPayment                                  */
/*==============================================================*/
create table tbACSalesDownPayment (
   vcIdSalesDownPayment varchar(12)          not null,
   dtSalesDownPaymentDate datetime             not null,
   vcIdCustomer         varchar(10)          not null,
   vcIdPaymentType      varchar(2)           not null,
   dtEffectiveDate      datetime             null,
   vcIdBank             varchar(15)          null,
   vcAccountNo          varchar(20)          null,
   vcCustomerIdBank     varchar(15)          null,
   vcCustomerAccountNo  varchar(20)          null,
   dcAmount             Currency             null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   inCounterPrint       int                  null,
   chFlagTransType      Flag                 null,
   chStatusApprove      Status               null,
   constraint PK_TBACSALESDOWNPAYMENT primary key nonclustered (vcIdSalesDownPayment)
)
go

/*==============================================================*/
/* Index: ID_tbACSalesDownPayment                               */
/*==============================================================*/
create unique index ID_tbACSalesDownPayment on tbACSalesDownPayment (
vcIdSalesDownPayment ASC
)
go

/*==============================================================*/
/* Table: tbACSupplierBankAccount                               */
/*==============================================================*/
create table tbACSupplierBankAccount (
   vcSupplierIdBank     varchar(15)          not null,
   vcSupplierAccountNo  varchar(20)          not null,
   vcAccountName        varchar(25)          not null,
   vcIdSupplier         varchar(10)          not null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   chFlagInactive       Flag                 null,
   constraint PK_TBACSUPPLIERBANKACCOUNT primary key nonclustered (vcSupplierIdBank, vcSupplierAccountNo)
)
go

/*==============================================================*/
/* Table: tbACSupplierDownPaymentBalance                        */
/*==============================================================*/
create table tbACSupplierDownPaymentBalance (
   vcIdSupplier         varchar(10)          not null,
   vcYear               varchar(4)           not null,
   dcOpeningValue       Currency             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBACSUPPLIERDOWNPAYMENTBALA primary key nonclustered (vcIdSupplier, vcYear)
)
go

/*==============================================================*/
/* Table: tbACTransactionAP                                     */
/*==============================================================*/
create table tbACTransactionAP (
   vcIdReference        varchar(12)          not null,
   dtDateTransaction    datetime             not null,
   vcIdSupplier         varchar(10)          null,
   vcIdTransactionType  varchar(10)          null,
   dcAmount             Currency             not null,
   vcDescription        varchar(100)         null,
   constraint PK_TBACTRANSACTIONAP primary key nonclustered (vcIdReference, dtDateTransaction)
)
go

/*==============================================================*/
/* Table: tbACTransactionAR                                     */
/*==============================================================*/
create table tbACTransactionAR (
   vcIdReference        varchar(12)          not null,
   dtDateTransaction    datetime             not null,
   vcIdCustomer         varchar(10)          null,
   vcIdTransactionType  varchar(10)          null,
   dcAmount             Currency             not null,
   vcDescription        varchar(100)         null,
   constraint PK_TBACTRANSACTIONAR primary key nonclustered (vcIdReference, dtDateTransaction)
)
go

/*==============================================================*/
/* Table: tbACTransactionRevenue                                */
/*==============================================================*/
create table tbACTransactionRevenue (
   vcIdTransactionRevenue GUID                 not null,
   vcIdSupplies         varchar(20)          not null,
   dtTransactionDate    datetime             not null,
   vcIdReference        varchar(12)          null,
   inQty                Quantity             null,
   inReturnQty          Quantity             null,
   dcHPP                Currency             null,
   dcSalesPrice         Currency             null,
   dcTotalHPP           Currency             null,
   dcTotalSales         Currency             null,
   dcRevenue            Currency             null,
   chFlagBalanceMinus   Flag                 null,
   constraint PK_TBACTRANSACTIONREVENUE primary key nonclustered (vcIdTransactionRevenue)
)
go

/*==============================================================*/
/* Table: tbACTransactionType                                   */
/*==============================================================*/
create table tbACTransactionType (
   vcIdTransactionType  varchar(10)          not null,
   vcTransactionName    varchar(50)          not null,
   chStatusTransaction  Flag                 not null,
   chFlagFix            Flag                 null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBACTRANSACTIONTYPE primary key nonclustered (vcIdTransactionType)
)
go

/*==============================================================*/
/* Table: tbGNCategory                                          */
/*==============================================================*/
create table tbGNCategory (
   vcIdCategory         varchar(10)          not null,
   vcCategoryName       varchar(20)          not null,
   constraint PK_TBGNCATEGORY primary key nonclustered (vcIdCategory),
   constraint AK_AK_TBGNCATEGORY_TBGNCATE unique (vcCategoryName)
)
go

/*==============================================================*/
/* Table: tbGNCustomer                                          */
/*==============================================================*/
create table tbGNCustomer (
   vcIdCustomer         varchar(10)          not null,
   vcCustomerName       varchar(40)          not null,
   vcContactPerson      varchar(25)          null,
   vcAddress            varchar(50)          null,
   vcIdCity             varchar(5)           not null,
   vcIdCategory         varchar(10)          null,
   vcEmail              varchar(50)          null,
   dtDateIn             datetime             null,
   inDeliveryDate       integer              null,
   dcBudget             Currency             null,
   txNotes              text                 null,
   constraint PK_TBGNCUSTOMER primary key nonclustered (vcIdCustomer),
   constraint AK_AK_TBGNCUSTOMER_TBGNCUST unique (vcCustomerName, vcIdCity)
)
go

execute sp_bindefault Zero, 'tbGNCustomer.inDeliveryDate'
go

/*==============================================================*/
/* Table: tbGNCustomerPhone                                     */
/*==============================================================*/
create table tbGNCustomerPhone (
   vcIdCustomerPhone    varchar(15)          not null,
   vcIdCustomer         varchar(10)          null,
   vcPhoneName          varchar(10)          null,
   vcCountryExt         varchar(4)           null,
   vcCityExt            varchar(4)           null,
   constraint PK_TBGNCUSTOMERPHONE primary key nonclustered (vcIdCustomerPhone)
)
go

/*==============================================================*/
/* Index: ID_tbGNCustomerPhone                                  */
/*==============================================================*/
create index ID_tbGNCustomerPhone on tbGNCustomerPhone (
vcIdCustomerPhone ASC
)
go

/*==============================================================*/
/* Table: tbGNPaymentType                                       */
/*==============================================================*/
create table tbGNPaymentType (
   vcIdPaymentType      varchar(2)           not null,
   vcPaymentTypeName    varchar(20)          not null,
   chFlagInactive       Flag                 null,
   chFlagFix            Flag                 null,
   StatusPayment        Status               null,
   FlagPurchasePayment  Flag                 null,
   FlagSalesPayment     Flag                 null,
   vcEmployeeName       varchar(40)          null,
   constraint PK_TBGNPAYMENTTYPE primary key nonclustered (vcIdPaymentType)
)
go

/*==============================================================*/
/* Table: tbGNSupplier                                          */
/*==============================================================*/
create table tbGNSupplier (
   vcIdSupplier         varchar(10)          not null,
   vcSupplierName       varchar(40)          not null,
   vcContactPerson      varchar(25)          null,
   vcAddress            varchar(50)          null,
   vcIdCity             varchar(5)           not null,
   vcIdCategory         varchar(10)          null,
   vcEmail              varchar(50)          null,
   dtDateIn             datetime             null,
   inDeliveryDate       integer              null,
   dcBudget             Currency             null,
   txNotes              text                 null,
   constraint PK_TBGNSUPPLIER primary key nonclustered (vcIdSupplier),
   constraint AK_AK_TBGNSUPPLIER_TBGNSUPP unique (vcSupplierName, vcIdCity)
)
go

execute sp_bindefault Zero, 'tbGNSupplier.inDeliveryDate'
go

/*==============================================================*/
/* Table: tbGNSupplierPhone                                     */
/*==============================================================*/
create table tbGNSupplierPhone (
   vcIdSupplierPhone    varchar(15)          not null,
   vcIdSupplier         varchar(10)          null,
   vcPhoneName          varchar(10)          null,
   vcCountryExt         varchar(4)           null,
   vcCityExt            varchar(4)           null,
   constraint PK_TBGNSUPPLIERPHONE primary key nonclustered (vcIdSupplierPhone)
)
go

/*==============================================================*/
/* Index: ID_tbGNSupplierPhone                                  */
/*==============================================================*/
create index ID_tbGNSupplierPhone on tbGNSupplierPhone (
vcIdSupplierPhone ASC
)
go

/*==============================================================*/
/* Table: tbGNWarehouse                                         */
/*==============================================================*/
create table tbGNWarehouse (
   vcIdWarehouse        varchar(10)          not null,
   vcWarehouseName      varchar(40)          null,
   vcContactPerson      varchar(25)          null,
   vcAddress            varchar(50)          null,
   vcIdCity             varchar(5)           null,
   vcIPAddress          varchar(15)          null,
   txNotes              text                 null,
   chFlagCouple         char(1)              null,
   chFlagFix            Flag                 null,
   chFlagSale           Flag                 null,
   StatusWarehouse      Status               null,
   constraint PK_TBGNWAREHOUSE primary key nonclustered (vcIdWarehouse)
)
go

/*==============================================================*/
/* Table: tbGNWarehousePhone                                    */
/*==============================================================*/
create table tbGNWarehousePhone (
   vcIdWarehousePhone   varchar(15)          not null,
   vcIdWarehouse        varchar(10)          null,
   vcPhoneName          varchar(10)          null,
   vcCountryExt         varchar(4)           null,
   vcCityExt            varchar(4)           null,
   constraint PK_TBGNWAREHOUSEPHONE primary key nonclustered (vcIdWarehousePhone)
)
go

/*==============================================================*/
/* Index: ID_tbGNWarehousePhone                                 */
/*==============================================================*/
create index ID_tbGNWarehousePhone on tbGNWarehousePhone (
vcIdWarehousePhone ASC
)
go

/*==============================================================*/
/* Table: tbIMAssemblyTransactionDt                             */
/*==============================================================*/
create table tbIMAssemblyTransactionDt (
   vcIdAssemblyTransaction varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   inQtyCouple          integer              null,
   inQty                integer              null,
   dcPrice              Currency             null,
   dcAmount             money                null,
   constraint PK_TBIMASSEMBLYTRANSACTIONDT primary key nonclustered (vcIdAssemblyTransaction, inNo)
)
go

/*==============================================================*/
/* Table: tbIMAssemblyTransactionHd                             */
/*==============================================================*/
create table tbIMAssemblyTransactionHd (
   vcIdAssemblyTransaction varchar(12)          not null,
   dtAssemblyTransactionDate datetime             not null,
   vcIdWarehouse        varchar(10)          not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             null,
   dcCoupleCost         Currency             null,
   dcTotalAmount        Currency             null,
   chAssemblyTransactionType char(1)              null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      Status               null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMASSEMBLYTRANSACTIONHD primary key nonclustered (vcIdAssemblyTransaction)
)
go

execute sp_bindefault Zero, 'tbIMAssemblyTransactionHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMAssemblyTransactionHd                          */
/*==============================================================*/
create unique index ID_tbIMAssemblyTransactionHd on tbIMAssemblyTransactionHd (
vcIdAssemblyTransaction ASC
)
go

/*==============================================================*/
/* Table: tbIMDeliveryOrderDt                                   */
/*==============================================================*/
create table tbIMDeliveryOrderDt (
   vcIdDeliveryOrder    varchar(14)          not null,
   inNo                 int                  null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             not null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMDELIVERYORDERDT primary key nonclustered (vcIdDeliveryOrder, vcIdSupplies)
)
go

/*==============================================================*/
/* Table: tbIMDeliveryOrderHd                                   */
/*==============================================================*/
create table tbIMDeliveryOrderHd (
   vcIdDeliveryOrder    varchar(14)          not null,
   dtDeliveryOrderDate  datetime             not null,
   dtActualDeliveryDate datetime             null,
   vcCustomerName       varchar(40)          null,
   vcCustomerAddress    text                 null,
   vcCustomerCityName   varchar(20)          null,
   vcIdSalesOrder       varchar(12)          null,
   vcIdSalesInvoice     varchar(12)          null,
   vcIdWarehouse        varchar(10)          not null,
   txAddress            text                 null,
   txNotes              text                 null,
   txMemo               text                 null,
   vcEmployeeName       varchar(40)          null,
   inCounterPrint       integer              null,
   chStatusApprove      Status               null,
   chFlagPending        Flag                 null,
   chFlagMutasi         Flag                 null,
   chFlagManual         Flag                 null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMDELIVERYORDERHD primary key nonclustered (vcIdDeliveryOrder)
)
go

execute sp_bindefault Zero, 'tbIMDeliveryOrderHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMDeliveryOrderHd                                */
/*==============================================================*/
create unique index ID_tbIMDeliveryOrderHd on tbIMDeliveryOrderHd (
vcIdDeliveryOrder ASC
)
go

/*==============================================================*/
/* Table: tbIMDeliveryOrderNt                                   */
/*==============================================================*/
create table tbIMDeliveryOrderNt (
   vcIdDeliveryOrder    varchar(14)          not null,
   vcIdSupplies         varchar(20)          not null,
   vcIdMachine          varchar(30)          not null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMDELIVERYORDERNT primary key nonclustered (vcIdDeliveryOrder, vcIdSupplies, vcIdMachine)
)
go

/*==============================================================*/
/* Index: ID_tbIMDeliveryOrderNt                                */
/*==============================================================*/
create unique index ID_tbIMDeliveryOrderNt on tbIMDeliveryOrderNt (
vcIdDeliveryOrder ASC,
vcIdSupplies ASC,
vcIdMachine ASC
)
go

/*==============================================================*/
/* Table: tbIMMutationDt                                        */
/*==============================================================*/
create table tbIMMutationDt (
   vcIdMutation         varchar(12)          not null,
   vcIdSupplies         varchar(20)          not null,
   inNo                 int                  not null,
   inQty                Quantity             not null,
   constraint PK_TBIMMUTATIONDT primary key nonclustered (vcIdMutation, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMMutationDt                                     */
/*==============================================================*/
create unique index ID_tbIMMutationDt on tbIMMutationDt (
vcIdMutation ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMMutationHd                                        */
/*==============================================================*/
create table tbIMMutationHd (
   vcIdMutation         varchar(12)          not null,
   dtMutationDate       datetime             not null,
   vcIdWarehouseSource  varchar(10)          not null,
   vcIdWarehouseDest    varchar(10)          not null,
   vcIdRefRR            varchar(14)          null,
   vcIdRefDO            varchar(14)          null,
   txNotes              text                 null,
   txMemo               text                 null,
   vcDeliveryOrderAddress varchar(500)         null,
   vcDeliveryOrderNotes varchar(500)         null,
   vcEmployeeName       varchar(40)          null,
   inCounterPrint       int                  null,
   chStatusApprove      char(1)              null,
   constraint PK_TBIMMUTATIONHD primary key nonclustered (vcIdMutation)
)
go

/*==============================================================*/
/* Index: ID_tbIMMutationHd                                     */
/*==============================================================*/
create unique index ID_tbIMMutationHd on tbIMMutationHd (
vcIdMutation ASC
)
go

/*==============================================================*/
/* Table: tbIMMutationPrice                                     */
/*==============================================================*/
create table tbIMMutationPrice (
   vcIdMutation         varchar(12)          not null,
   vcIdSupplies         varchar(20)          not null,
   dtDate               datetime             not null,
   dcPrice              Currency             not null,
   inQty                Quantity             not null,
   constraint PK_TBIMMUTATIONPRICE primary key nonclustered (vcIdMutation, vcIdSupplies, dtDate, dcPrice)
)
go

/*==============================================================*/
/* Table: tbIMOtherTransactionDt                                */
/*==============================================================*/
create table tbIMOtherTransactionDt (
   vcIdOtherTransaction varchar(12)          not null,
   vcIdSupplies         varchar(20)          not null,
   inNo                 int                  not null,
   inQty                Quantity             not null,
   dcPrice              Currency             null,
   dtSystemStamp        StampAuto            null,
   constraint PK_TBIMOTHERTRANSACTIONDT primary key nonclustered (vcIdOtherTransaction, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMOtherTransactionDt                             */
/*==============================================================*/
create unique index ID_tbIMOtherTransactionDt on tbIMOtherTransactionDt (
vcIdOtherTransaction ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMOtherTransactionHd                                */
/*==============================================================*/
create table tbIMOtherTransactionHd (
   vcIdOtherTransaction varchar(12)          not null,
   dtOtherTransactionDate datetime             null,
   vcIdTransactionType  varchar(10)          null,
   vcIdWarehouseSource  varchar(10)          not null,
   vcIdWarehouseDest    varchar(10)          null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      char(1)              null,
   dtSystemStamp        StampAuto            null,
   constraint PK_TBIMOTHERTRANSACTIONHD primary key nonclustered (vcIdOtherTransaction)
)
go

execute sp_bindefault Zero, 'tbIMOtherTransactionHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMOtherTransactionHd                             */
/*==============================================================*/
create unique index ID_tbIMOtherTransactionHd on tbIMOtherTransactionHd (
vcIdOtherTransaction ASC
)
go

/*==============================================================*/
/* Table: tbIMPurchaseInvoiceDt                                 */
/*==============================================================*/
create table tbIMPurchaseInvoiceDt (
   vcIdPurchaseInvoice  varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             not null,
   inCurrentQty         Quantity             null,
   dcPrice              Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   constraint PK_TBIMPURCHASEINVOICEDT primary key nonclustered (vcIdPurchaseInvoice, vcIdSupplies)
)
go

/*==============================================================*/
/* Table: tbIMPurchaseInvoiceHd                                 */
/*==============================================================*/
create table tbIMPurchaseInvoiceHd (
   vcIdPurchaseInvoice  varchar(12)          not null,
   dtPurchaseInvoiceDate datetime             not null,
   vcIdReceivingRecord  varchar(14)          not null,
   vcIdPurchaseOrder    varchar(12)          null,
   vcIdSupplier         varchar(10)          not null,
   vcPurchaseInvoiceSupplier varchar(20)          null,
   inInvoiceDueDay      int                  null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   dcOutstandingTotalAmount Currency             null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   chStatusApprove      Status               null,
   chFlagPO             Flag                 null,
   vcEmployeeName       varchar(40)          null,
   constraint PK_TBIMPURCHASEINVOICEHD primary key nonclustered (vcIdPurchaseInvoice)
)
go

execute sp_bindefault Zero, 'tbIMPurchaseInvoiceHd.inInvoiceDueDay'
go

execute sp_bindefault Zero, 'tbIMPurchaseInvoiceHd.inCounterPrint'
go

/*==============================================================*/
/* Table: tbIMPurchaseOrderDt                                   */
/*==============================================================*/
create table tbIMPurchaseOrderDt (
   vcIdPurchaseOrder    varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   dtShippingDate       datetime             null,
   inQty                Quantity             not null,
   dcPrice              Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   inOutstandingQty     integer              null,
   constraint PK_TBIMPURCHASEORDERDT primary key nonclustered (vcIdPurchaseOrder, vcIdSupplies)
)
go

execute sp_bindefault Zero, 'tbIMPurchaseOrderDt.inOutstandingQty'
go

/*==============================================================*/
/* Index: ID_tbIMPurchaseOrderDt                                */
/*==============================================================*/
create unique index ID_tbIMPurchaseOrderDt on tbIMPurchaseOrderDt (
vcIdPurchaseOrder ASC,
vcIdSupplies ASC,
inNo ASC
)
go

/*==============================================================*/
/* Table: tbIMPurchaseOrderHd                                   */
/*==============================================================*/
create table tbIMPurchaseOrderHd (
   vcIdPurchaseOrder    varchar(12)          not null,
   vcIdSupplier         varchar(10)          not null,
   dtPurchaseOrderDate  datetime             not null,
   vcContactPerson      varchar(25)          null,
   vcSupplierSalesOrder varchar(25)          null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      Status               null,
   constraint PK_TBIMPURCHASEORDERHD primary key nonclustered (vcIdPurchaseOrder)
)
go

execute sp_bindefault Zero, 'tbIMPurchaseOrderHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMPurschaseOrderHd                               */
/*==============================================================*/
create unique index ID_tbIMPurschaseOrderHd on tbIMPurchaseOrderHd (
vcIdPurchaseOrder ASC
)
go

/*==============================================================*/
/* Table: tbIMPurchasePayment                                   */
/*==============================================================*/
create table tbIMPurchasePayment (
   vcIdPurchasePayment  varchar(12)          not null,
   dtPurchasePaymentDate datetime             not null,
   vcIdPurchaseInvoice  varchar(12)          not null,
   vcIdPaymentType      varchar(2)           not null,
   dtEffectiveDate      datetime             null,
   vcIdBank             varchar(15)          null,
   vcAccountNo          varchar(20)          null,
   vcSupplierIdBank     varchar(15)          null,
   vcSupplierAccountNo  varchar(20)          null,
   dcAmount             Currency             null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      Status               null,
   inCounterPrint       int                  null,
   constraint PK_TBIMPURCHASEPAYMENT primary key nonclustered (vcIdPurchasePayment)
)
go

/*==============================================================*/
/* Table: tbIMPurchasePrice                                     */
/*==============================================================*/
create table tbIMPurchasePrice (
   vcIdSupplies         varchar(20)          not null,
   vcIdSupplier         varchar(10)          not null,
   dcPrice              Currency             not null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   vcLastPurchaseInvoice varchar(12)          null,
   vcEmployeeName       varchar(40)          null,
   constraint PK_TBIMPURCHASEPRICE primary key nonclustered (vcIdSupplies, vcIdSupplier)
)
go

/*==============================================================*/
/* Table: tbIMPurchaseReturnDt                                  */
/*==============================================================*/
create table tbIMPurchaseReturnDt (
   vcIdPurchaseReturn   varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                integer              null,
   dcPrice              Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   constraint PK_TBIMPURCHASERETURNDT primary key nonclustered (vcIdPurchaseReturn, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMPurchaseReturnDt                               */
/*==============================================================*/
create unique index ID_tbIMPurchaseReturnDt on tbIMPurchaseReturnDt (
vcIdPurchaseReturn ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMPurchaseReturnHd                                  */
/*==============================================================*/
create table tbIMPurchaseReturnHd (
   vcIdPurchaseReturn   varchar(12)          not null,
   vcIdPurchaseInvoice  varchar(12)          not null,
   vcIdWarehouse        varchar(10)          not null,
   dtPurchaseReturnDate datetime             null,
   vcIdSupplier         varchar(10)          null,
   vcIdRefDO            varchar(14)          null,
   vcDeliveryOrderAddress varchar(500)         null,
   vcDeliveryOrderNotes varchar(500)         null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   dcOutstandingTotalAmount Currency             null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      Status               null,
   constraint PK_TBIMPURCHASERETURNHD primary key nonclustered (vcIdPurchaseReturn)
)
go

execute sp_bindefault Zero, 'tbIMPurchaseReturnHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMPurchaseReturnHd                               */
/*==============================================================*/
create unique index ID_tbIMPurchaseReturnHd on tbIMPurchaseReturnHd (
vcIdPurchaseReturn ASC
)
go

/*==============================================================*/
/* Table: tbIMReceivingRecordDt                                 */
/*==============================================================*/
create table tbIMReceivingRecordDt (
   vcIdReceivingRecord  varchar(14)          not null,
   inNo                 int                  null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             not null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMRECEIVINGRECORDDT primary key nonclustered (vcIdReceivingRecord, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMReceivingRecordDt                              */
/*==============================================================*/
create unique index ID_tbIMReceivingRecordDt on tbIMReceivingRecordDt (
vcIdReceivingRecord ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMReceivingRecordHd                                 */
/*==============================================================*/
create table tbIMReceivingRecordHd (
   vcIdReceivingRecord  varchar(14)          not null,
   dtReceivingRecordDate datetime             not null,
   vcIdWarehouse        varchar(10)          not null,
   vcSupplierName       varchar(40)          null,
   vcSupplierDeliveryOrder varchar(25)          null,
   vcSupplierPurchaseOrder varchar(25)          null,
   vcIdPurchaseInvoice  varchar(12)          null,
   txNotes              text                 null,
   txMemo               text                 null,
   vcEmployeeName       varchar(40)          null,
   CounterPrint         integer              null,
   chStatusApprove      Status               null,
   chFlagMutation       Flag                 null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMRECEIVINGRECORDHD primary key nonclustered (vcIdReceivingRecord)
)
go

execute sp_bindefault Zero, 'tbIMReceivingRecordHd.CounterPrint'
go

/*==============================================================*/
/* Table: tbIMReceivingRecordNt                                 */
/*==============================================================*/
create table tbIMReceivingRecordNt (
   vcIdReceivingRecord  varchar(14)          not null,
   vcIdSupplies         varchar(20)          not null,
   vcIdMachine          varchar(30)          not null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMRECEIVINGRECORDNT primary key nonclustered (vcIdReceivingRecord, vcIdSupplies, vcIdMachine)
)
go

/*==============================================================*/
/* Index: ID_tbIMReceiveRecordNt                                */
/*==============================================================*/
create unique index ID_tbIMReceiveRecordNt on tbIMReceivingRecordNt (
vcIdReceivingRecord ASC,
vcIdSupplies ASC,
vcIdMachine ASC
)
go

/*==============================================================*/
/* Table: tbIMSalePrice                                         */
/*==============================================================*/
create table tbIMSalePrice (
   vcIdSupplies         varchar(20)          not null,
   vcIdCustomer         varchar(10)          not null,
   dcPrice              Currency             not null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   vcLastSalesInvoice   varchar(12)          null,
   vcEmployeeName       varchar(40)          null,
   constraint PK_TBIMSALEPRICE primary key nonclustered (vcIdSupplies, vcIdCustomer)
)
go

/*==============================================================*/
/* Table: tbIMSalesInvoiceDt                                    */
/*==============================================================*/
create table tbIMSalesInvoiceDt (
   vcIdSalesInvoice     varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             not null,
   inCurrentQty         Quantity             null,
   dcPrice              Currency             null,
   dcPricePrint         Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   constraint PK_TBIMSALESINVOICEDT primary key nonclustered (vcIdSalesInvoice, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMSalesInvoiceDt                                 */
/*==============================================================*/
create index ID_tbIMSalesInvoiceDt on tbIMSalesInvoiceDt (
vcIdSalesInvoice ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesInvoiceHd                                    */
/*==============================================================*/
create table tbIMSalesInvoiceHd (
   vcIdSalesInvoice     varchar(12)          not null,
   dtSalesInvoiceDate   datetime             null,
   vcIdSalesOrder       varchar(12)          null,
   vcIdDeliveryOrder    varchar(14)          null,
   dtDeliveryScheduleDate datetime             null,
   vcIdCustomer         varchar(10)          not null,
   vcIdWarehouse        varchar(10)          not null,
   dcOutstandingTotalAmount Currency             null,
   inInvoiceDueDay      integer              null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   vcSalesName          varchar(25)          null,
   txNotes              text                 null,
   txMemo               text                 null,
   vcDeliveryOrderAddress varchar(500)         null,
   vcDeliveryOrderNotes varchar(500)         null,
   inCounterPrint       integer              null,
   chStatusApprove      Status               null,
   chFlagSO             Flag                 null,
   chFlagPendingDO      Flag                 null,
   chFlagManual         Flag                 null,
   vcEmployeeName       varchar(40)          null,
   vcRef                varchar(50)          null,
   constraint PK_TBIMSALESINVOICEHD primary key nonclustered (vcIdSalesInvoice)
)
go

execute sp_bindefault Zero, 'tbIMSalesInvoiceHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMSalesInvoiceHd                                 */
/*==============================================================*/
create unique index ID_tbIMSalesInvoiceHd on tbIMSalesInvoiceHd (
vcIdSalesInvoice ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesOrderDt                                      */
/*==============================================================*/
create table tbIMSalesOrderDt (
   vcIdSalesOrder       varchar(12)          not null,
   inNo                 int                  not null,
   vcIdSupplies         varchar(20)          not null,
   dtShippingDate       datetime             null,
   inQty                Quantity             not null,
   dcPrice              Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   inOutstandingQty     Quantity             null,
   constraint PK_TBIMSALESORDERDT primary key nonclustered (vcIdSalesOrder, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: _IDtbIMSalesOrder                                     */
/*==============================================================*/
create index _IDtbIMSalesOrder on tbIMSalesOrderDt (
vcIdSalesOrder ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesOrderHd                                      */
/*==============================================================*/
create table tbIMSalesOrderHd (
   vcIdSalesOrder       varchar(12)          not null,
   vcIdCustomer         varchar(10)          not null,
   dtSalesOrderDate     datetime             not null,
   vcCustomerPurchaseOrder varchar(25)          null,
   vcSalesName          varchar(25)          null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   txNotes              text                 null,
   txMemo               text                 null,
   vcEmployeeName       varchar(40)          null,
   inCounterPrint       int                  null,
   chStatusApprove      Status               null,
   constraint PK_TBIMSALESORDERHD primary key nonclustered (vcIdSalesOrder)
)
go

execute sp_bindefault Zero, 'tbIMSalesOrderHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMSalesOrderHd                                   */
/*==============================================================*/
create unique index ID_tbIMSalesOrderHd on tbIMSalesOrderHd (
vcIdSalesOrder ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesPayment                                      */
/*==============================================================*/
create table tbIMSalesPayment (
   vcIdSalesPayment     varchar(12)          not null,
   dtSalesPaymentDate   datetime             not null,
   vcIdSalesInvoice     varchar(12)          not null,
   vcIdPaymentType      varchar(2)           not null,
   dtEffectiveDate      datetime             null,
   vcIdBank             varchar(15)          null,
   vcAccountNo          varchar(20)          null,
   vcCustomerIdBank     varchar(15)          null,
   vcCustomerAccountNo  varchar(20)          null,
   dcAmount             Currency             null,
   txNotes              text                 null,
   vcEmployeeName       varchar(40)          null,
   chStatusApprove      Status               null,
   inCounterPrint       int                  null,
   constraint PK_TBIMSALESPAYMENT primary key nonclustered (vcIdSalesPayment)
)
go

/*==============================================================*/
/* Index: ID_tbIMSalesPayment                                   */
/*==============================================================*/
create index ID_tbIMSalesPayment on tbIMSalesPayment (
vcIdSalesPayment ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesReturnDt                                     */
/*==============================================================*/
create table tbIMSalesReturnDt (
   vcIdSalesReturn      varchar(12)          not null,
   inNo                 integer              not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                Quantity             not null,
   dcPrice              Currency             null,
   dcDiscItem           Disc                 null,
   dcDiscItemPrice      Currency             null,
   dcAmount             Currency             null,
   constraint PK_TBIMSALESRETURNDT primary key nonclustered (vcIdSalesReturn, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMSalesReturnDt                                  */
/*==============================================================*/
create unique index ID_tbIMSalesReturnDt on tbIMSalesReturnDt (
vcIdSalesReturn ASC,
vcIdSupplies ASC
)
go

/*==============================================================*/
/* Table: tbIMSalesReturnHd                                     */
/*==============================================================*/
create table tbIMSalesReturnHd (
   vcIdSalesReturn      varchar(12)          not null,
   vcIdSalesInvoice     varchar(12)          not null,
   vcIdCustomer         varchar(10)          not null,
   vcIdWarehouse        varchar(10)          null,
   dtSalesReturnDate    datetime             null,
   vcIdCustomerDeliveryOrder varchar(25)          null,
   vcIdRefRR            varchar(14)          null,
   dcAmount             Currency             null,
   dcDisc               Disc                 null,
   dcDiscAmount         Currency             null,
   dcTax                Disc                 null,
   dcTaxAmount          Currency             null,
   dcTotalAmount        Currency             null,
   dcOutstandingTotalAmount Currency             null,
   txNotes              text                 null,
   txMemo               text                 null,
   inCounterPrint       integer              null,
   chStatusApprove      char(1)              null,
   vcEmployeeName       varchar(40)          null,
   chFlagWarehouse      Flag                 null,
   constraint PK_TBIMSALESRETURNHD primary key nonclustered (vcIdSalesReturn)
)
go

execute sp_bindefault Zero, 'tbIMSalesReturnHd.inCounterPrint'
go

/*==============================================================*/
/* Index: ID_tbIMSalesReturnHd                                  */
/*==============================================================*/
create unique index ID_tbIMSalesReturnHd on tbIMSalesReturnHd (
vcIdSalesReturn ASC
)
go

/*==============================================================*/
/* Table: tbIMStockOnHandDt                                     */
/*==============================================================*/
create table tbIMStockOnHandDt (
   vcIdSupplies         varchar(20)          not null,
   vcIdWarehouse        varchar(10)          not null,
   dcPrice              Currency             not null,
   dtDate               datetime             not null,
   inQty                Quantity             null,
   constraint PK_TBIMSTOCKONHANDDT primary key nonclustered (vcIdSupplies, vcIdWarehouse, dcPrice, dtDate)
)
go

/*==============================================================*/
/* Table: tbIMStockOnHandHd                                     */
/*==============================================================*/
create table tbIMStockOnHandHd (
   vcIdSupplies         varchar(20)          not null,
   vcIdWarehouse        varchar(10)          not null,
   inEndQty             Quantity             null,
   dcEndValue           Currency             null,
   inEndQtyReady        Quantity             null,
   constraint PK_TBIMSTOCKONHANDHD primary key nonclustered (vcIdSupplies, vcIdWarehouse)
)
go

/*==============================================================*/
/* Index: ID_tbIMStockOnHandHd                                  */
/*==============================================================*/
create unique index ID_tbIMStockOnHandHd on tbIMStockOnHandHd (
vcIdSupplies ASC,
vcIdWarehouse ASC
)
go

/*==============================================================*/
/* Table: tbIMSupplies                                          */
/*==============================================================*/
create table tbIMSupplies (
   vcIdSupplies         varchar(20)          not null,
   vcSuppliesName       varchar(50)          not null,
   vcIdSuppliesCategory varchar(20)          not null,
   vcIdUnitOfMeasure    varchar(10)          null,
   vcMerk               varchar(15)          null,
   vcType               varchar(40)          null,
   inMinStock           Quantity             null,
   vcNotes              varchar(100)         null,
   vcLastPurchaseInvoice varchar(12)          null,
   vcLastSalesInvoice   varchar(12)          null,
   vcEmployeeName       varchar(40)          null,
   chFlagService        Flag                 null,
   dcPrice1             Currency             null,
   dcPrice2             Currency             null,
   dcPrice3             Currency             null,
   chStatusCurrency1    Status               null,
   chStatusCurrency2    Status               null,
   chStatusCurrency3    Status               null,
   dtSystemStamp        StampAuto            null,
   FlagCouple           Flag                 null,
   constraint PK_TBIMSUPPLIES primary key nonclustered (vcIdSupplies),
   constraint AK_AK_TBIMSUPPLIES_TBIMSUPP unique (vcSuppliesName)
)
go

/*==============================================================*/
/* Table: tbIMSuppliesBalance                                   */
/*==============================================================*/
create table tbIMSuppliesBalance (
   vcIdSupplies         varchar(20)          not null,
   vcIdWarehouse        varchar(10)          not null,
   vcYear               varchar(4)           not null,
   inOpeningQty         Quantity             null,
   dcOpeningValue       Currency             null,
   inQty1               Quantity             null,
   inQty2               Quantity             null,
   inQty3               Quantity             null,
   inQty4               Quantity             null,
   inQty5               Quantity             null,
   inQty6               Quantity             null,
   inQty7               Quantity             null,
   inQty8               Quantity             null,
   inQty9               Quantity             null,
   inQty10              Quantity             null,
   inQty11              Quantity             null,
   inQty12              Quantity             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBIMSUPPLIESBALANCE primary key nonclustered (vcIdSupplies, vcIdWarehouse, vcYear)
)
go

/*==============================================================*/
/* Index: ID_tbIMSuppliesBalance                                */
/*==============================================================*/
create unique index ID_tbIMSuppliesBalance on tbIMSuppliesBalance (
vcIdSupplies ASC,
vcIdWarehouse ASC,
vcYear ASC
)
go

/*==============================================================*/
/* Table: tbIMSuppliesCategory                                  */
/*==============================================================*/
create table tbIMSuppliesCategory (
   vcIdSuppliesCategory varchar(20)          not null,
   vcSuppliesCategoryCode varchar(6)           not null,
   constraint PK_TBIMSUPPLIESCATEGORY primary key nonclustered (vcIdSuppliesCategory),
   constraint AK_AK_TBIMSUPPLIESCAT_TBIMSUPP unique (vcSuppliesCategoryCode)
)
go

/*==============================================================*/
/* Table: tbIMSuppliesDt                                        */
/*==============================================================*/
create table tbIMSuppliesDt (
   vcIdSuppliesParent   varchar(20)          not null,
   vcIdSupplies         varchar(20)          not null,
   inQty                integer              not null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMSUPPLIESDT primary key nonclustered (vcIdSuppliesParent, vcIdSupplies)
)
go

/*==============================================================*/
/* Index: ID_tbIMSuppliesDt                                     */
/*==============================================================*/
create unique index ID_tbIMSuppliesDt on tbIMSuppliesDt (
vcIdSuppliesParent ASC
)
go

/*==============================================================*/
/* Table: tbIMSuppliesImage                                     */
/*==============================================================*/
create table tbIMSuppliesImage (
   vcIdSupplies         varchar(20)          not null,
   blImage1             BlobImage            null,
   blImage2             BlobImage            null,
   constraint PK_TBIMSUPPLIESIMAGE primary key nonclustered (vcIdSupplies)
)
go

/*==============================================================*/
/* Table: tbIMSuppliesMinStock                                  */
/*==============================================================*/
create table tbIMSuppliesMinStock (
   vcIdSupplies         varchar(20)          not null,
   vcIdWarehouse        varchar(10)          not null,
   inMinStock           int                  null,
   vcEmployeeName       varchar(40)          null,
   constraint PK_TBIMSUPPLIESMINSTOCK primary key nonclustered (vcIdSupplies, vcIdWarehouse)
)
go

/*==============================================================*/
/* Table: tbIMTransaction                                       */
/*==============================================================*/
create table tbIMTransaction (
   vcIdTransaction      GUID                 not null,
   vcIdReference        varchar(12)          not null,
   dtDateTransaction    datetime             not null,
   vcIdTransactionType  varchar(10)          not null,
   vcIdSupplies         varchar(20)          not null,
   vcIdWarehouseSource  varchar(10)          not null,
   vcIdWarehouseDest    varchar(10)          null,
   inQty                Quantity             not null,
   dcPrice              Currency             not null,
   vcDescription        varchar(100)         null,
   vcIdParent           varchar(20)          null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMTRANSACTION primary key nonclustered (vcIdTransaction)
)
go

/*==============================================================*/
/* Table: tbIMTransactionBalance                                */
/*==============================================================*/
create table tbIMTransactionBalance (
   vcIdWarehouse        varchar(10)          not null,
   vcIdTransactionType  varchar(10)          not null,
   vcIdSupplies         varchar(20)          not null,
   vcYear               varchar(4)           not null,
   inQty1               Quantity             null,
   inQty2               Quantity             null,
   inQty3               Quantity             null,
   inQty4               Quantity             null,
   inQty5               Quantity             null,
   inQty6               Quantity             null,
   inQty7               Quantity             null,
   inQty8               Quantity             null,
   inQty9               Quantity             null,
   inQty10              Quantity             null,
   inQty11              Quantity             null,
   inQty12              Quantity             null,
   dcValue1             Currency             null,
   dcValue2             Currency             null,
   dcValue3             Currency             null,
   dcValue4             Currency             null,
   dcValue5             Currency             null,
   dcValue6             Currency             null,
   dcValue7             Currency             null,
   dcValue8             Currency             null,
   dcValue9             Currency             null,
   dcValue10            Currency             null,
   dcValue11            Currency             null,
   dcValue12            Currency             null,
   constraint PK_TBIMTRANSACTIONBALANCE primary key nonclustered (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, vcYear)
)
go

/*==============================================================*/
/* Table: tbIMTransactionCosting                                */
/*==============================================================*/
create table tbIMTransactionCosting (
   vcIdTransactionCosting GUID                 not null,
   vcIdWarehouse        varchar(10)          not null,
   vcIdTransactionType  varchar(10)          not null,
   vcIdSupplies         varchar(20)          not null,
   dtTransactionCostingDate datetime             not null,
   dtStockDate          datetime             null,
   inQty                Quantity             null,
   dcPrice              Currency             null,
   dcAmount             Currency             null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMTRANSACTIONCOSTING primary key nonclustered (vcIdTransactionCosting)
)
go

/*==============================================================*/
/* Table: tbIMTransactionType                                   */
/*==============================================================*/
create table tbIMTransactionType (
   vcIdTransactionType  varchar(10)          not null,
   vcTransactionName    varchar(50)          not null,
   chStatusTransaction  Flag                 not null,
   chFlagFix            Flag                 null,
   dtSystemStamp        StampAuto            not null,
   constraint PK_TBIMTRANSACTIONTYPE primary key nonclustered (vcIdTransactionType)
)
go

alter table City
   add constraint FK_GNCity_GNProvince foreign key (ProvinceId)
      references Province (ProvinceId)
         on update cascade on delete cascade
go

alter table Department
   add constraint FK_Department_Company foreign key (CompanyId)
      references Company (CompanyId)
         on update cascade
go

alter table Display
   add constraint FK_DISPLAY_DISPLAY_M_REPORT foreign key (ProgramId, ReportId)
      references Report (ProgramId, ReportId)
go

alter table Employee
   add constraint FK_GNEmployee_GNPosition foreign key (PositionId)
      references JobPosition (PositionId)
         on update cascade
go

alter table JobPosition
   add constraint FK_GNPosition_GNDepartment foreign key (DepartmentId)
      references Department (DepartmentId)
         on update cascade
go

alter table LogProgram
   add constraint FK_LOGPROGR_TIPE_LOGP_LOGTYPE foreign key (LogTypeId)
      references LogType (LogTypeId)
go

alter table PositionAccess
   add constraint FK_POSITION_POSITIONS_JOBPOSIT foreign key (PositionId)
      references JobPosition (PositionId)
go

alter table Province
   add constraint FK_GNProvince_GNCountry foreign key (CountryId)
      references Country (CountryId)
         on update cascade on delete cascade
go

alter table ReportCounter
   add constraint FK_REPORTCO_EMPLOYEE__EMPLOYEE foreign key (EmployeeId)
      references Employee (EmployeeId)
go

alter table ReportCounter
   add constraint FK_REPORTCO_REPORT_ME_REPORT foreign key (ProgramId, ReportId)
      references Report (ProgramId, ReportId)
go

alter table tbACAccountPayableBalance
   add constraint FK_ACAccountPayable_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbACAccountReceivableBalance
   add constraint FK_ACAccountReceivable_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbACBank
   add constraint FK_ACBank_GNCity foreign key (vcIdCity)
      references City (CityId)
         on update cascade
go

alter table tbACBankAccount
   add constraint FK_ACBankAccount_ACBank foreign key (vcIdBank)
      references tbACBank (vcIdBank)
         on update cascade on delete cascade
go

alter table tbACCustomerBankAccount
   add constraint FK_ACCustomerBank_ACBank foreign key (vcCustomerIdBank)
      references tbACBank (vcIdBank)
         on update cascade on delete cascade
go

alter table tbACCustomerBankAccount
   add constraint FK_ACCustomerBank_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade on delete cascade
go

alter table tbACCustomerDownPaymentBalance
   add constraint FK_ACCustomerDownPaymentBalance_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbACPurchaseDownPayment
   add constraint FK_ACPurchaseDownPayment_ACBankAccount foreign key (vcIdBank, vcAccountNo)
      references tbACBankAccount (vcIdBank, vcAccountNo)
go

alter table tbACPurchaseDownPayment
   add constraint FK_ACPurchaseDownPayment_ACSupplierBankAccount foreign key (vcSupplierIdBank, vcSupplierAccountNo)
      references tbACSupplierBankAccount (vcSupplierIdBank, vcSupplierAccountNo)
go

alter table tbACPurchaseDownPayment
   add constraint FK_ACPurchaseDownPayment_GNPaymentType foreign key (vcIdPaymentType)
      references tbGNPaymentType (vcIdPaymentType)
         on update cascade
go

alter table tbACPurchaseDownPayment
   add constraint FK_ACPurchaseDownPayment_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbACRevenueBalance
   add constraint FK_ACRevenueBalance_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbACSalesDownPayment
   add constraint FK_ACSalesDownPayment_ACBankAccount foreign key (vcIdBank, vcAccountNo)
      references tbACBankAccount (vcIdBank, vcAccountNo)
go

alter table tbACSalesDownPayment
   add constraint FK_ACSalesDownPayment_ACCustomerBankAccount foreign key (vcCustomerIdBank, vcCustomerAccountNo)
      references tbACCustomerBankAccount (vcCustomerIdBank, vcCustomerAccountNo)
go

alter table tbACSalesDownPayment
   add constraint FK_ACSalesDownPayment_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbACSalesDownPayment
   add constraint FK_ACSalesDownPayment_GNPaymentType foreign key (vcIdPaymentType)
      references tbGNPaymentType (vcIdPaymentType)
         on update cascade
go

alter table tbACSupplierBankAccount
   add constraint FK_ACSupplierBank_ACBank foreign key (vcSupplierIdBank)
      references tbACBank (vcIdBank)
         on update cascade on delete cascade
go

alter table tbACSupplierBankAccount
   add constraint FK_ACSupplierBank_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade on delete cascade
go

alter table tbACSupplierDownPaymentBalance
   add constraint FK_ACSupplierDownPaymentBalance_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbACTransactionAP
   add constraint FK_ACTransactionAP_ACTransactionType foreign key (vcIdTransactionType)
      references tbACTransactionType (vcIdTransactionType)
go

alter table tbACTransactionAP
   add constraint FK_ACTransactionAP_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbACTransactionAR
   add constraint FK_ACTransactionAR_ACTransactionType foreign key (vcIdTransactionType)
      references tbACTransactionType (vcIdTransactionType)
go

alter table tbACTransactionAR
   add constraint FK_ACTransactionAR_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbACTransactionRevenue
   add constraint FK_ACSalesRevenue_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbGNCustomer
   add constraint FK_GNCustomer_GNCategory foreign key (vcIdCategory)
      references tbGNCategory (vcIdCategory)
         on update cascade
go

alter table tbGNCustomer
   add constraint FK_GNCustomer_GNCity foreign key (vcIdCity)
      references City (CityId)
go

alter table tbGNCustomerPhone
   add constraint FK_GNCustomerPhone_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade on delete cascade
go

alter table tbGNSupplier
   add constraint FK_GNSupplier_GNCategory foreign key (vcIdCategory)
      references tbGNCategory (vcIdCategory)
         on update cascade
go

alter table tbGNSupplier
   add constraint FK_GNSupplier_GNCity foreign key (vcIdCity)
      references City (CityId)
go

alter table tbGNSupplierPhone
   add constraint FK_GNSupplierPhone_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade on delete cascade
go

alter table tbGNWarehouse
   add constraint FK_TBGNWARE_REFERENCE_CITY foreign key (vcIdCity)
      references City (CityId)
go

alter table tbGNWarehousePhone
   add constraint FK_GNWarehousePhone_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade on delete cascade
go

alter table tbIMAssemblyTransactionDt
   add constraint FK_tbIMAssemblyTransactionDt_tbIMAssemblyTransactionHd foreign key (vcIdAssemblyTransaction)
      references tbIMAssemblyTransactionHd (vcIdAssemblyTransaction)
         on update cascade on delete cascade
go

alter table tbIMAssemblyTransactionDt
   add constraint FK_TBIMASSE_REFERENCE_TBIMSUPP foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
go

alter table tbIMAssemblyTransactionHd
   add constraint FK_tbIMAssemblyTransactionHd_tbGNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMAssemblyTransactionHd
   add constraint FK_TBIMASSE_REFERENCE_TBIMSUPP2 foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
go

alter table tbIMDeliveryOrderDt
   add constraint FK_IMDeliveryOrderDt_IMDeliveryOrderHd foreign key (vcIdDeliveryOrder)
      references tbIMDeliveryOrderHd (vcIdDeliveryOrder)
         on update cascade on delete cascade
go

alter table tbIMDeliveryOrderDt
   add constraint FK_IMSalesDONt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMDeliveryOrderHd
   add constraint FK_IMDeliveryOrderHd_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMDeliveryOrderNt
   add constraint FK_IMDeliveryOrderNt_IMDeliveryOrderDt foreign key (vcIdDeliveryOrder, vcIdSupplies)
      references tbIMDeliveryOrderDt (vcIdDeliveryOrder, vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMMutationDt
   add constraint FK_IMMutationDt_IMMutationHd foreign key (vcIdMutation)
      references tbIMMutationHd (vcIdMutation)
         on update cascade on delete cascade
go

alter table tbIMMutationDt
   add constraint FK_IMMutationDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMMutationHd
   add constraint FK_IMMutationHd_GNWarehouse1 foreign key (vcIdWarehouseSource)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMMutationHd
   add constraint FK_IMMutationHd_GNWarehouse2 foreign key (vcIdWarehouseDest)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMMutationPrice
   add constraint FK_IMMutationPrice_IMMutationDt foreign key (vcIdMutation, vcIdSupplies)
      references tbIMMutationDt (vcIdMutation, vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMOtherTransactionDt
   add constraint FK_GNSupplies_IMOtherTransactionDt foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMOtherTransactionDt
   add constraint FK_IMOtherTransactionDt_IMOtherTransactionHd foreign key (vcIdOtherTransaction)
      references tbIMOtherTransactionHd (vcIdOtherTransaction)
         on update cascade on delete cascade
go

alter table tbIMOtherTransactionHd
   add constraint FK_IMOtherTransactionHd_GNWarehouse1 foreign key (vcIdWarehouseSource)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMOtherTransactionHd
   add constraint FK_IMOtherTransactionHd_GNWarehouse2 foreign key (vcIdWarehouseDest)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMOtherTransactionHd
   add constraint FK_IMOtherTransactionHd_IMTransactionType foreign key (vcIdTransactionType)
      references tbIMTransactionType (vcIdTransactionType)
         on update cascade
go

alter table tbIMPurchaseInvoiceDt
   add constraint FK_IMPurchaseInvoiceDt_IMPurchaseInvoiceHd foreign key (vcIdPurchaseInvoice)
      references tbIMPurchaseInvoiceHd (vcIdPurchaseInvoice)
         on update cascade on delete cascade
go

alter table tbIMPurchaseInvoiceDt
   add constraint FK_IMPurchaseInvoiceDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMPurchaseInvoiceHd
   add constraint FK_IMPurchaseInvoiceHd_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbIMPurchaseInvoiceHd
   add constraint FK_IMPurchaseInvoiceHd_IMPurchaseOrderHd foreign key (vcIdPurchaseOrder)
      references tbIMPurchaseOrderHd (vcIdPurchaseOrder)
go

alter table tbIMPurchaseInvoiceHd
   add constraint FK_IMPurchaseInvoiceHd_IMReceivingRecordHd foreign key (vcIdReceivingRecord)
      references tbIMReceivingRecordHd (vcIdReceivingRecord)
go

alter table tbIMPurchaseOrderDt
   add constraint FK_IMPurchaseOrderDt_IMPurchaseOrderHd foreign key (vcIdPurchaseOrder)
      references tbIMPurchaseOrderHd (vcIdPurchaseOrder)
         on update cascade on delete cascade
go

alter table tbIMPurchaseOrderDt
   add constraint FK_IMPurchaseOrderDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMPurchaseOrderHd
   add constraint FK_IMPurchaseOrderHd_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbIMPurchasePayment
   add constraint FK_IMPurchasePayment_ACBankAccount foreign key (vcIdBank, vcAccountNo)
      references tbACBankAccount (vcIdBank, vcAccountNo)
go

alter table tbIMPurchasePayment
   add constraint FK_IMPurchasePayment_ACSupplierBankAccount foreign key (vcSupplierIdBank, vcSupplierAccountNo)
      references tbACSupplierBankAccount (vcSupplierIdBank, vcSupplierAccountNo)
go

alter table tbIMPurchasePayment
   add constraint FK_IMPurchasePayment_GNPaymentType foreign key (vcIdPaymentType)
      references tbGNPaymentType (vcIdPaymentType)
         on update cascade
go

alter table tbIMPurchasePayment
   add constraint FK_IMPurchasePayment_IMPurchaseInvoiceHd foreign key (vcIdPurchaseInvoice)
      references tbIMPurchaseInvoiceHd (vcIdPurchaseInvoice)
go

alter table tbIMPurchasePrice
   add constraint FK_IMPurchasePrice_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade on delete cascade
go

alter table tbIMPurchasePrice
   add constraint FK_IMPurchasePrice_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMPurchaseReturnDt
   add constraint FK_IMPurchaseReturnDt_IMPurchaseReturnHd foreign key (vcIdPurchaseReturn)
      references tbIMPurchaseReturnHd (vcIdPurchaseReturn)
         on update cascade on delete cascade
go

alter table tbIMPurchaseReturnDt
   add constraint FK_IMPurchaseReturnDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMPurchaseReturnHd
   add constraint FK_IMPurchaseReturnHd_GNSupplier foreign key (vcIdSupplier)
      references tbGNSupplier (vcIdSupplier)
         on update cascade
go

alter table tbIMPurchaseReturnHd
   add constraint FK_IMPurchaseReturnHd_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMPurchaseReturnHd
   add constraint FK_IMPurchaseReturnHd_IMPurchaseInvoiceHd foreign key (vcIdPurchaseInvoice)
      references tbIMPurchaseInvoiceHd (vcIdPurchaseInvoice)
go

alter table tbIMReceivingRecordDt
   add constraint FK_IMReceiveRecordDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMReceivingRecordDt
   add constraint FK_IMReceivingRecordDt_IMReceivingRecordHd foreign key (vcIdReceivingRecord)
      references tbIMReceivingRecordHd (vcIdReceivingRecord)
         on update cascade on delete cascade
go

alter table tbIMReceivingRecordHd
   add constraint FK_IMReceivingRecordHd_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMReceivingRecordNt
   add constraint FK_IMReceivingRecordNt_IMReceivingRecordDt foreign key (vcIdReceivingRecord, vcIdSupplies)
      references tbIMReceivingRecordDt (vcIdReceivingRecord, vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMSalePrice
   add constraint FK_IMSalePrice_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade on delete cascade
go

alter table tbIMSalePrice
   add constraint FK_IMSalePrice_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMSalesInvoiceDt
   add constraint FK_IMSalesInvoiceDt_IMSalesInvoiceHd foreign key (vcIdSalesInvoice)
      references tbIMSalesInvoiceHd (vcIdSalesInvoice)
         on update cascade on delete cascade
go

alter table tbIMSalesInvoiceDt
   add constraint FK_IMSalesInvoiceDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSalesInvoiceHd
   add constraint FK_IMSalesInvoiceHd_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbIMSalesInvoiceHd
   add constraint FK_IMSalesInvoiceHd_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMSalesInvoiceHd
   add constraint FK_IMSalesInvoiceHd_IMDeliveryOrderHd foreign key (vcIdDeliveryOrder)
      references tbIMDeliveryOrderHd (vcIdDeliveryOrder)
go

alter table tbIMSalesInvoiceHd
   add constraint FK_IMSalesInvoiceHd_IMSalesOrderHd foreign key (vcIdSalesOrder)
      references tbIMSalesOrderHd (vcIdSalesOrder)
go

alter table tbIMSalesOrderDt
   add constraint FK_IMSalesOrderDt_IMSalesOrderHd foreign key (vcIdSalesOrder)
      references tbIMSalesOrderHd (vcIdSalesOrder)
         on update cascade on delete cascade
go

alter table tbIMSalesOrderDt
   add constraint FK_IMSalesOrderDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSalesOrderHd
   add constraint FK_IMSalesOrderHd_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbIMSalesPayment
   add constraint FK_IMSalesPayment_ACBankAccount foreign key (vcIdBank, vcAccountNo)
      references tbACBankAccount (vcIdBank, vcAccountNo)
go

alter table tbIMSalesPayment
   add constraint FK_IMSalesPayment_ACCustomerBankAccount foreign key (vcCustomerIdBank, vcCustomerAccountNo)
      references tbACCustomerBankAccount (vcCustomerIdBank, vcCustomerAccountNo)
go

alter table tbIMSalesPayment
   add constraint FK_IMSalesPayment_GNPaymentType foreign key (vcIdPaymentType)
      references tbGNPaymentType (vcIdPaymentType)
         on update cascade
go

alter table tbIMSalesPayment
   add constraint FK_IMSalesPayment_IMSalesInvoiceHd foreign key (vcIdSalesInvoice)
      references tbIMSalesInvoiceHd (vcIdSalesInvoice)
go

alter table tbIMSalesReturnDt
   add constraint FK_IMSalesReturnDt_IMSalesReturnHd foreign key (vcIdSalesReturn)
      references tbIMSalesReturnHd (vcIdSalesReturn)
         on update cascade on delete cascade
go

alter table tbIMSalesReturnDt
   add constraint FK_IMSalesReturnDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSalesReturnHd
   add constraint FK_IMSalesReturnHd_GNCustomer foreign key (vcIdCustomer)
      references tbGNCustomer (vcIdCustomer)
         on update cascade
go

alter table tbIMSalesReturnHd
   add constraint FK_IMSalesReturnHd_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMSalesReturnHd
   add constraint FK_IMSalesReturnHd_IMSalesInvoiceHd foreign key (vcIdSalesInvoice)
      references tbIMSalesInvoiceHd (vcIdSalesInvoice)
go

alter table tbIMStockOnHandDt
   add constraint FK_IMStockOnHandDt_IMStockOnHandHd foreign key (vcIdSupplies, vcIdWarehouse)
      references tbIMStockOnHandHd (vcIdSupplies, vcIdWarehouse)
         on update cascade on delete cascade
go

alter table tbIMStockOnHandHd
   add constraint FK_IMStockOnHand_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade
go

alter table tbIMStockOnHandHd
   add constraint FK_IMStockOnHand_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSupplies
   add constraint FK_IMSupplies_IMSuppliesCategory foreign key (vcIdSuppliesCategory)
      references tbIMSuppliesCategory (vcIdSuppliesCategory)
         on update cascade
go

alter table tbIMSuppliesBalance
   add constraint FK_IMSuppliesBalance_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMSuppliesBalance
   add constraint FK_tbIMSuppliesBalance_tbIMStockOnHand foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSuppliesDt
   add constraint FK_IMSuppliesDt_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
go

alter table tbIMSuppliesDt
   add constraint FK_IMSuppliesDt_IMSuppliesParent foreign key (vcIdSuppliesParent)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMSuppliesImage
   add constraint FK_TBIMSUPP_REFERENCE_TBIMSUPP foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMSuppliesMinStock
   add constraint FK_IMSuppliesMinStock_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade on delete cascade
go

alter table tbIMSuppliesMinStock
   add constraint FK_IMSuppliesMinStock_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMTransaction
   add constraint FK_IMTransaction_GNWarehouse1 foreign key (vcIdWarehouseSource)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMTransaction
   add constraint FK_IMTransaction_GNWarehouse2 foreign key (vcIdWarehouseDest)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMTransaction
   add constraint FK_IMTransaction_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMTransaction
   add constraint FK_IMTransaction_IMTransactionType foreign key (vcIdTransactionType)
      references tbIMTransactionType (vcIdTransactionType)
go

alter table tbIMTransactionBalance
   add constraint FK_IMTransactionBalance_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
go

alter table tbIMTransactionBalance
   add constraint FK_IMTransactionBalance_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade
go

alter table tbIMTransactionBalance
   add constraint FK_IMTransactionBalance_IMTransactionType foreign key (vcIdTransactionType)
      references tbIMTransactionType (vcIdTransactionType)
go

alter table tbIMTransactionCosting
   add constraint FK_IMTransactionCosting_GNWarehouse foreign key (vcIdWarehouse)
      references tbGNWarehouse (vcIdWarehouse)
         on update cascade on delete cascade
go

alter table tbIMTransactionCosting
   add constraint FK_IMTransactionCosting_IMSupplies foreign key (vcIdSupplies)
      references tbIMSupplies (vcIdSupplies)
         on update cascade on delete cascade
go

alter table tbIMTransactionCosting
   add constraint FK_IMTransactionCosting_IMTransactionType foreign key (vcIdTransactionType)
      references tbIMTransactionType (vcIdTransactionType)
         on update cascade on delete cascade
go


/* Store Procedure : fnGetAPOpeningBalance
   Desc		       : 1.Untuk mendapatkan AP opening balance dari supplier, sampai dengan tgl yg ditentukan
   Create          : Ivan */
   
create function fnGetAPOpeningBalance (@IdSupplier varchar(10), @DateEnd datetime)
returns money
with encryption
begin
  declare
    @Year int, @Month int, @DateStart datetime, @OpeningBalance money, @CurrentBalance money,
    @MonthStr varchar(2)
    
  set @Year = Year(@DateEnd)
  set @Month = Month(@DateEnd) - 1
  
  -- Seacrh start date
  set @MonthStr = cast((@Month + 1) as varchar)
  if len(cast(@Month + 1 as varchar)) <> 2  
    set @MonthStr = '0' + cast(@Month + 1 as varchar)    
  set @DateStart = cast(@Year as varchar) + @MonthStr + '01'
  
  -- Calculate until date end month - 1
  select @OpeningBalance = IsNull(dcOpeningValue, 0)
  from tbACAccountPayableBalance
  where vcIdSupplier = @IdSupplier
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = dcValue1
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = dcValue2
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = dcValue3
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = dcValue4
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = dcValue5
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = dcValue6
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = dcValue7
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = dcValue8
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = dcValue9
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = dcValue10
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = dcValue11
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = dcValue12
    from tbACAccountPayableBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)
  
  -- Calculate transaction until date end
  
  -- In
  select @CurrentBalance = IsNull(sum(a.dcAmount), 0)
  from tbACTransactionAP a
  inner join tbACTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplier = @IdSupplier  
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '0'  
  set @OpeningBalance = @OpeningBalance + @CurrentBalance
  
  -- Out
  select @CurrentBalance = IsNull(sum(a.dcAmount), 0)
  from tbACTransactionAP a
  inner join tbACTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplier = @IdSupplier  
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '1'
  set @OpeningBalance = @OpeningBalance - @CurrentBalance
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)  
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetAROpeningBalance
   Desc		       : 1.Untuk mendapatkan AR opening balance dari customer, sampai dengan tgl yg ditentukan
   Create          : Ivan */
   
create function fnGetAROpeningBalance (@IdCustomer varchar(10), @DateEnd datetime)
returns money
with encryption
begin
  declare
    @Year int, @Month int, @DateStart datetime, @OpeningBalance money, @CurrentBalance money,
    @MonthStr varchar(2)
    
  set @Year = Year(@DateEnd)
  set @Month = Month(@DateEnd) - 1
  
  -- Seacrh start date
  set @MonthStr = cast((@Month + 1) as varchar)
  if len(cast(@Month + 1 as varchar)) <> 2  
    set @MonthStr = '0' + cast(@Month + 1 as varchar)    
  set @DateStart = cast(@Year as varchar) + @MonthStr + '01'
  
  -- Calculate until date end month - 1
  select @OpeningBalance = IsNull(dcOpeningValue, 0)
  from tbACAccountReceivableBalance
  where vcIdCustomer = @IdCustomer
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = dcValue1
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = dcValue2
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = dcValue3
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = dcValue4
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = dcValue5
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = dcValue6
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = dcValue7
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = dcValue8
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = dcValue9
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = dcValue10
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = dcValue11
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = dcValue12
    from tbACAccountReceivableBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)
  
  -- Calculate transaction until date end
  
  -- In
  select @CurrentBalance = IsNull(sum(a.dcAmount), 0)
  from tbACTransactionAR a
  inner join tbACTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdCustomer = @IdCustomer  
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '0'  
  set @OpeningBalance = @OpeningBalance + @CurrentBalance
  
  -- Out
  select @CurrentBalance = IsNull(sum(a.dcAmount), 0)
  from tbACTransactionAR a
  inner join tbACTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdCustomer = @IdCustomer  
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '1'
  set @OpeningBalance = @OpeningBalance - @CurrentBalance
    
  set @OpeningBalance = IsNull(@OpeningBalance, 0)
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetCurrentIdDeliveryOrder
   Desc		       : 1.Untuk mendapatkan id delivery order 
   Create          : Ivan */
   
create function fnGetCurrentIdDeliveryOrder (@DeliveryOrderDate datetime, @IdWarehouse varchar(10))
returns varchar(14)
with encryption
begin
  declare
    @CurrentNo varchar(14), @Result varchar(14)

  select @CurrentNo = max(vcIdDeliveryOrder)
  from tbIMDeliveryOrderHd
  where Year(dtDeliveryOrderDate) = year(@DeliveryOrderDate)
  and Month(dtDeliveryOrderDate) = month(@DeliveryOrderDate)
  and vcIdWarehouse = @IdWarehouse
  
  if IsNull(@CurrentNo, '') <> '' 
    set @Result = Right(@CurrentNo, 4)
  else
    set @Result = '0000'
      
  set @Result = cast(cast(@Result as int) + 1 as varchar)
  set @Result = replicate('0', 4 - len(@Result)) + @Result
  set @Result = 'DO' + Right(@IdWarehouse, 2) + '-' + left(convert(varchar, @DeliveryOrderDate, 12), 4) + '-' + @Result;
   
  return(@Result)
end
go


/* Store Procedure : fnGetCurrentIdPurchaseDownPayment
   Desc		       : 1.Untuk mendapatkan id purchase downpayment
   Create          : Ivan */
   
create function fnGetCurrentIdPurchaseDownPayment (@PurchaseDownPaymentDate datetime)
returns varchar(14)
with encryption
begin
  declare
    @CurrentNo varchar(14), @Result varchar(14)

  select @CurrentNo = max(vcIdPurchaseDownPayment)
  from tbACPurchaseDownPayment
  where Year(dtPurchaseDownPaymentDate) = year(@PurchaseDownPaymentDate)
  and Month(dtPurchaseDownPaymentDate) = month(@PurchaseDownPaymentDate)
  
  if IsNull(@CurrentNo, '') <> '' 
    set @Result = Right(@CurrentNo, 4)
  else
    set @Result = '0000'
      
  set @Result = cast(cast(@Result as int) + 1 as varchar)
  set @Result = replicate('0', 4 - len(@Result)) + @Result
  set @Result = 'PD' + '-' + left(convert(varchar, @PurchaseDownPaymentDate, 12), 4) + '-' + @Result;
   
  return(@Result)
end
go


/* Store Procedure : fnGetCurrentIdRRMutation
   Desc		       : 1.Untuk mendapatkan id mutasi receiving record 
   Create          : Ivan */
   
create function fnGetCurrentIdRRMutation (@ReceivingRecordDate datetime)
returns varchar(14)
with encryption
begin
  declare
    @CurrentNo varchar(14), @Result varchar(14)

  select @CurrentNo = max(vcIdReceivingRecord)
  from tbIMReceivingRecordHd
  where Year(dtReceivingRecordDate) = year(@ReceivingRecordDate)
  and Month(dtReceivingRecordDate) = month(@ReceivingRecordDate)
  and vcIdReceivingRecord like 'RRMT%' 
  
  if IsNull(@CurrentNo, '') <> '' 
    set @Result = Right(@CurrentNo, 4)
  else
    set @Result = '0000'
      
  set @Result = cast(cast(@Result as int) + 1 as varchar)
  set @Result = replicate('0', 4 - len(@Result)) + @Result
  set @Result = 'RRMT-' + left(convert(varchar, @ReceivingRecordDate, 12), 4) + '-' + @Result;
   
  return(@Result)
end
go


/* Store Procedure : fnGetCurrentIdRRSalesReturn
   Desc		       : 1.Untuk mendapatkan id mutasi receiving record 
   Create          : Novien */
   
create function fnGetCurrentIdRRSalesReturn (@ReceivingRecordDate datetime)
returns varchar(14)
with encryption
begin
  declare
    @CurrentNo varchar(14), @Result varchar(14)

  select @CurrentNo = max(vcIdReceivingRecord)
  from tbIMReceivingRecordHd
  where Year(dtReceivingRecordDate) = year(@ReceivingRecordDate)
  and Month(dtReceivingRecordDate) = month(@ReceivingRecordDate)
  and vcIdReceivingRecord like 'RRSR%'
  
  if IsNull(@CurrentNo, '') <> '' 
    set @Result = Right(@CurrentNo, 4)
  else
    set @Result = '0000'
      
  set @Result = cast(cast(@Result as int) + 1 as varchar)
  set @Result = replicate('0', 4 - len(@Result)) + @Result
  set @Result = 'RRSR-' + left(convert(varchar, @ReceivingRecordDate, 12), 4) + '-' + @Result;
   
  return(@Result)
end
go


/* Store Procedure : fnGetCurrentIdSalesDownPayment
   Desc		       : 1.Untuk mendapatkan id Sales downpayment
   Create          : Ivan */
   
create function fnGetCurrentIdSalesDownPayment (@SalesDownPaymentDate datetime)
returns varchar(14)
with encryption
begin
  declare
    @CurrentNo varchar(14), @Result varchar(14)

  select @CurrentNo = max(vcIdSalesDownPayment)
  from tbACSalesDownPayment
  where Year(dtSalesDownPaymentDate) = year(@SalesDownPaymentDate)
  and Month(dtSalesDownPaymentDate) = month(@SalesDownPaymentDate)
  
  if IsNull(@CurrentNo, '') <> '' 
    set @Result = Right(@CurrentNo, 4)
  else
    set @Result = '0000'
      
  set @Result = cast(cast(@Result as int) + 1 as varchar)
  set @Result = replicate('0', 4 - len(@Result)) + @Result
  set @Result = 'SD' + '-' + left(convert(varchar, @SalesDownPaymentDate, 12), 4) + '-' + @Result;
   
  return(@Result)
end
go


/* Store Procedure : fnGetCustomerDPOpeningBalance
   Desc		       : 1.Untuk mendapatkan DP opening balance dari customer, sampai dengan tahuin dan bulan  yg ditentukan
   Create          : Ivan */
   
create function fnGetCustomerDPOpeningBalance (@IdCustomer varchar(10), @Year int, @Month int)
returns money
with encryption
begin
  declare
    @OpeningBalance money, @CurrentBalance money
    
  -- Calculate 
  select @OpeningBalance = IsNull(dcOpeningValue, 0)
  from tbACCustomerDownPaymentBalance
  where vcIdCustomer = @IdCustomer
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = dcValue1
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = dcValue2
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = dcValue3
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = dcValue4
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = dcValue5
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = dcValue6
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = dcValue7
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = dcValue8
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = dcValue9
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = dcValue10
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = dcValue11
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = dcValue12
    from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetSupplierDPOpeningBalance
   Desc		       : 1.Untuk mendapatkan DP opening balance dari supplier, sampai dengan bulan dan tahun yg ditentukan
   Create          : Ivan */
   
create function fnGetSupplierDPOpeningBalance (@IdSupplier varchar(10), @Year int, @Month int)
returns money
with encryption
begin
  declare
    @OpeningBalance money, @CurrentBalance money
    
  -- Calculate
  select @OpeningBalance = IsNull(dcOpeningValue, 0)
  from tbACSupplierDownPaymentBalance
  where vcIdSupplier = @IdSupplier
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = dcValue1
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = dcValue2
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = dcValue3
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = dcValue4
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = dcValue5
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = dcValue6
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = dcValue7
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = dcValue8
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = dcValue9
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = dcValue10
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = dcValue11
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = dcValue12
    from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
   
  set @OpeningBalance = IsNull(@OpeningBalance, 0)
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetSuppliesOpeningbalanceQty
   Desc		       : 1.Untuk mendapatkan opening balance dari supplies, warehouse, sampai dengan tgl yg ditentukan
   Create          : Ivan */
   
create function fnGetSuppliesOpeningBalanceQty (@IdSupplies varchar(20), @IdWarehouse varchar(10), @DateEnd datetime)
returns int
with encryption
begin
  declare
    @Year int, @Month int, @DateStart datetime, @OpeningBalance integer, @CurrentBalance integer,
    @MonthStr varchar(2)
    
  set @Year = Year(@DateEnd)
  set @Month = Month(@DateEnd) - 1
  
  -- Seacrh start date
  set @MonthStr = cast((@Month + 1) as varchar)
  if len(cast(@Month + 1 as varchar)) <> 2  
    set @MonthStr = '0' + cast(@Month + 1 as varchar)    
  set @DateStart = cast(@Year as varchar) + @MonthStr + '01'
  
  -- Calculate until date end month - 1
  select @OpeningBalance = IsNull(inOpeningQty, 0)
  from tbIMSuppliesBalance
  where vcIdSupplies = @IdSupplies
  and vcIdWarehouse = @IdWarehouse
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = inQty1
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = inQty2
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = inQty3
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = inQty4
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = inQty5
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = inQty6
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = inQty7
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = inQty8
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = inQty9
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = inQty10
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = inQty11
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = inQty12
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  -- Calculate transaction until date end
  
  -- In
  select @CurrentBalance = IsNull(sum(a.inQty), 0)
  from tbIMTransaction a
  inner join tbIMTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplies = @IdSupplies  
  and a.vcIdWarehouseSource = @IdWarehouse
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '0'  
  set @OpeningBalance = @OpeningBalance + @CurrentBalance
  
  -- Out
  select @CurrentBalance = IsNull(sum(a.inQty), 0)
  from tbIMTransaction a
  inner join tbIMTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplies = @IdSupplies  
  and a.vcIdWarehouseSource = @IdWarehouse
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '1'
  set @OpeningBalance = @OpeningBalance - @CurrentBalance
    
  -- Transfer (send out)  
  select @CurrentBalance = IsNull(sum(a.inQty), 0)
  from tbIMTransaction a
  inner join tbIMTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplies = @IdSupplies  
  and a.vcIdWarehouseSource = @IdWarehouse
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '2'
  set @OpeningBalance = @OpeningBalance - @CurrentBalance

  -- Transfer (receiving)
  select @CurrentBalance = IsNull(sum(a.inQty), 0)
  from tbIMTransaction a
  inner join tbIMTransactionType b 
    on a.vcIdTransactionType = b.vcIdTransactionType
  where a.vcIdSupplies = @IdSupplies  
  and a.vcIdWarehouseDest = @IdWarehouse
  and a.dtDateTransaction between @DateStart and (@DateEnd - 1)
  and chStatusTransaction = '2'
  set @OpeningBalance = @OpeningBalance + @CurrentBalance
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)  
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetSuppliesOpeningBalanceValue
   Desc		       : Untuk mendapatkan opening balance value dari supplies, warehouse, sampai dengan tgl yg ditentukan
   Create          : Ivan */
   
create function fnGetSuppliesOpeningBalanceValue (@IdSupplies varchar(20), @IdWarehouse varchar(10), @DateEnd datetime)
returns money
with encryption
begin
  declare
    @Year int, @Month int, @DateStart datetime, @OpeningBalance money, @CurrentBalance money,
    @MonthStr varchar(2)
    
  set @Year = Year(@DateEnd)
  set @Month = Month(@DateEnd) - 1
  
  -- Seacrh start date
  set @MonthStr = cast((@Month + 1) as varchar)
  if len(cast(@Month + 1 as varchar)) <> 2  
    set @MonthStr = '0' + cast(@Month + 1 as varchar)    
  set @DateStart = cast(@Year as varchar) + @MonthStr + '01'
  
  -- Calculate until date end month - 1
  select @OpeningBalance = IsNull(dcOpeningValue, 0)
  from tbIMSuppliesBalance
  where vcIdSupplies = @IdSupplies
  and vcIdWarehouse = @IdWarehouse
  and vcYear = @Year
   
  if @Month >= 1
  begin
    select @CurrentBalance = dcValue1
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 2
  begin
    select @CurrentBalance = dcValue2
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 3
  begin
    select @CurrentBalance = dcValue3
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 4
  begin
    select @CurrentBalance = dcValue4
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 5
  begin
    select @CurrentBalance = dcValue5
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 6
  begin
    select @CurrentBalance = dcValue6
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 7
  begin
    select @CurrentBalance = dcValue7
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 8
  begin
    select @CurrentBalance = dcValue8
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 9
  begin
    select @CurrentBalance = dcValue9
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 10
  begin
    select @CurrentBalance = dcValue10
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 11
  begin
    select @CurrentBalance = dcValue11
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year         
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  if @Month >= 12
  begin
    select @CurrentBalance = dcValue12
    from tbIMSuppliesBalance
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse
    and vcYear = @Year        
    set @OpeningBalance = @OpeningBalance + IsNull(@CurrentBalance, 0)
  end
  
  -- Calculate transaction until date end from transaction costing
  select @CurrentBalance = IsNull(sum(dcAmount), 0)
  from tbIMTransactionCosting 
  where vcIdSupplies = @IdSupplies  
  and vcIdWarehouse = @IdWarehouse
  and dtTransactionCostingDate between @DateStart and (@DateEnd - 1)
  set @OpeningBalance = @OpeningBalance + @CurrentBalance
  
  set @OpeningBalance = IsNull(@OpeningBalance, 0)  
  return(@OpeningBalance)
end
go


/* Store Procedure : fnGetSuppliesTotalEndQty
   Desc		       : 1.Untuk mendapatkan total EndQty dari seluruh warehouse 
   Create          : Ivan */
   
create function fnGetSuppliesTotalEndQty (@IdSupplies varchar(20))
returns int
with encryption
begin
  declare @Result int
  
  select @Result = sum(IsNull(inEndQty, 0))
  from tbIMStockOnhandHd
  where vcIdSupplies = @IdSupplies
  
  return(@Result)
end
go


/* Store Procedure : fnGetSuppliesTotalEndQty
   Desc		       : 1.Untuk mendapatkan total EndQtyReady dari seluruh warehouse 
   Create          : Ivan */
   
create function fnGetSuppliesTotalEndQtyReady (@IdSupplies varchar(20))
returns int
with encryption
begin
  declare @Result int
  
  select @Result = sum(IsNull(inEndQtyReady, 0))
  from tbIMStockOnhandHd
  where vcIdSupplies = @IdSupplies
  
  return(@Result)
end
go


/* Store Procedure : fnGetSuppliesTotalEndQty
   Desc		       : 1.Untuk mendapatkan total EndQty dari seluruh warehouse 
   Create          : Ivan */
   
create function fnGetSuppliesTotalEndValue (@IdSupplies varchar(20))
returns money
with encryption
begin
  declare @Result money
  
  select @Result = sum(IsNull(dcEndValue, 0))
  from tbIMStockOnhandHd
  where vcIdSupplies = @IdSupplies
  
  return(@Result)
end
go


/* Store Procedure : spAssemblyTransactionValidation 
   Desc            : Procedure untuk
                       Approval 1 -> 2 (OUT PROCESS) 
                         1.Insert assembly supplies in tbIMTransaction, with transaction type 'TY005'
                         2.Insert supplies in tbIMTransaction, with transaction type 'TY005'
                       Approval 2 -> 3 (IN PROCESS)
                         3.Insert supplies in tbIMTransaction, with transaction type 'TY004'
                         4.Insert assembly supplies in tbIMTransaction, with transaction type 'TY004'
                         5.Update Assembly Transaction header status = done
   ALTER           : Novien */
create procedure spAssemblyTransactionValidation 
  @IdAssemblyTransaction varchar(12)
-- with encryption  
as

declare
  -- AssemblyTransactionHd
  @TransactionName varchar(50), @IdWarehouse varchar(10), @AssemblyTransactionDate datetime, 
  @StatusApprove char(1), @AssemblyTransactionType char(1), @CoupleCost money,
  -- AssemblyTransactionDt 
  @IdAssemblySupplies varchar(20), @AssemblyQty integer, @AssemblyPrice money, 
  -- AssemblyTransactionSupplies
  @IdSupplies varchar(20), @Qty integer, @Price money, 
  -- Others
  @StatusDone char, @TransactionAssemblyIn varchar(5), @TransactionAssemblyOut varchar(5),
  @COGSPrice money, @CurrentQty integer, @CurrentDate datetime, @QtyLeft integer, 
  @StockType varchar(10), @QtySave integer, @CurrentQtyAssembly integer, @AvgCoupleCost money,
  @CurrentIdAssembly varchar(20), @CurrentPrice money, @PriceSave money, @TotalQty integer,
  @Description varchar(100), @Error int
  
begin
  -- Check Parameter First
  if @IdAssemblyTransaction is null
    return 99
    
  -- Get AssemblyTransactionHd Information
  select
    @AssemblyTransactionDate = dtAssemblyTransactionDate,
    @IdWarehouse = vcIdWarehouse,
    @AssemblyTransactionType = chAssemblyTransactionType,
    @CoupleCost = dcCoupleCost,
    @StatusApprove = chStatusApprove
  from tbIMAssemblyTransactionHd
  where vcIdAssemblyTransaction = @IdAssemblyTransaction

  -- get info about stock type (FIFO / LIFO / AVG) 
  select @StockType = vcValue
  from TbGNSetup
  where vcIdProgram = 'NOVA_IM'
  and vcIdSetup = 'STOCK'
  
  -- Set Transaction Type
  set @TransactionAssemblyIn  = 'TY005'
  set @TransactionAssemblyOut = 'TY004'
  
  -- Set Status Done Value
  set @StatusDone = '6'

  set @CurrentPrice = 0
  
  set @Error = 0  
  begin transaction
  
  -- OUT PROCESS
  if @StatusApprove = 1
  begin
    -- UnCouple Process  
    if @AssemblyTransactionType = 0 
    begin 
      set @Description = 'Supplies Out for Uncouple in ' + @IdWarehouse
      
      -- Create cursor for AssemblyTransactionDt
      declare currAssemblyTransactionDt cursor for
        select vcIdAssemblySupplies, inQty
        from tbIMAssemblyTransactionDt
        where vcIdAssemblyTransaction = @IdAssemblyTransaction
      open currAssemblyTransactionDt
      fetch next from currAssemblyTransactionDt
      into @IdAssemblySupplies, @AssemblyQty

      while @@Fetch_Status = 0
      begin
        if (@StockType = 'FIFO') or (@StockType = 'AVG')
        begin
          -- Get Assembly Uncouple COGS Price
          declare currStockOnHandDt cursor for
            select dcPrice, inQty, dtDate 
            from tbIMStockOnHandDt
            where vcIdSupplies = @IdAssemblySupplies
            and vcIdWarehouse = @IdWarehouse 
            order by dtDate asc, dcPrice
        end
        
        if (@StockType = 'LIFO')
        begin
          -- Get Assembly Uncouple COGS Price
          declare currStockOnHandDt cursor for
            select dcPrice, inQty, dtDate 
            from tbIMStockOnHandDt
            where vcIdSupplies = @IdAssemblySupplies
            and vcIdWarehouse = @IdWarehouse 
            order by dtDate desc, dcPrice
        end
        
        open currStockOnHandDt
        fetch next from currStockOnHandDt
        into @COGSPrice, @CurrentQty, @CurrentDate

        set @QtyLeft = @AssemblyQty
        while @@Fetch_Status = 0
        begin
          if @CurrentQty < = @QtyLeft
          begin
            set @QtySave = @CurrentQty
            set @QtyLeft = @QtyLeft - @QtySave
          end
          else
          begin
            set @QtySave = @QtyLeft
            set @QtyLeft = 0
          end
        
          if (@QtySave <> 0)
            --1.Insert assembly supplies in tbIMTransaction, with transaction type 'TY004'
            insert into tbIMTransaction
              (vcIdReference, dtDateTransaction, vcIdTransactionType,
               vcIdSupplies, vcIdWarehouseSource, vcIdWarehouseDest,
               inQty, dcPrice, vcDescription, dtSystemStamp)
            values
              (@IdAssemblyTransaction, @AssemblyTransactionDate, @TransactionAssemblyOut,
               @IdAssemblySupplies, @IdWarehouse, null, 
               @QtySave, @COGSPrice, @Description, GetDate())
            if @@Error <> 0
             set @Error = 1
          
          fetch next from currStockOnHandDt
          into @COGSPrice, @CurrentQty, @CurrentDate       
        end
        close currStockOnHandDt
        deallocate currStockOnHandDt

        fetch next from currAssemblyTransactionDt
        into @IdAssemblySupplies, @AssemblyQty     
      end
      close currAssemblyTransactionDt  
      deallocate currAssemblyTransactionDt
    end
    -- Couple Process
    else 
    begin
      set @Description = 'Supplies Out for Couple in ' + @IdWarehouse

      -- Create Cursor for AssemblyTransactionDt
      declare currAssemblyTransactionDt cursor for
        select vcIdAssemblySupplies, inQty
        from tbIMAssemblyTransactionDt
        where vcIdAssemblyTransaction = @IdAssemblyTransaction
      open currAssemblyTransactionDt
      fetch next from currAssemblyTransactionDt
      into @IdAssemblySupplies, @AssemblyQty

      while @@Fetch_Status = 0
      begin
        -- Create Cursor for AssemblyTransactionSupplies 
        declare currAssemblyTransactionSupplies cursor for
          select vcIdSupplies, inQty, dcPrice
          from tbIMAssemblyTransactionSupplies
          --group by vcIdSupplies, vcIdAssemblyTransaction, dcPrice
          where vcIdAssemblyTransaction = @IdAssemblyTransaction
          and vcIdAssemblySupplies = @IdAssemblySupplies
        open currAssemblyTransactionSupplies
        fetch next from currAssemblyTransactionSupplies
        into @IdSupplies, @Qty, @Price
      
        while @@Fetch_Status = 0
        begin
          if (@StockType = 'FIFO') or (@StockType = 'AVG')
          begin
            -- Get Assembly Uncouple COGS Price
            declare currStockOnHandDt cursor for
              select dcPrice, inQty, dtDate 
              from tbIMStockOnHandDt
              where vcIdSupplies = @IdSupplies
              and vcIdWarehouse = @IdWarehouse 
              order by dtDate asc, dcPrice
          end
        
          if (@StockType = 'LIFO')
          begin
            -- Get Assembly Uncouple COGS Price
            declare currStockOnHandDt cursor for
              select dcPrice, inQty, dtDate 
              from tbIMStockOnHandDt
              where vcIdSupplies = @IdSupplies
              and vcIdWarehouse = @IdWarehouse 
              order by dtDate desc, dcPrice
          end
        
          open currStockOnHandDt
          fetch next from currStockOnHandDt
          into @COGSPrice, @CurrentQty, @CurrentDate

          set @QtyLeft = @Qty

          while @@Fetch_Status = 0
          begin
            if @CurrentQty < = @QtyLeft
            begin
              set @QtySave = @CurrentQty
              set @QtyLeft = @QtyLeft - @QtySave
            end
            else
            begin
              set @QtySave = @QtyLeft
              set @QtyLeft = 0
            end

            -- Set Average Price
            set @CurrentPrice = @CurrentPrice + (@QtySave * @COGSPrice)
      
            fetch next from currStockOnHandDt
            into @COGSPrice, @CurrentQty, @CurrentDate       
          end
          
          set @PriceSave = @CurrentPrice / @Qty
        
          --2.Insert supplies in tbIMTransaction, with transaction type 'TY004'
          insert into tbIMTransaction
            (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdParent,
             vcIdSupplies, vcIdWarehouseSource, vcIdWarehouseDest,
             inQty, dcPrice, vcDescription, dtSystemStamp)
          values
            (@IdAssemblyTransaction, @AssemblyTransactionDate, @TransactionAssemblyOut, @IdAssemblySupplies,
             @IdSupplies, @IdWarehouse, null, 
             @Qty, @PriceSave, @Description, GetDate())
          if @@Error <> 0
           set @Error = 1

          set @CurrentPrice = 0
          
          close currStockOnHandDt
          deallocate currStockOnHandDt

          fetch next from currAssemblyTransactionSupplies
          into @IdSupplies, @Qty, @Price 
        end

        close currAssemblyTransactionSupplies  
        deallocate currAssemblyTransactionSupplies

        fetch next from currAssemblyTransactionDt
        into @IdAssemblySupplies, @AssemblyQty
      end
      close currAssemblyTransactionDt
      deallocate currAssemblyTransactionDt
    end  
  end
  -- IN PROCESS (+)
  if @StatusApprove = 2
  begin
    -- UnCouple Process
    if @AssemblyTransactionType = 0 
    begin 
      set @Description = 'Supplies in for Uncouple in ' + @IdWarehouse

      -- Create Cursor for Transaction --> Assembly
      declare currTransaction cursor for
        select vcIdSupplies, inQty, dcPrice
        from tbIMTransaction
        where vcIdReference = @IdAssemblyTransaction
        order by vcIdSupplies
      open currTransaction
      fetch next from currTransaction
      into @CurrentIdAssembly, @Qty, @Price
      
      while @@Fetch_Status = 0
      begin
        -- Create Cursor for Detail Assembly
        declare currAssemblyDetail cursor for
          select vcIdSupplies
          from tbIMAssemblyDt
          where vcIdAssemblySupplies = @CurrentIdAssembly
          order by vcIdSupplies
        open currAssemblyDetail
        fetch next from currAssemblyDetail
        into @IdSupplies

        while @@Fetch_Status = 0
        begin
          -- Get Max Price of Assembly Supplies Detail
          select @COGSPRICE = max(dcPrice)
          from tbIMStockOnHandDt
          where vcIdSupplies = @IdSupplies
          and inQty <> 0

          --3.Insert supplies in tbIMTransaction, with transaction type 'TY005'
          insert into tbIMTransaction
            (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdParent,
             vcIdSupplies, vcIdWarehouseSource, vcIdWarehouseDest,
             inQty, dcPrice, vcDescription, dtSystemStamp)
          values
            (@IdAssemblyTransaction, @AssemblyTransactionDate, @TransactionAssemblyIn, @IdAssemblySupplies,
             @IdSupplies, @IdWarehouse, null, 
             @Qty, @COGSPrice, @Description, GetDate())
          if @@Error <> 0
           set @Error = 1
          
          fetch next from currAssemblyDetail
          into @IdSupplies
        end
        close currAssemblyDetail
        deallocate currAssemblyDetail        

        fetch next from currTransaction
        into @CurrentIdAssembly, @Qty, @Price
      end
      close currTransaction
      deallocate currTransaction

    end
    -- Couple Process
    else 
    begin
      set @Description = 'Supplies in for Couple in ' + @IdWarehouse

      -- Sum Total Couple Order Qty
      select @TotalQty = sum(inQty) from tbIMAssemblyTransactionDt
      where vcIdAssemblyTransaction = @IdAssemblyTransaction
      
      -- Set Average Couple Cost
      set @AvgCoupleCost = @CoupleCost / @TotalQty
      
      -- Create cursor for AssemblyTransactionDt
      declare currAssemblyTransactionDt cursor for
        select vcIdAssemblySupplies, inQty
        from tbIMAssemblyTransactionDt
        where vcIdAssemblyTransaction = @IdAssemblyTransaction
      open currAssemblyTransactionDt
      fetch next from currAssemblyTransactionDt
      into @IdAssemblySupplies, @AssemblyQty
      
      while @@Fetch_Status = 0
      begin
        set @CurrentPrice = 0
        -- Create cursor for Transaction
        declare currTransaction cursor for
          select vcIdSupplies, inQty, dcPrice
          from tbIMTransaction
          where vcIdReference = @IdAssemblyTransaction
          and vcIdParent = @IdAssemblySupplies
        open currTransaction
        fetch next from currTransaction
        into @IdSupplies, @QTy, @Price
        
        while @@Fetch_Status = 0
        begin
          -- Set Assembly Price
          set @CurrentPrice = @CurrentPrice + @Price
          
          fetch next from currTransaction
          into @IdSupplies, @Qty, @Price
        end
        
        close currTransaction
        deallocate currTransaction

        -- Set New Assembly Price include with Couple Cost
        set @AssemblyPrice = @CurrentPrice + @AvgCoupleCost
       
        --4.Insert assembly supplies in tbIMTransaction, with transaction type 'TY005'
        insert into tbIMTransaction
          (vcIdReference, dtDateTransaction, vcIdTransactionType,
           vcIdSupplies, vcIdWarehouseSource, vcIdWarehouseDest,
           inQty, dcPrice, vcDescription, dtSystemStamp)
        values
          (@IdAssemblyTransaction, @AssemblyTransactionDate, @TransactionAssemblyIn,
           @IdAssemblySupplies, @IdWarehouse, null, 
           @AssemblyQty, @AssemblyPrice, @Description, GetDate())
        if @@Error <> 0
         set @Error = 1 
      
        fetch next from currAssemblyTransactionDt
        into @IdAssemblySupplies, @AssemblyQty
      end
      
      close currAssemblyTransactionDt
      deallocate currAssemblyTransactionDt
  end  
  
  --5.Update Assembly Transaction header status = done
  update tbIMAssemblyTransactionHd
  set chStatusApprove = @StatusDone
  where vcIdAssemblyTransaction = @IdAssemblyTransaction 
  if @@Error <> 0
    set @Error = 1  
 end

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


/* Store Procedure : spMutationValidation
   Desc            : Procedure untuk
                       Approval 1 -> 2 :
                         1.Create DO Header (for warehouse source)
                         2.Create RR Header (for warehouse destination)
                         3.Update Mutation header DO & RR reference
                         4.Create DO Detail
                         5.Create RR Detail
                         6.Insert supples in tbIMTransaction, with transaction type 'TY006'                         
                       Approval 2 -> 3 :
                         1.Insert supples in tbIMTransaction, with transaction type 'TY007'
                         2.update receiving record status use by this mutation to done
                         3.Update mutation header status = done
   Create          : Ivan */
   
create procedure spMutationValidation 
  @IdMutation varchar(12), @Approval integer
with encryption
as

declare   
  -- MutationHd
  @MutationDate datetime, @EmployeeName varchar(40), 
  @IdWarehouseSource varchar(10), @IdWarehouseDest varchar(10), 
  @DeliveryOrderAddress varchar(500), @DeliveryOrderNotes varchar(550), 
  -- MutationDt
  @IdSupplies varchar(20), @Qty integer, 
  -- Others
  @StatusDone char, @TransactionMutationOut varchar(5), @TransactionMutationIn varchar(5),
  @WarehouseNameSource varchar(40), @WarehouseNameDest varchar(40), 
  @IdDeliveryOrder varchar(14), @DeliveryScheduleDate datetime, 
  @IdReceivingRecord varchar(14), @ReceivingRecordDate datetime, @ReceivingRecordNotes varchar(550), 
  @Price money, @Description varchar(100), @No int, @Error int

begin
  
  -- Check Parameter First
  if @IdMutation is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
  
  -- Set Transaction Type
  set @TransactionMutationOut = 'TY006'
  set @TransactionMutationIn = 'TY007'
   
  set @Error = 0  
  begin transaction

  -- Get mutation header information
  select
    @MutationDate = dtMutationDate,
    @EmployeeName = vcEmployeeName,
    @IdWarehouseSource = vcIdWarehouseSource,
    @IdWarehouseDest = vcIdWarehouseDest,
    @IdReceivingRecord = vcIdRefRR,
    @IdDeliveryOrder = vcIdRefDO,    
    @DeliveryOrderAddress = vcDeliveryOrderAddress,
    @DeliveryOrderNotes = vcDeliveryOrderNotes
  from tbIMMutationHd
  where vcIdMutation = @IdMutation 
    
  -- Get warehouse source
  select @WarehouseNameSource = vcWarehouseName
  from tbGNWarehouse
  where vcIdWarehouse = @IdWarehouseSource
    
  -- Get warehouse dest
  select @WarehouseNameDest = vcWarehouseName
  from tbGNWarehouse
  where vcIdWarehouse = @IdWarehouseDest
        
  -- Process approval 1->2
  if @Approval = 2
  begin
    -- 1.Create DO Header (for warehouse source)
    set @DeliveryScheduleDate = getdate()
    set @DeliveryOrderNotes = 'Date: ' + convert(varchar, @DeliveryScheduleDate, 105) + ' - Notes from mutasi' + char(13) + char(10) + 
      'Proses Mutasi ke Gudang ' + @WarehouseNameDest + char(13) + char(10) + @DeliveryOrderNotes + char(13) + char(10) + char(13) + char(10)
    set @IdDeliveryOrder = dbo.fnGetCurrentIdDeliveryOrder(@DeliveryScheduleDate, @IdWarehouseSource)  
    
    insert into tbIMDeliveryOrderHd
      (vcIdDeliveryOrder, dtDeliveryOrderDate, dtActualDeliveryDate, vcCustomerName, vcIdWarehouse, 
      txAddress, txNotes, vcEmployeeName, chStatusApprove, chFlagPending, chFlagMutasi, dtSystemStamp)
    values 
      (@IdDeliveryOrder, @DeliveryScheduleDate, @DeliveryScheduleDate, @WarehouseNameDest, @IdWarehouseSource, 
      @DeliveryOrderAddress, @DeliveryOrderNotes, @EmployeeName, 0, 0, 1, GetDate())    
    if @@Error <> 0
      set @Error = 1
    
    -- 2.Create RR Header (for warehouse destination)
    set @ReceivingRecordDate = getdate()
    set @ReceivingRecordNotes = 'Date: ' + convert(varchar, @ReceivingRecordDate, 105) + ' - Notes from mutasi' + char(13) + char(10) +
      'Proses Mutasi dari Gudang ' + @WarehouseNameSource + char(13) + char(10) + char(13) + char(10)
    set @IdReceivingRecord = dbo.fnGetCurrentIdRRMutation(@ReceivingRecordDate)  
    
    insert into tbIMReceivingRecordHd
      (vcIdReceivingRecord, dtReceivingRecordDate, vcSupplierName, vcIdWarehouse, 
      txNotes, vcEmployeeName, chStatusApprove, chFlagMutation, dtSystemStamp)
    values 
      (@IdReceivingRecord, @ReceivingRecordDate, @WarehouseNameSource, @IdWarehouseDest, 
      @ReceivingRecordNotes, @EmployeeName, 0, 1, GetDate())    
    if @@Error <> 0
      set @Error = 1
    
    --3.Update Mutation header DO & RR reference
    update tbIMMutationHd
    set 
      vcIdRefRR = @IdReceivingRecord,
      vcIdRefDO = @IdDeliveryOrder
    where vcIdMutation = @IdMutation
    if @@Error <> 0
      set @Error = 1
      
    -- Process detail
    set @Description = 'Mutasi ke Gudang ' + @WarehouseNameDest
    declare currMutationDt cursor for
      select inNo, vcIdSupplies, inQty
      from tbIMMutationDt
      where vcIdMutation = @IdMutation
      order by inNo
    open currMutationDt
    fetch next from currMutationDt 
    into @No, @IdSupplies, @Qty
    
    while @@Fetch_status = 0
    begin
      -- 4.Create DO Detail
      insert into tbIMDeliveryOrderDt
        (vcIdDeliveryOrder, inNo, vcIdSupplies, inQty, dtSystemStamp)
      values
        (@IdDeliveryOrder, @No, @IdSupplies, @Qty, getdate())
      if @@Error <> 0
        set @Error = 1
            
      -- 5.Create DO Detail
      insert into tbIMReceivingRecordDt
        (vcIdReceivingRecord, inNo, vcIdSupplies, inQty, dtSystemStamp)
      values
        (@IdReceivingRecord, @No, @IdSupplies, @Qty, getdate())
      if @@Error <> 0
        set @Error = 1
      
      -- 6.Insert supples in tbIMTransaction, with transaction type 'TY006'
      insert into tbIMTransaction
        (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, 
        vcIdWarehouseSource, vcIdWarehouseDest, inQty, dcPrice, vcDescription, dtSystemStamp)
      values 
        (@IdMutation, @MutationDate, @TransactionMutationOut, @IdSupplies, 
        @IdWarehouseSource, null, @Qty, 0, @Description, getdate())
      if @@Error <> 0
        set @Error = 1
      
      --next record
      fetch next from currMutationDt
      into @No, @IdSupplies, @Qty
    end
      
    close currMutationDt
    deallocate currMutationDt
  end
  
  -- Process approval 2->3
  if @Approval = 3
  begin
    -- Process detail
    set @Description = 'Mutasi dari Gudang ' + @WarehouseNameSource
    declare currMutationPrice cursor for
      select vcIdSupplies, inQty, dcPrice
      from tbIMMutationPrice
      where vcIdMutation = @IdMutation
      order by dtDate, dcPrice
    open currMutationPrice
    fetch next from currMutationPrice
    into @IdSupplies, @Qty, @Price
    
    while @@Fetch_status = 0
    begin
      -- 1.Insert supples in tbIMTransaction, with transaction type 'TY007'
      insert into tbIMTransaction
        (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, 
        vcIdWarehouseSource, vcIdWarehouseDest, inQty, dcPrice, vcDescription, dtSystemStamp)
      values 
        (@IdMutation, @MutationDate, @TransactionMutationIn, @IdSupplies, 
        @IdWarehouseDest, null, @Qty, @Price, @Description, getdate())
      if @@Error <> 0
        set @Error = 1
      
      --next record
      fetch next from currMutationPrice
      into @IdSupplies, @Qty, @Price
    end
      
    close currMutationPrice
    deallocate currMutationPrice
    
    -- 2.update receiving record status use by this mutation to done                         
    update tbIMReceivingRecordHd
    set chStatusApprove = @StatusDone
    where vcIdReceivingRecord = @IdReceivingRecord
    if @@Error <> 0
      set @Error = 1

    --3.Update mutation header status = done
    update tbIMMutationHd
    set chStatusApprove = @StatusDone
    where vcIdMutation = @IdMutation    
    if @@Error <> 0
      set @Error = 1
end

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


/* Store Procedure : spOtherTransactionValidation 
   Desc            : Procedure untuk
                     1.Insert tbIMTransaction
                     2.Update OT approval to '6'

   ALTER           : Novien */
   
create procedure spOtherTransactionValidation
  @IdOtherTransaction varchar(12)
with encryption  
as

declare
  -- OtherTransactionHd
  @TransactionName varchar(50), @IdWarehouseSource varchar(10), @IdWarehouseDestination varchar(10), 
  @OtherTransactionDate datetime, @IdTransactionType varchar(10), 
  -- OtherTransactionDt 
  @IdSupplies varchar(20), @Qty integer, @Price money, 
  -- Others
  @StatusDone char, @Description varchar(100), @Error int

begin  
  -- Check Parameter First
  if @IdOtherTransaction is null
    return 99
   
  -- Set status done value
  set @StatusDone = '6'  
  
  -- Get OtherTransactionHd Information
  select
    @OtherTransactionDate = a.dtOtherTransactionDate,
    @IdTransactionType = a.vcIdTransactionType,
    @TransactionName = b.vcTransactionName,
    @IdWarehouseSource = a.vcIdWarehouseSource,
    @IdWarehouseDestination = a.vcIdWarehouseDest
  from tbIMOtherTransactionHd a 
  inner join tbIMTransactionType b
  on a.vcIdTransactionType = b.vcIdTransactionType
  where vcIdOtherTransaction = @IdOtherTransaction  
  
  -- Prepare Description
  if @IdWarehouseDestination <> ''
    set @Description = @TransactionName + ' from ' + @IdWarehouseSource + ' to ' + @IdWarehouseDestination
  else
    set @Description = @TransactionName + ' from ' + @IdWarehouseSource
  
  -- Create cursor
  declare currOtherTransactionDt cursor for
    select vcIdSupplies, inQty, dcPrice
    from tbIMOtherTransactionDt
    where vcIdOtherTransaction = @IdOtherTransaction
  open currOtherTransactionDt
  fetch next from currOtherTransactionDt
  into @IdSupplies, @Qty, @Price

  set @Error = 0
  begin transaction

  while @@Fetch_Status = 0
  begin
    -- 1.Insert tbIMTransaction
    insert into tbIMTransaction
      (vcIdReference, dtDateTransaction, vcIdTransactionType,
      vcIdSupplies, vcIdWarehouseSource, vcIdWarehouseDest,
      inQty, dcPrice, vcDescription, dtSystemStamp)
    values
      (@IdOtherTransaction, @OtherTransactionDate, @IdTransactionType,
       @IdSupplies, @IdWarehouseSource, @IdWarehouseDestination,
       @Qty, @Price, @Description, GetDate())
    if @@Error <> 0
      set @Error = 1      
    
    fetch next from currOtherTransactionDt 
    into @IdSupplies, @Qty, @Price      
  end

  close currOtherTransactionDt  
  deallocate currOtherTransactionDt
    
  -- 2.Update OT approval to '6'
  update tbIMOtherTransactionHd
  set chStatusApprove = @StatusDone
  where vcIdOtherTransaction = @IdOtherTransaction
  if @@Error <> 0
    set @Error = 1
    
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


/* Store Procedure : spProcessClosingYear 
   Desc            : 1. Closing tbIMSuppliesBalance
                     2. Closing tbACSupplierDownPaymentBalance
                     3. Closing tbACCustomerDownPaymentBalance
                     4. Closing tbACAccountPayableBalance
                     5. Closing tbACAccountReceivableBalance
   Create          : Ivan */
   
create procedure spProcessClosingYear 
  @Year int
with encryption  
as

declare
  @IdSupplies varchar(20), @IdWarehouse varchar(10), @IdSupplier varchar(10), @IdCustomer varchar(10),  
  @LastBalanceQty int, @LastBalanceValue money, @OpeningQty int, @OpeningValue money, 
  @Qty1 int, @Qty2 int, @Qty3 int, @Qty4 int, @Qty5 int, @Qty6 int, 
  @Qty7 int, @Qty8 int, @Qty9 int, @Qty10 int, @Qty11 int, @Qty12 int,   
  @Value1 money, @Value2 money, @Value3 money, @Value4 money, @Value5 money, @Value6 money, 
  @Value7 money, @Value8 money, @Value9 money, @Value10 money, @Value11 money, @Value12 money,
  @NextYear varchar(4), @Error int

begin  
  -- Check Parameter First
  if @Year is null
    return 99
  
  -- Initial
  set @NextYear = cast(cast(@Year as int) + 1 as varchar(4))
     
  set @Error = 0  
  begin transaction
   
  -- 1. Closing tbIMSuppliesBalance
  declare CurrentBalance cursor for
    select vcIdSupplies, vcIdWarehouse, inOpeningQty, dcOpeningValue, 
      inQty1, inQty2, inQty3, inQty4, inQty5, inQty6, inQty7, inQty8, inQty9, inQty10, inQty11, inQty12,   
      dcValue1, dcValue2, dcValue3, dcValue4, dcValue5, dcValue6, dcValue7, dcValue8, dcValue9, dcValue10, 
      dcValue11, dcValue12
    from tbIMSuppliesBalance
    where vcYear = @Year
    
  open CurrentBalance
  fetch next from CurrentBalance into @IdSupplies, @IdWarehouse, @OpeningQty, @OpeningValue,
    @Qty1, @Qty2, @Qty3, @Qty4, @Qty5, @Qty6, @Qty7, @Qty8, @Qty9, @Qty10, @Qty11, @Qty12,   
    @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, @Value7, @Value8, @Value9, @Value10, 
    @Value11, @Value12
  
  while @@Fetch_Status = 0
  begin
    set @LastBalanceQty =  @OpeningQty + @Qty1 + @Qty2 + @Qty3 + @Qty4 + @Qty5 + @Qty6 + @Qty7 + @Qty8 + @Qty9 + @Qty10 + @Qty11 + @Qty12
    set @LastBalanceValue = @OpeningValue + @Value1 + @Value2 + @Value3 + @Value4 + @Value5 + @Value6 + @Value7 + @Value8 + @Value9 + @Value10 + @Value11 + @Value12
    
    update tbIMSuppliesBalance
    set inOpeningQty = @LastBalanceQty, 
        dcOpeningValue = @LastBalanceValue
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouse 
    and vcYear = @NextYear
    if @@RowCount = 0
    begin
      insert into tbIMSuppliesBalance (vcIdSupplies, vcIdWarehouse, vcYear, inOpeningQty, dcOpeningValue)
      values (@IdSupplies, @IdWarehouse, @NextYear, @LastBalanceQty, @LastBalanceValue)
    end
    if @@Error <> 0
      set @Error = 1
    
    -- Next
    fetch next from CurrentBalance into @IdSupplies, @IdWarehouse, @OpeningQty, @OpeningValue,
      @Qty1, @Qty2, @Qty3, @Qty4, @Qty5, @Qty6, @Qty7, @Qty8, @Qty9, @Qty10, @Qty11, @Qty12,   
      @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, @Value7, @Value8, @Value9, @Value10, 
      @Value11, @Value12
  end  
  
  close CurrentBalance
  deallocate CurrentBalance
    
  -- 2. Closing tbACSupplierDownPaymentBalance
  declare CurrentBalance cursor for
    select vcIdSupplier, dcOpeningValue, dcValue1, dcValue2, dcValue3, dcValue4, dcValue5, 
      dcValue6, dcValue7, dcValue8, dcValue9, dcValue10, dcValue11, dcValue12
    from tbACSupplierDownPaymentBalance
    where vcYear = @Year
    
  open CurrentBalance
  fetch next from CurrentBalance into 
    @IdSupplier, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
    @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  
  while @@Fetch_Status = 0
  begin
    set @LastBalanceValue = @OpeningValue + @Value1 + @Value2 + @Value3 + @Value4 + @Value5 + @Value6 + @Value7 + @Value8 + @Value9 + @Value10 + @Value11 + @Value12
    
    update tbACSupplierDownPaymentBalance
    set dcOpeningValue = @LastBalanceValue
    where vcIdSupplier = @IdSupplier
    and vcYear = @NextYear
    if @@RowCount = 0
    begin
      insert into tbACSupplierDownPaymentBalance (vcIdSupplier, vcYear, dcOpeningValue)
      values (@IdSupplier, @NextYear, @LastBalanceValue)
    end
    if @@Error <> 0
      set @Error = 1
    
    -- Next
    fetch next from CurrentBalance into 
      @IdSupplier, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
      @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  end  
  
  close CurrentBalance
  deallocate CurrentBalance
        
  -- 3. Closing tbACCustomerDownPaymentBalance
  declare CurrentBalance cursor for
    select vcIdCustomer, dcOpeningValue, dcValue1, dcValue2, dcValue3, dcValue4, dcValue5, 
      dcValue6, dcValue7, dcValue8, dcValue9, dcValue10, dcValue11, dcValue12
    from tbACCustomerDownPaymentBalance
    where vcYear = @Year
    
  open CurrentBalance
  fetch next from CurrentBalance into 
    @IdCustomer, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
    @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  
  while @@Fetch_Status = 0
  begin
    set @LastBalanceValue = @OpeningValue + @Value1 + @Value2 + @Value3 + @Value4 + @Value5 + @Value6 + @Value7 + @Value8 + @Value9 + @Value10 + @Value11 + @Value12
    
    update tbACCustomerDownPaymentBalance
    set dcOpeningValue = @LastBalanceValue
    where vcIdCustomer = @IdCustomer
    and vcYear = @NextYear
    if @@RowCount = 0
    begin
      insert into tbACCustomerDownPaymentBalance (vcIdCustomer, vcYear, dcOpeningValue)
      values (@IdCustomer, @NextYear, @LastBalanceValue)
    end
    if @@Error <> 0
      set @Error = 1
    
    -- Next
    fetch next from CurrentBalance into 
      @IdCustomer, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
      @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  end  
  
  close CurrentBalance
  deallocate CurrentBalance
    
  -- 4. Closing tbACAccountPayableBalance
  declare CurrentBalance cursor for
    select vcIdSupplier, dcOpeningValue, dcValue1, dcValue2, dcValue3, dcValue4, dcValue5, 
      dcValue6, dcValue7, dcValue8, dcValue9, dcValue10, dcValue11, dcValue12
    from tbACAccountPayableBalance
    where vcYear = @Year
    
  open CurrentBalance
  fetch next from CurrentBalance into 
    @IdSupplier, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
    @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  
  while @@Fetch_Status = 0
  begin
    set @LastBalanceValue = @OpeningValue + @Value1 + @Value2 + @Value3 + @Value4 + @Value5 + @Value6 + @Value7 + @Value8 + @Value9 + @Value10 + @Value11 + @Value12
    
    update tbACAccountPayableBalance
    set dcOpeningValue = @LastBalanceValue
    where vcIdSupplier = @IdSupplier
    and vcYear = @NextYear
    if @@RowCount = 0
    begin
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcOpeningValue)
      values (@IdSupplier, @NextYear, @LastBalanceValue)
    end
    if @@Error <> 0
      set @Error = 1
    
    -- Next
    fetch next from CurrentBalance into 
      @IdSupplier, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
      @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  end  
  
  close CurrentBalance
  deallocate CurrentBalance 
  
  -- 5. Closing tbACAccountReceivableBalance
  declare CurrentBalance cursor for
    select vcIdCustomer, dcOpeningValue, dcValue1, dcValue2, dcValue3, dcValue4, dcValue5, 
      dcValue6, dcValue7, dcValue8, dcValue9, dcValue10, dcValue11, dcValue12
    from tbACAccountReceivableBalance
    where vcYear = @Year
  
  open CurrentBalance
  fetch next from CurrentBalance into 
    @IdCustomer, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
    @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  
  while @@Fetch_Status = 0
  begin
    set @LastBalanceValue = @OpeningValue + @Value1 + @Value2 + @Value3 + @Value4 + @Value5 + @Value6 + @Value7 + @Value8 + @Value9 + @Value10 + @Value11 + @Value12
    
    update tbACAccountReceivableBalance
    set dcOpeningValue = @LastBalanceValue
    where vcIdCustomer = @IdCustomer
    and vcYear = @NextYear
    if @@RowCount = 0
    begin
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcOpeningValue)
      values (@IdCustomer, @NextYear, @LastBalanceValue)
    end
    if @@Error <> 0
      set @Error = 1
    
    -- Next
    fetch next from CurrentBalance into 
      @IdCustomer, @OpeningValue, @Value1, @Value2, @Value3, @Value4, @Value5, @Value6, 
      @Value7, @Value8, @Value9, @Value10, @Value11, @Value12
  end  
  
  close CurrentBalance
  deallocate CurrentBalance
        
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


/* Store Procedure : spUpdateSupplierDPBalance
   Desc            : Procedure untuk
                     Update value of current supplier down payment balance
   Create          : Ivan */
   
create procedure spUpdateSupplierDPBalance 
  @IdSupplier varchar (10), @Year varchar(4), @Month integer, @SignQty integer, @Value money
with encryption  
as

declare   
  @Error int

begin
  
  -- Check Parameter First
  if (@IdSupplier is null) or (@Year is null) or (@Month = 0)
    return 99
    
  set @Error = 0
  
  begin transaction
    
  -- update Value(n) (SupplierDownPaymentBalance)
  if (select count(vcIdSupplier) from tbACSupplierDownPaymentBalance
    where vcIdSupplier = @IdSupplier
    and vcYear = @Year) = 0
  begin 
    -- make new record in supplier down payment balance, without closing period process
    insert into tbACSupplierDownPaymentBalance (vcIdSupplier, vcYear)
    values (@IdSupplier, @Year)
  end    
  if @Month = 1  -- January 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue1 = dcValue1 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 2  -- February 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue2 = dcValue2 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 3  -- March 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue3 = dcValue3 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 4  -- April 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue4 = dcValue4 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 5  -- May 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue5 = dcValue5 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 6  -- June 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue6 = dcValue6 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 7  -- July 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue7 = dcValue7 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 8  -- Agust 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue8 = dcValue8 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 9  -- September 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue9 = dcValue9 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 10  -- October 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue10 = dcValue10 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 11  -- November 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue11 = dcValue11 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  if @Month = 12  -- December 
  begin
    update tbACSupplierDownPaymentBalance
    set dcValue12 = dcValue12 + (@Value * @SignQty)
    where vcIdSupplier = @IdSupplier and vcYear = @Year
  end
  
  if @@Error <> 0
    set @Error = 1
    
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


/* Store Procedure : spPurchaseDownPaymentValidation
   Desc		       : 1. update tbACSupplierDownPaymentBalance
                     2. Set Done 
   Create          : Novien - Ivan */

Create procedure spPurchaseDownPaymentValidation
  @IdPurchaseDownPayment varchar(12)
with encryption  
as

declare
  -- variabel transaction
  @DateTransaction datetime, @TransactionType char, @IdSupplier varchar(10),     
  @Value money,
  -- Others
  @Month int, @Year int, @SignQty int, @StatusDone char, @Error int

begin
  
  -- Check Parameter First
  if @IdPurchaseDownPayment is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'      
  
  -- Get info from purchase downpayment transaction
  select  
     @DateTransaction = dtPurchaseDownPaymentDate,
     @TransactionType = chFlagTransType, 
     @IdSupplier = vcIdSupplier,
     @Value = dcAmount
  from tbACPurchaseDownPayment
  where vcIdPurchaseDownPayment = @IdPurchaseDownPayment

  set @Month = Month(@DateTransaction)
  set @Year = Year(@DateTransaction)
  if @TransactionType = '0' -- (in) Receive from supplier
    set @SignQty = 1
  if @TransactionType = '1' -- (out) Return to supplier
    set @SignQty = -1

  set @Error = 0
  begin transaction

  -- 1. update tbACSupplierDownPaymentBalance
  exec spUpdateSupplierDPBalance @IdSupplier, @Year, @Month, @SignQty, @Value
  if @@Error <> 0
    set @Error = 1
    
  -- 2. Set Done  
  update tbACPurchaseDownPayment
  set chStatusApprove = @StatusDone
  where vcIdPurchaseDownPayment = @IdPurchaseDownPayment
  if @@Error <> 0
    set @Error = 1

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


/* Store Procedure : spPurchaseEditingProcess
   Desc            : Procedure untuk
                       - Nota Telah dibayar dan harga turun
   Create          : Ivan */
   
create procedure spPurchaseEditingProcess 
  @PurchaseDownPaymentDate datetime, @IdSupplier varchar(10), @AmountSave Money, @EmployeeName varchar(40)
with encryption  
as

declare
  @IdPurchaseDownPayment varchar(12),
  @PurchaseDownPaymentNotes varchar(550),
  @No int, @Error int

begin
  -- Check Parameter First
  if @PurchaseDownPaymentDate is null
    return 99
    
  set @Error = 0  
  begin transaction

  set @IdPurchaseDownPayment = dbo.fnGetCurrentIdPurchaseDownPayment(@PurchaseDownPaymentDate)
  set @PurchaseDownPaymentNotes = 'Date: ' + convert(varchar, @PurchaseDownPaymentDate, 105) + char(13) + char(10) +
    'AUTOMATIC CREATE FROM PURCHASE INVOICE EDITING' + char(13) + char(10) + char(13) + char(10)

  insert into tbACPurchaseDownPayment
    (vcIdPurchaseDownPayment, dtPurchaseDownPaymentDate, vcIdSupplier, vcIdPaymentType,
    dcAmount, txNotes, vcEmployeeName, chFlagTransType, chStatusApprove)
  values
    (@IdPurchaseDownPayment, @PurchaseDownPaymentDate, @IdSupplier, 1,
    @AmountSave, @PurchaseDownPaymentNotes, @EmployeeName, 0, 2)
  if @@Error <> 0
    set @Error = 1
      
  execute spPurchaseDownPaymentValidation @IdPurchaseDownPayment
  if @@Error <> 0
    set @Error = 1

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


/* Store Procedure : spPurchaseInvoiceValidation 
   Desc            : Procedure untuk
                     - Insert/Update Price & Disc on tbIMPurchasePrice (PI without PO)
                     - Update Outstanding Quantity on tbIMPurchaseOrderDt (PI with PO)
                     - Insert/Update last purchase invoice on tbIMPurchasePrice                     
                     - Update Last Purchase Invoice on tbIMSuppplies
                     - Update inCurrentQty on tbIMPurchaseOrderDt
                     - Insert Supples in tbIMTransaction, with transaction type 'TY001'
                     - Update OutstandingTotalAmount = TotalAmount on tbIMPurchaseInvoiceHd
                     - Insert tbACTransactionAP (TransactionType = TP001)                     
                     - Update RR approval to '6' 
                     - Update PO approval to '6' if all outstanding qty = 0 (PI with PO)                     
   Create          : Ivan */
   
create procedure spPurchaseInvoiceValidation 
  @IdPurchaseInvoice varchar(12)
with encryption  
as

declare   
  -- PurchaseInvoiceHd
  @IdSupplier varchar(10), @PurchaseInvoiceDate datetime, @EmployeeName varchar(40),
  @IdPurchaseOrder varchar(12), @IdReceivingRecord varchar(14), @Disc decimal(4, 2), @Tax decimal(4, 2),  
  -- PurchaseInvoiceDt
  @IdSupplies varchar(20), @Qty integer, @Price money, @DiscItem decimal(4, 2), @DiscItemPrice money, @Amount money,
  -- Others  
  @LastSupplierName varchar(40), @IdWarehouseSource varchar(10), @TransactionType varchar(5), 
  @StatusDone char, @OutstandingTotalAmount money, @Description varchar(100),   
  @Error int

begin
  
  -- Check Parameter First
  if @IdPurchaseInvoice is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
  
  -- Set Transaction Type
  set @TransactionType = 'TY001'
  
  -- Initialize
  set @OutstandingTotalAmount = 0
  
  -- Get Purchase Order Header Information
  select
    @IdSupplier = vcIdSupplier, 
    @PurchaseInvoiceDate = dtPurchaseInvoiceDate,
    @EmployeeName = vcEmployeeName,
    @IdPurchaseOrder = vcIdPurchaseOrder,
    @IdReceivingRecord = vcIdReceivingRecord,
    @Disc = dcDisc,
    @Tax = dcTax
  from tbIMPurchaseInvoiceHd
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  
  -- Get Supplier Name
  select @LastSupplierName = vcSupplierName
  from tbGNSupplier
  where vcIdSupplier = @IdSupplier
  
  -- Get Warehouse Id
  select @IdWarehouseSource = vcIdWarehouse
  from tbIMReceivingRecordHd
  where vcIdReceivingRecord = @IdReceivingRecord
  
  -- Prepare Description
  set @Description = 'Purchase from ' + @LastSupplierName
  if IsNull(@IdPurchaseOrder, '') = ''
    set @Description = @Description + ' (' + @IdReceivingRecord + ')' -- Without PO
  else    
    set @Description = @Description + ' (' + @IdPurchaseOrder + ', ' + @IdReceivingRecord + ')' -- With PO       
  
  -- Create cursor
  declare currPurchaseInvoiceDt cursor for
    select vcIdSupplies, inQty, dcPrice, dcDiscItem, dcDiscItemPrice, dcAmount
    from tbIMPurchaseInvoiceDt
    where vcIdPurchaseInvoice = @IdPurchaseInvoice  
  open currPurchaseInvoiceDt  
  fetch next from currPurchaseInvoiceDt 
  into @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
  
  set @Error = 0  
  begin transaction
  
  while @@Fetch_Status = 0
  begin      
    if IsNull(@IdPurchaseOrder, '') = ''
    begin
      -- 1.Insert/Update Price & Disc on tbIMPurchasePrice (PI without PO)
      update tbIMPurchasePrice
      set 
        dcPrice = @Price,
        dcDiscItem  = @DiscItem,
        vcEmployeeName  = @EmployeeName
      where vcIdSupplies = @IdSupplies
      and vcIdSupplier = @IdSupplier       
      if @@RowCount= 0
      begin
        insert into tbIMPurchasePrice
          (vcIdSupplies, vcIdSupplier, dcPrice, dcDiscItem, vcEmployeeName)
        values 
          (@IdSupplies, @IdSupplier, @Price, @DiscItem, @EmployeeName)
      end      
      if @@Error <> 0
        set @Error = 1
    end
    else
    begin
      -- 2.Update Outstanding Quantity on tbIMPurchaseOrderDt (PI with PO)
      update tbIMPurchaseOrderDt
      set inOutstandingQty = inOutstandingQty - @Qty
      where vcIdPurchaseOrder = @IdPurchaseOrder
      and vcIdSupplies = @IdSupplies
      if @@Error <> 0
        set @Error = 1
    end
    
    -- 3.Insert/Update last purchase invoice on tbIMPurchasePrice
    update tbIMPurchasePrice
    set 
      vcLastPurchaseInvoice = @IdPurchaseInvoice,
      vcEmployeeName = @EmployeeName
    where vcIdSupplies = @IdSupplies
    and vcIdSupplier = @IdSupplier       
    if @@RowCount= 0
    begin
      insert into tbIMPurchasePrice
        (vcIdSupplies, vcIdSupplier, vcLastPurchaseInvoice, vcEmployeeName)
      values 
        (@IdSupplies, @IdSupplier, @IdPurchaseInvoice, @EmployeeName)
    end      
    if @@Error <> 0
      set @Error = 1

    -- 4.Update Last Purchase Invoice on tbIMSuppplies
    update tbIMSupplies
    set vcLastPurchaseInvoice = @IdPurchaseInvoice
    where vcIdSupplies = @IdSupplies
    if @@Error <> 0
      set @Error = 1
    
    -- 5.Update inCurrentQty on tbIMPurchaseOrderDt
    update tbIMPurchaseInvoiceDt
    set inCurrentQty = @Qty
    where vcIdPurchaseInvoice = @IdPurchaseInvoice
    and vcIdSupplies = @IdSupplies
    if @@Error <> 0
      set @Error = 1
    
    -- 6.Insert Supples in tbIMTransaction, with transaction type 'TY001'
    insert into tbIMTransaction
      (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, 
      vcIdWarehouseSource, vcIdWarehouseDest, inQty, dcPrice, vcDescription, dtSystemStamp)
    values 
      (@IdPurchaseInvoice, @PurchaseInvoiceDate, @TransactionType, @IdSupplies, 
      @IdWarehouseSource, null, @Qty, (@Price - @DiscItemPrice), @Description, getdate())
    if @@Error <> 0
      set @Error = 1
      
    -- Calculate OutstandingTotalAmount  
    set @OutstandingTotalAmount = @OutstandingTotalAmount + @Amount  
      
    --next record
    fetch next from currPurchaseInvoiceDt 
    into @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
  end  
  close currPurchaseInvoiceDt 
  deallocate currPurchaseInvoiceDt
  
  -- 7.Update OutstandingTotalAmount = TotalAmount on tbIMPurchaseInvoiceHd
  update tbIMPurchaseInvoiceHd
  set dcOutstandingTotalAmount = dcTotalAmount
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  if @@Error <> 0
    set @Error = 1
  
  -- Update PI approval to '6' if all outstanding amount = 0
  if @OutstandingTotalAmount = 0
  begin
    update tbIMPurchaseInvoiceHd
    set chStatusApprove = @StatusDone
    where vcIdPurchaseInvoice = @IdPurchaseInvoice    
  end
  else
  begin  
    -- 8.Insert tbACTransactionAP (TransactionType = TP001)
    insert into tbACTransactionAP 
      (vcIdReference, dtDateTransaction, vcIdSupplier, vcIdTransactionType, dcAmount, vcDescription) 
    values 
      (@IdPurchaseInvoice, @PurchaseInvoiceDate, @IdSupplier, 'TP001', @OutstandingTotalAmount, 
      'Purchasing (' + @IdPurchaseInvoice + ')')
  end
  if @@Error <> 0
    set @Error = 1
  
  -- 9.Update RR approval to '6' 
  update tbIMReceivingRecordHd
  set chStatusApprove = @StatusDone
  where vcIdReceivingRecord = @IdReceivingRecord
  if @@Error <> 0
    set @Error = 1
  
  -- 10.Update PO approval to '6' if all outstanding qty = 0 (PI with PO)
  if IsNull(@IdPurchaseOrder, '') <> ''
  begin
    if (select sum(inOutstandingQty) 
       from tbIMPurchaseOrderDt
       where vcIdPurchaseOrder = @IdPurchaseOrder) = 0
    begin
      update tbIMPurchaseOrderHd
      set chStatusApprove = @StatusDone
      where vcIdPurchaseOrder = @IdPurchaseOrder
      if @@Error <> 0
        set @Error = 1
    end          
  end  
  
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


/* Store Procedure : spPurchaseOrderValidation
   Desc            : Procedure untuk
                     1.Insert/Update Price & Pisc on tbIMPurchasePrice
                     2.Set Outstanding Quantity on tbIMPurchaseOrderDt
   Create          : Ivan */
   
create procedure spPurchaseOrderValidation 
  @IdPurchaseOrder varchar(12) 
with encryption  
as

declare   
  -- PurchaseOrderHd
  @IdSupplier varchar(10), @PurchaseOrderDate datetime, @EmployeeName varchar(40),  
  -- PurchaseOrderDt
  @IdSupplies varchar(20), @Qty integer, @Price money, @DiscItem decimal(4, 2),
  -- Others  
  @Error int

begin
  
  -- Check Parameter First
  if @IdPurchaseOrder is null
    return 99
  
  -- Get Purchase Order Header Information
  select
    @IdSupplier = vcIdSupplier, 
    @PurchaseOrderDate = dtPurchaseOrderDate,
    @EmployeeName = vcEmployeeName
  from tbIMPurchaseOrderHd
  where vcIdPurchaseOrder = @IdPurchaseOrder
  
  -- Create Cursor
  declare currPurchaseOrderDt cursor for
    select vcIdSupplies, inQty, dcPrice, dcDiscItem
    from tbIMPurchaseOrderDt
    where vcIdPurchaseOrder = @IdPurchaseOrder  
  open currPurchaseOrderDt  
  fetch next from currPurchaseOrderDt 
  into @IdSupplies, @Qty, @Price, @DiscItem
  
  set @Error = 0
  begin transaction
  
  while @@Fetch_Status = 0
  begin      
    -- 1.Insert/Update Price & Pisc on tbIMPurchasePrice
   /* update tbIMPurchasePrice
    set 
      dcPrice = @Price,
      dcDiscItem  = @DiscItem,
      vcEmployeeName  = @EmployeeName
    where vcIdSupplies = @IdSupplies
    and vcIdSupplier = @IdSupplier
    if @@RowCount = 0
    begin
      insert into tbIMPurchasePrice
        (vcIdSupplies, vcIdSupplier, dcPrice, dcDiscItem, vcEmployeeName)
      values 
        (@IdSupplies, @IdSupplier, @Price, @DiscItem, @EmployeeName)
    end
    if @@Error <> 0
      set @Error = 1
    */
    -- 2.Set Outstanding Quantity on tbIMPurchaseOrderDt
    update tbIMPurchaseOrderDt
    set inOutstandingQty = inQty
    where vcIdPurchaseOrder = @IdPurchaseOrder
    and vcIdSupplies = @IdSupplies          
    if @@Error <> 0
      set @Error = 1
  
    --next record
    fetch next from currPurchaseOrderDt 
    into @IdSupplies, @Qty, @Price, @DiscItem
  end
  
  close currPurchaseOrderDt  
  deallocate currPurchaseOrderDt

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


/* Store Procedure : spPurchasePaymentValidation 
   Desc            : Procedure untuk
                     1.Update Outstanding Amount on tbIMPurchaseInvoiceHd                     
                     2.Update PI approval to '6' if all outstanding amount = 0
                     3.Update PY approval to '6'
                     4.Insert tbACTransactionAP (TransactionType = TP002)
                     5.Update tbACSupplierDownPaymentBalance if payment type = down payment
   Create          : Ivan */
   
create procedure spPurchasePaymentValidation 
  @IdPurchasePayment varchar(12)
with encryption  
as


declare   
  -- PurchasePayment
   @IdPaymentType varchar(2), @PaymentTypeName varchar(20), @Amount money,
  -- PurchaseInvoiceHd
  @IdPurchaseInvoice varchar(12), @PurchasePaymentDate datetime, @PurchaseInvoiceDate datetime,
  @IdSupplier varchar(10), @OutstandingTotalAmount money,
  -- Others  
  @Year varchar(4), @Month varchar(2), @StatusDone char,  
  @Description varchar(100), @Error int

begin
  
  -- Check Parameter First
  if @IdPurchasePayment is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
   
  -- Get Purchase Payment Information
  select
    @IdPurchaseInvoice = a.vcIdPurchaseInvoice,
    @PurchasePaymentDate = a.dtPurchasePaymentDate,
    @Amount = a.dcAmount,
    @IdPaymentType = a.vcIdPaymentType,
    @PaymentTypeName = b.vcPaymentTypeName
  from tbIMPurchasePayment a
  left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPaymentType  
  where a.vcIdPurchasePayment = @IdPurchasePayment 
  
    -- Initialize
  set @OutstandingTotalAmount = 0
  set @Year = cast(Year(@PurchasePaymentDate) as varchar(4))
  set @Month = cast(Month(@PurchasePaymentDate) as varchar(2))
  
  -- Get Purchase Invoice Information
  select 
    @IdSupplier = vcIdSupplier,
    @PurchaseInvoiceDate = dtPurchaseInvoiceDate
  from tbIMPurchaseInvoiceHd
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  
  set @Error = 0
  begin transaction
  
  -- 1.Update Outstanding Amount on tbIMPurchaseInvoiceHd
  update tbIMPurchaseInvoiceHd
  set dcOutstandingTotalAmount = dcOutstandingTotalAmount - @Amount
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  if @@Error <> 0
    set @Error = 1

  -- 2.Update PI approval to '6' if all outstanding amount = 0
  if (select dcOutstandingTotalAmount
    from tbIMPurchaseInvoiceHd
    where vcIdPurchaseInvoice = @IdPurchaseInvoice) = 0
  begin
    update tbIMPurchaseInvoiceHd
    set chStatusApprove = @StatusDone
    where vcIdPurchaseInvoice = @IdPurchaseInvoice    
    if @@Error <> 0
      set @Error = 1    
  end  

  -- 3.Update PY approve to '6'
  update tbIMPurchasePayment
  set chStatusApprove = @StatusDone
  where vcIdPurchasePayment = @IdPurchasePayment  
  if @@Error <> 0
    set @Error = 1    
  
  -- 4.Insert tbACTransactionAP (TransactionType = TP002)
  set @Description = 'Payment with ' + @PaymentTypeName + ' (' + @IdPurchasePayment + ') for ' + @IdPurchaseInvoice + ' (' + convert(varchar, @PurchaseInvoiceDate, 110) + ')'
  insert into tbACTransactionAP (vcIdReference, dtDateTransaction, vcIdSupplier, vcIdTransactionType, dcAmount, vcDescription)
  values (@IdPurchasePayment, @PurchasePaymentDate, @IdSupplier, 'TP002', @Amount, @Description)
  if @@Error <> 0
    set @Error = 1
    
  -- 5.Update tbACSupplierDownPaymentBalance if payment type = down payment  
  if @IdPaymentType = '5'
  begin
    exec spUpdateSupplierDPBalance @IdSupplier, @Year, @Month, -1, @Amount
    if @@Error <> 0
      set @Error = 1
  end
        
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


/* Store Procedure : spPurchaseReturnValidation
   Desc            : Procedure untuk
                       - Create DO Header 
                       - Create DO Detail
                       - Update Update Current Qty on tbIMPurchaseInvoiceDt
                       - Insert supplies in tbIMTransaction, with transaction type 'TY008'
                       
                       - Update purchase invoice outstanding amount 
                       - Jika OutstandingTotalamount = 0 then PI Done
                       - Insert return transaction in tbACTransactionAR 
                       
                       - Create Purchase Down Payment
                       - Update DO reference & OutstandingTotalAmount on PurchaseReturnHd
   Create          : Ivan */
   
create procedure spPurchaseReturnValidation 
  @IdPurchaseReturn varchar(12)
with encryption  
as

declare   
  -- PurchaseReturnHd
  @PurchaseReturnDate datetime, @EmployeeName varchar(40), 
  @IdWarehouse varchar(10), @DeliveryOrderAddress varchar(500), 
  @DeliveryOrderNotes varchar(550), @IdSupplier varchar(10),
  @IdPurchaseInvoice varchar(12), @PurchaseReturnAmount money,
  -- PurchasereturnDt
  @IdSupplies varchar(20), @Qty integer, @Price money,
  @DiscItem decimal(4,2), @DiscItemPrice money, @Amount money,
  -- PurchaseInvoiceHd
  @OutstandingAmount money,
  -- PurchaseInvoiceDt
  @inCurrentQty integer,
  -- DO
  @IdDeliveryOrder varchar(14), @DeliveryScheduleDate datetime,
  -- DownPayment
  @IdPurchaseDownPayment varchar(12), @PurchaseDownPaymentDate datetime,
  @PurchaseDownPaymentNotes varchar(550), 
  -- Others
  @StatusDone char, @TransactionPurchaseReturn varchar(5), @CurrentPRQty integer,
  @SupplierName varchar(40),   
  @ACTransactionPurchaseReturn varchar(5), @Description varchar(100),  
  @OutstandingAmountSave money,
  @No int, @Error int

begin
  -- Check Parameter First
  if @IdPurchaseReturn is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
  
  -- Set Transaction Type
  set @TransactionPurchaseReturn = 'TY008' --Purchase Return  
  
  -- Set Accounting Transaction Type
  set @ACTransactionPurchaseReturn = 'TP005'
     
  set @Error = 0  
  begin transaction

  -- Get Purchase Return information
  select
    @PurchaseReturnDate = dtPurchaseReturnDate,
    @IdPurchaseInvoice = vcIdPurchaseInvoice,
    @EmployeeName = vcEmployeeName,
    @IdWarehouse = vcIdWarehouse,
    @IdSupplier = vcIdSupplier,
    @DeliveryOrderAddress = vcDeliveryOrderAddress,
    @DeliveryOrderNotes = vcDeliveryOrderNotes,
    @PurchaseReturnAmount = dcTotalAmount
  from tbIMPurchaseReturnHd
  where vcIdPurchaseReturn = @IdPurchaseReturn
    
  -- Get supplier name
  select @SupplierName = vcSupplierName
  from tbGNSupplier
  where vcIdSupplier = @IdSupplier

  set @Description = 'Purchase Return to ' + @SupplierName
  
  -- Create DO Header 
  set @DeliveryScheduleDate = getdate()
  set @DeliveryOrderNotes = 'Date: ' + convert(varchar, @DeliveryScheduleDate, 105) + ' - Notes from purchase return' + char(13) + char(10) + 
    @DeliveryOrderNotes + char(13) + char(10) + char(13) + char(10)
  set @IdDeliveryOrder = dbo.fnGetCurrentIdDeliveryOrder(@DeliveryScheduleDate, @IdWarehouse)  
    
  insert into tbIMDeliveryOrderHd
    (vcIdDeliveryOrder, dtDeliveryOrderDate, vcCustomerName, vcIdWarehouse, 
    txAddress, txNotes, vcEmployeeName, chStatusApprove, chFlagPending, dtSystemStamp)
  values 
    (@IdDeliveryOrder, @DeliveryScheduleDate, @SupplierName, @IdWarehouse, 
    @DeliveryOrderAddress, @DeliveryOrderNotes, @EmployeeName, 0, 0, GetDate())    
  if @@Error <> 0
    set @Error = 1
    
  -- Process detail
  declare currPurchaseReturnDt cursor for
    select inNo, vcIdSupplies, inQty, dcPrice, dcDiscItem, dcDiscItemPrice, dcAmount
    from tbIMPurchaseReturnDt
    where vcIdPurchaseReturn = @IdPurchaseReturn
    order by inNo
  open currPurchaseReturnDt
  fetch next from currPurchaseReturnDt 
  into @No, @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
    
  while @@Fetch_status = 0
  begin
    -- Create DO Detail
    insert into tbIMDeliveryOrderDt
      (vcIdDeliveryOrder, inNo, vcIdSupplies, inQty, dtSystemStamp)
    values
      (@IdDeliveryOrder, @No, @IdSupplies, @Qty, getdate())
    if @@Error <> 0
      set @Error = 1
      
    -- Insert supplies in tbIMTransaction, with transaction type 'TY008'
    insert into tbIMTransaction
      (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, 
      vcIdWarehouseSource, vcIdWarehouseDest, inQty, dcPrice, vcDescription, dtSystemStamp)
    values 
      (@IdPurchaseReturn, @PurchaseReturnDate, @TransactionPurchaseReturn, @IdSupplies, 
      @IdWarehouse, null, @Qty, (@Price - @DiscItemPrice), @Description, getdate())
    if @@Error <> 0
      set @Error = 1
        
    -- Update Current Qty
    select @inCurrentQty = inCurrentQty
    from tbIMPurchaseInvoiceDt    
    where vcIdPurchaseInvoice = @IdPurchaseInvoice
    and vcIdSupplies = @IdSupplies
    if @inCurrentQty < @Qty
      set @Error = 1    
    
    update tbIMPurchaseInvoiceDt
    set inCurrentQty = inCurrentQty - @Qty
    where vcIdPurchaseInvoice = @IdPurchaseInvoice
    and vcIdSupplies = @IdSupplies       
    
    --next record
    fetch next from currPurchaseReturnDt
    into @No, @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
  end
  close currPurchaseReturnDt
  deallocate currPurchaseReturnDt
  
  -- Update purchase invoice outstanding amount 
  select @OutstandingAmount = dcOutstandingTotalAmount
  from tbIMPurchaseInvoiceHd
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
    
  if @OutstandingAmount < @PurchaseReturnAmount
    set @OutstandingAmountSave = @OutstandingAmount
  else
    set @OutstandingAmountSave = @PurchaseReturnAmount 
  
  update tbIMPurchaseInvoiceHd
  set dcOutstandingTotalAmount = dcOutstandingTotalAmount - @OutstandingAmountSave
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  if @@Error <> 0
    set @Error = 1 
    
  -- Jika OutstandingTotalamount = 0 then PI Done
  update tbIMPurchaseInvoiceHd
  set chStatusApprove = @StatusDone
  where vcIdPurchaseInvoice = @IdPurchaseInvoice
  and dcOutstandingTotalAmount = 0
  if @@Error <> 0
    set @Error = 1 
  
  -- Insert return transaction in tbACTransactionAP
  insert into tbACTransactionAP
    (vcIdReference, dtDateTransaction, vcIdSupplier, vcIdTransactionType, dcAmount, vcDescription)
  values
    (@IdPurchaseReturn, @PurchaseReturnDate, @IdSupplier, @ACTransactionPurchaseReturn, @OutstandingAmountSave, 
    'Purchase Return (' + @IdPurchaseReturn + ')')  
  if @@Error <>0
    set @Error = 1    
    
  -- Hitung sisa yg belum di proses 
  set @OutstandingAmountSave = @PurchaseReturnAmount - @OutstandingAmountSave
  
  -- Create DownPaymnet
  if @OutstandingAmountSave <> 0
  begin
    set @PurchaseDownPaymentDate = getdate()
    set @PurchaseDownPaymentNotes = 'Date: ' + convert(varchar, @PurchaseDownPaymentDate, 105) + char(13) + char(10) + 
      'AUTOMATIC CREATE FROM PURCHASE RETURN' + char(13) + char(10) + char(13) + char(10)
    set @IdPurchaseDownPayment = dbo.fnGetCurrentIdPurchaseDownPayment(@PurchaseDownPaymentDate)  
    
    insert into tbACPurchaseDownPayment
      (vcIdPurchaseDownPayment, dtPurchaseDownPaymentDate, vcIdSupplier, vcIdPaymentType, 
      dcAmount, txNotes, vcEmployeeName, chFlagTransType, chStatusApprove)
    values 
      (@IdPurchaseDownPayment, @PurchaseDownPaymentDate, @IdSupplier, 1, 
      @OutstandingAmountsave, @PurchaseDownPaymentNotes, @EmployeeName, 0, 2)    
    if @@Error <> 0
      set @Error = 1
    
    -- Approved
    execute spPurchaseDownPaymentValidation @IdPurchaseDownPayment
    if @@Error <> 0
      set @Error = 1    
  end

  -- Update DO reference & OutstandingTotalAmount on PurchaseReturnHd
  update tbIMPurchaseReturnHd
  set dcOutstandingTotalAmount = 0,
    vcIdRefDO = @IdDeliveryOrder,
    chStatusApprove = @StatusDone
  where vcIdPurchaseReturn = @IdPurchaseReturn
  if @@Error <> 0
    set @Error = 1

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


/* Store Procedure : spUpdateCustomerDPBalance
   Desc            : Procedure untuk
                     Update value of current customer down payment balance
   Create          : Ivan */
   
create procedure spUpdateCustomerDPBalance 
  @IdCustomer varchar (10), @Year varchar(4), @Month integer, @SignQty integer, @Value money
with encryption  
as

declare   
  @Error int

begin
  
  -- Check Parameter First
  if (@IdCustomer is null) or (@Year is null) or (@Month = 0)
    return 99
    
  set @Error = 0  
  begin transaction
    
  -- update Value(n) (CustomerDownPaymentBalance)
  if (select count(vcIdCustomer) from tbACCustomerDownPaymentBalance
    where vcIdCustomer = @IdCustomer
    and vcYear = @Year) = 0
  begin 
    -- make new record in Customer down payment balance, without closing period process
    insert into tbACCustomerDownPaymentBalance (vcIdCustomer, vcYear)
    values (@IdCustomer, @Year)
  end    
  if @Month = 1  -- January 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue1 = dcValue1 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 2  -- February 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue2 = dcValue2 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 3  -- March 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue3 = dcValue3 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 4  -- April 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue4 = dcValue4 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 5  -- May 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue5 = dcValue5 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 6  -- June 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue6 = dcValue6 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 7  -- July 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue7 = dcValue7 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 8  -- Agust 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue8 = dcValue8 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 9  -- September 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue9 = dcValue9 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 10  -- October 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue10 = dcValue10 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 11  -- November 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue11 = dcValue11 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  if @Month = 12  -- December 
  begin
    update tbACCustomerDownPaymentBalance
    set dcValue12 = dcValue12 + (@Value * @SignQty)
    where vcIdCustomer = @IdCustomer and vcYear = @Year
  end
  
  if @@Error <> 0
    set @Error = 1
    
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


/* Store Procedure : spSalesDownPaymentValidation
   Desc		       : 1. update tbACCustomerDownPaymentBalance
                     2. Set Done
   Create          : Novien - Ivan */

Create procedure spSalesDownPaymentValidation
  @IdSalesDownPayment varchar(12)
with encryption  
as

declare
  -- variabel transaction
  @DateTransaction datetime, @TransactionType char, @IdCustomer varchar(10),     
  @Value money, 
  -- Others
  @Month int, @Year int, @SignQty int, @StatusDone char, @Error int

begin
  
  -- Check Parameter First
  if @IdSalesDownPayment is null
    return 99
  
  -- Set status done value
  set @StatusDone = '6'      
  
  -- Get info from Sales downpayment transaction
  select  
     @DateTransaction = dtSalesDownPaymentDate,
     @TransactionType = chFlagTransType, 
     @IdCustomer = vcIdCustomer,
     @Value = dcAmount
  from tbACSalesDownPayment
  where vcIdSalesDownPayment = @IdSalesDownPayment
  
  set @Month = Month(@DateTransaction)
  set @Year = Year(@DateTransaction)
  if @TransactionType = '0' -- (in) Receive from Customer
    set @SignQty = 1
  if @TransactionType = '1' -- (out) Return to Customer
    set @SignQty = -1
  
  set @Error = 0
  begin transaction

  -- 1. update tbACCustomerDownPaymentBalance
  exec spUpdateCustomerDPBalance @IdCustomer, @Year, @Month, @SignQty, @Value
  if @@Error <> 0
    set @Error = 1

  -- 2. Set Done  
  update tbACSalesDownPayment
  set chStatusApprove = @StatusDone
  where vcIdSalesDownPayment = @IdSalesDownPayment
  if @@Error <> 0
    set @Error = 1

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


/* Store Procedure : spSalesEditingProcess
   Desc            : Procedure untuk
                       - Nota Telah dibayar dan harga turun
   Create          : Ivan */
   
create procedure spSalesEditingProcess 
  @SalesDownPaymentDate datetime, @IdCustomer varchar(10), @AmountSave Money, @EmployeeName varchar(40)
with encryption  
as

declare
  @IdSalesDownPayment varchar(12),
  @SalesDownPaymentNotes varchar(550),
  @No int, @Error int

begin
  -- Check Parameter First
  if @SalesDownPaymentDate is null
    return 99
    
  set @Error = 0  
  begin transaction

  set @IdSalesDownPayment = dbo.fnGetCurrentIdSalesDownPayment(@SalesDownPaymentDate)
  set @SalesDownPaymentNotes = 'Date: ' + convert(varchar, @SalesDownPaymentDate, 105) + char(13) + char(10) +
    'AUTOMATIC CREATE FROM Sales INVOICE EDITING' + char(13) + char(10) + char(13) + char(10)

  insert into tbACSalesDownPayment
    (vcIdSalesDownPayment, dtSalesDownPaymentDate, vcIdCustomer, vcIdPaymentType,
    dcAmount, txNotes, vcEmployeeName, chFlagTransType, chStatusApprove)
  values
    (@IdSalesDownPayment, @SalesDownPaymentDate, @IdCustomer, 1,
    @AmountSave, @SalesDownPaymentNotes, @EmployeeName, 0, 2)
  if @@Error <> 0
    set @Error = 1
      
  execute spSalesDownPaymentValidation @IdSalesDownPayment
  if @@Error <> 0
    set @Error = 1

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


/* Store Procedure : spSalesInvoiceValidation
   Desc            : Procedure untuk
                     - Create  Delivery Order Header
                     - Insert/Update Price & Disc on tbIMSalePrice (SI without SO)
                     - Update Outstanding Quantity on tbIMSalesOrderDt (SI with SO)
                     - Insert/Update last sales invoice on tbIMsalePrice
                     - Create  Delivery Order Detail
                     - Update Last Sales Invoice on tbIMSuppplies
                     - Update inCurrentQty on tbIMSalesOrderDt
                     - Insert Supples in tbIMTransaction, with transaction type 'TY002'
                     - Update OutstandingTotalAmount & IdDeliveryOrder on tbIMSalesInvoiceHd
                     - Insert tbACTransactionAR (TransactionType = TR001)
                     - Update SO approval to '6' if all outstanding qty = 0 (SI with SO)                     
   Create          : Ivan */
   
create procedure spSalesInvoiceValidation 
  @IdSalesInvoice varchar(12)
with encryption  
as

declare   
  -- SalesInvoiceHd
  @IdCustomer varchar(10), @SalesInvoiceDate datetime, @DeliveryScheduleDate datetime, 
  @EmployeeName varchar(40), @IdSalesOrder varchar(12), @Disc decimal(4, 2), @Tax decimal(4, 2),
  @DeliveryOrderAddress varchar(500), @DeliveryOrderNotes varchar(550), @FlagPendingDO char(1),
  @FlagManual char(1),
  -- SalesInvoiceDt
  @IdSupplies varchar(20), @Qty integer, @Price money, @DiscItem decimal(4, 2), @DiscItemPrice money, @Amount money,    
  -- Others
  @LastCustomerName varchar(40), @IdWarehouseSource varchar(10), @TransactionType varchar(5), 
  @StatusDone char, @OutstandingTotalAmount money, @Description varchar(100), 
  @IdDeliveryOrder varchar(14), 
  @Number int, @Error int

begin
  
  -- Check Parameter First
  if @IdSalesInvoice is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
  
  -- Set Transaction Type
  set @TransactionType = 'TY002'
  
  -- Initialize
  set @OutstandingTotalAmount = 0
  set @Number = 0
  
  -- Get Sales Invoice Header Information
  select
    @IdCustomer = vcIdCustomer, 
    @SalesInvoiceDate = dtSalesInvoiceDate,
    @EmployeeName = vcEmployeeName,
    @IdSalesOrder = vcIdSalesOrder,
    @IdWarehouseSource = vcIdWarehouse,
    @Disc = dcDisc,
    @Tax = dcTax,
    @DeliveryScheduleDate = dtDeliveryScheduleDate,
    @DeliveryOrderAddress = vcDeliveryOrderAddress,
    @DeliveryOrderNotes = vcDeliveryOrderNotes,
    @FlagPendingDO = chFlagPendingDO,
    @FlagManual = chFlagManual
  from tbIMSalesInvoiceHd
  where vcIdSalesInvoice = @IdSalesInvoice
  
  -- Get Customer Name
  select @LastCustomerName = vcCustomerName
  from tbGNCustomer
  where vcIdCustomer = @IdCustomer
  
  -- Initial delvery order notes
  set @DeliveryOrderNotes = 'Date: ' + convert(varchar, getdate(), 105) + ' - Notes from sales' + char(13) + char(10) + @DeliveryOrderNotes + char(13) + char(10)
  
  set @Error = 0  
  begin transaction
  
  -- 1.Auto create DO
  set @IdDeliveryOrder = dbo.fnGetCurrentIdDeliveryOrder(@DeliveryScheduleDate, @IdWarehouseSource)
  
  insert into tbIMDeliveryOrderHd
    (vcIdDeliveryOrder, dtDeliveryOrderDate, vcCustomerName, vcIdSalesOrder, vcIdSalesInvoice, vcIdWarehouse, 
    txAddress, txNotes, vcEmployeeName, chStatusApprove, chFlagPending, chFlagManual, dtSystemStamp)
  values 
    (@IdDeliveryOrder, @DeliveryScheduleDate, @LastCustomerName, @IdSalesOrder, @IdSalesInvoice, @IdWarehouseSource, 
    @DeliveryOrderAddress, @DeliveryOrderNotes, @EmployeeName, 0, @FlagPendingDO, @FlagManual, GetDate())    
  if @@Error <> 0
    set @Error = 1
  
  -- Prepare Description
  set @Description = 'Sale to ' + @LastCustomerName
  if IsNull(@IdSalesOrder, '') = ''
    set @Description = @Description + ' (' + @IdDeliveryOrder + ')' -- Without SO
  else    
    set @Description = @Description + ' (' + @IdSalesOrder + ', ' + @IdDeliveryOrder + ')' -- With SO       
  
  -- Create cursor
  declare currSalesInvoiceDt cursor for
    select vcIdSupplies, inQty, dcPrice, dcDiscItem, dcDiscItemPrice, dcAmount
    from tbIMSalesInvoiceDt
    where vcIdSalesInvoice = @IdSalesInvoice  
  open currSalesInvoiceDt
  fetch next from currSalesInvoiceDt 
  into @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
  
  while @@Fetch_status = 0
  begin      
    if IsNull(@IdSalesOrder, '') = ''
    begin
      -- 2.Insert/Update Price & Disc on tbIMSalesPrice (SI without SO)
      update tbIMSalePrice
      set 
        dcPrice = @Price,
        dcDiscItem  = @DiscItem,
        vcEmployeeName  = @EmployeeName
      where vcIdSupplies = @IdSupplies
      and   vcIdCustomer = @IdCustomer
      if @@RowCount= 0
      begin
        insert into tbIMSalePrice
          (vcIdSupplies, vcIdCustomer, dcPrice, dcDiscItem, vcEmployeeName)
        values 
          (@IdSupplies, @IdCustomer, @Price, @DiscItem, @EmployeeName)
      end      
      if @@Error <> 0
        set @Error = 1
    end
    else
    begin
      -- 3.Update Outstanding Quantity on tbIMSalesOrderDt (SI with SO)
      update tbIMSalesOrderDt
      set inOutstandingQty = inOutstandingQty - @Qty
      where vcIdSalesOrder = @IdSalesOrder
      and vcIdSupplies = @IdSupplies
      if @@Error <> 0
        set @Error = 1
    end
    
    -- 4.Insert/Update last sales invoice on tbIMsalePrice
    update tbIMSalePrice
    set 
      vcLastSalesInvoice = @IdSalesInvoice,
      vcEmployeeName = @EmployeeName
    where vcIdSupplies = @IdSupplies
    and vcIdCustomer = @IdCustomer
    if @@RowCount= 0
    begin
      insert into tbIMSalePrice
        (vcIdSupplies, vcIdCustomer, vcLastSalesInvoice, vcEmployeeName)
      values 
        (@IdSupplies, @IdCustomer, @IdSalesInvoice, @EmployeeName)
    end      
    if @@Error <> 0
      set @Error = 1
    
    -- 5.Create  Delivery Order Detail
    set @Number = 1
    
    insert into tbIMDeliveryOrderDt 
      (vcIdDeliveryOrder, inNo, vcIdSupplies, inQty, dtSystemStamp)
    values
      (@IdDeliveryOrder, @Number, @IdSupplies, @Qty, GetDate())
    if @@Error <> 0
      set @Error = 1
    
    -- 6.Update Last Sales Invoice on tbIMSuppplies
    update tbIMSupplies
    set vcLastSalesInvoice = @IdSalesInvoice
    where vcIdSupplies = @IdSupplies
    if @@Error <> 0
      set @Error = 1

    -- 7.Update inCurrentQty on tbIMSalesOrderDt    
    update tbIMSalesInvoiceDt
    set inCurrentQty = @Qty
    where vcIdSalesInvoice = @IdSalesInvoice
    and vcIdSupplies = @IdSupplies
    if @@Error <> 0
      set @Error = 1
    
    -- 8.Insert Supples in tbIMTransaction, with transaction type 'TY002'
    insert into tbIMTransaction
      (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, 
      vcIdWarehouseSource, vcIdWarehouseDest, inQty, dcPrice, vcDescription, dtSystemStamp)
    values 
      (@IdSalesInvoice, @SalesInvoiceDate, @TransactionType, @IdSupplies, 
      @IdWarehouseSource, null, @Qty, (@Price - @DiscItemPrice), @Description, getdate())
    if @@Error <> 0
      set @Error = 1
      
    -- Calculate Sales Invoice Total Amount 
    set @OutstandingTotalAmount = @OutstandingTotalAmount + @Amount
             
    --next record
    fetch next from currSalesInvoiceDt 
    into @IdSupplies, @Qty, @Price, @DiscItem, @DiscItemPrice, @Amount
  end
  
  close currSalesInvoiceDt  
  deallocate currSalesInvoiceDt
  
  -- 9.Update OutstandingTotalAmount & IdDeliveryOrder on tbIMSalesInvoiceHd
  update tbIMSalesInvoiceHd
  set dcOutstandingTotalAmount = dcTotalAmount,
    vcIdDeliveryOrder = @IdDeliveryOrder
  where vcIdSalesInvoice = @IdSalesInvoice
  if @@Error <> 0
    set @Error = 1
  
  -- Update SI approval to '6' if all outstanding amount = 0
  if @OutstandingTotalAmount = 0
  begin
    update tbIMSalesInvoiceHd
    set chStatusApprove = @StatusDone
    where vcIdSalesInvoice = @IdSalesInvoice    
  end
  else
  begin 
    -- 10.Insert tbACTransactionAR (TransactionType = TR002)
    insert into tbACTransactionAR (vcIdReference, dtDateTransaction, vcIdCustomer, vcIdTransactionType, dcAmount, vcDescription) 
    values (@IdSalesInvoice, @SalesInvoiceDate, @IdCustomer, 'TR001', @OutstandingTotalAmount, 'Sales (' + @IdSalesInvoice + ')')
  end
  if @@Error <> 0
    set @Error = 1
  
  -- 11.Update SO approval to '6' if all outstanding qty = 0 (SI with SO)
  if IsNull(@IdSalesOrder, '') <> ''
  begin
    if (select sum(inOutstandingQty) 
       from tbIMSalesOrderDt
       where vcIdSalesOrder = @IdSalesOrder) = 0
    begin
      update tbIMSalesOrderHd
      set chStatusApprove = @StatusDone
      where vcIdSalesOrder = @IdSalesOrder
      if @@Error <> 0
        set @Error = 1
    end          
  end  
  
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


/* Store Procedure : spSalesOrderValidation
   Desc            : Procedure untuk
                     1.Insert/Update Price & Pisc on tbIMSalePrice                     
                     2.Set Outstanding Quantity on tbIMSalesOrderDt
   Create          : Ivan */
   
create procedure spSalesOrderValidation 
  @IdSalesOrder varchar(12) 
with encryption  
as

declare   
  -- SalesOrderHd
  @IdCustomer varchar(10), @SalesOrderDate datetime, @EmployeeName varchar(40),  
  -- SalesOrderDt
  @IdSupplies varchar(20), @Qty integer, @Price money, @DiscItem decimal(4, 2),
  -- Others  
  @Error int

begin
  
  -- Check Parameter First
  if @IdSalesOrder is null
    return 99
  
  -- Get Sales Order Header Information
  select
    @IdCustomer = vcIdCustomer, 
    @SalesOrderDate = dtSalesOrderDate,
    @EmployeeName = vcEmployeeName
  from tbIMSalesOrderHd
  where vcIdSalesOrder = @IdSalesOrder
   
  -- Create cursor
  declare currSalesOrderDt cursor for
    select vcIdSupplies, inQty, dcPrice, dcDiscItem
    from tbIMSalesOrderDt
    where vcIdSalesOrder = @IdSalesOrder  
  open currSalesOrderDt
  fetch next from currSalesOrderDt 
  into @IdSupplies, @Qty, @Price, @DiscItem
  
  set @Error = 0  
  begin transaction
  
  while @@Fetch_Status = 0
  begin      
    /*-- 1.Insert/Update Price & Pisc on tbIMSalePrice
    update tbIMSalePrice
    set 
      dcPrice = @Price,
      dcDiscItem  = @DiscItem,
      vcEmployeeName  = @EmployeeName
    where vcIdSupplies = @IdSupplies
    and   vcIdCustomer = @IdCustomer
    if @@RowCount =  0
    begin
      insert into tbIMSalePrice
        (vcIdSupplies, vcIdCustomer, dcPrice, dcDiscItem, vcEmployeeName)
      values 
        (@IdSupplies, @IdCustomer, @Price, @DiscItem, @EmployeeName)
    end
    if @@Error <> 0
      set @Error = 1*/
    
    -- 2.Set Outstanding Quantity on tbIMSalesOrderDt
    update tbIMSalesOrderDt
    set inOutstandingQty = inQty
    where vcIdSalesOrder = @IdSalesOrder
    and vcIdSupplies = @IdSupplies          
    if @@Error <> 0
      set @Error = 1
  
    --next record
    fetch next from currSalesOrderDt 
    into @IdSupplies, @Qty, @Price, @DiscItem
  end
  
  close currSalesOrderDt  
  deallocate currSalesOrderDt

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


/* Store Procedure : spSalesPaymentValidation
   Desc            : Procedure untuk
                     1.Update Outstanding Amount on tbIMSalesInvoiceHd                     
                     2.Update PI approval to '6' if all outstanding amount = 0
                     3.Update PY approval to '6'
                     4.Insert tbACTransactionAR (TransactionType = TR002)
                     5.Update tbACCustomerDownPaymentBalance if payment type = down payment
   Create          : Ivan */
   
create procedure spSalesPaymentValidation 
  @IdSalesPayment varchar(12)
with encryption  
as


declare   
  -- SalesPayment
  @IdPaymentType varchar(2), @PaymentTypeName varchar(20), @Amount money,
  -- SalesInvoiceHd
  @IdSalesInvoice varchar(12), @SalesPaymentDate datetime, @SalesInvoiceDate datetime,
  @IdCustomer varchar(10), @OutstandingTotalAmount money,
  -- Others  
  @Year varchar(4), @Month varchar(2), @StatusDone char, 
  @Description varchar(100), @Error int

begin
  
  -- Check Parameter First
  if @IdSalesPayment is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6'  
   
  -- Get Sales Payment Information
  select
    @IdSalesInvoice = a.vcIdSalesInvoice,
    @SalesPaymentDate = a.dtSalesPaymentDate,
    @Amount = a.dcAmount,
    @IdPaymentType = a.vcIdPaymentType,
    @PaymentTypeName = b.vcPaymentTypeName
  from tbIMSalesPayment a
  left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPaymentType
  where a.vcIdSalesPayment = @IdSalesPayment 
  
    -- Initialize
  set @OutstandingTotalAmount = 0
  set @Year = cast(Year(@SalesPaymentDate) as varchar(4))
  set @Month = cast(Month(@SalesPaymentDate) as varchar(2))
  
  -- Get Sales Invoice Information
  select 
    @IdCustomer = vcIdCustomer,
    @SalesInvoiceDate = dtSalesInvoiceDate
  from tbIMSalesInvoiceHd
  where vcIdSalesInvoice = @IdSalesInvoice
  
  set @Error = 0
  begin transaction
  
  -- 1.Update Outstanding Amount on tbIMSalesInvoiceHd
  update tbIMSalesInvoiceHd
  set dcOutstandingTotalAmount = dcOutstandingTotalAmount - @Amount
  where vcIdSalesInvoice = @IdSalesInvoice
  if @@Error <> 0
    set @Error = 1

  -- 2.Update PI approval to '6' if all outstanding amount = 0
  if (select dcOutstandingTotalAmount
    from tbIMSalesInvoiceHd
    where vcIdSalesInvoice = @IdSalesInvoice) = 0
  begin
    update tbIMSalesInvoiceHd
    set chStatusApprove = @StatusDone
    where vcIdSalesInvoice = @IdSalesInvoice    
    if @@Error <> 0
      set @Error = 1    
  end  

  -- 3.Update PY approve to '6'
  update tbIMSalesPayment
  set chStatusApprove = @StatusDone
  where vcIdSalesPayment = @IdSalesPayment  
  if @@Error <> 0
    set @Error = 1    
  
  -- 4.Insert tbACTransactionAR (TransactionType = TR002)
  set @Description = 'Payment with ' + @PaymentTypeName + ' (' + @IdSalesPayment + ') for ' + @IdSalesInvoice + ' (' + convert(varchar, @SalesInvoiceDate, 110) + ')'
  insert into tbACTransactionAR (vcIdReference, dtDateTransaction, vcIdCustomer, vcIdTransactionType, dcAmount, vcDescription)
  values (@IdSalesPayment, @SalesPaymentDate, @IdCustomer, 'TR002', @Amount, @Description)
  if @@Error <> 0
    set @Error = 1
    
  -- 5.Update tbACCustomerDownPaymentBalance if payment type = down payment  
  if @IdPaymentType = '5'
  begin
    exec spUpdateCustomerDPBalance @IdCustomer, @Year, @Month, -1, @Amount
    if @@Error <> 0
      set @Error = 1
  end
        
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


/* 
Store Procedure : spSalesReturnValidation
   Desc            : Procedure untuk
                       Approval 1 -> 2 :
                         - Create RR Header
                         - Create RR Detail
                         - Update Sales return header RR reference
                       Approval 2 -> 3 :
                         - Insert supplies in tbIMTransaction, with transaction type 'TY009'
                         - Update TransactionRevenue
                         - Update Current Qty SalesInvoiceDt                         
                         - Update receiving record status to done                         
                         - Update sales invoice outstanding amount                          
                         - Jika OutstandingTotalamount = 0 then SI Done
                         - Insert return transaction in tbACTransactionAR 
                         
                         - Create DownPaymnet
                         - Update OutstandingTotalAmount on SalesReturnHd                                                                                                  
                         - Jika OutstandingTotalamount = 0 then SR Done
*/
   
CREATE procedure spSalesReturnValidation
  @IdSalesReturn varchar(12), @Approval integer
with encryption
as
declare   
  -- SalesReturnHd
  @FlagWarehouse char,
  @EmployeeName varchar(40), 
  @IdWarehouse varchar(10), 
  @IdCustomer varchar(10), 
  @IdCustomerDeliveryOrder varchar(25), 
  @IdSalesInvoice varchar(12),
  @SalesReturnDate datetime, 
  @SalesReturnAmount money,
  
  -- SalesReturnDt
  @No int, 
  @IdSupplies varchar(20), 
  @Qty integer,

  -- ReceivingRecord
  @IdReceivingRecord varchar(14), 
  @ReceivingRecordDate datetime, 
  @ReceivingRecordNotes varchar(550), 
  @RRStatusApprove char, 
  
  -- SalesInvoiceHd
  @OutstandingAmount money, 
  @IdWarehouseSI varchar(10),
    
  -- TransactionRevenue
  @IdTransactionRevenue varchar(100), 
  @QtyHPPLeft integer,
  @HPP money,
  
  -- DownPayment
  @IdSalesDownPayment varchar(12), @SalesDownPaymentDate datetime,
  @SalesDownPaymentNotes varchar(550),  
  
  -- Others
  @StatusDone char,
  @TransactionSalesReturn varchar(5), 
  @ACTransactionSalesReturn varchar(5), 
  @QtyProcess integer, 
  @QtySave integer, 
  @Description varchar(100),  
  @CustomerName varchar(40), 
  @OutstandingAmountSave money,
  @Error int
begin
  
  -- Check Parameter First
  if @IdSalesReturn is null
    return 99
    
  -- Set status done value
  set @StatusDone = '6' 
  
  -- Set Inventory Transaction Type
  set @TransactionSalesReturn = 'TY009'--Sales Return
   
  -- Set Accounting Transaction Type
  set @ACTransactionSalesReturn = 'TR005'
  
  -- Get Sales Return header information
  select
    @SalesReturnDate = dtSalesReturnDate,
    @EmployeeName = vcEmployeeName,
    @IdWarehouse = vcIdWarehouse,
    @IdCustomer = vcIdCustomer,
    @IdCustomerDeliveryOrder = vcIdCustomerDeliveryOrder,
    @IdSalesInvoice = vcIdSalesInvoice,
    @SalesReturnAmount = dcTotalAmount,
    @FlagWarehouse = chFlagWarehouse
  from tbIMSalesReturnHd
  where vcIdSalesReturn = @IdSalesReturn

  -- Get Customer Information
  select @CustomerName = vcCustomerName
  from tbGNCustomer
  where vcIdCustomer = @IdCustomer
  
  set @Error = 0  
  begin transaction

  -- Process approval 1->2
  if @Approval = 2
  begin
    -- Create RR if FlagWarehouse is active = Automatic update
    if @FlagWarehouse = 1
      set @RRStatusApprove = '2'
    else
      set @RRStatusApprove = '0' 

    -- Create RR Header
    set @ReceivingRecordDate = getdate()
    set @ReceivingRecordNotes = 'Date: ' + convert(varchar, @ReceivingRecordDate, 105) + ' - Notes from sales return' + char(13) + char(10) +
      'SALES RETURN PROCESS' + char(13) + char(10) + char(13) + char(10)
    set @IdReceivingRecord = dbo.fnGetCurrentIdRRSalesReturn(@ReceivingRecordDate)  
    
    insert into tbIMReceivingRecordHd
      (vcIdReceivingRecord, dtReceivingRecordDate, vcSupplierName, vcIdWarehouse, 
       txNotes, vcEmployeeName, chStatusApprove, chFlagMutation, dtSystemStamp)
    values 
      (@IdReceivingRecord, @ReceivingRecordDate, @CustomerName, @IdWarehouse, 
       @ReceivingRecordNotes, @EmployeeName, @RRStatusApprove, 0, GetDate())    
    if @@Error <> 0
      set @Error = 1
    
    -- Process detail
    declare currSalesReturnDt cursor for
      select inNo, vcIdSupplies, inQty
      from tbIMSalesReturnDt
      where vcIdSalesReturn = @IdSalesReturn
      order by inNo
    open currSalesReturnDt
    fetch next from currSalesReturnDt 
    into @No, @IdSupplies, @Qty 
    
    while @@Fetch_Status = 0
    begin
      -- Create RR Detail
      insert into tbIMReceivingRecordDt
        (vcIdReceivingRecord, inNo, vcIdSupplies, inQty, dtSystemStamp)
      values
        (@IdReceivingRecord, @No, @IdSupplies, @Qty, getdate())
      if @@Error <> 0
        set @Error = 1
            
      --next record
      fetch next from currSalesReturnDt
      into @No, @IdSupplies, @Qty
    end
      
    close currSalesReturnDt
    deallocate currSalesReturnDt
    
    -- Update Sales Return header RR reference
    update tbIMSalesReturnHd
    set vcIdRefRR = @IdReceivingRecord
    where vcIdSalesReturn = @IdSalesReturn
    if @@Error <> 0
      set @Error = 1    
  end
  
  -- Process approval 2->3
  if @Approval = 3
  begin
    -- Initial
    set @Description = 'Sales Return ' + @IdSalesInvoice + '(' + @CustomerName + ')'
    
    -- Process Sales Return Detail  
    declare currSalesReturnDt cursor for
      select inNo, vcIdSupplies, inQty
      from tbIMSalesReturnDt
      where vcIdSalesReturn = @IdSalesReturn
      order by inNo      
    open currSalesReturnDt
    fetch next from currSalesReturnDt 
    into @No, @IdSupplies, @Qty
    
    while @@Fetch_Status = 0
    begin
      -- Initial
      set @QtyProcess = @Qty
      
      -- Process FIFO
      declare currTransactionRevenue cursor for
        select vcIdTransactionRevenue, (inQty - inReturnQty), dcHPP
        from tbACTransactionRevenue
        where (inQty - inReturnQty) <> 0
        and vcIdReference = @IdSalesInvoice
        and vcIdSupplies = @IdSupplies
      open currTransactionRevenue
      fetch next from currTransactionRevenue
      into @IdTransactionRevenue, @QtyHPPLeft, @HPP
      
      while @@Fetch_Status = 0
      begin
        if @QtyHPPLeft >= @QtyProcess
        begin
          set @QtySave = @QtyProcess
          set @QtyProcess = 0
        end
        else
        begin  
          set @QtySave = @QtyHPPLeft
          set @QtyProcess = @QtyProcess - @QtyHPPLeft
        end          
          
        -- Insert supplies in tbIMTransaction, with transaction type 'TY009'
        insert into tbIMTransaction
          (vcIdReference, dtDateTransaction, vcIdTransactionType, vcIdSupplies, vcIdWarehouseSource, 
          inQty, dcPrice, vcDescription, dtSystemStamp)
        values 
          (@IdSalesReturn, @SalesReturnDate, @TransactionSalesReturn, @IdSupplies, @IdWarehouse, 
          @QtySave, @HPP, @Description, getdate())
        if @@Error <> 0
          set @Error = 1
          
        -- Update TransactionRevenue
        update tbACTransactionRevenue
        set inReturnQty = inReturnQty + @QtySave
        where vcIdTransactionRevenue = @IdTransactionRevenue
        if @@Error <> 0
          set @Error = 1
        
        -- Check Qty process
        if @QtyProcess = 0
          Break
        
        -- next record
        fetch next from currTransactionRevenue
        into @IdTransactionRevenue, @QtyHPPLeft, @HPP
      end
      close currTransactionRevenue
      deallocate currTransactionRevenue
            
      -- Update Current Qty SalesInvoiceDt
      update tbIMSalesInvoiceDt
      set inCurrentQty = inCurrentQty - @Qty
      where vcIdSalesInvoice = @IdSalesInvoice
      and vcIdSupplies = @IdSupplies
      if @@Error <> 0
        set @Error = 1
        
      --next record
      fetch next from currSalesReturnDt
      into @No, @IdSupplies, @Qty
    end
    close currSalesReturnDt
    deallocate currSalesReturnDt

    -- update receiving record status use by this return to done    
    select @IdReceivingRecord = vcIdRefRR
    from tbIMSalesReturnHd
    where vcIdSalesReturn = @IdSalesReturn
                         
    update tbIMReceivingRecordHd
    set chStatusApprove = @StatusDone
    where vcIdReceivingRecord = @IdReceivingRecord
    if @@Error <> 0
      set @Error = 1
    
    -- update sales invoice outstanding amount
    select @OutstandingAmount = dcOutstandingTotalAmount
    from tbIMSalesInvoiceHd
    where vcIdSalesInvoice = @IdSalesInvoice
    
    if @OutstandingAmount < @SalesReturnAmount
      set @OutstandingAmountSave = @OutstandingAmount
    else
      set @OutstandingAmountSave = @SalesReturnAmount 
  
    update tbIMSalesInvoiceHd
    set dcOutstandingTotalAmount = dcOutstandingTotalAmount - @OutstandingAmountSave
    where vcIdSalesInvoice = @IdSalesInvoice
    if @@Error <> 0
      set @Error = 1 

    -- Jika OutstandingTotalamount = 0 then SI Done
    if (@OutstandingAmount - @OutstandingAmountSave) = 0
    begin
      update tbIMSalesInvoiceHd
      set chStatusApprove = @StatusDone
      where vcIdSalesInvoice = @IdSalesInvoice
      if @@Error <> 0
        set @Error = 1 
    end  
    
    -- Insert tbACTransactionAR
    insert into tbACTransactionAR
      (vcIdReference, dtDateTransaction, vcIdCustomer, vcIdTransactionType, dcAmount, vcDescription)
    values
      (@IdSalesReturn, @SalesReturnDate, @IdCustomer, @ACTransactionSalesReturn, @OutstandingAmountSave, 
      'Return on Sales Invoice (' + @IdSalesInvoice + ')')  
    if @@Error <>0
      set @Error = 1

    -- Hitung sisa yg belum di proses 
    set @OutstandingAmountSave = @SalesReturnAmount - @OutstandingAmountSave
  
    -- Create DownPaymnet
    if @OutstandingAmountSave <> 0
    begin
      set @SalesDownPaymentDate = getdate()
      set @SalesDownPaymentNotes = 'Date: ' + convert(varchar, @SalesDownPaymentDate, 105) + char(13) + char(10) + 
        'AUTOMATIC CREATE FROM SALES RETURN' + char(13) + char(10) + char(13) + char(10)
      set @IdSalesDownPayment = dbo.fnGetCurrentIdSalesDownPayment(@SalesDownPaymentDate)  
    
      insert into tbACSalesDownPayment
        (vcIdSalesDownPayment, dtSalesDownPaymentDate, vcIdCustomer, vcIdPaymentType, 
        dcAmount, txNotes, vcEmployeeName, chFlagTransType, chStatusApprove)
      values 
        (@IdSalesDownPayment, @SalesDownPaymentDate, @IdCustomer, 1, 
        @OutstandingAmountsave, @SalesDownPaymentNotes, @EmployeeName, 0, 2)    
      if @@Error <> 0
        set @Error = 1
    
      -- Approved
      execute spSalesDownPaymentValidation @IdSalesDownPayment
      if @@Error <> 0
        set @Error = 1    
    end

    -- Update OutstandingTotalAmount & Status Approve on SalesReturnHd
    update tbIMSalesReturnHd
    set dcOutstandingTotalAmount = 0,
      chStatusApprove = @StatusDone
    where vcIdSalesReturn = @IdSalesReturn
    if @@Error <> 0
      set @Error = 1
  end

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
GO


/* Store Procedure : spUpdateSuppliesBalance
   Desc            : Procedure untuk
                     Update quantity and value current supplies
   Create          : Ivan */
   
create procedure spUpdateSuppliesBalance 
  @IdSupplies varchar (20), @IdWarehouse varchar (10), @Year varchar(4), 
  @Month integer, @SignQty integer, @Qty integer, @Price money
with encryption  
as

declare   
  @Error int

begin
  
  -- Check Parameter First
  if (@IdSupplies is null) or (@IdWarehouse is null) or (@Year is null) or (@Month = 0)
    return 99
    
  set @Error = 0
  
  begin transaction
    
  /* update Qty(n) & Value(n) (SuppliesBalance) */
  if (select count(vcIdSupplies) from TbIMSuppliesBalance
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse)
    and (vcYear = @Year)) = 0
  begin 
    /* make new record in supplies balance, without closing period process */
    insert into TbIMSuppliesBalance (vcIdSupplies, vcIdWarehouse, vcYear)
    values (@IdSupplies, @IdWarehouse, @Year)
  end    
  if @Month = 1  /* January */
  begin
    update TbIMSuppliesBalance 
    set inQty1 = inQty1 + (@Qty * @SignQty), dcValue1 = dcValue1 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 2  /* February */
  begin
    update TbIMSuppliesBalance 
    set inQty2 = inQty2 + (@Qty * @SignQty), dcValue2 = dcValue2 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 3  /* March */
  begin
    update TbIMSuppliesBalance 
    set inQty3 = inQty3 + (@Qty * @SignQty), dcValue3 = dcValue3 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 4  /* April */
  begin
    update TbIMSuppliesBalance 
    set inQty4 = inQty4 + (@Qty * @SignQty), dcValue4 = dcValue4 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 5  /* May */
  begin
    update TbIMSuppliesBalance 
    set inQty5 = inQty5 + (@Qty * @SignQty), dcValue5 = dcValue5 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 6  /* June */
  begin
    update TbIMSuppliesBalance 
    set inQty6 = inQty6 + (@Qty * @SignQty), dcValue6 = dcValue6 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 7  /* July */
  begin
    update TbIMSuppliesBalance 
    set inQty7 = inQty7 + (@Qty * @SignQty), dcValue7 = dcValue7 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 8  /* Agust */
  begin
    update TbIMSuppliesBalance 
    set inQty8 = inQty8 + (@Qty * @SignQty), dcValue8 = dcValue8 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 9  /* September */
  begin
    update TbIMSuppliesBalance 
    set inQty9 = inQty9 + (@Qty * @SignQty), dcValue9 = dcValue9 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 10  /* October */
  begin
    update TbIMSuppliesBalance 
    set inQty10 = inQty10 + (@Qty * @SignQty), dcValue10 = dcValue10 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 11  /* November */
  begin
    update TbIMSuppliesBalance 
    set inQty11 = inQty11 + (@Qty * @SignQty), dcValue11 = dcValue11 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  if @Month = 12  /* December */
  begin
    update TbIMSuppliesBalance 
    set inQty12 = inQty12 + (@Qty * @SignQty), dcValue12 = dcValue12 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) and (vcYear = @Year)
  end
  
  if @@Error <> 0
    set @Error = 1
    
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


/* Store Procedure : spUpdateTransactionBalance
   Desc            : Procedure untuk
                     Update quantity and value transaction balances
   Create          : Ivan */
   
create procedure spUpdateTransactionBalance 
  @IdSupplies varchar (20), @IdWarehouse varchar (10), @IdTransactionType varchar(10),
  @Year varchar(4), @Month integer, @SignQty integer, @Qty integer, @Price money
with encryption  
as

declare   
  @Error int

begin
  
  -- Check Parameter First
  if (@IdSupplies is null) or (@IdWarehouse is null) or (@IdTransactionType is null) or (@Year is null) or (@Month = 0)
    return 99
    
  set @Error = 0
  
  begin transaction
    
  -- update Qty(n) & Value(n) (TransactionBalance)
  if (select count(vcIdSupplies) 
    from tbIMTransactionBalance
    where vcIdSupplies = @IdSupplies 
    and vcIdWarehouse = @IdWarehouse
    and vcIdTransactionType = @IdTransactionType
    and vcYear = @Year) = 0
  begin 
    -- make new record in transaction balance, without closing period process
    insert into tbIMTransactionBalance (vcIdSupplies, vcIdWarehouse, vcIdTransactionType, vcYear)
    values (@IdSupplies, @IdWarehouse, @IdTransactionType, @Year)
  end    
  if @Month = 1  -- January 
  begin
    update tbIMTransactionBalance 
    set inQty1 = inQty1 + (@Qty * @SignQty), dcValue1 = dcValue1 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 2  -- February 
  begin
    update tbIMTransactionBalance 
    set inQty2 = inQty2 + (@Qty * @SignQty), dcValue2 = dcValue2 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 3  -- March 
  begin
    update tbIMTransactionBalance 
    set inQty3 = inQty3 + (@Qty * @SignQty), dcValue3 = dcValue3 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 4  -- April 
  begin
    update tbIMTransactionBalance 
    set inQty4 = inQty4 + (@Qty * @SignQty), dcValue4 = dcValue4 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 5  -- May 
  begin
    update tbIMTransactionBalance 
    set inQty5 = inQty5 + (@Qty * @SignQty), dcValue5 = dcValue5 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 6  -- June 
  begin
    update tbIMTransactionBalance 
    set inQty6 = inQty6 + (@Qty * @SignQty), dcValue6 = dcValue6 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 7  -- July 
  begin
    update tbIMTransactionBalance 
    set inQty7 = inQty7 + (@Qty * @SignQty), dcValue7 = dcValue7 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 8  -- Agust 
  begin
    update tbIMTransactionBalance 
    set inQty8 = inQty8 + (@Qty * @SignQty), dcValue8 = dcValue8 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 9  -- September 
  begin
    update tbIMTransactionBalance 
    set inQty9 = inQty9 + (@Qty * @SignQty), dcValue9 = dcValue9 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 10  -- October 
  begin
    update tbIMTransactionBalance 
    set inQty10 = inQty10 + (@Qty * @SignQty), dcValue10 = dcValue10 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 11  -- November 
  begin
    update tbIMTransactionBalance 
    set inQty11 = inQty11 + (@Qty * @SignQty), dcValue11 = dcValue11 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  if @Month = 12  -- December 
  begin
    update tbIMTransactionBalance 
    set inQty12 = inQty12 + (@Qty * @SignQty), dcValue12 = dcValue12 + (@Qty * @Price * @SignQty)
    where (vcIdSupplies = @IdSupplies) and (vcIdWarehouse = @IdWarehouse) 
    and (vcIdTransactionType = @IdTransactionType) and (vcYear = @Year)
  end
  
  if @@Error <> 0
    set @Error = 1
    
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


/* Insert trigger "TR_tbACTransactionAP_Ins" for table "tbACTransactionAP"
   Table  : TbACTransactionAP
   Desc   : 1. Insert/Update tbACAccountPayableBalance
   Create : Ivan */
create trigger TR_tbACTransactionAP_Ins on tbACTransactionAP 
with encryption  
for insert as
begin
  declare
    /* variabel transaction */
    @IdReference varchar (12), @DateTransaction datetime, @IdTransactionType varchar(10), 
    @IdSupplier  varchar (10), @Amount money,

    /* variabel stock transaction type */
    @StatusTransaction char,

    /* variabel temporary */
    @SignQty1 integer
     
  /* get info from transaction */
  select
    @IdReference = vcIdReference, @DateTransaction = dtDateTransaction, 
    @IdTransactionType = vcIdTransactionType, @IdSupplier = vcIdSupplier, 
    @Amount = dcAmount
  from Inserted
  
  /* get info from stock trans type, with match IdTrans (stock trans) */
  select @StatusTransaction = chStatusTransaction
  from tbACTransactionType
  where vcIdTransactionType = @IdTransactionType   

  /* Setting Quantity sign by Transaction Type */
  if @StatusTransaction = 0 /* Transactionk Type >> In (+) */
    set @SignQty1 = 1

  if @StatusTransaction = 1 /* Transactionk Type >> Out (-) */
    set @SignQty1 = -1
  
  -- 1.Insert/Update Amount on tbACAccountPayableBalance
  if Month(@DateTransaction) = 1 
  begin
    update tbACAccountPayableBalance
      set dcValue1 = dcValue1 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue1) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 2
  begin
    update tbACAccountPayableBalance
      set dcValue2 = dcValue2 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue2) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 3 
  begin
    update tbACAccountPayableBalance
      set dcValue3 = dcValue3 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue3) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 4 
  begin
    update tbACAccountPayableBalance
      set dcValue4 = dcValue4 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue4) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 5 
  begin
    update tbACAccountPayableBalance
      set dcValue5 = dcValue5 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue5) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 6 
  begin
    update tbACAccountPayableBalance
      set dcValue6 = dcValue6 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue6) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 7 
  begin
    update tbACAccountPayableBalance
      set dcValue7 = dcValue7 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue7) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 8 
  begin
    update tbACAccountPayableBalance
      set dcValue8 = dcValue8 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue8) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 9 
  begin
    update tbACAccountPayableBalance
      set dcValue9 = dcValue9 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue9) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 10 
  begin
    update tbACAccountPayableBalance
      set dcValue10 = dcValue10 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue10) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 11 
  begin
    update tbACAccountPayableBalance
      set dcValue11 = dcValue11 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue11) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 12 
  begin
    update tbACAccountPayableBalance
      set dcValue12 = dcValue12 + (@Amount * @SignQty1)
    where vcIdSupplier = @IdSupplier
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountPayableBalance (vcIdSupplier, vcYear, dcValue12) 
      values (@IdSupplier, Year(@DateTransaction), (@Amount * @SignQty1))
  end  
end
go


/* Insert trigger "TR_tbACTransactionAR_Ins" for table "tbACTransactionAR"
   Table  : tbACTransactionAR
   Desc   : 1. Insert/Update tbACAccountReceivableBalance
   Create : Ivan */
create trigger TR_tbACTransactionAR_Ins on tbACTransactionAR 
with encryption  
for insert as
begin
  declare
    /* variabel transaction */
    @IdReference varchar (12), @DateTransaction datetime, @IdTransactionType varchar(10), 
    @IdCustomer  varchar (10), @Amount money,

    /* variabel stock transaction type */
    @StatusTransaction char,

    /* variabel temporary */
    @SignQty1 integer
     
  /* get info from transaction */
  select
    @IdReference = vcIdReference, @DateTransaction = dtDateTransaction, 
    @IdTransactionType = vcIdTransactionType, @IdCustomer = vcIdCustomer, 
    @Amount = dcAmount
  from Inserted
 
  /* get info from stock trans type, with match IdTrans (stock trans) */
  select @StatusTransaction = chStatusTransaction
  from tbACTransactionType
  where vcIdTransactionType = @IdTransactionType   

  /* Setting Quantity sign by Transaction Type */
  if @StatusTransaction = 0 /* Transactionk Type >> In (+) */
    set @SignQty1 = 1

  if @StatusTransaction = 1 /* Transactionk Type >> Out (-) */
    set @SignQty1 = -1
  
  -- 1.Insert/Update Amount on tbACAccountReceivableBalance
  if Month(@DateTransaction) = 1 
  begin
    update tbACAccountReceivableBalance
      set dcValue1 = dcValue1 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue1) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 2
  begin
    update tbACAccountReceivableBalance
      set dcValue2 = dcValue2 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue2) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 3 
  begin
    update tbACAccountReceivableBalance
      set dcValue3 = dcValue3 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue3) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 4 
  begin
    update tbACAccountReceivableBalance
      set dcValue4 = dcValue4 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue4) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 5 
  begin
    update tbACAccountReceivableBalance
      set dcValue5 = dcValue5 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue5) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 6 
  begin
    update tbACAccountReceivableBalance
      set dcValue6 = dcValue6 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue6) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 7 
  begin
    update tbACAccountReceivableBalance
      set dcValue7 = dcValue7 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue7) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))    
  end
  if Month(@DateTransaction) = 8 
  begin
    update tbACAccountReceivableBalance
      set dcValue8 = dcValue8 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue8) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 9 
  begin
    update tbACAccountReceivableBalance
      set dcValue9 = dcValue9 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue9) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 10 
  begin
    update tbACAccountReceivableBalance
      set dcValue10 = dcValue10 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue10) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 11 
  begin
    update tbACAccountReceivableBalance
      set dcValue11 = dcValue11 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue11) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end
  if Month(@DateTransaction) = 12 
  begin
    update tbACAccountReceivableBalance
      set dcValue12 = dcValue12 + (@Amount * @SignQty1)
    where vcIdCustomer = @IdCustomer
    and vcYear = Year(@DateTransaction)
    if @@ROWCOUNT = 0 
      insert into tbACAccountReceivableBalance (vcIdCustomer, vcYear, dcValue12) 
      values (@IdCustomer, Year(@DateTransaction), (@Amount * @SignQty1))
  end  
end
go


/* Insert trigger "TR_tbACTransactionRevenue_Ins" for table "tbACTransactionRevenue"
   Table  : TbACTransactionRevenue
   Desc   : 1. Insert tbACRevenueBalance
   Create : Ivan */
   
create trigger TR_tbACTransactionRevenue_Ins on tbACTransactionRevenue 
with encryption  
for insert as
begin
  declare
    -- variabel transaction 
    @IdSupplies varchar (20), @TransactionDate datetime, @Revenue money

  -- get info from transaction 
  select
    @IdSupplies = vcIdSupplies, 
    @TransactionDate = dtTransactionDate, 
    @Revenue = dcRevenue
  from Inserted
  
  -- 1.Insert/Update value on tbACRevenueBalance
  if Month(@TransactionDate) = 1 
  begin
    update tbACRevenueBalance
      set dcValue1 = dcValue1 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue1) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 2
  begin
    update tbACRevenueBalance
      set dcValue2 = dcValue2 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue2) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 3 
  begin
    update tbACRevenueBalance
      set dcValue3 = dcValue3 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue3) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 4 
  begin
    update tbACRevenueBalance
      set dcValue4 = dcValue4 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue4) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 5 
  begin
    update tbACRevenueBalance
      set dcValue5 = dcValue5 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue5) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 6 
  begin
    update tbACRevenueBalance
      set dcValue6 = dcValue6 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue6) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 7 
  begin
    update tbACRevenueBalance
      set dcValue7 = dcValue7 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue7) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 8 
  begin
    update tbACRevenueBalance
      set dcValue8 = dcValue8 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue8) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 9 
  begin
    update tbACRevenueBalance
      set dcValue9 = dcValue9 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue9) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 10 
  begin
    update tbACRevenueBalance
      set dcValue10 = dcValue10 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue10) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 11 
  begin
    update tbACRevenueBalance
      set dcValue11 = dcValue11 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue11) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 12 
  begin
    update tbACRevenueBalance
      set dcValue12 = dcValue12 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue12) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end  
end
go


/*  Update trigger "TR_tbACTransactionRevenue_U" for table "tbACTransactionRevenue"  */
create trigger TR_tbACTransactionRevenue_U on tbACTransactionRevenue 
with encryption  
for update as
begin
  declare
    -- variabel transaction 
    @Revenue money, @IdSupplies varchar (20), @TransactionDate datetime

  -- get Old info from transaction 
  select
    @Revenue = dcRevenue,
    @TransactionDate = dtTransactionDate,
    @IdSupplies = vcIdSupplies    
  from Deleted
  
  -- 1. update old value on tbACRevenueBalance
  if Month(@TransactionDate) = 1 
  begin
    update tbACRevenueBalance
      set dcValue1 = dcValue1 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue1) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 2
  begin
    update tbACRevenueBalance
      set dcValue2 = dcValue2 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue2) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 3 
  begin
    update tbACRevenueBalance
      set dcValue3 = dcValue3 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue3) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)    
  end
  if Month(@TransactionDate) = 4 
  begin
    update tbACRevenueBalance
      set dcValue4 = dcValue4 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue4) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)    
  end
  if Month(@TransactionDate) = 5 
  begin
    update tbACRevenueBalance
      set dcValue5 = dcValue5 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue5) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)    
  end
  if Month(@TransactionDate) = 6 
  begin
    update tbACRevenueBalance
      set dcValue6 = dcValue6 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue6) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)    
  end
  if Month(@TransactionDate) = 7 
  begin
    update tbACRevenueBalance
      set dcValue7 = dcValue7 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue7) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)    
  end
  if Month(@TransactionDate) = 8 
  begin
    update tbACRevenueBalance
      set dcValue8 = dcValue8 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue8) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 9 
  begin
    update tbACRevenueBalance
      set dcValue9 = dcValue9 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue9) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 10 
  begin
    update tbACRevenueBalance
      set dcValue10 = dcValue10 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue10) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 11 
  begin
    update tbACRevenueBalance
      set dcValue11 = dcValue11 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue11) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end
  if Month(@TransactionDate) = 12 
  begin
    update tbACRevenueBalance
      set dcValue12 = dcValue12 - @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue12) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue * -1)
  end 
  
  -- get Old info from transaction 
  select
    @Revenue = dcRevenue,
    @TransactionDate = dtTransactionDate,
    @IdSupplies = vcIdSupplies    
  from inserted

  -- 2. update new value on tbACRevenueBalance
  if Month(@TransactionDate) = 1 
  begin
    update tbACRevenueBalance
      set dcValue1 = dcValue1 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue1) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 2
  begin
    update tbACRevenueBalance
      set dcValue2 = dcValue2 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue2) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 3 
  begin
    update tbACRevenueBalance
      set dcValue3 = dcValue3 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue3) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 4 
  begin
    update tbACRevenueBalance
      set dcValue4 = dcValue4 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue4) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 5 
  begin
    update tbACRevenueBalance
      set dcValue5 = dcValue5 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue5) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 6 
  begin
    update tbACRevenueBalance
      set dcValue6 = dcValue6 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue6) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 7 
  begin
    update tbACRevenueBalance
      set dcValue7 = dcValue7 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue7) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)    
  end
  if Month(@TransactionDate) = 8 
  begin
    update tbACRevenueBalance
      set dcValue8 = dcValue8 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue8) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 9 
  begin
    update tbACRevenueBalance
      set dcValue9 = dcValue9 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue9) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 10 
  begin
    update tbACRevenueBalance
      set dcValue10 = dcValue10 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue10) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 11 
  begin
    update tbACRevenueBalance
      set dcValue11 = dcValue11 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue11) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end
  if Month(@TransactionDate) = 12 
  begin
    update tbACRevenueBalance
      set dcValue12 = dcValue12 + @Revenue
    where vcIdSupplies = @IdSupplies
    and vcYear = Year(@TransactionDate)
    if @@RowCount = 0 
      insert into tbACRevenueBalance (vcIdSupplies, vcYear, dcValue12) 
      values (@IdSupplies, Year(@TransactionDate), @Revenue)
  end   
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
   Create : Ivan */

create trigger TR_tbIMMutation_D on tbIMMutationDt
with encryption  
for delete as
begin
  declare
    -- variabel transaction 
    @IdMutation varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1) 
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdMutation = vcIdMutation,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove
    from tbIMMutationHd
    where vcIdMutation = @IdMutation
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouseSource
      and vcIdSupplies = @IdSupplies
    end
  end
   
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMMutation_IU on tbIMMutationDt
with encryption  
for insert, update as
begin
  declare
    -- variabel transaction 
    @IdMutation varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1) 
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdMutation = vcIdMutation,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove
    from tbIMMutationHd
    where vcIdMutation = @IdMutation
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouseSource
      and vcIdSupplies = @IdSupplies
    end
  end
   
  -- get new info from transaction 
  select
    @IdMutation = vcIdMutation,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Inserted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove
    from tbIMMutationHd
    where vcIdMutation = @IdMutation
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 2.Update tbIMStockOnHandHd (-)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady - @Qty
      where vcIdWarehouse = @IdWarehouseSource
      and vcIdSupplies = @IdSupplies
    end
  end
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMMutationHd_U on tbIMMutationHd
with encryption  
for update as
begin
  declare
    -- variabel transaction 
    @IdMutation varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1)
    
  -- Initial
  set @StatusReject = '5'
  
  -- get Old info from transaction 
  select
    @IdMutation = vcIdMutation,
    @IdWarehouseSource = vcIdWarehouseSource,
    @StatusApprove = chStatusApprove
  from Inserted
  
  if @StatusApprove = @StatusReject
  begin
    declare MutationDetail_Curr cursor for  
      select vcIdSupplies, IsNull(inQty, 0)
      from tbIMMutationDt
      where vcIdMutation = @IdMutation
      order by inNo

    open MutationDetail_Curr    
    fetch next from MutationDetail_Curr
    into @IdSupplies, @Qty

    while @@FETCH_STATUS = 0
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouseSource
      and vcIdSupplies = @IdSupplies
    
      -- Get the next 
      fetch next from MutationDetail_Curr
      into @IdSupplies, @Qty
    end

    close MutationDetail_Curr
    deallocate MutationDetail_Curr
  
  end
end  
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
   Create : Ivan */

create trigger TR_tbIMOtherTransactionDt_D on tbIMOtherTransactionDt
with encryption  
for delete as
begin
  declare
    -- variabel transaction 
    @IdOtherTransaction varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdtransactionType varchar(10), @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusTransaction char(1), @StatusReject char(1), @StatusDone char(1)     
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdOtherTransaction = vcIdOtherTransaction,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)    
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove,
      @IdTransactionType = vcIdtransactionType
    from tbIMOtherTransactionHd
    where vcIdOtherTransaction = @IdOtherTransaction
    
    -- get info from transaction type
    select @StatusTransaction = chStatusTransaction
    from tbIMTransactiontype
    where vcIdTransactionType = @IdTransactionType
    
    if @StatusTransaction <> 0 -- Not transaction in
    begin    
      if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
      begin
        -- 1.Update tbIMStockOnHandHd (+)
        update tbIMStockOnHandHd
        set inEndQtyReady = inEndQtyReady + @Qty
        where vcIdWarehouse = @IdWarehouseSource
        and vcIdSupplies = @IdSupplies
      end
    end
  end
  
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMOtherTransactionDt_IU on tbIMOtherTransactionDt
with encryption  
for insert, update as
begin
  declare
    -- variabel transaction 
    @IdOtherTransaction varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdtransactionType varchar(10), @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusTransaction char(1), @StatusReject char(1), @StatusDone char(1)     
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdOtherTransaction = vcIdOtherTransaction,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)    
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove,
      @IdTransactionType = vcIdtransactionType
    from tbIMOtherTransactionHd
    where vcIdOtherTransaction = @IdOtherTransaction
    
    -- get info from transaction type
    select @StatusTransaction = chStatusTransaction
    from tbIMTransactiontype
    where vcIdTransactionType = @IdTransactionType
    
    if @StatusTransaction <> 0 -- Not transaction in
    begin    
      if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
      begin
        -- 1.Update tbIMStockOnHandHd (+)
        update tbIMStockOnHandHd
        set inEndQtyReady = inEndQtyReady + @Qty
        where vcIdWarehouse = @IdWarehouseSource
        and vcIdSupplies = @IdSupplies
      end
    end
  end
   
  -- get new info from transaction 
  select
    @IdOtherTransaction = vcIdOtherTransaction,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)    
  from Inserted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMMutationHd
    select 
      @IdWarehouseSource = vcIdWarehouseSource,
      @StatusApprove = chStatusApprove,
      @IdTransactionType = vcIdtransactionType
    from tbIMOtherTransactionHd
    where vcIdOtherTransaction = @IdOtherTransaction
    
    -- get info from transaction type
    select @StatusTransaction = chStatusTransaction
    from tbIMTransactiontype
    where vcIdtransactionType = @IdtransactionType
    
    if @StatusTransaction <> 0 -- Not transaction in
    begin    
      if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
      begin
        -- 2.Update tbIMStockOnHandHd (-)
        update tbIMStockOnHandHd
        set inEndQtyReady = inEndQtyReady - @Qty
        where vcIdWarehouse = @IdWarehouseSource
        and vcIdSupplies = @IdSupplies
      end
    end
  end
  
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMOtherTransactionHd_U on tbIMOtherTransactionHd
with encryption  
for update as
begin
  declare
    -- variabel transaction 
    @IdOtherTransaction varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdTransactionType varchar(10), @IdWarehouseSource varchar(10), @StatusApprove char(1),
    -- others
    @StatusTransaction char(1), @StatusReject char(1)
    
  -- Initial
  set @StatusReject = '5'
  
  -- get Old info from transaction 
  select
    @IdOtherTransaction = vcIdOtherTransaction,
    @IdWarehouseSource = vcIdWarehouseSource,
    @IdTransactionType = vcIdTransactionType,
    @StatusApprove = chStatusApprove
  from Inserted
  
  -- get info from transaction type
  select @StatusTransaction = chStatusTransaction
  from tbIMTransactiontype
  where vcIdTransactionType = @IdTransactionType
  
  if (@StatusApprove = @StatusReject) and (@StatusTransaction <> 0)
  begin
    declare OtherTransactionDetail_Curr cursor for  
      select vcIdSupplies, IsNull(inQty, 0)
      from tbIMOtherTransactionDt
      where vcIdOtherTransaction = @IdOtherTransaction
      order by inNo

    open OtherTransactionDetail_Curr    
    fetch next from OtherTransactionDetail_Curr
    into @IdSupplies, @Qty

    while @@FETCH_STATUS = 0
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouseSource
      and vcIdSupplies = @IdSupplies
    
      -- Get the next 
      fetch next from OtherTransactionDetail_Curr
      into @IdSupplies, @Qty
    end

    close OtherTransactionDetail_Curr
    deallocate OtherTransactionDetail_Curr
  
  end
end  
go


/* Create : Ivan */

create trigger TR_tbIMPurchaseReturnDt_D on tbIMPurchaseReturnDt
with encryption  
for delete as
begin
  declare
    -- variabel transaction 
    @IdPurchaseReturn varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1)
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdPurchaseReturn = vcIdPurchaseReturn,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMPurchaseReturnHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMPurchaseReturnHd
    where vcIdPurchaseReturn = @IdPurchaseReturn
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
   
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMPurchaseReturnDt_IU on tbIMPurchaseReturnDt
with encryption  
for insert, update as
begin
  declare
    -- variabel transaction 
    @IdPurchaseReturn varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1)
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdPurchaseReturn = vcIdPurchaseReturn,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMPurchaseReturnHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMPurchaseReturnHd
    where vcIdPurchaseReturn = @IdPurchaseReturn
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
   
  -- get new info from transaction 
  select
    @IdPurchaseReturn = vcIdPurchaseReturn,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Inserted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMPurchaseReturnHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMPurchaseReturnHd
    where vcIdPurchaseReturn = @IdPurchaseReturn
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 2.Update tbIMStockOnHandHd (-)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady - @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
  
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (-)
            2.Update Current Qty tbIMPurchaseInvoiceDt (+)
   Create : Noven */

create trigger TR_tbIMPurchaseReturnHd_U on tbIMPurchaseReturnHd
--with encryption  
for update as
begin
  declare
    -- variabel transaction 
    @IdPurchaseReturn varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1), @IdPurchaseInvoice varchar(12),
    -- others
    @IdDeliveryOrder varchar(14), @StatusReject char(1)
    
  -- Initial
  set @StatusReject = '5'
  
  -- get Old info from transaction 
  select
    @IdPurchaseReturn = vcIdPurchaseReturn,
    @IdPurchaseInvoice = vcIdPurchaseInvoice,
    @IdWarehouse = vcIdWarehouse,
    @StatusApprove = chStatusApprove
  from Inserted
  
  if @StatusApprove = @StatusReject
  begin
    declare PurchaseReturnDetail_Curr cursor for  
      select vcIdSupplies, IsNull(inQty, 0)
      from tbIMPurchaseReturnDt
      where vcIdPurchaseReturn = @IdPurchaseReturn
      order by inNo

    open PurchaseReturnDetail_Curr
    
    fetch next from PurchaseReturnDetail_Curr
    into @IdSupplies, @Qty

    while @@FETCH_STATUS = 0
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady - @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
      
      -- 2.Update currentQty tbIMSalesInvoiceDt (+)
      update tbIMPurchaseInvoiceDt
      set inCurrentQty = inCurrentQty + @Qty
      where vcIdPurchaseInvoice = @IdPurchaseInvoice
      and vcIdSupplies = @IdSupplies
    
      -- Get the next 
      fetch next from PurchaseReturnDetail_Curr
      into @IdSupplies, @Qty
    end

    close PurchaseReturnDetail_Curr
    deallocate PurchaseReturnDetail_Curr
  
    -- get information from PurchaseReturnHd
    select @IdDeliveryOrder = vcIdRefDO
    from tbIMPurchaseReturnHd
    where vcIdPurchaseReturn = @IdPurchaseReturn
    
    update tbIMDeliveryOrderHd
    set chStatusApprove = @StatusReject
    where vcIdDeliveryOrder = @IdDeliveryOrder     
  end
end
go


/* Desc   : Auto approve mutasi transaksi
   Create : Ivan */

create trigger TR_tbIMReceivingRecordHd_U on tbIMReceivingRecordHd
with encryption  
for update as
begin
  declare
    -- variabel transaction
    @IdMutation varchar(12), @IdRefDO varchar(14), @IdRefRR varchar(14),
    @IdWarehouseSource varchar(10), @FlagMutation char(1), @StatusApprove char(1), 
    @StatusApproveDO char(1)
  
  -- get Old info from transaction
  select    
    @IdRefRR = vcIdReceivingRecord,
    @FlagMutation = chFlagMutation,
    @StatusApprove = chStatusApprove
  from Inserted
  
  if (@StatusApprove = '2') and (@FlagMutation = '1')
  begin
    -- Get DeliveryOrderId and MutationId
    select 
      @IdMutation = vcIdMutation, 
      @IdRefDO = vcIdRefDO
    from tbIMMutationHd     
    where vcIdRefRR = @IdRefRR
    
    select @StatusApproveDO = chStatusApprove
    from tbIMDeliveryOrderHd
    where vcIdDeliveryOrder = @IdRefDO
    
    -- DO sudah di approve
    if (@StatusApproveDO = '6')
    begin
      update tbIMMutationHd
      set chStatusApprove = '3'
      where vcIdMutation = @IdMutation
      
      -- Validate
      execute spMutationValidation @IdMutation, '3'
    end    
  end
end  
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
   Create : Ivan */

create trigger TR_tbIMSalesInvoiceDt_D on tbIMSalesInvoiceDt
with encryption  
for delete as
begin
  declare
    -- variabel transaction 
    @IdSalesInvoice varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1)
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdSalesInvoice = vcIdSalesInvoice,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMSalesInvoiceHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMSalesInvoiceHd
    where vcIdSalesInvoice = @IdSalesInvoice
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
   
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMSalesInvoiceDt_IU on tbIMSalesInvoiceDt
with encryption  
for insert, update as
begin
  declare
    -- variabel transaction 
    @IdSalesInvoice varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1), @StatusDone char(1)
    
  -- Initial
  set @StatusReject = '5'
  set @StatusDone = '6'  
  
  -- get Old info from transaction 
  select
    @IdSalesInvoice = vcIdSalesInvoice,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Deleted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMSalesInvoiceHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMSalesInvoiceHd
    where vcIdSalesInvoice = @IdSalesInvoice
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
   
  -- get new info from transaction 
  select
    @IdSalesInvoice = vcIdSalesInvoice,
    @IdSupplies = vcIdSupplies,
    @Qty = IsNull(inQty, 0)
  from Inserted
  
  if IsNull(@Qty, 0) > 0 
  begin
    -- get info from tbIMSalesInvoiceHd
    select 
      @IdWarehouse = vcIdWarehouse,
      @StatusApprove = chStatusApprove
    from tbIMSalesInvoiceHd
    where vcIdSalesInvoice = @IdSalesInvoice
    
    if (@StatusApprove <> @StatusReject) and (@StatusApprove <> @StatusDone)
    begin
      -- 2.Update tbIMStockOnHandHd (-)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady - @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    end
  end
  
end
go


/* Desc   : 1.Update tbIMStockOnHandHd (+)
            2.Update tbIMStockOnHandHd (-)
   Create : Ivan */

create trigger TR_tbIMSalesInvoiceHd_U on tbIMSalesInvoiceHd
with encryption  
for update as
begin
  declare
    -- variabel transaction 
    @IdSalesInvoice varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1),
    -- others
    @StatusReject char(1)
    
  -- Initial
  set @StatusReject = '5'
  
  -- get Old info from transaction 
  select
    @IdSalesInvoice = vcIdSalesInvoice,
    @IdWarehouse = vcIdWarehouse,
    @StatusApprove = chStatusApprove
  from Inserted
  
  if @StatusApprove = @StatusReject
  begin
    declare SalesDetail_Curr cursor for  
      select vcIdSupplies, IsNull(inQty, 0)
      from tbIMSalesInvoiceDt
      where vcIdSalesInvoice = @IdSalesInvoice
      order by inNo

    open SalesDetail_Curr
    
    fetch next from SalesDetail_Curr
    into @IdSupplies, @Qty

    while @@FETCH_STATUS = 0
    begin
      -- 1.Update tbIMStockOnHandHd (+)
      update tbIMStockOnHandHd
      set inEndQtyReady = inEndQtyReady + @Qty
      where vcIdWarehouse = @IdWarehouse
      and vcIdSupplies = @IdSupplies
    
      -- Get the next 
      fetch next from SalesDetail_Curr
      into @IdSupplies, @Qty
    end

    close SalesDetail_Curr
    deallocate SalesDetail_Curr
  
  end
end  
go


/* Desc   : 1.Update tbIMStockOnHandHd (-)
            2.Update Current Qty tbIMsalesInvoiceDt (+)
   Create : Noven */

create trigger TR_tbIMSalesReturnHd_U on tbIMSalesReturnHd
for update as
begin
  declare
    -- variabel transaction 
    @IdSalesReturn varchar(12), @IdSupplies varchar(20), @Qty integer, 
    @IdWarehouse varchar(10), @StatusApprove char(1), @IdSalesInvoice varchar(12),
    -- others
    @IdReceivingRecord varchar(14), @StatusReject char(1)
    
  -- Initial
  set @StatusReject = '5'
  
  -- get Old info from transaction 
  select
    @IdSalesReturn = vcIdSalesReturn,
    @IdSalesInvoice = vcIdSalesInvoice,
    @IdWarehouse = vcIdWarehouse,
    @StatusApprove = chStatusApprove
  from Inserted
  
  if @StatusApprove = @StatusReject
  begin
    --declare SalesReturnDetail_Curr cursor for  
    --  select vcIdSupplies, IsNull(inQty, 0)
    --  from tbIMSalesReturnDt
    --  where vcIdSalesReturn = @IdSalesReturn
    --  order by inNo

    --open SalesReturnDetail_Curr
    
    --fetch next from SalesReturnDetail_Curr
    --into @IdSupplies, @Qty

    --while @@FETCH_STATUS = 0
    --begin
    --  -- 1.Update tbIMStockOnHandHd (+)
    --  update tbIMStockOnHandHd
    --  set inEndQtyReady = inEndQtyReady - @Qty
    --  where vcIdWarehouse = @IdWarehouse
    --  and vcIdSupplies = @IdSupplies
      
    --  -- 2.Update currentQty tbIMSalesInvoiceDt (+)
    --  update tbIMSalesInvoiceDt
    --  set inCurrentQty = inCurrentQty + @Qty
    --  where vcIdSalesInvoice = @IdSalesInvoice
    --  and vcIdSupplies = @IdSupplies
    
    --  -- Get the next 
    --  fetch next from SalesReturnDetail_Curr
    --  into @IdSupplies, @Qty
    --end

    --close SalesReturnDetail_Curr
    --deallocate SalesReturnDetail_Curr
    
    -- get information from SalesReturnHd
    select @IdReceivingRecord = vcIdRefRR
    from tbIMSalesReturnHd 
    where vcIdSalesReturn = @IdSalesReturn
    
    update tbIMReceivingRecordHd 
    set chStatusApprove = @StatusReject
    where vcIdReceivingRecord = @IdReceivingRecord
  
  end
end 
go


/* Update trigger "TR_tbIMStockOnHandDt_Upd" for table "tbIMStockOnHandDt"
   Table  : TbIMStockOnHandDt (After Update)
   Desc   : Trigger for auto delete record if new dcQty value is 0
   Create : Ivan */
create trigger TR_tbIMStockOnHandDt_Upd on tbIMStockOnHandDt 
with encryption  
for update as
begin
  declare
    @IdSuppliesNew varchar(20),
    @IdWarehouseNew varchar(10),
    @DateNew datetime,
    @QtyNew integer
    
  /* get new record */
  select
    @IdSuppliesNew = vcIdSupplies,
    @IdWarehouseNew = vcIdWarehouse,
    @DateNew = dtDate,
    @QtyNew = inQty
  from Inserted

  /* Main Procces */
  if @QtyNew = 0
  begin
    delete from TbIMStockOnHandDt
    where vcIdSupplies = @IdSuppliesNew
    and vcIdWarehouse = @IdWarehouseNew
    and dtDate = @DateNew
    and inQty = 0
  end  
end
go


/* Insert trigger "TR_tbIMTransaction_Ins" for table "tbIMTransaction"
   Table  : TbIMTransaction
   Desc   : 1.Setting Quantity sign by Transaction Type
            2.Create stock on hand header is not exist
            3.Process transaction stock plus  
            4.Process transaction stock minus
            5.Process transaction stock transfer in
            6.Insert tbACTransactionRevenue if current transaction is sales
            7.Insert tbIMMutationPrice if current transaction is mutation out             
   Create : Ivan */

create trigger TR_tbIMTransaction_Ins on tbIMTransaction 
with encryption  
for insert as
begin
  declare
    -- variabel transaction 
    @IdTransaction uniqueidentifier, @IdReference varchar (12), @DateTransaction datetime, 
    @IdTransactionType varchar(10), @IdSupplies  varchar (20), @IdWarehouseSource varchar (10), 
    @IdWarehouseDest varchar (10), @Qty integer, @Price money, @CurrentQty integer, 
    @CurrentPrice money, @CurrentDate datetime, @PriceSave money, @QtyLeft integer, @QtySave integer, 
    -- variabel stock transaction type
    @StatusTransaction char, @StockType varchar(10),
    -- variabel supplies 
    @LastValue money, @TotalLastValue money,
    -- variabel stock on hand 
    @EndQty money,
    -- others
    @Year varchar(4), @Month varchar(2), @SignQty1 integer, @SignQty2 integer,
    @NewLastValue money, @NewLastValueDate datetime, @NewTotalLastValue money,
    @HPPAmount money, @SalesAmount money, @RevenueAmount money,
    @AllQty int, @AllPrice money, @FlagService char
     
  -- get info from transaction 
  select
    @IdTransaction = vcIdTransaction,
    @IdReference = vcIdReference, 
    @DateTransaction = dtDateTransaction, 
    @IdTransactionType = vcIdTransactionType, 
    @IdSupplies = vcIdSupplies, 
    @IdWarehouseSource = vcIdWarehouseSource, 
    @IdWarehouseDest = vcIdWarehouseDest, 
    @Qty = IsNull(inQty, 0), 
    @Price = IsNull(dcPrice, 0)
  from Inserted
 
  -- get info from supplies
  select @FlagService = chFlagService 
  from tbIMSupplies where vcIdSupplies = @IdSupplies
   
  -- get info from stock trans type, with match IdTrans (stock trans) 
  select @StatusTransaction = chStatusTransaction
  from TbIMTransactionType
  where vcIdTransactionType = @IdTransactionType
  
  -- get info about stock type (FIFO / LIFO / AVG) 
  select @StockType = SetupValue
  from Setup
  where ProgramId = 'NOVA_IM'
  and SetupId = 'STOCK'
  
  -- Initial
  set @Year = Cast(Year(@DateTransaction) as varchar(4))
  set @Month = Cast(Month(@DateTransaction) as varchar(2))
  
  -- 1.Setting Quantity sign by Transaction Type 
  if @StatusTransaction = 0 /* Transactionk Type >> In (+) */
  begin    
    set @SignQty1 = 1
    set @SignQty2 = 0
  end 
  if @StatusTransaction = 1 /* Transactionk Type >> Out (-) */
  begin    
    set @SignQty1 = -1
    set @SignQty2 = 0
  end
  if @StatusTransaction = 2 /* Transactionk Type >> Transfer (-) (+) */  
  begin    
    set @SignQty1 = -1
    set @SignQty2 = 1
  end
  
  -- 2.Create stock on hand header is not exist
  if (select count(vcIdSupplies)
    from TbIMStockOnHandHd
    where vcIdSupplies = @IdSupplies
    and vcIdWarehouse = @IdWarehouseSource) = 0
  begin
    insert into TbIMStockOnHandHd (vcIdSupplies, vcIdWarehouse)
    values (@IdSupplies, @IdWareHouseSource)
  end   
  if IsNull(@IdWarehouseDest, '') <> ''
  begin
    if (select count(vcIdSupplies)
      from TbIMStockOnHandHd
      where vcIdSupplies = @IdSupplies
      and vcIdWarehouse = @IdWarehouseDest) = 0
    begin
      insert into TbIMStockOnHandHd (vcIdSupplies, vcIdWarehouse)
      values (@IdSupplies, @IdWareHouseDest)
    end
  end
    
  -- 3.Process transaction stock plus  
  if (@SignQty1 = 1) 
  begin
    -- Check for service supplies
    if @FlagService <> '1'
    begin
      if (@StockType = 'FIFO') or (@StockType = 'LIFO')
      begin
        set @PriceSave = @Price
      
        -- update stock on hand header detail (+)
        update TbIMStockOnHandDt
        set inQty = inQty + @Qty
        where vcIdSupplies = @IdSupplies
        and vcIdWarehouse = @IdWarehouseSource
        and dtDate = @DateTransaction 
        and dcPrice = @PriceSave
        if @@RowCount = 0
        begin
          insert into TbIMStockOnHandDt (vcIdSupplies, vcIdWarehouse, dtDate, inQty, dcPrice)
          values (@IdSupplies, @IdWarehouseSource, @DateTransaction, @Qty, @PriceSave)
        end     
      end
            
      if @StockType = 'AVG'
      begin
        -- Calculate new average price
        select 
          @CurrentQty = inQty, 
          @CurrentPrice = dcPrice 
        from tbIMStockOnHandDt
        where vcIdSupplies = @IdSupplies
        and vcIdWarehouse = @IdWarehouseSource
    
        set @CurrentQty = IsNull(@CurrentQty, 0)
        set @CurrentPrice = IsNull(@CurrentPrice, 0)
        set @PriceSave = ((@CurrentQty * @CurrentPrice) + (@Qty * @Price)) / (@CurrentQty + @Qty)      
     
        -- update stock on hand detail (+)
        update TbIMStockOnHandDt
        set 
          inQty = inQty + @Qty,
          dtDate = @DateTransaction,
          dcPrice = @PriceSave
        where vcIdSupplies = @IdSupplies
        and vcIdWarehouse = @IdWarehouseSource
        if @@RowCount = 0
        begin
          insert into TbIMStockOnHandDt (vcIdSupplies, vcIdWarehouse, dtDate, inQty, dcPrice)
          values (@IdSupplies, @IdWarehouseSource, @DateTransaction, @Qty, @PriceSave)
        end
      end      
    
      -- update stock on hand header (+)
      update TbIMStockOnHandHd
      set 
        inEndQty = inEndQty + @Qty,
        dcEndValue = dcEndValue + (@Qty * @PriceSave),
        inEndQtyReady = inEndQtyReady + @Qty
      where vcIdSupplies = @IdSupplies
      and vcIdWarehouse = @IdWarehouseSource
      
      -- Update supplies balance (+) 
      exec spUpdateSuppliesBalance @IdSupplies, @IdWarehouseSource, @Year, @Month, 1, @Qty, @PriceSave   
          
      -- insert transaction costing (+)
      insert into tbIMTransactionCosting (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, dtTransactionCostingDate, 
        dtStockDate, inQty, dcPrice, dcAmount, dtSystemStamp)
      values (@IdWarehouseSource, @IdTransactionType, @IdSupplies, @DateTransaction, 
        @DateTransaction, @Qty, @PriceSave, (@Qty * @PriceSave), getdate())    
    
      -- Update transaction balance (+) 
      exec spUpdateTransactionBalance @IdSupplies, @IdWarehouseSource, @IdTransactionType, @Year, @Month, 1, @Qty, @PriceSave
    end
    else
    begin
      -- insert transaction costing (+)
      insert into tbIMTransactionCosting (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, dtTransactionCostingDate, 
        dtStockDate, inQty, dcPrice, dcAmount, dtSystemStamp)
      values (@IdWarehouseSource, @IdTransactionType, @IdSupplies, @DateTransaction, 
        @DateTransaction, @Qty, @Price, (@Qty * @Price), getdate())    
    
      -- Update transaction balance (+) 
      exec spUpdateTransactionBalance @IdSupplies, @IdWarehouseSource, @IdTransactionType, @Year, @Month, 1, @Qty, @Price    
    end
  end
  
  -- 4.Process transaction stock minus
  if (@SignQty1 = -1) 
  begin    
    -- Check for service supplies
    if @FlagService <> '1'
    begin
      -- create cursor for FIFO/LIFO/AVG process
      if (@StockType = 'FIFO') or (@StockType = 'AVG') 
      begin
        declare Curr_StockOnHandDt cursor for
          select inQty, dcPrice, dtDate 
          from tbIMStockOnHandDt
          where vcIdSupplies = @IdSupplies
          and vcIdWarehouse = @IdWarehouseSource
          order by dtDate asc, dcPrice      
      end
      if (@StockType = 'LIFO')
      begin
        declare Curr_StockOnHandDt cursor for
          select inQty, dcPrice, dtDate
          from tbIMStockOnHandDt
          where vcIdSupplies = @IdSupplies
          and vcIdWarehouse = @IdWarehouseSource
          order by dtDate desc, dcPrice      
      end
    
      open Curr_StockOnHandDt
      fetch next from Curr_StockOnHandDt into @CurrentQty, @CurrentPrice, @CurrentDate
    
      -- Processing FIFO/LIFO/AVG
      set @QtyLeft = @Qty
      while @@Fetch_Status = 0
      begin
        if @CurrentQty <= @QtyLeft
        begin 
          set @QtySave = @CurrentQty
          set @QtyLeft = @QtyLeft - @QtySave
        end
        else
        begin
          set @QtySave = @QtyLeft
          set @QtyLeft = 0
        end
      
        -- Update stock on hand detail (-)
        update TbIMStockOnHandDt
        set inQty = inQty - @QtySave
        where vcIdSupplies = @IdSupplies
        and vcIdWarehouse = @IdWarehouseSource
        and dtDate = @CurrentDate
        and dcPrice = @CurrentPrice
        if @@RowCount = 0
        begin
          insert into TbIMStockOnHandDt (vcIdSupplies, vcIdWarehouse, dtDate, inQty, dcPrice)
          values (@IdSupplies, @IdWarehouseSource, @CurrentDate, @QtySave * -1, @CurrentPrice)
        end
      
        -- update stock on hand header (-)
        update TbIMStockOnHandHd
        set 
          inEndQty = inEndQty - @QtySave,
          dcEndValue = dcEndValue - (@QtySave * @CurrentPrice) -- Don't unpdate inEndQtyReady !!!!
        where vcIdSupplies = @IdSupplies
        and vcIdWarehouse = @IdWarehouseSource    
      
        -- Update supplies balance (-)
        exec spUpdateSuppliesBalance @IdSupplies, @IdWarehouseSource, @Year, @Month, -1, @QtySave, @CurrentPrice
      
        -- insert transaction costing (-)
        insert into tbIMTransactionCosting (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, dtTransactionCostingDate,
          dtStockDate, inQty, dcPrice, dcAmount, dtSystemStamp)
        values (@IdWarehouseSource, @IdTransactionType, @IdSupplies, @DateTransaction,
          @CurrentDate, (@QtySave * -1), @CurrentPrice, (@QtySave * @CurrentPrice * -1), getdate())    
      
        -- Update transaction balance (-) 
        exec spUpdateTransactionBalance @IdSupplies, @IdWarehouseSource, @IdTransactionType, @Year, @Month, -1, @QtySave, @CurrentPrice
      
        -- 4.Process transaction stock transfer in --> Tidak pernah dipakai (harusnya)
        if (IsNull(@IdWarehouseDest, '') <> '') and (@SignQty2 = 1) 
        begin
          -- Stock always plus (transaction mutation)
          if (@StockType = 'FIFO') or (@StockType = 'LIFO')
          begin
            set @PriceSave = @CurrentPrice
            -- update stock on hand header detail (+)
            update TbIMStockOnHandDt
            set inQty = inQty + @QtySave
            where vcIdSupplies = @IdSupplies
            and vcIdWarehouse = @IdWarehouseDest
            and dtDate = @DateTransaction 
            and dcPrice = @PriceSave
            if @@RowCount = 0
            begin
              insert into TbIMStockOnHandDt (vcIdSupplies, vcIdWarehouse, dtDate, inQty, dcPrice)
              values (@IdSupplies, @IdWarehouseDest, @DateTransaction, @QtySave, @PriceSave)
            end     
          end
           
          if @StockType = 'AVG'
          begin
            -- Calculate new average price
            select 
              @AllQty = inQty, 
              @AllPrice = dcPrice 
            from tbIMStockOnHandDt
            where vcIdSupplies = @IdSupplies
            and vcIdWarehouse = @IdWarehouseDest
      
            set @AllQty = IsNull(@AllQty, 0)
            set @AllPrice = IsNull(@AllPrice, 0)
            set @PriceSave = ((@AllQty * @AllPrice) + (@QtySave * @CurrentPrice)) / (@AllQty + @QtySave)      
      
            -- update stock on hand detail (+)
            update TbIMStockOnHandDt
            set 
              inQty = inQty + @QtySave,
              dtDate = @DateTransaction,
              dcPrice = @PriceSave
            where vcIdSupplies = @IdSupplies
            and vcIdWarehouse = @IdWarehouseDest
            if @@RowCount = 0
            begin
              insert into TbIMStockOnHandDt (vcIdSupplies, vcIdWarehouse, dtDate, inQty, dcPrice)
              values (@IdSupplies, @IdWarehouseDest, @DateTransaction, @QtySave, @PriceSave)
            end      
          end
              
          -- update stock on hand header (+)
          update TbIMStockOnHandHd
          set 
            inEndQty = inEndQty + @QtySave,
            dcEndValue = dcEndValue + (@QtySave * @PriceSave),
            inEndQtyReady = inEndQtyReady + @Qty
          where vcIdSupplies = @IdSupplies
          and vcIdWarehouse = @IdWarehouseDest
    
          -- Update supplies balance (+)     
          exec spUpdateSuppliesBalance @IdSupplies, @IdWarehouseDest, @Year, @Month, 1, @QtySave, @PriceSave
      
          -- insert transaction costing
          insert into tbIMTransactionCosting (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, dtTransactionCostingDate,
            dtStockDate, inQty, dcPrice, dcAmount, dtSystemStamp)
          values (@IdWarehouseDest, @IdTransactionType, @IdSupplies, @DateTransaction,
            @CurrentDate, @QtySave, @PriceSave, (@QtySave * @PriceSave), getdate())    
      
          -- Update transaction balance (+) 
          exec spUpdateTransactionBalance @IdSupplies, @IdWarehouseDest, @IdTransactionType, @Year, @Month, 1, @QtySave, @PriceSave
        end    
      
        -- 6.Insert tbACTransactionRevenue if current transaction is sales
        if @IdTransactionType = 'TY002'
        begin
          set @HPPAmount = (@QtySave * @CurrentPrice)
          set @SalesAmount = (@QtySave * @Price)
          set @RevenueAmount = @SalesAmount - @HPPAmount

          insert into tbACTransactionRevenue
            (vcIdSupplies, dtTransactionDate, vcIdReference, inQty, dcHPP, dcSalesPrice, 
            dcTotalHPP, dcTotalSales, dcRevenue, chFlagBalanceMinus)
          values
            (@IdSupplies, @DateTransaction, @IdReference, @QtySave, @CurrentPrice, @Price, @HPPAmount, @SalesAmount, 
            @RevenueAmount, 0)  -- tbACRevenueBalance (+) 
        end
       
        -- 7.Insert tbIMMutationPrice if current transaction is mutation out
        if @IdTransactionType = 'TY006'
        begin
          update tbIMMutationPrice
          set inQty = inQty + @QtySave
          where vcIdMutation = @IdReference
          and vcIdSupplies = @IdSupplies
          and dtDate = @CurrentDate
          and dcPrice = @CurrentPrice
          if @@RowCount = 0
          begin
            insert into tbIMMutationPrice
              (vcIdMutation, vcIdSupplies, dtDate, dcPrice, inQty)
            values
              (@IdReference, @IdSupplies, @CurrentDate, @CurrentPrice, @QtySave)          
          end 
        end    
      
        -- Next
        if @QtyLeft = 0
          break
        fetch next from Curr_StockOnHandDt into @CurrentQty, @CurrentPrice, @CurrentDate
      end
    
      close Curr_StockOnHandDt
      deallocate  Curr_StockOnHandDt
    end  
    else
    begin
      -- insert transaction costing (-)
      insert into tbIMTransactionCosting (vcIdWarehouse, vcIdTransactionType, vcIdSupplies, dtTransactionCostingDate,
        dtStockDate, inQty, dcPrice, dcAmount, dtSystemStamp)
      values (@IdWarehouseSource, @IdTransactionType, @IdSupplies, @DateTransaction,
        @DateTransaction, (@Qty * -1), @Price, (@Qty * @Price * -1), getdate())    
      
      -- Update transaction balance (-) 
      exec spUpdateTransactionBalance @IdSupplies, @IdWarehouseSource, @IdTransactionType, @Year, @Month, -1, @Qty, @Price  
    end
  end
end
go

