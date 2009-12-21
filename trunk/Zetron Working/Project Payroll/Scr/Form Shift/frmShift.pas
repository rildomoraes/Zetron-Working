unit frmShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxColorComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxDBColorComboBox, cxContainer, cxTextEdit,
  cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmShift = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeKodeStatus: TcxDBTextEdit;
    dbeNama: TcxDBTextEdit;
    lblCountryName: TLabel;
    Label1: TLabel;
    dbclWarna: TcxDBColorComboBox;
    cgStatusKaryawan: TcxGrid;
    cgvShift: TcxGridDBTableView;
    cgvShiftshift: TcxGridDBColumn;
    cgvShiftnamashift: TcxGridDBColumn;
    cgvShiftwarna: TcxGridDBColumn;
    cgStatusKaryawanLevel1: TcxGridLevel;
  private
    { Private declarations }
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmShift: TfmShift;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;


{ TFormUniMasterEx1 }

procedure TfmShift.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryShift,true);
  SetReadOnly(cgvShift);

end;

end.
