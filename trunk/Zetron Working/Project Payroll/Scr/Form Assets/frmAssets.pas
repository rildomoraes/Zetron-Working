unit frmAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls, ADODB;

type
  TfmAssets = class(TFormUniMasterEx)
    Panel1: TPanel;
    lblCountryId: TLabel;
    dbeKodeAsset: TcxDBTextEdit;
    dbeNamaAsset: TcxDBTextEdit;
    lblCountryName: TLabel;
    cgSubAssets: TcxGrid;
    cgvSubAssets: TcxGridDBTableView;
    cgSubAssetsLevel1: TcxGridLevel;
    cgAssets: TcxGrid;
    cgvAssets: TcxGridDBTableView;
    cgvAssetskodeassets: TcxGridDBColumn;
    cgvAssetsnamaassets: TcxGridDBColumn;
    cgAssetsLevel1: TcxGridLevel;
    dsSubAssets: TDataSource;
    cgvSubAssetskodesubassets: TcxGridDBColumn;
    cgvSubAssetsnamasubassets: TcxGridDBColumn;
    qrySubAssets: TADOQuery;
    cgvSubAssetsKODEASSETS: TcxGridDBColumn;
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
  fmAssets: TfmAssets;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniMasterEx1 }

procedure TfmAssets.InitForm;
begin
  inherited;

  OpenIfClose(dmgeneral.qryAssets,true);
  OpenIfClose(dmgeneral.qrySubAssets,true);
  OpenIfClose(qrySubAssets,true);
  SetReadOnly(cgvAssets);

end;

procedure TfmAssets.RefreshAll;
begin
  inherited;

  LockRefresh(dmgeneral.qryAssets);
  LockRefresh(dmgeneral.qrySubAssets);
  LockRefresh(qrySubAssets);

end;

end.
