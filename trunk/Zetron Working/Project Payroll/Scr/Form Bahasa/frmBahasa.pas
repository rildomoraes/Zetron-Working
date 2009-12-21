unit frmBahasa;

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
  TfmBahasa = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeKodeBahasa: TcxDBTextEdit;
    dbeNamaBahasa: TcxDBTextEdit;
    lblCountryName: TLabel;
    cgBahasa: TcxGrid;
    cgvBahasa: TcxGridDBTableView;
    cgvBahasakodebahasa: TcxGridDBColumn;
    cgvBahasanamabahasa: TcxGridDBColumn;
    cgBahasaLevel1: TcxGridLevel;
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
  fmBahasa: TfmBahasa;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;


{ TFormUniMasterEx1 }

procedure TfmBahasa.InitForm;
begin
  inherited;

  OpenIfClose(dmgeneral.qryBahasa,true);
  SetReadOnly(cgvBahasa);

end;

procedure TfmBahasa.RefreshAll;
begin
  inherited;

  LockRefresh(dmgeneral.qryBahasa);

end;

end.
