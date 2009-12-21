unit frmBank;

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
  TfmBank = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvExplorerkodebank: TcxGridDBColumn;
    cgvExplorernamabank: TcxGridDBColumn;
    cgvExploreralamatbank: TcxGridDBColumn;
    cgvExplorertelp: TcxGridDBColumn;
    cgvExplorerkodetransfer: TcxGridDBColumn;
    lblSuppliesCategory: TLabel;
    dbeKodeBank: TcxDBTextEdit;
    dbeNamaBank: TcxDBTextEdit;
    lblIdSupplies: TLabel;
    Label1: TLabel;
    dbeAlamatBank: TcxDBTextEdit;
    dbeTelp: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbeKodeTransfer: TcxDBTextEdit;
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
  fmBank: TfmBank;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure;

{ TfmBank }

procedure TfmBank.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryBank, False, False);

end;

procedure TfmBank.RefreshAll;
begin
  inherited;

end;

end.
