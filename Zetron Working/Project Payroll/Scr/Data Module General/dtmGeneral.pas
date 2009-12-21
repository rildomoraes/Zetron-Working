unit dtmGeneral;

interface

uses
  SysUtils, Classes, Forms, DB, cxNavigator, Dialogs, DateUtils,

  // Auto Create
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxColorComboBox, cxImageComboBox, cxCalendar, cxCheckBox,
  cxDBExtLookupComboBox, cxCalc, MemDS, DBAccess, Uni, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ADODB;

type
  TdmGeneral = class(TDataModule)
    gvrGeneral: TcxGridViewRepository;
    dsPrevStatusApprove: TDataSource;
    dsPerusahaan: TDataSource;
    dsDivisi: TDataSource;
    cgvPrevPerusahaan: TcxGridDBTableView;
    cgvPrevDivisi: TcxGridDBTableView;
    cgvPrevPerusahaankodeperusahaan: TcxGridDBColumn;
    cgvPrevPerusahaannamaperusahaan: TcxGridDBColumn;
    cgvPrevPerusahaanalamat1: TcxGridDBColumn;
    cgvPrevPerusahaanalamat2: TcxGridDBColumn;
    cgvPrevPerusahaankota: TcxGridDBColumn;
    cgvPrevPerusahaankodepos: TcxGridDBColumn;
    cgvPrevPerusahaanphone: TcxGridDBColumn;
    cgvPrevPerusahaanfax: TcxGridDBColumn;
    cgvPrevPerusahaannpwp: TcxGridDBColumn;
    cgvPrevPerusahaancorebusiness: TcxGridDBColumn;
    cgvPrevPerusahaandirector: TcxGridDBColumn;
    cgvPrevPerusahaanklucode: TcxGridDBColumn;
    cgvPrevPerusahaanpemotongpajak: TcxGridDBColumn;
    cgvPrevDivisikodedivisi: TcxGridDBColumn;
    dsPegawai: TDataSource;
    dsDepartemen: TDataSource;
    cgvPrevDepartemen: TcxGridDBTableView;
    cgvPrevDepartemenkodedivisi: TcxGridDBColumn;
    cgvPrevDepartemenkodedepartemen: TcxGridDBColumn;
    cgvPrevDepartemennamadepartemen: TcxGridDBColumn;
    dsPrevOutSourcing: TDataSource;
    cgvPrevOutSourcing: TcxGridDBTableView;
    dsPendidikan: TDataSource;
    cgvPrevPendidikan: TcxGridDBTableView;
    cgvPegawai: TcxGridDBTableView;
    cgvPegawainopeg: TcxGridDBColumn;
    cgvPegawaibarcode: TcxGridDBColumn;
    cgvPegawainama: TcxGridDBColumn;
    cgvPegawaialamat: TcxGridDBColumn;
    cgvPegawaitelp: TcxGridDBColumn;
    cgvPegawaitmplahir: TcxGridDBColumn;
    cgvPegawaitgllahir: TcxGridDBColumn;
    cgvPegawaisex: TcxGridDBColumn;
    cgvPegawaiagama: TcxGridDBColumn;
    cgvPegawaistsipil: TcxGridDBColumn;
    cgvPegawaitglmasuk: TcxGridDBColumn;
    cgvPegawaitglkeluar: TcxGridDBColumn;
    cgvPegawainoktp: TcxGridDBColumn;
    cgvPrevAssets: TcxGridDBTableView;
    cgvPrevAssetskodeassets: TcxGridDBColumn;
    cgvPrevAssetsnamaassets: TcxGridDBColumn;
    cgvPrevSubAssets: TcxGridDBTableView;
    cgvPrevBahasa: TcxGridDBTableView;
    cgvPrevBahasakodebahasa: TcxGridDBColumn;
    cgvPrevBahasanamabahasa: TcxGridDBColumn;
    cgvPrevKeahlian: TcxGridDBTableView;
    cgvPrevKeahliankodekeahlian: TcxGridDBColumn;
    cgvPrevKeahliannamakeahlian: TcxGridDBColumn;
    cgvPrevPendidikankodependidikan: TcxGridDBColumn;
    cgvPrevPendidikanjurusan: TcxGridDBColumn;
    dsStatusKaryawan: TDataSource;
    cgvStatusKaryawan: TcxGridDBTableView;
    cgvStatusKaryawankodestatus: TcxGridDBColumn;
    cgvStatusKaryawannamastatus: TcxGridDBColumn;
    cgvStatusKaryawanwarna: TcxGridDBColumn;
    cgvPrevOutSourcingkodeoutsourcing: TcxGridDBColumn;
    cgvPrevOutSourcingnama: TcxGridDBColumn;
    cgvPrevOutSourcingwarna: TcxGridDBColumn;
    dsGroupShiftHd: TDataSource;
    dsLibur: TDataSource;
    dsKodeAbsen: TDataSource;
    cgvPrevKodeAbsen: TcxGridDBTableView;
    cgvPrevKodeAbsenketerangan: TcxGridDBColumn;
    cgvPrevKodeAbsenkodeabsen: TcxGridDBColumn;
    dsJabatan: TDataSource;
    dsPrevPegawai: TDataSource;
    cgvPrevPegawai: TcxGridDBTableView;
    cgvPrevPegawainopeg: TcxGridDBColumn;
    cgvPrevPegawainama: TcxGridDBColumn;
    cgvPrevPegawainamaperusahaan: TcxGridDBColumn;
    cgvPrevPegawainamadivisi: TcxGridDBColumn;
    cgvPrevPegawainamadepartemen: TcxGridDBColumn;
    cgvPrevJabatan: TcxGridDBTableView;
    cgvPrevJabatankodejabatan: TcxGridDBColumn;
    cgvPrevJabatannamajabatan: TcxGridDBColumn;
    cgvPrevPerusahaantaxaddress: TcxGridDBColumn;
    cgvPrevDivisinamadivisi: TcxGridDBColumn;
    dsPrevPegawaiActive: TDataSource;
    cgvPrevPegawaiActive: TcxGridDBTableView;
    cgvPosisiActiveTgl: TcxGridDBTableView;
    cgvPosisiActiveTglpegawaiid: TcxGridDBColumn;
    cgvPosisiActiveTglnopeg: TcxGridDBColumn;
    cgvPosisiActiveTglnama: TcxGridDBColumn;
    cgvPosisiActiveTglkodeperusahaan: TcxGridDBColumn;
    cgvPosisiActiveTglnamaperusahaan: TcxGridDBColumn;
    cgvPosisiActiveTglkodedivisi: TcxGridDBColumn;
    cgvPosisiActiveTglnamadivisi: TcxGridDBColumn;
    cgvPosisiActiveTglkodedepartemen: TcxGridDBColumn;
    cgvPosisiActiveTglnamadepartemen: TcxGridDBColumn;
    cgvPosisiActiveTglkodejabatan: TcxGridDBColumn;
    cgvPosisiActiveTglnamajabatan: TcxGridDBColumn;
    cgvPosisiActiveTglkodestatus: TcxGridDBColumn;
    cgvPosisiActiveTglnamastatus: TcxGridDBColumn;
    dsPrevPosisiActiveTglShift: TDataSource;
    cgvPosisiActiveTglShift: TcxGridDBTableView;
    cgvPosisiActiveTglShiftnopeg: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnama: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnamaperusahaan: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnamadivisi: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnamadepartemen: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnamajabatan: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnamastatus: TcxGridDBColumn;
    cgvPosisiActiveTglShiftnoreg: TcxGridDBColumn;
    cgvPosisiActiveTglShiftuangmakan: TcxGridDBColumn;
    cgvPosisiActiveTglShiftuangtransport: TcxGridDBColumn;
    cgvPrevPegawaiActivepegawaiid: TcxGridDBColumn;
    cgvPrevPegawaiActivenopeg: TcxGridDBColumn;
    cgvPrevPegawaiActivenama: TcxGridDBColumn;
    cgvPrevPegawaiActivekodeperusahaan: TcxGridDBColumn;
    cgvPrevPegawaiActivekodedivisi: TcxGridDBColumn;
    cgvPrevPegawaiActivekodedepartemen: TcxGridDBColumn;
    cgvPrevPegawaiActivetglkeluar: TcxGridDBColumn;
    cgvPrevPegawaiActivenamaperusahaan: TcxGridDBColumn;
    cgvPrevPegawaiActivenamadivisi: TcxGridDBColumn;
    cgvPrevPegawaiActivenamadepartemen: TcxGridDBColumn;
    dsMasterJamKerja: TDataSource;
    cgvPrevKodeJamKerja: TcxGridDBTableView;
    cgvPrevKodeJamKerjajamkerjaawal: TcxGridDBColumn;
    cgvPrevKodeJamKerjajamkerjaakhir: TcxGridDBColumn;
    cgvPrevKodeJamKerjaoverday: TcxGridDBColumn;
    cgvPrevKodeJamKerjaaktif: TcxGridDBColumn;
    cgvPrevKodeJamKerjakodejamkerja: TcxGridDBColumn;
    dsGroupShiftDt1: TDataSource;
    cgvPrevGroupShift: TcxGridDBTableView;
    cgvPrevGroupShiftkodegroupshiftid: TcxGridDBColumn;
    cgvPrevGroupShiftnamagroupshift: TcxGridDBColumn;
    cgvPrevGroupShiftDt1: TcxGridDBTableView;
    cgvPrevGroupShiftDt1kodegroupshiftid: TcxGridDBColumn;
    cgvPrevGroupShiftDt1shift: TcxGridDBColumn;
    dsGroupShiftDt2: TDataSource;
    cgvPrevGroupShiftDt2: TcxGridDBTableView;
    cgvPrevGroupShiftDt2kodegroupshiftid: TcxGridDBColumn;
    cgvPrevGroupShiftDt2kodehari: TcxGridDBColumn;
    cgvPrevGroupShiftDt2shift: TcxGridDBColumn;
    cgvPrevGroupShiftDt2kodejamkerja: TcxGridDBColumn;
    cgvPrevGroupShiftDt2spl: TcxGridDBColumn;
    cgvPegawaipegawaiid: TcxGridDBColumn;
    cgvPegawaiflagastek: TcxGridDBColumn;
    cgvPegawainoastek: TcxGridDBColumn;
    cgvPegawaitglastek: TcxGridDBColumn;
    cgvPegawaiflagjpk: TcxGridDBColumn;
    cgvPegawaitgljpk: TcxGridDBColumn;
    cgvPegawaibloodtype: TcxGridDBColumn;
    cgvPegawaicountryid: TcxGridDBColumn;
    cgvPegawaiprovinceid: TcxGridDBColumn;
    cgvPegawaicityid: TcxGridDBColumn;
    cgvPegawaikodeperusahaan: TcxGridDBColumn;
    cgvPegawaiflagproses: TcxGridDBColumn;
    cgvPegawaiflagkeluar: TcxGridDBColumn;
    cgvPegawaimemo: TcxGridDBColumn;
    cgvPegawaikodestatus: TcxGridDBColumn;
    cgvPegawaikodegroupshiftid: TcxGridDBColumn;
    cgvPegawaikodeoutsourcing: TcxGridDBColumn;
    cgvPegawaikodedepartemen: TcxGridDBColumn;
    cgvPegawaikodedivisi: TcxGridDBColumn;
    cgvPegawaikodejabatan: TcxGridDBColumn;
    cgvPegawaistatusschedule: TcxGridDBColumn;
    cgvPegawaiflagkonfirmasi: TcxGridDBColumn;
    cgvPegawaiflagapproveterlambat: TcxGridDBColumn;
    cgvPegawaiflagapproveabsen: TcxGridDBColumn;
    cgvPegawaistatusspl: TcxGridDBColumn;
    cgvPegawaiflagapprovepulangawal: TcxGridDBColumn;
    cgvPegawaishift: TcxGridDBColumn;
    cgvPosisiActiveTglShiftpegawaiid: TcxGridDBColumn;
    cgvPosisiActiveTglShiftkodeperusahaan: TcxGridDBColumn;
    cgvPosisiActiveTglShiftkodedivisi: TcxGridDBColumn;
    cgvPosisiActiveTglShiftkodedepartemen: TcxGridDBColumn;
    cgvPosisiActiveTglShiftkodejabatan: TcxGridDBColumn;
    cgvPosisiActiveTglShiftkodestatus: TcxGridDBColumn;
    cgvPosisiActiveTglShiftjamkerjaawal: TcxGridDBColumn;
    cgvPosisiActiveTglShiftjamkerjaakhir: TcxGridDBColumn;
    dsPayrollType: TDataSource;
    dsPayrollDetail: TDataSource;
    dsGroupGaji: TDataSource;
    dsBank: TDataSource;
    cgvPrevPayrollType: TcxGridDBTableView;
    cgvPrevPayrollDetail: TcxGridDBTableView;
    cgvPrevGroupGaji: TcxGridDBTableView;
    cgvPrevBank: TcxGridDBTableView;
    cgvPrevPayrollDetailpegawaiid: TcxGridDBColumn;
    cgvPrevPayrollDetailkodebank: TcxGridDBColumn;
    cgvPrevPayrollDetailkodegroupgaji: TcxGridDBColumn;
    cgvPrevPayrollDetailaccount: TcxGridDBColumn;
    cgvPrevPayrollDetailnpwp: TcxGridDBColumn;
    cgvPrevPayrollDetailstatuspajak: TcxGridDBColumn;
    cgvPrevPayrollDetailmodegaji: TcxGridDBColumn;
    cgvPrevBankkodebank: TcxGridDBColumn;
    cgvPrevBanknamabank: TcxGridDBColumn;
    cgvPrevGroupGajikodegroupgaji: TcxGridDBColumn;
    cgvPrevGroupGajinamagroupgaji: TcxGridDBColumn;
    cgvPrevPayrollTypepayrolltype: TcxGridDBColumn;
    cgvPrevPayrollTypepayrolltypename: TcxGridDBColumn;
    dsPeriodeGajiHd: TDataSource;
    cgvSyaratHd: TcxGridDBTableView;
    cgvSyaratHdnosyarat: TcxGridDBColumn;
    cgvSyaratHdnamasyarat: TcxGridDBColumn;
    dsPeriodeGajiDt: TDataSource;
    cgvPrevPeriode: TcxGridDBTableView;
    cgvPrevPeriodekodeperiode: TcxGridDBColumn;
    cgvPrevPeriodenamaperiode: TcxGridDBColumn;
    cgvPrevPeriodetglakhir: TcxGridDBColumn;
    cgvPrevPeriodetglawal: TcxGridDBColumn;
    dsTransaksiPayrollHd: TDataSource;
    dsTransaksiPayrollDt: TDataSource;
    cgvSyaratHdstatusproses: TcxGridDBColumn;
    cgvSyaratHdqtyhari: TcxGridDBColumn;
    cgvSyaratHdterlambat1: TcxGridDBColumn;
    cgvSyaratHdterlambat2: TcxGridDBColumn;
    cgvSyaratHdflagexecutequery: TcxGridDBColumn;
    cgvSyaratHdsyntaxquery: TcxGridDBColumn;
    cgvSyaratHdgrouping: TcxGridDBColumn;
    cgvSyaratHdflagbayarsesuaitglproses: TcxGridDBColumn;
    cgvSyaratHdflagterlambat: TcxGridDBColumn;
    cgvSyaratHdflagsyarat: TcxGridDBColumn;
    cgvPrevPegawaiActiveflagkeluar: TcxGridDBColumn;
    cgvPrevPegawaipegawaiid: TcxGridDBColumn;
    cgvPrevPegawaikodeperusahaan: TcxGridDBColumn;
    cgvPrevPegawaikodedivisi: TcxGridDBColumn;
    cgvPrevPegawaikodedepartemen: TcxGridDBColumn;
    cgvPrevPegawaikodejabatan: TcxGridDBColumn;
    cgvPrevPegawaikodestatus: TcxGridDBColumn;
    cgvPrevPegawainamajabatan: TcxGridDBColumn;
    cgvPrevPegawainamastatus: TcxGridDBColumn;
    cgvPrevPegawaitglkeluar: TcxGridDBColumn;
    cgvPrevPegawaiflagkeluar: TcxGridDBColumn;
    cgvPrevPegawaiActivekodejabatan: TcxGridDBColumn;
    cgvPrevPegawaiActivekodestatus: TcxGridDBColumn;
    cgvPrevPegawaiActivenamajabatan: TcxGridDBColumn;
    cgvPrevPegawaiActivenamastatus: TcxGridDBColumn;
    dsPersonValidation: TDataSource;
    dsPegawaiApproval: TDataSource;
    cgvPrevPegawaiActivekodegroupshiftid: TcxGridDBColumn;
    cgvPrevPegawaiActiveshift: TcxGridDBColumn;
    cgvPrevPegawaiActivenamagroupshift: TcxGridDBColumn;
    dsKeahlian: TDataSource;
    dsBahasa: TDataSource;
    dsAssets: TDataSource;
    dsSubAssets: TDataSource;
    cgvPrevSubAssetskodeassets: TcxGridDBColumn;
    cgvPrevSubAssetskodesubassets: TcxGridDBColumn;
    cgvPrevSubAssetsnamasubassets: TcxGridDBColumn;
    dsSyaratHd: TDataSource;
    dsSettingGajiNominal: TDataSource;
    dsSettingGajiSyarat: TDataSource;
    dsPegawaiFoto: TDataSource;
    dsKodeAbsenAbsenManual: TDataSource;
    dsKodeAbsenTransaksi: TDataSource;
    cgvPrevKodeAbsenAbsenManual: TcxGridDBTableView;
    cgvPrevKodeAbsenAbsenManualkodeabsen: TcxGridDBColumn;
    cgvPrevKodeAbsenAbsenManualketerangan: TcxGridDBColumn;
    cgvPrevKodeAbsenTransaksi: TcxGridDBTableView;
    cgvPrevKodeAbsenTransaksikodeabsen: TcxGridDBColumn;
    cgvPrevKodeAbsenTransaksiketerangan: TcxGridDBColumn;
    qryPegawai: TADOQuery;
    qryJabatan: TADOQuery;
    qryKodeAbsen: TADOQuery;
    qryPrevStatusApprove: TADOQuery;
    qryPrevPegawai: TADOQuery;
    qryPrevPegawaiActive: TADOQuery;
    qryPrevPosisiActiveTglShift: TADOQuery;
    qryPerusahaan: TADOQuery;
    qryDivisi: TADOQuery;
    qryDepartemen: TADOQuery;
    qryOutSourcing: TADOQuery;
    qryPendidikan: TADOQuery;
    qryStatusKaryawan: TADOQuery;
    qryGroupShiftHd: TADOQuery;
    qryLibur: TADOQuery;
    qryMasterJamKerja: TADOQuery;
    qryGroupShiftDt1: TADOQuery;
    qryGroupShiftDt2: TADOQuery;
    qryPayrollType: TADOQuery;
    qryPayrollDetail: TADOQuery;
    qryGroupGaji: TADOQuery;
    qryBank: TADOQuery;
    qryPeriodeGajiHd: TADOQuery;
    qryPeriodeGajiDt: TADOQuery;
    qryGetLastNo: TADOQuery;
    qryTransaksiPayrollHd: TADOQuery;
    qryTransaksiPayrollDt: TADOQuery;
    qryPersonValidation: TADOQuery;
    qryPegawaiApproval: TADOQuery;
    qryKeahlian: TADOQuery;
    qryBahasa: TADOQuery;
    qryAssets: TADOQuery;
    qrySubAssets: TADOQuery;
    qrySyaratHd: TADOQuery;
    qrySettingGajiNominal: TADOQuery;
    qrySettingGajiSyarat: TADOQuery;
    qryPegawaiFoto: TADOQuery;
    qryKodeAbsenAbsenManual: TADOQuery;
    qryKodeAbsenTransaksi: TADOQuery;
    qryCariAbsen: TADOQuery;
    qryGenerateCounter: TADOQuery;
    qryspGenerateCounter: TADOQuery;
    dsCounterHd: TDataSource;
    qryCounterHd: TADOQuery;
    dsCariABsen: TDataSource;
    qryLog: TADOQuery;
    dsLog: TDataSource;
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryPegawaiBeforeDelete(DataSet: TDataSet);
    procedure qryGroupShiftDt1NewRecord(DataSet: TDataSet);
    procedure qryTransaksiPayrollDtNewRecord(DataSet: TDataSet);
    procedure dsTransaksiPayrollDtDataChange(Sender: TObject; Field: TField);
    procedure qryTransaksiPayrollHdNewRecord(DataSet: TDataSet);
    procedure qryPegawaiApprovalNewRecord(DataSet: TDataSet);
    procedure qryKodeAbsenBeforeDelete(DataSet: TDataSet);
    procedure qryKodeAbsenNewRecord(DataSet: TDataSet);
    procedure qrySyaratDtNewRecord(DataSet: TDataSet);
    procedure qrySyaratHdNewRecord(DataSet: TDataSet);
    procedure qryJabatanBeforePost(DataSet: TDataSet);
    procedure qryGroupShiftDt2NewRecord(DataSet: TDataSet);
    procedure qryPegawaiNewRecord(DataSet: TDataSet);
    procedure qryPegawaiBeforePost(DataSet: TDataSet);
    procedure cgvPrevPegawaiActiveStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryPegawaiAfterPost(DataSet: TDataSet);
    procedure qryPegawaiAfterDelete(DataSet: TDataSet);
    procedure qryPegawaiFotoAfter(DataSet: TDataSet);
    procedure qryKeahlianAfter(DataSet: TDataSet);
    procedure qryBahasaAfter(DataSet: TDataSet);
    procedure qryAssetsAfter(DataSet: TDataSet);
    procedure qrySubAssetsAfter(DataSet: TDataSet);
    procedure qryJabatanAfter(DataSet: TDataSet);
    procedure qryKodeAbsenAfter(DataSet: TDataSet);
    procedure qryKodeAbsenAbsenManualAfter(DataSet: TDataSet);
    procedure qryKodeAbsenTransaksiAfter(DataSet: TDataSet);
    procedure qryPayrollTypeAfter(DataSet: TDataSet);
    procedure qryGroupGajiAfter(DataSet: TDataSet);
    procedure qryBankAfter(DataSet: TDataSet);
    procedure qryTransaksiPayrollHdAfter(DataSet: TDataSet);
    procedure qryTransaksiPayrollDtAfter(DataSet: TDataSet);
    procedure qryPersonValidationAfter(DataSet: TDataSet);
    procedure qryPrevStatusApproveAfter(DataSet: TDataSet);
    procedure qryPegawaiApprovalAfter(DataSet: TDataSet);
    procedure qryPrevPegawaiAfter(DataSet: TDataSet);
    procedure qryPrevPegawaiActiveAfter(DataSet: TDataSet);
    procedure qrySyaratHdAfter(DataSet: TDataSet);
    procedure qryCariAbsenAfter(DataSet: TDataSet);
    procedure qryLiburAfter(DataSet: TDataSet);
    procedure qrySettingGajiNominalAfter(DataSet: TDataSet);
    procedure qrySettingGajiSyaratAfter(DataSet: TDataSet);
    procedure qryCounterHdAfter(DataSet: TDataSet);
    procedure qryPerusahaanAfter(DataSet: TDataSet);
    procedure qryDivisiAfter(DataSet: TDataSet);
    procedure qryDepartemenAfter(DataSet: TDataSet);
    procedure qryOutSourcingAfter(DataSet: TDataSet);
    procedure qryMasterJamKerjaAfter(DataSet: TDataSet);
    procedure qryPendidikanAfter(DataSet: TDataSet);
    procedure qryStatusKaryawanAfter(DataSet: TDataSet);
    procedure qryGroupShiftHdAfter(DataSet: TDataSet);
    procedure qryGroupShiftDt1After(DataSet: TDataSet);
    procedure qryGroupShiftDt2After(DataSet: TDataSet);
    procedure qryPeriodeGajiHdAfter(DataSet: TDataSet);
    procedure qryPeriodeGajiDtAfter(DataSet: TDataSet);
    procedure qryPayrollDetailAfter(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DeinitDataModule;
    procedure InitDataModule;
    var hasil,action:string;
  public
    var AFlagBaru,AFlagTombol:boolean;
    periode:tdatetime;
    AJabatanLevel:string;
    procedure InsertLog(const TableName,Hasil,Action: string);
    function GetLog(DataSet:TDataSet;var Action:string):string;
    function GetLogDel(DataSet:TDataSet;var Action:string):string;
    { Public declarations }
  end;

var
  dmGeneral: TdmGeneral;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, frmCountry, frmProvince, frmCity, dtmshare,
  frmStruktur,
  Variants, frmPendidikan, frmOutSourcing, frmAssets, frmBahasa, frmKeahlian,frmJabatan,
  frmStatusKaryawan, frmKodeAbsen,frmTransaksiPayroll;

{$R *.dfm}

procedure TdmGeneral.DataModuleCreate(Sender: TObject);
begin
  InitDataModule;
end;

procedure TdmGeneral.DataModuleDestroy(Sender: TObject);
begin
  DeinitDataModule;
end;

procedure TdmGeneral.DeinitDataModule;
begin
 //
end;

procedure TdmGeneral.dsTransaksiPayrollDtDataChange(Sender: TObject;
  Field: TField);
begin
  if (Field = nil) then
    Exit;

end;

function TdmGeneral.GetLog(DataSet: TDataSet; var Action: string): string;
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

function TdmGeneral.GetLogDel(DataSet: TDataSet; var Action: string): string;
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

procedure TdmGeneral.InitDataModule;
begin
  if not Application.Terminated then
    dmGlobal.InitComponent(Self);
end;

procedure TdmGeneral.InsertLog(const TableName, Hasil, Action: string);
begin
  OpenIfClose(qryLog);
  dsLog.DataSet.Insert;
  dsLog.DataSet.Fields[0].AsString :=dmGlobal.SettingGlobal.LoginEmployeeId;
  dsLog.DataSet.FieldByName('TransactionDate').AsDateTime :=dmGlobal.SettingGlobal.ServerDateTime;
  dsLog.DataSet.FieldByName('Action').AsString := Action;
  dsLog.DataSet.FieldByName('TableName').AsString :=TableName ;
  dsLog.DataSet.FieldByName('Description').AsString := Hasil;
  dsLog.DataSet.Post;
end;

procedure TdmGeneral.qryAssetsAfter(DataSet: TDataSet);
begin
  InsertLog('Assets',hasil,action);
end;

procedure TdmGeneral.qryBahasaAfter(DataSet: TDataSet);
begin
  InsertLog('Bahasa',hasil,action);
end;

procedure TdmGeneral.qryBankAfter(DataSet: TDataSet);
begin
  InsertLog('Bank',hasil,action);
end;

procedure TdmGeneral.qryBeforeDelete(DataSet: TDataSet);
begin
  hasil:=GetLogDel(DataSet,Action);
end;

procedure TdmGeneral.qryBeforePost(DataSet: TDataSet);
begin
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
  hasil:=GetLog(DataSet,Action);
end;

procedure TdmGeneral.qryCariAbsenAfter(DataSet: TDataSet);
begin
  InsertLog('Absen',hasil,action);
end;

procedure TdmGeneral.qryCounterHdAfter(DataSet: TDataSet);
begin
  InsertLog('CounterHd',hasil,action);
end;

procedure TdmGeneral.qryDepartemenAfter(DataSet: TDataSet);
begin
  InsertLog('Departemen',hasil,action);
end;

procedure TdmGeneral.qryDivisiAfter(DataSet: TDataSet);
begin
  InsertLog('Divisi',hasil,action);
end;

procedure TdmGeneral.qryGroupGajiAfter(DataSet: TDataSet);
begin
  InsertLog('GroupGaji',hasil,action);
end;

procedure TdmGeneral.qryGroupShiftDt1After(DataSet: TDataSet);
begin
  InsertLog('GroupShiftDt1',hasil,action);
end;

procedure TdmGeneral.qryGroupShiftDt1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('modevalidasi').asstring:='0';
end;

procedure TdmGeneral.qryGroupShiftDt2After(DataSet: TDataSet);
begin
  InsertLog('GroupShiftDt2',hasil,action);
end;

procedure TdmGeneral.qryGroupShiftDt2NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('spl').asstring:='1';
end;

procedure TdmGeneral.qryGroupShiftHdAfter(DataSet: TDataSet);
begin
  InsertLog('GroupShiftHd',hasil,action);
end;

procedure TdmGeneral.qryJabatanAfter(DataSet: TDataSet);
begin
  InsertLog('Jabatan',hasil,action);
end;

procedure TdmGeneral.qryJabatanBeforePost(DataSet: TDataSet);
begin
  hasil:=GetLog(DataSet,Action);
  if qryJabatan.State in [dsInsert] then
  begin
    with dmgeneral.qryjabatan do
    begin
      FindField('statuslevel').Asstring:=AJabatanLevel;
      FindField('namajabatan').Asstring:='Jabatan Baru';
      FindField('jmlpegawai').Asstring:='0';
      FindField('deskripsi').Asstring:='';
    end;
  end;
end;

procedure TdmGeneral.qryKeahlianAfter(DataSet: TDataSet);
begin
  InsertLog('Keahlian',hasil,action);
end;

procedure TdmGeneral.qryKodeAbsenAbsenManualAfter(DataSet: TDataSet);
begin
  InsertLog('KodeAbsen',hasil,action);
end;

procedure TdmGeneral.qryKodeAbsenAfter(DataSet: TDataSet);
begin
  InsertLog('KodeAbsen',hasil,action);
end;

procedure TdmGeneral.qryKodeAbsenBeforeDelete(DataSet: TDataSet);
begin
  hasil:=GetLogDel(DataSet,Action);
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGeneral.qryKodeAbsenNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('flagchecklock').asstring:='1';
  DataSet.FieldByName('flagfix').asstring:='0';
  DataSet.FieldByName('flagAbsenManual').asstring:='0';
end;

procedure TdmGeneral.qryKodeAbsenTransaksiAfter(DataSet: TDataSet);
begin
  InsertLog('KodeAbsen',hasil,action);
end;

procedure TdmGeneral.qryLiburAfter(DataSet: TDataSet);
begin
  InsertLog('Libur',hasil,action);
end;

procedure TdmGeneral.qryMasterJamKerjaAfter(DataSet: TDataSet);
begin
  InsertLog('MasterJamKerja',hasil,action);
end;

procedure TdmGeneral.qryOutSourcingAfter(DataSet: TDataSet);
begin
  InsertLog('OutSourcing',hasil,action);
end;

procedure TdmGeneral.qryPayrollDetailAfter(DataSet: TDataSet);
begin
  InsertLog('PayrollDetail',hasil,action);
end;

procedure TdmGeneral.qryPayrollTypeAfter(DataSet: TDataSet);
begin
  InsertLog('PayrollType',hasil,action);
end;

procedure TdmGeneral.qryPegawaiAfterDelete(DataSet: TDataSet);
begin
  InsertLog('Pegawai',hasil,action);
end;

procedure TdmGeneral.qryPegawaiAfterPost(DataSet: TDataSet);
begin
  InsertLog('Pegawai',hasil,action);
  if AFlagBaru=true then
  begin
     qryspGenerateCounter.Close;
     qryspGenerateCounter.Parameters[0].Value:='TENAGAKERJA';
     qryspGenerateCounter.Parameters[1].Value:=date;
     qryspGenerateCounter.Parameters[2].Value:='';
     qryspGenerateCounter.ExecSQL;
     AFlagTombol:=false;
     AFlagBaru:=false;
  end;
end;

procedure TdmGeneral.qryPegawaiApprovalAfter(DataSet: TDataSet);
begin
  InsertLog('PegawaiApproval',hasil,action);
end;

procedure TdmGeneral.qryPegawaiApprovalNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('flagbolehlongshift').asstring:='1';
  DataSet.FieldByName('flagvalidasilongshift').asstring:='1';
  DataSet.FieldByName('flagapprovelongshift').asstring:='1';
  DataSet.FieldByName('flagbolehterlambat').asstring:='1';
  DataSet.FieldByName('flagvalidasiterlambat').asstring:='1';
  DataSet.FieldByName('flagapproveterlambat').asstring:='1';
  DataSet.FieldByName('flagbolehpulangawal').asstring:='1';
  DataSet.FieldByName('flagvalidasipulangawal').asstring:='1';
  DataSet.FieldByName('flagapprovepulangawal').asstring:='1';
  DataSet.FieldByName('flagbolehmasukkaloalpha').asstring:='1';
  DataSet.FieldByName('flagvalidasimasukkaloalpha').asstring:='1';
  DataSet.FieldByName('flagapprovemasukkaloalpha').asstring:='1';
  DataSet.FieldByName('flagbolehmasuktdkabsenplg').asstring:='1';
  DataSet.FieldByName('flagvalidasimasuktdkabsenplg').asstring:='1';
  DataSet.FieldByName('flagapprovemasuktdkabsenplg').asstring:='1';
end;

procedure TdmGeneral.qryPegawaiBeforeDelete(DataSet: TDataSet);
begin
  hasil:=GetLogDel(DataSet,Action);
  dmgeneral.qryPegawaiApproval.Delete;
end;

procedure TdmGeneral.qryPegawaiBeforePost(DataSet: TDataSet);
begin
{  if DataSet.FieldByName('Nopeg').IsNull then
  begin
    if not(DataSet.FieldByName('tglmasuk').IsNull) then
    begin
      dmshare.qryGetTransactionIdNotDate.Close;
      dmshare.qryGetTransactionIdNotDate.Parameters[0].Value := 'pegawai';
      dmshare.qryGetTransactionIdNotDate.Parameters[1].Value := 'nopeg';
      dmshare.qryGetTransactionIdNotDate.Parameters[2].Value := '';
      dmshare.qryGetTransactionIdNotDate.Parameters[3].Value := 4;
      OpenIfClose(dmshare.qryGetTransactionIdNotDate, False, False);;
      DataSet.FieldByName('nopeg').AsString :=dmshare.qryGetTransactionIdNotDate.Fields[0].AsString;
    end
    else
    begin
      showmessage('Tanggal Masuk Diisi Dulu !!!');
      abort;
    end;
  end;
  if DataSet.FieldByName('barcode').IsNull then
  begin
     DataSet.FieldByName('barcode').asstring:=DataSet.FieldByName('nopeg').asstring;
  end;
 }

  if AFlagTombol then
     AFlagBaru := true
  else
  begin
    if (qryPegawai.FieldByName('NoPeg').IsNull) or (qryPegawai.FieldByName('NoPeg').asstring='') then
       AFlagBaru := true
    else
       AFlagBaru := false;
  end;

  if qryPegawai.State in [dsInsert, dsEdit] then
  begin
    if (AFlagBaru) then
    begin
     qryGenerateCounter.Close;
     qryGenerateCounter.Parameters[0].Value:='TENAGAKERJA';
     qryGenerateCounter.Parameters[1].Value:=date;
     qryGenerateCounter.Parameters[2].Value:='';
     qryGenerateCounter.Open;
     qryPegawai.FieldByName('NoPeg').AsVariant := qryGenerateCounter.FieldByName('GenCounter').Text;
     DataSet.FieldByName('NoPeg').AsVariant := qryGenerateCounter.FieldByName('GenCounter').Text;
    end;
  end;

  // cari di
end;

procedure TdmGeneral.qryPegawaiFotoAfter(DataSet: TDataSet);
begin
  InsertLog('PegawaiFoto',hasil,action);
end;

procedure TdmGeneral.qryPegawaiNewRecord(DataSet: TDataSet);
var
  i:integer;
begin
  DataSet.FieldByName('statusschedule').asstring:='0';
  DataSet.FieldByName('flagKeluar').asstring:='0';
  DataSet.FieldByName('flagproses').asstring:='0';
  DataSet.FieldByName('BloodType').asstring:='O';
  DataSet.FieldByName('sex').asstring:='0';
end;

procedure TdmGeneral.qryPendidikanAfter(DataSet: TDataSet);
begin
  InsertLog('Pendidikan',hasil,action);
end;

procedure TdmGeneral.qryPeriodeGajiDtAfter(DataSet: TDataSet);
begin
  InsertLog('PeridoeGajiDt',hasil,action);
end;

procedure TdmGeneral.qryPeriodeGajiHdAfter(DataSet: TDataSet);
begin
  InsertLog('PeriodeGajiHd',hasil,action);
end;

procedure TdmGeneral.qryPersonValidationAfter(DataSet: TDataSet);
begin
  InsertLog('PersonValidation',hasil,action);
end;

procedure TdmGeneral.qryPerusahaanAfter(DataSet: TDataSet);
begin
  InsertLog('Perusahaan',hasil,action);
end;

procedure TdmGeneral.qryPrevPegawaiActiveAfter(DataSet: TDataSet);
begin
  InsertLog('Pegawai',hasil,action);
end;

procedure TdmGeneral.qryPrevPegawaiAfter(DataSet: TDataSet);
begin
  InsertLog('Pegawai',hasil,action);
end;

procedure TdmGeneral.qryPrevStatusApproveAfter(DataSet: TDataSet);
begin
  InsertLog('StatusApprove',hasil,action);
end;

procedure TdmGeneral.qrySettingGajiNominalAfter(DataSet: TDataSet);
begin
  InsertLog('SettingGajiNominal',hasil,action);
end;

procedure TdmGeneral.qrySettingGajiSyaratAfter(DataSet: TDataSet);
begin
  InsertLog('SettingGajiSyarat',hasil,action);
end;

procedure TdmGeneral.qryStatusKaryawanAfter(DataSet: TDataSet);
begin
  InsertLog('StatusKaryawan',hasil,action);
end;

procedure TdmGeneral.qrySubAssetsAfter(DataSet: TDataSet);
begin
  InsertLog('SubAsset',hasil,action);
end;

procedure TdmGeneral.qrySyaratDtNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('urut').asstring:='0';
  DataSet.FieldByName('modeoperator').asstring:='0';
  qryGetLastNo.Close;
  qryGetLastNo.Parameters[0].Value := DataSet.FieldByName('nosyarat').asstring;
  OpenIfClose(qryGetLastNo, False,False);
  DataSet.FieldByName('ano').AsInteger := qryGetLastNo.Fields[0].AsInteger + 1;

end;

procedure TdmGeneral.qrySyaratHdAfter(DataSet: TDataSet);
begin
  InsertLog('SyaratHd',hasil,action);
end;

procedure TdmGeneral.qrySyaratHdNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('flagterlambat').asstring:='0';
   DataSet.FieldByName('flagsyarat').asstring:='0';
   DataSet.FieldByName('flagexecutequery').asstring:='0';
   DataSet.FieldByName('flagbayarsesuaitglproses').asstring:='1';
   DataSet.FieldByName('statusproses').asstring:='0';
   DataSet.FieldByName('terlambat1').asstring:='0';
   DataSet.FieldByName('terlambat2').asstring:='0';
   DataSet.FieldByName('qtyhari').asstring:='0';

end;

procedure TdmGeneral.qryTransaksiPayrollDtAfter(DataSet: TDataSet);
begin
  InsertLog('TransaksiPayrollDt',hasil,action);
end;

procedure TdmGeneral.qryTransaksiPayrollDtNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('koefisien').AsCurrency:=1;
end;

procedure TdmGeneral.qryTransaksiPayrollHdAfter(DataSet: TDataSet);
begin
  InsertLog('TransaksiPayrollHd',hasil,action);
end;

procedure TdmGeneral.qryTransaksiPayrollHdNewRecord(DataSet: TDataSet);
begin
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('tglpayroll').AsDateTime:=dmGlobal.SettingGlobal.ServerDateTime;
    DataSet.FieldByName('total').AsCurrency:=0;
    DataSet.FieldByName('counterprint').AsCurrency:=0;
    DataSet.FieldByName('statusapprove').AsString:='1';
    DataSet.FieldByName('status').AsString:='0';
  end;
end;

procedure TdmGeneral.cgvPrevPegawaiActiveStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if (ARecord.Values[GetColumnByFieldName('tglkeluar').Index]<>NULL) and (StartOfTheMonth(ARecord.Values[GetColumnByFieldName('tglkeluar').Index])=startofthemonth(periode)) then
        AStyle := dmGlobal.stRedLight;
  end;
end;

end.



