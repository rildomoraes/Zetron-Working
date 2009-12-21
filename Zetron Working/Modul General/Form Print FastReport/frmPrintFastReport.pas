{********************************************************************}
{                                                                    }
{       frmPrintFastReport.pas                                     }
{                                                                    }
{       Create By Ivan Handoyo                                       }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{       Last Modified 03 July 2005                                    }
{                                                                    }
{********************************************************************}

unit frmPrintFastReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, ADODB, frxChart, frxClass, frxCrypt, frxDBSet, frxADOComponents,
  frxDMPExport, frxGradient, frxGZip, frxDCtrl, frxChBox, frxCross, frxRich,
  frxOLE, frxBarcode, frxDACComponents, frxUniDACComponents, MemDS, DBAccess,
  Uni;

type
  TfmPrintFastReport = class(TForm)
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxGradientObject1: TfrxGradientObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxADOComponents1: TfrxADOComponents;
    DisplayDataset: TfrxDBDataset;
    frxCrypt1: TfrxCrypt;
    frxChartObject1: TfrxChartObject;
    frxUniDACComponents1: TfrxUniDACComponents;
  private
    FProgramId: string;
    FReportId: string;
    FReportParam1: string;
    FReportParam2: string;
    FReportParam3: string;
    FReportDataset: TDataset;

    procedure InitForm;
  public
    // ProgramId tidak dibuat otomatis karena ada kemungkinan suatu aplikasi
    // menggunakan report dari aplikasi lain, mis aplikasi cashir dengan
    // aplikasi inventory enterprise
    class function ExecuteForm(const AProgramId, AReportId, AReportParam1,
      AReportParam2, AReportParam3: string): TModalResult;
  end;

implementation

uses
  untConstanta, untProcedure, dtmGlobal;

{$R *.DFM}

procedure TfmPrintFastReport.InitForm;
var
  S: TStringList;
  Stream: TStream;
begin
  S := TStringList.Create;
  S.Add('select *');
  S.Add('from  Report');
  S.Add('where ProgramId like :ProgramId');
  S.Add('and ReportId = :ReportId');
  try
    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      frxADOComponents1.DefaultDatabase := TADOConnection(dmGlobal.conGlobal);
      FReportDataset := TADOQuery.Create(Self);
      with TADOQuery(FReportDataset) do
      begin
        Connection := TADOConnection(dmGlobal.conReadOnly);
        SQL := S;
        Parameters[0].Value := FProgramId;
        Parameters[1].Value := FReportId;
      end;
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      frxUniDACComponents1.DefaultDatabase := TUniConnection(dmGlobal.conGlobal);
      FReportDataset := TUniQuery.Create(Self);
      with TUniQuery(FReportDataset) do
      begin
        Connection := TUniConnection(dmGlobal.conReadOnly);
        SQL := S;
        Params[0].Value := FProgramId;
        Params[1].Value := FReportId;
      end;
    end;
  finally
    S.Free;
  end;

  dmGlobal.InitComponent(Self);

  //Send Report Param
  dmGlobal.ActiveReportId := FReportId;
  dmGlobal.ActiveReportParam1 := FReportParam1;
  dmGlobal.ActiveReportParam2 := FReportParam2;
  dmGlobal.ActiveReportParam3 := FReportParam3;

  //Load from database
  OpenIfClose(FReportDataset);
  if FReportDataset.IsEmpty then
  begin
    MessageDlg(MSG_REPORT_LOST, mtInformation, [mbOk], 0);
    Close;
  end;

  // Validate report file
  if FReportDataset.FieldByName('FileBlob').IsNull then
  begin
    MessageDlg(MSG_FILE_REPORT_NULL, mtInformation, [mbOk], 0);
    Close;
  end;

  //Load report to stream
  try
    Stream := FReportDataset.CreateBlobStream(FReportDataset.FieldByName('FileBlob'), bmRead);
    frxReport1.LoadFromStream(Stream);
  finally
    FreeAndNil(Stream);
  end;

  // Init Report Options
  if not FReportDataset.FieldByName('FlagDotMatrix').IsNull then
    frxReport1.DotMatrixReport := FReportDataset.FieldByName('FlagDotMatrix').AsString = '1';
  if not FReportDataset.FieldByName('FlagShowProgress').IsNull then
    frxReport1.ShowProgress := FReportDataset.FieldByName('FlagShowProgress').AsString = '1';
  if not FReportDataset.FieldByName('FlagShowDialog').IsNull then
    frxReport1.PrintOptions.ShowDialog := FReportDataset.FieldByName('FlagShowDialog').AsString = '1';
  if Trim(FReportDataset.FieldByName('Printer').AsString) <> '' then
    frxReport1.PrintOptions.Printer := Trim(FReportDataset.FieldByName('Printer').AsString);

  //Prepare report
  if not frxReport1.PrepareReport then
  begin
    MessageDlg(MSG_CANNOT_PREPARE_REPORT, mtInformation, [mbOk], 0);
    Close;
  end;

  //Print report
  if not frxReport1.Print then
  begin
    MessageDlg(MSG_PRINTER_FAILED, mtInformation, [mbOk], 0);
    Close;
  end;

  // Finally
  ModalResult := mrOk;
end;

class function TfmPrintFastReport.ExecuteForm(const AProgramId, AReportId,
  AReportParam1, AReportParam2, AReportParam3: string): TModalResult;
var
  fmPrintFastReport: TfmPrintFastReport;
begin
  // NOT MDI
  fmPrintFastReport := TfmPrintFastReport.Create(Application);
  with fmPrintFastReport do
  begin
    try
      FProgramId := AProgramId;
      FReportId := AReportId;
      FReportParam1 := AReportParam1;
      FReportParam2 := AReportParam2;
      FReportParam3 := AReportParam3;
      InitForm;
      Result := ModalResult;
    finally
      Release;
    end;
  end;
end;

end.
