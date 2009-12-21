unit frmPayrollPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer, cxTextEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmPayrollPeriod = class(TFormUniMasterEx)
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
    cgvExplorerTGLTUTUP: TcxGridDBColumn;
    cgvExplorerPEGAWAIID: TcxGridDBColumn;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPayrollPeriod: TfmPayrollPeriod;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta;


{ TfmPeriodeGaji }

procedure TfmPayrollPeriod.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryGroupGaji, False, True);
  OpenIfClose(dmGeneral.qryPeriodeGajiHd, False, True);
  OpenIfClose(dmGeneral.qryPeriodeGajiDt, False, True);


end;

procedure TfmPayrollPeriod.RefreshAll;
begin
  inherited;

end;

end.
