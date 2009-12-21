unit frmExportReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StrUtils, DB, 

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, ComCtrls, ShlObj, cxShellCommon,
  frxClass, cxShellListView, cxShellTreeView, cxControls, cxContainer, cxEdit,
  cxProgressBar, StdCtrls, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxButtons, ExtCtrls;

type
  TfmExportReport = class(TFormUniPosition)
    btnExport: TcxButton;
    actExport: TAction;
    stvDirectory: TcxShellTreeView;
    slvFiles: TcxShellListView;
    frReport: TfrxReport;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    procedure actExportExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExportReport: TfmExportReport;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

const
  FR_OPTION_SECTION_NAME = 'Options';

procedure TfmExportReport.actExportExecute(Sender: TObject);
var
  Stream: TStream;
  ReportFile: string;
begin
  inherited;

  // Initialize
  OpenIfClose(dmGlobal.qryReport, True);

  pbProcess.Properties.Max := dmGlobal.qryReport.RecordCount;
  Application.ProcessMessages;

  dmGlobal.qryReport.First;
  while not dmGlobal.qryReport.Eof do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    if not dmGlobal.qryReport.FieldByName('FileBlob').IsNull then
    begin
      try
        Stream := dmGlobal.qryReport.CreateBlobStream(dmGlobal.qryReport.FieldByName('FileBlob'), bmRead);
        frReport.LoadFromStream(Stream);
      finally
        FreeAndNil(Stream);
      end;

      // Save any report's options to file
      frReport.ReportOptions.Description.Clear;
      frReport.ReportOptions.Description.Add('[' + FR_OPTION_SECTION_NAME + ']');
      frReport.ReportOptions.Description.Add('ReportId=' + dmGlobal.qryReport.FieldByName('ReportId').AsString);
      frReport.ReportOptions.Description.Add('OrderNo=' + dmGlobal.qryReport.FieldByName('OrderNo').AsString);
      frReport.ReportOptions.Description.Add('FlagShowDialog=' + dmGlobal.qryReport.FieldByName('FlagShowDialog').AsString);
      frReport.ReportOptions.Description.Add('FlagShowProgress=' + dmGlobal.qryReport.FieldByName('FlagShowProgress').AsString);
      frReport.ReportOptions.Description.Add('FlagHide=' + dmGlobal.qryReport.FieldByName('FlagHide').AsString);
      frReport.ReportOptions.Description.Add('FlagDotMatrix=' + dmGlobal.qryReport.FieldByName('FlagDotMatrix').AsString);

      // Save report
      ReportFile := dmGlobal.qryReport.FieldByName('ReportId').AsString + ' # ' +
        dmGlobal.qryReport.FieldByName('ReportName').AsString + '.fr3';
      DeleteFile(stvDirectory.AbsolutePath + '\' + ReportFile);
      frReport.ReportOptions.Name := dmGlobal.qryReport.FieldByName('ReportName').AsString;
      frReport.SaveToFile(stvDirectory.AbsolutePath + '\' + ReportFile);
    end;

    dmGlobal.qryReport.Next;
  end;

  // Finally
  pbProcess.Position := 0;
end;

end.
