unit frmTenagaKerja;

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
  ExtCtrls;

type
  TfmTenagaKerja = class(TForm)
    feSetupButton1: TfeSetupButton;
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
    dbeTglBerakhirKontrak: TcxDBDateEdit;
    dbeTglLahir: TcxDBDateEdit;
    dbeTglMasuk: TcxDBDateEdit;
    dblckodeoutsourcing: TcxDBExtLookupComboBox;
    lblJenisKelamin: TLabel;
    lblKodeOutsourcing: TLabel;
    lblStatus: TLabel;
    lblStatusKaryawan: TLabel;
    lblTempatLahir: TLabel;
    lblTglBerakhirKontrak: TLabel;
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
    cgvExplorerkodebank: TcxGridDBColumn;
    cgvExplorernorekening: TcxGridDBColumn;
    cgvExplorertglkeluar: TcxGridDBColumn;
    cgvExplorernoktp: TcxGridDBColumn;
    cgvExplorernoastek: TcxGridDBColumn;
    cgvExplorertglastek: TcxGridDBColumn;
    cgvExplorerstkerja: TcxGridDBColumn;
    cgvExplorerbloodtype: TcxGridDBColumn;
    cgvExplorerheight: TcxGridDBColumn;
    cgvExplorerweight: TcxGridDBColumn;
    cgvExplorerhoby: TcxGridDBColumn;
    cgvExplorertglendkontrak: TcxGridDBColumn;
    cgvExplorerkodebagian: TcxGridDBColumn;
    cgvExplorerkodegolongan: TcxGridDBColumn;
    cgvExplorerkodelevel: TcxGridDBColumn;
    cgvExplorerkodecabang: TcxGridDBColumn;
    cgvExplorercountryid: TcxGridDBColumn;
    cgvExplorerprovinceid: TcxGridDBColumn;
    cgvExplorercityid: TcxGridDBColumn;
    cgvExplorerkodeperusahaan: TcxGridDBColumn;
    cgvExplorerstpegawai: TcxGridDBColumn;
    cgvExplorerkodeoutsourcing: TcxGridDBColumn;
    cgvExplorerjab_kodejabatan: TcxGridDBColumn;
    cgvExplorergol_kodegolongan: TcxGridDBColumn;
    cgvExplorerkodedepartemen: TcxGridDBColumn;
    cgvExplorerkodedivisi: TcxGridDBColumn;
    dpOther: TdxDockPanel;
    lblAgama: TLabel;
    lblGolonganDarah: TLabel;
    dbcbGolonganDarah: TcxDBComboBox;
    lblTinggi: TLabel;
    dbeTinggi: TcxDBSpinEdit;
    lblBerat: TLabel;
    dbeBerat: TcxDBSpinEdit;
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
    cgvExplorerPerusahaan: TcxGridDBColumn;
    cgvExplorerDivisi: TcxGridDBColumn;
    cgvExplorerDepartemen: TcxGridDBColumn;
    Label1: TLabel;
    dbckFlagKeluar: TcxDBCheckBox;
    cgvExplorerFlagKeluar: TcxGridDBColumn;
    dbeTglKeluar: TcxDBDateEdit;
    dsPegawai: TDataSource;
    dbckFlagSchedule: TcxDBCheckBox;
    lblFlagSchedule: TLabel;
    Label2: TLabel;
    dblcShift: TcxDBExtLookupComboBox;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    Label3: TLabel;
    dbckFlagKonfirmasi: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cgvExplorerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnRefreshClick(Sender: TObject);
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
  private
    { Private declarations }
    procedure DeinitForm;
    procedure InitForm;
    procedure RefreshAll;
  public
    class procedure ExecuteForm;    
  end;

var
 fmTenagaKerja:TfmTenagaKerja;

implementation

uses untProcedure, untConstanta, dtmglobal,dtmgeneral, frmCaptureFoto;
{$R *.dfm}


procedure TfmTenagaKerja.InitForm;
begin
  dmGlobal.InitFormComponent(Self);

  OpenIfClose(Application, dmGeneral.dtsPegawai, True, True);

  OpenIfClose(Application, dmGlobal.dtsCountry, False, False);
  OpenIfClose(Application, dmGlobal.dtsProvince, False, False);
  OpenIfClose(Application, dmGlobal.dtsPrevCity, False, False);

  // detail pegawai
  OpenIfClose(Application, dmGeneral.dtsPegawaiFoto, False, True);
  OpenIfClose(Application, dmGeneral.dtsOutSourcing, False, False);
  OpenIfClose(Application, dmGeneral.dtsPrevShiftJamKerja, True, True);
  OpenIfClose(Application, dmGeneral.dtsStatusKaryawan, False, True);
  dmGeneral.dtsPrevDepartemenDivisi.Close;
  dmGeneral.dtsPrevDepartemenDivisi.Parameters[0].Value := '%';
  OpenIfClose(Application, dmGeneral.dtsPrevDepartemenDivisi, False, False);
  OpenIfClose(Application, dmGeneral.dtsPendidikan, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataPendidikan, False, False);
  OpenIfClose(Application, dmGeneral.dtsDatafamily, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataOrganisasi, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataPengalamanKerja, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataReferensi, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataRelasi, False, False);
  OpenIfClose(Application, dmGeneral.dtsKeahlian, False, True);
  OpenIfClose(Application, dmGeneral.dtsBahasa, False, True);
  OpenIfClose(Application, dmGeneral.dtsDataBahasa, False, False);
  OpenIfClose(Application, dmGeneral.dtsAssets, False, True);
  OpenIfClose(Application, dmGeneral.dtsSubAssets, False, True);
  OpenIfClose(Application, dmGeneral.dtsDataAsset, False, False);
  OpenIfClose(Application, dmGeneral.dtsDataKeahlian, False, False);
  
  SetReadOnly(cgvExplorer);
  SetActionDataSource(feSetupButton1.ActionList1,dmgeneral.dsPegawai);
end;

procedure TfmTenagaKerja.actCaptureExecute(Sender: TObject);
begin
  TfmCaptureFoto.ExecuteForm;
end;

procedure TfmTenagaKerja.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = feSetupButton1.DataSetInsert1)
  or (Action = feSetupButton1.DataSetEdit1) then
  begin
    dbeNoPeg.SetFocus;
  end;
  feSetupButton1.ActionList1Execute(Action, Handled);
end;

procedure TfmTenagaKerja.btnRefreshClick(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmTenagaKerja.cgvExplorerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('flagkeluar').Index] = '1' then
        AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmTenagaKerja.dblcCityPropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsBrowse] then
  begin
    dmGlobal.dtsPrevCity2.Close;
    dmGlobal.dtsPrevCity2.Parameters[0].Value := '%';
    dmGlobal.dtsPrevCity2.Parameters[1].Value := '%';
    OpenIfClose(Application, dmGlobal.dtsPrevCity2, False, False);
  end;
end;

procedure TfmTenagaKerja.dblcCityPropertiesInitPopup(Sender: TObject);
begin
  dmGlobal.dtsPrevCity2.Close;
  dmGlobal.dtsPrevCity2.Parameters[0].Value := dblcCountry.EditValue;
  dmGlobal.dtsPrevCity2.Parameters[1].Value := dblcProvince.EditValue;
  OpenIfClose(Application, dmGlobal.dtsPrevCity2, False, False);
end;

procedure TfmTenagaKerja.dblcCountryPropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.dtsPegawai.FieldByName('ProvinceId').AsVariant := Null;
    dmGeneral.dtsPegawai.FieldByName('CityId').AsVariant := Null;
  end;
end;

procedure TfmTenagaKerja.dblckodedepartemenPropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsBrowse] then
  begin
    dmGeneral.dtsPrevDepartemenDivisi.Close;
    dmGeneral.dtsPrevDepartemenDivisi.Parameters[0].Value := '%';
    OpenIfClose(Application, dmGeneral.dtsPrevDepartemenDivisi, False, False);
  end;
end;

procedure TfmTenagaKerja.dblckodedepartemenPropertiesInitPopup(Sender: TObject);
begin
  dmGeneral.dtsPrevDepartemenDivisi.Close;
  dmGeneral.dtsPrevDepartemenDivisi.Parameters[0].Value :=
    dmGeneral.dtsPegawai.FieldByName('kodedivisi').AsVariant;
  OpenIfClose(Application, dmGeneral.dtsPrevDepartemenDivisi, False, False);
end;

procedure TfmTenagaKerja.dblckodedivisiPropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsEdit, dsInsert] then
  begin
    dmGeneral.dtsPegawai.FieldByName('KodeDepartemen').AsVariant := null;
  end;
end;

procedure TfmTenagaKerja.dblcProvincePropertiesCloseUp(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsBrowse] then
  begin
    dmGlobal.dtsPrevProvince2.Close;
    dmGlobal.dtsPrevProvince2.Parameters[0].Value := '%';
    OpenIfClose(Application, dmGlobal.dtsPrevProvince2, False, False);
  end;
end;

procedure TfmTenagaKerja.dblcProvincePropertiesEditValueChanged(Sender: TObject);
begin
  if dmGeneral.dtsPegawai.State in [dsEdit, dsInsert] then
    dmGeneral.dtsPegawai.FieldByName('CityId').AsVariant := Null;
end;

procedure TfmTenagaKerja.dblcProvincePropertiesInitPopup(Sender: TObject);
begin
  dmGlobal.dtsPrevProvince2.Close;
  dmGlobal.dtsPrevProvince2.Parameters[0].Value := dblcCountry.EditValue;
  OpenIfClose(Application, dmGlobal.dtsPrevProvince2, False, False);
end;

procedure TfmTenagaKerja.DeinitForm;
begin
  // Refresh link preview
//  LockRefreshIfOpen(Application, dmGeneral.dtsPre, False);
end;

class procedure TfmTenagaKerja.ExecuteForm;
begin
  with fmTenagaKerja do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmTenagaKerja);
      InitForm;
    end;
  end;
end;

procedure TfmTenagaKerja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmTenagaKerja.RefreshAll;
begin

  LockRefresh(Application, dmGeneral.dtsPerusahaan, '', False);
  LockRefresh(Application, dmGeneral.dtsDivisi, '', False);
  LockRefresh(Application, dmGeneral.dtsPrevDepartemen, '', False);
  LockRefresh(Application, dmGlobal.dtsCountry, '', False);
  LockRefresh(Application, dmGlobal.dtsProvince, '', False);
  LockRefresh(Application, dmGlobal.dtsPrevCity, '', False);

  dmGeneral.dtsPrevDepartemenDivisi.Close;
  dmGeneral.dtsPrevDepartemenDivisi.Parameters[0].Value := '%';
  LockRefresh(Application, dmGeneral.dtsPrevDepartemenDivisi, '', False);

  // master detail pegawai
  LockRefresh(Application, dmGeneral.dtsStatusKaryawan, '', True);
  LockRefresh(Application, dmGeneral.dtsAssets, '', True);
  LockRefresh(Application, dmGeneral.dtsSubAssets, '', True);
  LockRefresh(Application, dmGeneral.dtsBahasa, '', True);
  LockRefresh(Application, dmGeneral.dtsKeahlian, '', True);
  LockRefresh(Application, dmGeneral.dtsPendidikan, '', False);
  LockRefresh(Application, dmGeneral.dtsOutSourcing, '', False);

  // detail pegawai
  LockRefresh(Application, dmGeneral.dtsPegawaiFoto, 'Nopeg', True);
  LockRefresh(Application, dmGeneral.dtsDataPendidikan, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDatafamily, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataAsset, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataBahasa, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataOrganisasi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataKeahlian, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataReferensi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataRelasi, 'Nopeg', False);
  LockRefresh(Application, dmGeneral.dtsDataPengalamanKerja, 'Nopeg', False);

end;

end.
