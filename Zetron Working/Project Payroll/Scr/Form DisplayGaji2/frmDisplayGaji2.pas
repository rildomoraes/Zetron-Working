unit frmDisplayGaji2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCheckBox, cxCalc, cxCalendar, cxImageComboBox, MemDS,
  DBAccess, Uni, cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  cxButtons, ExtCtrls, ADODB, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmDisplayGaji2 = class(TFormUniDisplay)
    cgDisplay: TcxGrid;
    cgvDisplayGaji: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    pnlCustom: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    dtTgl1: TcxDateEdit;
    dbimgShift1: TcxImageComboBox;
    Label2: TLabel;
    Label4: TLabel;
    dtTgl2: TcxDateEdit;
    dbimgShift2: TcxImageComboBox;
    btnOK: TcxButton;
    ActOK: TAction;
    ActPrintSummary: TAction;
    ActPrintDetail1: TAction;
    ActPrintDetail2: TAction;
    dsDisplayGaji: TDataSource;
    cgvDisplayGajikodejabatan: TcxGridDBColumn;
    cgvDisplayGajinopeg: TcxGridDBColumn;
    cgvDisplayGajipayrolltype: TcxGridDBColumn;
    cgvDisplayGajinama: TcxGridDBColumn;
    cgvDisplayGajirupiah: TcxGridDBColumn;
    cgvDisplayGajijumlah: TcxGridDBColumn;
    cgvDisplayGajibruto: TcxGridDBColumn;
    cgvDisplayGajipotongan: TcxGridDBColumn;
    cgvDisplayGajinetto: TcxGridDBColumn;
    cgvDisplayGajitgl: TcxGridDBColumn;
    cgvDisplayGajimasuk1: TcxGridDBColumn;
    cgvDisplayGajikeluar1: TcxGridDBColumn;
    cgvDisplayGajinosyarat: TcxGridDBColumn;
    cgvDisplayGajikodeabsen: TcxGridDBColumn;
    cgvDisplayGajibrutodet: TcxGridDBColumn;
    cgvDisplayGajipotongandet: TcxGridDBColumn;
    cgvDisplayGajinettodet: TcxGridDBColumn;
    cgvDisplayGajinamajabatan: TcxGridDBColumn;
    Label5: TLabel;
    dtTglAmbil: TcxDateEdit;
    cgvDisplayGajiambildet: TcxGridDBColumn;
    cgvDisplayGajijumlahambildet: TcxGridDBColumn;
    cgvDisplayGajisaldodet: TcxGridDBColumn;
    cgvDisplayGajitglpengambilanpayrolldet: TcxGridDBColumn;
    cgvDisplayGajishiftdet: TcxGridDBColumn;
    cgvDisplayGajitglberlaku: TcxGridDBColumn;
    qryDisplayGaji: TADOQuery;
    procedure ActPrintDetail2Execute(Sender: TObject);
    procedure ActPrintDetail1Execute(Sender: TObject);
    procedure ActPrintSummaryExecute(Sender: TObject);
    procedure ActOKExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplayGaji2: TfmDisplayGaji2;

implementation

{$R *.dfm}
uses untProcedure, dtmgeneral, dtmGlobal, frmPrintFastReport,frmPreviewFastReport;

{ TfmDisplayGaji }

procedure TfmDisplayGaji2.ActOKExecute(Sender: TObject);
begin
  inherited;

  qryDisplayGaji.close;
  qryDisplayGaji.Parameters[0].Value:=dbimgShift1.EditValue;
  qryDisplayGaji.Parameters[1].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[2].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[3].Value:=dbimgShift2.EditValue;
  qryDisplayGaji.Parameters[4].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[5].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[6].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[7].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[8].Value:=dbimgShift1.EditValue;
  qryDisplayGaji.Parameters[9].Value:=dbimgShift2.EditValue;
  qryDisplayGaji.Parameters[10].Value:=dbimgShift1.EditValue;
  qryDisplayGaji.Parameters[11].Value:=dtTglAmbil.Date;
  qryDisplayGaji.Parameters[12].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[13].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[14].Value:=dbimgShift1.EditValue;
  qryDisplayGaji.Parameters[15].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[16].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[17].Value:=dbimgShift2.EditValue;
  qryDisplayGaji.Parameters[18].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[19].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[20].Value:=dtTgl1.Date;
  qryDisplayGaji.Parameters[21].Value:=dtTgl2.Date;
  qryDisplayGaji.Parameters[22].Value:=dbimgShift1.EditValue;
  qryDisplayGaji.Parameters[23].Value:=dbimgShift2.EditValue;
  qryDisplayGaji.Open;

end;

procedure TfmDisplayGaji2.ActPrintDetail1Execute(Sender: TObject);
var
  AKodejabatan,AKodePegawai:string;
begin
  inherited;
  AKodeJabatan:=cgvDisplayGaji.Controller.SelectedRows[0].Values[cgvDisplayGajikodejabatan.index];
  AKodePegawai:=cgvDisplayGaji.Controller.SelectedRows[0].Values[cgvDisplayGajinopeg.index];
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTDETAIL1',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue+';'+AKodeJabatan+';'+AKodePegawai,
    '', '');
end;

procedure TfmDisplayGaji2.ActPrintDetail2Execute(Sender: TObject);
var
  AKodejabatan,AKodePegawai,APayrollType,ANoSyarat:string;
begin
  inherited;
  AKodeJabatan:=cgvDisplayGaji.Controller.SelectedRows[0].Values[cgvDisplayGajikodejabatan.index];
  AKodePegawai:=cgvDisplayGaji.Controller.SelectedRows[0].Values[cgvDisplayGajinopeg.index];
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTDETAIL2',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue+';'+AKodeJabatan+';'+AKodePegawai,
    '', '');
end;

procedure TfmDisplayGaji2.ActPrintSummaryExecute(Sender: TObject);
begin
  inherited;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTSUM',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue,
    '', '');
end;

procedure TfmDisplayGaji2.InitForm;
begin
  inherited;
  OpenIfClose(dmgeneral.qryPayrollType,false,false);
  OpenIfClose(dmgeneral.qryKodeAbsen,false);
  OpenIfClose(dmgeneral.qrySyaratHd,false);
  dtTgl1.Date:=date;
  dtTgl2.Date:=date;
  dbimgShift1.EditValue:='1';
  dbimgShift2.EditValue:='3';
  dtTglAmbil.Date:=date;
  SetReadOnly(cgvDisplayGaji);

end;

procedure TfmDisplayGaji2.RefreshAll;
begin
  inherited;

end;

end.
