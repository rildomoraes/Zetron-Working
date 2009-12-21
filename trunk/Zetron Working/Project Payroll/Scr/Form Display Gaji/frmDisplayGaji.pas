unit frmDisplayGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalc,
  cxDBExtLookupComboBox, cxCalendar, cxTimeEdit, MemDS, DBAccess, Uni,
  cxDropDownEdit, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxButtons, ExtCtrls, ADODB, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmDisplayGaji = class(TFormUniDisplay)
    cgDisplay: TcxGrid;
    cgvDisplaySummary: TcxGridDBTableView;
    cgvDisplayDetail1: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplayLevel2: TcxGridLevel;
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
    dsSummary: TDataSource;
    dsDetail1: TDataSource;
    cgvDisplaySummarykodejabatan: TcxGridDBColumn;
    cgvDisplaySummarynamajabatan: TcxGridDBColumn;
    cgvDisplaySummaryjumtotal: TcxGridDBColumn;
    cgvDisplayDetail1kodejabatan: TcxGridDBColumn;
    cgvDisplayDetail1nama: TcxGridDBColumn;
    cgvDisplayDetail1nopeg: TcxGridDBColumn;
    cgvDisplayDetail1payrolltype: TcxGridDBColumn;
    cgvDisplayDetail1amount: TcxGridDBColumn;
    cgvDisplayDetail1count: TcxGridDBColumn;
    cgvDisplayDetail1jumlah: TcxGridDBColumn;
    cgvDisplayDetail1potongan: TcxGridDBColumn;
    cgvDisplayDetail1netto: TcxGridDBColumn;
    dsDetail2: TDataSource;
    cgDisplayLevel3: TcxGridLevel;
    cgvDisplayDetail2: TcxGridDBTableView;
    cgvDisplayDetail2kodejabatan: TcxGridDBColumn;
    cgvDisplayDetail2nopeg: TcxGridDBColumn;
    cgvDisplayDetail2tgl: TcxGridDBColumn;
    cgvDisplayDetail2masuk1: TcxGridDBColumn;
    cgvDisplayDetail2keluar1: TcxGridDBColumn;
    cgvDisplayDetail2nosyarat: TcxGridDBColumn;
    cgvDisplayDetail2kodeabsen: TcxGridDBColumn;
    cgvDisplayDetail2amount: TcxGridDBColumn;
    cgvDisplayDetail2jumlah: TcxGridDBColumn;
    cgvDisplayDetail2potongan: TcxGridDBColumn;
    cgvDisplayDetail2netto: TcxGridDBColumn;
    btnSummary: TcxButton;
    ActPrintSummary: TAction;
    cxButton1: TcxButton;
    ActPrintDetail1: TAction;
    ActPrintDetail2: TAction;
    cxButton2: TcxButton;
    Label5: TLabel;
    dsDisplayGaji: TDataSource;
    qrySummary: TADOQuery;
    qryDetail1: TADOQuery;
    qryDetail2: TADOQuery;
    qryDisplayGaji: TADOQuery;
    cgvDisplayDetail1COLUMN1: TcxGridDBColumn;
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
  fmDisplayGaji: TfmDisplayGaji;

implementation

{$R *.dfm}
uses untProcedure, dtmgeneral, dtmGlobal, frmPrintFastReport,frmPreviewFastReport;

{ TfmDisplayGaji }

procedure TfmDisplayGaji.ActOKExecute(Sender: TObject);
begin
  inherited;
  qrySummary.close;
  qrySummary.Parameters[0].Value:=dtTgl1.Date;
  qrySummary.Parameters[1].Value:=dtTgl2.Date;
  qrySummary.Parameters[2].Value:=dbimgShift1.EditValue;
  qrySummary.Parameters[3].Value:=dbimgShift2.EditValue;
  qrySummary.Open;

  qryDetail1.close;
  qryDetail1.Parameters[0].Value:=dtTgl1.Date;
  qryDetail1.Parameters[1].Value:=dtTgl2.Date;
  qryDetail1.Parameters[2].Value:=dbimgShift1.EditValue;
  qryDetail1.Parameters[3].Value:=dbimgShift2.EditValue;
  qryDetail1.Open;

  qryDetail2.close;
  qryDetail2.Parameters[0].Value:=dtTgl1.Date;
  qryDetail2.Parameters[1].Value:=dtTgl2.Date;
  qryDetail2.Parameters[2].Value:=dbimgShift1.EditValue;
  qryDetail2.Parameters[3].Value:=dbimgShift2.EditValue;
  qryDetail2.Open;

end;

procedure TfmDisplayGaji.ActPrintDetail1Execute(Sender: TObject);
var
  AKodejabatan:string;
begin
  inherited;

  AKodeJabatan:=cgvDisplayDetail1kodejabatan.EditValue;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTDETAIL1',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue+';'+AKodeJabatan,
    '', '');
end;

procedure TfmDisplayGaji.ActPrintDetail2Execute(Sender: TObject);
var
  AKodejabatan,AKodePegawai,APayrollType,ANoSyarat:string;
begin
  inherited;
//  showmessage(cgvDisplaySummary.Controller.SelectedRows[0].Values[0]);
  showmessage(cgvDisplayDetail1.Controller.SelectedRows[0].Values[0]);

  //  cgvDisplayDetail2.Controller.SelectedRows[0].re
//  showmessage(inttostr(cgvDisplayDetail2.Controller.SelectedRows[0].Values[0]));
//  showmessage(inttostr(cgvDisplayDetail2.Controller.SelectedRows[0].RecordIndex));
//          cgvDisplayDetail2kodejabatan.Index));
  //  AKodeJabatan:=cgvDisplayDetail1.Controller.SelectedRows[0].Values[cgvDisplayDetail1kodejabatan.Index];
//  AKodePegawai:=cgvDisplayDetail1.Controller.SelectedRows[0].Values[cgvDisplayDetail1nopeg.Index];
//  TfmPreviewFastReport.ExecuteForm('RPTDETAIL2','LAPORAN DETAIL GAJI 2',datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue+';'+AKodeJabatan+';'+AKodePegawai);
end;

procedure TfmDisplayGaji.ActPrintSummaryExecute(Sender: TObject);
begin
  inherited;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTSUM',
    datetostr(dtTgl1.Date)+';'+datetostr(dtTgl2.Date)+';'+dbimgShift1.EditValue+';'+dbimgShift2.EditValue,
    '', '');
end;

procedure TfmDisplayGaji.InitForm;
begin
  inherited;
  OpenIfClose(dmgeneral.qryPayrollType,false,false);
  dtTgl1.Date:=strtodate('01/09/2008');
  dtTgl2.Date:=strtodate('30/09/2008');
  dbimgShift1.EditValue:='1';
  dbimgShift2.EditValue:='3';
end;

procedure TfmDisplayGaji.RefreshAll;
begin
  inherited;

end;

end.
