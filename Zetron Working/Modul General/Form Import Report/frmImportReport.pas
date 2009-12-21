unit frmImportReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StrUtils, INIFiles, DB, ADODB,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, ComCtrls, ShlObj, cxShellCommon,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxCheckBox, frxClass, StdCtrls, FileCtrl, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxShellTreeView, cxContainer, cxProgressBar, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmImportReport = class(TFormUniPosition)
    btnImport: TcxButton;
    actImport: TAction;
    stvDirectory: TcxShellTreeView;
    cgReport: TcxGrid;
    cgvReport: TcxGridTableView;
    cgvReportCheck: TcxGridColumn;
    cgvReportName: TcxGridColumn;
    cgReportLevel1: TcxGridLevel;
    frReport: TfrxReport;
    PopupMenu1: TPopupMenu;
    SelectAll1: TMenuItem;
    DeselectAll1: TMenuItem;
    flbFile: TFileListBox;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    procedure stvDirectoryChange(Sender: TObject; Node: TTreeNode);
    procedure DeselectAll1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure actImportExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    procedure UpdateGridView;
  public

  end;

var
  fmImportReport: TfmImportReport;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

const
  FR_OPTION_SECTION_NAME = 'Options';

procedure TfmImportReport.actImportExecute(Sender: TObject);
var
  Stream: TStream;
  ReportFile, ReportId, ReportName, ReportOrderNo,
  ReportFlagShowDialog, ReportFlagShowProgress, ReportFlagHide,
  ReportFlagDotMatrix: string;
  i, Token: integer;
  MemIniFile: TMemIniFile;
begin
  inherited;

  // Initialize
  OpenIfClose(dmGlobal.qryReport, True);

  pbProcess.Properties.Max := cgvReport.DataController.RecordCount;
  Application.ProcessMessages;

  for i := 0 to (cgvReport.DataController.RecordCount - 1) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    if VarToStr(cgvReport.DataController.Values[i, 0]) = '0' then
      Continue;

    // Validate
    ReportFile := VarToStr(cgvReport.DataController.Values[i, 1]);
    if not FileExists(stvDirectory.AbsolutePath + '\' + ReportFile) then
      Continue;

    // Load report
    frReport.LoadFromFile(stvDirectory.AbsolutePath + '\' + ReportFile);
    ReportName := frReport.ReportOptions.Name;

    // Load option from report
    try
      MemIniFile := TMemIniFile.Create(TEMP_FILENAME);
      MemIniFile.SetStrings(frReport.ReportOptions.Description);
      Token := Pos('#', ReportFile); // in case option reportid is not exist
      ReportId := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'ReportId', Trim(LeftStr(ReportFile, Token - 1)));
      ReportOrderNo := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'OrderNo', '0');
      ReportFlagShowDialog := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'FlagShowDialog', '0');
      ReportFlagShowProgress := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'FlagShowProgress', '0');
      ReportFlagHide := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'FlagHide', '0');
      ReportFlagDotMatrix := MemIniFile.ReadString(FR_OPTION_SECTION_NAME, 'FlagDotMatrix', '0');
    finally
      FreeAndNil(MemIniFile);
    end;

    if not dmGlobal.qryReport.Locate('ReportId', ReportId, [loCaseInsensitive]) then
    begin
      dmGlobal.qryReport.Insert;
      dmGlobal.qryReport.FieldByName('ReportId').AsString := ReportId;
    end
    else
      dmGlobal.qryReport.Edit;
    dmGlobal.qryReport.FieldByName('ReportName').AsString := ReportName;
    dmGlobal.qryReport.FieldByName('OrderNo').AsString := ReportOrderNo;
    dmGlobal.qryReport.FieldByName('FlagShowDialog').AsString := ReportFlagHide;
    dmGlobal.qryReport.FieldByName('FlagShowProgress').AsString := ReportFlagHide;
    dmGlobal.qryReport.FieldByName('FlagHide').AsString := ReportFlagHide;
    dmGlobal.qryReport.FieldByName('FlagDotMatrix').AsString := ReportFlagHide;

    if frReport.PrintOptions.ShowDialog then
      dmGlobal.qryReport.FieldByName('FlagShowDialog').AsInteger := 1
    else
      dmGlobal.qryReport.FieldByName('FlagShowDialog').AsInteger := 0;

    try
      Stream := dmGlobal.qryReport.CreateBlobStream(dmGlobal.qryReport.FieldByName('FileBlob'), bmReadWrite);
      frReport.SaveToStream(Stream);
    finally
      FreeAndNil(Stream);
    end;
    dmGlobal.qryReport.Post;

    cgvReport.DataController.Values[i, 0] := 0;
  end;

  // Finally
  pbProcess.Position := 0;
end;

procedure TfmImportReport.DeselectAll1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  cgvReport.BeginUpdate;
  for i := 0 to (cgvReport.DataController.RecordCount - 1) do
    cgvReport.DataController.Values[i, 0] := '0';
  cgvReport.EndUpdate;
end;

procedure TfmImportReport.InitForm;
begin
  inherited;

  flbFile.Mask := '*.fr3';
  flbFile.Clear;
end;

procedure TfmImportReport.SelectAll1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  cgvReport.BeginUpdate;
  for i := 0 to (cgvReport.DataController.RecordCount - 1) do
    cgvReport.DataController.Values[i, 0] := '1';
  cgvReport.EndUpdate;
end;

procedure TfmImportReport.stvDirectoryChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;

  flbFile.Directory := stvDirectory.AbsolutePath;
  UpdateGridView;
end;

procedure TfmImportReport.UpdateGridView;
var
  i: integer;
begin
  // Initialize
  cgvReport.BeginUpdate;
  cgvReport.DataController.RecordCount := flbFile.Items.Count;

  // Pump Data
  for i := 0 to flbFile.Items.Count - 1 do
  begin
    cgvReport.DataController.Values[i, 0] := 1;
    cgvReport.DataController.Values[i, 1] := flbFile.Items[i];
  end;

  // Finally
  cgvReport.EndUpdate;
end;

end.
