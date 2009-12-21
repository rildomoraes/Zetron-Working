unit frmPrintFoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBExtLookupComboBox, MemDS,
  DBAccess, Uni, cxProgressBar, cxContainer, cxImage, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls, ADODB,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPrintFoto = class(TFormUniPosition)
    cgPegawai: TcxGrid;
    cgvPegawai: TcxGridDBTableView;
    cgvPegawaipegawaiid: TcxGridDBColumn;
    cgvPegawaiflagproses: TcxGridDBColumn;
    cgvPegawainopeg: TcxGridDBColumn;
    cgvPegawainama: TcxGridDBColumn;
    cgvPegawaitglmasuk: TcxGridDBColumn;
    cgvPegawainamaperusahaan: TcxGridDBColumn;
    cgvPegawainamadivisi: TcxGridDBColumn;
    cgvPegawainamadepartemen: TcxGridDBColumn;
    cgvPegawaikodeperusahaan: TcxGridDBColumn;
    cgvPegawaikodedivisi: TcxGridDBColumn;
    cgvPegawaikodedepartemen: TcxGridDBColumn;
    cgPegawaiLevel1: TcxGridLevel;
    Panel1: TPanel;
    BPreview: TcxButton;
    BPrint: TcxButton;
    BReset: TcxButton;
    pbProcess: TcxProgressBar;
    dsPegawai: TDataSource;
    dsFoto: TDataSource;
    IvPositionDevExpress2: TIvPositionDevExpress;
    IvPositionStandard2: TIvPositionStandard;
    qryPegawai: TADOQuery;
    qryFoto: TADOQuery;
    qrySet: TADOQuery;
    qrySet2: TADOQuery;
    pnlLeft: TPanel;
    dbeFoto: TcxDBImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BResetClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure BPreviewClick(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryPegawaiAfter(DataSet: TDataSet);
    procedure qryFotoAfter(DataSet: TDataSet);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    hasil, action : string;
  public
    { Public declarations }
  end;

var
  fmPrintFoto: TfmPrintFoto;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGeneral,dtmglobal,frmPrintFastReport,frmPreviewFastReport;

procedure TfmPrintFoto.BPreviewClick(Sender: TObject);
begin
  inherited;
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPT002', '', '', '');
end;

procedure TfmPrintFoto.BPrintClick(Sender: TObject);
begin
  inherited;
  TfmPrintFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPT002', '', '', '');
end;

procedure TfmPrintFoto.BResetClick(Sender: TObject);
begin
  inherited;
  qrySet.ExecSQL;
  LockRefresh(qryPegawai,true);
end;

procedure TfmPrintFoto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i:integer;
begin
  inherited;
  if (Key = VK_SPACE) then
  begin
    pbProcess.Visible := True;
    pbProcess.Properties.Max := cgvPegawai.Controller.SelectedRowCount;
    pbProcess.Refresh;

    for i := 0 to cgvPegawai.Controller.SelectedRowCount - 1 do
    begin
      pbProcess.Position := pbProcess.Position + 1;
      pbProcess.Refresh;
      qrySet2.Parameters[0].value:=cgvPegawai.Controller.SelectedRecords[i].Values[0];
      qrySet2.ExecSQL;
    end;
    pbProcess.Visible := False;
    LockRefresh(qryPegawai, true);
  end;
end;

procedure TfmPrintFoto.InitForm;
begin
  inherited;
  OpenIfClose(dmGeneral.qryPerusahaan,false,true);
  OpenIfClose(dmGeneral.qryDivisi,false,true);
  OpenIfClose(dmGeneral.qryDepartemen,false,true);
  OpenIfClose(qryPegawai,false,true);
  OpenIfClose(qryFoto,false,true);
end;

procedure TfmPrintFoto.qryFotoAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('PegawaiFoto',hasil,action);
end;

procedure TfmPrintFoto.qryPegawaiAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Pegawai',hasil,action);
end;

procedure TfmPrintFoto.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmPrintFoto.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

end.


