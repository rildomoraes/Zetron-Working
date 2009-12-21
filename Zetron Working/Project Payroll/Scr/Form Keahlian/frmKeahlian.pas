unit frmKeahlian;

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
  TfmKeahlian = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeKodeKeahlian: TcxDBTextEdit;
    dbeNamaKeahlian: TcxDBTextEdit;
    lblCountryName: TLabel;
    cgKeahlian: TcxGrid;
    cgvKeahlian: TcxGridDBTableView;
    cgvKeahliankodekeahlian: TcxGridDBColumn;
    cgvKeahliannamakeahlian: TcxGridDBColumn;
    cgKeahlianLevel1: TcxGridLevel;
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
  fmKeahlian: TfmKeahlian;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniMasterEx1 }

procedure TfmKeahlian.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryKeahlian,true);
  SetReadOnly(cgvKeahlian);

end;

procedure TfmKeahlian.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryKeahlian);

end;

end.
