unit frmPreviewPurchaseInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
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
  cxDBExtLookupComboBox, cxCalc;

type
  TfmPreviewPurchaseInvoice = class(TForm)
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
    Panel1: TPanel;
    bvlSpacer1: TBevel;
    btnClose: TcxButton;
    btnReset: TcxButton;
    btnRefresh: TcxButton;
    btnOk: TcxButton;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    qryGetPIDate: TADOQuery;
    ActionList1: TActionList;
    actClose: TAction;
    actReset: TAction;
    actRefresh: TAction;
    actOk: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
  private
    FIdPurchaseInvoice: string;

    procedure InitForm;
    procedure RefreshAll;
  public
    class function ExecuteForm(var AIdPurchaseInvoice: string;
      var ADisc, ATax: real): TModalResult;
  end;

var
  fmPreviewPurchaseInvoice: TfmPreviewPurchaseInvoice;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmPreviewPurchaseInvoice.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmPreviewPurchaseInvoice.actOkExecute(Sender: TObject);
begin
  inherited;

  ModalResult := mrOk;
end;

procedure TfmPreviewPurchaseInvoice.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmPreviewPurchaseInvoice.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

class function TfmPreviewPurchaseInvoice.ExecuteForm(
  var AIdPurchaseInvoice: string; var ADisc, ATax: real): TModalResult;
begin
  fmPreviewPurchaseInvoice := TfmPreviewPurchaseInvoice.Create(Application);
  with fmPreviewPurchaseInvoice do
  begin
    try
      FIdPurchaseInvoice := AIdPurchaseInvoice;

      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AIdPurchaseInvoice := VarToStr(cgvPrevPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue);
        ADisc := cgvPrevPurchaseInvoiceHddcDisc.EditValue;
        ATax  := cgvPrevPurchaseInvoiceHddcTax.EditValue;
      end;
    finally
      Release;
    end;
  end
end;

procedure TfmPreviewPurchaseInvoice.InitForm;
var
  Filename: string;
begin
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

  dmGlobal.InitComponent(Self);

  TcxCalcEditProperties(cgvPrevPurchaseInvoiceHddcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPurchaseInvoiceHddcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPurchaseInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPurchaseInvoiceDtinCurrentQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  SetReadOnly(cgvPrevPurchaseInvoiceHd);
  SetReadOnly(cgvPrevPurchaseInvoiceDt);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);

  qryGetPIDate.Close;
  qryGetPIDate.Parameters[0].Value := FIdPurchaseInvoice;
  OpenIfClose(qryGetPIDate);
  if not qryGetPIDate.IsEmpty then
  begin
    cbYear.Text := IntToStr(YearOf(qryGetPIDate.FieldByName('dtPurchaseInvoiceDate').AsDateTime));
    cbMonth.ItemIndex := MonthOf(qryGetPIDate.FieldByName('dtPurchaseInvoiceDate').AsDateTime) - 1;
  end
  else
  begin
    cbYear.Text := IntToStr(YearOf(dmGlobal.SettingGlobal.ServerDateTime));
    cbMonth.ItemIndex := MonthOf(dmGlobal.SettingGlobal.ServerDateTime) - 1;
  end;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(Self);
  qryPrevPurchaseInvoiceHd.Locate('vcIdPurchaseInvoice', FIdPurchaseInvoice, [loCaseInsensitive]);
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
  LockRefresh(qryPrevPurchaseInvoiceHd, True);
  LockRefresh(qryPrevPurchaseInvoiceDt);
end;

end.
