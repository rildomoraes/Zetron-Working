unit frmSupervisorValidation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  ExtCtrls, MPlayer, untIvPositionDevExpress, untIvPositionStandard, OleServer,
  UltimatePro;

type
  TfmSupervisorValidation = class(TForm)
    qrySupervisorValidate: TADOQuery;
    pnlDetail: TPanel;
    lblInvalidCode: TLabel;
    lSupervisor: TLabel;
    Timer1: TTimer;
    lKeterangan: TLabel;
    Timer2: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    clsFPDatabase1: TclsFPDatabase;
    clsFPVerification1: TclsFPVerification;
    lStatus: TLabel;
    procedure clsFPVerification1FPVerificationStatus(ASender: TObject; var Status: Integer);
    procedure clsFPVerification1FPVerificationImage(Sender: TObject);
    procedure clsFPVerification1FPVerificationID(ASender: TObject; var ID: WideString; var FingerNr: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    function IsSupervisor(const AEmployeeId: string): boolean;
    function GetStatus(Status: Integer): PAnsiChar;
  public
    { Public declarations }
    FSupervisorId: string;
    FKeterangan: string;
    xx, yy, ww, hh: integer;
    class function ExecuteForm(AKeterangan: string; x, y, w, h: integer): string;
  end;

implementation

{$R *.dfm}

uses
  untConstantaPOS, dtmGlobal, frmlogin, untProcedure, untConstanta;

{ TForm1 }

procedure TfmSupervisorValidation.clsFPVerification1FPVerificationID(
  ASender: TObject; var ID: WideString; var FingerNr: Integer);
begin
  if IsSupervisor(trim(ID)) then
  begin
    FSupervisorId := qrySupervisorValidate.FieldByName('employeeid').asstring;
    lSupervisor.Caption := qrySupervisorValidate.FieldByName('employeename').asstring;
  end
  else
  begin
    fsupervisorid := '';
  end;
  close;
end;

procedure TfmSupervisorValidation.clsFPVerification1FPVerificationImage(
  Sender: TObject);
var
  Path: string;
  Filter: WideString;
begin
  Path := ExtractFilePath(Application.ExeName);
  Image1.Picture.LoadFromFile(Path + 'FPTemp.BMP');
  Filter := '';
  clsFPVerification1.FPVerificationFilter(Filter);
end;

procedure TfmSupervisorValidation.clsFPVerification1FPVerificationStatus(
  ASender: TObject; var Status: Integer);
var
  S: PAnsiChar;
begin
  S := getStatus(Status);
  lstatus.Caption := s;
  image1.Canvas.Rectangle(0, 0, image1.Width, image1.Height);
  close;
end;

function TfmSupervisorValidation.GetStatus(Status: Integer): PAnsiChar;
var
  S: PAnsiChar;
begin
  S := '';
  if Status = 0 then
    s := 'Tidak Terdaftar'
  else if Status = 1 then
    s := 'Cocok'
  else if Status = 2 then
    s := 'Banyak Yang Cocok'
  else if Status = 3 then
    s := 'Verifikasi Gagal'
  else if Status = 5 then
    s := 'Salah Nomor Serial '
  else if Status = 7 then
    s := 'Alat Finger Tidak Terdeteksi';
  Result := s;
end;

procedure TfmSupervisorValidation.DeinitForm;
begin
//
end;

class function TfmSupervisorValidation.ExecuteForm(AKeterangan: string; x, y, w, h: integer): string;
var
  fmSupervisorValidation: TfmSupervisorValidation;
begin
  // NOT MDI
  fmSupervisorValidation := TfmSupervisorValidation.Create(Application);
  with fmSupervisorValidation do
  begin
    try
      InitForm;
      Fsupervisorid := '';
      FKeterangan := AKeterangan;
      xx := x;
      yy := y;
      ww := w;
      hh := h;
      Position := poDefault;
      ShowModal;
      Result := Fsupervisorid;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSupervisorValidation.InitForm;
begin
  dmGlobal.InitFormComponent(Self);
end;

procedure TfmSupervisorValidation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  MediaPlayer1.Stop;
end;

procedure TfmSupervisorValidation.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

function TfmSupervisorValidation.IsSupervisor(
  const AEmployeeId: string): boolean;
begin
  qrySupervisorValidate.Close;
  qrySupervisorValidate.Parameters[0].Value := AEmployeeId;
  qrySupervisorValidate.Parameters[1].Value := SUPERVISOR_POSITION;
  qrySupervisorValidate.Open;
  Result := not qrySupervisorValidate.IsEmpty;
end;

procedure TfmSupervisorValidation.Timer1Timer(Sender: TObject);
begin
  //psvWavSound1.active := true;
end;

procedure TfmSupervisorValidation.Timer2Timer(Sender: TObject);
begin
  lKeterangan.Visible := not (lKeterangan.Visible);
end;

procedure TfmSupervisorValidation.FormShow(Sender: TObject);
var
  Driver: WideString;
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName);
  Driver := dmglobal.conGlobal.ConnectionString;
  try
    if clsFPDatabase1.ActiveConnection(Driver) = sc_Success then
    begin
    end;
  except
    Application.MessageBox('Database Connection Fail', 'UltimatePro DelphiSample', mb_OK);
  end;

  //psvWavSound1.active := true;
  LKeterangan.caption := FKeterangan;
//  left:=xx+ww-width-50;
//  top:=yy+hh-height;
  left := xx;
  width := ww;
  top := yy + hh - height;

  clsFPVerification1.PictureSamplePath := Path + '\FPTemp.BMP';
  clsFPVerification1.PictureSampleHeight := 1750; //117 Height
  clsFPVerification1.PictureSampleWidth := 1390; //93 Width

  //Wait until a finger on device
  clsFPVerification1.FPVerification;
end;

end.

