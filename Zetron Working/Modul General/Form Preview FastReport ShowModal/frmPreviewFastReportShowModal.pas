unit frmPreviewFastReportShowModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Uni,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, cxGraphics,
  untIvPositionDevExpress, untIvPositionStandard, frxDACComponents,
  frxUniDACComponents, frxClass, frxADOComponents, frxDBSet, frxExportODF,
  frxExportMail, frxExportCSV, frxExportText, frxExportImage, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF, frxDMPExport,
  frxChart, frxCrypt, frxGZip, frxDCtrl, frxChBox, frxGradient, frxCross,
  frxRich, frxOLE, frxBarcode, ImgList, ActnList, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons, ExtCtrls,
  ComCtrls, frxPreview;

type
  TfmPreviewFastReportShowModal = class(TForm)
    frxPreview1: TfrxPreview;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxChartObject1: TfrxChartObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxReport1: TfrxReport;
    DisplayDataset: TfrxDBDataset;
    frxADOComponents1: TfrxADOComponents;
    actPrint: TAction;
    actExport: TAction;
    actFind: TAction;
    pmExport: TPopupMenu;
    ActionList2: TActionList;
    actZoomIn: TAction;
    actZoomOut: TAction;
    actThumbnail: TAction;
    actPageSetting: TAction;
    actFirst: TAction;
    actPrev: TAction;
    actNext: TAction;
    actLast: TAction;
    frxUniDACComponents1: TfrxUniDACComponents;
    actReload: TAction;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    pnlMenu: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnReset: TcxButton;
    btnPrint: TcxButton;
    btnReload: TcxButton;
    pnlPreview: TPanel;
    btnFirst: TcxButton;
    btnLast: TcxButton;
    btnNext: TcxButton;
    btnPageSetting: TcxButton;
    btnThumbnail: TcxButton;
    btnZoomIn: TcxButton;
    btnZoomOut: TcxButton;
    edtPage: TcxTextEdit;
    edtZoom: TcxComboBox;
    btnPrior: TcxButton;
    btnClose: TcxButton;
    btnExport: TcxButton;
    btnFind: TcxButton;
    actClose: TAction;
    actReset: TAction;
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure frxPreview1PageChanged(Sender: TfrxPreview; PageNo: Integer);
    procedure actPrintExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actPageSettingExecute(Sender: TObject);
    procedure actThumbnailExecute(Sender: TObject);
    procedure actZoomOutExecute(Sender: TObject);
    procedure actZoomInExecute(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
  protected
    procedure InitForm;
  private
    FProgramId: string;
    FReportId: string;
    FReportParam1: string;
    FReportParam2: string;
    FReportParam3: string;
    FReportDataset: TDataset;

    procedure ExportClick(Sender: TObject);
    procedure CreatePopup;
  public
    class procedure ExecuteForm(const AProgramId, AReportId, AReportParam1,
      AReportParam2, AReportParam3: string);
  end;

var
  fmPreviewFastReportShowModal: TfmPreviewFastReportShowModal;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal;

const
  FORM_PREFIX = 'fm_';

procedure TfmPreviewFastReportShowModal.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmPreviewFastReportShowModal.actExportExecute(Sender: TObject);
begin
  inherited;

  pmExport.Popup(btnExport.ClientOrigin.X,
    (btnExport.ClientOrigin.Y + btnExport.ClientHeight));
end;

procedure TfmPreviewFastReportShowModal.actFindExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Find;
end;

procedure TfmPreviewFastReportShowModal.actFirstExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.First;
end;

procedure TfmPreviewFastReportShowModal.actLastExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Last;
end;

procedure TfmPreviewFastReportShowModal.actNextExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Next;
end;

procedure TfmPreviewFastReportShowModal.actPageSettingExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.PageSetupDlg;
end;

procedure TfmPreviewFastReportShowModal.actPrevExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Prior;
end;

procedure TfmPreviewFastReportShowModal.actPrintExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Print;
end;

procedure TfmPreviewFastReportShowModal.actReloadExecute(Sender: TObject);
begin
  inherited;

  frxReport1.ShowReport;
end;

procedure TfmPreviewFastReportShowModal.actResetExecute(Sender: TObject);
begin
//
end;

procedure TfmPreviewFastReportShowModal.actThumbnailExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.ThumbnailVisible := not frxPreview1.ThumbnailVisible;
end;

procedure TfmPreviewFastReportShowModal.actZoomInExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Zoom := frxPreview1.Zoom + 0.25;
end;

procedure TfmPreviewFastReportShowModal.actZoomOutExecute(Sender: TObject);
begin
  inherited;

  frxPreview1.Zoom := frxPreview1.Zoom - 0.25;
end;

procedure TfmPreviewFastReportShowModal.CreatePopup;
var
  i: Integer;
  MenuItem: TMenuItem;
begin
  // set popup menu for Export
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TfrxCustomExportFilter then
    begin
      MenuItem := TMenuItem.Create(pmExport);
      pmExport.Items.Add(MenuItem);
      MenuItem.Caption := TfrxCustomExportFilter(Self.Components[i]).GetDescription + '...';
      if MenuItem.Caption = '...'  then
        MenuItem.Caption := TfrxCustomExportFilter(Self.Components[i]).Name + '...';
      MenuItem.Tag := i;
      MenuItem.OnClick := ExportClick;
    end;
  end;
end;

procedure TfmPreviewFastReportShowModal.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
var
  S: string;
begin
  inherited;

  S := edtZoom.EditValue;
  if S = 'Page Width' then
    frxPreview1.ZoomMode := zmPageWidth
  else if S = 'Whole Page' then
    frxPreview1.ZoomMode := zmWholePage
  else
  begin
    S := StringReplace(S, '%', '', [rfReplaceAll]);
    S := StringReplace(S, ' ', '', [rfReplaceAll]);
    if S <> '' then
      frxPreview1.Zoom := StrToFloat(S) / 100;
  end;
end;

class procedure TfmPreviewFastReportShowModal.ExecuteForm(const AProgramId,
  AReportId, AReportParam1, AReportParam2, AReportParam3: string);
begin
  Assert(Application.MainForm.FormStyle = fsNormal, 'TfrmPreviewFastReportShowModal is Normal Form Child !');

  with Self.Create(Application) do
  begin
    try
      Name := FORM_PREFIX + AReportId;

      FProgramId := AProgramId;
      FReportId := AReportId;
      FReportParam1 := AReportParam1;
      FReportParam2 := AReportParam2;
      FReportParam3 := AReportParam3;
      InitForm;
      ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmPreviewFastReportShowModal.ExportClick(Sender: TObject);
begin
  frxPreview1.Export(TfrxCustomExportFilter(Self.Components[TComponent(Sender).Tag]));
end;

procedure TfmPreviewFastReportShowModal.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;

  frxPreview1.MouseWheelScroll(WheelDelta);
end;

procedure TfmPreviewFastReportShowModal.frxPreview1PageChanged(Sender: TfrxPreview;
  PageNo: Integer);
begin
  inherited;

  edtPage.Tag := 1;
  edtPage.EditValue := IntToStr(PageNo);
  StatusBar1.Panels[0].Text := IntToStr(PageNo) + ' of ' + IntToStr(frxPreview1.PageCount);
end;

procedure TfmPreviewFastReportShowModal.InitForm;
var
  S: TStringList;
  Stream: TStream;
begin
  //inherited;

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

  // Load Manual krn 1 form digunakan banyak menu
  IvPositionStandard1.Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(FReportId) + '.cfg';
  IvPositionDevExpress1.Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(FReportId) + '.cfg';
  IvPositionStandard1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;

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

  // initialize
  Self.Caption := FReportDataset.FieldByName('ReportName').AsString;

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
    Stream.Free;
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
  CreatePopup;
  frxReport1.Preview := frxPreview1;

  if not frxReport1.PrepareReport then
  begin
    MessageDlg(MSG_CANNOT_PREPARE_REPORT, mtInformation, [mbOk], 0);
    Close;
  end
  else
    frxReport1.ShowPreparedReport; //Show report
end;

end.
