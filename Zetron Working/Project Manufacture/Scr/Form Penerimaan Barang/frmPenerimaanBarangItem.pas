unit frmPenerimaanBarangItem;

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
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB, DateUtils, Math,cxCalc,
  untIvSearchBoxADO, cxButtonEdit, cxSplitter;

type
  TfmPenerimaanBarangItem = class(TfmPenerimaanBarang)
    qryPrevItemPO: TADODataSet;
    dsPrevItemPO: TDataSource;
    qryTallysheet: TADODataSet;
    dsTallysheet: TDataSource;
    qryTallySheetDt: TADODataSet;
    dsTallySheetDt: TDataSource;
    qryTallySheetHistory: TADODataSet;
    dsTableHistory: TDataSource;
    PcReceivingRecordDetail: TcxPageControl;
    tsItem: TcxTabSheet;
    cgReceivingRecordDt: TcxGrid;
    cgvReceivingRecordDt: TcxGridDBTableView;
    cgvReceivingRecordDtReceivingRecordCode: TcxGridDBColumn;
    cgvReceivingRecordDtNo: TcxGridDBColumn;
    cgvReceivingRecordDtItemId: TcxGridDBColumn;
    cgvReceivingRecordDtTotalQty: TcxGridDBColumn;
    cgvReceivingRecordDtTotalLuas: TcxGridDBColumn;
    cgvReceivingRecordDtTotalVolume: TcxGridDBColumn;
    cgvReceivingRecordDtTotalBerat: TcxGridDBColumn;
    cgvReceivingRecordSJ: TcxGridDBTableView;
    cgReceivingRecordDtLevel1: TcxGridLevel;
    tsSJ: TcxTabSheet;
    cgReceivingRecordSJ: TcxGrid;
    cgReceivingRecordSJLevel1: TcxGridLevel;
    cgvReceivingRecordSJReceivingRecordCode: TcxGridDBColumn;
    cgvReceivingRecordSJSJCode: TcxGridDBColumn;
    cgvReceivingRecordSJSJDate: TcxGridDBColumn;
    cgvReceivingRecordSJNoPolisi: TcxGridDBColumn;
    cgvReceivingRecordSJKendaraan: TcxGridDBColumn;
    cgvReceivingRecordSJNoFAKO: TcxGridDBColumn;
    cgvReceivingRecordSJFAKODate: TcxGridDBColumn;
    cgvReceivingRecordSJNoCont: TcxGridDBColumn;
    cgvReceivingRecordSJInternalMemo: TcxGridDBColumn;
    cgTallySheet: TcxGrid;
    cgvLPBDetailTallySheet: TcxGridDBTableView;
    cgvLPBDetailTallySheetTallySheetCode: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalQty: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalLuas: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalVolume: TcxGridDBColumn;
    cgvLPBDetailTallySheetTotalBerat: TcxGridDBColumn;
    cgvLPBDetailTallySheetLastTransaction: TcxGridDBColumn;
    cgvLPBDetailTallySheetPurchaseInvoiceId: TcxGridDBColumn;
    cgvLPBDetailTallySheetWarehouseId: TcxGridDBColumn;
    cgvLPBDetailTallySheetDateUse: TcxGridDBColumn;
    cgvLPBDetailTallySheetFlagUse: TcxGridDBColumn;
    cgvLPBDetailTallySheetItemId: TcxGridDBColumn;
    cgvLPBDetailTallySheetLastRef: TcxGridDBColumn;
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
    cgTallySheetLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cgTallySheetLevel2: TcxGridLevel;
    cgTallySheetLevel3: TcxGridLevel;
    procedure qryReceivingRecordSJNewRecord(DataSet: TDataSet);
    procedure qryReceivingRecordDtBeforeInsert(DataSet: TDataSet);
    procedure dsTallySheetDtDataChange(Sender: TObject; Field: TField);
    procedure qryTallySheetDtNewRecord(DataSet: TDataSet);
    procedure qryTallysheetAfterPost(DataSet: TDataSet);
    procedure qryTallysheetNewRecord(DataSet: TDataSet);
    procedure qryReceivingRecordHdAfterPost(DataSet: TDataSet);
    procedure qryReceivingRecordDtNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
    procedure OnButtonEditClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPenerimaanBarangItem: TfmPenerimaanBarangItem;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory, frmTallyEntry;

procedure TfmPenerimaanBarangItem.dsTallySheetDtDataChange(Sender: TObject;
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

procedure TfmPenerimaanBarangItem.InitForm;
begin
  inherited;

  // Init Print
  DefaultPrimaryKeyField := 'ReceivingRecordCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_RR_ITEM);

  TcxCalcEditProperties(cgvLPBDetailTallySheetDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtDRata.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvLPBDetailTallySheetDtM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  OpenIfClose(dmInventory.qryVendor);
  OpenIfClose(dmInventory.qryItem);
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryTallyMan);
  MonthYearValueChange(Self);

  //openifclose(qryTallySheet);
//  OpenIfClose(qryTallySheetDt);
//  OpenIfClose(qryTallySheetHistory);
end;

procedure TfmPenerimaanBarangItem.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryReceivingRecordHd.State in [dsEdit, dsInsert]) or
    (qryReceivingRecordDt.State in [dsEdit, dsInsert]) then
    Abort;
                                     
  qryReceivingRecordHd.Close;
  qryReceivingRecordHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryReceivingRecordHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryReceivingRecordHd, True, True);
end;

procedure TfmPenerimaanBarangItem.OnButtonEditClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  TfmTallyEntry.ExecuteForm('a', Now, 1, 1, dsInsert);
end;

procedure TfmPenerimaanBarangItem.qryReceivingRecordDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmPenerimaanBarangItem.qryReceivingRecordDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := Dataset.RecordCount + 1;
end;

procedure TfmPenerimaanBarangItem.qryReceivingRecordHdAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  dmglobal.SetCounterId('ReceivingRecordHd', dmglobal.GetCounterId('ReceivingRecordHd') + 1);
end;

procedure TfmPenerimaanBarangItem.qryReceivingRecordSJNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  qryReceivingRecordSJ.FieldByName('sjdate').asdatetime:=qryreceivingrecordhd.FieldByName('receivingrecorddate').asdatetime;
end;

procedure TfmPenerimaanBarangItem.qryTallysheetAfterPost(DataSet: TDataSet);
begin
  inherited;

  //buat di table history
  // ?? kalo dipindah ke trigger mungkin bisa
  if qryTallySheetHistory.Locate('ReferenceCode',qryReceivingRecordDt.fieldbyname('ReceivingRecordCode').asstring,[lopartialkey]) then
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
  qryTallySheetHistory.fieldbyname('referenceCode').asstring:=qryReceivingRecordDt.fieldbyname('ReceivingRecordCode').asstring;
  qryTallySheetHistory.fieldbyname('referenceNo').asinteger:=qryReceivingRecordDt.fieldbyname('No').asinteger;
  qryTallySheetHistory.fieldbyname('statustransaction').asstring:='0';
  qryTallySheetHistory.Post;
end;

procedure TfmPenerimaanBarangItem.qryTallySheetDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  dataset.fieldbyname('no').asinteger:=dataset.recordcount+1;
end;

procedure TfmPenerimaanBarangItem.qryTallysheetNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.fieldbyname('warehouseid').asstring:=qryReceivingRecordHd.fieldbyname('WareHouseId').asstring;
  DataSet.fieldbyname('itemid').asstring:=qryReceivingRecordDt.fieldbyname('itemid').asstring;
  DataSet.fieldbyname('totalqty').asinteger:=0;
  DataSet.fieldbyname('totalLuas').asinteger:=0;
  DataSet.fieldbyname('totalVolume').asinteger:=0;
  DataSet.fieldbyname('totalBerat').asinteger:=0;
end;

procedure TfmPenerimaanBarangItem.RefreshAll;
begin
  inherited;

  LockRefresh(qryReceivingRecordHd, True);
  LockRefresh(qryReceivingRecordDt);
  LockRefresh(qryReceivingRecordSJ);
  OpenIfClose(qryTallySheetDt);
  OpenIfClose(qryTallySheetHistory);
end;

end.
