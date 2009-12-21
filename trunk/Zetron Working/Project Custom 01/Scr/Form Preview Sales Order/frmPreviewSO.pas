unit frmPreviewSO;

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
  TfmPreviewSO = class(TForm)
    cgPreviewSOLevel1: TcxGridLevel;
    cgPreviewSO: TcxGrid;
    pnlControl: TPanel;
    btnOk: TcxButton;
    pnlHeader: TPanel;
    lblIdSalesOrder: TLabel;
    edtIdSalesOrder: TcxTextEdit;
    btnCancel: TcxButton;
    IvPositionStandard1: TIvPositionStandard;
    dsPrevSalesOrderHd: TDataSource;
    dsPrevSalesOrderDt: TDataSource;
    cgvPrevSalesOrderHd: TcxGridDBTableView;
    cgvPrevSalesOrderDt: TcxGridDBTableView;
    qryPrevSalesOrderHd: TADOQuery;
    qryPrevSalesOrderDt: TADOQuery;
    cgvPrevSalesOrderHdvcIdSalesOrder: TcxGridDBColumn;
    cgvPrevSalesOrderHdvcIdCustomer: TcxGridDBColumn;
    cgvPrevSalesOrderHddtSalesOrderDate: TcxGridDBColumn;
    cgvPrevSalesOrderHdSalesName: TcxGridDBColumn;
    cgvPrevSalesOrderHdvcCustomerSalesOrder: TcxGridDBColumn;
    cgvPrevSalesOrderHddcDisc: TcxGridDBColumn;
    cgvPrevSalesOrderHddcTax: TcxGridDBColumn;
    cgvPrevSalesOrderDtinNo: TcxGridDBColumn;
    cgvPrevSalesOrderDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevSalesOrderDtdtShippingDate: TcxGridDBColumn;
    cgvPrevSalesOrderDtinQty: TcxGridDBColumn;
    cgvPrevSalesOrderDtdcPrice: TcxGridDBColumn;
    cgvPrevSalesOrderDtdcDiscItem: TcxGridDBColumn;
    cgvPrevSalesOrderDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevSalesOrderDtdcAmount: TcxGridDBColumn;
    cgvPrevSalesOrderDtinOutstandingQty: TcxGridDBColumn;
    cgvPrevSalesOrderDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevSalesOrderHddcAmount: TcxGridDBColumn;
    cgvPrevSalesOrderHddcDiscAmount: TcxGridDBColumn;
    cgvPrevSalesOrderHddcTaxAmount: TcxGridDBColumn;
    cgvPrevSalesOrderHddcTotalAmount: TcxGridDBColumn;
    lblCustomer: TLabel;
    edtCustomerName: TcxTextEdit;
    btnRefresh: TcxButton;
    ActionList1: TActionList;
    actRefresh: TAction;
    actOk: TAction;
    actCancel: TAction;
    lblIdSalesInvoice: TLabel;
    edtIdSalesInvoice: TcxTextEdit;
    cgPreviewSOLevel2: TcxGridLevel;
    cgvPrevSalesOrderHdtxMemo: TcxGridDBColumn;
    cgvPrevSalesOrderDtQtySI: TcxGridDBColumn;
    IvPositionDevExpress1: TIvPositionDevExpress;
    lblInformation: TLabel;
    procedure actCancelExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cbTypePropertiesInitPopup(Sender: TObject);
    procedure cgvPrevSalesOrderHdFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure DeinitForm;
    procedure InitForm(const AIdCustomer, ACurrentSO: string);
  public
    { Public declarations }
    class function ExecuteForm(const AIdCustomer, ACustomerName, ACurrentSI,
      ACurrentSO: string; out AIdSalesOrder: string): TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal;

{$R *.dfm}

{ TfmPreviewRRAndPO }

procedure TfmPreviewSO.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmPreviewSO.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmPreviewSO.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevSalesOrderDt);
  LockRefresh(qryPrevSalesOrderHd);
end;

procedure TfmPreviewSO.cbTypePropertiesInitPopup(Sender: TObject);
begin
  Abort;
end;

procedure TfmPreviewSO.cgvPrevSalesOrderHdFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  edtIdSalesOrder.EditValue := VarToStr(cgvPrevSalesOrderHdvcIdSalesOrder.EditValue);
end;

procedure TfmPreviewSO.DeinitForm;
begin
  qryPrevSalesOrderHd.Close;
  qryPrevSalesOrderDt.Close;
end;

class function TfmPreviewSO.ExecuteForm(const AIdCustomer, ACustomerName,
  ACurrentSI, ACurrentSO: string; out AIdSalesOrder: string): TModalResult;
var
  fmPreviewSO: TfmPreviewSO;
begin
  fmPreviewSO := TfmPreviewSO.Create(Application);
  with fmPreviewSO do
  begin
    try
      // Initial
      edtCustomerName.EditValue := ACustomerName;
      edtIdSalesInvoice.EditValue := ACurrentSI;

      InitForm(AIdCustomer, ACurrentSO);
      Result := ShowModal;
      if Result = mrOk then
        AIdSalesOrder := VarToStr(cgvPrevSalesOrderHdvcIdSalesOrder.EditValue)
      else
        AIdSalesOrder := ACurrentSO;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmPreviewSO.InitForm(const AIdCustomer, ACurrentSO: string);
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

  edtIdSalesOrder.EditValue := ACurrentSO;

  qryPrevSalesOrderHd.DisableControls;
  qryPrevSalesOrderHd.Parameters[0].Value := AIdCustomer;
  qryPrevSalesOrderHd.Open;
  qryPrevSalesOrderDt.Open;
  qryPrevSalesOrderHd.Locate('vcIdSalesOrder', ACurrentSO, [loCaseInsensitive]);
  qryPrevSalesOrderHd.EnableControls;

  SetReadOnly(edtCustomerName, True, COLOR_INACTIVE);
  SetReadOnly(edtIdSalesInvoice, True, COLOR_INACTIVE);
  SetReadOnly(edtIdSalesOrder, True, COLOR_INACTIVE);

  SetReadOnly(cgvPrevSalesOrderHd);
  SetReadOnly(cgvPrevSalesOrderDt);

  TcxCalcEditProperties(cgvPrevSalesOrderDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSalesOrderDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSalesOrderDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSalesOrderDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSalesOrderDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSalesOrderDtinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
end;

end.
