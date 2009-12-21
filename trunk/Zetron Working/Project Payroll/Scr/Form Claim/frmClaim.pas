unit frmClaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, untIvPositionDevExpress, untIvPositionStandard,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid,  cxClasses,
  cxGridLevel, cxSplitter, cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  ExtCtrls, ADODB, dxDockControl, dxDockPanel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxDockControlPainter;

type
  TfmClaim = class(TForm)
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    feSetupButton1: TfeSetupButton;
    dxDockSite1: TdxDockSite;
    dpInfo: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dpExplorer: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockingManager1: TdxDockingManager;
    cgClaim: TcxGrid;
    cgvClaim: TcxGridDBTableView;
    cgClaimLevel1: TcxGridLevel;
    lblCountryId: TLabel;
    lblCountryName: TLabel;
    dbeKodePendidikan: TcxDBTextEdit;
    dbeJurusan: TcxDBTextEdit;
    cgvClaimkodejabatan: TcxGridDBColumn;
    cgvClaimmedical: TcxGridDBColumn;
    cgvClaimhospital: TcxGridDBColumn;
    cgvClaimmaternity: TcxGridDBColumn;
    cgvClaimglasses: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure feSetupButton1ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure feSetupButton1DataSetRefresh1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;
  public
    { Public declarations }
    class procedure ExecuteForm;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{$R *.dfm}

procedure TfmClaim.InitForm;
begin
  dmGlobal.InitComponent(Self);

  OpenIfClose(dmGeneral.qryClaim,true);

  SetReadOnly(cgvClaim);
end;

procedure TfmClaim.DeinitForm;
begin
  // Refresh link preview
  LockRefresh( dmGeneral.qryClaim);
end;

class procedure TfmClaim.ExecuteForm;
var
  fmClaim: TfmClaim;
begin
  fmClaim := TfmClaim.Create(Application);
  with fmClaim do
  begin
    try
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmClaim.RefreshAll;
begin
  LockRefresh(dmGeneral.qryClaim);
end;

procedure TfmClaim.feSetupButton1ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = feSetupButton1.DataSetInsert1)
    or (Action = feSetupButton1.DataSetEdit1) then
  begin
    dbeKodePendidikan.SetFocus;
  end;
  feSetupButton1.ActionList1Execute(Action, Handled);
end;

procedure TfmClaim.feSetupButton1DataSetRefresh1Execute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

end.




