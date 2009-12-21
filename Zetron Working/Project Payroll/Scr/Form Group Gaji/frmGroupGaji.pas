unit frmGroupGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, DB, dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxContainer, cxTextEdit, cxDBEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TfmGroupGaji = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvExplorerkodegroupgaji: TcxGridDBColumn;
    cgvExplorernamagroupgaji: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    dbeKodeGroupGaji: TcxDBTextEdit;
    dbeNamaGroupGaji: TcxDBTextEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupGaji: TfmGroupGaji;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta;


{ TfmGroupGaji }

procedure TfmGroupGaji.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryGroupGaji, False, False);

end;

procedure TfmGroupGaji.RefreshAll;
begin
  inherited;

end;

end.
