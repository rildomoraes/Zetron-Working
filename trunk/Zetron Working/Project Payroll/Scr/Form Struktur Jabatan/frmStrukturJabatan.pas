unit frmStrukturJabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxorgchr, dxdborgc, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxRichEdit, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, Menus, cxLookAndFeelPainters, cxButtons,
  ExtCtrls, ADODB, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxProgressBar,
  untIvPositionStandard, untIvPositionDevExpress;

type
  TfmJabatan = class(TForm)
    cxRichEdit1: TcxRichEdit;
    dxDbOrgChart1: TdxDbOrgChart;
    cgUnSelect: TcxGrid;
    cgvUnSelect: TcxGridDBTableView;
    cgUnSelectLevel1: TcxGridLevel;
    dtsUnSelect: TADODataSet;
    dsUnSelect: TDataSource;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cgSelect: TcxGrid;
    cgvSelect: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dtsSelect: TADODataSet;
    dsSelect: TDataSource;
    cgvUnSelectnopeg: TcxGridDBColumn;
    cgvUnSelectnama: TcxGridDBColumn;
    cgvUnSelecttglmasuk: TcxGridDBColumn;
    cgvUnSelectkodeperusahaan: TcxGridDBColumn;
    cgvUnSelectnamaperusahaan: TcxGridDBColumn;
    cgvUnSelectkodedivisi: TcxGridDBColumn;
    cgvUnSelectnamadivisi: TcxGridDBColumn;
    cgvUnSelectkodedepartemen: TcxGridDBColumn;
    cgvUnSelectnamadepartemen: TcxGridDBColumn;
    cgvSelectnopeg: TcxGridDBColumn;
    cgvSelectnama: TcxGridDBColumn;
    cgvSelecttglmasuk: TcxGridDBColumn;
    cgvSelectkodeperusahaan: TcxGridDBColumn;
    cgvSelectnamaperusahaan: TcxGridDBColumn;
    cgvSelectkodedivisi: TcxGridDBColumn;
    cgvSelectnamadivisi: TcxGridDBColumn;
    cgvSelectkodedepartemen: TcxGridDBColumn;
    cgvSelectnamadepartemen: TcxGridDBColumn;
    cgvUnSelectpegawaiid: TcxGridDBColumn;
    cgvSelectpegawaiid: TcxGridDBColumn;
    qrySet: TADOQuery;
    qrySet2: TADOQuery;
    pbProcess: TcxProgressBar;
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure dxDbOrgChart1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;
    procedure Refresh;
    procedure openAll;
  public
    { Public declarations }
    class procedure ExecuteForm;
  end;

var
  fmJabatan: TfmJabatan;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGeneral,dtmglobal;

procedure TfmJabatan.cxButton1Click(Sender: TObject);
var
  i:integer;
begin
  pbProcess.Visible := True;
  pbProcess.Properties.Max := cgvUnSelect.Controller.SelectedRowCount;
  pbProcess.Refresh;
  for i := 0 to cgvUnSelect.Controller.SelectedRowCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qrySet.Parameters[0].value:=dmGeneral.dtsJabatan.FieldByName('kodejabatan').asstring;
    qrySet.Parameters[1].value:=cgvUnSelect.Controller.SelectedRows[i].Values[0];
    qrySet.ExecSQL;
  end;
  pbProcess.Visible := False;
  Refresh;
end;

procedure TfmJabatan.DeinitForm;
begin
end;


procedure TfmJabatan.dxDbOrgChart1Click(Sender: TObject);
begin
  Refresh;
end;

class procedure TfmJabatan.ExecuteForm;
var
  fmJabatan: TfmJabatan;
begin
  with fmJabatan do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmJabatan);
      InitForm;
    end
    else
    begin
      WindowState := wsNormal;
      BringToFront;
    end;
  end;
end;

procedure TfmJabatan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmJabatan.InitForm;
begin
  dmGlobal.InitFormComponent(Self);
  openAll;
end;

procedure TfmJabatan.openAll;
begin
  OpenIfClose(Application, dmGeneral.dtsJabatan, true, False);
  RefreshAll;
end;

procedure TfmJabatan.RefreshAll;
begin
  LockRefresh(Application, dmGeneral.dtsJabatan, 'KodeJabatan', False);
  Refresh;
end;

procedure TfmJabatan.Refresh;
begin
 dtsUnSelect.Close;
 dtsUnSelect.Parameters[0].Value:=dmGeneral.dtsJabatan.FieldByName('kodejabatan').asstring;
 dtsUnSelect.Open;
 dtsSelect.Close;
 dtsSelect.Parameters[0].Value:=dmGeneral.dtsJabatan.FieldByName('kodejabatan').asstring;
 dtsSelect.Open;
end;

procedure TfmJabatan.cxButton3Click(Sender: TObject);
var
  i:integer;
begin
  pbProcess.Visible := True;
  pbProcess.Properties.Max := cgvSelect.Controller.SelectedRowCount;
  pbProcess.Refresh;
  for i := 0 to cgvSelect.Controller.SelectedRowCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qrySet2.Parameters[0].value:=cgvSelect.Controller.SelectedRows[i].Values[0];
    qrySet2.ExecSQL;
  end;
  pbProcess.Visible := False;
  Refresh;
end;

end.
