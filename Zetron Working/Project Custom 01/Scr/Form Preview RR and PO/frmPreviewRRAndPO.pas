unit frmPreviewRRAndPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, cxButtons, ExtCtrls, cxGrid, cxClasses,
  cxGridLevel, cxControls, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxDBExtLookupComboBox, cxMemo, cxCalendar, cxCurrencyEdit, cxSpinEdit,
  untIvPositionStandard, Menus, cxGridDBTableView, ADODB, ActnList,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxCalc, cxBlobEdit,
  untIvPositionDevExpress, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmPreviewRRAndPO = class(TForm)
    cgPreviewRRAndPOLevel1: TcxGridLevel;
    cgPreviewRRAndPO: TcxGrid;
    pnlControl: TPanel;
    btnOk: TcxButton;
    pnlHeader: TPanel;
    lblIdRecivingRecord: TLabel;
    lblIdPurchaseOrder: TLabel;
    edtIdRecivingRecord: TcxTextEdit;
    edtIdPurchaseOrder: TcxTextEdit;
    cgvCompare: TcxGridDBBandedTableView;
    bvlBevel1: TBevel;
    shpConflict: TShape;
    lblConflict: TLabel;
    cgvCompareIdSuppliesRR: TcxGridDBBandedColumn;
    cgvCompareQtyRR: TcxGridDBBandedColumn;
    cgvCompareIdSuppliesRR2: TcxGridDBBandedColumn;
    cgvCompareQtyPO: TcxGridDBBandedColumn;
    cgvCompareOutstandingQty: TcxGridDBBandedColumn;
    cgvComparedcPrice: TcxGridDBBandedColumn;
    cgvComparedcDisc: TcxGridDBBandedColumn;
    cgvComparedcDiscPrice: TcxGridDBBandedColumn;
    shpConflict2: TShape;
    lblConflict2: TLabel;
    btnCancel: TcxButton;
    cgPreviewRRAndPOLevel2: TcxGridLevel;
    cgPreviewRRAndPOLevel3: TcxGridLevel;
    IvPositionStandard1: TIvPositionStandard;
    cgvCompareIdSuppliesPO: TcxGridDBBandedColumn;
    dsPrevPurchaseOrderHd: TDataSource;
    dsPrevPurchaseOrderDt: TDataSource;
    cgvPrevPurchaseOrderHd: TcxGridDBTableView;
    cgvPrevPurchaseOrderDt: TcxGridDBTableView;
    qryPrevPurchaseOrderHd: TADOQuery;
    qryPrevPurchaseOrderDt: TADOQuery;
    cgvPrevPurchaseOrderHdvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcIdSupplier: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddtPurchaseOrderDate: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcContactPerson: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcSupplierSalesOrder: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddcDisc: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddcTax: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtinNo: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdtShippingDate: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtinQty: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdcPrice: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdcDiscItem: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdcAmount: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtinOutstandingQty: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtvcSuppliesName: TcxGridDBColumn;
    cgPreviewRRAndPOLevel4: TcxGridLevel;
    cgvPrevPurchaseOrderHddcAmount: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddcDiscAmount: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddcTaxAmount: TcxGridDBColumn;
    cgvPrevPurchaseOrderHddcTotalAmount: TcxGridDBColumn;
    lblSupplier: TLabel;
    edtSupplierName: TcxTextEdit;
    btnRefresh: TcxButton;
    ActionList1: TActionList;
    actRefresh: TAction;
    actOk: TAction;
    actCancel: TAction;
    qryPrevReceivingRecordHd: TADOQuery;
    dsPrevReceivingRecordHd: TDataSource;
    dsPrevReceivingRecordDt: TDataSource;
    qryPrevReceivingRecordDt: TADOQuery;
    cgPreviewRRAndPOLevel5: TcxGridLevel;
    cgvPrevReceivingRecordHd: TcxGridDBTableView;
    cgvPrevReceivingRecordDt: TcxGridDBTableView;
    cgvPrevReceivingRecordHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevReceivingRecordHddtReceivingRecordDate: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierName: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierDeliveryOrder: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierPurchaseOrder: TcxGridDBColumn;
    cgvPrevReceivingRecordDtvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevReceivingRecordDtinNo: TcxGridDBColumn;
    cgvPrevReceivingRecordDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevReceivingRecordDtinQty: TcxGridDBColumn;
    cgvPrevReceivingRecordDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcWarehouseName: TcxGridDBColumn;
    lblType: TLabel;
    cbType: TcxImageComboBox;
    qryPreviewRRAndPO: TADOQuery;
    dsPreviewRRAndPO: TDataSource;
    shpLocked: TShape;
    Label1: TLabel;
    cgvPrevReceivingRecordHdvcIdPurchaseInvoice: TcxGridDBColumn;
    lblIdPurchaseInvoice: TLabel;
    edtIdPurchaseInvoice: TcxTextEdit;
    cgvPrevPurchaseOrderHdtxMemo: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtQtyPI: TcxGridDBColumn;
    IvPositionDevExpress1: TIvPositionDevExpress;
    lblInformation: TLabel;
    procedure actCancelExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cbTypePropertiesInitPopup(Sender: TObject);
    procedure cgvCompareStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvPrevPurchaseOrderHdFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cgvPrevReceivingRecordHdFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cgvPrevReceivingRecordHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
    FWithPO: boolean;
    FConflict: boolean;
    procedure DeinitForm;
    procedure InitForm(const AIdSupplier: string; ACurrentRR, ACurrentPO: string);
  public
    { Public declarations }
    class function ExecuteForm(const AIdSupplier, ASupplierName: string; AWithPO: boolean;
      ACurrentPI, ACurrentRR, ACurrentPO: string; out AIdReceivingRecord, AIdPurchaseOrder: string): TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, untCustom01;

{$R *.dfm}

{ TfmPreviewRRAndPO }

procedure TfmPreviewRRAndPO.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmPreviewRRAndPO.actOkExecute(Sender: TObject);
begin
  if not FConflict then
  begin
    if (VarToStr(cgvPrevReceivingRecordHdvcIdPurchaseInvoice.EditValue) <> '') and
      (VarToStr(cgvPrevReceivingRecordHdvcIdPurchaseInvoice.EditValue) <> edtIdPurchaseInvoice.EditValue) then
      MessageDlg(
        Format(MSG_CANNOT_USE_RR,
        [VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue),
        VarToStr(cgvPrevReceivingRecordHdvcIdPurchaseInvoice.EditValue)]),
        mtInformation, [mbOk], 0)
    else
      ModalResult := mrOk;
  end;
end;

procedure TfmPreviewRRAndPO.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevReceivingRecordDt);
  if FWithPO then
  begin
    LockRefresh(qryPrevPurchaseOrderDt);
    LockRefresh(qryPrevPurchaseOrderHd, True);
  end;
end;

procedure TfmPreviewRRAndPO.cbTypePropertiesInitPopup(Sender: TObject);
begin
  Abort;
end;

procedure TfmPreviewRRAndPO.cgvCompareStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if not FWithPO then
    Exit;

  with (Sender as TcxGridDBBandedTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('IdSuppliesPO').Index]) = '' then
    begin
      AStyle := dmGlobal.stRedLight;
      lblInformation.Visible := True;
      FConflict := True;
    end
    else
    begin
      if ARecord.Values[GetColumnByFieldName('QtyRR').Index] >
        ARecord.Values[GetColumnByFieldName('OutstandingQty').Index] then
      begin
        AStyle := dmGlobal.stYellowLight;
        lblInformation.Visible := True;
        FConflict := True;
      end;
    end;
  end;
end;

procedure TfmPreviewRRAndPO.cgvPrevPurchaseOrderHdFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  edtIdPurchaseOrder.EditValue := VarToStr(cgvPrevPurchaseOrderHdvcIdPurchaseOrder.EditValue);
  edtIdRecivingRecord.EditValue := VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue);
  qryPreviewRRAndPO.Close;
  qryPreviewRRAndPO.Parameters[0].Value := VarToStr(cgvPrevPurchaseOrderHdvcIdPurchaseOrder.EditValue);
  qryPreviewRRAndPO.Parameters[1].Value := VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue);
  qryPreviewRRAndPO.Open;
end;

procedure TfmPreviewRRAndPO.cgvPrevReceivingRecordHdFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  edtIdPurchaseOrder.EditValue := VarToStr(cgvPrevPurchaseOrderHdvcIdPurchaseOrder.EditValue);
  edtIdRecivingRecord.EditValue := VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue);
  qryPreviewRRAndPO.Close;
  qryPreviewRRAndPO.Parameters[0].Value := VarToStr(cgvPrevPurchaseOrderHdvcIdPurchaseOrder.EditValue);
  qryPreviewRRAndPO.Parameters[1].Value := VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue);
  qryPreviewRRAndPO.Open;
end;

procedure TfmPreviewRRAndPO.cgvPrevReceivingRecordHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if (VarToStr(ARecord.Values[GetColumnByFieldName('vcIdPurchaseInvoice').Index]) <> '') and
      (VarToStr(ARecord.Values[GetColumnByFieldName('vcIdPurchaseInvoice').Index]) <> edtIdPurchaseInvoice.EditValue) then
    begin
      AStyle := dmGlobal.stPurpleLight;
    end
  end;
end;

procedure TfmPreviewRRAndPO.DeinitForm;
begin
  qryPrevReceivingRecordHd.Close;
  qryPrevReceivingRecordDt.Close;
  qryPrevPurchaseOrderHd.Close;
  qryPrevPurchaseOrderDt.Close;
  qryPreviewRRAndPO.Close;
end;

class function TfmPreviewRRAndPO.ExecuteForm(const AIdSupplier, ASupplierName: string;
  AWithPO: boolean; ACurrentPI, ACurrentRR, ACurrentPO: string;
  out AIdReceivingRecord, AIdPurchaseOrder: string): TModalResult;
var
  fmPreviewRRAndPO: TfmPreviewRRAndPO;
begin
  fmPreviewRRAndPO := TfmPreviewRRAndPO.Create(Application);
  with fmPreviewRRAndPO do
  begin
    try
      // Initial
      FWithPO := AWithPO;
      edtSupplierName.EditValue := ASupplierName;
      edtIdPurchaseInvoice.EditValue := ACurrentPI;

      InitForm(AIdSupplier, ACurrentRR, ACurrentPO);
      Result := ShowModal;
      if Result = mrOk then
      begin
        AIdReceivingRecord := VarToStr(cgvPrevReceivingRecordHdvcIdReceivingRecord.EditValue);
        AIdPurchaseOrder := VarToStr(cgvPrevPurchaseOrderHdvcIdPurchaseOrder.EditValue);
      end
      else
      begin
        AIdReceivingRecord := ACurrentRR;
        AIdPurchaseOrder := ACurrentPO;
      end;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmPreviewRRAndPO.InitForm(const AIdSupplier: string;
  ACurrentRR, ACurrentPO: string);
var
  Filename: string;
begin
  dmGlobal.InitComponent(Self);

  // 'C:\Documents and Settings\User\Local Settings\Application Data\Zetron System\<project name>\'
  // Nama file diubah menjadi numeric, dan tidak ada proses reverse menjadi huruf kembali (tidak perlu)
  Filename :=
    dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';

  IvPositionStandard1.Filename := Filename;
  IvPositionDevExpress1.Filename := Filename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  FConflict := False;
  lblInformation.Visible := False;
  edtIdRecivingRecord.EditValue := ACurrentRR;
  edtIdPurchaseOrder.EditValue := ACurrentPO;
  if FWithPO then
    cbType.ItemIndex := 1
  else
    cbType.ItemIndex := 0;

  qryPrevReceivingRecordHd.DisableControls;
  qryPrevReceivingRecordHd.Open;
  qryPrevReceivingRecordDt.Open;
  qryPrevReceivingRecordHd.Locate('vcIdReceivingRecord', ACurrentRR, [loCaseInsensitive]);
  if FWithPO then
  begin
    qryPrevPurchaseOrderHd.DisableControls;
    qryPrevPurchaseOrderHd.Parameters[0].Value := AIdSupplier;
    qryPrevPurchaseOrderHd.Open;
    qryPrevPurchaseOrderDt.Open;
    qryPrevPurchaseOrderHd.Locate('vcIdPurchaseOrder', ACurrentPO, [loCaseInsensitive]);
  end;
  qryPrevReceivingRecordHd.EnableControls;
  qryPrevPurchaseOrderHd.EnableControls;

  shpConflict.Brush.Color := dmGlobal.stRedLight.Color;
  shpConflict2.Brush.Color := dmGlobal.stYellowLight.Color;
  shpLocked.Brush.Color := dmGlobal.stPurpleLight.Color;
  SetReadOnly(cbType, True, COLOR_INACTIVE);
  SetReadOnly(edtSupplierName, True, COLOR_INACTIVE);
  SetReadOnly(edtIdPurchaseInvoice, True, COLOR_INACTIVE);
  SetReadOnly(edtIdRecivingRecord, True, COLOR_INACTIVE);
  SetReadOnly(edtIdPurchaseOrder, True, COLOR_INACTIVE);

  SetReadOnly(cgvPrevReceivingRecordHd);
  SetReadOnly(cgvPrevReceivingRecordDt);
  SetReadOnly(cgvPrevPurchaseOrderHd);
  SetReadOnly(cgvPrevPurchaseOrderDt);
  SetReadOnly(cgvCompare);

  TcxCalcEditProperties(cgvPrevPurchaseOrderDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPurchaseOrderDtinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevReceivingRecordDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvCompareQtyRR.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvCompareQtyPO.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvCompareOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
end;

end.
