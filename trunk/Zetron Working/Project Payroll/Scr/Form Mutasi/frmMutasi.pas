unit frmMutasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCheckBox, cxCalendar, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxDropDownEdit,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB;

type
  TfmMutasi = class(TFormUniTransactionEx)
    lblCountryId: TLabel;
    dbeNoreg: TcxDBTextEdit;
    dbeNoPeg: TcxDBExtLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    dbeNama: TcxDBExtLookupComboBox;
    dbeTglMulai: TcxDBDateEdit;
    Label11: TLabel;
    Label15: TLabel;
    dbeKodePerusahaan: TcxDBExtLookupComboBox;
    dbeKodeDivisi: TcxDBExtLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    dbeKodeDepartemen: TcxDBExtLookupComboBox;
    dbeKodeOutSourcing: TcxDBExtLookupComboBox;
    Label16: TLabel;
    Label7: TLabel;
    dbeKodeJabatan: TcxDBExtLookupComboBox;
    dbeKodeStatus: TcxDBExtLookupComboBox;
    Label8: TLabel;
    Label2: TLabel;
    lStatus: TLabel;
    lJabatan: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    lOutSourcing: TLabel;
    lDepartemen: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lDivisi: TLabel;
    lPerusahaan: TLabel;
    Label17: TLabel;
    cgMutasi: TcxGrid;
    cgvMutasi: TcxGridDBTableView;
    cgvMutasinoreg: TcxGridDBColumn;
    cgvMutasitglmulai: TcxGridDBColumn;
    cgvMutasiNopeg: TcxGridDBColumn;
    cgvMutasiNama: TcxGridDBColumn;
    cgvMutasikodeperusahaanbaru: TcxGridDBColumn;
    cgvMutasinamaperusahaan: TcxGridDBColumn;
    cgvMutasikodedivisibaru: TcxGridDBColumn;
    cgvMutasinamadivisi: TcxGridDBColumn;
    cgvMutasikodedepartemenbaru: TcxGridDBColumn;
    cgvMutasinamadepartemen: TcxGridDBColumn;
    cgvMutasikodejabatanbaru: TcxGridDBColumn;
    cgvMutasinamajabatan: TcxGridDBColumn;
    cgvMutasikodeoutsourcingbaru: TcxGridDBColumn;
    cgvMutasinamaoutsourcing: TcxGridDBColumn;
    cgvMutasistatuskerjabaru: TcxGridDBColumn;
    cgvMutasinamastatuskerja: TcxGridDBColumn;
    cgvMutasiketerangan: TcxGridDBColumn;
    cgvMutasiflagupdate: TcxGridDBColumn;
    cgvMutasipegawaiid: TcxGridDBColumn;
    cgMutasiLevel1: TcxGridLevel;
    Label19: TLabel;
    dbeKeterangan: TcxDBMemo;
    cgvPegawaiMutasi: TcxGridDBTableView;
    cgvMutasiTglKeluar: TcxGridDBColumn;
    cgvMutasiFlagKeluar: TcxGridDBColumn;
    btnDelete: TcxButton;
    actDelete: TAction;
    cgMutasiLevel2: TcxGridLevel;
    cgvPegawaiMutasipegawaiid: TcxGridDBColumn;
    cgvPegawaiMutasinopeg: TcxGridDBColumn;
    cgvPegawaiMutasinama: TcxGridDBColumn;
    cgvPegawaiMutasinamaperusahaan: TcxGridDBColumn;
    cgvPegawaiMutasinamadivisi: TcxGridDBColumn;
    cgvPegawaiMutasinamadepartemen: TcxGridDBColumn;
    cgvPegawaiMutasitglkeluar: TcxGridDBColumn;
    cgvPegawaiMutasiflagkeluar: TcxGridDBColumn;
    cgvPegawaiMutasikodeperusahaan: TcxGridDBColumn;
    cgvPegawaiMutasikodedivisi: TcxGridDBColumn;
    cgvPegawaiMutasikodedepartemen: TcxGridDBColumn;
    cgvPegawaiMutasikodejabatan: TcxGridDBColumn;
    cgvPegawaiMutasikodestatus: TcxGridDBColumn;
    cgvPegawaiMutasinamajabatan: TcxGridDBColumn;
    cgvPegawaiMutasinamastatus: TcxGridDBColumn;
    btnGetId: TcxButton;
    Label1: TLabel;
    dbeTglMutasi: TcxDBDateEdit;
    qryMutasi: TADOQuery;
    qryLama: TADOQuery;
    qryUbahAbsenNoreg: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    procedure qryMutasiAfterPost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure btnGetIdClick(Sender: TObject);
    procedure cgvPegawaiMutasipegawaiidStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actDeleteExecute(Sender: TObject);
    procedure cgvMutasiStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure actVoidExecute(Sender: TObject);
    procedure dbeKodeDivisiPropertiesEditValueChanged(Sender: TObject);
    procedure qryMutasiBeforePost(DataSet: TDataSet);
    procedure qryMutasiNewRecord(DataSet: TDataSet);
    procedure qryMutasiBeforeDelete(DataSet: TDataSet);
    procedure qryMutasiAfter(DataSet: TDataSet);
    procedure dbeTglMutasiEditing(Sender: TObject; var CanEdit: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    procedure isilama;
    procedure isikosong;
    var
    AFlagBaru,AFlagTombol : boolean;
    hasil,action:string;
  public
    { Public declarations }
  end;

var
  fmMutasi: TfmMutasi;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, dtmShare, untPayroll;

{ TFormUniTransaction1 }

procedure TfmMutasi.actDeleteExecute(Sender: TObject);
begin
  inherited;
  qryMutasi.DisableControls;
  qryMutasi.Delete;
  qryMutasi.EnableControls;
end;

procedure TfmMutasi.actVoidExecute(Sender: TObject);
begin
  inherited;

  if qryMutasi.IsEmpty then
    Abort;
  if not (qryMutasi.State in [dsBrowse]) then
    qryMutasi.Post;

  // Void Here!
  qryMutasi.Edit;
  qryMutasi.FieldByName('StatusApprove').Asstring := '2';
  qryMutasi.Post;
end;

procedure TfmMutasi.btnGetIdClick(Sender: TObject);
begin
  inherited;
  AFlagTombol := false;
  if (qryMutasi.FieldByName('noreg').IsNull) or (qryMutasi.FieldByName('noreg').asstring='') or (dbeNoreg.Text='') then
    begin
      AFlagTombol := true;
      dmGeneral.qryGenerateCounter.Close;
      dmGeneral.qryGenerateCounter.Parameters[0].Value:='MUTASI';
      dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglMutasi.date;
      dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
      dmGeneral.qryGenerateCounter.Open;
      dmGeneral.qryspGenerateCounter.Close;
      qryMutasi.FieldByName('NoReg').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
    end;
end;

procedure TfmMutasi.cgvMutasiStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[20] = '1' then
       AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmMutasi.cgvPegawaiMutasipegawaiidStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
     if VarToStr(ARecord.Values[GetColumnByFieldName('flagkeluar').Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmMutasi.dbeKodeDivisiPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if qryMutasi.State in [dsEdit, dsInsert] then
  begin
    qryMutasi.FieldByName('KodeDepartemen').AsVariant := null;
  end;
end;


procedure TfmMutasi.dbeTglMutasiEditing(Sender: TObject; var CanEdit: Boolean);
begin
  inherited;
  dbeNoreg.Text:='';
end;

procedure TfmMutasi.dsDefaultDataChange(Sender: TObject; Field: TField);
var
  dt1,dt2:tdatetime;
begin
  inherited;
  if Field = nil then
    Exit;
  if qryMutasi.State in [dsinsert,dsedit] then
  begin
    if (CompareText(Field.FieldName, 'pegawaiid') = 0) or (CompareText(Field.FieldName, 'tglmulai') = 0) then
    begin
      isilama;
    end;
  end;
end;

procedure TfmMutasi.InitForm;
begin
  inherited;

  btnVoid.Visible:=false;
  OpenIfClose(dmGeneral.qryDivisi,true);
  OpenIfClose(dmGeneral.qryPrevPegawaiActive,true);
  OpenIfClose(dmGeneral.qryDepartemen,true);
  OpenIfClose(dmGeneral.qryJabatan,true);
  OpenIfClose(dmGeneral.qryStatusKaryawan,true);
  OpenIfClose(dmGeneral.qryPerusahaan,true);
  OpenIfClose(dmGeneral.qryOutSourcing,true);
  OpenIfClose(dmGeneral.qryPrevPegawai,false,true);

  GetMonthList(cbMonth, dmglobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmglobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(nil); // -> Trigger dtsSalesInvoiceHd

  SetReadOnly(cgvMutasi);
  isikosong;
  isilama;

end;

procedure TfmMutasi.isikosong;
begin

  lPerusahaan.Caption:='';
  lDivisi.Caption:='';
  lDepartemen.Caption:='';
  lOutSourcing.Caption:='';
  lJabatan.Caption:='';
  lStatus.Caption:='';

end;

procedure TfmMutasi.isilama;
begin
 if (not(qryMutasi.FieldByName('pegawaiid').IsNull)) and (dbetglmulai.EditText<>'') then
  begin
    qryLama.close;
    qryLama.Parameters[0].Value:=dbetglmulai.EditValue-1;
    qryLama.Parameters[1].Value:=qryMutasi.FieldByName('pegawaiid').asstring;
    OpenIfClose(qryLama,false);
    lPerusahaan.Caption:=qryLama.FieldByName('namaperusahaan').asstring;
    lDivisi.Caption:=qryLama.FieldByName('namadivisi').asstring;
    lDepartemen.Caption:=qryLama.FieldByName('namadepartemen').asstring;
    lOutsourcing.Caption:=qryLama.FieldByName('namaoutsourcing').asstring;
    lJabatan.Caption:=qryLama.FieldByName('namajabatan').asstring;
    lStatus.Caption:=qryLama.FieldByName('namastatus').asstring;
  end;
end;

procedure TfmMutasi.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryMutasi.State in [dsEdit, dsInsert]) then
   Abort;

  dmGeneral.periode:=EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);

  qryMutasi.Close;
  qryMutasi.Parameters[0].Value :=cbYear.EditValue;
  qryMutasi.Parameters[1].Value :=cbMonth.ItemIndex + 1;
  OpenIfClose(qryMutasi);

end;

procedure TfmMutasi.qryMutasiAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Mutasi',hasil,action);
end;

procedure TfmMutasi.qryMutasiAfterPost(DataSet: TDataSet);
begin
  inherited;
    //cari absen setelah ini ubah noreg menjadi noreg yang baru

  dmGeneral.InsertLog('Mutasi',hasil,action);
  dmgeneral.qryCariAbsen.Close;
  dmgeneral.qryCariAbsen.Parameters[0].Value:=dmgeneral.qryPrevPegawai.FieldByName('pegawaiid').asstring;
  dmgeneral.qryCariAbsen.Parameters[1].Value:=dmgeneral.qryPrevPegawai.FieldByName('tglkeluar').asdatetime;
  dmgeneral.qryCariAbsen.Open;
  if not(dmgeneral.qryCariAbsen.eof) then
  begin
    if MessageDlg(ASK_UBAH_ABSEN, mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      qryUbahAbsenNoreg.Parameters[0].Value:=qryMutasi.fieldbyname('noreg').asstring;
      qryUbahAbsenNoreg.Parameters[1].Value:=dmgeneral.qryPrevPegawai.FieldByName('pegawaiid').asstring;
      qryUbahAbsenNoreg.Parameters[2].Value:=dmgeneral.qryPrevPegawai.FieldByName('tglkeluar').asdatetime;
      qryUbahAbsenNoreg.ExecSQL;
    end
    else
      qryMutasi.Cancel;
  end;

  if (AFlagBaru=True) then
  begin
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='MUTASI';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=dbeTglMutasi.date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
    AFlagTombol:=false;
    AFlagBaru:=false;
  end;

end;

procedure TfmMutasi.qryMutasiBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmMutasi.qryMutasiBeforePost(DataSet: TDataSet);
begin
  inherited;

  hasil:=dmGeneral.GetLog(DataSet,Action);

  if AFlagTombol then
     AFlagBaru := true
  else
  begin
    if (DataSet.FieldByName('noreg').IsNull) or (DataSet.FieldByName('noreg').asstring='') then
       AFlagBaru := true
    else
       AFlagBaru := false;
  end;

  if (AFlagBaru) then
  begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='MUTASI';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglMutasi.date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    qryMutasi.FieldByName('NoReg').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
   end;
end;

procedure TfmMutasi.qryMutasiNewRecord(DataSet: TDataSet);
begin
  inherited;
  isikosong;
  DataSet.FieldByName('tglmulai').AsDateTime:=dmglobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('tglmutasi').AsDateTime:=dmglobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('counterprint').AsInteger:=0;
  DataSet.FieldByName('statusapprove').Asstring:='1';
end;

procedure TfmMutasi.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryDivisi);
  LockRefresh(dmGeneral.qryPrevPegawaiActive);
  LockRefresh(dmGeneral.qryDepartemen);
  LockRefresh(dmGeneral.qryJabatan);
  LockRefresh(dmGeneral.qryStatusKaryawan);
  LockRefresh(dmGeneral.qryPerusahaan);
  LockRefresh(dmGeneral.qryOutSourcing);
  LockRefresh(dmGeneral.qryPrevPegawai);
  LockRefresh(qryMutasi);
end;

end.


