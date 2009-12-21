unit frmDisplaySlipGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxCurrencyEdit, cxCalc, cxColorComboBox, MemDS, DBAccess, Uni,
  dxmdaset, cxGrid, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxProgressBar, StdCtrls, dxPSCore,
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
  TfmDisplaySlipGaji = class(TFormUniDisplay)
    pnlCustom: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    dsPrevPayrollPeriod: TDataSource;
    dsGroupShift: TDataSource;
    dsShift: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    lcbPayrollPeriod: TcxExtLookupComboBox;
    lcbGroupShift: TcxExtLookupComboBox;
    lcbShift: TcxExtLookupComboBox;
    cgvPrevPayrollPeriod: TcxGridDBTableView;
    cgvPrevPayrollPeriodkodeperiode: TcxGridDBColumn;
    cgvPrevPayrollPeriodnamaperiode: TcxGridDBColumn;
    cgvPrevPayrollPeriodtglakhir: TcxGridDBColumn;
    cgvPrevPayrollPeriodtglawal: TcxGridDBColumn;
    cgvPrevPayrollPeriodperiodename: TcxGridDBColumn;
    cgvPrevGroupShift: TcxGridDBTableView;
    cgvPrevShift: TcxGridDBTableView;
    btnOK: TcxButton;
    actOk: TAction;
    mdTransaksiPayrollHd: TdxMemData;
    dsTransaksiPayrollHd: TDataSource;
    dsTransaksiPayrollDt: TDataSource;
    cgvPrevShiftkodegroupshiftid: TcxGridDBColumn;
    cgvPrevShiftshift: TcxGridDBColumn;
    cgvPrevShiftwarna: TcxGridDBColumn;
    cgvPrevGroupShiftkodegroupshiftid: TcxGridDBColumn;
    cgvPrevGroupShiftnamagroupshift: TcxGridDBColumn;
    cgvDisplayHd: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplay: TcxGrid;
    cgDisplayLevel2: TcxGridLevel;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayHdCetak: TcxGridDBColumn;
    cxButton1: TcxButton;
    actPrintSlipGaji: TAction;
    cgvDisplayHdnopeg: TcxGridDBColumn;
    cgvDisplayHdnama: TcxGridDBColumn;
    cgvDisplayHdgrandtotal: TcxGridDBColumn;
    cgvDisplayDtnopeg: TcxGridDBColumn;
    cgvDisplayDttglpayroll: TcxGridDBColumn;
    cgvDisplayDtnamagroupshift: TcxGridDBColumn;
    cgvDisplayDtshift: TcxGridDBColumn;
    cgvDisplayDtpayrolltypename: TcxGridDBColumn;
    cgvDisplayDtamount: TcxGridDBColumn;
    cgvDisplayDtkoefisien: TcxGridDBColumn;
    cgvDisplayDttotal: TcxGridDBColumn;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    qryPrevPayrollPeriod: TADOQuery;
    qryPrevGroupShift: TADOQuery;
    qryPrevShift: TADOQuery;
    qryTransaksiPayrollDt: TADOQuery;
    qryTransaksiPayrollHd: TADOQuery;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintSlipGajiExecute(Sender: TObject);
    procedure lcbGroupShiftPropertiesEditValueChanged(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplaySlipGaji: TfmDisplaySlipGaji;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, frmPrintFastReport;

procedure TfmDisplaySlipGaji.actOkExecute(Sender: TObject);
begin
  inherited;

  qryTransaksiPayrollHd.Close;
  qryTransaksiPayrollHd.Parameters[0].Value := cgvPrevPayrollPeriodtglawal.EditValue;
  qryTransaksiPayrollHd.Parameters[1].Value := cgvPrevPayrollPeriodtglakhir.EditValue;
  qryTransaksiPayrollHd.Parameters[2].Value := cgvPrevGroupShiftkodegroupshiftid.EditValue;
  qryTransaksiPayrollHd.Parameters[3].Value := cgvPrevShiftshift.EditValue;
  OpenIfClose(qryTransaksiPayrollHd);

  mdTransaksiPayrollHd.Close;
  mdTransaksiPayrollHd.LoadFromDataSet(qryTransaksiPayrollHd);

  qryTransaksiPayrollDt.Close;
  qryTransaksiPayrollDt.Parameters[0].Value := cgvPrevPayrollPeriodtglawal.EditValue;
  qryTransaksiPayrollDt.Parameters[1].Value := cgvPrevPayrollPeriodtglakhir.EditValue;
  qryTransaksiPayrollDt.Parameters[2].Value := cgvPrevGroupShiftkodegroupshiftid.EditValue;
  qryTransaksiPayrollDt.Parameters[3].Value := cgvPrevShiftshift.EditValue;
  OpenIfClose(qryTransaksiPayrollDt);
end;

procedure TfmDisplaySlipGaji.actPrintSlipGajiExecute(Sender: TObject);
begin
  inherited;

  if not mdTransaksiPayrollHd.Active then
    Exit;

  if mdTransaksiPayrollHd.State in [dsEdit] then
    mdTransaksiPayrollHd.Post;

  mdTransaksiPayrollHd.First;
  mdTransaksiPayrollHd.DisableControls;
  pbProcess.Properties.Max := mdTransaksiPayrollHd.RecordCount;
  while not mdTransaksiPayrollHd.Eof do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    TfmPrintFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTSP001',
      mdTransaksiPayrollHd.FieldByName('NoPeg').AsString, cgvPrevPayrollPeriodkodeperiode.EditValue, '');
    mdTransaksiPayrollHd.Next;
  end;
  pbProcess.Position := 0;
  mdTransaksiPayrollHd.First;
  mdTransaksiPayrollHd.EnableControls;
end;

procedure TfmDisplaySlipGaji.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshAll;
end;

procedure TfmDisplaySlipGaji.InitForm;
begin
  inherited;

  SetReadOnly(cgvDisplayDt);

  OpenIfClose(qryPrevPayrollPeriod);
  OpenIfClose(qryPrevGroupShift);
  OpenIfClose(qryPrevShift);
end;

procedure TfmDisplaySlipGaji.lcbGroupShiftPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lcbShift.EditValue := null;
end;

procedure TfmDisplaySlipGaji.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPayrollPeriod);
  LockRefresh(qryPrevGroupShift);
  LockRefresh(qryPrevShift);

  LockRefresh(qryTransaksiPayrollHd);
  LockRefresh(qryTransaksiPayrollDt);
end;

end.
