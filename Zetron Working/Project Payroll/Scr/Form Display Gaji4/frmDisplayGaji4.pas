unit frmDisplayGaji4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar,
  cxImageComboBox, cxCalc, MemDS, DBAccess, Uni, cxDropDownEdit, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, ADODB, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfmDisplayGaji4 = class(TFormUniDisplay)
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
    cgvDisplayGajinotransaksipengambilan: TcxGridDBColumn;
    cgvDisplayGajitglpengambilanpayroll: TcxGridDBColumn;
    cgvDisplayGajinopeg: TcxGridDBColumn;
    cgvDisplayGajinama: TcxGridDBColumn;
    cgvDisplayGajikodejabatan: TcxGridDBColumn;
    cgvDisplayGajinamajabatan: TcxGridDBColumn;
    cgvDisplayGajishift: TcxGridDBColumn;
    cgvDisplayGajitotal: TcxGridDBColumn;
    cgvDisplayGajitglcetak: TcxGridDBColumn;
    qryDisplayGaji3: TADOQuery;
    procedure actPrintExecute(Sender: TObject);
    procedure ActPrintDetail2Execute(Sender: TObject);
    procedure ActPrintDetail1Execute(Sender: TObject);
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
  fmDisplayGaji4: TfmDisplayGaji4;

implementation

{$R *.dfm}
uses untProcedure, dtmgeneral, dtmGlobal, frmPrintFastReport,frmPreviewFastReport;

{ TfmDisplayGaji }

procedure TfmDisplayGaji4.ActOKExecute(Sender: TObject);
begin
  inherited;

  qryDisplayGaji3.close;
  qryDisplayGaji3.Parameters[0].Value:=dtTgl1.Date;
  qryDisplayGaji3.Parameters[1].Value:=dtTgl2.Date;
  qryDisplayGaji3.Parameters[2].Value:=dbimgShift1.EditValue;
  qryDisplayGaji3.Parameters[3].Value:=dbimgShift2.EditValue;
  qryDisplayGaji3.Open;

end;

procedure TfmDisplayGaji4.ActPrintDetail1Execute(Sender: TObject);
var
  AKodejabatan:string;
begin
  inherited;
  AKodeJabatan:=cgvDisplayGaji.Controller.SelectedRows[0].Values[cgvDisplayGajikodejabatan.index];
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTDETAIL1',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue+';'+AKodeJabatan,
    '', '');
end;

procedure TfmDisplayGaji4.ActPrintDetail2Execute(Sender: TObject);
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

procedure TfmDisplayGaji4.actPrintExecute(Sender: TObject);
begin
//  inherited;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTDSPINSIDENTIL',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue,
    '', '');
end;

procedure TfmDisplayGaji4.InitForm;
begin
  inherited;
  OpenIfClose(dmgeneral.qryPayrollType,false,false);
  dtTgl1.Date:=date;
  dtTgl2.Date:=date;
  dbimgShift1.EditValue:='1';
  dbimgShift2.EditValue:='3';
  SetReadOnly(cgvDisplayGaji);

end;

procedure TfmDisplayGaji4.RefreshAll;
begin
  inherited;

end;

end.
