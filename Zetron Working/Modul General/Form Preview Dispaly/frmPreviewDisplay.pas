{********************************************************************}
{                                                                    }
{       frmPreviewDisplay.pas                                        }
{                                                                    }
{       Create By Zetron System                                      }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{       Create 14 Mei 2006                                           }
{                                                                    }
{********************************************************************}

unit frmPreviewDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxFilterControl, cxDBFilterControl, StdCtrls, cxButtons, ExtCtrls,
  cxSplitter, Grids, DBGrids, untIvPositionStandard, cxCustomPivotGrid,
  cxDBPivotGrid, cxPC, dxDockControl, dxDockPanel, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, ActnList, dxPScxPivotGridLnk, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxDockControlPainter;

type
  TfmPreviewDisplay = class(TForm)
    dbfFilter: TcxDBFilterControl;
    btnLoadFilter: TcxButton;
    btnSaveFilter: TcxButton;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    pnlButton: TPanel;
    shpToolbarBackground: TShape;
    btnClose: TcxButton;
    IvPositionStandard1: TIvPositionStandard;
    btnRefreshOutput: TcxButton;
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgDisplayResultLevel1: TcxGridLevel;
    pvgOLAP: TcxDBPivotGrid;
    dxDockSite1: TdxDockSite;
    dpFilter: TdxDockPanel;
    dxDockingManager1: TdxDockingManager;
    dpGrid: TdxDockPanel;
    dpOLAP: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    pmPrint: TPopupMenu;
    mmiPrint: TMenuItem;
    N1: TMenuItem;
    PageSetup1: TMenuItem;
    PrintPreview1: TMenuItem;
    PrintingDesigner1: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    actPrint: TAction;
    PrintLaporan1: TMenuItem;
    dsPrevDisplay: TDataSource;
    qryDisplay: TZQuery;
    qryPrevDisplay: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dpOLAPActivate(Sender: TdxCustomDockControl; Active: Boolean);
    procedure dpGridActivate(Sender: TdxCustomDockControl; Active: Boolean);
    procedure PrintingDesigner1Click(Sender: TObject);
    procedure PrintPreview1Click(Sender: TObject);
    procedure PageSetup1Click(Sender: TObject);
    procedure PrintLaporan1Click(Sender: TObject);
    procedure mmiPrintClick(Sender: TObject);
    procedure btnLoadFilterClick(Sender: TObject);
    procedure btnSaveFilterClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dbfFilterApplyFilter(Sender: TObject);
    procedure btnRefreshOutputClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm(const AIdDisplay: string);
    procedure DeinitForm;
  public
    { Public declarations }
    class procedure ExecuteForm(const AIdDisplay, ADisplayTitle: string);
  end;

var
  fmPreviewDisplay: TfmPreviewDisplay;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal, frmPreviewFastReport;

procedure TfmPreviewDisplay.DeinitForm;
begin
  //Manual krn 1 form dipake di banyak menu
  IvPositionStandard1.ExecuteSaveProcceses;
end;

procedure TfmPreviewDisplay.dpGridActivate(Sender: TdxCustomDockControl;
  Active: Boolean);
begin
  // Printing system
  //dxComponentPrinter1.CurrentLink := dxComponentPrinter1Link1;
end;

procedure TfmPreviewDisplay.dpOLAPActivate(Sender: TdxCustomDockControl;
  Active: Boolean);
begin
  // Printing system
  //dxComponentPrinter1.CurrentLink := dxComponentPrinter1Link2;
end;

class procedure TfmPreviewDisplay.ExecuteForm(const AIdDisplay,
  ADisplayTitle: string);
begin
  with fmPreviewDisplay do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, ADisplayTitle) then
    begin
      Application.CreateForm(Self, fmPreviewDisplay);
      InitForm(AIdDisplay);
    end
    else
      SetFocusedMDIChild(Application.MainForm, ADisplayTitle);
  end;
end;

procedure TfmPreviewDisplay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmPreviewDisplay.InitForm(const AIdDisplay: string);
var
  Stream: TStream;
begin
  dmGlobal.InitComponent(Self);

  // Debug: Delphi unique, bisa otomatis buat variabel sama (dgn nama lain)
  //ShowMessage(Self.Name);

  // Load Manual krn 1 form digunakan banyak menu
  IvPositionStandard1.Filename := 'Setting ' + AIdDisplay + ExtractFileExt(IvPositionStandard1.Filename);
  IvPositionStandard1.ExecuteLoadProcceses;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnSaveFilter.Caption := 'Simpan Filter';
    btnClose.Caption := 'Keluar';
  end;

  //Load from database
  qryDisplay.Close;
  qryDisplay.Params[0].Value := AIdDisplay;
  OpenIfClose(qryDisplay);
  if qryDisplay.IsEmpty then
  begin
    MessageDlg(MSG_DISPLAY_LOST, mtInformation, [mbOk], 0);
    Close;
  end;

  // Init caption
  Self.Caption := qryDisplay.FieldByName('DisplayName').AsString;
  cgvDisplayResult.OptionsView.GroupByBox := Boolean(qryDisplay.FieldbyName('FlagEnableGroupBox').AsInteger);
  cgvDisplayResult.OptionsCustomize.ColumnFiltering := Boolean(qryDisplay.FieldbyName('FlagEnableColumnFilter').AsInteger);

  // Turn off filter
  dbfFilter.Clear;
  dbfFilter.ApplyFilter;

  // Apply display query
  if qryDisplay.FieldByName('SQLSyntax').AsString <> '' then
  begin
    qryPrevDisplay.Close;
    qryPrevDisplay.SQL.Text := qryDisplay.FieldByName('SQLSyntax').AsString;
    OpenIfClose(qryPrevDisplay, True);
  end;

  // Apply Filter
  if not qryDisplay.FieldByName('FilterSyntax').IsNull then
  begin
    try
      Stream := qryDisplay.CreateBlobStream(qryDisplay.FieldByName('FilterSyntax'), bmReadWrite);
      dbfFilter.LoadFromStream(Stream);
      dbfFilter.ApplyFilter;
    finally
      FreeAndNil(Stream);
    end;
  end;

  // Cek Report
  PrintLaporan1.Enabled := qryDisplay.FieldByName('ReportId').AsString <> '';

  // Create column
  cgvDisplayResult.DataController.CreateAllItems;
  pvgOLAP.CreateAllFields;
end;

procedure TfmPreviewDisplay.mmiPrintClick(Sender: TObject);
begin
  dxComponentPrinter1.Print(True, nil, nil);
end;

procedure TfmPreviewDisplay.PageSetup1Click(Sender: TObject);
begin
  dxComponentPrinter1.PageSetup(nil);
end;

procedure TfmPreviewDisplay.PrintingDesigner1Click(Sender: TObject);
begin
  dxComponentPrinter1.Print(True, nil, nil);
end;

procedure TfmPreviewDisplay.PrintLaporan1Click(Sender: TObject);
begin
  TfmPreviewFastReport.ExecuteForm(qryDisplay.FieldByName('ReportId').AsString,
    qryDisplay.FieldByName('ReportName').AsString);
end;

procedure TfmPreviewDisplay.PrintPreview1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TfmPreviewDisplay.btnLoadFilterClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    dbfFilter.LoadFromFile(OpenDialog.FileName);
end;

procedure TfmPreviewDisplay.btnSaveFilterClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    dbfFilter.SaveToFile(SaveDialog.FileName);
end;

procedure TfmPreviewDisplay.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmPreviewDisplay.dbfFilterApplyFilter(Sender: TObject);
var
  ADataSet: TDataSet;
begin
  ADataSet := TcxDBFilterControl(Sender).DataSet;
  try
    ADataSet.DisableControls;
    ADataSet.Filtered := False;
    ADataSet.Filter := TcxDBFilterControl(Sender).FilterText;
    ADataSet.Filtered := True;
  finally
    ADataSet.EnableControls;
  end;
end;

procedure TfmPreviewDisplay.btnRefreshOutputClick(Sender: TObject);
begin
  dbfFilter.ApplyFilter;
end;

end.
