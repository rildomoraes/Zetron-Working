unit frmSettingGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, DB, MemDS, DBAccess, Uni, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCheckBox, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, StdCtrls, cxPC, cxControls,
  ActnList, cxButtons, ExtCtrls, ADODB;

type
  TfmSettingGlobal = class(TFormUni)
    actRefresh: TAction;
    actPost: TAction;
    actCancel: TAction;
    dsSetup: TDataSource;
    cxPageControl1: TcxPageControl;
    tsAbsensi: TcxTabSheet;
    Label17: TLabel;
    J: TLabel;
    edtJumlahSidik: TcxSpinEdit;
    btnRefresh: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    Label1: TLabel;
    edtJumlahMinimum: TcxSpinEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    chkKodeOtomatis: TcxCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tsMutasi: TcxTabSheet;
    Label10: TLabel;
    edtStatusVoid: TcxSpinEdit;
    lcbDefaultKodeMasuk: TcxExtLookupComboBox;
    lcbDefaultKodeAbsen: TcxExtLookupComboBox;
    lcbDefaultKodeMasuk12: TcxExtLookupComboBox;
    lcbDefaultKodeOtomatis: TcxExtLookupComboBox;
    Label3: TLabel;
    edtJumlahOtorisasi: TcxSpinEdit;
    Label9: TLabel;
    Label12: TLabel;
    lcbDefaultKodeMasukHariLibur: TcxExtLookupComboBox;
    Label11: TLabel;
    dbimgcbFinger: TcxImageComboBox;
    Label13: TLabel;
    edtJumlahPasswordPegawai: TcxSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    edtJumlahPasswordSupervisor: TcxSpinEdit;
    Label16: TLabel;
    qrySetup: TADOQuery;
    Label18: TLabel;
    edtJumlahMaximum: TcxSpinEdit;
    Label19: TLabel;
    procedure actCancelExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    procedure RefreshAll;
    function GetData(const ASetupId, ADefault: string): variant;
    procedure SaveData(const ASetupId: string; AValue: variant);

    procedure LoadDataToForm;
    procedure SaveDataFromForm;
  public
    { Public declarations }
  end;

var
  fmSettingGlobal: TfmSettingGlobal;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal,  dtmShare,dtmGeneral;

procedure TfmSettingGlobal.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmSettingGlobal.actPostExecute(Sender: TObject);
begin
  inherited;
  SaveDataFromForm;
end;

procedure TfmSettingGlobal.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshAll;
end;

function TfmSettingGlobal.GetData(const ASetupId, ADefault: string): variant;
begin
  if qrySetup.Locate('SetupId', ASetupId, [loCaseInsensitive]) then
    Result := qrySetup.FieldByName('SetupValue').AsString;
  if Result = '' then
    Result := ADefault;
end;

procedure TfmSettingGlobal.InitForm;
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;

  OpenIfClose(qrySetup);
  OpenIfClose(dmgeneral.qryKodeAbsen);
  OpenIfClose(dmgeneral.qryJabatan);

  LoadDataToForm;
end;

procedure TfmSettingGlobal.LoadDataToForm;
begin
  // Global Setting
  edtJumlahSidik.EditValue := GetData('OPT01', '3');
  edtJumlahOtorisasi.EditValue := GetData('OPT02', '3');
  edtJumlahMinimum.EditValue := GetData('OPT03', '5');
  lcbDefaultKodeMasuk.EditValue := GetData('OPT04', 'H');
  lcbDefaultKodeAbsen.EditValue := GetData('OPT05', 'A');
  lcbDefaultKodeMasuk12.EditValue := GetData('OPT06', 'H2');
  lcbDefaultKodeMasukHariLibur.EditValue := GetData('OPT10', 'HL');
  chkKodeOtomatis.Checked := GetData('OPT07', '0');
  lcbDefaultKodeOtomatis.EditValue := GetData('OPT08', 'X');
  edtStatusVoid.EditValue := GetData('OPT09', '2');
  dbimgcbFinger.EditValue := GetData('OPT11', '1');
  edtJumlahPasswordPegawai.EditValue := GetData('OPT12', '3');
  edtJumlahPasswordSupervisor.EditValue := GetData('OPT13', '3');
  edtJumlahMaximum.EditValue := GetData('OPT14', '3');
end;

procedure TfmSettingGlobal.RefreshAll;
begin
  LockRefresh(qrySetup);
  LoadDataToForm;

end;

procedure TfmSettingGlobal.SaveData(const ASetupId: string; AValue: variant);
begin
  if qrySetup.Locate('Programid;SetupId', vararrayof(['ZEPAY',ASetupId]), [loCaseInsensitive]) then
    qrySetup.Edit
  else
  begin
    qrySetup.Insert;
    qrySetup.FieldByName('ProgramId').AsString := 'ZEPAY';
    qrySetup.FieldByName('SetupId').AsString := ASetupId;
    qrySetup.FieldByName('SetupName').AsString := ASetupId;
  end;
  qrySetup.FieldByName('SetupValue').AsString := AValue;
  qrySetup.Post;
end;

procedure TfmSettingGlobal.SaveDataFromForm;
begin
  // Save Global Setting
  SaveData('OPT01', VarToStr(edtJumlahSidik.EditValue));//Jumlah Percobaan Entry dengan menggunakan sidik jari
  SaveData('OPT02', VarToStr(edtJumlahOtorisasi.EditValue));//Jumlah Percobaan Entry dengan menggunakan sidik jari
  SaveData('OPT03', VarToStr(edtJumlahMinimum.EditValue)); // Jumlah Batas Menit Absen
  SaveData('OPT04', VarToStr(lcbDefaultKodeMasuk.EditValue)); // Kode Absen Default Masuk
  SaveData('OPT05', VarToStr(lcbDefaultKodeAbsen.EditValue)); // Kode Absen Default Absen
  SaveData('OPT06', VarToStr(lcbDefaultKodeMasuk12.EditValue)); // Kode Absen Default Masuk 1/2 hari
  SaveData('OPT07', VarToStr(chkKodeOtomatis.EditValue)); // Set Otomatis Kalo absensi tidak lengkap
  SaveData('OPT08', VarToStr(lcbDefaultKodeOtomatis.EditValue)); // Set Otomatis ganti kode absen kalo absen tidak lengkap
  SaveData('OPT09', VarToStr(edtStatusVoid.EditValue)); // Set Status Void
  SaveData('OPT10', VarToStr(lcbDefaultKodeMasukHariLibur.EditValue)); // Set Default Masuk Pada Hari Libur
  SaveData('OPT11', VarToStr(dbimgcbFinger.EditValue)); // Set Alat Input Absebsi
  SaveData('OPT12', VarToStr(edtJumlahPasswordPegawai.EditValue));//Jumlah Percobaan Entry dengan menggunakan sidik jari
  SaveData('OPT13', VarToStr(edtJumlahPasswordSupervisor.EditValue));//Jumlah Percobaan Entry dengan menggunakan sidik jari
  SaveData('OPT14', VarToStr(edtJumlahMaximum.EditValue));//Jumlah Percobaan Entry dengan menggunakan sidik jari

  // Reload all program options !!!
  dmShare.LoadDataFromOption;
end;

end.
