unit frmProsesHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxDBExtLookupComboBox,
  cxImageComboBox, cxCalc, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  ADODB;

type
  TfmProsesHarian = class(TFormUniPosition)
    Panel1: TPanel;
    Label1: TLabel;
    dtTglMulai: TcxDateEdit;
    Label2: TLabel;
    dtTglAkhir: TcxDateEdit;
    lblGroupShift: TLabel;
    lcbGroupShift: TcxExtLookupComboBox;
    lblShift: TLabel;
    lcbShift: TcxExtLookupComboBox;
    lcbPegawai: TcxExtLookupComboBox;
    Label3: TLabel;
    cbGroupShift: TcxCheckBox;
    cbShift: TcxCheckBox;
    cbPegawai: TcxCheckBox;
    BProses: TcxButton;
    BBatal: TcxButton;
    ActProses: TAction;
    ActBatal: TAction;
    Label4: TLabel;
    lcbGroupGaji: TcxExtLookupComboBox;
    cbGroupGaji: TcxCheckBox;
    dsTransaksiPayrollHd2: TDataSource;
    dsTransaksiPayrollDt2: TDataSource;
    cgvTransaksiPayrollHarianHd: TcxGridDBTableView;
    cgTransaksiPayrollHarianLevel1: TcxGridLevel;
    cgTransaksiPayrollHarian: TcxGrid;
    cgvTransaksiPayrollHarianHdnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdtglpayroll: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdpegawaiid: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdkodegroupgaji: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdkodegroupshiftid: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdshift: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdstatus: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdtotal: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDt: TcxGridDBTableView;
    cgvTransaksiPayrollHarianDtnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDtpayrolltype: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDtnosyarat: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDtamount: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDtkoefisien: TcxGridDBColumn;
    cgvTransaksiPayrollHarianDttotal: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdNama: TcxGridDBColumn;
    qryProsesHarian: TADOQuery;
    qryProsesBatalHarian: TADOQuery;
    qryTransaksiPayrollHd2: TADOQuery;
    qryTransaksiPayrollDt2: TADOQuery;
    cgvTransaksiPayrollHarianHdCOUNTERPRINT: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdSTATUSAPPROVE: TcxGridDBColumn;
    cgvTransaksiPayrollHarianHdEMPLOYEEID: TcxGridDBColumn;
    procedure ActBatalExecute(Sender: TObject);
    procedure ActProsesExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryProsesHarianAfterPost(DataSet: TDataSet);
    procedure qryTransaksiPayrollHd2After(DataSet: TDataSet);
    procedure qryTransaksiPayrollDt2After(DataSet: TDataSet);
  protected
    procedure InitForm; override;
  private
    procedure refresh;
    { Private declarations }
    var hasil, action : string;
  public
    { Public declarations }
  end;

var
  fmProsesHarian: TfmProsesHarian;
  StrGroupGaji,StrGroupShift,StrShift,StrPegawai:string;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta,dtmglobal;

{ TFormUniPosition1 }

procedure TfmProsesHarian.ActBatalExecute(Sender: TObject);
begin
  inherited;
  if cbGroupGaji.Checked then
     StrGroupGaji:='%'
  else
     StrGroupGaji:=lcbGroupGaji.EditValue;
  if cbGroupShift.Checked then
     StrGroupShift:='%'
  else
     StrGroupShift:=lcbGroupShift.EditValue;
  if cbShift.Checked then
     StrShift:='%'
  else
     StrShift:=lcbShift.EditValue;
  if cbPegawai.Checked then
     StrPegawai:='%'
  else
     StrPegawai:=lcbPegawai.EditValue;
  qryProsesBatalHarian.Parameters[0].Value:=dtTglMulai.Date;
  qryProsesBatalHarian.Parameters[1].Value:=dtTglAkhir.Date;
  qryProsesBatalHarian.Parameters[2].Value:=StrGroupGaji;
  qryProsesBatalHarian.Parameters[3].Value:=StrGroupShift;
  qryProsesBatalHarian.Parameters[4].Value:=StrShift;
  qryProsesBatalHarian.Parameters[5].Value:=StrPegawai;
  qryProsesBatalHarian.ExecSQL;
  refresh;
  showmessage('Pembatalan Perhitungan Gaji Harian Sudah Selesai !!!');
end;

procedure TfmProsesHarian.ActProsesExecute(Sender: TObject);
begin
  inherited;
  if cbGroupGaji.Checked then
     StrGroupGaji:='%'
  else
     StrGroupGaji:=lcbGroupGaji.EditValue;
  if cbGroupShift.Checked then
     StrGroupShift:='%'
  else
     StrGroupShift:=lcbGroupShift.EditValue;
  if cbShift.Checked then
     StrShift:='%'
  else
     StrShift:=lcbShift.EditValue;
  if cbPegawai.Checked then
     StrPegawai:='%'
  else
     StrPegawai:=lcbPegawai.EditValue;
  qryProsesHarian.Parameters[0].Value:=dtTglMulai.Date;
  qryProsesHarian.Parameters[1].Value:=dtTglAkhir.Date;
  qryProsesHarian.Parameters[2].Value:=StrGroupGaji;
  qryProsesHarian.Parameters[3].Value:=StrGroupShift;
  qryProsesHarian.Parameters[4].Value:=StrShift;
  qryProsesHarian.Parameters[5].Value:=StrPegawai;
  qryProsesHarian.ExecSQL;

  refresh;
  showmessage('Perhitungan Gaji Harian Sudah Selesai !!!');

end;

procedure TfmProsesHarian.InitForm;
begin
  inherited;

  dtTglMulai.Date:=dmglobal.SettingGlobal.ServerDateTime;
  dtTglAkhir.Date:=dmglobal.SettingGlobal.ServerDateTime;
  openifclose(dmGeneral.qryGroupGaji,false,true);
  openifclose(dmGeneral.qryGroupShiftHd,false,true);
  openifclose(dmGeneral.qryGroupShiftDt1,false,true);
  openifclose(dmGeneral.qryPrevPegawai,false,true);
  openifclose(dmGeneral.qryPegawai,false,true);
  openifclose(dmGeneral.qrySyaratHd,false,true);
  openifclose(dmGeneral.qryPayrollType,false,true);

end;

procedure TfmProsesHarian.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmProsesHarian.qryProsesHarianAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('PegawaiFoto',hasil,action);
end;

procedure TfmProsesHarian.qryTransaksiPayrollDt2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('TransaksiPayrollDt',hasil,action);
end;

procedure TfmProsesHarian.qryTransaksiPayrollHd2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('TransaksiPayrollHd',hasil,action);
end;

procedure TfmProsesHarian.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmProsesHarian.refresh;
begin
  qryTransaksiPayrollHd2.close;
  qryTransaksiPayrollHd2.Parameters[0].Value:=dtTglMulai.Date;
  qryTransaksiPayrollHd2.Parameters[1].Value:=dtTglAkhir.Date;
  qryTransaksiPayrollHd2.Parameters[2].Value:=StrGroupGaji;
  qryTransaksiPayrollHd2.Parameters[3].Value:=StrGroupShift;
  qryTransaksiPayrollHd2.Parameters[4].Value:=StrShift;
  qryTransaksiPayrollHd2.Parameters[5].Value:=StrPegawai;
  openifclose(qryTransaksiPayrollHd2,false,false);
  qryTransaksiPayrollDt2.close;
  openifclose(qryTransaksiPayrollDt2,false,false);
end;

end.
