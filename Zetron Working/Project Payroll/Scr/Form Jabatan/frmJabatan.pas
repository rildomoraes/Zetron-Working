unit frmJabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, MemDS, DBAccess, Uni, dxPSCore, dxPSGraphicLnk, dxPSdxOCLnk,
  dxPSdxDBOCLnk, dxorgchr, dxdborgc, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMemo, cxRichEdit, ExtCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ADODB;

type
  TfmJabatan = class(TFormUniPosition)
    Splitter3: TSplitter;
    cxRichEdit1: TcxRichEdit;
    cgSelect: TcxGrid;
    cgvSelect: TcxGridDBTableView;
    cgvSelectpegawaiid: TcxGridDBColumn;
    cgvSelectnopeg: TcxGridDBColumn;
    cgvSelectnama: TcxGridDBColumn;
    cgvSelecttglmasuk: TcxGridDBColumn;
    cgvSelectkodeperusahaan: TcxGridDBColumn;
    cgvSelectnamaperusahaan: TcxGridDBColumn;
    cgvSelectkodedivisi: TcxGridDBColumn;
    cgvSelectnamadivisi: TcxGridDBColumn;
    cgvSelectkodedepartemen: TcxGridDBColumn;
    cgvSelectnamadepartemen: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Splitter4: TSplitter;
    Panel3: TPanel;
    cgJabatan: TcxGrid;
    cgvJabatan: TcxGridDBTableView;
    cgvJabatannamajabatan: TcxGridDBColumn;
    cgvJabatanstatuslevel: TcxGridDBColumn;
    cgvJabatanjmlpegawai: TcxGridDBColumn;
    cgvJabatandeskripsi: TcxGridDBColumn;
    cgvJabatankodejabatan: TcxGridDBColumn;
    cgvJabataninduk: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel4: TPanel;
    OrgJabatan: TdxDbOrgChart;
    Panel5: TPanel;
    cxbtnTambahSamping: TcxButton;
    cxbtnTambahAnak: TcxButton;
    cxbtnHapus: TcxButton;
    cxbtnPrint: TcxButton;
    dsSelect: TDataSource;
    IvPositionDevExpress2: TIvPositionDevExpress;
    IvPositionStandard2: TIvPositionStandard;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBOrgChartReportLink;
    dsJabatan: TDataSource;
    qrySelect: TADOQuery;
    procedure cxbtnPrintClick(Sender: TObject);
    procedure cxbtnHapusClick(Sender: TObject);
    procedure cxbtnTambahAnakClick(Sender: TObject);
    procedure cxbtnTambahSampingClick(Sender: TObject);
    procedure OrgJabatanNewKey(Sender: TObject; MaxValue: Variant;
      var KeyValue: Variant);
    procedure OrgJabatanCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure OrgJabatanDblClick(Sender: TObject);
    procedure OrgJabatanClick(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure Refresh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmJabatan: TfmJabatan;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGeneral,dtmglobal, dtmShare;

{ TFormUniPosition1 }

procedure TfmJabatan.cxbtnHapusClick(Sender: TObject);
begin
  inherited;
    if (OrgJabatan.Selected <> nil) then
      OrgJabatan.Delete(OrgJabatan.Selected);
end;

procedure TfmJabatan.cxbtnPrintClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TfmJabatan.cxbtnTambahAnakClick(Sender: TObject);
var
  Node : TdxOcNode;
begin
  inherited;
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
  inherited;
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

procedure TfmJabatan.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryJabatan, true, False);

end;

procedure TfmJabatan.OrgJabatanClick(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfmJabatan.OrgJabatanCreateNode(Sender: TObject;
  Node: TdxOcNode);
begin
  inherited;
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
  inherited;

  if (OrgJabatan.Selected <> nil) then
      OrgJabatan.ShowEditor;
end;

procedure TfmJabatan.OrgJabatanNewKey(Sender: TObject; MaxValue: Variant;
  var KeyValue: Variant);
begin
  inherited;
  dmshare.qryGetTransactionIdNotDate.Close;
  dmshare.qryGetTransactionIdNotDate.Parameters[0].Value := 'jabatan';
  dmshare.qryGetTransactionIdNotDate.Parameters[1].Value := 'kodejabatan';
  if dmgeneral.AJabatanLevel='' then
     dmgeneral.AJabatanLevel:='1';
  dmshare.qryGetTransactionIdNotDate.Parameters[2].Value := '';
  dmshare.qryGetTransactionIdNotDate.Parameters[3].Value := 4;
  OpenIfClose(dmshare.qryGetTransactionIdNotDate, False, False);;
  Keyvalue:=dmshare.qryGetTransactionIdNotDate.Fields[0].AsString;
end;

procedure TfmJabatan.Refresh;
begin
 qrySelect.close;
 qrySelect.Parameters[0].Value:=dmGeneral.qryJabatan.FieldByName('kodejabatan').asstring;
 qrySelect.Open;
end;

end.
