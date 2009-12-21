unit frmOutSourcing;

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
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxDBColorComboBox, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmOutSourcing = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeKodeOutSourcing: TcxDBTextEdit;
    dbeNama: TcxDBTextEdit;
    lblCountryName: TLabel;
    Label1: TLabel;
    dbcWarna: TcxDBColorComboBox;
    cgOutSourcing: TcxGrid;
    cgvOutSourcing: TcxGridDBTableView;
    cgvOutSourcingkodeoutsourcing: TcxGridDBColumn;
    cgvOutSourcingnamaoutsourcing: TcxGridDBColumn;
    cgvOutSourcingwarna: TcxGridDBColumn;
    cgOutSourcingLevel1: TcxGridLevel;
    Label9: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmOutSourcing: TfmOutSourcing;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniMasterEx1 }

procedure TfmOutSourcing.InitForm;
begin
  inherited;

  SetReadOnly(cgvOutSourcing);

  OpenIfClose(dmGeneral.qryOutSourcing,true);
end;

end.
