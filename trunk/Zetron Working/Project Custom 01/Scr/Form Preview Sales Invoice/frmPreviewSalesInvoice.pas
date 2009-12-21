unit frmPreviewSalesInvoice;

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
  TfmPreviewSalesInvoice = class(TForm)
    qryPrevSalesInvoiceHd: TADOQuery;
    dsPrevSalesInvoiceHd: TDataSource;
    qryPrevSalesInvoiceDt: TADOQuery;
    dsPrevSalesInvoiceDt: TDataSource;
    pnlHeader: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    Panel1: TPanel;
    bvlSpacer1: TBevel;
    btnClose: TcxButton;
    btnReset: TcxButton;
    btnRefresh: TcxButton;
    btnOk: TcxButton;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    qryGetSIDate: TADOQuery;
    ActionList1: TActionList;
    actClose: TAction;
    actReset: TAction;
    actRefresh: TAction;
    actOk: TAction;
    cgPreviewSalesInvoice: TcxGrid;
    cgvPrevSalesInvoiceHd: TcxGridDBTableView;
    cgvPrevSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevSalesInvoiceHddtSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevSalesInvoiceHdvcIdDeliveryOrder: TcxGridDBColumn;
    cgvPrevSalesInvoiceHdvcIdCustomer: TcxGridDBColumn;
    cgvPrevSalesInvoiceHddcDisc: TcxGridDBColumn;
    cgvPrevSalesInvoiceHddcTax: TcxGridDBColumn;
    cgvPrevSalesInvoiceDt: TcxGridDBTableView;
    cgvPrevSalesInvoiceDtinNo: TcxGridDBColumn;
    cgvPrevSalesInvoiceDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevSalesInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevSalesInvoiceDtinQty: TcxGridDBColumn;
    cgvPrevSalesInvoiceDtinCurrentQty: TcxGridDBColumn;
    cgPreviewSalesInvoiceLevel1: TcxGridLevel;
    cgPreviewSalesInvoiceLevel2: TcxGridLevel;
    procedure actOkExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
  private
    FIdSalesInvoice: string;

    procedure InitForm;
    procedure RefreshAll;
  public
    class function ExecuteForm(var AIdSalesInvoice: string;
      var ADisc, ATax: real): TModalResult;
  end;

var
  fmPreviewSalesInvoice: TfmPreviewSalesInvoice;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmPreviewSalesInvoice.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmPreviewSalesInvoice.actOkExecute(Sender: TObject);
begin
  inherited;

  ModalResult := mrOk;
end;

procedure TfmPreviewSalesInvoice.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmPreviewSalesInvoice.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

class function TfmPreviewSalesInvoice.ExecuteForm(
  var AIdSalesInvoice: string; var ADisc, ATax: real): TModalResult;
begin
  fmPreviewSalesInvoice := TfmPreviewSalesInvoice.Create(Application);
  with fmPreviewSalesInvoice do
  begin
    try
      FIdSalesInvoice := AIdSalesInvoice;

      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AIdSalesInvoice := VarToStr(cgvPrevSalesInvoiceHdvcIdSalesInvoice.EditValue);
        ADisc := cgvPrevSalesInvoiceHddcDisc.EditValue;
        ATax  := cgvPrevSalesInvoiceHddcTax.EditValue;
      end;
    finally
      Release;
    end;
  end
end;

procedure TfmPreviewSalesInvoice.InitForm;
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

  TcxCalcEditProperties(cgvPrevSalesInvoiceHddcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSalesInvoiceHddcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSalesInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSalesInvoiceDtinCurrentQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  SetReadOnly(cgvPrevSalesInvoiceHd);
  SetReadOnly(cgvPrevSalesInvoiceDt);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);

  qryGetSIDate.Close;
  qryGetSIDate.Parameters[0].Value := FIdSalesInvoice;
  OpenIfClose(qryGetSIDate);
  if not qryGetSIDate.IsEmpty then
  begin
    cbYear.Text := IntToStr(YearOf(qryGetSIDate.FieldByName('dtSalesInvoiceDate').AsDateTime));
    cbMonth.ItemIndex := MonthOf(qryGetSIDate.FieldByName('dtSalesInvoiceDate').AsDateTime) - 1;
  end
  else
  begin
    cbYear.Text := IntToStr(YearOf(dmGlobal.SettingGlobal.ServerDateTime));
    cbMonth.ItemIndex := MonthOf(dmGlobal.SettingGlobal.ServerDateTime) - 1;
  end;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(Self);
  qryPrevSalesInvoiceHd.Locate('vcIdSalesInvoice', FIdSalesInvoice, [loCaseInsensitive]);
end;

procedure TfmPreviewSalesInvoice.MonthYearValueChange(Sender: TObject);
begin
  qryPrevSalesInvoiceHd.Close;
  qryPrevSalesInvoiceHd.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  qryPrevSalesInvoiceHd.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(qryPrevSalesInvoiceHd, True);

  qryPrevSalesInvoiceDt.Close;
  qryPrevSalesInvoiceDt.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  qryPrevSalesInvoiceDt.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(qryPrevSalesInvoiceDt);
end;

procedure TfmPreviewSalesInvoice.RefreshAll;
begin
  LockRefresh(qryPrevSalesInvoiceHd, True);
  LockRefresh(qryPrevSalesInvoiceDt);
end;

end.
