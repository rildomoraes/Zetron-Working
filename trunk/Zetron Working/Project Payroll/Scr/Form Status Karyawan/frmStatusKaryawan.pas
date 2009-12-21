unit frmStatusKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxColorComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalc,
  cxDBEdit, cxMaskEdit, cxDBColorComboBox, cxContainer, cxTextEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmStatusKaryawan = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeKodeStatus: TcxDBTextEdit;
    dbeNama: TcxDBTextEdit;
    lblCountryName: TLabel;
    Label1: TLabel;
    cxDBColorComboBox1: TcxDBColorComboBox;
    dbeUangMakan: TcxDBCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbeUangTransport: TcxDBCalcEdit;
    cgStatusKaryawan: TcxGrid;
    cgvStatusKaryawan: TcxGridDBTableView;
    cgvStatusKaryawankodestatus: TcxGridDBColumn;
    cgvStatusKaryawannamastatus: TcxGridDBColumn;
    cgvStatusKaryawanwarna: TcxGridDBColumn;
    cgvStatusKaryawanuangmakan: TcxGridDBColumn;
    cgvStatusKaryawanuangtransport: TcxGridDBColumn;
    cgStatusKaryawanLevel1: TcxGridLevel;
    Label9: TLabel;
    Label4: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStatusKaryawan: TfmStatusKaryawan;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniMasterEx1 }

procedure TfmStatusKaryawan.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryStatusKaryawan,true);
  SetReadOnly(cgvStatusKaryawan);

end;

procedure TfmStatusKaryawan.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryStatusKaryawan);

end;

end.
