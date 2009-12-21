unit frmPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,  dxDockControl, dxDockPanel, cxGraphics,
  cxStyles, cxDropDownEdit, cxCalendar, cxDBEdit, cxSpinEdit, cxClasses,
  cxGridLevel, cxGrid, StdCtrls, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxImage, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCheckBox, Menus, cxLookAndFeelPainters, cxButtons, DBActns, ActnList,
  untIvPositionDevExpress, untIvPositionStandard, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxImageComboBox, cxLabel, cxDBLabel,
  ExtCtrls, cxMemo, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,ZConnection,ZKFPEngXControl_TLB,
  ComCtrls, OleCtrls,ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfmPegawai = class(TForm)
    dxDockSite1: TdxDockSite;
    dpMaster: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dpGeneral: TdxDockPanel;
    dpexplorer: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxVertContainerDockSite1: TdxVertContainerDockSite;
    dpJamsostek: TdxDockPanel;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    dbeAlamat: TcxDBTextEdit;
    dbeBarcode: TcxDBTextEdit;
    dbeFoto: TcxDBImage;
    dbeName: TcxDBTextEdit;
    dbeNoPeg: TcxDBTextEdit;
    dblcCity: TcxDBExtLookupComboBox;
    dblcCountry: TcxDBExtLookupComboBox;
    dblcProvince: TcxDBExtLookupComboBox;
    lblAlamat: TLabel;
    lblBarcode: TLabel;
    lblCity: TLabel;
    lblCountry: TLabel;
    lblNama: TLabel;
    lblNIK: TLabel;
    lblProvince: TLabel;
    cgMasterSetup: TcxGrid;
    cgMasterSetupLevel1: TcxGridLevel;
    dbeTempatLahir: TcxDBTextEdit;
    dbeTglLahir: TcxDBDateEdit;
    dbeTglMasuk: TcxDBDateEdit;
    dblckodeoutsourcing: TcxDBExtLookupComboBox;
    lblJenisKelamin: TLabel;
    lblKodeOutsourcing: TLabel;
    lblStatus: TLabel;
    lblStatusKaryawan: TLabel;
    lblTempatLahir: TLabel;
    lblTglLahir: TLabel;
    lblTglMasuk: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    dbeNoAstek: TcxDBTextEdit;
    dbeTglAstek: TcxDBDateEdit;
    lblAstek: TLabel;
    lblNoAstek: TLabel;
    lblTglAstek: TLabel;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    actCapture: TAction;
    btnCancel: TcxButton;
    btnCapture: TcxButton;
    cxButton1: TcxButton;
    dpAsset: TdxDockPanel;
    dpBahasa: TdxDockPanel;
    dpKeluarga: TdxDockPanel;
    dpKeahlian: TdxDockPanel;
    dpRelasi: TdxDockPanel;
    dpReferensi: TdxDockPanel;
    dpPengalamanKerja: TdxDockPanel;
    dpPendidikan: TdxDockPanel;
    dpOrganisasi: TdxDockPanel;
    cgDataPendidikanLevel1: TcxGridLevel;
    cgDataPendidikan: TcxGrid;
    cgvDataPendidikan: TcxGridDBTableView;
    cgvDataPendidikanpegawaiid: TcxGridDBColumn;
    cgvDataPendidikankodependidikan: TcxGridDBColumn;
    cgvDataPendidikangraduate: TcxGridDBColumn;
    cgvDataPendidikangpa: TcxGridDBColumn;
    cgvDataPendidikanremarks: TcxGridDBColumn;
    cgvDataPendidikanjenjang: TcxGridDBColumn;
    cgvDataPendidikantahunmulai: TcxGridDBColumn;
    cgDataKeluarga: TcxGrid;
    cgvDataKeluarga: TcxGridDBTableView;
    cgDataKeluargaxGridLevel1: TcxGridLevel;
    cgvDataKeluargapegawaiid: TcxGridDBColumn;
    cgvDataKeluarganamafamily: TcxGridDBColumn;
    cgvDataKeluargaalamat: TcxGridDBColumn;
    cgvDataKeluargaalamat1: TcxGridDBColumn;
    cgvDataKeluargatgllahir: TcxGridDBColumn;
    cgvDataKeluargatmplahir: TcxGridDBColumn;
    cgvDataKeluargasex: TcxGridDBColumn;
    cgvDataKeluargabloodtype: TcxGridDBColumn;
    cgvDataKeluargapekerjaan: TcxGridDBColumn;
    cgvDataKeluargaflagstatuskeluarga: TcxGridDBColumn;
    cgvDataKeluargaflagstatustanggungan: TcxGridDBColumn;
    cgvDataKeluargaflagpassaway: TcxGridDBColumn;
    cgDataAsset: TcxGrid;
    cgvDataAsset: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cgvDataAssetpegawaiid: TcxGridDBColumn;
    cgvDataAssetkodesubassets: TcxGridDBColumn;
    cgDataBahasa: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    cgvDataBahasa: TcxGridDBTableView;
    cgvDataBahasapegawaiid: TcxGridDBColumn;
    cgvDataBahasakodebahasa: TcxGridDBColumn;
    cgvDataBahasaflagoral: TcxGridDBColumn;
    cgvDataBahasafwritten: TcxGridDBColumn;
    cgDataOrganisasi: TcxGrid;
    cgvDataOrganisasi: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cgvDataOrganisasipegawaiid: TcxGridDBColumn;
    cgvDataOrganisasiorganisasi: TcxGridDBColumn;
    cgvDataOrganisasijabatan: TcxGridDBColumn;
    cgDataKeahlian: TcxGrid;
    cgvDataKeahlian: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cgvDataKeahlianpegawaiid: TcxGridDBColumn;
    cgvDataKeahliankodekeahlian: TcxGridDBColumn;
    cgDataRelasi: TcxGrid;
    cgvDataRelasi: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cgvDataRelasipegawaiid: TcxGridDBColumn;
    cgvDataRelasinamarelasi: TcxGridDBColumn;
    cgvDataRelasipeg_nopeg: TcxGridDBColumn;
    cgvDataRelasihubungan: TcxGridDBColumn;
    cgvDataRelasikodedepartemen: TcxGridDBColumn;
    cgDataReferensi: TcxGrid;
    cgvDataReferensi: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cgvDataReferensipegawaiid: TcxGridDBColumn;
    cgvDataReferensinamareferensi: TcxGridDBColumn;
    cgvDataReferensialamat: TcxGridDBColumn;
    cgvDataReferensipekerjaan: TcxGridDBColumn;
    cgDataPengalamanKerja: TcxGrid;
    cgvDataPengalamanKerja: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cgvDataPengalamanKerjapegawaiid: TcxGridDBColumn;
    cgvDataPengalamanKerjanamacompany: TcxGridDBColumn;
    cgvDataPengalamanKerjalastposition: TcxGridDBColumn;
    cgvDataPengalamanKerjadatefrom: TcxGridDBColumn;
    cgvDataPengalamanKerjadateto: TcxGridDBColumn;
    cgvDataPengalamanKerjalama: TcxGridDBColumn;
    cgvDataPengalamanKerjaremarks: TcxGridDBColumn;
    cgvExplorer: TcxGridDBTableView;
    dpOther: TdxDockPanel;
    lblAgama: TLabel;
    lblGolonganDarah: TLabel;
    dbcbGolonganDarah: TcxDBComboBox;
    dbeNoKTP: TcxDBTextEdit;
    lblNoKTP: TLabel;
    lblPerusahaan: TLabel;
    dblckodeperusahaan: TcxDBExtLookupComboBox;
    dblckodedivisi: TcxDBExtLookupComboBox;
    lblDivisi: TLabel;
    lblDepartemen: TLabel;
    dblckodedepartemen: TcxDBExtLookupComboBox;
    cgvDataPendidikanJurusan: TcxGridDBColumn;
    cgvDataAssetNamaAssets: TcxGridDBColumn;
    cgvDataBahasaNamaBahasa: TcxGridDBColumn;
    cgvDataKeahlianNamaKeahlian: TcxGridDBColumn;
    cgvDataRelasiNamaPegawai: TcxGridDBColumn;
    cgvDataRelasiNamaDepartemen: TcxGridDBColumn;
    dbcbStatus: TcxDBImageComboBox;
    dblcStatusKaryawan: TcxDBExtLookupComboBox;
    dbcbJenisKelamin: TcxDBImageComboBox;
    dbcbAgama: TcxDBImageComboBox;
    Label1: TLabel;
    dbeTglKeluar: TcxDBDateEdit;
    lblFlagSchedule: TLabel;
    Label2: TLabel;
    dblcKodeGroupShift: TcxDBExtLookupComboBox;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    feSetupButton1: TfeSetupButton;
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
    dblcJabatan: TcxDBExtLookupComboBox;
    Label6: TLabel;
    dxDockPanel1: TdxDockPanel;
    lblFlagApprove: TLabel;
    dbckFlagApprove: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label5: TLabel;
    dbckFlagKonfirmasi: TcxDBCheckBox;
    Label3: TLabel;
    dbcbSchedule: TcxDBImageComboBox;
    Label7: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    Label8: TLabel;
    dbcbSPL: TcxDBImageComboBox;
    dblcShift: TcxDBExtLookupComboBox;
    cgvExplorerflagproses: TcxGridDBColumn;
    cgvExplorerkodestatus: TcxGridDBColumn;
    cgvExplorerkodegroupshiftid: TcxGridDBColumn;
    cgvExplorerstatusspl: TcxGridDBColumn;
    cgvExplorerflagapprovepulangawal: TcxGridDBColumn;
    cgvExplorerpegawaiid: TcxGridDBColumn;
    dsPegawai: TDataSource;
    Label9: TLabel;
    dbeUrutReport: TcxDBTextEdit;
    btnGetId: TcxButton;
    dpRegistrasi: TdxDockPanel;
    ZKFPEngX1: TZKFPEngX;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label10: TLabel;
    btnStartRegister: TButton;
    Button1: TButton;
    cbFingerIndex: TcxImageComboBox;
    procedure Button1Click(Sender: TObject);
    procedure btnStartRegisterClick(Sender: TObject);
    procedure ZKFPEngX1ImageReceived(ASender: TObject;
      var AImageValid: WordBool);
    procedure ZKFPEngX1FeatureInfo(ASender: TObject; AQuality: Integer);
    procedure ZKFPEngX1Enroll(ASender: TObject; ActionResult: WordBool;
      ATemplate: OleVariant);
    procedure ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
      ATemplate: OleVariant);
    procedure dpRegistrasiActivate(Sender: TdxCustomDockControl;
      Active: Boolean);
    procedure btnGetIdClick(Sender: TObject);
    procedure dsPegawaiDataChange(Sender: TObject; Field: TField);
    procedure dsPegawaiStateChange(Sender: TObject);
    procedure dbcbSchedulePropertiesEditValueChanged(Sender: TObject);
    procedure feSetupButton1ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cgvExplorerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dblcCityPropertiesInitPopup(Sender: TObject);
    procedure dblcCityPropertiesCloseUp(Sender: TObject);
    procedure dblcProvincePropertiesInitPopup(Sender: TObject);
    procedure dblcProvincePropertiesCloseUp(Sender: TObject);
    procedure dblcProvincePropertiesEditValueChanged(Sender: TObject);
    procedure dblcCountryPropertiesEditValueChanged(Sender: TObject);
    procedure actCaptureExecute(Sender: TObject);
    procedure dblckodedepartemenPropertiesCloseUp(Sender: TObject);
    procedure dblckodedepartemenPropertiesInitPopup(Sender: TObject);
    procedure dblckodedivisiPropertiesEditValueChanged(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure feSetupButton1DataSetRefresh1Execute(Sender: TObject);    
  private
    { Private declarations }
    fpcHandle: integer;
    FMatchType: integer;
    FRegTemplate: OleVariant;
    FFingerNames: TStringList;
    FFingerCount: integer;
    sFRegTemplate: string;
    procedure DeinitForm;
    procedure InitForm;
    procedure RefreshAll;
    function VerFPData(AConnection: TZConnection; var AFingerId: string; var AFingerIndex: Integer; AFPData: OleVariant): boolean;
    procedure SaveFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; AFPData: OleVariant);
    procedure GetFPData(AConnection: TZConnection; AFingerId: string; AFingerIndex: Integer; var AFPData: OleVariant);
  public
    class procedure ExecuteForm;    
  end;

var
 fmPegawai:TfmPegawai;

implementation

uses untProcedure, untConstanta, dtmglobal,dtmgeneral,dtmshare, frmCaptureFoto;
{$R *.dfm}

procedure TfmPegawai.GetFPData(AConnection: TZConnection; AFingerId: string;
  AFingerIndex: Integer; var AFPData: OleVariant);
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

procedure TfmPegawai.SaveFPData(AConnection: TZConnection; AFingerId: string;
  AFingerIndex: Integer; AFPData: OleVariant);
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


procedure TfmPegawai.InitForm;
begin

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
  dmGlobal.InitComponent(Self);

end;

procedure TfmPegawai.actCaptureExecute(Sender: TObject);
begin
  TfmCaptureFoto.ExecuteForm;
end;

procedure TfmPegawai.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = feSetupButton1.DataSetInsert1)
  or (Action = feSetupButton1.DataSetEdit1) then
  begin
    dbeNoPeg.SetFocus;
  end;
  feSetupButton1.ActionList1Execute(Action, Handled);
end;

procedure TfmPegawai.btnGetIdClick(Sender: TObject);
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

procedure TfmPegawai.btnRefreshClick(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmPegawai.btnStartRegisterClick(Sender: TObject);
begin
  if dmgeneral.qryPegawai.FieldByName('pegawaiid').isnull then
  begin
    ShowMessage('Pegawai Disimpan Dulu !');
    Exit;
  end;

  ZKFPEngX1.BeginEnroll;
  StatusBar1.Panels.Items[0].Text := 'Start Registration';
end;

procedure TfmPegawai.Button1Click(Sender: TObject);
begin
  if ZKFPEngX1.IsRegister then
    ZKFPEngX1.CancelEnroll;

  StatusBar1.Panels.Items[0].Text := 'Start Identification(1:N)';
  FMatchType := 2;
end;

procedure TfmPegawai.cgvExplorerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('flagkeluar').Index] = '1' then
        AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmPegawai.dbcbSchedulePropertiesEditValueChanged(Sender: TObject);
begin
  if dbcbSchedule.EditValue=0 then
     dblcShift.Enabled:=true
  else
     dblcShift.Enabled:=false;
end;

procedure TfmPegawai.dblcCityPropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevCityCountry.Close;
    dmGeneral.qryPrevCityCountry.Params[0].Value := '%';
    dmGeneral.qryPrevCityCountry.Params[1].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevCityCountry, False, False);
  end;
end;

procedure TfmPegawai.dblcCityPropertiesInitPopup(Sender: TObject);
begin
  with dmGeneral do
  begin
    qryPrevCityCountry.Close;
    qryPrevCityCountry.Params[0].Value := dblcCountry.EditValue;
    qryPrevCityCountry.Params[1].Value := dblcProvince.EditValue;
    OpenIfClose(Application, qryPrevCityCountry, False, False);
  end;
end;

procedure TfmPegawai.dblcCountryPropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.qryPegawai.FieldByName('ProvinceId').AsVariant := Null;
    dmGeneral.qryPegawai.FieldByName('CityId').AsVariant := Null;
  end;
end;

procedure TfmPegawai.dblckodedepartemenPropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevDepartemenDivisi.Close;
    dmGeneral.qryPrevDepartemenDivisi.Params[0].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevDepartemenDivisi, False, False);
  end;
end;

procedure TfmPegawai.dblckodedepartemenPropertiesInitPopup(Sender: TObject);
begin
  dmGeneral.qryPrevDepartemenDivisi.Close;
  dmGeneral.qryPrevDepartemenDivisi.Params[0].Value :=
    dmGeneral.qryPegawai.FieldByName('kodedivisi').AsVariant;
  OpenIfClose(Application, dmGeneral.qryPrevDepartemenDivisi, False, False);
end;

procedure TfmPegawai.dblckodedivisiPropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.qryPegawai.FieldByName('KodeDepartemen').AsVariant := null;
  end;
end;

procedure TfmPegawai.dblcProvincePropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsBrowse] then
  begin
    dmGeneral.qryPrevProvinceCountry.Close;
    dmGeneral.qryPrevProvinceCountry.Params[0].Value := '%';
    OpenIfClose(Application, dmGeneral.qryPrevProvinceCountry, False, False);
  end;
end;

procedure TfmPegawai.dblcProvincePropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.qryPegawai.State in [dsEdit, dsInsert] then
    dmGeneral.qryPegawai.FieldByName('CityId').AsVariant := Null;
end;

procedure TfmPegawai.dblcProvincePropertiesInitPopup(Sender: TObject);
begin
  with dmGeneral do
  begin
    qryPrevProvinceCountry.Close;
    qryPrevProvinceCountry.Params[0].Value := dblcCountry.EditValue;
    OpenIfClose(Application, qryPrevProvinceCountry, False, False);
  end;
end;

procedure TfmPegawai.DeinitForm;
begin
  // Refresh link preview
//  LockRefreshIfOpen(Application, dmGeneral.qryPre, False);
end;

procedure TfmPegawai.dsPegawaiDataChange(Sender: TObject; Field: TField);
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

procedure TfmPegawai.dsPegawaiStateChange(Sender: TObject);
begin
  inherited;
  if dsPegawai.State in [dsBrowse] then
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
  if dsPegawai.State in [dsInsert] then
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

procedure TfmPegawai.dpRegistrasiActivate(Sender: TdxCustomDockControl;
  Active: Boolean);
begin
  if ZKFPEngX1.InitEngine = 0 then
  begin
    StatusBar1.Panels.Items[0].Text := 'Inisialisasi Berhasil !';
  end
  else if ZKFPEngX1.InitEngine = 1 then
    ShowMessage('Load driver Gagal !')
  else if ZKFPEngX1.InitEngine = 2 then
    ShowMessage('Sensor Finger Belum Terkoneksi !')
  else if ZKFPEngX1.InitEngine = 3 then
    ShowMessage('Finger Print tidak Cocok !')
  else
    ShowMessage('Inisialisasi Gagal !')
end;

class procedure TfmPegawai.ExecuteForm;
begin
  with fmPegawai do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmPegawai);
      InitForm;
    end
    else
    begin
      WindowState := wsNormal;
      BringToFront;
    end;
  end;
end;

procedure TfmPegawai.feSetupButton1ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  feSetupButton1.ActionList1Execute(Action, Handled);
end;

procedure TfmPegawai.feSetupButton1DataSetRefresh1Execute(Sender: TObject);
begin
  LockRefresh(Application, dmGeneral.qryPegawai, 'nopeg', False);
end;

procedure TfmPegawai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmPegawai.RefreshAll;
begin

  LockRefresh(Application, dmGeneral.qryPerusahaan, '', False);
  LockRefresh(Application, dmGeneral.qryDivisi, '', False);
  LockRefresh(Application, dmGeneral.qryPrevDepartemen, '', False);
  LockRefresh(Application, dmGeneral.qryPrevCountry, '', False);
  LockRefresh(Application, dmGeneral.qryPrevProvince, '', False);
  LockRefresh(Application, dmGeneral.qryPrevCity, '', False);

  dmGeneral.qryPrevDepartemenDivisi.Close;
  dmGeneral.qryPrevDepartemenDivisi.Params[0].Value := '%';
  LockRefresh(Application, dmGeneral.qryPrevDepartemenDivisi, '', False);

  // master detail pegawai
  LockRefresh(Application, dmGeneral.qryStatusKaryawan, '', True);
  LockRefresh(Application, dmGeneral.qryAssets, '', True);
  LockRefresh(Application, dmGeneral.qrySubAssets, '', True);
  LockRefresh(Application, dmGeneral.qryBahasa, '', True);
  LockRefresh(Application, dmGeneral.qryKeahlian, '', True);
  LockRefresh(Application, dmGeneral.qryPendidikan, '', False);
  LockRefresh(Application, dmGeneral.qryOutSourcing, '', False);

  // detail pegawai
  LockRefresh(Application, dmGeneral.qryPegawaiFoto, 'Nopeg', True);
  LockRefresh(Application, dmGeneral.qryDataPendidikan, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDatafamily, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataAsset, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataBahasa, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataOrganisasi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataKeahlian, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataReferensi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataRelasi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.qryDataPengalamanKerja, 'Nopeg', False);

end;

function TfmPegawai.VerFPData(AConnection: TZConnection; var AFingerId: string;
  var AFingerIndex: Integer; AFPData: OleVariant): boolean;
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

procedure TfmPegawai.ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
  ATemplate: OleVariant);
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

procedure TfmPegawai.ZKFPEngX1Enroll(ASender: TObject; ActionResult: WordBool;
  ATemplate: OleVariant);
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

procedure TfmPegawai.ZKFPEngX1FeatureInfo(ASender: TObject; AQuality: Integer);
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

procedure TfmPegawai.ZKFPEngX1ImageReceived(ASender: TObject;
  var AImageValid: WordBool);
begin
  ZKFPEngX1.PrintImageAt(GetWindowDC(Panel1.Handle), 0, 0, ZKFPEngX1.ImageWidth, ZKFPEngX1.ImageHeight);
end;

end.

