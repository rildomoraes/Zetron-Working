unit frmMainMenuCashier;

interface

uses
  DateUtils, Forms, Messages, Dialogs, SysUtils, Windows, Graphics, Variants,
  Math, Controls, Classes,

  // Auto Generate
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxDBLookupComboBox,
  cxCalc, cxImageComboBox, Uni, untIvPositionDevExpress, MemDS, DBAccess,
  ImgList, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit, ComCtrls, DBCtrls,
  cxMemo, cxGroupBox, cxContainer, cxCurrencyEdit, StdCtrls, cxButtons, cxPC,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TSalesDetailState = (stBrowse, stSetting, stPriceLevel, stDisc1, stDisc2,
    stVoucher, stVoid, stBonus);

  TfmMainMenu = class(TForm)
    tmMainMenuTimer: TTimer;
    ActionManager1: TActionManager;
    actExit: TAction;
    pcMenu: TcxPageControl;
    tsInvoiceHd: TcxTabSheet;
    tsInvoiceDt: TcxTabSheet;
    tsOthers: TcxTabSheet;
    pnlTop: TPanel;
    lblDisc1: TLabel;
    dbeDisc1: TcxDBCurrencyEdit;
    edtDisc1Amount: TcxCurrencyEdit;
    btnClose: TcxButton;
    btnInvoiceNew: TcxButton;
    btnInvoiceVoid: TcxButton;
    btnInvoicePayment: TcxButton;
    bvlSpacer1: TBevel;
    actInvoiceNew: TAction;
    actInvoiceVoid: TAction;
    actInvoicePayment: TAction;
    actItemChangePrice: TAction;
    actItemDisc1: TAction;
    actItemVoid: TAction;
    actInvoiceVoucher: TAction;
    actInvoiceSetQty: TAction;
    actInvoiceSearch: TAction;
    btnInvoicePrev: TcxButton;
    btnInvoiceNext: TcxButton;
    actPaymentDisplay: TAction;
    bvlSpacer6: TBevel;
    btnItemPrice: TcxButton;
    btnItemVoucher: TcxButton;
    btnItemVoid: TcxButton;
    btnItemBonus: TcxButton;
    bvlSpacer9: TBevel;
    actInvoiceDisc1: TAction;
    btnItemDisc1: TcxButton;
    actItemVoucher: TAction;
    imgIcon32: TImageList;
    btnInvoiceReprint: TcxButton;
    actInvoiceReprint: TAction;
    bvlSpacer2: TBevel;
    bvlSpacer3: TBevel;
    bvlSpacer4: TBevel;
    bvlSpacer8: TBevel;
    bvlSpacer5: TBevel;
    bvlSpacer7: TBevel;
    qryRegisterSalesHd: TUniQuery;
    qryRegisterSalesDt: TUniQuery;
    dsRegisterSalesHd: TDataSource;
    dsRegisterSalesDt: TDataSource;
    sbMainMenu: TStatusBar;
    lblRegisterSalesDate: TLabel;
    lblDate: TLabel;
    edtItemQty: TcxCurrencyEdit;
    qryPrevItem: TUniQuery;
    dsPrevItem: TDataSource;
    qryGetLastRegisterSalesId: TUniQuery;
    lblNoNota: TLabel;
    edtBarcodeId: TcxTextEdit;
    edtItemName: TcxTextEdit;
    tsHistory: TcxTabSheet;
    dbeInternalMemo: TcxDBMemo;
    edtGrandTotal: TcxCurrencyEdit;
    btnInvoiceDisc1: TcxButton;
    btnInvoiceVoucher: TcxButton;
    dbeVoucher: TcxDBTextEdit;
    btnInvoiceDisc2: TcxButton;
    dbeDisc2: TcxDBCurrencyEdit;
    lblDisc2: TLabel;
    edtDisc2Amount: TcxCurrencyEdit;
    dbeVoucherAmount: TcxDBCurrencyEdit;
    actInvoiceSearchItem: TAction;
    btnSearchItem: TcxButton;
    tsPayment: TcxTabSheet;
    pnlBottom: TPanel;
    actInvoiceDisc2: TAction;
    pnlPaymentLeft: TPanel;
    qryRegisterSalesPayment: TUniQuery;
    dsRegisterSalesPayment: TDataSource;
    btnPaymentDisplay: TcxButton;
    btnClosingRegister: TcxButton;
    actClosingRegister: TAction;
    lblQty: TLabel;
    lblPrice: TLabel;
    btnSettingGrid: TcxButton;
    actSettingGrid: TAction;
    bvlSpacer10: TBevel;
    bvlSpacer11: TBevel;
    bvlSpacer12: TBevel;
    bvlSpacer13: TBevel;
    actItemBonus: TAction;
    actItemDisc2: TAction;
    btnItemDisc2: TcxButton;
    lblVoucherNo: TLabel;
    qryGetItemInfo: TUniQuery;
    qryCashRegisterTransaction: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    stRedLight: TcxStyle;
    qryGetRegisterSalesPayment: TUniQuery;
    lblGrandTotal: TLabel;
    edtGrandTotal2: TcxCurrencyEdit;
    Label1: TLabel;
    edtTotalPayment: TcxCurrencyEdit;
    Shape1: TShape;
    lblOutstanding: TLabel;
    edtOutstandingTotalAmount: TcxCurrencyEdit;
    bvlSpacer14: TBevel;
    btnPaymentVoid: TcxButton;
    actPaymentVoid: TAction;
    IvPositionDevExpress1: TIvPositionDevExpress;
    edtRounding: TcxCurrencyEdit;
    lblRounding: TLabel;
    pnlClient: TPanel;
    cgRegisterSalesDt: TcxGrid;
    cgvRegisterSalesDt: TcxGridDBTableView;
    cgvRegisterSalesDtno: TcxGridDBColumn;
    cgvRegisterSalesDtbarcodeid: TcxGridDBColumn;
    cgvRegisterSalesDtItemIdExternal: TcxGridDBColumn;
    cgvRegisterSalesDtItemname: TcxGridDBColumn;
    cgvRegisterSalesDtqty: TcxGridDBColumn;
    cgvRegisterSalesDtprice: TcxGridDBColumn;
    cgvRegisterSalesDtpricelevel: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitem: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitemprice: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitem2: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitemprice2: TcxGridDBColumn;
    cgvRegisterSalesDtvoucheritem: TcxGridDBColumn;
    cgvRegisterSalesDtamount: TcxGridDBColumn;
    cgvRegisterSalesDtstatuscolor: TcxGridDBColumn;
    cgRegisterSalesDtLevel1: TcxGridLevel;
    pnlClientRight: TPanel;
    actDetailUp: TAction;
    actDetailDown: TAction;
    btnDetailUp: TcxButton;
    btnDetailDown: TcxButton;
    bvlSpacer15: TBevel;
    bvlSpacer16: TBevel;
    stGreyLight: TcxStyle;
    bvlSpacer17: TBevel;
    bvlSpacer18: TBevel;
    btnPurchasePayment: TcxButton;
    btnSalesPayment: TcxButton;
    actPurchasePayment: TAction;
    actSalesPayment: TAction;
    edtItemPrice: TcxCurrencyEdit;
    btnReportClosing: TcxButton;
    actReportClosing: TAction;
    lblDBId: TDBText;
    dbeRegisterSalesId: TcxDBTextEdit;
    btnRefreshItem: TcxButton;
    actRefreshItem: TAction;
    spPostingCashRegisterTransaction: TUniStoredProc;
    btnPhysicalCounter: TcxButton;
    Bevel1: TBevel;
    actPhysicalCounter: TAction;
    Bevel2: TBevel;
    gbLegend: TcxGroupBox;
    imgLevelQty: TImage;
    lblInvalidLevelQty: TLabel;
    imgLevelPrice: TImage;
    lblInvalidLevelPrice: TLabel;
    procedure actClosingRegisterExecute(Sender: TObject);
    procedure actDetailDownExecute(Sender: TObject);
    procedure actDetailUpExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actInvoiceDisc1Execute(Sender: TObject);
    procedure actInvoiceDisc2Execute(Sender: TObject);
    procedure actInvoiceNewExecute(Sender: TObject);
    procedure actInvoicePaymentExecute(Sender: TObject);
    procedure actInvoiceReprintExecute(Sender: TObject);
    procedure actInvoiceSearchExecute(Sender: TObject);
    procedure actInvoiceSearchItemExecute(Sender: TObject);
    procedure actInvoiceSetQtyExecute(Sender: TObject);
    procedure actInvoiceVoidExecute(Sender: TObject);
    procedure actInvoiceVoucherExecute(Sender: TObject);
    procedure ActionManager1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure actItemBonusExecute(Sender: TObject);
    procedure actItemChangePriceExecute(Sender: TObject);
    procedure actItemDisc1Execute(Sender: TObject);
    procedure actItemDisc2Execute(Sender: TObject);
    procedure actItemShowPriceExecute(Sender: TObject);
    procedure actItemVoidExecute(Sender: TObject);
    procedure actItemVoucherExecute(Sender: TObject);
    procedure actPaymentDisplayExecute(Sender: TObject);
    procedure actPaymentVoidExecute(Sender: TObject);
    procedure actPhysicalCounterExecute(Sender: TObject);
    procedure actPurchasePaymentExecute(Sender: TObject);
    procedure actRefreshItemExecute(Sender: TObject);
    procedure actReportClosingExecute(Sender: TObject);
    procedure actSalesPaymentExecute(Sender: TObject);
    procedure actSettingGridExecute(Sender: TObject);
    procedure cgvRegisterSalesDtCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cgvRegisterSalesDtDataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure cgvRegisterSalesDtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cgvRegisterSalesDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dbeRegisterSalesIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsRegisterSalesDtDataChange(Sender: TObject; Field: TField);
    procedure dsRegisterSalesHdDataChange(Sender: TObject; Field: TField);
    procedure edtBarcodeIdEnter(Sender: TObject);
    procedure edtBarcodeIdPropertiesEditValueChanged(Sender: TObject);
    procedure edtGrandTotalPropertiesEditValueChanged(Sender: TObject);
    procedure edtItemQtyPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryRegisterSalesDtAfterOpen(DataSet: TDataSet);
    procedure qryRegisterSalesHdNewRecord(DataSet: TDataSet);
    procedure tmMainMenuTimerTimer(Sender: TObject);
  private
    { Private declarations }
    FLastTransNo: integer;
    FCurrentSalesDetailState: TSalesDetailState;

    procedure DeinitForm;
    procedure InitForm;
    procedure WMEndSession(var Msg: TWMEndSession); message WM_ENDSESSION;

    procedure WorkingOnGridDetail(ASalesDetailState: TSalesDetailState);
    procedure WorkingOnBarcode;

    function GetItemInfo(const AItemId: string): string; overload;
    function GetItemInfo(const AItemId: string; out AFlagNeedValidation, ALevelValidation: string): boolean; overload;

    procedure CalculateTotal(ARefreshPayment: boolean);
    procedure UpdateHeaderStatus;
    function ShowItemName(const ABarcodeId: string): boolean;

    function ValidHeaderStatus: boolean;
    function ValidDetailStatus: boolean;

    procedure ProcessGridDetail;

    function ProcessInsertHeader: boolean;
    function ProcessInsertDetail: boolean;

    function ProcessItemPrice: boolean;
    function ProcessItemDisc1: boolean;
    function ProcessItemDisc2: boolean;
    function ProcessItemVoucher: boolean;
    function ProcessItemBonus: boolean;
    function ProcessItemVoid: boolean;

    function ProcessInvoiceDisc1: boolean;
    function ProcessInvoiceDisc2: boolean;
    function ProcessInvoiceVoucher: boolean;
    function ProcessInvoiceVoid: boolean;
    function ProcessInvoiceReprint: boolean;

    function ProcessPayment: boolean;
    function ProcessPaymentVoid: boolean;
    function ProcessClosing: boolean;

    procedure AddInvoiceHistory(const AJob: string; AMessage: TStringList; const ASupervisorName: string);
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

uses
  // Template
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmRegister, dtmShare,
  frmLoginCashier, frmPreviewFastReportShowModal, frmPrintFastReport,
  frmInputBoxDecimal, frmInputBoxString, frmInputBoxDateTime,
  frmRegisterPayment, frmSearchItem, frmSearchInvoice, frmPaymentInfo,
  frmRegisterPurchasePayment, frmRegisterSalesPayment, frmChangePrice,
  frmOpenWaiting, frmPhysicalCounter;

{$R *.dfm}

procedure TfmMainMenu.actClosingRegisterExecute(Sender: TObject);
begin
  ProcessClosing;
end;

procedure TfmMainMenu.actDetailDownExecute(Sender: TObject);
begin
  cgvRegisterSalesDt.Controller.GoToNext(False, True);
end;

procedure TfmMainMenu.actDetailUpExecute(Sender: TObject);
begin
  cgvRegisterSalesDt.Controller.GoToPrev(False, True);
end;

procedure TfmMainMenu.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMainMenu.actInvoiceDisc1Execute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessInvoiceDisc1;
end;

procedure TfmMainMenu.actInvoiceDisc2Execute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessInvoiceDisc2;
end;

procedure TfmMainMenu.actInvoiceNewExecute(Sender: TObject);
begin
  ProcessInsertHeader;
end;

procedure TfmMainMenu.actInvoiceSearchExecute(Sender: TObject);
var
  RegisterSalesId: string;
begin
  if not qryRegisterSalesHd.IsEmpty then
    RegisterSalesId := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString;
  if TfmSearchInvoice.ExecuteForm(dmRegister.CurrentCashRegisterTransactionId, RegisterSalesId) = mrOk then
  begin
    qryRegisterSalesHd.Locate('RegisterSalesId', RegisterSalesId, [loCaseInsensitive]);
    edtBarcodeId.Clear;
  end;
end;

procedure TfmMainMenu.actInvoicePaymentExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessPayment;
end;

procedure TfmMainMenu.actInvoiceSetQtyExecute(Sender: TObject);
var
  Value: double;
begin
  if TfmInputBoxDecimal.ExecuteForm('Set Quantity Barang', 'Quantity',
    dmGlobal.SettingGlobal.DisplayFormatQty, Self.Font, 1, Value) = mrOk then
    edtItemQty.EditValue := Value;
end;

procedure TfmMainMenu.actInvoiceReprintExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessInvoiceReprint;
end;

procedure TfmMainMenu.actInvoiceVoidExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    if ProcessInvoiceVoid then
      UpdateHeaderStatus;
end;

procedure TfmMainMenu.actSalesPaymentExecute(Sender: TObject);
begin
  TfmRegisterSalesPayment.ExecuteForm(dmRegister.CurrentCashRegisterTransactionId);
end;

procedure TfmMainMenu.actSettingGridExecute(Sender: TObject);
begin
  WorkingOnGridDetail(stSetting);
end;

procedure TfmMainMenu.actPaymentDisplayExecute(Sender: TObject);
var
  NoPayment: integer;
  SupervisorName, S: string;
begin
  if qryRegisterSalesHd.IsEmpty then
    Exit;

  TfmPaymentInfo.ExecuteForm(qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString, False,
    NoPayment, S, SupervisorName);

  edtBarcodeId.SetFocus;
end;

procedure TfmMainMenu.actPaymentVoidExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessPaymentVoid;

  edtBarcodeId.SetFocus;
end;

procedure TfmMainMenu.actPhysicalCounterExecute(Sender: TObject);
begin
  TfmPhysicalCounter.ExecuteForm(dmRegister.CurrentCashRegisterDate, dmRegister.CurrentCashRegisterShift);
end;

procedure TfmMainMenu.actPurchasePaymentExecute(Sender: TObject);
begin
  TfmRegisterPurchasePayment.ExecuteForm(dmRegister.CurrentCashRegisterTransactionId);
end;

procedure TfmMainMenu.actRefreshItemExecute(Sender: TObject);
begin
  LockRefresh(qryPrevItem, True);
end;

procedure TfmMainMenu.actReportClosingExecute(Sender: TObject);
begin
  TfmPreviewFastReportShowModal.ExecuteForm('%', FORM_REGISTER_CLOSING,
    dmRegister.CurrentCashRegisterTransactionId, '', '');
end;

procedure TfmMainMenu.AddInvoiceHistory(const AJob: string; AMessage: TStringList; const ASupervisorName: string);
var
  SupervisorName: string;
  i: integer;
begin
  if ASupervisorName <> '' then
    SupervisorName := ASupervisorName
  else
    SupervisorName := '-';

  qryRegisterSalesHd.Edit;
  qryRegisterSalesHd.FieldByName('InternalMemo').AsString := qryRegisterSalesHd.FieldByName('InternalMemo').AsString + #13#10 +
    DateTimeToStr(dmGlobal.SettingGlobal.ServerDateTime) + ' # ' + AJob + ' # Approved By : ' + SupervisorName;
  if Assigned(AMessage) then
  begin
    qryRegisterSalesHd.FieldByName('InternalMemo').AsString :=
      qryRegisterSalesHd.FieldByName('InternalMemo').AsString + #13#10;

    for i := 0 to AMessage.Count - 1 do
      if i = 0 then
        qryRegisterSalesHd.FieldByName('InternalMemo').AsString :=
          qryRegisterSalesHd.FieldByName('InternalMemo').AsString +
          AMessage.Strings[i]
      else
        qryRegisterSalesHd.FieldByName('InternalMemo').AsString :=
          qryRegisterSalesHd.FieldByName('InternalMemo').AsString +
          ', ' + AMessage.Strings[i];
  end;
  qryRegisterSalesHd.Post;
end;

procedure TfmMainMenu.actInvoiceVoucherExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    ProcessInvoiceVoucher;
end;

procedure TfmMainMenu.ActionManager1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  // Always set focus back to barcode id
  if edtBarcodeId.Enabled then
    edtBarcodeId.SetFocus;
end;

procedure TfmMainMenu.actItemBonusExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
  begin
    WorkingOnGridDetail(stBonus);
  end;
end;

procedure TfmMainMenu.actItemChangePriceExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    WorkingOnGridDetail(stPriceLevel);
end;

procedure TfmMainMenu.actItemDisc1Execute(Sender: TObject);
begin
  if ValidHeaderStatus then
    WorkingOnGridDetail(stDisc1);
end;

procedure TfmMainMenu.actItemDisc2Execute(Sender: TObject);
begin
  if ValidHeaderStatus then
    WorkingOnGridDetail(stDisc2)
end;

procedure TfmMainMenu.actItemShowPriceExecute(Sender: TObject);
begin
//
end;

procedure TfmMainMenu.actItemVoidExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    WorkingOnGridDetail(stVoid);
end;

procedure TfmMainMenu.actItemVoucherExecute(Sender: TObject);
begin
  if ValidHeaderStatus then
    WorkingOnGridDetail(stVoucher)
end;

procedure TfmMainMenu.actInvoiceSearchItemExecute(Sender: TObject);
var
  ItemId, BarcodeId: string;
begin
  if TfmSearchItem.ExecuteForm(ItemId, BarcodeId) = mrOk then
  begin
    edtBarcodeId.EditValue := BarcodeId;
    if not dmRegister.OptionUseBarcodeMode then
      edtItemQty.SetFocus;
  end;
//  if sbSearchItem.Execute = mrOk then
//  begin
//    edtBarcodeId.EditValue := sbSearchItem.FieldByName('BarcodeId').AsString;
//    if not dmRegister.OptionUseBarcodeMode then
//      edtItemQty.SetFocus;
//  end;
end;

procedure TfmMainMenu.CalculateTotal(ARefreshPayment: boolean);
var
  Amount, Total: Currency;
begin
  if not qryRegisterSalesHd.Active then
    Exit;

  if cgvRegisterSalesDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvRegisterSalesDt.DataController.Summary.FooterSummaryValues[1];

  edtDisc1Amount.EditValue :=
    (Amount * qryRegisterSalesHd.FieldByName('Disc').AsFloat) / 100;

  edtDisc2Amount.EditValue :=
    ((Amount - edtDisc1Amount.EditValue) * qryRegisterSalesHd.FieldByName('Disc2').AsFloat) / 100;

  Total :=
    Amount - edtDisc1Amount.EditValue - edtDisc2Amount.EditValue -
    qryRegisterSalesHd.FieldByName('VoucherAmount').AsCurrency;

  if dmShare.OptionSalesRoundingValue <> 0 then
    edtRounding.EditValue := (Ceil(Total / dmShare.OptionSalesRoundingValue) * dmShare.OptionSalesRoundingValue) - Total
  else
    edtRounding.EditValue := 0;

  edtGrandTotal.EditValue := Total + edtRounding.EditValue;

  if ARefreshPayment then
  begin
    qryGetRegisterSalesPayment.Close;
    qryGetRegisterSalesPayment.Params[0].Value := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString;
    OpenIfClose(qryGetRegisterSalesPayment);
    edtTotalPayment.EditValue := qryGetRegisterSalesPayment.FieldByName('TotalAmount').AsCurrency;
  end;

  edtOutstandingTotalAmount.EditValue := edtGrandTotal.EditValue - edtTotalPayment.EditValue;
end;

procedure TfmMainMenu.cgvRegisterSalesDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ProcessGridDetail;
end;

procedure TfmMainMenu.cgvRegisterSalesDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  CalculateTotal(False);
end;

procedure TfmMainMenu.cgvRegisterSalesDtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ProcessGridDetail;

  if Key = VK_ESCAPE then
    WorkingOnBarcode;
end;

procedure TfmMainMenu.cgvRegisterSalesDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if not (ARecord.Values[cgvRegisterSalesDtstatuscolor.Index] = null) then
    if (ARecord.Values[cgvRegisterSalesDtstatuscolor.Index] = '1') then
      AStyle := stRedLight
    else if (ARecord.Values[cgvRegisterSalesDtstatuscolor.Index] = '2') then
      AStyle := stGreyLight;
end;

procedure TfmMainMenu.dbeRegisterSalesIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  UpdateHeaderStatus;
end;

procedure TfmMainMenu.DeinitForm;
begin
  //stop timer
  tmMainMenuTimer.Enabled := False;

  //do not refresh status bar
  Self.OnResize := nil;
end;

function TfmMainMenu.ProcessInsertDetail: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  FlagNeedValidation, LevelValidation: string;
begin
  Result := False;
  edtBarcodeId.Tag := 0; // Initialize Barcode id back to not ready state

  // Check Header
  if qryRegisterSalesHd.IsEmpty then
  begin
    if MessageDlg('Buat nota baru sekarang ?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not actInvoiceNew.Execute then
        Exit;
    end
    else
      Exit;
  end
  else
  begin
    if not ValidHeaderStatus then
      Exit;

    if (edtGrandTotal2.EditValue <> 0) and (edtOutstandingTotalAmount.EditValue = 0) then
      if MessageDlg(ASK_CREATE_NEW_INVOICE_ON_PAID_INVOICE, mtInformation, [mbYes, mbNo], 0) = mrYes then
        if not actInvoiceNew.Execute then
          Exit;
  end;

  if GetItemInfo(qryPrevItem.FieldByName('ItemId').AsString, FlagNeedValidation, LevelValidation) then
  begin
    if FlagNeedValidation = '1' then
    begin
      JobMessage := TStringList.Create;
      try
        JobTitle := 'Validasi Barang Khusus';
        JobMessage.Add('Barang: ' + qryPrevItem.FieldByName('ItemName').AsString);
        if not dmRegister.GetValidationSuperuser(JobTitle, JobMessage,
          StrToInt(LevelValidation), SupervisorName) then
          Exit;

        AddInvoiceHistory(JobTitle, JobMessage, SupervisorName);
      finally
        JobMessage.Free;
      end;
    end;
  end;

  // Process Detail
  qryRegisterSalesDt.Insert;
  qryRegisterSalesDt.FieldByName('RegisterSalesId').AsVariant := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsVariant;
  qryRegisterSalesDt.FieldByName('No').AsVariant := FLastTransNo + 1;
  qryRegisterSalesDt.FieldByName('ItemId').AsVariant := qryPrevItem.FieldByName('ItemId').AsVariant;
  qryRegisterSalesDt.FieldByName('Qty').AsVariant := edtItemQty.EditValue;
  qryRegisterSalesDt.FieldByName('Price').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('DiscItemPrice').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('DiscItem2').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('DiscItemPrice2').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('VoucherItem').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 0;
  qryRegisterSalesDt.FieldByName('StatusColor').AsVariant := 0;

  if not qryPrevItem.FieldByName('Price1').IsNull then
  begin
    if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty1').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price1').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_1').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 1;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure1').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty2').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price2').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_2').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 2;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure2').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty3').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price3').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_3').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 3;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure3').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty4').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price4').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_4').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 4;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure4').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty5').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price5').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_5').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 5;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure5').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty6').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price6').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_6').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 6;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure6').AsString;
    end
    else if edtItemQty.EditValue <= qryPrevItem.FieldByName('Qty7').AsFloat  then
    begin
      qryRegisterSalesDt.FieldByName('Price').AsVariant := qryPrevItem.FieldByName('Price7').AsVariant;
      qryRegisterSalesDt.FieldByName('DiscItem').AsVariant := qryPrevItem.FieldByName('Disc1_7').AsVariant;
      qryRegisterSalesDt.FieldByName('PriceLevel').AsVariant := 7;
      qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := qryPrevItem.FieldByName('UnitMeasure7').AsString;
    end
    else // Tidak ada level qty yg cocok
      qryRegisterSalesDt.FieldByName('StatusColor').AsVariant := 1;
  end
  else // Harga belum di setting
    qryRegisterSalesDt.FieldByName('StatusColor').AsVariant := 2;
  qryRegisterSalesDt.Post;

  edtItemPrice.EditValue := qryRegisterSalesDt.FieldByName('Price').AsCurrency;
  FLastTransNo := FLastTransNo + 1;

  if dmRegister.OptionUseBarcodeMode then
  begin
    // Set Default Qty Again
    edtItemQty.EditValue := 1;
  end;

  edtBarcodeId.SetFocus;
  edtBarcodeId.Clear;
  edtBarcodeId.SelectAll;

  Result := True;
end;

function TfmMainMenu.ProcessInsertHeader: boolean;
var
  Prefix, OldId: string;
  Counter: integer;
begin
  Result := True;

  // Before New Transaction
  if not qryRegisterSalesHd.IsEmpty then
  begin
    if qryRegisterSalesHd.FieldByName(FIELD_STATUS_APPROVE).AsString <> STATUS_VOID then
    begin
      // Cek apakah nota masih kosong
      if qryRegisterSalesDt.RecordCount = 0 then
      begin
        MessageDlg(MSG_CREATE_NEW_INVOICE_INVALID, mtInformation, [mbOk], 0);
        Result := False;
      end
      else
      begin
        // Cek apakah nota belum terbayar
        if edtOutstandingTotalAmount.EditValue <> 0 then
          if MessageDlg(ASK_CREATE_NEW_INVOICE_ON_UNPAID_INVOICE, mtInformation, [mbNo, mbYes], 0) = mrNo then
            Result := False;
      end;
    end;
  end;

  if Result then
  begin
    // Generate ID
    Prefix := dmRegister.CurrentCashRegisterTransactionId + '.';
    qryGetLastRegisterSalesId.Close;
    qryGetLastRegisterSalesId.Params[0].Value := Prefix + '%';
    OpenIfClose(qryGetLastRegisterSalesId);
    OldId := qryGetLastRegisterSalesId.FieldByName('RegisterSalesId').AsString;
    if OldId <> '' then
      Counter := StrToInt(Copy(OldId, Length(Prefix) + 1, Length(OldId) - Length(Prefix))) + 1
    else
      Counter := 1;

    // Create New Transaction
    qryRegisterSalesHd.Insert;
    qryRegisterSalesHd.FieldByName('CashRegisterTransactionId').AsString := dmRegister.CurrentCashRegisterTransactionId;
    qryRegisterSalesHd.FieldByName('RegisterSalesDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString := Prefix +
      StringOfChar('0', 18 - Length(Prefix) - Length(IntToStr(Counter))) + IntToStr(Counter);
    qryRegisterSalesHd.FieldByName('Amount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('Disc').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('Discamount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('Disc2').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('DiscAmount2').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('VoucherAmount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('Tax').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('TaxAmount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('TotalAmount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('OutstandingTotalAmount').AsInteger := 0;
    qryRegisterSalesHd.FieldByName('StatusApprove').AsInteger := 0;
    qryRegisterSalesHd.Post;

    // After New Transaction
    //lblCurrentId.Caption := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString;
    if not qryRegisterSalesHd.FieldByName('RegisterSalesDate').IsNull then
      lblDate.Caption := DateTimeToStr(qryRegisterSalesHd.FieldByName('RegisterSalesDate').AsDateTime);
    CalculateTotal(True);

    edtBarcodeId.Clear;
    edtItemName.Clear;
    edtItemPrice.Clear;
    edtGrandTotal.Clear;
  end;
end;

function TfmMainMenu.ProcessInvoiceDisc1: boolean;
var
  Value: double;
  JobTitle, SupervisorName: string;
  DoValidate: boolean;
begin
  Result := False;

  if TfmInputBoxDecimal.ExecuteForm('Set Disc 1 Nota', 'Disc 1 (%)',
    dmGlobal.SettingGlobal.DisplayFormatDisc, Self.Font, 0, Value) = mrOk then
  begin
    if qryRegisterSalesHd.FieldByName('Disc').AsCurrency = Value then
      Exit;
    Result := True;
    JobTitle := 'Set Disc 1 Nota = %s %%';

    //Belum ada pembayaran
    DoValidate := True;
    if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceDisc1.BypassIfUnpaid) then
      DoValidate := False;

    if (DoValidate) and (dmShare.OptionRegValidationInvoiceDisc1.Validate) then
      if not dmRegister.GetValidationSuperuser(Format(JobTitle, [FloatToStr(Value)]), nil,
        dmShare.OptionRegValidationInvoiceDisc1.Level, SupervisorName) then
        Result := False;

    if Result then
    begin
      qryRegisterSalesHd.Edit;
      qryRegisterSalesHd.FieldByName('Disc').AsCurrency := Value;
      qryRegisterSalesHd.Post;

      AddInvoiceHistory(Format(JobTitle, [FloatToStr(Value)]), nil, SupervisorName);
    end;
  end;
end;

function TfmMainMenu.ProcessInvoiceDisc2: boolean;
var
  Value: double;
  JobTitle, SupervisorName: string;
  DoValidate: Boolean;
begin
  Result := False;

  if TfmInputBoxDecimal.ExecuteForm('Set Disc 2', 'Disc 2 (%)',
    dmGlobal.SettingGlobal.DisplayFormatDisc, Self.Font, 0, Value) = mrOk then
  begin
    if qryRegisterSalesHd.FieldByName('Disc2').AsCurrency = Value then
      Exit;
    Result := True;
    JobTitle := 'Set Disc 2 Nota = %s %%';

    //Belum ada pembayaran
    DoValidate := True;
    if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceDisc2.BypassIfUnpaid) then
      DoValidate := False;

    if (DoValidate) and (dmShare.OptionRegValidationInvoiceDisc2.Validate) then
      if not dmRegister.GetValidationSuperuser(Format(JobTitle, [FloatToStr(Value)]), nil,
        dmShare.OptionRegValidationInvoiceDisc2.Level, SupervisorName) then
        Result := False;

    if Result then
    begin
      qryRegisterSalesHd.Edit;
      qryRegisterSalesHd.FieldByName('Disc2').AsCurrency := Value;
      qryRegisterSalesHd.Post;

      AddInvoiceHistory(Format(JobTitle, [FloatToStr(Value)]), nil, SupervisorName);
    end;
  end;
end;

function TfmMainMenu.ProcessInvoiceReprint: boolean;
var
  JobTitle, SupervisorName: string;
begin
  Result := False;

  if (edtTotalPayment.EditValue = 0) and (dmShare.OptionCannotPrintUnpaidInvoice) then
  begin
    MessageDlg(MSG_CANNOT_PRINT_UNPAID_INVOICE, mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
  JobTitle := 'Reprint Nota = %s';

  if qryRegisterSalesHd.FieldByName(FIELD_COUNTER_PRINT).AsInteger > 0 then
    if dmShare.OptionRegValidationInvoiceReprint.Validate then
      if not dmRegister.GetValidationSuperuser(Format(JobTitle, [qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString]),
        nil, dmShare.OptionRegValidationInvoiceReprint.Level, SupervisorName) then
        Result := False;

  if Result then
  begin
    if TfmPrintFastReport.ExecuteForm('%', FORM_REGISTER_INVOICE,
      lblDBId.Caption, '', '') = mrOk then
    begin
      if qryRegisterSalesHd.State in [dsBrowse] then
        qryRegisterSalesHd.Edit;
      qryRegisterSalesHd.FieldByName(FIELD_COUNTER_PRINT).AsInteger :=
        qryRegisterSalesHd.FieldByName(FIELD_COUNTER_PRINT).AsInteger + 1;
      qryRegisterSalesHd.Post;

      AddInvoiceHistory(Format(JobTitle, [qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString]), nil, SupervisorName);
    end
    else
      MessageDlg(MSG_PRINTER_FAILED, mtInformation, [mbOk], 0);
  end;
end;

function TfmMainMenu.ProcessInvoiceVoid: boolean;
var
  JobTitle, SupervisorName: string;
begin
  Result := False;

  if qryRegisterSalesHd.FieldByName('StatusApprove').AsString = STATUS_VOID then
    Exit;

  if edtOutstandingTotalAmount.EditValue = 0 then
  begin
    MessageDlg(MSG_INVALID_INVOICE_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg(ASK_VOID, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    Result := True;
    JobTitle := 'Void Nota = %s';

    if dmShare.OptionRegValidationInvoiceVoid.Validate then
      if not dmRegister.GetValidationSuperuser(Format(JobTitle, [qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString]),
        nil, dmShare.OptionRegValidationInvoiceVoid.Level, SupervisorName) then
        Result := False;

    if Result then
    begin
      AddInvoiceHistory(Format(JobTitle, [qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString]), nil, SupervisorName);

      qryRegisterSalesHd.Edit;
      qryRegisterSalesHd.FieldByName('StatusApprove').AsString := STATUS_VOID;
      qryRegisterSalesHd.Post;
    end;
  end;
end;

function TfmMainMenu.ProcessInvoiceVoucher: boolean;
var
  S: string;
  Value: double;
  JobTitle, SupervisorName: string;
  DoValidate: Boolean;
begin
  Result := False;

  if edtOutstandingTotalAmount.EditValue = 0 then
  begin
    MessageDlg(MSG_INVALID_INVOICE_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  if TfmInputBoxString.ExecuteForm('Set Voucher Nota', 'No Voucher', Self.Font, S) = mrOk then
  begin
    if TfmInputBoxDecimal.ExecuteForm('Set Voucher Nota', 'Nilai Voucher',
      dmGlobal.SettingGlobal.DisplayFormatCurrency, Self.Font, 0, Value) = mrOk then
    begin
      if (qryRegisterSalesHd.FieldByName('Voucher').AsString = S) and
        (qryRegisterSalesHd.FieldByName('VoucherAmount').AsCurrency = Value) then
        Exit;

      if edtOutstandingTotalAmount.EditValue < Value then
      begin
        MessageDlg(MSG_INVALID_INVOICE_VOUCHER, mtInformation, [mbOk], 0);
        Exit;
      end;

      Result := True;
      JobTitle := 'Set Voucher Nota = %s, No = %s';

    //Belum ada pembayaran
    DoValidate := True;
    if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceVoucher.BypassIfUnpaid) then
      DoValidate := False;

    if (DoValidate) and (dmShare.OptionRegValidationInvoiceVoucher.Validate) then
        if not dmRegister.GetValidationSuperuser(Format(JobTitle, [FloatToStr(Value), S]), nil,
          dmShare.OptionRegValidationInvoiceVoucher.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesHd.Edit;
        qryRegisterSalesHd.FieldByName('Voucher').AsString := S;
        qryRegisterSalesHd.FieldByName('VoucherAmount').AsCurrency := Value;
        qryRegisterSalesHd.Post;

        AddInvoiceHistory(Format(JobTitle, [FloatToStr(Value), S]), nil, SupervisorName);
      end;
    end;
  end;
end;

procedure TfmMainMenu.dsRegisterSalesDtDataChange(Sender: TObject;
  Field: TField);
begin
  if (Field = nil) then
    Exit;

  if qryRegisterSalesDt.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) then
    begin
      if qryRegisterSalesDt.FieldByName('DiscItem').AsFloat >= 0 then
        qryRegisterSalesDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qryRegisterSalesDt.FieldByName('Price').AsCurrency *
          qryRegisterSalesDt.FieldByName('DiscItem').AsFloat) / 100;

      if qryRegisterSalesDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qryRegisterSalesDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qryRegisterSalesDt.FieldByName('Price').AsCurrency -
          qryRegisterSalesDt.FieldByName('DiscItemPrice').AsCurrency) *
          qryRegisterSalesDt.FieldByName('DiscItem2').AsFloat) / 100;

      qryRegisterSalesDt.FieldByName('Amount').AsCurrency :=
        qryRegisterSalesDt.FieldByName('Qty').AsFloat *
        (qryRegisterSalesDt.FieldByName('Price').AsCurrency -
        qryRegisterSalesDt.FieldByName('DiscItemPrice').AsCurrency -
        qryRegisterSalesDt.FieldByName('DiscItemPrice2').AsCurrency -
        qryRegisterSalesDt.FieldByName('VoucherItem').AsCurrency);
    end;
  end;
end;

procedure TfmMainMenu.dsRegisterSalesHdDataChange(Sender: TObject;
  Field: TField);
begin
  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'Disc') = 0) or
    (CompareText(Field.FieldName, 'Disc2') = 0) or
    (CompareText(Field.FieldName, 'VoucherAmount') = 0) then
    CalculateTotal(False);
end;

procedure TfmMainMenu.FormCreate(Sender: TObject);
begin
  InitForm;
end;

procedure TfmMainMenu.FormDestroy(Sender: TObject);
begin
  DeinitForm;
end;

procedure TfmMainMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if Key = VK_UP then
      actDetailUp.Execute
    else if Key = VK_DOWN then
      actDetailDown.Execute;
  end;
end;

procedure TfmMainMenu.FormShow(Sender: TObject);
begin
  if edtBarcodeId.Enabled then
    edtBarcodeId.SetFocus;
end;

function TfmMainMenu.GetItemInfo(const AItemId: string): string;
begin
  qryGetItemInfo.Close;
  qryGetItemInfo.Params[0].Value := AItemId;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
    Result := qryGetItemInfo.FieldByName('ItemName').AsString;
end;

function TfmMainMenu.GetItemInfo(const AItemId: string;
  out AFlagNeedValidation, ALevelValidation: string): boolean;
begin
  Result := False;
  qryGetItemInfo.Close;
  qryGetItemInfo.Params[0].Value := AItemId;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
  begin
    AFlagNeedValidation := qryGetItemInfo.FieldByName('FlagNeedValidation').AsString;
    ALevelValidation := qryGetItemInfo.FieldByName('LevelValidation').AsString;
    Result := True;
  end;
end;

procedure TfmMainMenu.InitForm;
var
  Filename: string;
begin
  if not Application.Terminated then
  begin
    // Process Login
    if TfmLogin.ExecuteForm <> mrOk then
    begin
      Application.Terminate;
      Application.ProcessMessages;
      Exit;
    end;

    // Initialize
    tmMainMenuTimer.Enabled := True;
    Self.Caption := 'Zetron Cash Register' +
      ' v' + dmGlobal.SettingGlobal.VersionFileVersion +
      ' - ' + dmGlobal.SettingGlobal.LoginDatabaseName;
    Self.WindowState := wsMaximized;

    // Load option from database
    dmGlobal.LoadDataFromOption;
    // re-nit component
    dmGlobal.InitComponent(dmShare);
    dmShare.LoadDataFromOption;
    dmGlobal.InitComponent(dmRegister);

    // Init this form
    Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
      TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
    IvPositionDevExpress1.Filename := Filename;
    IvPositionDevExpress1.AutoLoad := True;
    IvPositionDevExpress1.ExecuteLoadProcceses;

    sbMainMenu.Panels[0].Text := 'User : ' + dmGlobal.SettingGlobal.LoginEmployeeName;
    sbMainMenu.Panels[1].Text := 'Register : ' + dmRegister.CurrentCashRegisterId;
    sbMainMenu.Panels[2].Text := 'Transaksi Register : ' + dmRegister.CurrentCashRegisterTransactionId;
    sbMainMenu.Panels[3].Text := 'Tgl Transaksi Register : ' + DateToStr(dmRegister.CurrentCashRegisterDate);

    edtOutstandingTotalAmount.EditValue := 0;
    edtTotalPayment.EditValue := 0;
    edtGrandTotal2.EditValue := 0;
    edtRounding.EditValue := 0;
    dbeRegisterSalesId.Visible := False;

    edtGrandTotal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    edtItemQty.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    edtItemPrice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    TcxCurrencyEditProperties(cgvRegisterSalesDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    TcxCurrencyEditProperties(cgvRegisterSalesDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
    TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    TcxCurrencyEditProperties(cgvRegisterSalesDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    TcxCurrencyEditProperties(cgvRegisterSalesDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbeDisc1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
    edtDisc1Amount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbeDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
    edtDisc2Amount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbeVoucherAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    edtRounding.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    edtGrandTotal2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    edtTotalPayment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    edtOutstandingTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    SetReadOnly(cgvRegisterSalesDt);
    SetReadOnly(dbeInternalMemo);

    { TODO -oIvan -cDevelopment : Auto Print ? }
// if AutoPrint then
//   btnPrint.Visible := False;

    dmGlobal.InitComponent(Self);

    if dmRegister.OptionUseBarcodeMode then
    begin
      // Using Barcode
      edtItemQty.EditValue := 1;
    end
    else
    begin
      // Manual Entry
      bvlSpacer7.Visible := False;
      btnInvoicePrev.Visible := False;
      edtItemQty.Enabled := True;
      edtItemQty.OnKeyPress := nil; // override OnKeyPress Event
    end;

    // Open Query
    OpenIfClose(qryPrevItem, True);
    qryRegisterSalesHd.Params[0].Value := dmRegister.CurrentCashRegisterTransactionId;
    OpenIfClose(qryRegisterSalesHd, True, True);
    OpenIfClose(qryRegisterSalesDt, True);
  end;
end;

function TfmMainMenu.ProcessClosing: boolean;
var
  fmOpenWaiting: TfmOpenWaiting;
begin
  Result := False;

  if MessageDlg(ASK_CLOSING_REGISTER, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  fmOpenWaiting := TfmOpenWaiting.Create(Application);
  try
    fmOpenWaiting.Show;
    Application.ProcessMessages;

    // Do Closing
    qryCashRegisterTransaction.Close;
    qryCashRegisterTransaction.Params[0].Value := dmRegister.CurrentCashRegisterTransactionId;
    OpenIfClose(qryCashRegisterTransaction);
    qryCashRegisterTransaction.Edit;
    qryCashRegisterTransaction.FieldByName('DateClosing').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryCashRegisterTransaction.Post;

    // Do Posting
    if dmShare.OptionAutoPostingOnClosingRegister then
    begin
      spPostingCashRegisterTransaction.Params[0].AsString := dmRegister.CurrentCashRegisterTransactionId;;
      spPostingCashRegisterTransaction.Execute;
    end;

    // Cetak Laporan Closing
    TfmPrintFastReport.ExecuteForm('%', FORM_REGISTER_CLOSING,
      dmRegister.CurrentCashRegisterTransactionId, '', '');

    // Finally
    MessageDlg(MSG_SAVING_CLOSING_REGISTER_COMPLETE, mtInformation, [mbOk], 0);
    Result := True;
    Close;
  finally
    fmOpenWaiting.Free;
  end;
end;

procedure TfmMainMenu.ProcessGridDetail;
begin
  try
    if not (FCurrentSalesDetailState = stSetting) then
    begin
      if ValidDetailStatus then
      begin
        if FCurrentSalesDetailState = stPriceLevel then
          ProcessItemPrice
        else if FCurrentSalesDetailState = stDisc1 then
          ProcessItemDisc1
        else if FCurrentSalesDetailState = stDisc2 then
          ProcessItemDisc2
        else if FCurrentSalesDetailState = stVoucher then
          ProcessItemVoucher
        else if FCurrentSalesDetailState = stBonus then
          ProcessItemBonus
        else if FCurrentSalesDetailState = stVoid then
          ProcessItemVoid;
      end;
    end;
  finally
    WorkingOnBarcode;
  end;
end;

function TfmMainMenu.ProcessItemBonus: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  DoValidate: Boolean;
begin
  Result := False;

  if qryRegisterSalesDt.FieldByName('Price').AsCurrency = 0 then
    Exit;

  if MessageDlg(ASK_ITEM_BONUS, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Set Barang Bonus';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));
      JobMessage.Add('Qty: ' + VarToStr(cgvRegisterSalesDtqty.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationItemBonus.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemBonus.Validate) then
        if not dmRegister.GetValidationSuperuser(JobTitle, JobMessage,
          dmShare.OptionRegValidationItemBonus.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Edit;
        qryRegisterSalesDt.FieldByName('Price').AsCurrency := 0;
        qryRegisterSalesDt.Post;

        AddInvoiceHistory(JobTitle, JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessItemDisc1: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  Value: double;
  DoValidate: Boolean;
begin
  Result := False;

  if TfmInputBoxDecimal.ExecuteForm('Set Disc Barang 1', 'Disc %',
    dmGlobal.SettingGlobal.DisplayFormatDisc, Self.Font, 0, Value) = mrOk then
  begin
    if qryRegisterSalesDt.FieldByName('DiscItem').AsCurrency = Value then
      Exit;
    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Set Disc 1 = %s %%';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));
      JobMessage.Add('Qty: ' + VarToStr(cgvRegisterSalesDtqty.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceDisc1.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemDisc1.Validate) then
        if not dmRegister.GetValidationSuperuser(Format(JobTitle, [FloatToStr(Value)]), JobMessage,
          dmShare.OptionRegValidationItemDisc1.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Edit;
        qryRegisterSalesDt.FieldByName('DiscItem').AsCurrency := Value;
        qryRegisterSalesDt.Post;

        AddInvoiceHistory(Format(JobTitle, [FloatToStr(Value)]), JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessItemDisc2: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  Value: double;
  DoValidate: Boolean;
begin
  Result := False;

  if TfmInputBoxDecimal.ExecuteForm('Set Disc Barang 2', 'Disc Barang 2 %',
    dmGlobal.SettingGlobal.DisplayFormatDisc, Self.Font, 0, Value) = mrOk then
  begin
    if qryRegisterSalesDt.FieldByName('DiscItem2').AsCurrency = Value then
      Exit;
    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Set Disc 2 = %s %%';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));
      JobMessage.Add('Qty: ' + VarToStr(cgvRegisterSalesDtqty.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceDisc2.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemDisc2.Validate) then
        if not dmRegister.GetValidationSuperuser(Format(JobTitle, [FloatToStr(Value)]), JobMessage,
          dmShare.OptionRegValidationItemDisc2.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Edit;
        qryRegisterSalesDt.FieldByName('DiscItem2').AsCurrency := Value;
        qryRegisterSalesDt.Post;

        AddInvoiceHistory(Format(JobTitle, [FloatToStr(Value)]), JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessItemPrice: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  Level: byte;
  Price: Currency;
  UnitMeasure: string;
  DoValidate: Boolean;
begin
  Result := False;

  if TfmChangePrice.ExecuteForm(qryRegisterSalesDt.FieldByName('ItemId').AsInteger,
    Level, Price, UnitMeasure) = mrOk then
  begin
    if qryRegisterSalesDt.FieldByName('PriceLevel').AsInteger = Level then
      Exit;

    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Set Harga Level = %s, Harga Satuan = %s, Satuan = %s';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));
      JobMessage.Add('Qty: ' + VarToStr(cgvRegisterSalesDtqty.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationItemPrice.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemPrice.Validate) then
        if not dmRegister.GetValidationSuperuser(Format(JobTitle, [IntToStr(Level), FloatToStr(Price), UnitMeasure]),
          JobMessage, dmShare.OptionRegValidationItemPrice.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Edit;
        qryRegisterSalesDt.FieldByName('PriceLevel').AsInteger := Level;
        qryRegisterSalesDt.FieldByName('PriceLevelUnitMeasure').AsString := UnitMeasure;
        qryRegisterSalesDt.FieldByName('Price').AsCurrency := Price;
        qryRegisterSalesDt.Post;

        AddInvoiceHistory(Format(JobTitle, [IntToStr(Level), FloatToStr(Price), UnitMeasure]), JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessItemVoid: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  DoValidate: Boolean;
begin
  Result := False;

  if MessageDlg(ASK_FOR_ITEM_VOID, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Void Barang';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));
      JobMessage.Add('Qty: ' + VarToStr(cgvRegisterSalesDtqty.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationItemVoid.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemVoid.Validate) then
        if not dmRegister.GetValidationSuperuser(JobTitle, JobMessage,
          dmShare.OptionRegValidationItemVoid.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Delete;
        AddInvoiceHistory(JobTitle, JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessItemVoucher: boolean;
var
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
  Value: double;
  DoValidate: Boolean;
begin
  Result := False;

  if TfmInputBoxDecimal.ExecuteForm('Set Voucher Barang', 'Voucher Rp',
    dmGlobal.SettingGlobal.DisplayFormatCurrency, Self.Font, 0, Value) = mrOk then
  begin
    if qryRegisterSalesDt.FieldByName('VoucherItem').AsCurrency = Value then
      Exit;
    if qryRegisterSalesDt.FieldByName('Price').AsCurrency < Value then
    begin
      MessageDlg(MSG_INVALID_ITEM_VOUCHER, mtInformation, [mbOk], 0);
      Exit;
    end;

    Result := True;

    JobMessage := TStringList.Create;
    try
      JobTitle := 'Set Voucher = @%s x %s = %s';
      JobMessage.Add('No: ' + VarToStr(cgvRegisterSalesDtno.EditValue));
      JobMessage.Add('Barang: ' + GetItemInfo(cgvRegisterSalesDtItemname.EditValue));

      //Belum ada pembayaran
      DoValidate := True;
      if (edtTotalPayment.EditValue = 0) and (dmShare.OptionRegValidationInvoiceVoucher.BypassIfUnpaid) then
        DoValidate := False;

      if (DoValidate) and (dmShare.OptionRegValidationItemVoucher.Validate) then
        if not dmRegister.GetValidationSuperuser(Format(JobTitle,
          [FloatToStr(Value), FloatToStr(cgvRegisterSalesDtqty.EditValue),
          FloatToStr(Value * cgvRegisterSalesDtqty.EditValue)]),
          JobMessage, dmShare.OptionRegValidationItemVoucher.Level, SupervisorName) then
          Result := False;

      if Result then
      begin
        qryRegisterSalesDt.Edit;
        qryRegisterSalesDt.FieldByName('VoucherItem').AsCurrency := Value;
        qryRegisterSalesDt.Post;

        AddInvoiceHistory(
          Format(JobTitle, [FloatToStr(Value), FloatToStr(cgvRegisterSalesDtqty.EditValue),
          FloatToStr(Value * cgvRegisterSalesDtqty.EditValue)]),
          JobMessage, SupervisorName);
      end;
    finally
      JobMessage.Free;
    end;
  end;
end;

function TfmMainMenu.ProcessPayment: boolean;
var
  DoPrint: boolean;
  RegisterSalesId: string;
begin
  Result := False;

  if edtOutstandingTotalAmount.EditValue <> 0 then
  begin
    RegisterSalesId := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString;
    if TfmRegisterPayment.ExecuteForm(tptRegisterPayment,
      RegisterSalesId, '', edtOutstandingTotalAmount.EditValue) = mrOk then
    begin
      Result := True;

      qryRegisterSalesHd.Locate('RegisterSalesId', RegisterSalesId, [loCaseInsensitive]);
      CalculateTotal(True);

//  // check counter print
//  if FMenuOptions.MaxReprint <> 0 then
//  begin
//    if dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger >= FMenuOptions.MaxReprint then
//    begin
//      MessageDlg(Format(MSG_MAX_PRINT, [FMenuOptions.MaxReprint]), mtInformation, [mbOk], 0);
//      Exit;
//    end;
//  end;

      DoPrint := True;
      if edtOutstandingTotalAmount.EditValue <> 0 then
        if MessageDlg(ASK_PRINT_UNPAID_INVOICE, mtinformation, [mbYes, mbNo], 0) = mrNo then
          DoPrint := False;

      if DoPrint then
      begin
        //Print
        if TfmPrintFastReport.ExecuteForm('%', FORM_REGISTER_INVOICE,
          lblDBId.Caption, '', '') = mrOk then
        begin
          if qryRegisterSalesHd.State in [dsBrowse] then
            qryRegisterSalesHd.Edit;
          qryRegisterSalesHd.FieldByName(FIELD_COUNTER_PRINT).AsInteger :=
            qryRegisterSalesHd.FieldByName(FIELD_COUNTER_PRINT).AsInteger + 1;
          qryRegisterSalesHd.Post;
        end
        else
          MessageDlg(MSG_PRINTER_FAILED, mtInformation, [mbOk], 0);
      end;
    end;
  end;
end;

function TfmMainMenu.ProcessPaymentVoid: boolean;
var
  JobTitle, SupervisorName, S: string;
  NoPayment: integer;
  JobMessage: TStringList;
  RegisterSalesId: string;
begin
  Result := False;

  JobMessage := TStringList.Create;
  try
    JobTitle := 'Void Pembayaran';

    RegisterSalesId := qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString;
    if TfmPaymentInfo.ExecuteForm(qryRegisterSalesHd.FieldByName('RegisterSalesId').AsString, True,
      NoPayment, S, SupervisorName) = mrOk then
    begin
      Result := True;

      qryRegisterSalesHd.Locate('RegisterSalesId', RegisterSalesId, [loCaseInsensitive]);
      CalculateTotal(True);

      JobMessage.Text := S;
      AddInvoiceHistory(JobTitle, JobMessage, SupervisorName);
    end;
  finally
    JobMessage.Free;
  end;
end;

procedure TfmMainMenu.edtBarcodeIdEnter(Sender: TObject);
begin
  edtBarcodeId.SelectAll;
end;

procedure TfmMainMenu.edtBarcodeIdPropertiesEditValueChanged(Sender: TObject);
begin
  if VarToStr(edtBarcodeId.EditValue) = '' then
    Exit;

  if ShowItemName(VarToStr(edtBarcodeId.EditValue)) then
  begin
    if dmRegister.OptionUseBarcodeMode then
      // Barcode Mode
      ProcessInsertDetail
    else
      // Normal Mode
  end;
end;

procedure TfmMainMenu.edtGrandTotalPropertiesEditValueChanged(Sender: TObject);
begin
  if edtGrandTotal.EditValue <> null then
    edtGrandTotal2.EditValue := edtGrandTotal.EditValue
  else
    edtGrandTotal2.EditValue := 0;
end;

procedure TfmMainMenu.edtItemQtyPropertiesEditValueChanged(Sender: TObject);
begin
  if not dmRegister.OptionUseBarcodeMode then
  begin
    if edtItemQty.EditValue = null then
      Exit;

    if edtBarcodeId.Tag = 0 then // barcode Id is Invalid or null
    begin
      edtItemQty.Clear;
      edtBarcodeId.SetFocus;
      Exit;
    end;

    ProcessInsertDetail;
  end;
end;

procedure TfmMainMenu.qryRegisterSalesDtAfterOpen(DataSet: TDataSet);
begin
  if not DataSet.IsEmpty then
  begin
    DataSet.Last;
    FLastTransNo := DataSet.FieldByName('No').AsInteger;
  end;
end;

procedure TfmMainMenu.qryRegisterSalesHdNewRecord(DataSet: TDataSet);
begin
  FLastTransNo := 0;
end;

function TfmMainMenu.ShowItemName(const ABarcodeId: string): boolean;
begin
  Result := False;

  if qryPrevItem.Locate('BarcodeId', ABarcodeId, [loCaseInsensitive]) then
  begin
    edtBarcodeId.Style.Color := clWhite;
    edtItemName.StyleDisabled.Color := clWhite;
    edtItemName.EditValue := qryPrevItem.FieldByName('ItemName').AsString;
    edtItemQty.Clear; // Set null to ready except new qty entry
    edtItemPrice.Clear; // Set null to ready get new price
    edtBarcodeId.Tag := 1; // Barcode is valid
    Result := True;
  end
  else
  begin
    if VarToStr(edtBarcodeId.EditValue) <> '' then
    begin
      edtBarcodeId.Style.Color := dmGlobal.stRedLight.Color;
      edtItemName.StyleDisabled.Color := dmGlobal.stRedLight.Color;
      edtItemName.EditValue := MSG_INVALID_BARCODE_ID;
      edtBarcodeId.SetFocus;
    end
    else
    begin
      edtBarcodeId.Style.Color := clWhite;
      edtItemName.StyleDisabled.Color := clWhite;
      //edtItemName.Clear;
    end;
  end;
end;

procedure TfmMainMenu.tmMainMenuTimerTimer(Sender: TObject);
begin
  // increase time
  dmGlobal.SettingGlobal.ServerDateTime := IncSecond(dmGlobal.SettingGlobal.ServerDateTime);
  sbMainMenu.Panels.Items[4].Text := 'Tanggal : ' + DateTimeToStr(dmGlobal.SettingGlobal.ServerDateTime);
end;

procedure TfmMainMenu.UpdateHeaderStatus;
begin
  if not qryRegisterSalesHd.FieldByName('RegisterSalesDate').IsNull then
    lblDate.Caption := DateTimeToStr(qryRegisterSalesHd.FieldByName('RegisterSalesDate').AsDateTime)
  else
    lblDate.Caption := '';
  CalculateTotal(True);

  if qryRegisterSalesHd.FieldByName('StatusApprove').AsString = STATUS_VOID then
  begin
    //Disable Barcode Box
    edtBarcodeId.Clear;
    edtBarcodeId.Enabled := False;
    edtBarcodeId.TabStop := False;
    edtBarcodeId.Style.Color := dmGlobal.stRedLight.Color;
    edtItemName.StyleDisabled.Color := dmGlobal.stRedLight.Color;
    edtItemName.EditValue := 'V O I D';
  end
  else
  begin
    edtBarcodeId.Enabled := True;
    edtBarcodeId.TabStop := True;
    edtBarcodeId.Style.Color := clWhite;
    edtItemName.StyleDisabled.Color := clWhite;
    edtItemName.Clear;
    if Self.Showing then
      edtBarcodeId.SetFocus;
  end;
end;

function TfmMainMenu.ValidDetailStatus: boolean;
begin
  Result := False;

  if qryRegisterSalesDt.IsEmpty then
    Exit;

  Result := True;
end;

function TfmMainMenu.ValidHeaderStatus: boolean;
begin
  Result := False;

  if qryRegisterSalesHd.IsEmpty then
    Exit;

  if qryRegisterSalesHd.FieldByName('StatusApprove').AsString = STATUS_VOID then
  begin
    MessageDlg(MSG_TRANSACTION_ALREADY_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
end;

procedure TfmMainMenu.WMEndSession(var Msg: TWMEndSession);
begin
  if Msg.EndSession = TRUE then
    Application.Terminate;

  inherited;
end;

procedure TfmMainMenu.WorkingOnBarcode;
begin
  FCurrentSalesDetailState := stBrowse;

  // Disable Grid
  cgvRegisterSalesDt.OptionsSelection.HideSelection := True;
  cgvRegisterSalesDt.OptionsSelection.InvertSelect := False;
  cgRegisterSalesDt.Enabled := False;
  cgRegisterSalesDt.TabStop := False;

  // Enable Barcode
  edtBarcodeId.Enabled := True;
  edtBarcodeId.TabStop := True;
  edtBarcodeId.SetFocus;
  pcMenu.Enabled := True;
  edtItemName.Clear;
end;

procedure TfmMainMenu.WorkingOnGridDetail(ASalesDetailState: TSalesDetailState);
begin
  FCurrentSalesDetailState := ASalesDetailState;

  //Disable Barcode Box
  edtBarcodeId.Clear;
  edtBarcodeId.Enabled := False;
  edtBarcodeId.TabStop := False;
  pcMenu.Enabled := False;
  edtItemName.Text := MSG_BARCODE_BOX_STATUS_WAIT;

  //EnableGridDetail;
  cgvRegisterSalesDt.OptionsSelection.InvertSelect := True;
  cgRegisterSalesDt.Enabled := True;
  cgRegisterSalesDt.TabStop := True;
  cgRegisterSalesDt.SetFocus;
end;

end.


