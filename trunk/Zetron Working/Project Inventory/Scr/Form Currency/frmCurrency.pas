unit frmCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmCurrency = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeCurrencyId: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeCurrencyName: TcxDBTextEdit;
    cgvPrevDisplaycurrencyid: TcxGridDBColumn;
    cgvPrevDisplaycurrencyname: TcxGridDBColumn;
    cgvPrevDisplayflagfix: TcxGridDBColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCurrency: TfmCurrency;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal;

procedure TfmCurrency.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCurrencyMaster, True);
end;

procedure TfmCurrency.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCurrencyMaster, True);
end;

end.
