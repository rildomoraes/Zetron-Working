unit frmCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, 
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalendar, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxTextEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

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
    Label9: TLabel;
    Label1: TLabel;
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
