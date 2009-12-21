unit frmHasilGradeBalok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Dialogs, frmHasilGrade, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxDBEdit, dxDockPanel, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB,
  cxGridDBTableView, cxCalc,Math, cxMRUEdit, cxMemo, cxPC, cxButtonEdit;

type
  TfmHasilGradeBalok = class(TfmHasilGrade)
    pnlSawnTimber: TPanel;
    cgHasilGradeCutting: TcxGrid;
    cgvHasilGradeCutting: TcxGridDBBandedTableView;
    cgvHasilGradeCuttingTCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingLCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingPCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingM3Cutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingQty: TcxGridDBBandedColumn;
    cgHasilGradeCuttingLevel1: TcxGridLevel;
    cgHasilGradeInvoice: TcxGrid;
    cgvHasilGradeInvoice: TcxGridDBBandedTableView;
    cgvHasilGradeInvoiceTInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceLInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoicePInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceM3Invoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceQty: TcxGridDBBandedColumn;
    cgHasilGradeInvoiceLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cgvHasilGradeInvoiceGradeResultCode: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceItemId: TcxGridDBBandedColumn;
    cgvHasilGradeInvoicePaletId: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceNo: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingGradeResultCode: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingItemId: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingPaletId: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingNo: TcxGridDBBandedColumn;
    Label4: TLabel;
    procedure qryGradeResultInvoiceDtBeforePost(DataSet: TDataSet);
    procedure btnGetIdClick(Sender: TObject);
    procedure qryGradeResultHdBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dbeGradeIdPropertiesEditValueChanged(Sender: TObject);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultDtCuttingDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultDtInvoiceDataChange(Sender: TObject; Field: TField);
    procedure cgvHasilGradeCuttingNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cgvHasilGradeInvoiceNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qryGradeResultInvoiceDtNewRecord(DataSet: TDataSet);
    procedure qryGradeResultCuttingDtNewRecord(DataSet: TDataSet);
    procedure qryGradeResultHdNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dbeGradeDatePropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHasilGradeBalok: TfmHasilGradeBalok;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber,
  frmHasilGradeEntry;

procedure TfmHasilGradeBalok.btnGetIdClick(Sender: TObject);
var
  bulan:string;
begin
  inherited;
  if qrygraderesulthd.state in [dsinsert,dsedit] then
  begin
    if cbmonth.itemindex<9 then
     bulan:='0'+inttostr(cbmonth.itemindex+1)
    else
     bulan:=inttostr(cbmonth.itemindex+1);
    qryCounter.close;
    qryCounter.parameters[0].value:=cbyear.text+'/'+bulan+'/';
    qryCounter.parameters[1].value:=cbyear.text+'/'+bulan+'/';
    qryCounter.open;
    if qryCounter.eof then
    begin
      qryGradeResultHd.fieldbyname('graderesultcode').asstring:=cbyear.text+'/'+bulan+'/0001';
    end
    else
    begin
      qrygraderesulthd.fieldbyname('graderesultcode').asstring:=qryCounter.fields[0].asstring;
    end;
  end;
end;

procedure TfmHasilGradeBalok.cgvHasilGradeCuttingNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    if not qryGradeResultHd.IsEmpty then
    begin
      TfmHasilGradeEntry.ExecuteForm(0, qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger,
        qryGradeResultHd.FieldByName('GradeResultId').AsInteger, 0, TDataset(qryGradeResultCuttingDt));

      LockRefresh(qryPrevTallySheetGrade);
      ADone := True;
    end;
  end;
end;

procedure TfmHasilGradeBalok.cgvHasilGradeInvoiceNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    if not qryGradeResultHd.IsEmpty then
    begin
      TfmHasilGradeEntry.ExecuteForm(0, qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger,
        qryGradeResultHd.FieldByName('GradeResultId').AsInteger, 1, TDataset(qryGradeResultInvoiceDt));

      LockRefresh(qryPrevTallySheetGrade);
      ADone := True;
    end;
  end;

end;

procedure TfmHasilGradeBalok.dbeGradeDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  qryPrevPurchaseOrder.Close;
  qryPrevPurchaseOrder.Parameters[0].Value := '1'; // Sawn Timber
  qryPrevPurchaseOrder.Parameters[1].Value := qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger;
  OpenIfClose(qryPrevPurchaseOrder);
end;

procedure TfmHasilGradeBalok.dbeGradeIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if not(qryGradeResultHd.FieldByName('graderesultid').isnull) then
  begin
    qryPrevTallySheetGrade.Close;
    qryPrevTallySheetGrade.Parameters[0].Value:=qryGradeResultHd.FieldByName('graderesultid').asstring;
    OpenIfClose(qryPrevTallySheetGrade);
  end;
end;

procedure TfmHasilGradeBalok.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  qryPrevItemPO.Close;
  qryPrevItemPO.Parameters[0].Value := qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger;
  OpenIfClose(qryPrevItemPO);
end;

procedure TfmHasilGradeBalok.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;

  if qryGradeResultHd.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'purchaseorderid') = 0) then
    begin
      qryPrevItemPO.Close;
      qryPrevItemPO.Parameters[0].Value := qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger;
      OpenIfClose(qryPrevItemPO);
    end;
  end;
end;

procedure TfmHasilGradeBalok.dsDefaultDtCuttingDataChange(Sender: TObject;
  Field: TField);
var
  TConstanta,LConstanta,PConstanta:real;
begin
  inherited;

  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'TCut') = 0) or
    (CompareText(Field.FieldName, 'LCut') = 0) or
    (CompareText(Field.FieldName, 'PCut') = 0) or
    (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    qryprevitempo.locate('itemid',qryGradeResultCuttingDt.FieldByName('itemid').asfloat,[lopartialkey]);
    TConstanta:=qryprevitempo.FieldByName('TConstanta').asfloat;
    LConstanta:=qryprevitempo.FieldByName('LConstanta').asfloat;
    PConstanta:=qryprevitempo.FieldByName('PConstanta').asfloat;

    qryGradeResultCuttingDt.FieldByName('m3Cut').asfloat:=roundto(qryGradeResultCuttingDt.FieldByName('TCut').asfloat
    *qryGradeResultCuttingDt.FieldByName('LCut').asfloat
    *qryGradeResultCuttingDt.FieldByName('PCut').asfloat
    *qryGradeResultCuttingDt.FieldByName('Qty').asfloat*TConstanta*LConstanta*PConstanta,-4);
  end;

end;

procedure TfmHasilGradeBalok.dsDefaultDtInvoiceDataChange(Sender: TObject;
  Field: TField);
var
  TConstanta,LConstanta,PConstanta:real;
begin
  inherited;

  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'TInv') = 0) or
    (CompareText(Field.FieldName, 'LInv') = 0) or
    (CompareText(Field.FieldName, 'PInv') = 0) or
    (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    // cari konstanta di item
    qryprevitempo.locate('itemid',qryGradeResultInvoiceDt.FieldByName('itemid').asfloat,[lopartialkey]);
    TConstanta:=qryprevitempo.FieldByName('TConstanta').asfloat;
    LConstanta:=qryprevitempo.FieldByName('LConstanta').asfloat;
    PConstanta:=qryprevitempo.FieldByName('PConstanta').asfloat;

    qryGradeResultInvoiceDt.FieldByName('m3Inv').asfloat:=roundto(qryGradeResultInvoiceDt.FieldByName('TInv').asfloat
    *qryGradeResultInvoiceDt.FieldByName('LInv').asfloat
    *qryGradeResultInvoiceDt.FieldByName('PInv').asfloat
    *qryGradeResultInvoiceDt.FieldByName('Qty').asfloat*TConstanta*LConstanta*PConstanta,-4);
  end;
end;

procedure TfmHasilGradeBalok.FormActivate(Sender: TObject);
begin
  inherited;

  LockRefresh(qryPrevTallySheetGrade);
end;

procedure TfmHasilGradeBalok.InitForm;
begin
  inherited;
  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  // Setting Format
  TcxCalcEditProperties(cgvHasilGradeCuttingTCutting.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeCuttingLCutting.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeCuttingPCutting.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeCuttingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvHasilGradeCuttingM3Cutting.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvHasilGradeInvoiceTInvoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeInvoiceLInvoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeInvoicePInvoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeInvoiceQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvHasilGradeInvoiceM3Invoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  //TcxCalcEditProperties(cgvHasilGradeInvoicePrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvHasilGradeCutting.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvHasilGradeCutting.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvHasilGradeInvoice.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvHasilGradeInvoice.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;

  OpenIfClose(dmTimber.qryPrevItemBalok, True);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd

  OpenIfClose(qryGradeResultInvoiceDt);
  OpenIfClose(qryGradeResultCuttingDt);
  OpenIfClose(qryPrevTallySheetGrade);
end;

procedure TfmHasilGradeBalok.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryGradeResultHd.State in [dsEdit, dsInsert]) or
     (qryGradeResultInvoiceDt.State in [dsEdit, dsInsert]) or
     (qryGradeResultCuttingDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryGradeResultHd.Close;
  qryGradeResultHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryGradeResultHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryGradeResultHd.Parameters[2].Value := '0';// Sawn Timber
  OpenIfClose(qryGradeResultHd, True, True);
end;

procedure TfmHasilGradeBalok.qryGradeResultCuttingDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmHasilGradeBalok.qryGradeResultHdBeforePost(DataSet: TDataSet);
begin
  inherited;
//  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmHasilGradeBalok.qryGradeResultHdNewRecord(DataSet: TDataSet);
begin
  inherited;
  // Sawn Timber
  //DataSet.fieldbyname('StatusGradeResult').asstring:='0';
end;

procedure TfmHasilGradeBalok.qryGradeResultInvoiceDtBeforePost(
  DataSet: TDataSet);
var
  nopo:integer;
  price:real;
begin
  qryCekUkuran.Close;
  qryCekUkuran.Parameters[0].Value := qryGradeResultHd.FieldByName('purchaseorderid').asinteger;
  qryCekUkuran.Parameters[1].Value := qryGradeResultInvoiceDt.FieldByName('itemid').asinteger;
  OpenIfClose(qryCekUkuran);
  price:=0;
  nopo:=0;
  if not(cekUkuranOK(qryGradeResultInvoiceDt.FieldByName('TInv').AsFloat,qryGradeResultInvoiceDt.FieldByName('LInv').AsFloat,qryGradeResultInvoiceDt.FieldByName('PInv').AsFloat,1,price,nopo)) then
  begin
    showmessage('Ukuran tidak sesuai PO !!!');
    DataSet.cancel;
  end
  else
  begin
    qryGradeResultInvoiceDt.fieldbyname('price').asfloat:=price;
    qryGradeResultInvoiceDt.fieldbyname('nopo').asfloat:=nopo;
  end;
end;

procedure TfmHasilGradeBalok.qryGradeResultInvoiceDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmHasilGradeBalok.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPurchaseOrder);
end;

end.
