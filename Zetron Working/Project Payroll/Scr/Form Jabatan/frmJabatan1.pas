unit frmJabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxorgchr, dxdborgc, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxRichEdit, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, Menus, cxLookAndFeelPainters, cxButtons,
  ExtCtrls, ADODB, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxProgressBar,
  untIvPositionStandard, untIvPositionDevExpress, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPSGraphicLnk, dxPSdxOCLnk, dxPSdxDBOCLnk, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfmJabatan = class(TForm)
    cxRichEdit1: TcxRichEdit;
    cgUnSelect: TcxGrid;
    cgvUnSelect: TcxGridDBTableView;
    cgUnSelectLevel1: TcxGridLevel;
    dsUnSelect: TDataSource;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cgSelect: TcxGrid;
    cgvSelect: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    pbProcess: TcxProgressBar;
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    qryUnSelect: TZQuery;
    qrySelect: TZQuery;
    qrySet: TZQuery;
    qrySet2: TZQuery;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBOrgChartReportLink;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    OrgJabatan: TdxDbOrgChart;
    Panel5: TPanel;
    cxbtnTambahSamping: TcxButton;
    cxbtnTambahAnak: TcxButton;
    cxbtnHapus: TcxButton;
    cgJabatan: TcxGrid;
    cgvJabatan: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cgvJabatannamajabatan: TcxGridDBColumn;
    cgvJabatanstatuslevel: TcxGridDBColumn;
    cgvJabatanjmlpegawai: TcxGridDBColumn;
    cgvJabatandeskripsi: TcxGridDBColumn;
    cgvJabatankodejabatan: TcxGridDBColumn;
    cgvJabataninduk: TcxGridDBColumn;
    cxbtnPrint: TcxButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    dsJabatan: TDataSource;
    procedure cxbtnPrintClick(Sender: TObject);
    procedure OrgJabatanDblClick(Sender: TObject);
    procedure OrgJabatanNewKey(Sender: TObject; MaxValue: Variant;
      var KeyValue: Variant);
    procedure OrgJabatanCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure cxbtnHapusClick(Sender: TObject);
    procedure cxbtnTambahAnakClick(Sender: TObject);
    procedure cxbtnTambahSampingClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure OrgJabatanClick(Sender: TObject);
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
uses untProcedure, untConstanta, dtmGeneral,dtmglobal, dtmShare;

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
    qrySet.Params[0].value:=dmGeneral.qryJabatan.FieldByName('kodejabatan').asstring;
    qrySet.Params[1].value:=cgvUnSelect.Controller.SelectedRows[i].Values[0];
    qrySet.ExecSQL;
  end;
  pbProcess.Visible := False;
  Refresh;
end;

procedure TfmJabatan.DeinitForm;
begin
end;


procedure TfmJabatan.OrgJabatanClick(Sender: TObject);
begin
  Refresh;
end;

procedure TfmJabatan.OrgJabatanCreateNode(Sender: TObject; Node: TdxOcNode);
begin
  with Node, dmgeneral.qryjabatan do
  begin
{    if FindField('width').AsInteger > 50 then
      Width := FindField('width').AsInteger;
    if FindField('height').AsInteger > 50 then
      Height := FindField('height').AsInteger;
    Color := FindField('color').AsInteger;
}  end;
end;

procedure TfmJabatan.OrgJabatanDblClick(Sender: TObject);
begin
  if (OrgJabatan.Selected <> nil) then
      OrgJabatan.ShowEditor;
end;

procedure TfmJabatan.OrgJabatanNewKey(Sender: TObject; MaxValue: Variant;
  var KeyValue: Variant);
begin
  dmshare.qryGetTransactionIdNotDate.Close;
  dmshare.qryGetTransactionIdNotDate.Params[0].Value := 'jabatan';
  dmshare.qryGetTransactionIdNotDate.Params[1].Value := 'kodejabatan';
  if dmgeneral.AJabatanLevel='' then
     dmgeneral.AJabatanLevel:='1';
  dmshare.qryGetTransactionIdNotDate.Params[2].Value := '';
  dmshare.qryGetTransactionIdNotDate.Params[3].Value := 4;
  OpenIfClose(Application, dmshare.qryGetTransactionIdNotDate, False, False);;
  Keyvalue:=dmshare.qryGetTransactionIdNotDate.Fields[0].AsString;
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
  dmGlobal.InitComponent(Self);
  openAll;
end;

procedure TfmJabatan.openAll;
begin
  OpenIfClose(Application, dmGeneral.qryJabatan, true, False);
  RefreshAll;
end;

procedure TfmJabatan.RefreshAll;
begin
  LockRefresh(Application, dmGeneral.qryJabatan, 'kodejabatan', False);
  Refresh;
end;

procedure TfmJabatan.Refresh;
begin
 qryUnSelect.Params[0].Value:=dmGeneral.qryJabatan.FieldByName('kodejabatan').asstring;
 LockRefreshIfOpen(Application,qryUnSelect,true);
 qrySelect.Params[0].Value:=dmGeneral.qryJabatan.FieldByName('kodejabatan').asstring;
 LockRefreshIfOpen(Application,qrySelect,true);
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
    qrySet2.Params[0].value:=cgvSelect.Controller.SelectedRows[i].Values[0];
    qrySet2.ExecSQL;
  end;
  pbProcess.Visible := False;
  Refresh;
end;

procedure TfmJabatan.cxbtnHapusClick(Sender: TObject);
begin
    if (OrgJabatan.Selected <> nil) then
      OrgJabatan.Delete(OrgJabatan.Selected);
end;

procedure TfmJabatan.cxbtnPrintClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TfmJabatan.cxbtnTambahAnakClick(Sender: TObject);
var
  Node : TdxOcNode;
begin
    dmgeneral.AJabatanLevel:=inttostr(dmgeneral.qryJabatan.fieldbyname('statuslevel').asinteger+1);
    dmgeneral.qryjabatan.DisableControls;
    if (OrgJabatan.Selected <> nil) then
    begin
      //OrgJabatan.
      Node := OrgJabatan.AddChild(OrgJabatan.Selected, Nil);
    end
    else Node := OrgJabatan.Add(nil, nil);
    Node.Text := 'Jabatan Baru';
    Node.Color := clWhite;
    Node.Shape := shRectangle;
    if OrgJabatan.Selected <> nil then OrgJabatan.Selected.Expanded := True;
    OrgJabatan.Selected := Node;
    dmgeneral.qryjabatan.EnableControls;
end;

procedure TfmJabatan.cxbtnTambahSampingClick(Sender: TObject);
var
  Node : TdxOcNode;
begin
    dmgeneral.AJabatanLevel:=dmgeneral.qryJabatan.fieldbyname('statuslevel').asstring;
    dmgeneral.qryJabatan.DisableControls;
    if (OrgJabatan.Selected <> nil) then
      Node := OrgJabatan.Insert(OrgJabatan.Selected, Nil)
    else Node := OrgJabatan.Add(nil, nil);
    Node.Text := 'Jabatan Baru';
    Node.Color := clWhite;
    Node.Shape := shRectangle;
    OrgJabatan.Selected := Node;
    dmgeneral.qryJabatan.EnableControls;
end;

end.
