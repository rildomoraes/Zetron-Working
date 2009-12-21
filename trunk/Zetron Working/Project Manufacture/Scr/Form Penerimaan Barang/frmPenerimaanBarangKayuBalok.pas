unit frmPenerimaanBarangKayuBalok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPenerimaanBarang, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, cxMemo, cxDBEdit, cxPC, cxGridLevel, cxGridDBTableView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxCheckBox, cxDropDownEdit, cxCalendar, dxDockPanel, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB, cxCalc, DateUtils, Math;

type
  TfmPenerimaanBarangKayuBalok = class(TfmPenerimaanBarang)
    qryRekapKayuMuat: TADODataSet;
    dsRekapKayuMuat: TDataSource;
    cgvRekapKayuMuat: TcxGridDBTableView;
    cgvRekapKayuMuatKayuMuatId: TcxGridDBColumn;
    cgvRekapKayuMuatKayuMuatCode: TcxGridDBColumn;
    cgvRekapKayuMuatPurchaseOrderId: TcxGridDBColumn;
    cgvRekapKayuMuatPurchaseOrderCode: TcxGridDBColumn;
    cgvRekapKayuMuatPurchaseOrderExternal: TcxGridDBColumn;
    cgvRekapKayuMuatKayuMuatDate: TcxGridDBColumn;
    cgvRekapKayuMuatFlagClose: TcxGridDBColumn;
    qryPrevItemPeriode: TADODataSet;
    dsPrevItemPeriode: TDataSource;
    cgMasterSetup: TcxGrid;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvPrevItemPeriode: TcxGridDBTableView;
    cgvPrevItemPeriodeitemid: TcxGridDBColumn;
    cgvPrevItemPeriodeitemname: TcxGridDBColumn;
    qryPrevKayuMuat: TADODataSet;
    dsPrevKayuMuat: TDataSource;
    cgvPrevPurchaseInvoice: TcxGridDBTableView;
    cgvTallySheet: TcxGridDBTableView;
    cgvTallySheetTallySheetId: TcxGridDBColumn;
    cgvTallySheetTallySheetCode: TcxGridDBColumn;
    cgvTallySheetTotalQty: TcxGridDBColumn;
    cgvTallySheetTotalLuas: TcxGridDBColumn;
    cgvTallySheetTotalVolume: TcxGridDBColumn;
    cgvTallySheetTotalBerat: TcxGridDBColumn;
    cgvPrevPurchaseInvoicepurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevPurchaseInvoicepurchaseinvoicecode: TcxGridDBColumn;
    cgvPrevPurchaseInvoicevendorname: TcxGridDBColumn;
    lblNoKayuMuat: TLabel;
    dbeRekapKayuMuat: TcxDBExtLookupComboBox;
    cgvPrevKayuMuat: TcxGridDBTableView;
    cgvPrevKayuMuatkayumuatcode: TcxGridDBColumn;
    cgvPrevKayuMuatlokasimuat: TcxGridDBColumn;
    cgvPrevKayuMuatvendorcode: TcxGridDBColumn;
    cgvPrevKayuMuatvendorname: TcxGridDBColumn;
    cgvPrevKayuMuatTotal_Nilai: TcxGridDBColumn;
    cgvPrevKayuMuatpurchaseordercode: TcxGridDBColumn;
    cgvPrevKayuMuatpurchaseinvoicecode: TcxGridDBColumn;
    PcReceivingRecordDetail: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cgLPB: TcxGrid;
    cgLPBLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    qryTallysheet: TADODataSet;
    dsTallysheet: TDataSource;
    qryTallySheetDt: TADODataSet;
    dsTallySheetDt: TDataSource;
    qryTallySheetHistory: TADODataSet;
    dsTableHistory: TDataSource;
    qryPrevItemKayuMuat: TADODataSet;
    dsPrevItemKayuMuat: TDataSource;
    cgvPrevItemKayuMuat: TcxGridDBTableView;
    cgvPrevItemKayuMuatitemid: TcxGridDBColumn;
    cgvPrevItemKayuMuatitemcode: TcxGridDBColumn;
    cgvPrevItemKayuMuatitemname: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    Splitter2: TSplitter;
    cgvPrevRekapKayuMuatDt: TcxGridDBTableView;
    dsPrevRekapKayuMuat: TDataSource;
    qryPrevRekapKayuMuat: TADODataSet;
    cgvPrevRekapKayuMuatDtNoTally: TcxGridDBColumn;
    cgvPrevRekapKayuMuatDtT: TcxGridDBColumn;
    cgvPrevRekapKayuMuatDtL: TcxGridDBColumn;
    cgvPrevRekapKayuMuatDtP: TcxGridDBColumn;
    cgvPrevRekapKayuMuatDtM3: TcxGridDBColumn;
    cgvSJ: TcxGridDBTableView;
    cgvSJReceivingRecordId: TcxGridDBColumn;
    cgvSJSJId: TcxGridDBColumn;
    cgvSJSJDate: TcxGridDBColumn;
    cgvSJNoPolisi: TcxGridDBColumn;
    cgvSJKendaraan: TcxGridDBColumn;
    cgvSJNoFAKO: TcxGridDBColumn;
    cgvSJNoCont: TcxGridDBColumn;
    cgvSJDescription: TcxGridDBColumn;
    cgvTallyReceivingRecordId: TcxGridDBColumn;
    cgvTallyNo: TcxGridDBColumn;
    cgvTallyItemId: TcxGridDBColumn;
    cgvTallyTransactionId: TcxGridDBColumn;
    cgvTallyPrice: TcxGridDBColumn;
    cgvTallyPricePrint: TcxGridDBColumn;
    cgvTallyTotalQty: TcxGridDBColumn;
    cgvTallyTotalLuas: TcxGridDBColumn;
    cgvTallyTotalVolume: TcxGridDBColumn;
    cgvTallyTotalBerat: TcxGridDBColumn;
    cgvTallyAmount: TcxGridDBColumn;
    cgvLPBDetailTallySheetDt: TcxGridDBTableView;
    cgvLPBDetailTallySheetDtTallySheetId: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtNo: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtT: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtL: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtP: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtD1: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtD2: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtDRata: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtM3: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtBerat: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtQty: TcxGridDBColumn;
    cgvLPBDetailTallySheetDtLuas: TcxGridDBColumn;
    cgvLPBDetailTallySheet: TcxGridDBTableView;
    cgvLPBDetailTallySheetTallySheetId: TcxGridDBColumn;
    cgvLPBDetailTallySheetTallySheetCode: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalQty: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalLuas: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalVolume: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalBerat: TcxGridDBColumn;
    cgvLPBDetailTallySheetPurchaseInvoiceId: TcxGridDBColumn;
    cgvLPBDetailTallySheetWarehouseId: TcxGridDBColumn;
    Splitter1: TSplitter;
    Panel1: TPanel;
    cgTallySheet: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cgTallySheetLevel1: TcxGridLevel;
    Panel2: TPanel;
    cgRekapKayuMuat: TcxGrid;
    cxGridLevel3: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cgvLPBDetailTallySheetTallySheetDate: TcxGridDBColumn;
    cgvPrevRekapKayuMuatDtpcs: TcxGridDBColumn;
    qryUpdateTallySheet: TADOQuery;
    qryUpdateReceivingRecord: TADOQuery;
    cgvLPB: TcxGridDBBandedTableView;
    cgvLPBReceivingRecordId: TcxGridDBBandedColumn;
    cgvLPBNo: TcxGridDBBandedColumn;
    cgvLPBItemId: TcxGridDBBandedColumn;
    cgvLPBTransactionId: TcxGridDBBandedColumn;
    cgvLPBPrice: TcxGridDBBandedColumn;
    cgvLPBPricePrint: TcxGridDBBandedColumn;
    cgvLPBTotalQty: TcxGridDBBandedColumn;
    cgvLPBStatusDimensiPrice: TcxGridDBBandedColumn;
    cgvLPBTotalLuas: TcxGridDBBandedColumn;
    cgvLPBTotalVolume: TcxGridDBBandedColumn;
    cgvLPBTotalBerat: TcxGridDBBandedColumn;
    cgvLPBAmount: TcxGridDBBandedColumn;
    procedure qryTallySheetDtAfterPost(DataSet: TDataSet);
    procedure cgvLPBDetailTallySheetNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qryReceivingRecordDtAfterScroll(DataSet: TDataSet);
    procedure qryReceivingRecordDtAfterDelete(DataSet: TDataSet);
    procedure qryReceivingRecordHdBeforePost(DataSet: TDataSet);
    procedure qryTallySheetDtNewRecord(DataSet: TDataSet);
    procedure qryTallysheetAfterPost(DataSet: TDataSet);
    procedure qryTallysheetNewRecord(DataSet: TDataSet);
    procedure dsTallySheetDtDataChange(Sender: TObject; Field: TField);
    procedure dbeRekapKayuMuatPropertiesEditValueChanged(Sender: TObject);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryReceivingRecordDtNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dbeReceivingRecordDatePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmPenerimaanBarangKayuBalok: TfmPenerimaanBarangKayuBalok;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber, frmPenerimaanBarangKayuEntry;
{ TfmPenerimaanBarangKayuBalok }

procedure TfmPenerimaanBarangKayuBalok.cgvLPBDetailTallySheetNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex = 13 then
  begin
    TfmPenerimaanBarangKayuEntry.ExecuteForm(qryReceivingRecordHd.FieldByName('WareHouseId').asinteger,0,qryReceivingRecordHd.FieldByName('ReceivingRecordId').asinteger,qryReceivingRecordDt.FieldByName('ItemId').asinteger);
    ADone := True;
  end;
  qryTallySheet.close;
  OpenIfClose(qryTallySheet);
  qryTallySheetdt.close;
  OpenIfClose(qryTallySheetdt);


end;

procedure TfmPenerimaanBarangKayuBalok.dbeReceivingRecordDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  qryPrevPO.Close;
//  qryPrevPO.Parameters[0].Value := '1'; // Sawn Timber
//  qryPrevPO.Parameters[1].Value := qryReceivingRecordHd.FieldByName('PurchaseOrderId').AsInteger;
//  OpenIfClose(qryPrevPO);
end;

procedure TfmPenerimaanBarangKayuBalok.dbeRekapKayuMuatPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if not(qryPrevKayuMuat.eof) then
  begin
    qryPrevItemKayuMuat.close;
    qryPrevItemKayuMuat.Parameters[0].Value:=qryPrevKayuMuat.FieldByName('KayuMuatId').asinteger;
    qryPrevItemKayuMuat.open;
    qryPrevRekapKayuMuat.close;
    qryPrevRekapKayuMuat.Parameters[0].Value:=qryPrevKayuMuat.FieldByName('KayuMuatId').asinteger;
    qryPrevRekapKayuMuat.open;
  end;
end;

procedure TfmPenerimaanBarangKayuBalok.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  qryperiode.close;
//  qryperiode.parameters[0].value:=qryprev
//  qryperiode.open;
{  qryPrevItemPO.Close;
  qryPrevItemPO.Parameters[0].Value := qryReceivingRecordHd.FieldByName('PurchaseOrderId').AsInteger;
  OpenIfClose(qryPrevItemPO);}
end;

procedure TfmPenerimaanBarangKayuBalok.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;

  if qryReceivingRecordHd.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'purchaseorderid') = 0) or (CompareText(Field.FieldName, 'warehouseid') = 0) then
    begin
      qryPrevItemPeriode.Close;
      qryPrevItemPeriode.Parameters[0].Value := qryReceivingRecordHd.FieldByName('PurchaseOrderId').AsInteger;
      OpenIfClose(qryPrevItemPeriode);
      if (not(qryReceivingRecordHd.fieldbyname('warehouseid').IsNull)) and (not(qryReceivingRecordHd.fieldbyname('purchaseorderid').IsNull)) then
      begin
        qryRekapKayuMuat.close;
        qryRekapKayuMuat.Parameters[0].Value:=qryReceivingRecordHd.fieldbyname('warehouseid').asstring;
        qryRekapKayuMuat.Parameters[1].Value:=qryReceivingRecordHd.fieldbyname('purchaseorderid').asinteger;
        qryRekapKayuMuat.open;
      end;
    end;
    if (CompareText(Field.FieldName, 'kayumuatid') = 0) then
    begin
      qryReceivingRecordHd.FieldByName('purchaseorderid').asinteger:=qryPrevKayuMuat.fieldbyname('purchaseorderid').asinteger;
      qryReceivingRecordHd.FieldByName('purchaseinvoiceid').asinteger:=qryPrevKayuMuat.fieldbyname('purchaseinvoiceid').asinteger;
    end;
  end;
end;

procedure TfmPenerimaanBarangKayuBalok.dsTallySheetDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'T') = 0) or
      (CompareText(Field.FieldName, 'L') = 0) or
      (CompareText(Field.FieldName, 'P') = 0) or
      (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
      qryTallySheetDt.FieldByName('m3').AsFloat:=roundto(qryTallySheetDt.FieldByName('T').asfloat
      *qryTallySheetDt.FieldByName('l').asfloat
      *qryTallySheetDt.FieldByName('p').asfloat
      *qryTallySheetDt.FieldByName('qty').asfloat/1000000,-4);
  end;
end;

procedure TfmPenerimaanBarangKayuBalok.InitForm;
begin
  inherited;
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_RR);

//  openifclose(qryPrevPO);
  qryTallySheet.Parameters[0].Value:=0;
  openifclose(qryTallySheet);
  openifclose(qryTallySheetDt);
  openifclose(qryTallySheetHistory);
  openifclose(qryPrevKayuMuat);
  qryTallySheet.Parameters[0].Value:=0;
  MonthYearValueChange(self);

  TcxCalcEditProperties(cgvLPBTotalQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvLPBTotalLuas.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  TcxCalcEditProperties(cgvLPBTotalVolume.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvLPBTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtDRata.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvLPBDetailTallySheet.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvLPBDetailTallySheet.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvLPBDetailTallySheetDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvLPBDetailTallySheetDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvLPB.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvLPB.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvLPB.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvLPB.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatLuas;
  cgvPrevRekapKayuMuatDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPrevRekapKayuMuatDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;


end;

procedure TfmPenerimaanBarangKayuBalok.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryReceivingrecordHd.State in [dsEdit, dsInsert]) //or
    //(qryPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    then
    Abort;

  qryReceivingRecordHd.Close;
  qryReceivingRecordHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryReceivingRecordHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryReceivingRecordHd, True, True);

end;

procedure TfmPenerimaanBarangKayuBalok.qryReceivingRecordDtAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  qryReceivingRecordDt.close;
  qryReceivingRecordDt.open;
end;

procedure TfmPenerimaanBarangKayuBalok.qryReceivingRecordDtAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  qryTallysheet.Close;
  qryTallysheet.Parameters[0].value:=qryReceivingRecordDt.fieldbyname('ReceivingRecordid').asinteger;
  qryTallysheet.open;
end;

procedure TfmPenerimaanBarangKayuBalok.qryReceivingRecordDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmPenerimaanBarangKayuBalok.qryReceivingRecordHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   //cari fungsi untuk memasukkan id terbaru dari table
   if DataSet.state in [dsinsert] then
   begin
    DataSet.FieldByName('receivingrecordid').asInteger := dmglobal.GetCounterId('ReceivingRecordHd');
    dmGlobal.SetCounterId('ReceivingRecordHd', dmglobal.GetCounterId('ReceivingRecordHd')+1);
   end;
end;

procedure TfmPenerimaanBarangKayuBalok.qryTallysheetAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //buat di table history
  // ?? kalo dipindah ke trigger mungkin bisa
  if qryTallySheetHistory.Locate('referenceid',qryReceivingRecordDt.fieldbyname('ReceivingRecordId').asstring,[lopartialkey]) then
  begin
    qryTallySheetHistory.edit
  end
  else
  begin
    qryTallySheetHistory.insert;
  end;
  qryTallySheetHistory.fieldbyname('tallysheetid').asstring:=qryTallySheet.fieldbyname('tallysheetid').asstring;
  qryTallySheetHistory.fieldbyname('transactiondate').asdatetime:=qryReceivingRecordHd.fieldbyname('ReceivingRecordDate').asdatetime;
  qryTallySheetHistory.fieldbyname('warehouseid').asstring:=qryReceivingRecordHd.fieldbyname('WareHouseId').asstring;
  qryTallySheetHistory.fieldbyname('referenceid').asstring:=qryReceivingRecordDt.fieldbyname('ReceivingRecordid').asstring;
  qryTallySheetHistory.fieldbyname('StatusTransaction').asstring:='0';
  qryTallySheetHistory.Post;
end;

procedure TfmPenerimaanBarangKayuBalok.qryTallySheetDtAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  // Query ini digunakan untuk mengupdate totalqty dan totalvolume pada tallysheet
  qryupdateTallysheet.Parameters[0].value:=qrytallysheetdt.fieldbyname('tallysheetid').asinteger;
  qryupdateTallysheet.ExecSQL;
  qryupdateReceivingRecord.Parameters[0].value:=qryReceivingRecordDt.fieldbyname('ReceivingRecordid').asinteger;
  qryupdateReceivingRecord.Parameters[1].value:=qryReceivingRecordDt.fieldbyname('no').asinteger;
  qryupdateReceivingRecord.ExecSQL;
end;

procedure TfmPenerimaanBarangKayuBalok.qryTallySheetDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  dataset.fieldbyname('no').asinteger:=dataset.recordcount+1;
end;

procedure TfmPenerimaanBarangKayuBalok.qryTallysheetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('warehouseid').asstring:=qryReceivingRecordHd.fieldbyname('WareHouseId').asstring;
  DataSet.fieldbyname('itemid').asstring:=qryReceivingRecordDt.fieldbyname('itemid').asstring;
  DataSet.fieldbyname('totalqty').asinteger:=0;
  DataSet.fieldbyname('totalLuas').asinteger:=0;
  DataSet.fieldbyname('totalVolume').asinteger:=0;
  DataSet.fieldbyname('totalBerat').asinteger:=0;
end;

procedure TfmPenerimaanBarangKayuBalok.RefreshAll;
begin
  inherited;

end;

end.
