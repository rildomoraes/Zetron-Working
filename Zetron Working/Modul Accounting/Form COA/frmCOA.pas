unit frmCOA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxImageComboBox, cxInplaceContainer, cxDBTL, cxTLData,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDropDownEdit, cxDBEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, DB, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls,
  cxTLdxBarBuiltInMenu;

type
  TfmCOA = class(TFormUniMasterEx)
    lblIdOutlet: TLabel;
    dbeCOACode: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeCOAName: TcxDBTextEdit;
    lblStatusType: TLabel;
    dbeStatusType: TcxDBImageComboBox;
    lblCoaIdParent: TLabel;
    dbeCOAIdParent: TcxDBExtLookupComboBox;
    dbtCOA: TcxDBTreeList;
    tlCOACOACode: TcxDBTreeListColumn;
    tlCOACOAName: TcxDBTreeListColumn;
    tlCOAStatusType: TcxDBTreeListColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCOA: TfmCOA;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmAccounting;

procedure TfmCOA.InitForm;
begin
  inherited;

  OpenIfClose(dmAccounting.qryCOA, True);
  OpenIfClose(dmAccounting.qryPrevCOAParent, True);
end;

procedure TfmCOA.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryCOA, True);
  LockRefresh(dmAccounting.qryPrevCOAParent, True);
end;

end.
