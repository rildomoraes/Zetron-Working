unit frmTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxSpinEdit, cxDropDownEdit, cxCalendar, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB;

type
  TfmTransaksi = class(TFormUniTransactionEx)
    lblCountryId: TLabel;
    dbeNoReg: TcxDBTextEdit;
    dbeNoPeg: TcxDBExtLookupComboBox;
    Label2: TLabel;
    Label7: TLabel;
    dbeNama: TcxDBExtLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    dbeTgl1: TcxDBDateEdit;
    Label6: TLabel;
    Label11: TLabel;
    dbeTgl2: TcxDBDateEdit;
    dbeLama: TcxDBSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    dbeKeterangan: TcxDBMemo;
    lDepartemen: TLabel;
    lDivisi: TLabel;
    lPerusahaan: TLabel;
    cgTransaksiCuti: TcxGrid;
    cgvTransaksi: TcxGridDBTableView;
    cgvTransaksinamaperusahaan: TcxGridDBColumn;
    cgvTransaksinamadivisi: TcxGridDBColumn;
    cgvTransaksinamadepartemen: TcxGridDBColumn;
    cgvTransaksinopeg: TcxGridDBColumn;
    cgvTransaksinama: TcxGridDBColumn;
    cgvTransaksinoreg: TcxGridDBColumn;
    cgvTransaksikodeabsen: TcxGridDBColumn;
    cgvTransaksilama: TcxGridDBColumn;
    cgvTransaksidaritgl: TcxGridDBColumn;
    cgvTransaksisampaitgl: TcxGridDBColumn;
    cgvTransaksiketerangan: TcxGridDBColumn;
    cgTransaksiCutiLevel1: TcxGridLevel;
    btnGetId: TcxButton;
    btnDelete: TcxButton;
    ActDelete: TAction;
    dbeKode: TcxDBExtLookupComboBox;
    qryTransaksi: TADOQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure ActDeleteExecute(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure dbeNamaPropertiesEditValueChanged(Sender: TObject);
    procedure qryTransaksiNewRecord(DataSet: TDataSet);
    procedure qryTransaksiBeforePost(DataSet: TDataSet);
    procedure dbeNoPegPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure qryTransaksiAfterPost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    procedure Isi;
    var AFlagBaru : boolean;
  public
    { Public declarations }
  end;

var
  fmTransaksi: TfmTransaksi;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, dtmShare,DateUtils;


{ TFormUniTransaction1 }

procedure TfmTransaksi.ActDeleteExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(ASK_DELETE, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     qryTransaksi.Delete;
  end;
end;

procedure TfmTransaksi.btnGetIdClick(Sender: TObject);
begin
  inherited;
  if qryTransaksi.FieldByName('daritgl').IsNull then
  begin
     showmessage('Dari Tgl Diisi Dulu !!!');
  end
  else
  begin
    if (qryTransaksi.FieldByName('notransaksiabsen').IsNull) or (qryTransaksi.FieldByName('notransaksiabsen').asstring='')then
    begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    qryTransaksi.FieldByName('NoTransaksiAbsen').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
    end;
  end;
end;

procedure TfmTransaksi.dbeNamaPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Isi;
end;

procedure TfmTransaksi.dbeNoPegPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  isi;
end;

procedure TfmTransaksi.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;

  if qryTransaksi.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'daritgl') = 0) or (CompareText(Field.FieldName, 'sampaitgl') = 0) then
    begin
      if (qryTransaksi.FieldByName('daritgl').asdatetime>qryTransaksi.FieldByName('sampaitgl').asdatetime) and (not(qryTransaksi.FieldByName('Daritgl').IsNull)) and (not(qryTransaksi.FieldByName('sampaitgl').IsNull)) then
      begin
        qryTransaksi.FieldByName('lama').asinteger:=0;
        showmessage('Sampai Tgl < Dari Tgl !!!');
        qryTransaksi.Cancel;
      end
      else
        qryTransaksi.FieldByName('lama').asinteger:=DaysBetween(qryTransaksi.FieldByName('daritgl').asdatetime,qryTransaksi.FieldByName('sampaitgl').asdatetime)+1;
    end;
  end;
end;

procedure TfmTransaksi.InitForm;
begin
  inherited;

  btnVoid.Visible:=false;
  GetMonthList(cbMonth, dmglobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmglobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(nil); // -> Trigger

  OpenIfClose(dmGeneral.qryKodeAbsenTransaksi,false,true);
  OpenIfClose(dmGeneral.qryPrevPegawaiActive,false,true);
  OpenIfClose(qryTransaksi,false,true);

  SetReadOnly(cgvTransaksi);
end;

procedure TfmTransaksi.Isi;
begin
  if dbeNoPeg.EditValue<>null then
  begin
    lPerusahaan.Caption:=dmGeneral.cgvPrevPegawaiActivenamaperusahaan.EditValue;
    lDivisi.Caption:=dmGeneral.cgvPrevPegawaiActivenamadivisi.EditValue;
    lDepartemen.Caption:=dmGeneral.cgvPrevPegawaiActivenamadepartemen.EditValue;
  end
  else
  begin
    lPerusahaan.Caption:='';
    lDivisi.Caption:='';
    lDepartemen.Caption:='';
  end
end;

procedure TfmTransaksi.MonthYearValueChange(Sender: TObject);
var
  bulan,tahun:integer;
  tgl,tgl2:tdatetime;
begin
  inherited;

  if (qryTransaksi.State in [dsEdit, dsInsert]) then
    Abort;

  dmGeneral.periode:=EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);

  bulan:=cbMonth.ItemIndex + 2;
  tahun:=cbYear.EditValue;
  tgl2:=EncodeDate(tahun, bulan-1, 1);
  if bulan=13 then
  begin
     bulan:=1;
     tahun:=tahun+1;
  end;

  tgl:=EncodeDate(tahun, bulan, 1);

  dmGeneral.qryPrevPegawaiActive.Parameters[0].Value:=FormatDateTime('yyyy/mm/dd',tgl-1);
  dmGeneral.qryPrevPegawaiActive.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',tgl2);
  LockRefresh(dmGeneral.qryPrevPegawaiActive,true);

  qryTransaksi.Parameters[0].Value :=
    FormatDateTime('YYYYMM', EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(qryTransaksi,true);

end;

procedure TfmTransaksi.qryTransaksiAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (AFlagBaru=true) then
  begin
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
  end;
end;

procedure TfmTransaksi.qryTransaksiBeforePost(DataSet: TDataSet);
begin
  inherited;
  AFlagBaru := false;
  if (DataSet.FieldByName('notransaksiabsen').IsNull) or (DataSet.FieldByName('notransaksiabsen').asstring='') then
  begin
    AFlagBaru := true;
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    qryTransaksi.FieldByName('NoTransaksiAbsen').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
    DataSet.FieldByName('PegawaiId').AsString := dbeNoPeg.EditValue;
  end;
end;

procedure TfmTransaksi.qryTransaksiNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('counterprint').AsInteger:=0;
  DataSet.FieldByName('statusapprove').Asstring:='1';
  Isi;
end;

procedure TfmTransaksi.RefreshAll;
begin
  inherited;
  LockRefresh(qryTransaksi);
  LockRefresh(dmGeneral.qryKodeAbsenTransaksi);
  LockRefresh(dmGeneral.qryPrevPegawaiActive);
end;

end.


