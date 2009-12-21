unit frmCounter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxTextEdit, cxImageComboBox, ADODB,
  cxSpinEdit, cxPC;

type
  TfmCounter = class(TFormUniMasterEx)
    Panel2: TPanel;
    Panel1: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qryCounterDt1: TADOQuery;
    dsCounterDt1: TDataSource;
    Splitter1: TSplitter;
    pcBody: TcxPageControl;
    tsStatementMemo: TcxTabSheet;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CounterID: TcxGridDBColumn;
    cxGrid1DBTableView1Position: TcxGridDBColumn;
    cxGrid1DBTableView1Nama: TcxGridDBColumn;
    cxGrid1DBTableView1Panjang: TcxGridDBColumn;
    cxGrid1DBTableView1CharacterStr: TcxGridDBColumn;
    cxGrid1DBTableView1Reset: TcxGridDBColumn;
    cxGrid1DBTableView1Bentuk: TcxGridDBColumn;
    cxGrid1DBTableView1Param: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qryCounterDt2: TADOQuery;
    dsCounterDt2: TDataSource;
    cgvDependenciesCounterID: TcxGridDBColumn;
    cgvDependenciesPembanding: TcxGridDBColumn;
    cgvDependenciesNilaiSekarang: TcxGridDBColumn;
    cxGrid2DBTableView1CounterID: TcxGridDBColumn;
    cxGrid2DBTableView1CounterCode: TcxGridDBColumn;
    procedure qryCounterDt1BeforePost(DataSet: TDataSet);
    procedure qryCounterDt1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmCounter: TfmCounter;

implementation

{$R *.dfm}
uses dtmGlobal, dtmGeneral, untProcedure;


{ TfmCounter }

procedure TfmCounter.InitForm;
begin
  inherited;
  OpenIfClose(dmGeneral.qryCounterHd);
  OpenIfClose(qryCounterDt1);
  OpenIfClose(qryCounterDt2);
end;

procedure TfmCounter.qryCounterDt1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmCounter.qryCounterDt1NewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Position').AsInteger := DataSet.RecordCount+1;
  DataSet.FieldByName('Panjang').AsInteger := 0;
  DataSet.FieldByName('Bentuk').AsInteger := 1;
end;

procedure TfmCounter.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryCounterHd);
  LockRefresh(qryCounterDt1);
  LockRefresh(qryCounterDt2);
end;

end.
