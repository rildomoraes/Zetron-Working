unit frmPurchaseCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxButtons;

type
  TfmPurchaseCategory = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvPrevDisplaypurchasecategoryid: TcxGridDBColumn;
    cgvPrevDisplaypurchasecategoryname: TcxGridDBColumn;
    cgvPrevDisplayflagfix: TcxGridDBColumn;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    lblCompany: TLabel;
    lblDepartmentId: TLabel;
    dbePurchaseCategoryName: TcxDBTextEdit;
    dbePurchaseCategoryId: TcxDBTextEdit;
    Label1: TLabel;
    dbePrefix: TcxDBTextEdit;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private

  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmPurchaseCategory: TfmPurchaseCategory;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGeneral, dtmGlobal;

procedure TfmPurchaseCategory.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmPurchaseCategory.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbePurchaseCategoryId, True, Color_INACTIVE);
  end;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString <> '1' then
      SetReadOnly(dbePurchaseCategoryId, False);
  end;
end;

procedure TfmPurchaseCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPurchaseCategory);
end;

procedure TfmPurchaseCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryPurchaseCategory);
end;

end.
