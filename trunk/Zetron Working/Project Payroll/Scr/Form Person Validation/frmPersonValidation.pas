unit frmPersonValidation;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, StdCtrls, cxButtons, ExtCtrls;

type
  TfmPersonValidation = class(TFormUniMasterEx)
    cgvPersonValidation: TcxGridDBTableView;
    cgPersonValidationLevel1: TcxGridLevel;
    cgPersonValidation: TcxGrid;
    cgvPersonValidationpegawaiid: TcxGridDBColumn;
    cgvPersonValidationNama: TcxGridDBColumn;
    cgvPersonValidationNoPeg: TcxGridDBColumn;
    cgPrevPersonValidation: TcxGrid;
    cgvPrevPersonValidation: TcxGridDBTableView;
    cgvPrevPersonValidationpegawaiid: TcxGridDBColumn;
    cgvPrevPersonValidationnopeg: TcxGridDBColumn;
    cgvPrevPersonValidationnama: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPersonValidation: TfmPersonValidation;

implementation

{$R *.dfm}
uses untProcedure, untConstanta,dtmgeneral;

{ TFormUniMasterEx1 }

procedure TfmPersonValidation.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPrevPegawai, False, True);
  OpenIfClose(dmGeneral.qryPersonValidation, False, True);
  SetReadOnly(cgvPrevPersonValidation);

end;

procedure TfmPersonValidation.RefreshAll;
begin
  inherited;

end;

end.
