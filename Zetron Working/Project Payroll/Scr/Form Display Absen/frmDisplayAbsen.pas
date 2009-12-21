unit frmDisplayAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxImageComboBox, cxTimeEdit, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxLabel, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, ADODB;

type
  TfmDisplayAbsensi = class(TFormUniDisplay)
    dsDisplay: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayDt: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    Bevel1: TBevel;
    bvlSpacer12: TBevel;
    actShow: TAction;
    cxLabel1: TcxLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    cgvDisplaytgl: TcxGridDBColumn;
    cgvDisplaypegawaiid: TcxGridDBColumn;
    cgvDisplaykodegroupshiftid: TcxGridDBColumn;
    cgvDisplayshift: TcxGridDBColumn;
    cgvDisplaynoreg: TcxGridDBColumn;
    cgvDisplaystatus: TcxGridDBColumn;
    cgvDisplaykodeabsen: TcxGridDBColumn;
    cgvDisplayterlambat: TcxGridDBColumn;
    cgvDisplaymodemasuk: TcxGridDBColumn;
    cgvDisplaymodekeluar: TcxGridDBColumn;
    cgvDisplaymasuk1: TcxGridDBColumn;
    cgvDisplaykeluar1: TcxGridDBColumn;
    cgvDisplaylembur: TcxGridDBColumn;
    cgvDisplayemployeeid: TcxGridDBColumn;
    cgvDisplaystatusabsen: TcxGridDBColumn;
    cgvDisplayflagupdate: TcxGridDBColumn;
    cgvDisplayflagprosesgaji: TcxGridDBColumn;
    cgvDisplaynama: TcxGridDBColumn;
    cgvDisplaynamaperusahaan: TcxGridDBColumn;
    cgvDisplaynamadivisi: TcxGridDBColumn;
    cgvDisplaynamadepartemen: TcxGridDBColumn;
    cgvDisplaydutyon: TcxGridDBColumn;
    cgvDisplaydutyoff: TcxGridDBColumn;
    cgvDisplayoverday: TcxGridDBColumn;
    cgvDisplaytoleransiterlambat: TcxGridDBColumn;
    cgvDisplaynamaoutsourcing: TcxGridDBColumn;
    cgvDisplaynamastatus: TcxGridDBColumn;
    cgvDisplaystatusschedule: TcxGridDBColumn;
    cgvDisplaynamagroupshift: TcxGridDBColumn;
    cgvDisplayjammulaiabsen: TcxGridDBColumn;
    cgvDisplayjamakhirabsen: TcxGridDBColumn;
    cgvDisplayjambataslembur: TcxGridDBColumn;
    cgvDisplaynopeg: TcxGridDBColumn;
    cgvDisplaypulangawal: TcxGridDBColumn;
    cgvDisplayalatm1: TcxGridDBColumn;
    cgvDisplayalatk1: TcxGridDBColumn;
    cgvDisplayketerangan: TcxGridDBColumn;
    qryDisplay: TADOQuery;
    procedure actRefreshExecute(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
 protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplayAbsensi: TfmDisplayAbsensi;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmShare;

{$R *.dfm}

{ TFormUniDisplay1 }

procedure TfmDisplayAbsensi.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshAll;
end;

procedure TfmDisplayAbsensi.btnOkClick(Sender: TObject);
begin
  inherited;
  MonthYearValueChange(sender);
end;

procedure TfmDisplayAbsensi.InitForm;
begin
  inherited;

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  MonthYearValueChange(nil); // -> Trigger qryDisplay

  SetReadOnly(cgvDisplay);

end;

procedure TfmDisplayAbsensi.MonthYearValueChange(Sender: TObject);
begin
  qryDisplay.Close;
  qryDisplay.Parameters[0].Value :=cbYear.EditValue;
  qryDisplay.Parameters[1].Value :=cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplay,true);
end;

procedure TfmDisplayAbsensi.RefreshAll;
begin
  inherited;
  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

end.
