unit frmPeriodeGaji;

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
  cxEdit, cxDBData, cxDBExtLookupComboBox, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCalendar, cxCalc, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer, cxTextEdit;

type
  TfmPeriodeGaji = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvExplorerkodeperiode: TcxGridDBColumn;
    cgvExplorernamaperiode: TcxGridDBColumn;
    cgvExplorertglakhir: TcxGridDBColumn;
    cgvExplorertglawal: TcxGridDBColumn;
    Panel1: TPanel;
    lblSuppliesCategory: TLabel;
    Label1: TLabel;
    dbeKodePeriode: TcxDBTextEdit;
    Label2: TLabel;
    dbeNamaPeriode: TcxDBTextEdit;
    dbeTglAwal: TcxDBDateEdit;
    Label3: TLabel;
    dbeTglAkhir: TcxDBDateEdit;
    cgPeriodeGaji: TcxGrid;
    cgPeriodeGajiLevel1: TcxGridLevel;
    cgvPeriodeGaji: TcxGridDBTableView;
    cgvPeriodeGajikodeperiode: TcxGridDBColumn;
    cgvPeriodeGajikodegroupgaji: TcxGridDBColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPeriodeGaji: TfmPeriodeGaji;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta;


{ TfmPeriodeGaji }

procedure TfmPeriodeGaji.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryGroupGaji, False, True);
  OpenIfClose(dmGeneral.qryPeriodeGajiHd, False, True);
  OpenIfClose(dmGeneral.qryPeriodeGajiDt, False, True);


end;

procedure TfmPeriodeGaji.RefreshAll;
begin
  inherited;

end;

end.
