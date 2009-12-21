unit frmPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxSpinEdit, cxCheckBox, cxImageComboBox, cxCalendar, MemDS, DBAccess, Uni,
  untIvEncryption, DBActns, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  ComCtrls, StdCtrls, cxPC, cxImage, cxMemo, cxDropDownEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxButtons, ExtCtrls, ADODB, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxSkinscxPCPainter;

type
  TfmPegawai = class(TFormUniMasterEx)
    Panel1: TPanel;
    lblNIK: TLabel;
    dbeNoPeg: TcxDBTextEdit;
    dbeBarcode: TcxDBTextEdit;
    lblBarcode: TLabel;
    lblNama: TLabel;
    dbeName: TcxDBTextEdit;
    dbeAlamat: TcxDBTextEdit;
    lblAlamat: TLabel;
    lblCity: TLabel;
    dblcCity: TcxDBExtLookupComboBox;
    dbeTglKeluar: TcxDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    btnCapture: TcxButton;
    dbeFoto: TcxDBImage;
    dpDetail: TcxPageControl;
    dpGeneral: TcxTabSheet;
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
    dpApproval: TcxTabSheet;
    Label6: TLabel;
    dbckFlagBolehLongShift: TcxDBCheckBox;
    dbckFlagValidasiLongShift: TcxDBCheckBox;
    lblFlagApprove: TLabel;
    Label7: TLabel;
    dbckFlagBolehTerlambat: TcxDBCheckBox;
    dbckFlagValidasiTerlambat: TcxDBCheckBox;
    Label8: TLabel;
    dpRegistrasiSidik: TcxTabSheet;
    dpLainLain: TcxTabSheet;
    dpJamSostek: TcxTabSheet;
    dpPendidikan: TcxTabSheet;
    dpKeluarga: TcxTabSheet;
    dpBahasa: TcxTabSheet;
    dpOrganisasi: TcxTabSheet;
    dpReferensi: TcxTabSheet;
    dpKeahlian: TcxTabSheet;
    dpRelasi: TcxTabSheet;
    dpPengalamanKerja: TcxTabSheet;
    btnStartRegister: TButton;
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
    cgDataPendidikanLevel1: TcxGridLevel;
    cgKeluarga: TcxGrid;
    cgvKeluarga: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cgDataBahasa: TcxGrid;
    cgvDataBahasa: TcxGridDBTableView;
    cgvDataBahasapegawaiid: TcxGridDBColumn;
    cgvDataBahasakodebahasa: TcxGridDBColumn;
    cgvDataBahasaNamaBahasa: TcxGridDBColumn;
    cgvDataBahasaflagoral: TcxGridDBColumn;
    cgvDataBahasaflagwritten: TcxGridDBColumn;
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
    cgvDataRelasipeg_nopeg: TcxGridDBColumn;
    cgvDataRelasiNamaPegawai: TcxGridDBColumn;
    cgvDataRelasihubungan: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cgDataPengalamanKerja: TcxGrid;
    cgvDataPengalamanKerja: TcxGridDBTableView;
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
    cgMasterSetupLevel2: TcxGridLevel;
    cgvMutasi: TcxGridDBTableView;
    dsmutasi: TDataSource;
    cgvMutasipegawaiid: TcxGridDBColumn;
    cgvMutasinoreg: TcxGridDBColumn;
    cgvMutasitglmulai: TcxGridDBColumn;
    cgvMutasikodeperusahaan: TcxGridDBColumn;
    cgvMutasikodedivisi: TcxGridDBColumn;
    cgvMutasikodedepartemen: TcxGridDBColumn;
    cgvMutasikodeoutsourcing: TcxGridDBColumn;
    cgvMutasikodejabatan: TcxGridDBColumn;
    cgvMutasikodestatus: TcxGridDBColumn;
    cgvMutasinamaperusahaan: TcxGridDBColumn;
    cgvMutasinamadivisi: TcxGridDBColumn;
    cgvMutasinamadepartemen: TcxGridDBColumn;
    cgvMutasinamaoutsourcing: TcxGridDBColumn;
    cgvMutasinamajabatan: TcxGridDBColumn;
    cgvMutasinamastatus: TcxGridDBColumn;
    cgvMutasiketerangan: TcxGridDBColumn;
    dpUsername: TcxTabSheet;
    dsEmployee: TDataSource;
    lblUsername: TLabel;
    dbeUsername: TcxDBTextEdit;
    dbcbLevelValidation: TcxDBComboBox;
    lblLevelValidation: TLabel;
    btnDeletePassword: TcxButton;
    lblPosition: TLabel;
    dblcPositionId: TcxDBExtLookupComboBox;
    lblPrefixCode: TLabel;
    dbePrefixCode: TcxDBTextEdit;
    btnSimpan: TcxButton;
    IvEncryption1: TIvEncryption;
    Label10: TLabel;
    Label11: TLabel;
    dbckflagbolehpulangawal: TcxDBCheckBox;
    dbckflagvalidasipulangawal: TcxDBCheckBox;
    Label12: TLabel;
    dbckflagapprovelongshift: TcxDBCheckBox;
    Label13: TLabel;
    dbckflagapproveterlambat: TcxDBCheckBox;
    Label14: TLabel;
    dbckflagapprovepulangawal: TcxDBCheckBox;
    Label16: TLabel;
    dbckFlagBolehMasukKemarinTdkMasuk: TcxDBCheckBox;
    Label17: TLabel;
    dbckFlagValidasiMasukKemarinTdkMasuk: TcxDBCheckBox;
    Label18: TLabel;
    dbckFlagBolehMasukKemarinTdkAbsenPlg: TcxDBCheckBox;
    Label19: TLabel;
    dbckFlagValidasiMasukKemarinTdkAbsenPlg: TcxDBCheckBox;
    Label20: TLabel;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    Label21: TLabel;
    cxButton1: TcxButton;
    DataSetPost1: TDataSetPost;
    dsDataBahasa: TDataSource;
    dsDataOrganisasi: TDataSource;
    dsDataKeahlian: TDataSource;
    dsDataReferensi: TDataSource;
    dsDataRelasi: TDataSource;
    dsDataPengalamanKerja: TDataSource;
    dsDataAsset: TDataSource;
    dsDataFamily: TDataSource;
    dsDataPendidikan: TDataSource;
    cgvKeluarganama: TcxGridDBColumn;
    cgvKeluargaalamat: TcxGridDBColumn;
    cgvKeluargaalamat1: TcxGridDBColumn;
    cgvKeluargatgllahir: TcxGridDBColumn;
    cgvKeluargatmplahir: TcxGridDBColumn;
    cgvKeluargajeniskelamin: TcxGridDBColumn;
    cgvKeluargagoldarah: TcxGridDBColumn;
    cgvKeluargapekerjaan: TcxGridDBColumn;
    cgvKeluargaflagstatuskeluarga: TcxGridDBColumn;
    cgvKeluargaflagstatustanggungan: TcxGridDBColumn;
    cgvKeluargaflagpassaway: TcxGridDBColumn;
    cgvDataPengalamanKerjanamaperusahaan: TcxGridDBColumn;
    cgvDataPengalamanKerjaposisiterakhir: TcxGridDBColumn;
    cgvDataPengalamanKerjadaritgl: TcxGridDBColumn;
    cgvDataPengalamanKerjasampaitgl: TcxGridDBColumn;
    cgvDataPengalamanKerjalama: TcxGridDBColumn;
    cgvDataPengalamanKerjaketerangan: TcxGridDBColumn;
    dsPegawaiFoto: TDataSource;
    cgvExplorerperusahaan: TcxGridDBColumn;
    cgvExplorerdivisi: TcxGridDBColumn;
    cgvExplorerdepartemen: TcxGridDBColumn;
    qryDisplayMutasi: TADOQuery;
    qryEmployee: TADOQuery;
    qryCekPegawai: TADOQuery;
    qryGetEmployeeid: TADOQuery;
    qryDataAsset: TADOQuery;
    qryDataBahasa: TADOQuery;
    qryDataOrganisasi: TADOQuery;
    qryDataReferensi: TADOQuery;
    qryDataPengalamanKerja: TADOQuery;
    qryDataKeahlian: TADOQuery;
    qryDataRelasi: TADOQuery;
    qryDatafamily: TADOQuery;
    qryDataPendidikan: TADOQuery;
    qryPegawaiFoto: TADOQuery;
    qryDeleteAbsen: TADOQuery;
    cgvKeluargaPEGAWAIID: TcxGridDBColumn;
    cgvDataRelasiKODEDEPARTEMEN: TcxGridDBColumn;
    cgvDataPengalamanKerjaPEGAWAIID: TcxGridDBColumn;
    qryFingerPrint: TADOQuery;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    procedure actRefreshExecute(Sender: TObject);
    procedure dbeFotoDblClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnDeletePasswordClick(Sender: TObject);
    procedure dpUsernameShow(Sender: TObject);
    procedure dbePrefixCodePropertiesEditValueChanged(Sender: TObject);
    procedure dblcDepartmentIdPropertiesEditValueChanged(Sender: TObject);
    procedure dblcCompanyIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryEmployeeNewRecord(DataSet: TDataSet);
    procedure cgvExplorerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dpRelasiShow(Sender: TObject);
    procedure dpReferensiShow(Sender: TObject);
    procedure dpPengalamanKerjaShow(Sender: TObject);
    procedure dpKeluargaShow(Sender: TObject);
    procedure dpOrganisasiShow(Sender: TObject);
    procedure dpAssetShow(Sender: TObject);
    procedure dpBahasaShow(Sender: TObject);
    procedure dpKeahlianShow(Sender: TObject);
    procedure dpPendidikanShow(Sender: TObject);
    procedure dpGeneralShow(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcProvincePropertiesEditValueChanged(Sender: TObject);
    procedure dblckodedivisiPropertiesEditValueChanged(Sender: TObject);
    procedure btnStartRegisterClick(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
//    procedure ZKFPEngX1ImageReceived(ASender: TObject;
//      var AImageValid: WordBool);
//    procedure ZKFPEngX1FeatureInfo(ASender: TObject; AQuality: Integer);
//    procedure ZKFPEngX1Enroll(ASender: TObject; ActionResult: WordBool;
//      ATemplate: OleVariant);
//    procedure ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
//      ATemplate: OleVariant);
    procedure actCaptureExecute(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryDeleteAbsenAfter(DataSet: TDataSet);
    procedure qryCekPegawaiAfter(DataSet: TDataSet);
    procedure qryFingerPrintAfter(DataSet: TDataSet);
    procedure qryEmployeeAfter(DataSet: TDataSet);
    procedure qryDataRelasiAfter(DataSet: TDataSet);
    procedure qryPegawaiFotoAfter(DataSet: TDataSet);
    procedure qryDataKeahlianAfter(DataSet: TDataSet);
    procedure qryDataPengalamanKerjaAfter(DataSet: TDataSet);
    procedure qryDataReferensiAfter(DataSet: TDataSet);
    procedure qryDataOrganisasiAfter(DataSet: TDataSet);
    procedure qryDataBahasaAfter(DataSet: TDataSet);
    procedure qryDataAssetAfter(DataSet: TDataSet);
    procedure qryDatafamilyAfter(DataSet: TDataSet);
    procedure qryDataPendidikanAfter(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
//    function VerFPData(AConnection: TZConnection; var AFingerId: string; var AFingerIndex: Integer; AFPData: OleVariant): boolean;
//    procedure SaveFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; AFPData: OleVariant);
//    procedure GetFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; var AFPData: OleVariant);
  private
    { Private declarations }
    { Private declarations }
    var
    fpcHandle: integer;
    FMatchType: integer;
    FRegTemplate: OleVariant;
    FFingerNames: TStringList;
    FFingerCount: integer;
    sFRegTemplate: string;
    FOldPassword: string;
    hasil,action : string;
  public
    { Public declarations }
    procedure InsertLog(const TableName,Hasil,Action: string);
    function GetLog(DataSet:TDataSet;var Action:string):string;
    function GetLogDel(DataSet:TDataSet;var Action:string):string;
  end;

var
  fmPegawai: TfmPegawai;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmglobal,dtmgeneral,dtmshare, frmCaptureFoto, untPayroll,
frmEnrollmentFingerPrint;


{ TFormUniMasterEx1 }

procedure TfmPegawai.actCaptureExecute(Sender: TObject);
begin
  inherited;

  TfmCaptureFoto.ExecuteForm('', 0);
end;

procedure TfmPegawai.actRefreshExecute(Sender: TObject);
begin
  inherited;
  dmgeneral.qryPegawai.close;
  dmgeneral.qryPegawai.open;
end;

procedure TfmPegawai.btnDeletePasswordClick(Sender: TObject);
begin
  inherited;
  if qryEmployee.IsEmpty then
    Exit;

  if MessageDlg(ASK_DELETE_PASSWORD, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    if qryEmployee.State in [dsBrowse] then
      qryEmployee.Edit;
    qryEmployee.FieldByName('Password').AsVariant := Null;
  end;
end;

procedure TfmPegawai.btnGetIdClick(Sender: TObject);
var
 noterakhir:integer;
 strnoterakhir:string;
begin
  inherited;
  dmgeneral.AFlagTombol := false;

if dmgeneral.qryPegawai.State in [dsInsert, dsEdit] then
begin
  if (dmGeneral.qryPegawai.FieldByName('NoPeg').IsNull) or (dmGeneral.qryPegawai.FieldByName('NoPeg').asstring='') or (dbeNoPeg.Text='') then
    begin
    dmgeneral.AFlagTombol := true;
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='TENAGAKERJA';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryPegawai.FieldByName('NoPeg').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
end;
  {if dmgeneral.qryPegawai.State in [dsInsert, dsEdit] then
  begin
    if not(dmgeneral.qryPegawai.FieldByName('tglmasuk').IsNull) then
    begin
      qryGetEmployeeid.Close;
      qryGetEmployeeid.Open;
      showmessage(qryGetEmployeeid.fieldbyname('noterakhir').AsString);
      if (qryGetEmployeeid.fieldbyname('noterakhir').AsString='') then
       begin
        noterakhir := 1;
       end
      else
       begin
        noterakhir:=strtoint(qryGetEmployeeid.fieldbyname('noterakhir').asstring)+1;
       end;
      strnoterakhir:=inttostr(noterakhir);
      case length(strnoterakhir) of
       1:strnoterakhir:='0000'+strnoterakhir;
       2:strnoterakhir:='000'+strnoterakhir;
       3:strnoterakhir:='00'+strnoterakhir;
       4:strnoterakhir:='0'+strnoterakhir;
      end;
      dmgeneral.qryPegawai.FieldByName('nopeg').AsString :=FormatDateTime('YYMM',dmgeneral.qryPegawai.FieldByName('tglmasuk').asdatetime)+strnoterakhir;
    end
    else
    begin
      showmessage('Tanggal Masuk Diisi Dulu !!!');
    end;
  end;}
end;

procedure TfmPegawai.btnSimpanClick(Sender: TObject);
begin
  inherited;
  if qryEmployee.State in [dsinsert,dsedit] then
  begin
    qryEmployee.Post;
  end;
end;

procedure TfmPegawai.btnStartRegisterClick(Sender: TObject);
begin
  inherited;

  if dmgeneral.qryPegawai.FieldByName('pegawaiid').isnull then
  begin
    ShowMessage('Pegawai Disimpan Dulu !');
    Exit;
  end;

  if not (dsDefault.DataSet.IsEmpty) then
     TfmEnrollmentFingerPrint.ExecuteForm(qryFingerPrint, dsDefault.DataSet.FieldByName('PegawaiId').AsString);

end;

procedure TfmPegawai.cgvExplorerStylesGetContentStyle(
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

procedure TfmPegawai.dpOrganisasiShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(qryDataOrganisasi, False, True);

end;

procedure TfmPegawai.dpReferensiShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(qryDataReferensi, False, True);

end;

procedure TfmPegawai.dpKeahlianShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(dmGeneral.qryKeahlian, False, True);
  OpenIfClose(qryDataKeahlian, False, True);

end;

procedure TfmPegawai.dpRelasiShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(qryDataRelasi, False, True);
  OpenIfClose(dmgeneral.qryPrevPegawai, False, True);
end;

procedure TfmPegawai.dpUsernameShow(Sender: TObject);
begin
  inherited;

  OpenIfClose(dmGlobal.qryPosition);
  OpenIfClose(qryEmployee, False, True);
  if not qryEmployee.IsEmpty then
  begin
    with IvEncryption1 do
    begin
      RC4Init(StringToStringByte(PROGRAM_PASSWORD));
      FOldPassword := StringByteToString(RC4Crypt(qryEmployee.FieldbyName('Password').AsString));
      RC4Reset;
    end;
  end;
end;

procedure TfmPegawai.dpPengalamanKerjaShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(qryDataPengalamanKerja, False, True);

end;

procedure TfmPegawai.dpGeneralShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(dmGeneral.qryGroupShiftHd, False, True);
  OpenIfClose(dmGeneral.qryGroupShiftDt1, False, True);
  OpenIfClose(dmGeneral.qryPerusahaan, False, True);
  OpenIfClose(dmGeneral.qryJabatan, False, True);
  OpenIfClose(dmGeneral.qryDivisi, False, True);
  OpenIfClose(dmGeneral.qryDepartemen, False, True);
  OpenIfClose(dmGeneral.qryOutSourcing, False, True);
  OpenIfClose(dmGeneral.qryStatusKaryawan, False, True);

end;

procedure TfmPegawai.dpPendidikanShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(dmGeneral.qryPendidikan, False, True);
  OpenIfClose(qryDataPendidikan, False, True);

end;

procedure TfmPegawai.dpAssetShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(dmGeneral.qryAssets, False, True);
  OpenIfClose(dmGeneral.qrySubAssets, False, True);
  OpenIfClose(qryDataAsset, False, True);
end;

procedure TfmPegawai.dpKeluargaShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(qryDatafamily, False, True);
end;

procedure TfmPegawai.dpBahasaShow(Sender: TObject);
begin
  inherited;
  OpenIfClose(dmGeneral.qryBahasa, False, True);
  OpenIfClose(qryDataBahasa, False, True);
end;

procedure TfmPegawai.dbeFotoDblClick(Sender: TObject);
begin
  inherited;
  dbeFoto.LoadFromFile;
end;

procedure TfmPegawai.dbePrefixCodePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if qryEmployee.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    SetReadOnly(dblcPositionId, True, COLOR_INACTIVE);
  end
  else
  begin
    SetReadOnly(dblcPositionId, False, COLOR_ACTIVE);
  end;
end;

procedure TfmPegawai.dblcCompanyIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if qryEmployee.State in [dsEdit, dsInsert] then
  begin
    qryEmployee.FieldByName('DepartmentId').AsVariant := null;
    qryEmployee.FieldByName('PositionId').AsVariant := null;
  end;
end;

procedure TfmPegawai.dblcDepartmentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if qryEmployee.State in [dsEdit, dsInsert] then
    qryEmployee.FieldByName('PositionId').AsVariant := null;
end;

procedure TfmPegawai.dblckodedivisiPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.qryPegawai.FieldByName('KodeDepartemen').AsVariant := null;
  end;
end;

procedure TfmPegawai.dblcProvincePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
    dmGeneral.qryPegawai.FieldByName('CityId').AsVariant := Null;
end;

procedure TfmPegawai.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'tglkeluar') = 0) then
  begin
    if dmgeneral.qryPegawai.FieldByName('tglkeluar').IsNull  then
       dmgeneral.qryPegawai.FieldByName('flagkeluar').asstring:='0'
    else
    begin
      dmgeneral.qryPegawai.FieldByName('flagkeluar').asstring:='1';
      dmgeneral.qryCariAbsen.Close;
      dmgeneral.qryCariAbsen.Parameters[0].Value:=dmgeneral.qryPegawai.FieldByName('pegawaiid').AsInteger;
      dmgeneral.qryCariAbsen.Parameters[1].Value:=dmgeneral.qryPegawai.FieldByName('tglkeluar').AsDateTime;
      dmgeneral.qryCariAbsen.Open;
      if not(dmgeneral.qryCariAbsen.eof) then
      begin
        if MessageDlg(ASK_DELETE_ABSEN, mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          qryDeleteAbsen.Parameters[0].Value:=dmgeneral.qryPegawai.FieldByName('pegawaiid').asInteger;
          qryDeleteAbsen.Parameters[1].Value:=dmgeneral.qryPegawai.FieldByName('tglkeluar').asdatetime;
          qryDeleteAbsen.ExecSQL;
        end
        else
          dmgeneral.qryPegawai.Cancel;
      end;
    end;
  end;
  if (CompareText(Field.FieldName, 'nopeg') = 0) then
  begin
    if dmgeneral.qryPegawai.FieldByName('barcode').IsNull  then
       dmgeneral.qryPegawai.FieldByName('barcode').asstring:=dmgeneral.qryPegawai.FieldByName('nopeg').asstring
  end;
end;

procedure TfmPegawai.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if Self.Visible then
  begin
    if dsDefault.State in [dsBrowse] then
  begin
 //   SetReadOnly(dbcbSchedule, True, COLOR_INACTIVE);
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
//    SetReadOnly(dbcbSchedule, False);
    SetReadOnly(dblckodeperusahaan, False);
    SetReadOnly(dblckodedivisi, False);
    SetReadOnly(dblckodedepartemen, False);
    SetReadOnly(dblckodeoutsourcing, False);
    SetReadOnly(dblcJabatan, False);
    SetReadOnly(dblcStatusKaryawan, False);
  end;
  end;
end;

function TfmPegawai.GetLog(DataSet: TDataSet; var Action: string): string;
var i:integer;
  lama,baru,hasil:string;
begin
  if DataSet.State in [dsInsert] then
  begin
    action:='1';
    hasil:='Insert ';
    for i := 0 to DataSet.FieldCount - 1 do begin
      hasil:=hasil+'Kolom "'+DataSet.Fields[i].FieldName+'" ='
            +VarToStr(DataSet.Fields[i].Value)+';  ';
    end;
  end;
  if DataSet.State in [dsEdit] then
  begin
    action:='2';
    hasil:='Update ';
    for i := 0 to DataSet.FieldCount - 1 do
    begin
       lama:=VarToStr(DataSet.Fields[i].OldValue);
       baru:=VarToStr(DataSet.Fields[i].NewValue);
       if lama<>baru then
         hasil:=hasil+'Kolom "'+vartoStr(DataSet.Fields[i].FieldName)+'"='+
                vartoStr(DataSet.Fields[i].OldValue)+' diubah '+vartoStr(DataSet.Fields[i].NewValue)+';';
    end;
  end;

  GetLog:=hasil;
end;

function TfmPegawai.GetLogDel(DataSet: TDataSet; var Action: string): string;
var i:integer;
  lama,baru,hasil:string;
begin
  hasil:='Delete ';
  action:='3';
  for i := 0 to DataSet.FieldCount - 1 do begin

    hasil:=hasil+'Kolom "'+DataSet.Fields[i].FieldName+'" ='
          +VarToStr(DataSet.Fields[i].Value)+';  ';
  end;
  GetLogDel:=hasil;
end;

//procedure TfmPegawai.GetFPData(AConnection: TZConnection;
//  AFingerId: string; AFingerIndex: Integer; var AFPData: OleVariant);
//var
//  ZQuery: TZQuery;
//  pData: PChar;
//begin
//  ZQuery := TZQuery.Create(Application);
//  try
//    ZQuery.Connection := AConnection;
//    ZQuery.SQL.Add('select * from FingerPrint_t');
//    ZQuery.SQL.Add('where id = :id');
//    ZQuery.SQL.Add('and finger = :finger');
//    ZQuery.Parameters[0].Value := AFingerId;
//    ZQuery.Parameters[1].Value := AFingerIndex;
//    ZQuery.Open;
//    if not ZQuery.IsEmpty then
//    begin
//      //read-out data
//      with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmRead) do
//      begin
//        AFPData := VarArrayCreate([0, Size + 1], varByte);
//        pData := VarArrayLock(AFPData);
//        try
//          Read(pData^, Size);
//        finally
//          VarArrayUnlock(AFPData);
//        end;
//        Free;
//      end;
//    end;
//    ZQuery.Close;
//  finally
//    ZQuery.Free;
//  end;
//end;

procedure TfmPegawai.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPegawai, False, True);
  OpenIfClose(qryDisplayMutasi, False, True);

  OpenIfClose(dmGeneral.qryPerusahaan, False, True);
  OpenIfClose(dmGeneral.qryDivisi, False, True);
  OpenIfClose(dmGeneral.qryDepartemen, False, True);
  OpenIfClose(qryDisplayMutasi, False, True);
  OpenIfClose(dmGlobal.qryCity, False, True);
  OpenIfClose(qryPegawaiFoto, False, True);
  OpenIfClose(dmGeneral.qryPegawaiApproval, False, True);
  OpenIfClose(qryFingerPrint, False, True);
  OpenIfClose(dmGeneral.qryLog, False, True);
  SetReadOnly(cgvExplorer);
  SetReadOnly(cgvMutasi);

  dmgeneral.dsPegawaiApproval.AutoEdit:=true;
  dpDetail.ActivePage:=dpGeneral;

end;

procedure TfmPegawai.InsertLog(const TableName, Hasil, Action: string);
begin
  OpenIfClose(dmGeneral.qryLog);
  dmGeneral.dsLog.DataSet.Insert;
  dmGeneral.dsLog.DataSet.Fields[0].AsString :=dmGlobal.SettingGlobal.LoginEmployeeId;
  dmGeneral.dsLog.DataSet.FieldByName('TransactionDate').AsDateTime :=dmGlobal.SettingGlobal.ServerDateTime;
  dmGeneral.dsLog.DataSet.FieldByName('Action').AsString := Action;
  dmGeneral.dsLog.DataSet.FieldByName('TableName').AsString :=TableName ;
  dmGeneral.dsLog.DataSet.FieldByName('Description').AsString := Hasil;
  dmGeneral.dsLog.DataSet.Post;
end;

procedure TfmPegawai.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=GetLogDel(DataSet,Action);
end;

procedure TfmPegawai.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=GetLog(DataSet,Action);
end;

procedure TfmPegawai.qryCekPegawaiAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('Pegawai',hasil,action);
end;

procedure TfmPegawai.qryDataAssetAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataAsset',hasil,action);
end;

procedure TfmPegawai.qryDataBahasaAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataBahasa',hasil,action);
end;

procedure TfmPegawai.qryDatafamilyAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataFamily',hasil,action);
end;

procedure TfmPegawai.qryDataKeahlianAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataKeahlian',hasil,action);
end;

procedure TfmPegawai.qryDataOrganisasiAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataOrganisasi',hasil,action);
end;

procedure TfmPegawai.qryDataPendidikanAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataPendidikan',hasil,action);
end;

procedure TfmPegawai.qryDataPengalamanKerjaAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataPengalamanKerja',hasil,action);
end;

procedure TfmPegawai.qryDataReferensiAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataReferensi',hasil,action);
end;

procedure TfmPegawai.qryDataRelasiAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('DataRelasi',hasil,action);
end;

procedure TfmPegawai.qryDeleteAbsenAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('Absen',hasil,action);
end;

procedure TfmPegawai.qryEmployeeAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('Employee',hasil,action);
end;

procedure TfmPegawai.qryEmployeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('employeeid').AsString:=dmgeneral.qryPegawai.FieldByName('pegawaiid').asstring;
  DataSet.FieldByName('employeename').AsString:=dmgeneral.qryPegawai.FieldByName('nama').asstring;
  DataSet.FieldByName('flaginactive').AsString:='0';
  DataSet.FieldByName('flaginactiveuser').AsString:='0';
  DataSet.FieldByName('flagfix').AsString:='0';
  DataSet.FieldByName('flagsalesman').AsString:='0';
end;

procedure TfmPegawai.qryFingerPrintAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('Fingerprint',hasil,action);
end;

procedure TfmPegawai.qryPegawaiFotoAfter(DataSet: TDataSet);
begin
  inherited;
  InsertLog('PegawaiFoto',hasil,action);
end;

procedure TfmPegawai.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryPegawai, True);
  LockRefresh(dmGeneral.qryPegawaiApproval, True);
  LockRefresh(dmGeneral.qryLog, True);
end;

//procedure TfmPegawai.SaveFPData(AConnection: TZConnection;
//  AFingerId: string; AFingerIndex: Integer; AFPData: OleVariant);
//var
//  ZQuery: TZQuery;
//  pData: PChar;
//begin
//  ZQuery := TZQuery.Create(Application);
//  try
//    ZQuery.Connection := AConnection;
//    ZQuery.SQL.Add('select * from FingerPrint_t');
//    ZQuery.SQL.Add('where pegawaiid = :pegawaiid');
//    ZQuery.SQL.Add('and finger = :finger');
//    ZQuery.Parameters[0].Value := AFingerId;
//    ZQuery.Parameters[1].Value := AFingerIndex;
//    ZQuery.Open;
//    if ZQuery.IsEmpty then
//    begin
//      ZQuery.Insert;
//      ZQuery.FieldByName('PegawaiId').AsString := AFingerId;
//      ZQuery.FieldByName('Finger').AsInteger := AFingerIndex;
//    end
//    else
//      ZQuery.Edit;
//    // FP data
//    with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmWrite) do
//    begin
//      pData := VarArrayLock(AFPData);
//      try
//        Write(pData^, VarArrayHighBound(AFPData, 1) - VarArrayLowBound(AFPData, 1) + 1);
//      finally
//        VarArrayUnlock(AFPData);
//      end;
//      Free;
//    end;
//    ZQuery.Post;
//    ZQuery.Close;
//  finally
//    ZQuery.Free;
//  end;
//end;

//function TfmPegawai.VerFPData(AConnection: TZConnection;
//  var AFingerId: string; var AFingerIndex: Integer;
//  AFPData: OleVariant): boolean;
//var
//  ZQuery: TZQuery;
//  pData: PChar;
//  CurrentAFPData: OleVariant;
//  RegChanged: wordBool;
//begin
//  Result := False;
//  ZQuery := TZQuery.Create(Application);
//  try
//    ZQuery.Connection := AConnection;
//    ZQuery.SQL.Add('select * from FingerPrint_t');
//    ZQuery.Open;
//    while not ZQuery.Eof do
//    begin
//      //read-out data
//      with ZQuery.CreateBlobStream(ZQuery.FieldByName('FingerData'), bmRead) do
//      begin
//        CurrentAFPData := VarArrayCreate([0, Size + 1], varByte);
//        pData := VarArrayLock(CurrentAFPData);
//        try
//          Read(pData^, Size);
//          // Compare
//          Result := ZKFPEngX1.VerFinger(CurrentAFPData, AFPData, False, RegChanged);
//          if Result then
//          begin
//            AFingerId := ZQuery.FieldByName('PegawaiId').AsString;
//            AFingerIndex := ZQuery.FieldByName('Finger').AsInteger;
//            Exit;
//          end;
//        finally
//          VarArrayUnlock(CurrentAFPData);
//        end;
//        Free;
//      end;
//
//      ZQuery.Next;
//    end;
//  finally
//    ZQuery.Free;
//  end;
//end;

//procedure TfmPegawai.ZKFPEngX1Capture(ASender: TObject;
//  ActionResult: WordBool; ATemplate: OleVariant);
//var
//  fi, i: integer;
//  Score, ProcessNum: integer;
//  RegChanged: wordBool;
//  sTemp: string;
//
//  FingerId: string;
//  FingerIndex: integer;
//  Success: boolean;
//  namajari :string;
//begin
//  sTemp := ZKFPEngX1.GetTemplateAsString;
//
//  StatusBar1.Panels.Items[0].Text := 'Acqired Template';
//  Success := VerFPData(dmglobal.zconGlobal, FingerId, FingerIndex, ATemplate);
//
//  if Success then
//  begin
//    case FingerIndex of
//    0:namajari:='Ibu Jari Kanan';
//    1:namajari:='Jari Telunjuk Kanan';
//    2:namajari:='Jari Tengah Kanan';
//    3:namajari:='Jari Manis Kanan';
//    4:namajari:='Jari Kelingking Kanan';
//    5:namajari:='Ibu Jari Kiri';
//    6:namajari:='Jari Telunjuk Kiri';
//    7:namajari:='Jari Tengah Kiri';
//    8:namajari:='Jari Manis Kiri';
//    9:namajari:='Jari Kelingking Kiri';
//    end;
//
//    if FingerId<>dmgeneral.qryPegawai.FieldByName('pegawaiid').asstring then
//    begin
//      qryCekPegawai.close;
//      qryCekPegawai.Parameters[0].Value:=FingerId;
//      qryCekPegawai.Open;
//      ShowMessage('Verifikasi Pegawai Ini Gagal Tetapi Sukses Untuk Pegawai '+qryCekPegawai.FieldByName('nama').asstring+ ', '+namajari);
//    end
//    else
//    begin
//      ShowMessage('Verifikasi Pegawai Sukses Untuk Pegawai '+dmgeneral.qryPegawai.FieldByName('nama').asstring+ ', '+namajari);
//    end;
//  end
//  else
//    ShowMessage('Verifikasi Gagal');
//end;

//procedure TfmPegawai.ZKFPEngX1Enroll(ASender: TObject;
//  ActionResult: WordBool; ATemplate: OleVariant);
//var
//  FingerId: string;
//  FingerIndex: integer;
//begin
//  if not ActionResult then
//  begin
//    ShowMessage('Registrasi Sidik Jari Gagal !');
//    StatusBar1.Panels.Items[0].Text := '';
//  end
//  else
//  begin
//    //save to database directly
//    if VerFPData(dmglobal.zconglobal, FingerId, FingerIndex, ZKFPEngX1.GetTemplate) then
//    begin
//       showmessage('Jari Sudah Teregistrasi Sebelumnya, Registrasi Gagal !!!');
//    end
//    else
//    begin
//      SaveFPData(dmglobal.zconglobal, dmgeneral.qrypegawai.FieldByName('pegawaiid').asstring, cbFingerIndex.ItemIndex, ZKFPEngX1.GetTemplate);
//      ShowMessage('FingerPrint registation succeeded !');
//      StatusBar1.Panels.Items[0].Text := '';
//    end;
//  end;
//end;

//procedure TfmPegawai.ZKFPEngX1FeatureInfo(ASender: TObject;
//  AQuality: Integer);
//var
//  sTemp: string;
//begin
//  sTemp := '';
//  if ZKFPEngX1.IsRegister then
//    sTemp := 'Status Register : Tekan Jari sampai ' + inttostr(ZKFPEngX1.EnrollIndex) + ' kali ';
//
//  sTemp := sTemp + ' Kualitas Sidik Jari ';
//
//  if AQuality <> 0 then
//    sTemp := sTemp + ' Jelek ' + inttostr(AQuality)
//  else
//    sTemp := sTemp + ' Bagus';
//
//  StatusBar1.Panels.Items[0].Text := sTemp;
//end;

//procedure TfmPegawai.ZKFPEngX1ImageReceived(ASender: TObject;
//  var AImageValid: WordBool);
//begin
//  ZKFPEngX1.PrintImageAt(GetWindowDC(Panel2.Handle), 0, 0, 113, 137);
//end;

end.

