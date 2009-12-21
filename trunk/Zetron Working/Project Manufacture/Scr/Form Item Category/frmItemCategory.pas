unit frmItemCategory;

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
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ActnList, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, dxDockPanel, cxButtons;

type
  TfmItemCategory = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayItemCategoryId: TcxGridDBColumn;
    cgvPrevDisplayItemCategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblItemCategoryName: TLabel;
    dbeItemCategoryName: TcxDBTextEdit;
    Label1: TLabel;
    dbeItemCategoryCode: TcxDBTextEdit;
    cgvPrevDisplayItemCategoryCode: TcxGridDBColumn;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    cgvPrevDisplayItemCategoryFlagFix: TcxGridDBColumn;
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmItemCategory: TfmItemCategory;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal, dtmInventory;

procedure TfmItemCategory.cgvPrevDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName(FIELD_FLAGFIX).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmItemCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryItemCategory, True);
end;

procedure TfmItemCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItemCategory, True);
end;

end.
