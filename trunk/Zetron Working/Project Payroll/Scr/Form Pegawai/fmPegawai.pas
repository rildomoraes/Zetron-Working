unit fmPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMaster, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, DB, dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxGraphics, cxImage,
  cxDBEdit, cxMemo, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxSpinEdit, cxCheckBox, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, OleCtrls, ZKFPEngXControl_TLB, cxPC, ComCtrls;

type
  TFormUniMaster1 = class(TFormUniMaster)
    Panel1: TPanel;
    lblNIK: TLabel;
    dbeNoPeg: TcxDBTextEdit;
    dbeBarcode: TcxDBTextEdit;
    lblBarcode: TLabel;
    lblNama: TLabel;
    dbeName: TcxDBTextEdit;
    dbeAlamat: TcxDBTextEdit;
    lblAlamat: TLabel;
    lblCountry: TLabel;
    dblcCountry: TcxDBExtLookupComboBox;
    dblcProvince: TcxDBExtLookupComboBox;
    lblProvince: TLabel;
    lblCity: TLabel;
    dblcCity: TcxDBExtLookupComboBox;
    dbeTglKeluar: TcxDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    btnCapture: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dbeFoto: TcxDBImage;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lblTglMasuk: TLabel;
    dbeTglMasuk: TcxDBDateEdit;
    dblckodeperusahaan: TcxDBExtLookupComboBox;
    lblPerusahaan: TLabel;
    lblDivisi: TLabel;
    dblckodedivisi: TcxDBExtLookupComboBox;
    dblckodedepartemen: TcxDBExtLookupComboBox;
    lblDepartemen: TLabel;
    lblKodeOutsourcing: TLabel;
    dblckodeoutsourcing: TcxDBExtLookupComboBox;
    dblcJabatan: TcxDBExtLookupComboBox;
    Label4: TLabel;
    lblStatusKaryawan: TLabel;
    dblcStatusKaryawan: TcxDBExtLookupComboBox;
    Label5: TLabel;
    dbcbSPL: TcxDBImageComboBox;
    dblcShift: TcxDBExtLookupComboBox;
    dblcKodeGroupShift: TcxDBExtLookupComboBox;
    Label3: TLabel;
    lblFlagSchedule: TLabel;
    dbcbSchedule: TcxDBImageComboBox;
    dbcbJenisKelamin: TcxDBImageComboBox;
    lblJenisKelamin: TLabel;
    lblStatus: TLabel;
    dbcbStatus: TcxDBImageComboBox;
    dbeTglLahir: TcxDBDateEdit;
    lblTglLahir: TLabel;
    lblTempatLahir: TLabel;
    dbeTempatLahir: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    Label6: TLabel;
    dbckFlagKonfirmasi: TcxDBCheckBox;
    dbckFlagApprove: TcxDBCheckBox;
    lblFlagApprove: TLabel;
    Label7: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label8: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    Panel2: TPanel;
    ZKFPEngX1: TZKFPEngX;
    cbFingerIndex: TcxImageComboBox;
    btnStartRegister: TButton;
    Button1: TButton;
    dxComponentPrinter2: TdxComponentPrinter;
    dxGridReportLink1: TdxGridReportLink;
    lblAgama: TLabel;
    dbcbAgama: TcxDBImageComboBox;
    dbcbGolonganDarah: TcxDBComboBox;
    lblGolonganDarah: TLabel;
    lblNoKTP: TLabel;
    dbeNoKTP: TcxDBTextEdit;
    dbeUrutReport: TcxDBTextEdit;
    Label9: TLabel;
    lblAstek: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    dbeTglAstek: TcxDBDateEdit;
    lblTglAstek: TLabel;
    lblNoAstek: TLabel;
    dbeNoAstek: TcxDBTextEdit;
    cgDataPendidikan: TcxGrid;
    cgvDataPendidikan: TcxGridDBTableView;
    cgvDataPendidikanpegawaiid: TcxGridDBColumn;
    cgvDataPendidikankodependidikan: TcxGridDBColumn;
    cgvDataPendidikanJurusan: TcxGridDBColumn;
    cgvDataPendidikantahunmulai: TcxGridDBColumn;
    cgvDataPendidikangraduate: TcxGridDBColumn;
    cgvDataPendidikangpa: TcxGridDBColumn;
    cgvDataPendidikanremarks: TcxGridDBColumn;
    cgvDataPendidikanjenjang: TcxGridDBColumn;
    cgDataPendidikanLevel1: TcxGridLevel;
    cgDataAsset: TcxGrid;
    cgvDataAsset: TcxGridDBTableView;
    cgvDataAssetpegawaiid: TcxGridDBColumn;
    cgvDataAssetkodesubassets: TcxGridDBColumn;
    cgvDataAssetNamaAssets: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cgDataBahasa: TcxGrid;
    cgvDataBahasa: TcxGridDBTableView;
    cgvDataBahasapegawaiid: TcxGridDBColumn;
    cgvDataBahasakodebahasa: TcxGridDBColumn;
    cgvDataBahasaNamaBahasa: TcxGridDBColumn;
    cgvDataBahasaflagoral: TcxGridDBColumn;
    cgvDataBahasafwritten: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cgDataOrganisasi: TcxGrid;
    cgvDataOrganisasi: TcxGridDBTableView;
    cgvDataOrganisasipegawaiid: TcxGridDBColumn;
    cgvDataOrganisasiorganisasi: TcxGridDBColumn;
    cgvDataOrganisasijabatan: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cgDataReferensi: TcxGrid;
    cgvDataReferensi: TcxGridDBTableView;
    cgvDataReferensipegawaiid: TcxGridDBColumn;
    cgvDataReferensinamareferensi: TcxGridDBColumn;
    cgvDataReferensialamat: TcxGridDBColumn;
    cgvDataReferensipekerjaan: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cgDataKeahlian: TcxGrid;
    cgvDataKeahlian: TcxGridDBTableView;
    cgvDataKeahlianpegawaiid: TcxGridDBColumn;
    cgvDataKeahliankodekeahlian: TcxGridDBColumn;
    cgvDataKeahlianNamaKeahlian: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cgDataRelasi: TcxGrid;
    cgvDataRelasi: TcxGridDBTableView;
    cgvDataRelasipegawaiid: TcxGridDBColumn;
    cgvDataRelasinamarelasi: TcxGridDBColumn;
    cgvDataRelasipeg_nopeg: TcxGridDBColumn;
    cgvDataRelasiNamaPegawai: TcxGridDBColumn;
    cgvDataRelasihubungan: TcxGridDBColumn;
    cgvDataRelasikodedepartemen: TcxGridDBColumn;
    cgvDataRelasiNamaDepartemen: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cgDataPengalamanKerja: TcxGrid;
    cgvDataPengalamanKerja: TcxGridDBTableView;
    cgvDataPengalamanKerjapegawaiid: TcxGridDBColumn;
    cgvDataPengalamanKerjanamacompany: TcxGridDBColumn;
    cgvDataPengalamanKerjalastposition: TcxGridDBColumn;
    cgvDataPengalamanKerjadatefrom: TcxGridDBColumn;
    cgvDataPengalamanKerjadateto: TcxGridDBColumn;
    cgvDataPengalamanKerjalama: TcxGridDBColumn;
    cgvDataPengalamanKerjaremarks: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgvExplorernopeg: TcxGridDBColumn;
    cgvExplorerbarcode: TcxGridDBColumn;
    cgvExplorernama: TcxGridDBColumn;
    cgvExploreralamat: TcxGridDBColumn;
    cgvExplorertelp: TcxGridDBColumn;
    cgvExplorertmplahir: TcxGridDBColumn;
    cgvExplorertgllahir: TcxGridDBColumn;
    cgvExplorersex: TcxGridDBColumn;
    cgvExploreragama: TcxGridDBColumn;
    cgvExplorerstsipil: TcxGridDBColumn;
    cgvExplorertglmasuk: TcxGridDBColumn;
    cgvExplorertglefektif: TcxGridDBColumn;
    cgvExplorertglkeluar: TcxGridDBColumn;
    cgvExplorernoktp: TcxGridDBColumn;
    cgvExplorerflagastek: TcxGridDBColumn;
    cgvExplorernoastek: TcxGridDBColumn;
    cgvExplorertglastek: TcxGridDBColumn;
    cgvExplorerflagjpk: TcxGridDBColumn;
    cgvExplorertgljpk: TcxGridDBColumn;
    cgvExplorerbloodtype: TcxGridDBColumn;
    cgvExplorerkodebagian: TcxGridDBColumn;
    cgvExplorercountryid: TcxGridDBColumn;
    cgvExplorerprovinceid: TcxGridDBColumn;
    cgvExplorercityid: TcxGridDBColumn;
    cgvExplorerkodeperusahaan: TcxGridDBColumn;
    cgvExplorerflagkeluar: TcxGridDBColumn;
    cgvExplorermemo: TcxGridDBColumn;
    cgvExplorerStatus: TcxGridDBColumn;
    cgvExplorerstatusschedule: TcxGridDBColumn;
    cgvExplorershift: TcxGridDBColumn;
    cgvExplorerkodeoutsourcing: TcxGridDBColumn;
    cgvExplorerkodedepartemen: TcxGridDBColumn;
    cgvExplorerkodedivisi: TcxGridDBColumn;
    cgvExplorerkodejabatan: TcxGridDBColumn;
    cgvExplorerflagkonfirmasi: TcxGridDBColumn;
    cgvExplorerPerusahaan: TcxGridDBColumn;
    cgvExplorerDivisi: TcxGridDBColumn;
    cgvExplorerDepartemen: TcxGridDBColumn;
    cgvExplorerflagapproveterlambat: TcxGridDBColumn;
    cgvExplorerflagapproveabsen: TcxGridDBColumn;
    cgvExplorerflagproses: TcxGridDBColumn;
    cgvExplorerkodestatus: TcxGridDBColumn;
    cgvExplorerkodegroupshiftid: TcxGridDBColumn;
    cgvExplorerstatusspl: TcxGridDBColumn;
    cgvExplorerflagapprovepulangawal: TcxGridDBColumn;
    cgvExplorerpegawaiid: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    actCapture: TAction;
    btnGetId: TcxButton;
    StatusBar1: TStatusBar;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcCityPropertiesInitPopup(Sender: TObject);
    procedure dblcCityPropertiesCloseUp(Sender: TObject);
    procedure dblcProvincePropertiesInitPopup(Sender: TObject);
    procedure dblcProvincePropertiesEditValueChanged(Sender: TObject);
    procedure dblcProvincePropertiesCloseUp(Sender: TObject);
    procedure dblcCountryPropertiesEditValueChanged(Sender: TObject);
    procedure dblckodedepartemenPropertiesInitPopup(Sender: TObject);
    procedure dblckodedepartemenPropertiesCloseUp(Sender: TObject);
    procedure dblckodedivisiPropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnStartRegisterClick(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure ZKFPEngX1ImageReceived(ASender: TObject;
      var AImageValid: WordBool);
    procedure ZKFPEngX1FeatureInfo(ASender: TObject; AQuality: Integer);
    procedure ZKFPEngX1Enroll(ASender: TObject; ActionResult: WordBool;
      ATemplate: OleVariant);
    procedure ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
      ATemplate: OleVariant);
    procedure actCaptureExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    function VerFPData(AConnection: TZConnection; var AFingerId: string; var AFingerIndex: Integer; AFPData: OleVariant): boolean;
    procedure SaveFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; AFPData: OleVariant);
    procedure GetFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; var AFPData: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUniMaster1: TFormUniMaster1;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmglobal,dtmgeneral,dtmshare, frmCaptureFoto;


{ TFormUniMaster1 }

procedure TFormUniMaster1.actCaptureExecute(Sender: TObject);
begin
  inherited;

  TfmCaptureFoto.ExecuteForm;
end;

procedure TFormUniMaster1.btnGetIdClick(Sender: TObject);
begin
  inherited;
  if dmgeneral.qryPegawai.State in [dsInsert, dsEdit] then
  begin
    if not(dmgeneral.qryPegawai.FieldByName('tglmasuk').IsNull) then
    begin
      dmshare.qryGetTransactionIdNotDate.Close;
      dmshare.qryGetTransactionIdNotDate.Params[0].Value := 'pegawai';
      dmshare.qryGetTransactionIdNotDate.Params[1].Value := 'nopeg';
      dmshare.qryGetTransactionIdNotDate.Params[2].Value := FormatDateTime('YYMM',dmgeneral.qryPegawai.FieldByName('tglmasuk').asdatetime)  ;
      dmshare.qryGetTransactionIdNotDate.Params[3].Value := 9;
      OpenIfClose(Application, dmshare.qryGetTransactionIdNotDate, False, False);;
      dmgeneral.qryPegawai.FieldByName('nopeg').AsString :=dmshare.qryGetTransactionIdNotDate.Fields[0].AsString;
    end
    else
    begin
      showmessage('Tanggal Masuk Diisi Dulu !!!');
    end;
  end;
end;

procedure TFormUniMaster1.btnStartRegisterClick(Sender: TObject);
begin
  inherited;

  if dmgeneral.qryPegawai.FieldByName('pegawaiid').isnull then
  begin
    ShowMessage('Pegawai Disimpan Dulu !');
    Exit;
  end;

  ZKFPEngX1.BeginEnroll;
  StatusBar1.Panels.Items[0].Text := 'Start Registration';
end;

procedure TFormUniMaster1.Button1Click(Sender: TObject);
begin
  inherited;

  if ZKFPEngX1.IsRegister then
    ZKFPEngX1.CancelEnroll;

  StatusBar1.Panels.Items[0].Text := 'Start Identification(1:N)';
  FMatchType := 2;
end;

procedure TFormUniMaster1.dblcCityPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevCityCountry.Close;
    dmGeneral.qryPrevCityCountry.Params[0].Value := '%';
    dmGeneral.qryPrevCityCountry.Params[1].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevCityCountry, False, False);
  end;
end;

procedure TFormUniMaster1.dblcCityPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  with dmGeneral do
  begin
    qryPrevCityCountry.Close;
    qryPrevCityCountry.Params[0].Value := dblcCountry.EditValue;
    qryPrevCityCountry.Params[1].Value := dblcProvince.EditValue;
    OpenIfClose(Application, qryPrevCityCountry, False, False);
  end;
end;

procedure TFormUniMaster1.dblcCountryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevProvinceCountry.Close;
    dmGeneral.qryPrevProvinceCountry.Params[0].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevProvinceCountry, False, False);
  end;
end;

procedure TFormUniMaster1.dblckodedepartemenPropertiesCloseUp(Sender: TObject);
begin
  inherited;

  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevDepartemenDivisi.Close;
    dmGeneral.qryPrevDepartemenDivisi.Params[0].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevDepartemenDivisi, False, False);
  end;
end;

procedure TFormUniMaster1.dblckodedepartemenPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;

  dmGeneral.qryPrevDepartemenDivisi.Close;
  dmGeneral.qryPrevDepartemenDivisi.Params[0].Value :=
  dmGeneral.qryPegawai.FieldByName('kodedivisi').AsVariant;
  OpenIfClose(Application, dmGeneral.qryPrevDepartemenDivisi, False, False);

end;

procedure TFormUniMaster1.dblckodedivisiPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.qryPegawai.FieldByName('KodeDepartemen').AsVariant := null;
  end;
end;

procedure TFormUniMaster1.dblcProvincePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevProvinceCountry.Close;
    dmGeneral.qryPrevProvinceCountry.Params[0].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevProvinceCountry, False, False);
  end;
end;

procedure TFormUniMaster1.dblcProvincePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
    dmGeneral.qryPegawai.FieldByName('CityId').AsVariant := Null;
end;

procedure TFormUniMaster1.dblcProvincePropertiesInitPopup(Sender: TObject);
begin
  inherited;
  with dmGeneral do
  begin
    qryPrevProvinceCountry.Close;
    qryPrevProvinceCountry.Params[0].Value := dblcCountry.EditValue;
    OpenIfClose(Application, qryPrevProvinceCountry, False, False);
  end;
end;

procedure TFormUniMaster1.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'tglkeluar') = 0) then
  begin
    if dmgeneral.qryPegawai.FieldByName('tglkeluar').IsNull  then
       dmgeneral.qryPegawai.FieldByName('flagkeluar').asstring:='0'
    else
       dmgeneral.qryPegawai.FieldByName('flagkeluar').asstring:='1';
  end;
end;

procedure TFormUniMaster1.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbcbSchedule, True, COLOR_INACTIVE);
    SetReadOnly(dblckodeperusahaan, True, COLOR_INACTIVE);
    SetReadOnly(dblckodedivisi, True, COLOR_INACTIVE);
    SetReadOnly(dblckodedepartemen, True, COLOR_INACTIVE);
    SetReadOnly(dblckodeoutsourcing, True, COLOR_INACTIVE);
    SetReadOnly(dblcJabatan, True, COLOR_INACTIVE);
    SetReadOnly(dblcStatusKaryawan, True, COLOR_INACTIVE);
//    DetailShow;
  end;
  if dsDefault.State in [dsInsert] then
  begin
    SetReadOnly(dbcbSchedule, False);
    SetReadOnly(dblckodeperusahaan, False);
    SetReadOnly(dblckodedivisi, False);
    SetReadOnly(dblckodedepartemen, False);
    SetReadOnly(dblckodeoutsourcing, False);
    SetReadOnly(dblcJabatan, False);
    SetReadOnly(dblcStatusKaryawan, False);
  end;
end;

procedure TFormUniMaster1.GetFPData(AConnection: TZConnection;
  AFingerId: string; AFingerIndex: Integer; var AFPData: OleVariant);
var
  ZQuery: TZQuery;
  pData: PChar;
begin
  ZQuery := TZQuery.Create(Application);
  try
    ZQuery.Connection := AConnection;
    ZQuery.SQL.Add('select * from FingerPrint_t');
    ZQuery.SQL.Add('where id = :id');
    ZQuery.SQL.Add('and finger = :finger');
    ZQuery.Params[0].Value := AFingerId;
    ZQuery.Params[1].Value := AFingerIndex;
    ZQuery.Open;
    if not ZQuery.IsEmpty then
    begin
      //read-out data
      with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmRead) do
      begin
        AFPData := VarArrayCreate([0, Size + 1], varByte);
        pData := VarArrayLock(AFPData);
        try
          Read(pData^, Size);
        finally
          VarArrayUnlock(AFPData);
        end;
        Free;
      end;
    end;
    ZQuery.Close;
  finally
    ZQuery.Free;
  end;
end;

procedure TFormUniMaster1.InitForm;
begin
  inherited;

  OpenIfClose(Application, dmGeneral.qryPegawai, True, True);

  OpenIfClose(Application, dmGeneral.qryGroupShiftHd, True, True);
  OpenIfClose(Application, dmGeneral.qryGroupShiftDt1, True, True);

  OpenIfClose(Application, dmGeneral.qryPerusahaan, False, False);
  OpenIfClose(Application, dmGeneral.qryJabatan, False, False);
  OpenIfClose(Application, dmGeneral.qryDivisi, False, False);
  OpenIfClose(Application, dmGeneral.qryPrevDepartemen, False, False);
  OpenIfClose(Application, dmGeneral.qryPrevCountry, False, False);
  OpenIfClose(Application, dmGeneral.qryPrevProvince, False, False);
  OpenIfClose(Application, dmGeneral.qryPrevCity, False, False);
  OpenIfClose(Application, dmGeneral.qryOutSourcing, False, False);
  OpenIfClose(Application, dmGeneral.qryKeahlian, False, True);
  OpenIfClose(Application, dmGeneral.qryBahasa, False, True);
  OpenIfClose(Application, dmGeneral.qryGroupShiftHd, True, True);
  OpenIfClose(Application, dmGeneral.qryStatusKaryawan, False, True);
  OpenIfClose(Application, dmGeneral.qryAssets, False, True);
  OpenIfClose(Application, dmGeneral.qrySubAssets, False, True);
  OpenIfClose(Application, dmGeneral.qryPendidikan, False, False);
  OpenIfClose(Application, dmGeneral.qryPegawaiFoto, False, True);
  OpenIfClose(Application, dmGeneral.qryDataPendidikan, False, False);
  OpenIfClose(Application, dmGeneral.qryDatafamily, False, False);
  OpenIfClose(Application, dmGeneral.qryDataOrganisasi, False, False);
  OpenIfClose(Application, dmGeneral.qryDataPengalamanKerja, False, False);
  OpenIfClose(Application, dmGeneral.qryDataReferensi, False, False);
  OpenIfClose(Application, dmGeneral.qryDataBahasa, False, False);
  OpenIfClose(Application, dmGeneral.qryDataRelasi, False, False);
  OpenIfClose(Application, dmGeneral.qryDataAsset, False, False);
  OpenIfClose(Application, dmGeneral.qryDataKeahlian, False, False);
  SetReadOnly(cgvExplorer);
  SetActionDataSource(feSetupButton1.ActionList1,dmgeneral.dsPegawai);

end;

procedure TFormUniMaster1.RefreshAll;
begin
  inherited;

end;

procedure TFormUniMaster1.SaveFPData(AConnection: TZConnection;
  AFingerId: string; AFingerIndex: Integer; AFPData: OleVariant);
var
  ZQuery: TZQuery;
  pData: PChar;
begin
  ZQuery := TZQuery.Create(Application);
  try
    ZQuery.Connection := AConnection;
    ZQuery.SQL.Add('select * from FingerPrint_t');
    ZQuery.SQL.Add('where id = :id');
    ZQuery.SQL.Add('and finger = :finger');
    ZQuery.Params[0].Value := AFingerId;
    ZQuery.Params[1].Value := AFingerIndex;
    ZQuery.Open;
    if ZQuery.IsEmpty then
    begin
      ZQuery.Insert;
      ZQuery.FieldByName('Id').AsString := AFingerId;
      ZQuery.FieldByName('Finger').AsInteger := AFingerIndex;
    end
    else
      ZQuery.Edit;
    // FP data
    with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmWrite) do
    begin
      pData := VarArrayLock(AFPData);
      try
        Write(pData^, VarArrayHighBound(AFPData, 1) - VarArrayLowBound(AFPData, 1) + 1);
      finally
        VarArrayUnlock(AFPData);
      end;
      Free;
    end;
    ZQuery.Post;
    ZQuery.Close;
  finally
    ZQuery.Free;
  end;
end;

function TFormUniMaster1.VerFPData(AConnection: TZConnection;
  var AFingerId: string; var AFingerIndex: Integer;
  AFPData: OleVariant): boolean;
var
  ZQuery: TZQuery;
  pData: PChar;
  CurrentAFPData: OleVariant;
  RegChanged: wordBool;
begin
  Result := False;
  ZQuery := TZQuery.Create(Application);
  try
    ZQuery.Connection := AConnection;
    ZQuery.SQL.Add('select * from FingerPrint_t');
    ZQuery.Open;
    while not ZQuery.Eof do
    begin
      //read-out data
      with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmRead) do
      begin
        CurrentAFPData := VarArrayCreate([0, Size + 1], varByte);
        pData := VarArrayLock(CurrentAFPData);
        try
          Read(pData^, Size);
          // Compare
          Result := ZKFPEngX1.VerFinger(CurrentAFPData, AFPData, False, RegChanged);
          if Result then
          begin
            AFingerId := ZQuery.FieldByName('Id').AsString;
            AFingerIndex := ZQuery.FieldByName('Finger').AsInteger;
            Exit;
          end;
        finally
          VarArrayUnlock(CurrentAFPData);
        end;
        Free;
      end;

      ZQuery.Next;
    end;
  finally
    ZQuery.Free;
  end;
end;

procedure TFormUniMaster1.ZKFPEngX1Capture(ASender: TObject;
  ActionResult: WordBool; ATemplate: OleVariant);
var
  fi, i: integer;
  Score, ProcessNum: integer;
  RegChanged: wordBool;
  sTemp: string;

  FingerId: string;
  FingerIndex: integer;
  Success: boolean;
  namajari :string;
begin
  sTemp := ZKFPEngX1.GetTemplateAsString;

  StatusBar1.Panels.Items[0].Text := 'Acqired Template';
  Success := VerFPData(dmglobal.zconGlobal, FingerId, FingerIndex, ATemplate);

  if FingerId<>dmgeneral.qryPegawai.FieldByName('pegawaiid').asstring then
  begin
    ShowMessage('Verifikasi Pegawai Ini Gagal Tetapi Sukses Untuk Pegawai Lain !!!');
  end;

  case FingerIndex of
  0:namajari:='Ibu Jari Kanan';
  1:namajari:='Jari Telunjuk Kanan';
  2:namajari:='Jari Tengah Kanan';
  3:namajari:='Jari Manis Kanan';
  4:namajari:='Jari Kelingking Kanan';
  5:namajari:='Ibu Jari Kiri';
  6:namajari:='Jari Telunjuk Kiri';
  7:namajari:='Jari Tengah Kiri';
  8:namajari:='Jari Manis Kiri';
  9:namajari:='Jari Kelingking Kiri';
  end;

  if Success then
    ShowMessage('Verifikasi Berhasil Untuk ' + dmgeneral.qryPegawai.FieldByName('nama').asstring+ ', '+namajari)
  else
    ShowMessage('Verifikasi Gagal');
end;

procedure TFormUniMaster1.ZKFPEngX1Enroll(ASender: TObject;
  ActionResult: WordBool; ATemplate: OleVariant);
var
  FingerId: string;
  FingerIndex: integer;
begin
  if not ActionResult then
  begin
    ShowMessage('Registrasi Sidik Jari Gagal !');
    StatusBar1.Panels.Items[0].Text := '';
  end
  else
  begin
    //save to database directly
    if VerFPData(dmglobal.zconglobal, FingerId, FingerIndex, ZKFPEngX1.GetTemplate) then
    begin
       showmessage('Jari Sudah Teregistrasi Sebelumnya, Registrasi Gagal !!!');
    end
    else
    begin
      SaveFPData(dmglobal.zconglobal, dmgeneral.qrypegawai.FieldByName('pegawaiid').asstring, cbFingerIndex.ItemIndex, ZKFPEngX1.GetTemplate);
      ShowMessage('FingerPrint registation succeeded !');
      StatusBar1.Panels.Items[0].Text := '';
    end;
  end;
end;

procedure TFormUniMaster1.ZKFPEngX1FeatureInfo(ASender: TObject;
  AQuality: Integer);
var
  sTemp: string;
begin
  sTemp := '';
  if ZKFPEngX1.IsRegister then
    sTemp := 'Status Register : Tekan Jari sampai ' + inttostr(ZKFPEngX1.EnrollIndex) + ' kali ';

  sTemp := sTemp + ' Kualitas Sidik Jari ';

  if AQuality <> 0 then
    sTemp := sTemp + ' Jelek ' + inttostr(AQuality)
  else
    sTemp := sTemp + ' Bagus';

  StatusBar1.Panels.Items[0].Text := sTemp;
end;

procedure TFormUniMaster1.ZKFPEngX1ImageReceived(ASender: TObject;
  var AImageValid: WordBool);
begin
  ZKFPEngX1.PrintImageAt(GetWindowDC(Panel1.Handle), 0, 0, ZKFPEngX1.ImageWidth, ZKFPEngX1.ImageHeight);
end;

end.
