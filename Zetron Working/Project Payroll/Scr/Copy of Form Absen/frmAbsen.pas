unit frmAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxImage, cxDBEdit, DB, ADODB, DateUtils, StdCtrls, Buttons, cxMemo, ShellApi,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxSkinsCore,
  dxSkinsDefaultPainters,Inifiles,untIvEncryption, OleCtrls, ZKFPEngXControl_TLB,
  ComCtrls, DBCtrls, cxMaskEdit, cxSpinEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTimeEdit,
  untIvPositionDevExpress, untIvPositionStandard, untIvInstanceControl,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxImageComboBox, math, cxCalc, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

const
  LOCAL_DAY_IN_IND: array[1..7] of string = ('Minggu', 'Senin', 'Selasa',
    'Rabu', 'Kamis', 'Jumat', 'Sabtu');

  AUSER='0';
  AFINGER='1';
  AMANUAL='2';

  MSG_PEGAWAI_MASUK='Anda Masuk ';
  MSG_PEGAWAI_MASUK_LEMBUR='Anda Masuk Lembur ';
  MSG_PEGAWAI_PULANG='Anda Pulang ';
  MSG_PEGAWAI_PULANG_LEMBUR='Anda Pulang Lembur ';
  MSG_PEGAWAI_TIDAK_BOLEH_LONGSHIFT_PAKAI_SPL='Anda Tidak Boleh Long Shift Kalo Mau Masuk Pakai SPL !!!';
  MSG_PEGAWAI_TIDAK_TERDAFTAR='Anda Tidak Terdaftar !!!';
  MSG_PEGAWAI_VERFIKASI_GAGAL='Verifikasi Gagal ';
  MSG_PEGAWAI_TIDAK_PADA_RANGE_ABSEN='Anda Absen Tidak Pada Range Absen Pukul ';
  MSG_PEGAWAI_TIDAK_DISCHEDULE_MASUK='Anda Tidak Di Schedulekan Masuk !!! ';
  MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN='Anda Tidak Berhasil Absen !!!';
  MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT='Anda Tidak Boleh Long Shift !!!';
  MSG_PEGAWAI_LONG_SHIFT='Anda Masuk Long Shift !!!';
  MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_ABSEN_PULANG='Anda Tidak Boleh Masuk Karena Kemarin Tidak Absen Pulang !!!';
  MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG='Anda Kemarin Tidak Absen Pulang !!!';
  MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_MASUK='Anda Tidak Boleh Masuk Karena Kemarin Tidak Masuk !!!';
  MSG_PEGAWAI_KEMARIN_TIDAK_MASUK='Anda Karena Kemarin Tidak Masuk !!!';
  MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT='Anda Tidak Boleh Terlambat !!!';
  MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL='Anda Tidak Boleh Pulang Awal !!!';
  MSG_PEGAWAI_SUDAH_TERDAFTAR='Anda Sudah Terdaftar ';
  MSG_PEGAWAI_TERLAMBAT='Anda Terlambat ';
  MSG_PEGAWAI_TERLAMBAT_LEMBUR='Anda Terlambat Masuk Lembur ';
  MSG_PEGAWAI_PULANG_CEPAT='Anda Pulang Lebih Cepat ';
  MSG_PEGAWAI_NIK_BELUM_DIMASUKKAN='Masukkan NIK Pegawai yang mau diabsen !!! ';
  MSG_PEGAWAI_SUDAH_ABSEN_SHIFT_INI='Pegawai Sudah Absen Shift Ini !!! ';
  MSG_NONE='';

  AUTHORISASI_BELUM=0;
  AUTHORISASI_PEGAWAI=1;
  AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG=2;
  AUTHORISASI_BOLEH_MASUK_KALO_ALPHA=3;
  AUTHORISASI_LONGSHIFT=4;
  AUTHORISASI_TERLAMBAT=5;
  AUTHORISASI_PULANGAWAL=6;

  MSG_SUPERVISOR_TIDAK_TERDAFTAR='Supervisor Tidak Terdaftar !!!';
  MSG_SUPERVISOR_PERSONALIA='Otorisasi Personalia !!';
  MSG_SUPERVISOR_OTORISASI='Otorisasi Supervisor ';
  MSG_SUPERVISOR_OTORISASI_GAGAL='Otorisasi Supervisor Gagal ';
  MSG_SUPERVISOR_OTORISASI_BERHASIL='Otorisasi Supervisor Berhasil ';
  MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL='Otorisasi Personalia Berhasil ';
  MSG_SUPERVISOR_BUKAN_SUPERVISOR='Bukan Supervisor !!!';

type
  TfmAbsen = class(TForm)
    pnlTop: TPanel;
    pnlLeft: TPanel;
    dsFoto: TDataSource;
    qryFoto: TZQuery;
    qryLembur: TZQuery;
    qryLock: TZQuery;
    qryInsert: TZQuery;
    qryGetDateTime: TZQuery;
    qrySetFlagApprove: TZQuery;
    qryKemarin: TZQuery;
    qryLibur: TZQuery;
    qrySetup: TZQuery;
    StatusBar1: TStatusBar;
    qrySupervisor: TZQuery;
    qryCekLongShift: TZQuery;
    qrySupervisorValidate: TZQuery;
    lTimer: TLabel;
    dsPegawai: TDataSource;
    dsSchedule: TDataSource;
    cgvAbsenToday: TcxGridDBTableView;
    cgAbsenTodayLevel1: TcxGridLevel;
    cgAbsenToday: TcxGrid;
    pnlBiodata: TPanel;
    lblNoPegawai: TLabel;
    Label1: TLabel;
    lblNama: TLabel;
    Label2: TLabel;
    dbeNama: TDBText;
    lblPerusahan: TLabel;
    Label6: TLabel;
    dbeNamaPerusahaan: TDBText;
    lblDivisi: TLabel;
    Label5: TLabel;
    dbeNamaDivisi: TDBText;
    lblDepartemen: TLabel;
    Label4: TLabel;
    dbeNamaDepartment: TDBText;
    lblOutsourcing: TLabel;
    Label7: TLabel;
    dbeNamaOutsourcing: TDBText;
    lblStatus: TLabel;
    Label3: TLabel;
    dbeNamaStatus: TDBText;
    dbeFoto: TcxDBImage;
    pnlAbsen: TPanel;
    lblJamAbsen: TLabel;
    Label8: TLabel;
    lblGroupShift: TLabel;
    Label9: TLabel;
    dbeNamaGroupShift: TDBText;
    lblShift: TLabel;
    Label10: TLabel;
    dbeShift: TDBText;
    lblJamMasuk: TLabel;
    Label14: TLabel;
    dbeDutyOn: TDBText;
    lblJamPulang: TLabel;
    Label13: TLabel;
    dbeDutyOff: TDBText;
    lblKeterangan: TLabel;
    qryPrevAbsensToday: TZQuery;
    dsPrevAbsensToday: TDataSource;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    qrySelect: TZQuery;
    qryStatusAbsen: TZQuery;
    qryStatusAbsenNotOK: TZQuery;
    qryStatusAbsenOK: TZQuery;
    tmTimer: TTimer;
    qryUpdateAbsen: TZQuery;
    qryPegawai: TZQuery;
    qryCekPegawai: TZQuery;
    dsCekPegawai: TDataSource;
    lblNoPeg: TDBText;
    cxStyleRepository1: TcxStyleRepository;
    stRedLight: TcxStyle;
    stRed: TcxStyle;
    stGreenLight: TcxStyle;
    stGreen: TcxStyle;
    stYellowLight: TcxStyle;
    stYellow: TcxStyle;
    stPurpleLight: TcxStyle;
    stPurple: TcxStyle;
    stOrange: TcxStyle;
    stOrangeLight: TcxStyle;
    stSilver: TcxStyle;
    stSilverLight: TcxStyle;
    dbeNoPeg: TcxTextEdit;
    MKeterangan: TcxMemo;
    dsLembur: TDataSource;
    lblJamAbsenValue: TLabel;
    qrySchedullingTerakhir: TZQuery;
    qryStatusAbsenTerakhirSchedule: TZQuery;
    qryStatusAbsenTerakhirAutomatic: TZQuery;
    qryStatusAbsenTerakhir: TZQuery;
    qryUpdateFlagApproveMasuk: TZQuery;
    qryUpdateFlagApproveKeluar: TZQuery;
    qryLemburTidakSchedule: TZQuery;
    cgvAbsenTodaynopeg: TcxGridDBColumn;
    cgvAbsenTodaynama: TcxGridDBColumn;
    cgvAbsenTodaynamadepartemen: TcxGridDBColumn;
    cgvAbsenTodaynamadivisi: TcxGridDBColumn;
    cgvAbsenTodaynamagroupshift: TcxGridDBColumn;
    cgvAbsenTodaynamajabatan: TcxGridDBColumn;
    cgvAbsenTodayketabsen: TcxGridDBColumn;
    cgvAbsenTodaykodeabsen: TcxGridDBColumn;
    cgvAbsenTodayketerangan: TcxGridDBColumn;
    cgvAbsenTodaymasuk1: TcxGridDBColumn;
    cgvAbsenTodaykeluar1: TcxGridDBColumn;
    cgvAbsenTodayterlambat: TcxGridDBColumn;
    cgvAbsenTodaypulangawal: TcxGridDBColumn;
    procedure dsLemburDataChange(Sender: TObject; Field: TField);
    procedure dbeNoPegKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cgvAbsenTodayStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
      ATemplate: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tmTimerTimer(Sender: TObject);

  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;
    procedure Hapus;
    procedure masukdata(ATglAbsen,AJamAbsen:TDatetime;AStatus:integer;AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift:string);
    function gabungtanggal(Atime: tdatetime; AHariIni: ttime): tdatetime;
    function HilangDetik(AHariIni: ttime): tdatetime;
    function ubahmenittojam(AJumMenit:integer):string;
    function timetostring(Ajummenit:integer):string;
  public
    { Public declarations }
    function IsAllDatasetAlreadyPost(AForm: TForm): boolean;
    class procedure ExecuteForm;
  private
    procedure absen(APegawaiid:string;var ASupervisor:string;AModeInput:string);
    procedure inisialisasifinger;
    function IsSupervisor(const AEmployeeId: string): boolean;
    procedure tampilpesan(AMessagePegawai, AMessageSupervisor:string;AMessageok:boolean);
  end;


var
  fmAbsen: TfmAbsen;
  counter,tmb: integer;
  AHariIni,AJamAbsen,AWaktu,AKemarin,AJamKerjaKemarin,AJamKerjaHariIni:TDatetime;
  AFlagBolehTerlambat,AFlagValidasiTerlambat,AFlagApproveTerlambat:string[1];
  AFlagBolehLongShift,AFlagValidasiLongShift,AFlagApproveLongShift:string[1];
  AFlagBolehPulangAwal,AFlagValidasiPulangAwal,AFlagApprovePulangAwal:string[1];
  AFlagBolehMasukKaloAlpha,AFlagValidasiMasukKaloAlpha,AFlagApproveMasukKaloAlpha:string[1];
  AFlagBolehMasukTdkAbsenPlg,AFlagValidasiMasukTdkAbsenPlg,AFlagApproveMasukTdkAbsenPlg:string[1];
  AModeLongShift,AModeLembur,AModeAlatValidasi,AStatusSchedule:string[1];
  AStatus,ATerlambat,ALembur,APulangAwal,ATerdekatHariini,ATerdekatKemarin:integer;
  AHour,AMinute,ASecond,AMilisecond:word;
  AKodeGroupShiftId,AShift:string;
  AJumlahMinimum:integer;
  // load setup
  ADefaultKodeAbsen:string;
  ADefaultKodeSetengahHari:string;
  ADefaultKodeAlpha:string;
  AFlagSetengahHari:string;
  ADefaultInputAbsen:string;
  ACounterSalahPegawai:integer;
  ACounterSalahSupervisor:integer;
  AJumlahSidik:integer;
  ADefaultMasukHariLibur:string;
  AJabatanSupervisor:string;
  AJumlahOtorisasi:integer;
  AFlagLongShiftOtorisasi:string;
  APegawaiid:string;
  AOK:boolean;
  ACekOK:boolean;
  AModeValidasi:integer;
  ASupervisor:string;
  AState:integer;
implementation

uses dtmglobal, untType, untProcedure;

//uses
//  dwlcore;

{$R *.dfm}
{ TfmAbsen }

procedure LockWindows(disable: integer);
var
 hTaskBar, hStartButton, hProgman: HWND;
begin
  // disables desktop items
 { wlDisableItem(wlTaskTray,disable);
  wlDisableItem(wlDesktop,disable);
  wlDisableItem(wlTaskLinks,disable);
  wlDisableItem(wlStartbutton,disable);

  // find handles for task bar and start button
  //hTaskBar     := FindWindow('Shell_TrayWnd',nil);
  hTaskBar     := FindWindowEx(0, 0, 'Shell_TrayWnd',nil);
  hStartButton := FindWindowEx(hTaskBar, 0, 'Button',nil);
  //hProgman     := FindWindow('Progman',nil);
  hProgman     := FindWindowEx(0, 0, 'Progman',nil);


  wlDisableKey(0,0,MOD_WIN,disable);              // disables all WIN keys
  wlDisableKey(0,VK_ESCAPE, MOD_CONTROL,disable);
  wlDisableKey(0,VK_F4, MOD_ALT,disable);
  // wlDisableKey(0,VK_TAB, MOD_ALT,disable);
  // wlDisableKey(0,VK_ESCAPE, MOD_ALT,disable);

  // disables all keys for program manager (desktop)
  if hProgman > 0 then
    wlDisableKey(hProgman,0,MOD_ALL,disable);

  // disables all keys (mouse buttons included) for task bar
  if hTaskBar > 0 then
    wlDisableKey(hTaskBar,0, MOD_ALL,disable);

 { statement above includes all following "disables"
    // disables start button
    wlDisableKey(hStartButton,VK_LBUTTON, MOD_ALL,disable);
    wlDisableKey(hStartButton,VK_RBUTTON, MOD_ALL,disable);

    wlDisableKey(hTaskBar,0, MOD_ALT,disable);
    wlDisableKey(hTaskBar,VK_F3, MOD_ALL,disable);
    wlDisableKey(hTaskBar,VK_RBUTTON,MOD_ALL,disable);
    wlDisableKey(hTaskBar,VK_APPS, MOD_ALL,disable);
  }

  //if wlIsGinaInstalled = 1 then          // only if dwlgina is installed
  //  wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,disable); // disables Ctrl+Alt+Del
end;

procedure TfmAbsen.masukdata(ATglAbsen,AJamAbsen:TDatetime;AStatus:integer;AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift:string);
begin
  qryInsert.Close;
  qryInsert.Params[0].value:=ATglAbsen;
  qryInsert.Params[1].value:=AKodeGroupShiftId;
  qryInsert.Params[2].value:=AShift;
  qryInsert.Params[3].value:=APegawaiid;
  qryInsert.Open;

  if not(qryInsert.eof) then
    qryInsert.Edit
  else
  begin
    qryInsert.Insert;
    qryInsert.FieldByName('flagupdate').asstring:='0';
  end;
  qryInsert.FieldByName('tgl').asdatetime:=AtglAbsen;
  qryInsert.FieldByName('pegawaiid').asstring:=APegawaiid;
  qryInsert.FieldByName('status').asinteger:=AStatus;
  if AStatus=1 then
  begin
    qryInsert.FieldByName('masuk1').asdatetime:=AJamAbsen;
    qryInsert.FieldByName('m1').asstring:=AModeInput;
    qryInsert.FieldByName('terlambat').asinteger:=ATerlambat;
    qryInsert.FieldByName('statusabsen').asstring:='0';
    qryInsert.FieldByName('modemasuk').asstring:='1';
    qryInsert.FieldByName('modekeluar').asstring:='0';
  end
  else
  begin
    qryInsert.FieldByName('keluar1').asdatetime:=AJamAbsen;
    qryInsert.FieldByName('k1').asstring:=AModeInput;
    qryInsert.FieldByName('pulangawal').asinteger:=APulangAwal;
    qryInsert.FieldByName('statusabsen').asstring:='1';
    qryInsert.FieldByName('modemasuk').asstring:='0';
    qryInsert.FieldByName('modekeluar').asstring:='1';
  end;
  qryInsert.FieldByName('noreg').asstring:=qryPegawai.FieldByName('noreg').asstring;

  qryInsert.FieldByName('kodegroupshiftid').asstring:=AKodeGroupShiftId;
  qryInsert.FieldByName('shift').asstring:=AShift;
  qryInsert.FieldByName('KodeAbsen').asstring:=AKodeAbsen;
  if ASupervisor<>'' then
    qryInsert.FieldByName('Employeeid').asstring:=ASupervisor;
  qryInsert.FieldByName('flagprosesgaji').asstring:='0';
  qryInsert.Post;

  // Refresh Grid
  qryPrevAbsensToday.Params[0].Value:=dmglobal.SettingGlobal.ServerDateTime;
  qryPrevAbsensToday.Refresh;
  qryPrevAbsensToday.Locate('pegawaiid',APegawaiid,[lopartialkey]);

  cgvabsentoday.DataController.Groups.FullExpand;

end;

function timetostring(Ajummenit:integer):string;
begin

end;


procedure TfmAbsen.absen(APegawaiid:string;var ASupervisor:string;AModeInput:string);
var
  AJummenit:integer;
  AKodeAbsen:string;
  ACekStatusSchedule:boolean;
  ATglTdkMasuk:tdatetime;
begin
  // inisialisasi
  AKodeAbsen:=ADefaultKodeAbsen;
  AStatusSchedule:=qryPegawai.FieldByName('StatusSchedule').asstring;
  ATerlambat:=MinutesBetween(AHariIni,AHariIni);
  APulangAwal:=MinutesBetween(AHariIni,AHariIni);
  ALembur:=MinutesBetween(AHariIni,AHariIni);
  ACekStatusSchedule:=False;
  ACekOK:=False;
  Aok:=false;

  AFlagBolehTerlambat:=qryPegawai.FieldByName('FlagBolehTerlambat').asstring;
  AFlagValidasiTerlambat:=qryPegawai.FieldByName('FlagValidasiTerlambat').asstring;
  AFlagApproveTerlambat:=qryPegawai.FieldByName('FlagApproveTerlambat').asstring;

  AFlagBolehLongShift:=qryPegawai.FieldByName('FlagBolehLongShift').asstring;
  AFlagValidasiLongShift:=qryPegawai.FieldByName('FlagValidasiLongShift').asstring;
  AFlagApproveLongShift:=qryPegawai.FieldByName('FlagApproveLongShift').asstring;

  AFlagBolehPulangAwal:=qryPegawai.FieldByName('FlagBolehPulangAwal').asstring;
  AFlagValidasiPulangAwal:=qryPegawai.FieldByName('FlagValidasiPulangAwal').asstring;
  AFlagApprovePulangAwal:=qryPegawai.FieldByName('FlagApprovePulangAwal').asstring;

  AFlagBolehMasukKaloAlpha:=qryPegawai.FieldByName('FlagBolehMasukKaloAlpha').asstring;
  AFlagValidasiMasukKaloAlpha:=qryPegawai.FieldByName('FlagValidasiMasukKaloAlpha').asstring;
  AFlagApproveMasukKaloAlpha:=qryPegawai.FieldByName('FlagApproveMasukKaloAlpha').asstring;

  AFlagBolehMasukTdkAbsenPlg:=qryPegawai.FieldByName('FlagBolehMasukTdkAbsenPlg').asstring;
  AFlagValidasiMasukTdkAbsenPlg:=qryPegawai.FieldByName('FlagValidasiMasukTdkAbsenPlg').asstring;
  AFlagApproveMasukTdkAbsenPlg:=qryPegawai.FieldByName('FlagApproveMasukTdkAbsenPlg').asstring;

  // cek apakah dischedulekan hari ini dan jam ini
  if AStatusSchedule<>'2' then
  begin
    qrySelect.close;
    qrySelect.Params[0].Value:=AHariIni;
    qrySelect.Params[1].Value:=APegawaiid;
    qrySelect.Params[2].Value:=AJamAbsen;
    qrySelect.open;
    if qrySelect.RecordCount=0 then
    begin
//      showmessage(datetimetostr(AHariIni));
      qryLemburTidakSchedule.close;
      qryLemburTidakSchedule.Params[0].Value:=AHariIni;
      qryLemburTidakSchedule.Params[1].Value:=APegawaiid;
      qryLemburTidakSchedule.Open;
      if qryLemburTidakSchedule.RecordCount=0 then
      begin
        ACekOK:=False;
        ACekStatusSchedule:=False;
        tampilpesan(MSG_PEGAWAI_TIDAK_DISCHEDULE_MASUK,MSG_NONE,False);
      end
      else
      begin
        AModeLembur:='1';
        ACekOK:=True;
        ACekStatusSchedule:=True;
      end;
    end
    else
    begin
      AModeAlatValidasi:=qrySelect.FieldByName('modevalidasi').asstring;
      ACekOK:=True;
      ACekStatusSchedule:=True;
    end;
  end;

  if (ACekStatusSchedule=true) and (AModeLembur='0') then
  begin
    // cek apakah sudah absen hari ini
    qryStatusAbsen.close;
    qryStatusAbsen.Params[0].Value:=AHariIni;
    qryStatusAbsen.Params[1].Value:=APegawaiid;
    qryStatusAbsen.Open;

    if qryStatusAbsen.RecordCount>0 then
    begin
      // kalau ada cari hari ini yang absennya not ok

      AWaktu:=AHariIni;

      qryStatusAbsenNotOK.close;
      qryStatusAbsenNotOK.Params[0].Value:=AWaktu;
      qryStatusAbsenNotOK.Params[1].Value:=APegawaiid;
      qryStatusAbsenNotOK.Open;

      if qryStatusAbsenNotOK.RecordCount>0 then
      begin
        AWaktu:=qryStatusAbsenNotOK.FieldByName('tgl').AsDateTime;
        AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime);
        AJamAbsen:=qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime;
        AStatus:=2;
        ACekOK:=true;
      end
      else
      begin
        qryStatusAbsenOK.close;
        qryStatusAbsenOK.Params[0].Value:=AWaktu;
        qryStatusAbsenOK.Params[1].Value:=APegawaiid;
        qryStatusAbsenOK.Open;
        if qryStatusAbsenOK.RecordCount>0 then
        begin
          ACekStatusSchedule:=true;
          if qryPegawai.FieldByName('statusschedule').asstring='0' then
          begin
            tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONGSHIFT_PAKAI_SPL,MSG_NONE,False);
            ACekOK:=False;
            ACekStatusSchedule:=False;
          end
          else
          begin
            ACekOK:=True;
            ACekStatusSchedule:=True;
          end;
          if ACekStatusSchedule=true then
          begin
            if AFlagBolehLongShift='1' then
            begin
              if (AFlagValidasiLongShift='1') then
              begin
                if AModeAlatValidasi='1' then
                begin
                   if AFlagApproveLongShift='1' then
                   begin
                     AModeLongShift:='1';
                     AWaktu:=AHariIni;
                     AJamAbsen:=AHariIni;
                     AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenOK.FieldByName('keluar1').AsDateTime);
                     AStatus:=1;
                     Aok:=true;
                     ACekOK:=true;
                     tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL,True);
                   end
                   else
                   begin
                     ACekok:=false;
                     Aok:=false;
                     tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_PERSONALIA,false);
                   end;
                end
                else
                begin
                  if AState<>AUTHORISASI_LONGSHIFT then
                  begin
                   AState:=AUTHORISASI_LONGSHIFT;

                   AModeValidasi:=1;
                   AModeLongShift:='1';
                   tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI,false);
                   Aok:=false;
                  end
                  else
                  begin
                    if AState=AUTHORISASI_LONGSHIFT then
                    begin
                     if ASupervisor<>'' then
                     begin
                      AModeLongShift:='1';
                      AWaktu:=AHariIni;
                      AJamAbsen:=AHariIni;
                      AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenOK.FieldByName('keluar1').AsDateTime);
                      AStatus:=1;
                      Aok:=true;
                      ACekOK:=true;
                     end
                     else
                     begin
                      ACekok:=false;
                      Aok:=false;
                     end;
                    end
                  end;
                end;
              end
              else
              begin
                AModeLongShift:='1';
                AWaktu:=AHariIni;
                AJamAbsen:=AHariIni;
                AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenOK.FieldByName('keluar1').AsDateTime);
                AStatus:=1;
                ACekOk:=true;
                Aok:=true
              end;
            end
            else
            begin
              Aok:=false;
              tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_NONE,false);
            end;
          end
          else
          begin
            Aok:=false;
            tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_NONE,false);
          end;
        end
      end;
    end
    else
    begin
      // cari data kemarin
      qryStatusAbsenNotOK.close;
      qryStatusAbsenNotOK.Params[0].Value:=AKemarin;
      qryStatusAbsenNotOK.Params[1].Value:=APegawaiid;
      qryStatusAbsenNotOK.Open;

      if (qryStatusAbsenNotOK.recordcount=0) or (qryStatusAbsenNotOK.FieldByName('overday').AsString='0') then
      begin
         if qryStatusAbsenNotOK.recordcount=0 then
           AJummenit:=AJumlahMinimum+1
         else
           AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime);

         ACekStatusSchedule:=false;
         if (AStatusSchedule='1') then
         begin
           // cari data scheduling
           qrySchedullingTerakhir.close;
           qrySchedullingTerakhir.Params[0].Value:=APegawaiid;
           qrySchedullingTerakhir.Params[1].Value:=AHariIni;
           qrySchedullingTerakhir.Open;
           if qrySchedullingTerakhir.RecordCount>0 then
           begin
             ATglTdkMasuk:=qrySchedullingTerakhir.FieldByName('tglschedule').asdatetime;
             qryStatusAbsenTerakhirSchedule.close;
             qryStatusAbsenTerakhirSchedule.Params[0].Value:=qrySchedullingTerakhir.fieldbyname('tglschedule').asdatetime;
             qryStatusAbsenTerakhirSchedule.Params[1].Value:=APegawaiid;
             qryStatusAbsenTerakhirSchedule.Params[2].Value:=qrySchedullingTerakhir.fieldbyname('shift').asstring;
             qryStatusAbsenTerakhirSchedule.Open;
             if qryStatusAbsenTerakhirSchedule.RecordCount>0 then
             begin
{                if qryStatusAbsenTerakhirSchedule.fieldbyname('kodeabsen').asstring<>ADefaultKodeAlpha then
                begin}
                  AWaktu:=AHariIni;
                  AJamAbsen:=AHariIni;
                  AStatus:=1;
                  ACekOK:=true;
                  AOK:=true;
                  ACekStatusSchedule:=true;
//                end
//                else
//                begin
//                  ACekStatusSchedule:=false;
//                end;
             end
             else
             begin
               ACekStatusSchedule:=False;
             end;
           end;
         end
         else
         begin
           qryStatusAbsenTerakhirAutomatic.Close;
           qryStatusAbsenTerakhirAutomatic.Params[0].Value:=AHariIni;
           qryStatusAbsenTerakhirAutomatic.Params[1].Value:=APegawaiid;
           qryStatusAbsenTerakhirAutomatic.Open;
           if qryStatusAbsenTerakhirAutomatic.RecordCount>0 then
           begin
              if qryStatusAbsenTerakhirAutomatic.FieldByName('kodeabsen').asstring<>ADefaultKodeAlpha then
              begin
                AWaktu:=AHariIni;
                AJamAbsen:=AHariIni;
                AStatus:=1;
                ACekOK:=true;
                AOK:=true;
                ACekStatusSchedule:=True;
              end
              else
              begin
                ATglTdkMasuk:=qryStatusAbsenTerakhirAutomatic.FieldByName('tgl').asdatetime;
                ACekStatusSchedule:=False;
              end;
           end
           else
           begin
             ACekStatusSchedule:=False;
           end;
         end;
         if ACekStatusSchedule=False then
         begin
           // validasi Kemarin Tidak Masuk
           if AFlagBolehMasukKaloAlpha='1' then
           begin
             if (AFlagValidasiMasukKaloAlpha='1') then
             begin
               if AModeAlatValidasi='0' then
               begin
                 if AFlagApproveMasukKaloAlpha='1' then
                 begin
                  AWaktu:=AHariIni;
                  AJamAbsen:=AHariIni;
                  AStatus:=1;
                  ACekOK:=true;
                  Aok:=true;
                  tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL,True);
                 end
                 else
                 begin
                   ACekok:=false;
                   Aok:=false;
                   tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_MASUK+'('+datetimetostr(ATglTdkMasuk)+')',MSG_SUPERVISOR_PERSONALIA,false);
                 end;
               end
               else
               begin
                 if AState<>AUTHORISASI_BOLEH_MASUK_KALO_ALPHA then
                 begin
                  AState:=AUTHORISASI_BOLEH_MASUK_KALO_ALPHA;
                  AModeValidasi:=1;
                  tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_OTORISASI,false);
                  Aok:=false;
                 end
                 else
                 begin
                   if AState=AUTHORISASI_BOLEH_MASUK_KALO_ALPHA then
                   begin
                    if ASupervisor<>'' then
                    begin
                     AWaktu:=AHariIni;
                     AJamAbsen:=AHariIni;
                     AStatus:=1;
                     ACekOK:=true;
                     Aok:=true;
                    end
                    else
                    begin
                     ACekok:=false;
                     Aok:=false;
                    end;
                   end
                 end;
               end;
             end
             else
             begin
               AWaktu:=AHariIni;
               AJamAbsen:=AHariIni;
               AStatus:=1;
               ACekOK:=true;
               Aok:=true;
             end;
           end
           else
           begin
             ACekok:=false;
             Aok:=false;
           end;
        end;
         // masukkan jam sekarang
      end
      else
      begin
        if qryStatusAbsenNotOK.FieldByName('overday').asstring='1' then
        begin
          AJummenit:=AJumlahMinimum+1;
          AWaktu:=AKemarin;
          AJamAbsen:=qryStatusAbsenNotOK.fieldbyname('masuk1').asdatetime;
          AStatus:=2;
          ACekOK:=true;
        end
        else
        begin
          if AFlagBolehMasukTdkAbsenPlg='1' then
          begin
            if AFlagValidasiMasukTdkAbsenPlg='1' then
            begin
              if AModeAlatValidasi='0' then
              begin
                if AFlagApproveMasukTdkAbsenPlg='1' then
                begin
                  AWaktu:=AHariIni;
                  AJamAbsen:=AHariIni;
                  AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime);
                  AStatus:=1;
                  Aok:=true;
                  ACekOK:=true;
                  tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL,true);
                end
                else
                begin
                  ACekok:=false;
                  Aok:=false;
                  tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_PERSONALIA,false);
                end;
              end
              else
              begin
                if AState<>AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG then
                begin
                 AState:=AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG;
                 AModeValidasi:=1;
                 tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_OTORISASI,false);
                 Aok:=false;
                end
                else
                begin
                  if AState=AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG then
                  begin
                   if ASupervisor<>'' then
                   begin
                    AWaktu:=AHariIni;
                    AJamAbsen:=AHariIni;
                    AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime);
                    AStatus:=1;
                    Aok:=true;
                    ACekOK:=true;
                   end
                   else
                   begin
                    ACekok:=false;
                    Aok:=false;
                   end;
                  end
                end;
              end;
            end
            else
            begin
              ACekOK:=true
            end;
          end
          else
          begin
            ACekOK:=false;
            tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_ABSEN_PULANG,MSG_NONE,false);
          end;
        end;
      end;
    end;
  end;

  if ACekOK then
  begin
    if AModeLembur='1' then
    begin
      // cek apakah sudah absen hari ini
      qryStatusAbsenTerakhir.close;
      qryStatusAbsenTerakhir.Params[0].Value:=AHariIni;
      qryStatusAbsenTerakhir.Params[1].Value:=APegawaiid;
      qryStatusAbsenTerakhir.Open;

      AStatus:=qryStatusAbsenTerakhir.fieldbyname('status').asinteger;

      if qryStatusAbsenTerakhir.RecordCount>0 then
      begin
        if AStatus=2 then
        begin
          AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenTerakhir.FieldByName('keluar1').AsDateTime);
        end
        else
        begin
          AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenTerakhir.FieldByName('masuk1').AsDateTime);
        end;

        if (AJummenit <  AJumlahMinimum) then
        begin
          if AStatus=2 then
            tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Masuk Jam '+timetostr(qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime),MSG_NONE,True)
          else
            tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Keluar Jam '+timetostr(qryStatusAbsen.FieldByName('keluar1').AsDateTime),MSG_NONE,True);
        end
        else
        begin
          // kalau ada cari hari ini yang absennya not ok
          AWaktu:=AHariIni;
          qryStatusAbsenNotOK.close;
          qryStatusAbsenNotOK.Params[0].Value:=qryStatusAbsenTerakhir.fieldbyname('masuk1').asdatetime;
          qryStatusAbsenNotOK.Params[1].Value:=APegawaiid;
          qryStatusAbsenNotOK.Open;

          if qryStatusAbsenNotOK.RecordCount>0 then
          begin
            AWaktu:=qryStatusAbsenNotOK.FieldByName('tgl').AsDateTime;
            AJamAbsen:=qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime;
      //      showmessage(timetostr(AJamAbsen)+' '+timetostr(qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime)+' '+inttostr(AJumMenit));
            AStatus:=2;
          end
          else
          begin
            AStatus:=1;
            AJummenit:=AJumlahMinimum+1;
          end
        end;


        if AStatus=1 then
        begin
          if (AHariIni<=gabungtanggal(AHariIni,qryLemburTidakSchedule.fieldbyname('jammulai').asdatetime)) then
          begin
            Aok:=true;
            tampilpesan(MSG_PEGAWAI_MASUK_LEMBUR+timetostr(AJamAbsen)+' ( '+timetostr(qryLemburTidakSchedule.fieldbyname('jammulai').asdatetime)+' - '+timetostr(qryLemburTidakSchedule.fieldbyname('jamakhir').asdatetime)+' ) ',MSG_NONE,True);
          end
          else
          begin
            tampilpesan(MSG_PEGAWAI_TERLAMBAT_LEMBUR+' Seharusnya '+timetostr(qryLemburTidakSchedule.fieldbyname('jammulai').asdatetime),MSG_NONE,True);
            qryLemburTidakSchedule.Edit;
            qryLemburTidakSchedule.FieldByName('jammulai').asdatetime:=AHariIni;
            qryLemburTidakSchedule.Post;
            Aok:=true;
          end;
        end
        else
        begin
          if AHariIni<gabungtanggal(AHariIni,qryLemburTidakSchedule.fieldbyname('jamakhir').asdatetime) then
          begin
            tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+' Seharusnya '+timetostr(qryLemburTidakSchedule.fieldbyname('jamakhir').asdatetime),MSG_NONE,True);
            qryLemburTidakSchedule.Edit;
            qryLemburTidakSchedule.FieldByName('jamakhir').asdatetime:=AHariIni;
            qryLemburTidakSchedule.Post;
            Aok:=true;
          end
          else
          begin
            Aok:=true;
            tampilpesan(MSG_PEGAWAI_PULANG_LEMBUR+timetostr(AHariIni),MSG_NONE,True);
          end;
        end;
      end;
    end
    else
    begin
      if ((AModeLongShift='1') and (AStatus=2)) or (AModeLongShift='0') then
      begin
       if (AJummenit <  AJumlahMinimum) then
       begin
          if AStatus=2 then
            tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Masuk Jam '+timetostr(qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime),MSG_NONE,True)
          else
            tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Keluar Jam '+timetostr(qryStatusAbsen.FieldByName('keluar1').AsDateTime),MSG_NONE,True);
       end
       else
       begin
         // kalo nggak
         // showmessage(datetimetostr(AWaktu)+' '+datetimetostr(AJamAbsen));
         qrySelect.close;
         qrySelect.Params[0].Value:=AWaktu;
         qrySelect.Params[1].Value:=APegawaiid;
         qrySelect.Params[2].Value:=AJamAbsen;
         qrySelect.open;

         if not(qrySelect.Eof) then
         begin
           // kalo status masuk
           if AStatus=1 then
           begin
             // cek apakah absen pada periode absen kalo ya teruskan kalo tidak peringati
             if AModeLongShift='0' then
             begin
           //    showmessage(timetostr(AWaktu)+' '+timetostr(gabungtanggal(AWaktu,qrySelect.fieldbyname('jammulaiabsen').asdatetime))+' '+timetostr(gabungtanggal(AWaktu,qrySelect.fieldbyname('jamakhirabsen').asdatetime)));
               if (AJamAbsen>gabungtanggal(AWaktu,qrySelect.fieldbyname('jammulaiabsen').asdatetime)) and (AJamAbsen<gabungtanggal(AHariIni,qrySelect.fieldbyname('jamakhirabsen').asdatetime)) then
               begin
                 if AJamAbsen>gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyon').asdatetime) then
                 begin
                   // terlambat diisi oleh
                   ATerlambat:=MinutesBetween(AJamAbsen,gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyon').asdatetime));
  //                 showmessage(timetostr(AJamAbsen)+' '+timetostr(gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyon').asdatetime))+' '+inttostr(ATerlambat));
                     // kalo nggak longshift lihat toleransi terlambat sudah lewat belum
                   if qrySelect.fieldbyname('toleransiterlambat').asinteger>=Aterlambat then
                   begin
                     tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat)+' !!! Masih dalam Batas Toleransi',MSG_NONE,False);
                     Aok:=true;
                   end
                   else
                   begin
                     // validasi Terlambat
                     if AFlagBolehTerlambat='1' then
                     begin
                       if AFlagValidasiTerlambat='1' then
                       begin
                         if AModeAlatValidasi='0' then
                         begin
                           if AFlagApproveTerlambat='1' then
                           begin
                             Aok:=true;
                             tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL,true);
                           end
                           else
                           begin
                             ACekok:=false;
                             Aok:=false;
                             tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_SUPERVISOR_PERSONALIA,false);
                           end;
                         end
                         else
                         begin
                           if AState<>AUTHORISASI_TERLAMBAT then
                           begin
                            AState:=AUTHORISASI_TERLAMBAT;
                            AModeValidasi:=1;
                            tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_SUPERVISOR_OTORISASI,false);
                            Aok:=false;
                           end
                           else
                           begin
                             if AState=AUTHORISASI_TERLAMBAT then
                             begin
                              if ASupervisor<>'' then
                              begin
                                Aok:=true;
                              end
                              else
                              begin
                               Aok:=false;
                              end;
                             end
                           end;
                         end;
                       end
                       else
                       begin
                         Aok:=true
                       end;
                     end
                     else
                     begin
                       Aok:=false;
                       tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_NONE,false);
                     end;
                   end;
                 end
                 else
                 begin
                    tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_NONE,true);
                    Aok:=true;
                 end;
               end
               else
               begin
                 tampilpesan(MSG_PEGAWAI_TIDAK_PADA_RANGE_ABSEN+TimeToStr(qrySelect.fieldbyname('jammulaiabsen').asdatetime)+' sampai pukul '+TimeToStr(qrySelect.fieldbyname('jamakhirabsen').asdatetime)+'!!!',MSG_NONE,false);
                 Aok:=false;
               end;
             end
             else
             begin
               tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_NONE,true);
               Aok:=true;
             end;
           end
            // kalo status=pulang
           else
           begin
//              showmessage(DateTimeToStr(AHariIni)+' '+datetimetostr(gabungtanggal(AHariIni,qrySelect.FieldByName('jambataslembur').AsDateTime)));
              if CompareDateTime(AHariIni,gabungtanggal(AHariIni,qrySelect.FieldByName('jambataslembur').AsDateTime))=1  then
              begin
                ALembur:=MinutesBetween(AHariIni,gabungtanggal(AWaktu,qrySelect.fieldbyname('jambataslembur').asdatetime));
                // kalo tipenya otomatis maka jammulai lembur sampai jam sekarang dianggap buat transaksi lembur otomatis
                // kalo spl dan spl tidak ada maka akan dianggap tidak lembur

                qryLembur.Close;
                qryLembur.Params[0].Value:=AHariIni;
                qryLembur.Params[1].Value:=APegawaiid;
                qryLembur.Params[2].Value:=qrySelect.FieldByName('kodegroupshiftid').Asstring;
                qryLembur.Params[3].Value:=qrySelect.FieldByName('shift').Asstring;
                qryLembur.Open;
                if qryLembur.Eof then
                begin
                  tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' Loyalitas!!!',MSG_NONE,True);
                  Aok:=true;
                end
                else
                begin
                  if CompareDateTime(AHariIni,gabungtanggal(AWaktu,qrySelect.FieldByName('jamakhir').AsDateTime))=1 then
                  begin
                   tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' Lembur!!!',MSG_NONE,True);
                  end
                  else
                  begin
                   tampilpesan(MSG_PEGAWAI_PULANG+' Seharusnya '+TimeToStr(gabungtanggal(AWaktu,qrySelect.FieldByName('jamakhir').AsDateTime))+' Lembur!!!',MSG_NONE,True);
                   qryLembur.edit;
                   qryLembur.fieldbyname('jamakhir').asdatetime:=qrySelect.FieldByName('jamakhir').AsDateTime;
                   qryLembur.post;
                   Aok:=true;
                  end;
                end;
              end
              else
              begin
                //showmessage(datetimetostr(AHariIni)+' '+datetimetostr(gabungtanggal(AHariIni,qrySelect.FieldByName('dutyoff').AsDateTime)));
                if CompareDateTime(AHariIni,gabungtanggal(AHariIni,qrySelect.FieldByName('dutyoff').AsDateTime))=1 then
                begin
                   tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' !!!',MSG_NONE,True);
                   Aok:=true;
                end
                else
                begin
                   APulangAwal:=MinutesBetween(AHariIni,gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyoff').asdatetime));
                   if AFlagBolehPulangAwal='1' then
                   begin
                     if AFlagValidasiPulangAwal='1' then
                     begin
                       if AModeAlatValidasi='0' then
                       begin
                         if AFlagApprovePulangAwal='1' then
                         begin
                           Aok:=true;
                           tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' Menit !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
                         end
                         else
                         begin
                           ACekok:=false;
                           Aok:=false;
                           tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' Menit !!!',MSG_SUPERVISOR_PERSONALIA,false);
                         end;
                       end
                       else
                       begin
                         if AState<>AUTHORISASI_PULANGAWAL then
                         begin
                          AState:=AUTHORISASI_PULANGAWAL;
                          AModeValidasi:=1;
                          tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' Menit !!!',MSG_SUPERVISOR_OTORISASI,false);
                          Aok:=false;
                         end
                         else
                         begin
                           if AState=AUTHORISASI_PULANGAWAL then
                           begin
                            if ASupervisor<>'' then
                            begin
                              Aok:=true;
                            end
                            else
                            begin
                             Aok:=false;
                            end;
                           end
                         end;
                       end;
                     end
                     else
                     begin
                       Aok:=true
                     end;
                   end
                   else
                   begin
                     Aok:=false;
                     tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_NONE,false);
                   end;
                   if ((APulangAwal/60)>qrySelect.FieldByName('jumlahsetengahhari').Asfloat) then
                       AKodeAbsen:=ADefaultKodeSetengahHari
                   else
                      AKodeAbsen:=ADefaultKodeAlpha;
                   if AOk then
                     tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' !!!',MSG_NONE,False);
                end;
              end;
           end;
         end;
       end;
    end;
  end;

    if (Aok) then
    begin
      if AStatus=1 then
      begin
        if AKodeAbsen=ADefaultKodeAbsen then
        begin
           if DayOfTheWeek(AWaktu)=7 then
           begin
              AKodeAbsen:=ADefaultMasukHariLibur;
           end;
           qryLibur.Close;
           qryLibur.Params[0].Value:=AWaktu;
           qryLibur.Open;
           if qryLibur.RecordCount>0 then
           begin
              AKodeAbsen:=ADefaultMasukHariLibur;
           end;
        end;
      end;

      if AModeLongShift='0' then
      begin
         if AModeLembur='1' then
         begin
           AKodeGroupShiftId:=qryLemburTidakSchedule.FieldByName('kodegroupshiftid').asstring;
           AShift:=qryLemburTidakSchedule.FieldByName('shift').asstring;
         end
         else
         begin
           AKodeGroupShiftId:=qrySelect.FieldByName('kodegroupshiftid').asstring;
           AShift:=qrySelect.FieldByName('shift').asstring;
         end;
         masukdata(AWaktu,AHariini,AStatus,AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift);
         if AStatus=1 then
         begin
           qryUpdateFlagApproveMasuk.Params[0].Value:=APegawaiid;
           qryUpdateFlagApproveMasuk.ExecSQL;
         end
         else
         begin
           qryUpdateFlagApproveKeluar.Params[0].Value:=APegawaiid;
           qryUpdateFlagApproveKeluar.ExecSQL;
         end;
      end
      else
      begin
         qrySelect.close;
         qrySelect.Params[0].Value:=AWaktu;
         qrySelect.Params[1].Value:=APegawaiid;
         qrySelect.Params[2].Value:=AJamAbsen;
         qrySelect.open;
         AKodeGroupShiftId:=qrySelect.FieldByName('kodegroupshiftid').asstring;
         AShift:=qrySelect.FieldByName('shift').asstring;

         if not(qryStatusAbsenTerakhir.eof) then
         begin
           if (qryStatusAbsenTerakhir.FieldByName('tgl').asdatetime<>AKemarin) and  (qryStatusAbsenTerakhir.FieldByName('shift').asstring<>'3') then
           begin
             // set keluar shift sebelumnya dengan jam keluar shift sebelumnya
             qryStatusAbsenOK.close;
             qryStatusAbsenOK.Params[0].Value:=AWaktu;
             qryStatusAbsenOK.Params[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
           end
           else
           begin
             // set keluar shift sebelumnya dengan jam keluar shift sebelumnya
             if (AShift='1') then
             begin
               qryStatusAbsenOK.close;
               qryStatusAbsenOK.Params[0].Value:=AKemarin;
               qryStatusAbsenOK.Params[1].Value:=APegawaiid;
               qryStatusAbsenOK.Open;
             end
             else
             begin
               qryStatusAbsenOK.close;
               qryStatusAbsenOK.Params[0].Value:=AWaktu;
               qryStatusAbsenOK.Params[1].Value:=APegawaiid;
               qryStatusAbsenOK.Open;
             end;
           end;
         end
         else
         begin
           // set keluar shift sebelumnya dengan jam keluar shift sebelumnya
           if (AShift='1') then
           begin
             qryStatusAbsenOK.close;
             qryStatusAbsenOK.Params[0].Value:=AKemarin;
             qryStatusAbsenOK.Params[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
           end
           else
           begin
             qryStatusAbsenOK.close;
             qryStatusAbsenOK.Params[0].Value:=AWaktu;
             qryStatusAbsenOK.Params[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
           end;
         end;

         if AShift<>qryStatusAbsenOK.fieldbyname('shift').asstring then
         begin
           if qryStatusAbsenOK.RecordCount>0 then
           begin
             qrySelect.close;
             qrySelect.Params[0].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Params[1].Value:=APegawaiid;
             qrySelect.Params[2].Value:=qryStatusAbsenOK.FieldByName('masuk1').asdatetime;
             qrySelect.open;

             qryUpdateAbsen.Params[0].Value:=gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyoff').asdatetime);
             qryUpdateAbsen.Params[1].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qryUpdateAbsen.Params[2].Value:=qryStatusAbsenOK.FieldByName('pegawaiid').asstring;
             qryUpdateAbsen.Params[3].Value:=qryStatusAbsenOK.FieldByName('kodegroupshiftid').asstring;
             qryUpdateAbsen.Params[4].Value:=qryStatusAbsenOK.FieldByName('shift').asstring;
             qryUpdateAbsen.ExecSQL;
           end;
           // set masuk shift longshift dengan jam masuk shift sebelumnya
           qrySelect.close;
           qrySelect.Params[0].Value:=AWaktu;
           qrySelect.Params[1].Value:=APegawaiid;
           qrySelect.Params[2].Value:=AJamAbsen;
           qrySelect.open;
           masukdata(AWaktu,gabungtanggal(AWaktu,qrySelect.FieldByName('dutyon').AsDateTime),1,AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift);
         end
         else
         begin
           tampilpesan(MSG_PEGAWAI_SUDAH_ABSEN_SHIFT_INI,MSG_NONE,true);
         end;
      end;
      AState:=AUTHORISASI_BELUM;
    end;
  end;
{  else
  begin
    if AModeValidasi=0 then
      tampilpesan(MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN,MSG_NONE,false);
  end;
}
end;


procedure TfmAbsen.cgvAbsenTodayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  VarIsOrdinal(ARecord.Values[cgvAbsenTodayterlambat.Index]) then
  begin
    if (ARecord.Values[cgvAbsenTodayterlambat.Index] > 0) or
         (ARecord.Values[cgvAbsenTodaypulangawal.Index] > 0) then
         AStyle := stRedLight;
  end;
end;

procedure TfmAbsen.dbeNoPegKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    if AModeValidasi=0 then
    begin
      AHariIni:=hilangdetik(dmglobal.settingGlobal.serverDatetime);
      lblJamAbsenValue.Caption:=timetostr(AHariIni);
    end;

    // cek apakah pegawai ada di tabel pegawai aktif
    qryCekPegawai.close;
    qryCekPegawai.Params[0].Value:=dbeNoPeg.EditingValue;
    qryCekPegawai.Params[1].Value:=AHariIni;
    qryCekPegawai.open;

    if qryCekPegawai.RecordCount>0 then
    begin
      qryPegawai.close;
      qryPegawai.Params[0].Value:=qryCekPegawai.FieldByName('pegawaiid').asstring;
      qryPegawai.Params[1].Value:=AHariIni;
      qryPegawai.open;
      if qryFoto.Active=false then
        qryFoto.Open;
      // absen
      if AModeValidasi=0 then
      begin
        // waktu server dihilangkan detiknya
        AState:=AUTHORISASI_BELUM;
        ACounterSalahPegawai:=0;
        if qryPegawai.eof then
        begin
           // tidak ada
           tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_NONE,false);
        end
        else
        begin
           // ada
           APegawaiid:=qryPegawai.fieldbyname('pegawaiid').asstring;
           AKemarin:=AHariIni-1;
           AJamAbsen:=AHariIni;
           ASupervisor:='';
           AModeLongShift:='0';
           AModeLembur:='0';
           absen(APegawaiid,ASupervisor,AUSER);
        end;
      end
      // supervisor
      else
      begin
        ACounterSalahSupervisor:=0;
        if qryPegawai.eof then
        begin
           // tidak ada
           tampilpesan(MSG_SUPERVISOR_TIDAK_TERDAFTAR,MSG_NONE,false);
        end
        else
        begin
          // ada
          // cek apakah supervisor
          if IsSupervisor(dbeNoPeg.EditingValue) then
          begin
            case Astate of
             AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
             AUTHORISASI_BOLEH_MASUK_KALO_ALPHA:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
             AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
             AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
             AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
            end;
            ASupervisor:=dbeNoPeg.EditingValue;
            absen(APegawaiid,ASupervisor,AUSER);
          end
          else
          begin
            case Astate of
             AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
             AUTHORISASI_BOLEH_MASUK_KALO_ALPHA:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
             AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
             AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
             AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
            end;
          end;
        end;
      end;
    end
    else
    begin
      tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_NONE,false);
    end;
    dbeNoPeg.EditValue:='';
    dbeNoPeg.SetFocus;
  end;
  if Key=VK_F3 then
  begin
     cgvAbsenToday.DataController.Groups.FullExpand;
  end;
  if Key=VK_F4 then
  begin
     cgvAbsenToday.DataController.Groups.FullCollapse;
  end;
end;

procedure TfmAbsen.DeinitForm;
begin
  // Refresh link preview
end;

procedure TfmAbsen.dsLemburDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if qryLembur.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'jammulai') = 0) or (CompareText(Field.FieldName, 'jamakhir') = 0) then
    begin
      if (qryLembur.FieldByName('jammulai').AsDateTime<=qryLembur.FieldByName('jamakhir').AsDateTime) then
      begin
       if (not(qryLembur.FieldByName('jammulai').IsNull)) and (not(qryLembur.FieldByName('jamakhir').IsNull)) then
       begin
         qryLembur.FieldByName('jumlembur').Asfloat:=roundto(MinutesBetween(qryLembur.FieldByName('jammulai').AsDateTime,qryLembur.FieldByName('jamakhir').AsDateTime)/60,-1);
       end;
      end
      else
      begin
        if not(qryLembur.FieldByName('jamakhir').isnull) then
        begin
         showmessage('Jam Mulai Tidak Boleh > Dari Jam Akhir !!!'+timetostr(qryLembur.FieldByName('jammulai').asdatetime)+' > '+timetostr(qryLembur.FieldByName('jamakhir').asdatetime));
         qryLembur.Cancel;
        end;
      end;
    end;
  end;
end;

class procedure TfmAbsen.ExecuteForm;
var
  fmAbsen: TfmAbsen;
begin
//  fmAbsen.WindowState := wsMaximized;
  fmAbsen.BringToFront;
end;

procedure TfmAbsen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // wlRestoreAll;
end;

procedure TfmAbsen.FormCreate(Sender: TObject);
begin
//  dmGlobal.InitComponent(Self);
end;

procedure TfmAbsen.FormDestroy(Sender: TObject);
begin
{$IFDEF CIL}
  wlExit; // normally not necessary,
          // but if you don't call this function the program crashes
          // on shutdown under Windows 98 if the program is compiled with
          // Delphi 8 .Net (VCL Framework) (may be a internal Delphi 8 problem)
{$ENDIF}
end;

procedure TfmAbsen.inisialisasifinger;
begin

end;

procedure TfmAbsen.FormShow(Sender: TObject);
begin
  InitForm;
  AModeValidasi:=0;
  dbeNoPeg.Visible:=false;
  AState:=AUTHORISASI_BELUM;
  ADefaultInputAbsen[1]:='0';
  case ADefaultInputAbsen[1] of
  '0':begin
      dbeNoPeg.Visible:=true;
      dbeNoPeg.SetFocus;
    end;
  '1':begin
      inisialisasifinger;
    end;
  end;
end;

function TfmAbsen.gabungtanggal(Atime: tdatetime; AHariIni: ttime): tdatetime;
var
  AYear,AMonth,ADay:word;
  AHour,AMinute,ASecond,AMiliSecond:word;
begin
  DecodeDateTime(ATime,AYear,AMonth,ADay,AHour,AMinute,ASecond,AMiliSecond);
  DecodeTime(AHariIni,AHour,AMinute,ASecond,AMiliSecond);
  gabungtanggal:=EncodeDateTime(AYear,AMonth,ADay,AHour,AMinute,0,0);
end;

procedure TfmAbsen.Hapus;
begin
  dbeNoPeg.EditValue:='';
  lblJamAbsenValue.Caption:=' ';
  mKeterangan.text:=' ';

  //lNama.Caption:=' ';
  //lShift.Caption:=' ';
  //lblJamAbsenMasuk.Caption:=' ';
  //lblJamAbsenPulang.Caption:=' ';
  //lPerusahaan.Caption:=' ';
  //lDivisi.Caption:=' ';
  //lDepartemen.Caption:=' ';
  //lOutSourcing.Caption:=' ';
  //lStatus.Caption:=' ';
//  lGroupShift.Caption:=' ';
  tmb:=0;
  counter:=0;
  //dbeFoto.Visible:=false;
end;

function TfmAbsen.HilangDetik(AHariIni: ttime): tdatetime;
var
  AYear,AMonth,ADay:word;
  AHour,AMinute,ASecond,AMiliSecond:word;
begin
  DecodeDateTime(AHariIni,AYear,AMonth,ADay,AHour,AMinute,ASecond,AMiliSecond);
  hilangDetik:=EncodeDateTime(AYear,AMonth,ADay,AHour,AMinute,0,0);
end;

procedure TfmAbsen.InitForm;
begin
  // Try direct connection for DB
  try
    dmGlobal.zconGlobal.Disconnect;
    dmGlobal.zconGlobal.HostName := dmGlobal.SettingGlobal.ZeosHostname;
    dmGlobal.zconGlobal.User := dmGlobal.SettingGlobal.ZeosUser;
    dmGlobal.zconGlobal.Password := dmGlobal.SettingGlobal.ZeosPassword;
    dmGlobal.zconGlobal.Protocol := dmGlobal.SettingGlobal.ZeosProtocol;
    dmGlobal.zconGlobal.Database := dmGlobal.SettingGlobal.ZeosDefaultDB;
    dmGlobal.zconGlobal.Connect;

    dmGlobal.zconMaster.Disconnect;
    dmGlobal.zconMaster.HostName := dmGlobal.SettingGlobal.ZeosHostname;
    dmGlobal.zconMaster.User := dmGlobal.SettingGlobal.ZeosUser;
    dmGlobal.zconMaster.Password := dmGlobal.SettingGlobal.ZeosPassword;
    dmGlobal.zconMaster.Protocol := dmGlobal.SettingGlobal.ZeosProtocol;
    dmGlobal.zconMaster.Database := dmGlobal.SettingGlobal.ZeosDefaultDB;
    dmGlobal.zconMaster.Connect;

    dmGlobal.zconDisplay.Disconnect;
    dmGlobal.zconDisplay.HostName := dmGlobal.SettingGlobal.ZeosHostname;
    dmGlobal.zconDisplay.User := dmGlobal.SettingGlobal.ZeosUser;
    dmGlobal.zconDisplay.Password := dmGlobal.SettingGlobal.ZeosPassword;
    dmGlobal.zconDisplay.Protocol := dmGlobal.SettingGlobal.ZeosProtocol;
    dmGlobal.zconDisplay.Database := dmGlobal.SettingGlobal.ZeosDefaultDB;
    dmGlobal.zconDisplay.Connect;

    dmGlobal.zconImage.Disconnect;
    dmGlobal.zconImage.HostName := dmGlobal.SettingGlobal.ZeosHostname;
    dmGlobal.zconImage.User := dmGlobal.SettingGlobal.ZeosUser;
    dmGlobal.zconImage.Password := dmGlobal.SettingGlobal.ZeosPassword;
    dmGlobal.zconImage.Protocol := dmGlobal.SettingGlobal.ZeosProtocol;
    dmGlobal.zconImage.Database := dmGlobal.SettingGlobal.ZeosDefaultDBPicture;
    dmGlobal.zconImage.Connect;
  except
    Abort;
  end;

  if not Application.Terminated then
  begin
    tmTimer.Enabled:=true;
    RefreshAll;
    Hapus;
    qrySetup.Open;
    AJumlahMinimum:= strtoint(dmglobal.GetSetupValue('OPT03', '5'));
    ADefaultKodeAbsen:=dmglobal.GetSetupValue('OPT04', 'H');
    ADefaultKodeAlpha:=dmglobal.GetSetupValue('OPT05', 'A');
    ADefaultKodeSetengahHari:=dmglobal.GetSetupValue('OPT06', 'H2');
    AFlagSetengahHari:=dmglobal.GetSetupValue('OPT07', '1');
    AJumlahSidik:=dmglobal.GetSetupValue('OPT01', '3');
    AJumlahOtorisasi:=dmglobal.GetSetupValue('OPT02', '3');
    ADefaultMasukHariLibur:=dmglobal.GetSetupValue('OPT10', 'HL');
    AJabatanSupervisor:=dmglobal.GetSetupValue('OPT11','3');
    AFlagLongShiftOtorisasi:=dmglobal.GetSetupValue('OPT12','1');
    if dmglobal.SettingLocal.IsFingerPrintDeviceExist then
      ADefaultInputAbsen:='1'
    else
      ADefaultInputAbsen:='0';

    // Inisialisasi
    lblJamAbsenValue.Caption := '';
    dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;
    qryPrevAbsensToday.Close;
    qryPrevAbsensToday.Params[0].Value := dmGlobal.SettingGlobal.ServerDateTime;
    qryPrevAbsensToday.Open;
    cgvabsentoday.DataController.Groups.FullExpand;
    SetReadOnly(cgvabsentoday);
  end;
end;

function TfmAbsen.IsAllDatasetAlreadyPost(AForm: TForm): boolean;
begin

end;

procedure TfmAbsen.RefreshAll;
begin
end;

procedure TfmAbsen.tmTimerTimer(Sender: TObject);
var
 ADatetime:tDatetime;
begin
  dmGlobal.SettingGlobal.ServerDateTime := IncSecond(dmGlobal.SettingGlobal.ServerDateTime);
  ADatetime:=dmGlobal.SettingGlobal.ServerDateTime;
  lTimer.Caption:=LOCAL_DAY_IN_IND[DayOfWeek(ADateTime)] + ', ' +
     FormatDateTime('dd/mm/yyyy , hh:nn:ss ',ADateTime);
  DecodeTime(ADatetime,AHour,AMinute,ASecond,AMiliSecond);
end;

procedure TfmAbsen.tampilpesan(AMessagePegawai, AMessageSupervisor:string; AMessageok: boolean);
var
  str:string;
begin
  if AMessageOk = false then
    MKeterangan.Style.Font.Color:=clred
  else
    MKeterangan.Style.Font.Color:=clBlue;

  MKeterangan.Text:=AMessagePegawai+' '+AMessageSupervisor;
end;

function TfmAbsen.timetostring(Ajummenit: integer): string;
var
 ATimetostring:string;
begin
  ATimetostring:='';
  if (Ajummenit div 60)>0 then
    ATimetostring:=inttostr(Ajummenit div 60)+' Jam ';
  if (Ajummenit mod 60)>0 then
    ATimetostring:=ATimetostring+inttostr(Ajummenit div 60)+' Menit ';
  Timetostring:=ATimetostring;
end;

function TfmAbsen.ubahmenittojam(AJumMenit: integer): string;
var
  strJam:string;
begin
  strJam:='';
  if (AJumMenit div 60>0)  then
    strjam:=inttostr(AJumMenit div 60)+' Jam ';
  if AJumMenit mod 60>0 then
      strjam:=strjam+inttostr(AJumMenit mod 60)+' Menit ';
  ubahmenittojam:=strJam;
end;

procedure TfmAbsen.ZKFPEngX1Capture(ASender: TObject; ActionResult: WordBool;
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
 // sTemp := ZKFPEngX1.GetTemplateAsString;

  StatusBar1.Panels.Items[0].Text := 'Dicocokkan dengan template jari';
//  Success := VerFPData(zconGlobal, FingerId, FingerIndex, ATemplate);

  AHariIni:=hilangdetik(dmglobal.settingGlobal.serverDatetime);

  if Success then
  begin
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
    if AModeValidasi=0 then
    begin
       AState:=AUTHORISASI_BELUM;
       qryPegawai.close;
       qryPegawai.Params[0].Value:=FingerId;
       qryPegawai.Params[1].Value:=AHariIni;
       qryPegawai.open;
       if qryFoto.Active=false then
          qryFoto.Open;
       if qryPegawai.RecordCount=0 then
       begin
          tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_NONE,false);
          ACounterSalahPegawai:=0;
       end
       else
       begin
          // waktu server dihilangkan detiknya
          APegawaiid:=FingerId;
          AKemarin:=AHariIni-1;
          AJamAbsen:=AHariIni;
          ASupervisor:='';
          AModeLongShift:='0';
          absen(FingerId,ASupervisor,ADefaultInputAbsen);
       end;
    end
    else
    begin
       qryPegawai.close;
       qryPegawai.Params[0].Value:=FingerId;
       qryPegawai.Params[1].Value:=AHariIni;
       qryPegawai.open;
       if qryFoto.Active=false then
          qryFoto.Open;
       if qryPegawai.RecordCount=0 then
       begin
         tampilpesan(MSG_SUPERVISOR_TIDAK_TERDAFTAR,MSG_NONE,false);
         ACounterSalahSupervisor:=0;
       end
       else
       begin
         // waktu server dihilangkan detiknya
         if IsSupervisor(FingerId) then
         begin
           case Astate of
            AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
            AUTHORISASI_BOLEH_MASUK_KALO_ALPHA:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
            AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
            AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
            AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+' '+TimeToStr(AHariIni)+' !!!',MSG_SUPERVISOR_OTORISASI_BERHASIL,true);
           end;
           absen(APegawaiid,FingerId,ADefaultInputAbsen);
         end
         else
         begin
           case Astate of
            AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
            AUTHORISASI_BOLEH_MASUK_KALO_ALPHA:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
            AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
            AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
            AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_SUPERVISOR_BUKAN_SUPERVISOR,false);
           end;
         end;
       end;
    end;
  end
  else
  begin
    if AModeValidasi=0 then
    begin
      inc(ACounterSalahPegawai);
      tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL+inttostr(ACounterSalahPegawai)+' kali',MSG_NONE,false);
      if ACounterSalahPegawai=AJumlahSidik then
      begin
        AState:=AUTHORISASI_PEGAWAI;
        dbenopeg.Visible:=true;
        dbenopeg.SetFocus;
        // inisialisasi validasi supervisor
        AModeValidasi:=1;
        ACounterSalahSupervisor:=0;
        case Astate of
         AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL,MSG_SUPERVISOR_OTORISASI,true);
        end;
      end;
    end
    else
    begin
      if (AState=AUTHORISASI_PEGAWAI) and (dbenopeg.EditingValue='') then
         tampilpesan(MSG_PEGAWAI_NIK_BELUM_DIMASUKKAN,MSG_NONE,false)
      else
      begin
       inc(ACounterSalahSupervisor);
       tampilpesan(MSG_NONE,MSG_SUPERVISOR_OTORISASI_GAGAL+inttostr(ACounterSalahSupervisor)+' kali',false);
       if ACounterSalahSupervisor=AJumlahOtorisasi then
       begin
         ACounterSalahPegawai:=0;
         // inisialisasi Absen
         AModeValidasi:=0;
         ACounterSalahSupervisor:=0;
         case Astate of
          AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
          AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
          AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
          AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
         end;
       end;
      end;
    end;
  end;
end;

function TfmAbsen.IsSupervisor(
  const AEmployeeId: string): boolean;
var
  AResult:Boolean;
begin
  AResult:=False;
  if AEmployeeId<>'' then
  begin
    qrySupervisorValidate.Close;
    qrySupervisorValidate.Params[0].Value := AEmployeeId;
    qrySupervisorValidate.Open;
    if qrySupervisorValidate.RecordCount>0 then
    begin
      AResult:=True;
    end;
  end;
  Result := AResult;
end;

end.
