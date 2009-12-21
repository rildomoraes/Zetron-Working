unit frmReportDesigner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, ADODB, Uni,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, frxDACComponents, frxUniDACComponents, frxClass, frxCrypt,
  frxGZip, frxDCtrl, frxDMPExport, frxGradient, frxChBox, frxCross, frxRich,
  frxOLE, frxBarcode, frxChart, frxADOComponents, frxDBSet, frxDesgn, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxDropDownEdit,
  cxSpinEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, cxButtons;

type
  TfmReportDesigner = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayOrderNo: TcxGridDBColumn;
    cgvPrevDisplayReportId: TcxGridDBColumn;
    cgvPrevDisplayReportName: TcxGridDBColumn;
    cgvPrevDisplayName1: TcxGridDBColumn;
    cgvPrevDisplayName2: TcxGridDBColumn;
    cgvPrevDisplayName3: TcxGridDBColumn;
    cgvPrevDisplayName4: TcxGridDBColumn;
    cgvPrevDisplayName5: TcxGridDBColumn;
    cgvPrevDisplayName6: TcxGridDBColumn;
    cgvPrevDisplayFlagHide: TcxGridDBColumn;
    cgvPrevDisplayFlagFix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    lblIdReport: TLabel;
    dbeReportId: TcxDBMaskEdit;
    lblReportName: TLabel;
    dbeReportName: TcxDBTextEdit;
    Label1: TLabel;
    dbeOrderNo: TcxDBSpinEdit;
    lblInfo: TLabel;
    lblPrintTo: TLabel;
    dblcPrintTo: TcxDBComboBox;
    dbchFlagShowDialog: TcxDBCheckBox;
    dbchFlagShowProgress: TcxDBCheckBox;
    dbchFlagDotMatrix: TcxDBCheckBox;
    dbchFlagHide: TcxDBCheckBox;
    btnDesignReport: TcxButton;
    btnClear: TcxButton;
    lblValue1: TLabel;
    dbeName1: TcxDBTextEdit;
    lblValue2: TLabel;
    dbeName2: TcxDBTextEdit;
    lblValue3: TLabel;
    dbeName3: TcxDBTextEdit;
    lblValue4: TLabel;
    dbeName4: TcxDBTextEdit;
    lblValue5: TLabel;
    dbeName5: TcxDBTextEdit;
    lblValue6: TLabel;
    dbeName6: TcxDBTextEdit;
    frReportDesigner: TfrxReport;
    frxDesigner1: TfrxDesigner;
    DisplayDataset: TfrxDBDataset;
    frxADOComponents1: TfrxADOComponents;
    frxChartObject1: TfrxChartObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    actDesign: TAction;
    actClear: TAction;
    frxUniDACComponents1: TfrxUniDACComponents;
    dbchFlagDoCounter: TcxDBCheckBox;
    procedure actClearExecute(Sender: TObject);
    procedure actDesignExecute(Sender: TObject);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure DeinitForm; override;
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmReportDesigner: TfmReportDesigner;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmReportDesigner.actClearExecute(Sender: TObject);
begin
  inherited;

  if dmGlobal.qryReport.IsEmpty then
    Exit;

  // Set state to dsEdit
  if dmGlobal.qryReport.State in [dsBrowse] then
    dmGlobal.qryReport.Edit;

  dmGlobal.qryReport.FieldByName('FileBlob').AsVariant := Null;
end;

procedure TfmReportDesigner.actDesignExecute(Sender: TObject);
var
  Stream: TStream;
begin
  inherited;

  if dmGlobal.qryReport.IsEmpty then
    Exit;

  // Set state to dsEdit
  if dmGlobal.qryReport.State in [dsBrowse] then
    dmGlobal.qryReport.Edit;
  frReportDesigner.Clear;

  // Load
  if not dmGlobal.qryReport.FieldByName('FileBlob').IsNull then
  begin
    try
//      Stream := TBlobStream.Create(TBlobField(dmGlobal.qryReport.FieldByName('FileBlob')), bmRead);
      Stream := dmGlobal.qryReport.CreateBlobStream(dmGlobal.qryReport.FieldByName('FileBlob'), bmReadWrite);
      frReportDesigner.LoadFromStream(Stream);
    finally
      FreeAndNil(Stream);
    end;
  end;

  // Design
  frReportDesigner.ReportOptions.Name := dmGlobal.qryReport.FieldByName('ReportName').AsString;
  frReportDesigner.DotMatrixReport := Boolean(dmGlobal.qryReport.FieldByName('FlagDotMatrix').AsInteger);
  frReportDesigner.DesignReport;

  // Save
  try
//    Stream := TBlobStream.Create(TBlobField(dmGlobal.qryReport.FieldByName('FileBlob')), bmWrite);
    Stream := dmGlobal.qryReport.CreateBlobStream(dmGlobal.qryReport.FieldByName('FileBlob'), bmReadWrite);
    frReportDesigner.SaveToStream(Stream);
  finally
    FreeAndNil(Stream);
  end;
end;

procedure TfmReportDesigner.cgvPrevDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName(FIELD_FLAGFIX).Index]) = '1' then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmReportDesigner.DeinitForm;
begin
  inherited;

  dmGlobal.InitSecurity;
end;

procedure TfmReportDesigner.InitForm;
begin
  inherited;

  if untConstanta.CurrentConnectionEngine = ceADO then
    frxADOComponents1.DefaultDatabase := TADOConnection(dmGlobal.conGlobal)
  else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    frxUniDACComponents1.DefaultDatabase := TUniConnection(dmGlobal.conGlobal);

  // Get Listed Printer
  Printer.Refresh;
  dblcPrintTo.Properties.Items.Add('');
  dblcPrintTo.Properties.Items.AddStrings(Printer.printers);

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
    lblInfo.Caption := '* Isi nama dengan tanda ''''-'''' (minus), untuk membuat garis pemisah.';

  OpenIfClose(dmGlobal.qryReport);
end;

procedure TfmReportDesigner.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryReport);
end;

end.
