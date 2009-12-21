unit frmGetFPValidation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DPFPEngXLib_TLB, DPFPDevXLib_TLB, DPFPCtlXLib_TLB, DPFPShrXLib_TLB,

  // Auto Create
  MPlayer, cxLookAndFeelPainters, Menus, DB, MemDS, DBAccess, Uni, OleServer,
  ExtCtrls, ActnList, OleCtrls, StdCtrls, cxButtons, cxGroupBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TfmGetFPValidation = class(TForm)
    MediaPlayer1: TMediaPlayer;
    lblTitle: TLabel;
    memInfo: TcxMemo;
    gbSupervisorValidation: TcxGroupBox;
    btnCancel: TcxButton;
    ActionList1: TActionList;
    actCancel: TAction;
    Timer1: TTimer;
    DPFPVerificationControl1: TDPFPVerificationControl;
    lblFPInfo: TLabel;
    DPFPVerification1: TDPFPVerification;
    DPFPVerificationResult1: TDPFPVerificationResult;
    qryFingerPrint: TUniQuery;
    procedure actCancelExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure DPFPVerificationControl1Complete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
  private
    FLevelValidation: integer;
    FSupervisorId: string;
    FSupervisorName: string;

    procedure InitForm;
  public
    class function ExecuteForm(const ATitle: string; AMessage: TStringList; ALevelValidation: integer;
      var ASupervisorId, ASupervisorName: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmGetFPValidation.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmGetFPValidation.DPFPVerificationControl1Complete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
 Templ: IDPFPTemplate;
 Res: IDPFPVerificationResult;
 FingerData: TBytes;
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
      //Success
      FSupervisorId := Trim(qryFingerPrint.FieldByName('EmployeeId').AsString);
      FSupervisorName := Trim(qryFingerPrint.FieldByName('EmployeeName').AsString);
      ModalResult := mrOk;
    end
    else
      DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
  end
  else
    DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure

  // Show false accept rate.
  //edtFAR.Text := inttostr(Res.FARAchieved);
end;

class function TfmGetFPValidation.ExecuteForm(const ATitle: string; AMessage: TStringList;
  ALevelValidation: integer; var ASupervisorId, ASupervisorName: string): TModalResult;
var
  fmGetFPValidation: TfmGetFPValidation;
begin
  fmGetFPValidation := TfmGetFPValidation.Create(Application);
  with fmGetFPValidation do
  begin
    try
      Caption := Caption + ' - Min Level: ' + IntToStr(ALevelValidation);
      Position := poScreenCenter;
      FLevelValidation := ALevelValidation;
      lblTitle.Caption := ATitle;
      if Assigned(AMessage) then
        memInfo.Lines.Text := AMessage.Text;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        ASupervisorId := FSupervisorId;
        ASupervisorName := FSupervisorName;
      end
      else
      begin
        ASupervisorId := '';
        ASupervisorName := '';
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmGetFPValidation.InitForm;
begin
  dmGlobal.InitComponent(Self);

  if FileExists(dmGlobal.SettingLocal.Path_AppData + '\notify.wav') then
  begin
    MediaPlayer1.FileName := dmGlobal.SettingLocal.Path_AppData + '\notify.wav';
    MediaPlayer1.Open;
    MediaPlayer1.Notify := True;
    MediaPlayer1.Play;
  end;

  qryFingerPrint.Params[0].Value := FLevelValidation;
  OpenIfClose(qryFingerPrint);
end;

procedure TfmGetFPValidation.MediaPlayer1Notify(Sender: TObject);
begin
  MediaPlayer1.Play;
end;

procedure TfmGetFPValidation.Timer1Timer(Sender: TObject);
begin
  lblTitle.Visible := not (lblTitle.Visible);
end;

end.
