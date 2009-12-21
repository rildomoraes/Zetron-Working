unit frmEnrollmentFingerPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs,

  //Auto Create
  StdCtrls, OleCtrls, Menus, cxLookAndFeelPainters, cxButtons, DPFPCtlXLib_TLB;

type
  TfmEnrollmentFingerPrint = class(TForm)
    DPFPEnrollmentControl1: TDPFPEnrollmentControl;
    btnClose: TcxButton;
    procedure DPFPEnrollmentControl1Delete(ASender: TObject; lFingerMask: Integer; const pStatus: IDispatch);
    procedure DPFPEnrollmentControl1Enroll(ASender: TObject; lFingerMask: Integer; const pTemplate, pStatus: IDispatch);
    procedure btnCloseClick(Sender: TObject);
  private
    FDataSet: TDataSet;
    FEmployeeId: string;
    procedure InitForm;
    procedure DeinitForm;
  public
    class function ExecuteForm(ADataSet: TDataset; const AEmployeeId: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure, DPFPShrXLib_TLB;

procedure TfmEnrollmentFingerPrint.InitForm;
begin
  //
end;

procedure TfmEnrollmentFingerPrint.DPFPEnrollmentControl1Enroll(ASender: TObject;
  lFingerMask: Integer; const pTemplate, pStatus: IDispatch);
begin
{Original Source Code VB:
   If MainForm.Failure.Value = True Then
    ' Emulate failure of enrollment operation.
    Stat.Status = EventHandlerStatusFailure
   Else
    ' Enrollment succeeded, so store the template.
    MainForm.SetTemplate Mask, Templ
   End If}

//  if Form1.rbFailure.Checked = True then
//    // Emulate failure of enrollment operation.
//    IDPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure
//  else
//    // Enrollment succeeded, so store the template.
//    Form1.SetTemplate(lFingerMask, IDPFPTemplate(pTemplate).Serialize);

  if FDataSet.Locate('Fingermask', lFingerMask, [loCaseInsensitive]) then
    FDataSet.Edit
  else
    FDataSet.Insert;
  FDataSet.FieldByName('EmployeeId').AsString := FEmployeeId;
  FDataSet.FieldByName('FingerMask').AsInteger := lFingerMask;
  FDataSet.FieldByName('FingerData').AsBytes := IDPFPTemplate(pTemplate).Serialize;
  FDataSet.Post;
end;

class function TfmEnrollmentFingerPrint.ExecuteForm(
  ADataSet: TDataset; const AEmployeeId: string): TModalResult;
var
  fmEnrollmentFingerPrint: TfmEnrollmentFingerPrint;
begin
  fmEnrollmentFingerPrint := TfmEnrollmentFingerPrint.Create(Application);
  with fmEnrollmentFingerPrint do
  begin
    try
      FDataSet := ADataSet;
      FEmployeeId := AEmployeeId;
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmEnrollmentFingerPrint.btnCloseClick(Sender: TObject);
begin
  if DPFPEnrollmentControl1.EnrolledFingersMask > 0 then
    ModalResult := mrOk
  else
    ModalResult := mrCancel;
end;

procedure TfmEnrollmentFingerPrint.DeinitForm;
begin
  //
end;

procedure TfmEnrollmentFingerPrint.DPFPEnrollmentControl1Delete(ASender: TObject;
  lFingerMask: Integer; const pStatus: IDispatch);
begin
{Original Source Code VB:
   If MainForm.Failure.Value = True Then
    ' Emulate failure of deletion operation.
    Stat.Status = EventHandlerStatusFailure
   Else
    ' Deletion succeeded, so remove the template from storage.
    MainForm.SetTemplate Mask, Nothing
   End If}

//  if Form1.rbFailure.Checked = True then
//    // Emulate failure of enrollment operation.
//    IDPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure
//  else
//    // Deletion succeeded, so remove the template from storage.
//   Form1.SetTemplate(lFingerMask, null);
  if FDataSet.Locate('Fingermask', lFingerMask, [loCaseInsensitive]) then
    FDataSet.Delete;
end;

end.
