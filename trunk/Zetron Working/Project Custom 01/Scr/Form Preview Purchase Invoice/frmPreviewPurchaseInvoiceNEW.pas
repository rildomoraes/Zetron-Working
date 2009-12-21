unit frmPreviewPurchaseInvoiceNEW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniDB, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit, StdCtrls, ADODB,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  cxDBExtLookupComboBox;

type
  TfmPreviewPurchaseInvoice = class(TFormUniDB)
    qryPrevPurchaseInvoiceHd: TADOQuery;
    dsPrevPurchaseInvoiceHd: TDataSource;
    qryPrevPurchaseInvoiceDt: TADOQuery;
    dsPrevPurchaseInvoiceDt: TDataSource;
    pnlHeader: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    cgPreviewPurchaseInvoice: TcxGrid;
    cgvPrevPurchaseInvoiceHd: TcxGridDBTableView;
    cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceHdvcIdSupplier: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceHddcDisc: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceHddcTax: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceDt: TcxGridDBTableView;
    cgvPrevPurchaseInvoiceDtinNo: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceDtinQty: TcxGridDBColumn;
    cgvPrevPurchaseInvoiceDtinCurrentQty: TcxGridDBColumn;
    cgPreviewPurchaseInvoiceLevel1: TcxGridLevel;
    cgPreviewPurchaseInvoiceLevel2: TcxGridLevel;
    btnOk: TcxButton;
    actOk: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FIdPurchaseInvoice: string;
    FPeriod: TDateTime;
  public
    class function ExecuteForm(const ACurrentPI: string; AMonth, AYear: integer;
      ACurrentIdSupplier, ASupplierName: string; var AIdPurchaseInvoice, AIdSupplier: string;
      var ADisc, ATax: real): TModalResult;
  end;

var
  fmPreviewPurchaseInvoice: TfmPreviewPurchaseInvoice;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmPreviewPurchaseInvoice.actOkExecute(Sender: TObject);
begin
  inherited;

  if (VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue) <> '') and
    (VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue) <> edtIdPurchaseInvoice.EditValue) then
    MessageDlg(
      Format(MSG_CANNOT_USE_PI,
      [VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue),
      VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue)]),
      mtInformation, [mbOk], 0)
  else
    ModalResult := mrOk;
end;

class function TfmPreviewPurchaseInvoice.ExecuteForm(const ACurrentPI: string;
  AMonth, AYear: integer; ACurrentIdSupplier, ASupplierName: string;
  var AIdPurchaseInvoice, AIdSupplier: string; var ADisc,
  ATax: real): TModalResult;
begin
  fmPreviewPurchaseInvoice := TfmPreviewPurchaseInvoice.Create(Application);
  with fmPreviewPurchaseInvoice do
  begin
    try
      FIdPurchaseInvoice := ACurrentPI;

      if AMonth = 0 then
      begin
        AMonth := 12;
        FPeriod := EncodeDate(AYear - 1, AMonth, 1)
      end else
        FPeriod := EncodeDate(AYear, AMonth, 1);

      InitForm(ACurrentPI, ACurrentIdSupplier, APeriod, AMonth);
      Result := ShowModal;
      if Result = mrOk then
      begin
        AIdPurchaseInvoice := VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue);
        AIdSupplier := VarToStr(cgvPrevPurchaseInvoiceHdvcIdSupplier.EditValue);
        ADisc := cgvPrevPurchaseInvoiceHddcDisc.EditValue;
        ATax  := cgvPrevPurchaseInvoiceHddcTax.EditValue;
      end
      else
      begin
        AIdPurchaseInvoice := ACurrentPI;
        AIdSupplier := ACurrentIdSupplier;
      end;
      DeinitForm;
    finally
      Release;
    end;
  end
end;

procedure TfmPreviewPurchaseInvoice.InitForm;
begin
  inherited;

  GetYearList(cbYear, dmGlobal.ServerDateTime);
  if AMonth = 12 then
    cbYear.EditValue := YearOf(dmGlobal.ServerDateTime) - 1;
  cbMonth.ItemIndex := AMonth - 1;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  SetPreviewPurchaseInvoiceWith(APeriod);
  qryPrevPurchaseInvoiceDt.Open;
  if ACurrentPI <> '' then
    qryPrevPurchaseInvoiceHd.Locate('vcIdPurchaseInvoice', ACurrentPI, [loCaseInsensitive]);

  SetReadOnly(cgvPrevPurchaseInvoiceHd);
  SetReadOnly(cgvPrevPurchaseInvoiceDt);
end;

procedure TfmPreviewPurchaseInvoice.MonthYearValueChange(Sender: TObject);
begin
  qryPrevPurchaseInvoiceHd.Close;
  qryPrevPurchaseInvoiceHd.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  qryPrevPurchaseInvoiceHd.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(qryPrevPurchaseInvoiceHd, True);

  qryPrevPurchaseInvoiceDt.Close;
  qryPrevPurchaseInvoiceDt.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  qryPrevPurchaseInvoiceDt.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(qryPrevPurchaseInvoiceDt);
end;

procedure TfmPreviewPurchaseInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPurchaseInvoiceHd, True);
  LockRefresh(qryPrevPurchaseInvoiceDt);
end;

end.
