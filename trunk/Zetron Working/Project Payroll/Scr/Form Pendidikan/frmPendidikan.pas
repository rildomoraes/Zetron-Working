unit frmPendidikan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxDBEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmPendidikan = class(TFormUniMasterEx)
    cgPendidikan: TcxGrid;
    cgvPendidikan: TcxGridDBTableView;
    cgPendidikanLevel1: TcxGridLevel;
    Label1: TLabel;
    dbeKodePendidikan: TcxDBTextEdit;
    cgvPendidikankodependidikan: TcxGridDBColumn;
    cgvPendidikanjurusan: TcxGridDBColumn;
    Label2: TLabel;
    dbeJurusan: TcxDBTextEdit;
    Label9: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPendidikan: TfmPendidikan;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniMasterEx1 }

procedure TfmPendidikan.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPendidikan,true);
  SetReadOnly(cgvPendidikan);

end;

procedure TfmPendidikan.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryPendidikan);
  
end;

end.


