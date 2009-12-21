unit frmPrintBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDB, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxCalc,
  MemDS, DBAccess, Uni, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxProgressBar, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPrintBarcode = class(TFormUniDB)
    cxButton1: TcxButton;
    actPrint: TAction;
    dsTempPrintBarcode: TDataSource;
    cgMasterSetup: TcxGrid;
    cgvMasterSetupDBTableView1: TcxGridDBTableView;
    cgvMasterSetupDBTableView1pilih: TcxGridDBColumn;
    cgvMasterSetupDBTableView1cetak: TcxGridDBColumn;
    cgvMasterSetupDBTableView1purchaseinvoicedate: TcxGridDBColumn;
    cgvMasterSetupDBTableView1purchaseinvoiceid: TcxGridDBColumn;
    cgvMasterSetupDBTableView1vendorid: TcxGridDBColumn;
    cgvMasterSetupDBTableView1warehousename: TcxGridDBColumn;
    cgvMasterSetupDBTableView1vendorname: TcxGridDBColumn;
    cgvMasterSetupDBTableView1warehouseid: TcxGridDBColumn;
    cgvMasterSetupDBTableView1no: TcxGridDBColumn;
    cgvMasterSetupDBTableView1itemid: TcxGridDBColumn;
    cgvMasterSetupDBTableView1itemname: TcxGridDBColumn;
    cgvMasterSetupDBTableView1qty: TcxGridDBColumn;
    cgvMasterSetupDBTableView1expireddate: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    bvlSpacer11: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    pnlCustom: TPanel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    qryTempPrintBarcode: TUniQuery;
    qrySetPrintBarcode: TUniQuery;
    qryDeletePrintBarcode: TUniQuery;
    qryDeleteTempBarcode: TUniQuery;
    qryUpdatePilih: TUniQuery;
    qryUpdatePilihSemua: TUniQuery;
    qrySpSetPrintBarcode: TUniQuery;
    procedure cgvMasterSetupDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cgvMasterSetupDBTableView1DataControllerFilterChanged(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  private
    FTempId: string;
    procedure MonthYearValueChange(Sender: TObject);
  public

  end;

var
  fmPrintBarcode: TfmPrintBarcode;

implementation

{$R *.dfm}

uses
  dtmGeneral, dtmInventory, dtmShare, untProcedure, untConstanta, untConstantaPOS,
  frmPreviewFastReport, dtmGlobal;

procedure TfmPrintBarcode.actPrintExecute(Sender: TObject);
begin
  inherited;

  if qryTempPrintBarcode.State in [dsEdit] then
    qryTempPrintBarcode.Post;

  qrySpSetPrintBarcode.Close;
  qrySpSetPrintBarcode.Params[0].Value := FTempId;
  qrySpSetPrintBarcode.Execute;

  // Print
  dmGlobal.ActiveReportParam1 := FTempId;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, REPORT_BARCODE, '', '', '');
end;

procedure TfmPrintBarcode.cgvMasterSetupDBTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
  inherited;

  qryUpdatePilihSemua.Close;
  qryUpdatePilihSemua.Params[0].Value := 0;
  qryUpdatePilihSemua.Params[1].Value := FTempId;
  qryUpdatePilihSemua.Execute;

  LockRefresh(qryTempPrintBarcode);
end;

procedure TfmPrintBarcode.cgvMasterSetupDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  i, Pilih: integer;
begin
  inherited;

  if (Key = VK_SPACE) then
  begin
    Pilih := cgvMasterSetupDBTableView1.Controller.SelectedRows[0].Values[cgvMasterSetupDBTableView1pilih.Index];
    if Pilih = 0 then
      Pilih := 1
    else
      Pilih := 0;

    pbProcess.Properties.Max := cgvMasterSetupDBTableView1.Controller.SelectedRowCount;
    pbProcess.Refresh;
    for i := 1 to cgvMasterSetupDBTableView1.Controller.SelectedRowCount do
    begin
      pbProcess.Position := pbProcess.Position + 1;
      pbProcess.Refresh;
      qryUpdatePilih.Close;
      qryUpdatePilih.Params[0].Value := Pilih;
      qryUpdatePilih.Params[1].Value := FTempId;
      qryUpdatePilih.Params[2].Value := cgvMasterSetupDBTableView1.Controller.SelectedRows[i - 1].Values[cgvMasterSetupDBTableView1purchaseinvoiceid.Index];
      qryUpdatePilih.Params[3].Value := cgvMasterSetupDBTableView1.Controller.SelectedRows[i - 1].Values[cgvMasterSetupDBTableView1no.Index];
      qryUpdatePilih.Params[4].Value := cgvMasterSetupDBTableView1.Controller.SelectedRows[i - 1].Values[cgvMasterSetupDBTableView1itemid.Index];
      qryUpdatePilih.Execute;
    end;
    LockRefresh(qryTempPrintBarcode);
  end;
end;

procedure TfmPrintBarcode.DeinitForm;
begin
  inherited;

  qryDeletePrintBarcode.Close;
  qryDeletePrintBarcode.Params[0].Value := FTempId;
  qryDeletePrintBarcode.Execute;

  qryDeleteTempBarcode.Close;
  qryDeleteTempBarcode.Params[0].Value := FTempId;
  qryDeleteTempBarcode.Execute;
end;

procedure TfmPrintBarcode.InitForm;
begin
  inherited;

  FTempId := FormatDateTime('hhmmsszzz', Now);
  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;

  TcxCalcEditProperties(cgvMasterSetupDBTableView1qty.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatQty;

end;

procedure TfmPrintBarcode.MonthYearValueChange(Sender: TObject);
begin
  if (qryTempPrintBarcode.State in [dsEdit, dsInsert]) or
    (qryTempPrintBarcode.State in [dsEdit, dsInsert]) then
    Abort;

  qryDeletePrintBarcode.Close;
  qryDeletePrintBarcode.Params[0].Value := FTempId;
  qryDeletePrintBarcode.Execute;

  qrySetPrintBarcode.Close;
  qrySetPrintBarcode.Params[0].Value := FTempId;
  qrySetPrintBarcode.Params[1].Value := FormatDateTime('YYYYMM', EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
//  qrySetPrintBarcode.Params[2].Value := FPurchaseInvoiceId;
  qrySetPrintBarcode.Execute;

  qryTempPrintBarcode.Close;
  qryTempPrintBarcode.Params[0].Value := FTempId;
  OpenIfClose(qryTempPrintBarcode, True);
end;

procedure TfmPrintBarcode.RefreshAll;
begin
  inherited;

  LockRefresh(qryTempPrintBarcode);
end;

end.
