unit frmUnitMeasure;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfmUnitMeasure = class(TFormUniMasterEx)
    Label1: TLabel;
    dbeUnitMeasureCode: TcxDBTextEdit;
    Label2: TLabel;
    dbeUnitMeasureName: TcxDBTextEdit;
    cgUnitMeasure: TcxGrid;
    cgvPrevUnitMeasure: TcxGridDBTableView;
    cgUnitMeasureLevel1: TcxGridLevel;
    cgvPrevUnitMeasureUnitMeasureCode: TcxGridDBColumn;
    cgvPrevUnitMeasureUnitMeasureName: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmUnitMeasure: TfmUnitMeasure;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi, untConstanta;


{ TfmUnitMeasure }

procedure TfmUnitMeasure.InitForm;
begin
  inherited;
  SetReadOnly(dbeUnitMeasureCode, True, COLOR_INACTIVE);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
end;

procedure TfmUnitMeasure.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryUnitMeasure);
end;

end.
