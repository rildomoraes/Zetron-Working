unit frmProsesPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCalc,
  cxImageComboBox, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, ADODB;

type
  TfmProsesPeriode = class(TFormUniPosition)
    Panel1: TPanel;
    Label2: TLabel;
    lcbPegawai: TcxExtLookupComboBox;
    Label3: TLabel;
    cbPegawai: TcxCheckBox;
    BProses: TcxButton;
    BBatal: TcxButton;
    ActProses: TAction;
    ActBatal: TAction;
    Label4: TLabel;
    lcbGroupGaji: TcxExtLookupComboBox;
    cbGroupGaji: TcxCheckBox;
    lcbPeriode: TcxExtLookupComboBox;
    cgTransaksiPayrollPeriode: TcxGrid;
    cgvTransaksiPayrollHd: TcxGridDBTableView;
    cgvTransaksiPayrollHdnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrollHdtglpayroll: TcxGridDBColumn;
    cgvTransaksiPayrollHdnopeg: TcxGridDBColumn;
    cgvTransaksiPayrollHdpegawaiid: TcxGridDBColumn;
    cgvTransaksiPayrollHdnamadivisi: TcxGridDBColumn;
    cgvTransaksiPayrollHdnamadepatemen: TcxGridDBColumn;
    cgvTransaksiPayrollHdkodegroupshiftid: TcxGridDBColumn;
    cgvTransaksiPayrollHdshift: TcxGridDBColumn;
    cgvTransaksiPayrollHdkodegroupgaji: TcxGridDBColumn;
    cgvTransaksiPayrollHdtotal: TcxGridDBColumn;
    cgvTransaksiPayrollHdstatus: TcxGridDBColumn;
    cgvTransaksiPayrollHdcounterprint: TcxGridDBColumn;
    cgvTransaksiPayrollHdstatusapprove: TcxGridDBColumn;
    cgvTransaksiPayrollDt: TcxGridDBTableView;
    cgvTransaksiPayrollDtnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrollDtpayrolltype: TcxGridDBColumn;
    cgvTransaksiPayrollDtnosyarat: TcxGridDBColumn;
    cgvTransaksiPayrollDtkoefisien: TcxGridDBColumn;
    cgvTransaksiPayrollDtamount: TcxGridDBColumn;
    cgvTransaksiPayrollDttotal: TcxGridDBColumn;
    cgTransaksiPayrollPeriodeLevel1: TcxGridLevel;
    dsTransaksiPayrollHd2: TDataSource;
    dsTransaksiPayrollDt2: TDataSource;
    qryProsesPeriode: TADOQuery;
    qryProsesBatalPeriode: TADOQuery;
    qryTransaksiPayrollHd2: TADOQuery;
    qryTransaksiPayrollDt2: TADOQuery;
    cgvTransaksiPayrollHdEMPLOYEEID: TcxGridDBColumn;
    procedure ActBatalExecute(Sender: TObject);
    procedure ActProsesExecute(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryTransaksiPayrollHd2After(DataSet: TDataSet);
    procedure qryTransaksiPayrollDt2After(DataSet: TDataSet);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    procedure refresh;
    var hasil, action : string;
  public
    { Public declarations }
  end;

var
  fmProsesPeriode: TfmProsesPeriode;
  StrGroupGaji,StrPegawai:string;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta,dtmglobal;

{ TFormUniPosition1 }
procedure TfmProsesPeriode.refresh;
begin
  qryTransaksiPayrollHd2.Parameters[0].Value:=dmgeneral.qryPeriodeGajiHd.FieldByName('tglawal').asdatetime;
  qryTransaksiPayrollHd2.Parameters[1].Value:=dmgeneral.qryPeriodeGajiHd.FieldByName('tglakhir').asdatetime;
  qryTransaksiPayrollHd2.Parameters[2].Value:=StrGroupGaji;
  qryTransaksiPayrollHd2.Parameters[3].Value:=StrPegawai;
  qryTransaksiPayrollHd2.Parameters[4].Value:='1';
  qryTransaksiPayrollHd2.Open;
  qryTransaksiPayrollDt2.close;
  qryTransaksiPayrollDt2.open;
end;

procedure TfmProsesPeriode.ActBatalExecute(Sender: TObject);
begin
  inherited;
  if cbGroupGaji.Checked then
     StrGroupGaji:='%'
  else
     StrGroupGaji:=lcbGroupGaji.EditValue;
  if cbPegawai.Checked then
     StrPegawai:='%'
  else
     StrPegawai:=lcbPegawai.EditValue;
  qryProsesBatalPeriode.Parameters[0].Value:=lcbPeriode.EditValue;
  qryProsesBatalPeriode.Parameters[1].Value:=StrGroupGaji;
  qryProsesBatalPeriode.Parameters[2].Value:=StrPegawai;
  qryProsesBatalPeriode.ExecSQL;
  refresh;
  showmessage('Pembatalan Perhitungan Gaji Periode Sudah Selesai !!!');

end;

procedure TfmProsesPeriode.ActProsesExecute(Sender: TObject);
begin
  inherited;
  if cbGroupGaji.Checked then
     StrGroupGaji:='%'
  else
     StrGroupGaji:=lcbGroupGaji.EditValue;

  if cbPegawai.Checked then
     StrPegawai:='%'
  else
     StrPegawai:=lcbPegawai.EditValue;
  qryProsesPeriode.Parameters[0].Value:=lcbPeriode.EditValue;
  qryProsesPeriode.Parameters[1].Value:=StrGroupGaji;
  qryProsesPeriode.Parameters[2].Value:=StrPegawai;
  qryProsesPeriode.ExecSQL;
  refresh;
  showmessage('Perhitungan Gaji Per Periode Sudah Selesai !!!');
end;

procedure TfmProsesPeriode.InitForm;
begin
  inherited;

  openifclose(dmGeneral.qryPeriodeGajiHd,false,true);
  openifclose(dmGeneral.qryGroupGaji,false,true);
  openifclose(dmGeneral.qryGroupShiftHd,false,true);
  openifclose(dmGeneral.qryGroupShiftDt1,false,true);
  openifclose(dmGeneral.qryPrevPegawai,false,true);
  openifclose(dmGeneral.qrySyaratHd,false,true);
  openifclose(dmGeneral.qryPayrollType,false,true);

end;

procedure TfmProsesPeriode.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmProsesPeriode.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmProsesPeriode.qryTransaksiPayrollDt2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('TransaksiPayrollDt',hasil,action);
end;

procedure TfmProsesPeriode.qryTransaksiPayrollHd2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('TransaksiPayrollHd',hasil,action);
end;

end.
