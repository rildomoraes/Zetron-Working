unit frmAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxTimeEdit, cxDBExtLookupComboBox, MemDS, DBAccess, Uni,
  ImgList, ExtCtrls, untIvPositionDevExpress, untIvPositionStandard,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo, cxTextEdit,
  cxContainer, cxImage, cxDBEdit, DBCtrls, ComCtrls, StdCtrls, ADODB, OleCtrls,
  DPFPCtlXLib_TLB, DPFPEngXLib_TLB, OleServer,DateUtils, Controls,
  DPFPDevXLib_TLB, DPFPShrXLib_TLB, Menus, cxLookAndFeelPainters, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

const
  LOCAL_DAY_IN_IND: array[1..7] of string = ('Minggu', 'Senin', 'Selasa',
    'Rabu', 'Kamis', 'Jumat', 'Sabtu');

  MSG_PEGAWAI_MASUK='Anda Masuk ';
  MSG_PEGAWAI_PULANG='Anda Pulang ';
  MSG_PEGAWAI_TIDAK_TERDAFTAR='Anda Tidak Terdaftar !!!';
  MSG_PEGAWAI_VERFIKASI_GAGAL='Verifikasi Gagal ';
  MSG_PEGAWAI_TIDAK_PADA_RANGE_ABSEN='Tidak Pada Range Absen Pukul ';
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
  MSG_PEGAWAI_PULANG_CEPAT='Anda Pulang Lebih Cepat ';
  MSG_PEGAWAI_NIK_BELUM_DIMASUKKAN='Masukkan NIK Pegawai yang mau diabsen (Ketik NIK Pegawai Yang Mau Dimasukkan)!!! ';
  MSG_PEGAWAI_SUDAH_ABSEN_SHIFT_INI='Pegawai Sudah Absen Shift Ini !!! ';
  MSG_PEGAWAI_PASSWORD_SALAH='Password Pegawai Salah !!! ';
  MSG_NONE='';

  AUTHORISASI_BELUM=0;
  AUTHORISASI_PEGAWAI=1;
  AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG=2;
  AUTHORISASI_BOLEH_MASUK_KALO_ALPHA=3;
  AUTHORISASI_LONGSHIFT=4;
  AUTHORISASI_TERLAMBAT=5;
  AUTHORISASI_PULANGAWAL=6;

  MSG_SUPERVISOR_TIDAK_TERDAFTAR='Supervisor Tidak Terdaftar !!!';
  MSG_SUPERVISOR_OTORISASI_NIK='Otorisasi Supervisor (Ketik NIK Pegawai yang mau dimasukkan dan Letakkan Jari Supervisor !!!)';
  MSG_SUPERVISOR_PERSONALIA='Otorisasi Personalia !!';
  MSG_SUPERVISOR_OTORISASI='Otorisasi Supervisor (Letakkan Jari Supervisor)';
  MSG_SUPERVISOR_OTORISASI_USER='Otorisasi Supervisor / Personalia';
  MSG_SUPERVISOR_OTORISASI_GAGAL='Otorisasi Supervisor Gagal (Letakkan Jari Pegawai Lagi)';
  MSG_SUPERVISOR_OTORISASI_BERHASIL='Otorisasi Supervisor Berhasil ';
  MSG_SUPERVISOR_PERSONALIA_OTORISASI_BERHASIL='Otorisasi Personalia Berhasil ';
  MSG_SUPERVISOR_BUKAN_SUPERVISOR='Bukan Supervisor !!!';
  MSG_SUPERVISOR_PASSWORD_SALAH='Password Supervisor Salah !!! ';

type
  TfmAbsen = class(TForm)
    pnlTop: TPanel;
    pnlLeft: TPanel;
    dsFoto: TDataSource;
    StatusBar1: TStatusBar;
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
    lblJamAbsenValue: TLabel;
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
    MKeterangan: TcxMemo;
    dsPrevAbsensToday: TDataSource;
    cgvAbsenTodaynama: TcxGridDBColumn;
    cgvAbsenTodaynamagroupshift: TcxGridDBColumn;
    cgvAbsenTodayshift: TcxGridDBColumn;
    cgvAbsenTodayterlambat: TcxGridDBColumn;
    cgvAbsenTodaymasuk1: TcxGridDBColumn;
    cgvAbsenTodaykeluar1: TcxGridDBColumn;
    cgvAbsenTodayemployeeid: TcxGridDBColumn;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    cgvAbsenTodayNamaJabatan: TcxGridDBColumn;
    tmTimer: TTimer;
    dbeNoPeg: TcxTextEdit;
    dsCekPegawai: TDataSource;
    lblNoPeg: TDBText;
    cgvAbsenTodaypulangawal: TcxGridDBColumn;
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
    lblModeValidasi: TLabel;
    cgvPegawai: TcxGridDBTableView;
    dsPegawaiActive: TDataSource;
    cgvPegawaipegawaiid: TcxGridDBColumn;
    cgvPegawainopeg: TcxGridDBColumn;
    cgvPegawainama: TcxGridDBColumn;
    cgvAbsenTodaykodeabsen: TcxGridDBColumn;
    cgvAbsenTodayketerangan: TcxGridDBColumn;
    cgvAbsenTodaynopeg: TcxGridDBColumn;
    cgvAbsenTodayketabsen: TcxGridDBColumn;
    dbePasswordPegawai: TcxTextEdit;
    dbeSupervisor: TcxTextEdit;
    dbePasswordSupervisor: TcxTextEdit;
    imgIcon16: TImageList;
    imgIcon24: TImageList;
    ImgNotOK: TShape;
    ImgOK: TShape;
    qryFoto: TADOQuery;
    qryLembur: TADOQuery;
    qryLock: TADOQuery;
    qryInsert: TADOQuery;
    qryGetDateTime: TADOQuery;
    qrySetFlagApprove: TADOQuery;
    qryKemarin: TADOQuery;
    qryStatusAbsenTerakhir: TADOQuery;
    qryLibur: TADOQuery;
    qrySupervisor: TADOQuery;
    qryCekLongShift: TADOQuery;
    qrySupervisorValidate: TADOQuery;
    qryPrevAbsensToday: TADOQuery;
    qrySelect: TADOQuery;
    qryStatusAbsen: TADOQuery;
    qryStatusAbsenNotOK: TADOQuery;
    qryStatusAbsenOK: TADOQuery;
    qryUpdateAbsen: TADOQuery;
    qryPegawai: TADOQuery;
    qryCekPegawai: TADOQuery;
    qryPegawaiActive: TADOQuery;
    qryEmployee: TADOQuery;
    DPFPVerificationResult1: TDPFPVerificationResult;
    DPFPVerification1: TDPFPVerification;
    DPFPVerificationControl1: TDPFPVerificationControl;
    qryFingerPrint: TADOQuery;
    procedure cgvAbsenTodayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbePasswordPegawaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeSupervisorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbePasswordSupervisorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cgvAbsenTodayStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dbeNoPegKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmTimerTimer(Sender: TObject);
    procedure ShowOK;
    procedure ShowNOTOK;
    procedure DPFPVerificationControl1Complete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
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
    function ValidationPassword(const AUserName, APassword: string): boolean;
    function ProcessBeforeValidate: boolean;
    Procedure ProcessAfterValidate;
    Procedure ProcessNotVerified;
  public
    { Public declarations }
    class procedure ExecuteForm;
  private
    procedure absen(APegawaiid:string;var ASupervisor:string;AModeInput:string);
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
  AModeLongShift:string[1];
  AStatus,ATerlambat,ALembur,APulangAwal,ATerdekatHariini,ATerdekatKemarin:integer;
  AHour,AMinute,ASecond,AMilisecond:word;
  AKodeGroupShiftId,AShift:string;
  AJumlahMinimum:integer;
  // load setup
  AShiftFixed:string;
  ADefaultKodeAbsen:string;
  ADefaultJumlahMaximum:string;
  ADefaultKodeSetengahHari:string;
  ADefaultKodeAlpha:string;
  AFlagSetengahHari:string;
  ADefaultInputAbsen:string;
  AInputAbsen:string;
  ACounterSalahPegawai:integer;
  ACounterSalahSupervisor:integer;
  AJumlahSidik:integer;
  AJumlahPasswordPegawai:integer;
  AJumlahPasswordSupervisor:integer;
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

uses dtmglobal, untProcedure, untConstanta;
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
  qryInsert.Parameters[0].value:=ATglAbsen;
  qryInsert.Parameters[1].value:=AKodeGroupShiftId;
  qryInsert.Parameters[2].value:=AShift;
  qryInsert.Parameters[3].value:=APegawaiid;
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
  qryInsert.FieldByName('modemasuk').asstring:='1';
  qryInsert.FieldByName('modekeluar').asstring:='1';
  if AStatus=1 then
  begin
    qryInsert.FieldByName('masuk1').asdatetime:=AJamAbsen;
    qryInsert.FieldByName('m1').asstring:=AModeInput;
    qryInsert.FieldByName('terlambat').asinteger:=ATerlambat;
    qryInsert.FieldByName('statusabsen').asstring:='0';
  end
  else
  begin
    qryInsert.FieldByName('keluar1').asdatetime:=AJamAbsen;
    qryInsert.FieldByName('k1').asstring:=AModeInput;
    qryInsert.FieldByName('pulangawal').asinteger:=APulangAwal;
    qryInsert.FieldByName('statusabsen').asstring:='1';
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
  qryPrevAbsensToday.close;
  qryPrevAbsensToday.Parameters[0].Value:=dmglobal.SettingGlobal.ServerDateTime;
  qryPrevAbsensToday.Parameters[1].Value:=dmglobal.SettingGlobal.ServerDateTime;
  qryPrevAbsensToday.open;
  qryPrevAbsensToday.Last;
  cgvAbsenToday.ViewData.Expand(true);
  ShowOK;
end;

function timetostring(Ajummenit:integer):string;
begin

end;

procedure TfmAbsen.absen(APegawaiid:string;var ASupervisor:string;AModeInput:string);
var
  ATglMasuk:tdatetime;
  AJummenit:integer;
  AKodeAbsen:string;
  AWaktuPulang:tdatetime;
begin
  AKodeAbsen:=ADefaultKodeAbsen;

  // inisialisasi variable menitterlambat,menitlembur dan menitpulang awal

  qryPegawai.close;
  qryPegawai.Parameters[0].Value:=APegawaiid;
  qryPegawai.Parameters[1].Value:=AHariIni;
  qryPegawai.Parameters[2].Value:=AHariIni;
  qryPegawai.open;

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


  ATglMasuk:=qryPegawai.FieldByName('tglmasuk').asdatetime;

  ATerlambat:=MinutesBetween(AHariIni,AHariIni);
  APulangAwal:=MinutesBetween(AHariIni,AHariIni);
  ALembur:=MinutesBetween(AHariIni,AHariIni);

  // cek apakah sudah absen hari ini
  qryStatusAbsen.close;
  qryStatusAbsen.Parameters[0].Value:=AHariIni;
  qryStatusAbsen.Parameters[1].Value:=APegawaiid;
  qryStatusAbsen.Open;

  Aok:=false;
  AModeLongShift:='0';

  if qryStatusAbsen.RecordCount>0 then
  begin
    // kalau ada cari hari ini yang absennya not ok
    AWaktu:=AHariIni;

    qryStatusAbsenNotOK.close;
    qryStatusAbsenNotOK.Parameters[0].Value:=AWaktu;
    qryStatusAbsenNotOK.Parameters[1].Value:=APegawaiid;
    qryStatusAbsenNotOK.Open;

    if qryStatusAbsenNotOK.RecordCount>0 then
    begin
      AWaktu:=qryStatusAbsenNotOK.FieldByName('tgl').AsDateTime;
      AJummenit:=MinutesBetween(AHariIni,qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime);
      AJamAbsen:=qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime;
//      showmessage(timetostr(AJamAbsen)+' '+timetostr(qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime)+' '+inttostr(AJumMenit));
      AStatus:=2;
      ACekOK:=true;
    end
    else
    begin
      qryStatusAbsenOK.close;
      qryStatusAbsenOK.Parameters[0].Value:=AWaktu;
      qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
      qryStatusAbsenOK.Open;
      if qryStatusAbsenOK.RecordCount>0 then
      begin
        // validasi long shift
        if AFlagBolehLongShift='1' then
        begin
          if (AFlagValidasiLongShift='1') then
          begin
            if (AFlagApproveLongShift='0') then
            begin
              if AState<>AUTHORISASI_LONGSHIFT then
              begin
               AState:=AUTHORISASI_LONGSHIFT;
               AModeValidasi:=1;
               lblModeValidasi.Caption:='Validasi';
               AModeLongShift:='1';
               case AModeInput[1] of
               '1':
                  tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI,false);
               else
                 tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI_USER,false);
               end;
               ShowNotOK;
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
            end
            else
            begin
              AModeLongShift:='1';
              AWaktu:=AHariIni;
              AJamAbsen:=AHariIni;
              AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenOK.FieldByName('keluar1').AsDateTime);
              AStatus:=1;
              Aok:=true;
              ACekOK:=true;
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
          ShowNOTOK;
        end;
      end
    end;
  end
  else
  begin
    // cari data kemarin
    qryStatusAbsenNotOK.close;
    qryStatusAbsenNotOK.Parameters[0].Value:=AKemarin;
    qryStatusAbsenNotOK.Parameters[1].Value:=APegawaiid;
    qryStatusAbsenNotOK.Open;

    if (qryStatusAbsenNotOK.recordcount=0) then
    begin
       AJummenit:=AJumlahMinimum+1;
       qryStatusAbsenTerakhir.Close;
       qryStatusAbsenTerakhir.Parameters[0].Value:=AHariIni;
       qryStatusAbsenTerakhir.Parameters[1].Value:=APegawaiid;
       qryStatusAbsenTerakhir.Open;
       if qryStatusAbsenTerakhir.RecordCount>0 then
       begin
          if qryStatusAbsenTerakhir.FieldByName('kodeabsen').asstring<>ADefaultKodeAlpha then
          begin
            if (qryStatusAbsenTerakhir.FieldByName('tgl').asdatetime=AKemarin) and  (qryStatusAbsenTerakhir.FieldByName('shift').asstring='3') then
            begin
              qrySelect.close;
              qrySelect.Parameters[0].Value:=AWaktu;
              qrySelect.Parameters[1].Value:=APegawaiid;
              qrySelect.Parameters[2].Value:=AJamAbsen;
              qrySelect.open;

              if qrySelect.FieldByName('shift').asstring='1' then
              begin
                // validasi long shift
                if AFlagBolehLongShift='1' then
                begin
                  if (AFlagValidasiLongShift='1') then
                  begin
                    if (AFlagApproveLongShift='0') then
                    begin
                      if AState<>AUTHORISASI_LONGSHIFT then
                      begin
                       AState:=AUTHORISASI_LONGSHIFT;
                       AModeValidasi:=1;
                       lblModeValidasi.Caption:='Validasi';
                       AModeLongShift:='1';
                       case AModeInput[1] of
                       '1':tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI,false);
                       else
                         tampilpesan(MSG_PEGAWAI_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI_USER,false);
                       end;
                       Aok:=false;
                       ShowNOTOK;
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
                          AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenTerakhir.FieldByName('keluar1').AsDateTime);
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
                    end
                    else
                    begin
                      AModeLongShift:='1';
                      AWaktu:=AHariIni;
                      AJamAbsen:=AHariIni;
                      AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenTerakhir.FieldByName('keluar1').AsDateTime);
                      AStatus:=1;
                      Aok:=true;
                      ACekOK:=true;
                    end;
                  end
                  else
                  begin
                    AModeLongShift:='1';
                    AWaktu:=AHariIni;
                    AJamAbsen:=AHariIni;
                    AJummenit:=MinutesBetween(AJamAbsen,qryStatusAbsenTerakhir.FieldByName('keluar1').AsDateTime);
                    AStatus:=1;
                    ACekOk:=true;
                    Aok:=true
                  end;
                end
                else
                begin
                  Aok:=false;
                  tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_NONE,false);
                  ShowNOTOK;
                end;
              end
              else
              begin
                AWaktu:=AHariIni;
                AJamAbsen:=AHariIni;
                AStatus:=1;
                ACekOK:=true;
                AOK:=true;
              end;
            end
            else
            begin
             AWaktu:=AHariIni;
             AJamAbsen:=AHariIni;
             AStatus:=1;
             ACekOK:=true;
             AOK:=true;
            end;
          end
          else
          begin
            // validasi Kemarin Tidak Masuk
            if AFlagBolehMasukKaloAlpha='1' then
            begin
              if (AFlagValidasiMasukKaloAlpha='1') then
              begin
                if (AFlagApproveMasukKaloAlpha='0') then
                begin
                  if AState<>AUTHORISASI_BOLEH_MASUK_KALO_ALPHA then
                  begin
                   AState:=AUTHORISASI_BOLEH_MASUK_KALO_ALPHA;
                   AModeValidasi:=1;
                   lblModeValidasi.Caption:='Validasi';
                   case AModeInput[1] of
                   '1':tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_OTORISASI,false);
                   else
                     tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_MASUK,MSG_SUPERVISOR_OTORISASI_USER,false);
                   end;
                   ACekOK:=false;
                   Aok:=false;
                   ShowNOTOK;
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
                AWaktu:=AHariIni;
                AJamAbsen:=AHariIni;
                AStatus:=1;
                ACekOK:=true;
                Aok:=true;
              end;
            end;
          end;
       end
       else
       begin
         AWaktu:=AHariIni;
         AJamAbsen:=AHariIni;
         AStatus:=1;
         ACekOK:=true;
       end;
       // masukkan jam sekarang
    end
    else
    begin
      if qryStatusAbsenNotOK.FieldByName('overday').asstring='1' then
      begin
        AJummenit:=AJumlahMinimum+1;
        AWaktu:=AKemarin;
        AJamAbsen:=qryStatusAbsenNotOK.FieldByName('masuk1').asdatetime;
        AStatus:=2;
        ACekOK:=true;
      end
      else
      begin
        if AFlagBolehMasukTdkAbsenPlg='1' then
        begin
          if AFlagValidasiMasukTdkAbsenPlg='1' then
          begin
            if AFlagApproveMasukTdkAbsenPlg='0' then
            begin
              if AState<>AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG then
              begin
               AState:=AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG;
               AModeValidasi:=1;
               lblModeValidasi.Caption:='Validasi';
               case AModeInput[1] of
               '1':tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_OTORISASI,false);
               else
                 tampilpesan(MSG_PEGAWAI_KEMARIN_TIDAK_ABSEN_PULANG,MSG_SUPERVISOR_OTORISASI_USER,false);
               end;
               ACekOK:=false;
               Aok:=false;
               ShowNOTOK;
              end
              else
              begin
                if AState=AUTHORISASI_BOLEH_MASUK_KALO_TIDAK_ABSEN_PULANG then
                begin
                 if ASupervisor<>'' then
                 begin
                  AWaktu:=AHariIni;
                  AJamAbsen:=AHariIni;
                  AJummenit:=AJumlahMinimum+1;
                  AModeLongShift:='0';
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
            end
            else
            begin
              AWaktu:=AHariIni;
              AJamAbsen:=AHariIni;
              AJummenit:=AJumlahMinimum+1;
              AModeLongShift:='0';
              AStatus:=1;
              Aok:=true;
              ACekOK:=true;
            end;
          end
          else
          begin
            AWaktu:=AHariIni;
            AJamAbsen:=AHariIni;
            AJummenit:=AJumlahMinimum+1;
            AModeLongShift:='0';
            AStatus:=1;
            Aok:=true;
            ACekOK:=true;
          end;
        end
        else
        begin
          ACekOK:=false;
          tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_MASUK_KARENA_KEMARIN_TIDAK_ABSEN_PULANG,MSG_NONE,false);
          ShowNOTOK;
        end;
      end;
    end;
  end;

  if ACekOK then
  begin
    if AModeLongShift='0' then
    begin
      // kalo waktu absen berikutnya untuk orang yang sama dibawah batas toleransi absen
     if (AJummenit <  AJumlahMinimum) then
     begin
        if AStatus=2 then
          tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Masuk Jam '+timetostr(qryStatusAbsenNotOK.FieldByName('masuk1').AsDateTime),MSG_NONE,True)
        else
          tampilpesan(MSG_PEGAWAI_SUDAH_TERDAFTAR+' Keluar Jam '+timetostr(qryStatusAbsen.FieldByName('keluar1').AsDateTime),MSG_NONE,True);
        ShowNotOk;
     end
     else
     begin
       // kalo nggak
       qrySelect.close;
       qrySelect.Parameters[0].Value:=AWaktu;
       qrySelect.Parameters[1].Value:=AWaktu;
       qrySelect.Parameters[2].Value:=APegawaiid;
       qrySelect.Parameters[3].Value:=AWaktu;
       qrySelect.Parameters[4].Value:=APegawaiid;
       qrySelect.Parameters[5].Value:=AWaktu;
       qrySelect.Parameters[6].Value:=gabungtanggal(encodedate(1899,12,30),AJamAbsen);
       qrySelect.Parameters[7].Value:=AWaktu;
       qrySelect.Parameters[8].Value:=APegawaiid;
       qrySelect.open;


 //      showmessage(datetostr(AWaktu)+' '+datetimetostr(AJamAbsen));

       if not(qrySelect.Eof) then
       begin
         // kalo status masuk
         if AStatus=1 then
         begin
           // cek apakah absen pada periode absen kalo ya teruskan kalo tidak peringati
           if AModeLongShift='0' then
           begin
             if (AJamAbsen>gabungtanggal(AWaktu,qrySelect.fieldbyname('jammulaiabsen').asdatetime)) and (AJamAbsen<gabungtanggal(AHariIni,qrySelect.fieldbyname('jamakhirabsen').asdatetime)) then
             begin
               if AJamAbsen>gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyon').asdatetime) then
               begin
                 // terlambat diisi oleh
                 ATerlambat:=MinutesBetween(AJamAbsen,gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyon').asdatetime));
                 if qrySelect.fieldbyname('toleransiterlambat').asinteger>=Aterlambat then
                 begin
                   tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat)+' !!! Masih dalam Batas Toleransi',MSG_NONE,False);
                   Aok:=true;
                   ShowOk;
                 end
                 else
                 begin
                   // validasi Terlambat
                   if AFlagBolehTerlambat='1' then
                   begin
                     if AFlagValidasiTerlambat='1' then
                     begin
                       if AFlagApproveTerlambat='0' then
                       begin
                         if AState<>AUTHORISASI_TERLAMBAT then
                         begin
                          AState:=AUTHORISASI_TERLAMBAT;
                          AModeValidasi:=1;
                          lblModeValidasi.Caption:='Validasi';
                          case AModeInput[1] of
                          '1':tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_SUPERVISOR_OTORISASI,false);
                          else
                            tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_SUPERVISOR_OTORISASI_USER,false);
                          end;
                          Aok:=false;
                          ShowNOTOK;
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
                       end
                       else
                       begin
                         Aok:=true;
                         case AModeInput[1] of
                         '1':tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_NONE,true);
                         else
                           tampilpesan(MSG_PEGAWAI_TERLAMBAT+ubahmenittojam(ATerlambat),MSG_NONE,true);
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
                     ShowNOTOK;
                   end;
                 end;
               end
               else
               begin
                  tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_NONE,true);
                  Aok:=true;
                  ShowOK;
               end;
             end
             else
             begin
               tampilpesan(MSG_PEGAWAI_TIDAK_PADA_RANGE_ABSEN+TimeToStr(qrySelect.fieldbyname('jammulaiabsen').asdatetime)+' sampai pukul '+TimeToStr(qrySelect.fieldbyname('jamakhirabsen').asdatetime)+'!!!',MSG_NONE,false);
               Aok:=false;
               ShowNotOk;
             end;
           end
           else
           begin
             tampilpesan(MSG_PEGAWAI_MASUK+' '+TimeToStr(AHariIni)+' !!!',MSG_NONE,true);
             Aok:=true;
             ShowOK;
           end;
         end
          // kalo status=pulang
         else
         begin
            if qryselect.fieldbyname('shift').asstring='3' then
               AWaktuPulang:=AWaktu+1
            else
               AWaktuPulang:=AWaktu;
            if CompareDateTime(AHariIni,gabungtanggal(AWaktuPulang,qrySelect.FieldByName('jambataslembur').AsDateTime))=1  then
            begin
              ALembur:=MinutesBetween(AHariIni,gabungtanggal(AWaktu,qrySelect.fieldbyname('jambataslembur').asdatetime));
              // kalo tipenya otomatis maka jammulai lembur sampai jam sekarang dianggap buat transaksi lembur otomatis
              // kalo spl dan spl tidak ada maka akan dianggap tidak lembur

              qryLembur.Close;
              qryLembur.Parameters[0].Value:=AHariIni;
              qryLembur.Parameters[1].Value:=APegawaiid;
              qryLembur.Parameters[2].Value:=qrySelect.FieldByName('kodegroupshiftid').Asstring;
              qryLembur.Parameters[3].Value:=qrySelect.FieldByName('shift').Asstring;
              qryLembur.Open;
              if qryLembur.Eof then
              begin
                if MinutesBetween(AHariIni,gabungtanggal(AWaktu,qrySelect.fieldbyname('jambataslembur').asdatetime))<=strtoint(ADefaultJumlahMaximum)*60 then
                begin
                  tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' Loyalitas!!!',MSG_NONE,True);
                  Aok:=true;
                  ShowOk;
                end
                else
                begin
                  tampilpesan('Anda tidak bisa absen karena melebihi 11 jam !!!',MSG_NONE,True);
                  Aok:=false;
                  ShowNotOk;
                end;
              end
              else
              begin
                if CompareDateTime(AHariIni,gabungtanggal(AWaktu,qrySelect.FieldByName('jamakhir').AsDateTime))=1 then
                begin
                 tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' Lembur!!!',MSG_NONE,True);
                 ShowOk;
                end
                else
                begin
                 tampilpesan(MSG_PEGAWAI_PULANG+' Seharusnya '+TimeToStr(gabungtanggal(AWaktu,qrySelect.FieldByName('jamakhir').AsDateTime))+' Lembur!!!',MSG_NONE,True);
                 qryLembur.edit;
                 qryLembur.fieldbyname('flaganomali').asstring:='1';
                 qryLembur.post;
                 Aok:=true;
                 ShowOk;
               end;
              end;
            end
            else
            begin
              //showmessage(datetimetostr(AHariIni)+' '+datetimetostr(gabungtanggal(AHariIni,qrySelect.FieldByName('dutyoff').AsDateTime)));
              if CompareDateTime(AHariIni,gabungtanggal(AWaktuPulang,qrySelect.FieldByName('dutyoff').AsDateTime))=1 then
              begin
                 tampilpesan(MSG_PEGAWAI_PULANG+TimeToStr(AHariIni)+' !!!',MSG_NONE,True);
                 Aok:=true;
                 ShowOk;
              end
              else
              begin
                 APulangAwal:=MinutesBetween(AHariIni,gabungtanggal(AWaktuPulang,qrySelect.fieldbyname('dutyoff').asdatetime));
                 if AFlagBolehPulangAwal='1' then
                 begin
                   if AFlagValidasiPulangAwal='1' then
                   begin
                     if AFlagApprovePulangAwal='0' then
                     begin
                       if AState<>AUTHORISASI_PULANGAWAL then
                       begin
                        AState:=AUTHORISASI_PULANGAWAL;
                        AModeValidasi:=1;
                        lblModeValidasi.Caption:='Validasi';
                        case AModeInput[1] of
                        '1':tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' Menit !!!',MSG_SUPERVISOR_OTORISASI,false);
                        else
                          tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' Menit !!!',MSG_SUPERVISOR_OTORISASI_USER,false);
                        end;
                        Aok:=false;
                        ShowNOTOK;
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
                     end
                     else
                       Aok:=true;
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
                   ShowNOTOK;
                 end;
                 if ((APulangAwal/60)>qrySelect.FieldByName('jumlahsetengahhari').Asfloat) then
                     AKodeAbsen:=ADefaultKodeSetengahHari
                 else
                    AKodeAbsen:=ADefaultKodeAlpha;
                 if AOk then
                 begin
                   tampilpesan(MSG_PEGAWAI_PULANG_CEPAT+ubahmenittojam(APulangAwal)+' !!!',MSG_NONE,False);
                   ShowOk;
                 end;
              end;
            end;
         end;
       end;
     end
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
           qryLibur.Parameters[0].Value:=AWaktu;
           qryLibur.Open;
           if qryLibur.RecordCount>0 then
           begin
              AKodeAbsen:=ADefaultMasukHariLibur;
           end;
        end;
      end;

      if AModeLongShift='0' then
      begin
         AKodeGroupShiftId:=qrySelect.FieldByName('kodegroupshiftid').asstring;
         AShift:=qrySelect.FieldByName('shift').asstring;
         masukdata(AWaktu,AHariini,AStatus,AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift);
      end
      else
      begin

         qrySelect.close;
         qrySelect.Parameters[0].Value:=AWaktu;
         qrySelect.Parameters[1].Value:=AWaktu;
         qrySelect.Parameters[2].Value:=APegawaiid;
         qrySelect.Parameters[3].Value:=AWaktu;
         qrySelect.Parameters[4].Value:=APegawaiid;
         qrySelect.Parameters[5].Value:=AWaktu;
         qrySelect.Parameters[6].Value:=gabungtanggal(encodedate(1899,12,30),AJamAbsen);
         qrySelect.Parameters[7].Value:=AWaktu;
         qrySelect.Parameters[8].Value:=APegawaiid;
         qrySelect.open;

         AKodeGroupShiftId:=qrySelect.FieldByName('kodegroupshiftid').asstring;
         AShift:=qrySelect.FieldByName('shift').asstring;

         if not(qryStatusAbsenTerakhir.eof) then
         begin
           if (qryStatusAbsenTerakhir.FieldByName('tgl').asdatetime<>AKemarin) and  (qryStatusAbsenTerakhir.FieldByName('shift').asstring<>'3') then
           begin
             // set keluar shift sebelumnya dengan jam keluar shift sebelumnya
             qryStatusAbsenOK.close;
             qryStatusAbsenOK.Parameters[0].Value:=AWaktu;
             qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
           end
           else
           begin
             // set keluar shift sebelumnya dengan jam keluar shift sebelumnya
             if (AShift='1') then
             begin
               qryStatusAbsenOK.close;
               qryStatusAbsenOK.Parameters[0].Value:=AKemarin;
               qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
               qryStatusAbsenOK.Open;
             end
             else
             begin
               qryStatusAbsenOK.close;
               qryStatusAbsenOK.Parameters[0].Value:=AWaktu;
               qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
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
             qryStatusAbsenOK.Parameters[0].Value:=AWaktu;
             qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
             if qryStatusAbsenOK.RecordCount=0 then
             begin
               qryStatusAbsenOK.close;
               qryStatusAbsenOK.Parameters[0].Value:=AKemarin;
               qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
               qryStatusAbsenOK.Open;
             end;
           end
           else
           begin
             qryStatusAbsenOK.close;
             qryStatusAbsenOK.Parameters[0].Value:=AWaktu;
             qryStatusAbsenOK.Parameters[1].Value:=APegawaiid;
             qryStatusAbsenOK.Open;
           end;
         end;

         if AShift<>qryStatusAbsenOK.fieldbyname('shift').asstring then
         begin
           if qryStatusAbsenOK.RecordCount>0 then
           begin
             qrySelect.close;
             qrySelect.Parameters[0].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Parameters[1].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Parameters[2].Value:=APegawaiid;
             qrySelect.Parameters[3].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Parameters[4].Value:=APegawaiid;
             qrySelect.Parameters[5].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Parameters[6].Value:=gabungtanggal(encodedate(1899,12,30),qryStatusAbsenOK.FieldByName('masuk1').asdatetime);
             qrySelect.Parameters[7].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
             qrySelect.Parameters[8].Value:=APegawaiid;
             qrySelect.open;

             if ((AShift='2') and (qryStatusAbsenOK.fieldbyname('shift').asstring='1')) or ((AShift='3') and (qryStatusAbsenOK.fieldbyname('shift').asstring='2')) or ((AShift='1') and (qryStatusAbsenOK.fieldbyname('shift').asstring='3')) then
             begin
               qryUpdateAbsen.Parameters[0].Value:=gabungtanggal(AWaktu,qrySelect.fieldbyname('dutyoff').asdatetime);
               qryUpdateAbsen.Parameters[1].Value:=qryStatusAbsenOK.FieldByName('tgl').asdatetime;
               qryUpdateAbsen.Parameters[2].Value:=qryStatusAbsenOK.FieldByName('pegawaiid').asstring;
               qryUpdateAbsen.Parameters[3].Value:=qryStatusAbsenOK.FieldByName('kodegroupshiftid').asstring;
               qryUpdateAbsen.Parameters[4].Value:=qryStatusAbsenOK.FieldByName('shift').asstring;
               qryUpdateAbsen.ExecSQL;
             end;
           end;
           // set masuk shift longshift dengan jam masuk shift sebelumnya
           qrySelect.close;
           qrySelect.Parameters[0].Value:=AWaktu;
           qrySelect.Parameters[1].Value:=AWaktu;
           qrySelect.Parameters[2].Value:=APegawaiid;
           qrySelect.Parameters[3].Value:=AWaktu;
           qrySelect.Parameters[4].Value:=APegawaiid;
           qrySelect.Parameters[5].Value:=AWaktu;
           qrySelect.Parameters[6].Value:=gabungtanggal(encodedate(1899,12,30),AJamAbsen);
           qrySelect.Parameters[7].Value:=AWaktu;
           qrySelect.Parameters[8].Value:=APegawaiid;
           qrySelect.open;

           masukdata(AWaktu,gabungtanggal(AWaktu,qrySelect.FieldByName('dutyon').AsDateTime),1,AKodeAbsen,ASupervisor,AModeInput,AKodeGroupShiftId,AShift);
           ACounterSalahPegawai:=0;
           ACounterSalahSupervisor:=0;
         end
         else
         begin
           tampilpesan(MSG_PEGAWAI_SUDAH_ABSEN_SHIFT_INI,MSG_NONE,true);
           ShowNotOk;
         end;
         AModeLongShift:='0';
         qrySetFlagApprove.Parameters[0].value:=APegawaiid;
         qrySetFlagApprove.execsql;
      end;
      AState:=AUTHORISASI_BELUM;
      AModeValidasi:=0;
      lblModeValidasi.Caption:='Absensi';
    end;
  end
  else
  begin
    if AModeValidasi=0 then
    begin
      tampilpesan(MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN,MSG_NONE,false);
      ShowNotOk;
    end;
  end;
  dbeNoPeg.text:='';
end;


procedure TfmAbsen.cgvAbsenTodayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then
  begin
     cgvAbsenToday.DataController.Groups.FullExpand;
  end;
  if Key=VK_F4 then
  begin
     cgvAbsenToday.DataController.Groups.FullCollapse;
  end;
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
    case AInputAbsen[1] of
    '0':begin
          AHariIni:=hilangdetik(dmGlobal.SettingGlobal.ServerDateTime);
          qryCekPegawai.Close;
          qryCekPegawai.Parameters[0].Value:=dbeNoPeg.EditingValue;
          qryCekPegawai.Parameters[1].value:=AHariIni;
          qryCekPegawai.Parameters[2].value:=AHariIni;
          qryCekPegawai.Open;
          if qryCekPegawai.RecordCount=0 then
          begin
            tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_NONE,True);
            AModeValidasi:=0;
            lblModeValidasi.Caption:='Absensi';
            ACounterSalahPegawai:=0;
          end
          else
          begin
            qryPegawai.Close;
            qryPegawai.Parameters[0].Value:=qryCekPegawai.fieldbyname('pegawaiid').asstring;
            qryPegawai.Parameters[1].Value:=AHariIni;
            qryPegawai.Open;
            if qryFoto.Active=false then
               qryFoto.Open;
            APegawaiid:=qryPegawai.fieldbyname('pegawaiid').asstring;
            tampilpesan(MSG_NONE,MSG_NONE,False);
          end;
         // dbePasswordPegawai.SetFocus;
        end;
    '1':begin
          AHariIni:=hilangdetik(dmGlobal.SettingGlobal.ServerDateTime);
          qryCekPegawai.Close;
          qryCekPegawai.Parameters[0].Value:=dbeNoPeg.EditingValue;
          qryCekPegawai.Parameters[1].value:=AHariIni;
          qryCekPegawai.Parameters[2].value:=AHariIni;
          qryCekPegawai.Open;
          if qryCekPegawai.RecordCount=0 then
          begin
            tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_SUPERVISOR_OTORISASI_GAGAL,False);
            AModeValidasi:=0;
            lblModeValidasi.Caption:='Absensi';
            ACounterSalahPegawai:=0;
          end
          else
          begin
            qryPegawai.Close;
            qryPegawai.Parameters[0].Value:=qryCekPegawai.fieldbyname('pegawaiid').asstring;
            qryPegawai.Parameters[1].Value:=AHariIni;
            qryPegawai.Open;
            if qryFoto.Active=false then
               qryFoto.Open;
            APegawaiid:=qryPegawai.fieldbyname('pegawaiid').asstring;
            tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL,MSG_SUPERVISOR_OTORISASI,true);
          end;
          dbeNoPeg.Visible:=false;
        end;
    '2':begin
          AHariIni:=hilangdetik(dmGlobal.SettingGlobal.ServerDateTime);
          qryCekPegawai.Close;
          qryCekPegawai.Parameters[0].Value:=dbeNoPeg.EditingValue;
          qryCekPegawai.Parameters[1].value:=AHariIni;
          qryCekPegawai.Parameters[2].value:=AHariIni;
          qryCekPegawai.Open;
          if qryCekPegawai.RecordCount=0 then
          begin
            tampilpesan(MSG_PEGAWAI_TIDAK_TERDAFTAR,MSG_NONE,True);
            AModeValidasi:=0;
            lblModeValidasi.Caption:='Absensi';
            ACounterSalahPegawai:=0;
          end
          else
          begin
            // langsung absen
            qryPegawai.Close;
            qryPegawai.Parameters[0].Value:=qryCekPegawai.fieldbyname('pegawaiid').asstring;
            qryPegawai.Parameters[1].Value:=AHariIni;
            qryPegawai.Open;
            if qryFoto.Active=false then
               qryFoto.Open;
            APegawaiid:=qryPegawai.fieldbyname('pegawaiid').asstring;
            AKemarin:=AHariIni-1;
            AJamAbsen:=AHariIni;
            ASupervisor:='';
            AModeLongShift:='0';
            lblJamAbsenValue.Caption:=FormatDateTime('dd/mm/yyyy, hh:nn ',AHariIni);
            absen(APegawaiid,ASupervisor,AInputAbsen);
            dbeNoPeg.EditValue:='';

           { if AModeValidasi=0 then
            begin
              dbePasswordPegawai.EditValue:='';
              dbeNoPeg.EditValue:='';
              dbenopeg.SetFocus;
            end
            else
            begin
              dbeSupervisor.Visible:=true;
              dbePasswordSupervisor.Visible:=true;
              dbeSupervisor.EditValue:='';
              dbePasswordSupervisor.EditValue:='';
              dbeSupervisor.SetFocus;
            end;}
          end;
        end;
    end;
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

function TfmAbsen.ValidationPassword(
  const AUserName, APassword: string): boolean;
begin
  Result := False;
  qryEmployee.Close;
  qryEmployee.Parameters[0].Value := AUserName;
  qryEmployee.Parameters[1].Value := APassword;
  OpenIfClose(qryEmployee);
  if not qryEmployee.IsEmpty then
  begin
    //if login successed, then load data to property
    if AModeValidasi=0 then
    begin
       APegawaiid:=qryEmployee.FieldByName('pegawaiid').asstring;
    end
    else
    begin
       ASupervisor:=qryEmployee.FieldByName('pegawaiid').asstring;
    end;
    Result := True;
  end;
  qryEmployee.Close;
end;

procedure TfmAbsen.dbePasswordPegawaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Password: string;
begin
  if key=13 then
  begin
    case AInputAbsen[1] of
    '0':begin
          with dmGlobal do
          begin
            IvEncryption1.RC4Init(IvEncryption1.StringToStringByte(PROGRAM_PASSWORD));
            Password := IvEncryption1.RC4Crypt(IvEncryption1.StringToStringByte(dbePasswordPegawai.EditingText));
            IvEncryption1.RC4Reset;
            IvEncryption1.RC4Burn;
          end;

          if not ValidationPassword(dbeNoPeg.EditingText, Password) then
          begin
            tampilpesan(MSG_PEGAWAI_PASSWORD_SALAH,MSG_NONE,True);
            inc(ACounterSalahPegawai);
            if ACounterSalahPegawai>=AJumlahPasswordPegawai then
            begin
              AModeValidasi:=1;
              //PJari.Visible:=true;
              AState:=AUTHORISASI_PEGAWAI;
              lblModeValidasi.Caption:='Validasi';
              ACounterSalahSupervisor:=0;
              case Astate of
               AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL,MSG_SUPERVISOR_OTORISASI_NIK,true);
              end;
            end
            else
            begin
              dbePasswordPegawai.EditValue:='';
              dbePasswordPegawai.SetFocus;
            end;
          end
          else
          begin
            AKemarin:=AHariIni-1;
            AJamAbsen:=AHariIni;
            ASupervisor:='';
            AModeLongShift:='0';
            lblJamAbsenValue.Caption:=FormatDateTime('dd/mm/yyyy, hh:nn ',AHariIni);
            absen(APegawaiid,ASupervisor,AInputAbsen);
            dbePasswordPegawai.Visible:=false;
            dbeNoPeg.Visible:=false
          end;
        end;
    '2':begin
          with dmGlobal do
          begin
            IvEncryption1.RC4Init(IvEncryption1.StringToStringByte(PROGRAM_PASSWORD));
            Password := IvEncryption1.RC4Crypt(IvEncryption1.StringToStringByte(dbePasswordPegawai.EditingText));
            IvEncryption1.RC4Reset;
            IvEncryption1.RC4Burn;
          end;

          if not ValidationPassword(dbeNoPeg.EditingText, Password) then
          begin
            tampilpesan(MSG_PEGAWAI_PASSWORD_SALAH,MSG_NONE,True);
            dbePasswordPegawai.EditValue:='';
            dbeNoPeg.EditValue:='';
            dbenopeg.SetFocus;
          end
          else
          begin
            AKemarin:=AHariIni-1;
            AJamAbsen:=AHariIni;
            ASupervisor:='';
            AModeLongShift:='0';
            lblJamAbsenValue.Caption:=FormatDateTime('dd/mm/yyyy, hh:nn ',AHariIni);
            absen(APegawaiid,ASupervisor,AInputAbsen);
            if AModeValidasi=0 then
            begin
              dbePasswordPegawai.EditValue:='';
              dbeNoPeg.EditValue:='';
              dbenopeg.SetFocus;
            end
            else
            begin
              dbeSupervisor.Visible:=true;
              dbePasswordSupervisor.Visible:=true;
              dbeSupervisor.EditValue:='';
              dbePasswordSupervisor.EditValue:='';
              dbeSupervisor.SetFocus;
            end;
          end;
       end;
    end;
  end;
end;

procedure TfmAbsen.dbePasswordSupervisorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Password: string;
begin
  if key=13 then
  begin
    case AInputAbsen[1] of
    '0':begin
         with dmGlobal do
         begin
           IvEncryption1.RC4Init(IvEncryption1.StringToStringByte(PROGRAM_PASSWORD));
           Password := IvEncryption1.RC4Crypt(IvEncryption1.StringToStringByte(dbePasswordSupervisor.EditingText));
           IvEncryption1.RC4Reset;
           IvEncryption1.RC4Burn;
         end;

         if not ValidationPassword(dbeSupervisor.EditingText, Password) then
         begin
           inc(ACounterSalahSupervisor);
           tampilpesan(MSG_NONE,MSG_SUPERVISOR_PASSWORD_SALAH,True);
           ACounterSalahPegawai:=0;
           if ACounterSalahPegawai>=AJumlahPasswordSupervisor then
           begin
             ACounterSalahSupervisor:=0;
             // inisialisasi Absen
             //PJari.Visible:=true;
             AModeValidasi:=0;
             lblModeValidasi.Caption:='Absensi';
             case Astate of
              AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
              AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
              AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
              AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
             end;
           end;
         end
         else
         begin
           // absen dengan supervisor
           absen(APegawaiid,ASupervisor,AInputAbsen);
         end;
         dbePasswordSupervisor.EditValue:='';
         dbeSupervisor.EditValue:='';
         dbeSupervisor.Visible:=false;
         dbePasswordSupervisor.Visible:=false;
         ASupervisor:='';
        end;
    '2':begin
         with dmGlobal do
         begin
           IvEncryption1.RC4Init(IvEncryption1.StringToStringByte(PROGRAM_PASSWORD));
           Password := IvEncryption1.RC4Crypt(IvEncryption1.StringToStringByte(dbePasswordSupervisor.EditingText));
           IvEncryption1.RC4Reset;
           IvEncryption1.RC4Burn;
         end;

         if not ValidationPassword(dbeSupervisor.EditingText, Password) then
         begin
           tampilpesan(MSG_NONE,MSG_SUPERVISOR_PASSWORD_SALAH,True);
         end
         else
         begin
           // absen dengan supervisor
           absen(APegawaiid,ASupervisor,AInputAbsen);
         end;
         dbePasswordSupervisor.EditValue:='';
         dbeSupervisor.EditValue:='';
         dbeSupervisor.Visible:=false;
         dbePasswordSupervisor.Visible:=false;
         ASupervisor:='';
        end;
    end;
  end;
end;

procedure TfmAbsen.dbeSupervisorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    case AInputAbsen[1] of
    '0':begin
          qryCekPegawai.Close;
          qryCekPegawai.Parameters[0].Value:=dbeSupervisor.EditingValue;
          qryCekPegawai.Parameters[1].Value:=AHariIni;
          qryCekPegawai.Open;
          if qryCekPegawai.RecordCount=0 then
          begin
            tampilpesan(MSG_NONE,MSG_SUPERVISOR_TIDAK_TERDAFTAR,True);
            AModeValidasi:=0;
            lblModeValidasi.Caption:='Absensi';
            ACounterSalahPegawai:=0;
          end
          else
          begin
            qryPegawai.Close;
            qryPegawai.Parameters[0].Value:=qryCekPegawai.fieldbyname('pegawaiid').asstring;
            qryPegawai.Parameters[1].Value:=AHariIni;
            qryPegawai.Open;
            if qryFoto.Active=false then
               qryFoto.Open;
            ASupervisor:=qryPegawai.fieldbyname('pegawaiid').asstring;
            tampilpesan(MSG_NONE,MSG_NONE,False);
          end;
       //   dbePasswordSupervisor.SetFocus;
        end;
    '2':begin
          qryCekPegawai.Close;
          qryCekPegawai.Parameters[0].Value:=dbeNoPeg.EditingValue;
          qryCekPegawai.Parameters[1].Value:=AHariIni;
          qryCekPegawai.Open;
          if qryCekPegawai.RecordCount=0 then
          begin
            tampilpesan(MSG_NONE,MSG_SUPERVISOR_TIDAK_TERDAFTAR,True);
            AModeValidasi:=0;
            lblModeValidasi.Caption:='Absensi';
            ACounterSalahPegawai:=0;
          end
          else
          begin
            // langsung absen
            qryPegawai.Close;
            qryPegawai.Parameters[0].Value:=qryCekPegawai.fieldbyname('pegawaiid').asstring;
            qryPegawai.Parameters[1].Value:=AHariIni;
            qryPegawai.Open;
            if qryFoto.Active=false then
               qryFoto.Open;
            ASupervisor:=qryPegawai.fieldbyname('pegawaiid').asstring;
            // langsung absen
          end;
        end;
    end;
  end;
end;

procedure TfmAbsen.DeinitForm;
begin
  // Refresh link preview
end;

procedure TfmAbsen.ProcessAfterValidate;
var
  fi, i: integer;
  Score, ProcessNum: integer;
  RegChanged: wordBool;
  sTemp: string;

  FingerId: string;
  Success: boolean;
  namajari :string;
begin
  AHariIni:=hilangdetik(dmGlobal.SettingGlobal.ServerDateTime);

  FingerId:=qryFingerPrint.FieldByName('EmployeeId').AsString;

  if AModeValidasi=0 then
  begin
    AState:=AUTHORISASI_BELUM;
    qryPegawai.close;
    qryPegawai.Parameters[0].Value:=FingerId;
    qryPegawai.Parameters[1].Value:=AHariIni;
    qryPegawai.Parameters[2].Value:=AHariIni;
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
      lblJamAbsenValue.Caption:=FormatDateTime('dd/mm/yyyy, hh:nn ',AHariIni);
      absen(FingerId,ASupervisor,AInputAbsen);
    end;
  end
  else
  begin
     qryPegawai.close;
     qryPegawai.Parameters[0].Value:=FingerId;
     qryPegawai.Parameters[1].Value:=AHariIni;
     qryPegawai.open;
     if qryFoto.Active=false then
        qryFoto.Open;
     if qryPegawai.RecordCount=0 then
     begin
       tampilpesan(MSG_SUPERVISOR_TIDAK_TERDAFTAR,MSG_NONE,false);
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
         AKemarin:=AHariIni-1;
         absen(APegawaiid,FingerId,AInputAbsen);
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
         AModeValidasi:=0;
       end;
     end;
     ACounterSalahSupervisor:=0;
  end;
end;

function TfmAbsen.ProcessBeforeValidate: boolean;
begin
  Result := True;
end;

procedure TfmAbsen.ProcessNotVerified;
begin
  if AModeValidasi=0 then
  begin
    inc(ACounterSalahPegawai);
    tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL+inttostr(ACounterSalahPegawai)+' kali',MSG_NONE,false);
    if ACounterSalahPegawai>=AJumlahSidik then
    begin
      AModeValidasi:=1;
      AState:=AUTHORISASI_PEGAWAI;
      lblModeValidasi.Caption:='Validasi';
      case Astate of
       AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_VERFIKASI_GAGAL,MSG_SUPERVISOR_OTORISASI_NIK,true);
      end;
      dbenopeg.Visible:=true;
      dbenopeg.SetFocus;
      ACounterSalahPegawai:=0;
      ACounterSalahSupervisor:=0;
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
     if ACounterSalahSupervisor>=AJumlahOtorisasi then
     begin
       // inisialisasi validasi supervisor
       ACounterSalahSupervisor:=0;
       // inisialisasi Absen
       AModeValidasi:=0;
       lblModeValidasi.Caption:='Absensi';
       case Astate of
        AUTHORISASI_PEGAWAI:tampilpesan(MSG_PEGAWAI_TIDAK_BERHASIL_ABSEN,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
        AUTHORISASI_LONGSHIFT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_LONG_SHIFT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
        AUTHORISASI_TERLAMBAT:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_TERLAMBAT,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
        AUTHORISASI_PULANGAWAL:tampilpesan(MSG_PEGAWAI_TIDAK_BOLEH_PULANG_AWAL,MSG_SUPERVISOR_OTORISASI_GAGAL,false);
       end;
       dbenopeg.Visible:=false;
       ACounterSalahPegawai:=0;
       ACounterSalahSupervisor:=0;
     end;
    end;
  end;
end;

procedure TfmAbsen.DPFPVerificationControl1Complete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
 Templ: IDPFPTemplate;
 Res: IDPFPVerificationResult;
 FingerData: TBytes;
begin
  if ProcessBeforeValidate then
  begin
    try
      Templ := CoDPFPTemplate.Create;
      // Compare feature set with all stored templates.
      qryFingerPrint.First;
      while not qryFingerPrint.Eof do
      begin
        // Get template from storage.
        FingerData := qryFingerPrint.FieldByName('FingerData').AsBytes;
        if not VarIsEmpty(FingerData) Then
        begin
          Templ.Deserialize(FingerData);
          IDPFPFeatureSet(pFeatureSet).Serialize;
          // Compare feature set with particular template.
          Res := IDPFPVerificationResult(DPFPVerification1.Verify(pFeatureSet, Templ));
          // If match, exit from loop.
          if Res.Verified = True Then
            Break;
        end;
        qryFingerPrint.Next;
      end;
    finally
      Templ := nil;
    end;

    if Res <> nil Then
    begin
      if Res.Verified Then
      begin
       ProcessAfterValidate;
      end
      else
      begin
        DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
        ProcessNotVerified;
      end;
    end
    else
    begin
      DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
      ProcessNotVerified;
    end;
  end
  else
  begin
    DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
    ProcessNotVerified;
  end;
end;

class procedure TfmAbsen.ExecuteForm;
var
  fmAbsen: TfmAbsen;
begin
//  fmAbsen.WindowState := wsMaximized;
  fmAbsen.BringToFront;
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

procedure TfmAbsen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F3 then
  begin
     cgvAbsenToday.DataController.Groups.FullExpand;
  end;
  if Key=VK_F4 then
  begin
     cgvAbsenToday.DataController.Groups.FullCollapse;
  end;
end;

procedure TfmAbsen.FormShow(Sender: TObject);
begin
  InitForm;
  AShiftFixed:='0';
  //WindowState:=wsMaximized;
  //LockWindows(1);

  // cari dari Setup
  // 0 : Barcode
  // 1 : FingerPrint
  // 2 : Username Password
  dbeNoPeg.Visible:=false;
  dbePasswordPegawai.Visible:=false;
  dbeSupervisor.Visible:=false;
  dbePasswordSupervisor.Visible:=false;
  AState:=AUTHORISASI_BELUM;
  case ADefaultInputAbsen[1] of
  '0':begin
        dbeNoPeg.Visible:=true;
        dbePasswordPegawai.Visible:=true;
        dbeNoPeg.Text:='';
        dbePasswordPegawai.Text:='';
        dbeNoPeg.SetFocus;
        AInputAbsen:='0';
      end;
  '1':begin
        AInputAbsen:='1';
      end;
  '2':begin
        dbeNoPeg.Visible:=true;
        dbeNoPeg.Text:='';
        dbeNoPeg.SetFocus;
        AInputAbsen:='2';
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
  tmb:=0;
  counter:=0;
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
  dmGlobal.conGlobal.Close;
  dmGlobal.conGlobal.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
  dmGlobal.conGlobal.Open;
  dmGlobal.conReadOnly.Close;
  dmGlobal.conReadOnly.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
  dmGlobal.conReadOnly.Open;
  dmGlobal.conImage.Close;
  dmGlobal.conImage.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionStringPic;
  dmGlobal.conImage.Open;

  tmTimer.Enabled := True;
  RefreshAll;
  Hapus;
  AJumlahSidik:=dmGlobal.GetSetupValue('OPT01', '3');
  AJumlahOtorisasi:=dmGlobal.GetSetupValue('OPT02', '1');
  AJumlahMinimum:=strtoint(dmGlobal.GetSetupValue('OPT03', '5'));
  ADefaultKodeAbsen:=dmGlobal.GetSetupValue('OPT04', 'H');
  ADefaultKodeAlpha:=dmGlobal.GetSetupValue('OPT05', 'A');
  ADefaultKodeSetengahHari:=dmGlobal.GetSetupValue('OPT06', 'H2');
  AFlagSetengahHari:=dmGlobal.GetSetupValue('OPT07', '1');
  ADefaultMasukHariLibur:=dmGlobal.GetSetupValue('OPT10', 'HL');
  ADefaultInputAbsen:=dmGlobal.GetSetupValue('OPT11','1');
  AJumlahPasswordPegawai:=dmGlobal.GetSetupValue('OPT12', '3');
  AJumlahPasswordSupervisor:=dmGlobal.GetSetupValue('OPT13', '3');
  ADefaultJumlahMaximum:=dmGlobal.GetSetupValue('OPT14', '3');

  // Inisialisasi
  lblJamAbsenValue.Caption := '';
  dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;
  qryPrevAbsensToday.Close;
  qryPrevAbsensToday.Parameters.ParamByName('tgl').Value := dmGlobal.SettingGlobal.ServerDateTime;
  qryPrevAbsensToday.Open;
  qryPrevAbsensToday.Last;
  cgvabsentoday.DataController.Groups.FullExpand;
  SetReadOnly(cgvabsentoday);
  qryPegawaiActive.open;
  OpenIfClose(qryFingerPrint);
  ImgOK.Visible:=false;
  ImgNotOK.Visible:=false;
end;

procedure TfmAbsen.ShowOK;
begin
  ImgOK.Visible:=true;
  ImgNotOK.Visible:=false;
end;

procedure TfmAbsen.ShowNotOK;
begin
  ImgNotOK.Visible:=true;
  ImgOK.Visible:=false;
end;

procedure TfmAbsen.RefreshAll;
begin
end;

procedure TfmAbsen.tmTimerTimer(Sender: TObject);
var
 ADatetime:tDatetime;
begin
//   dmGlobal.SettingGlobal.ServerDateTime := now;
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

function TfmAbsen.IsSupervisor(
  const AEmployeeId: string): boolean;
var
  AResult:Boolean;
begin
  AResult:=False;
  qrySupervisorValidate.Close;
  qrySupervisorValidate.Parameters[0].Value := AEmployeeId;
  qrySupervisorValidate.Open;
  if qrySupervisorValidate.RecordCount>0 then
  begin
    AResult:=True;
  end;
  Result := AResult;
end;

end.
