unit frmPayrollPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCheckBox, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmPayrollPegawai = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvExplorerpegawaiid: TcxGridDBColumn;
    cgvExplorernama: TcxGridDBColumn;
    cgvExplorernopeg: TcxGridDBColumn;
    lblSuppliesCategory: TLabel;
    lblIdSupplies: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeNPWP: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    dbeStatusPajak: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeAccount: TcxDBTextEdit;
    dblcNopeg: TcxDBExtLookupComboBox;
    dblcNama: TcxDBExtLookupComboBox;
    dblcBank: TcxDBExtLookupComboBox;
    dblcGroupGaji: TcxDBExtLookupComboBox;
    dbicModeGaji: TcxDBImageComboBox;
    dblcPerusahaan: TcxDBExtLookupComboBox;
    dblcDivisi: TcxDBExtLookupComboBox;
    dblcDepartemen: TcxDBExtLookupComboBox;
    cgvExplorerkodebank: TcxGridDBColumn;
    cgvExplorerkodegroupgaji: TcxGridDBColumn;
    cgvExploreraccount: TcxGridDBColumn;
    cgvExplorernpwp: TcxGridDBColumn;
    cgvExplorerstatuspajak: TcxGridDBColumn;
    cgvExplorermodegaji: TcxGridDBColumn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPayrollPegawai: TfmPayrollPegawai;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta;

{ TfmPayrollDetail }

procedure TfmPayrollPegawai.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPayrollDetail, False, False);
  OpenIfClose(dmGeneral.qryGroupGaji, False, False);
  OpenIfClose(dmGeneral.qryPrevPegawai, False, False);
  OpenIfClose(dmGeneral.qryBank, False, False);

  SetReadOnly(dblcPerusahaan, True, COLOR_INACTIVE);
  SetReadOnly(dblcDivisi, True, COLOR_INACTIVE);
  SetReadOnly(dblcDepartemen, True, COLOR_INACTIVE);

end;

procedure TfmPayrollPegawai.RefreshAll;
begin
  inherited;

end;

end.
