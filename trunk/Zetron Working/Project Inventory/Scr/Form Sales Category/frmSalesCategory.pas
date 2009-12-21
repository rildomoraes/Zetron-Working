unit frmSalesCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
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
  TfmSalesCategory = class(TFormUniMasterEx)
    lblCompany: TLabel;
    dbeSalesCategoryId: TcxDBTextEdit;
    lblDepartmentId: TLabel;
    dbeSalesCategoryName: TcxDBTextEdit;
    Label1: TLabel;
    dbePrefix: TcxDBTextEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    cgvPrevDisplaysalescategoryid: TcxGridDBColumn;
    cgvPrevDisplaysalescategoryname: TcxGridDBColumn;
    cgvPrevDisplayflagfix: TcxGridDBColumn;
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
  fmSalesCategory: TfmSalesCategory;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGeneral, dtmGlobal, frmUniDBNavigator;

procedure TfmSalesCategory.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmSalesCategory.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbeSalesCategoryId, True, Color_INACTIVE);
  end;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString <> '1' then
      SetReadOnly(dbeSalesCategoryId, False);
  end;
end;

procedure TfmSalesCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qrySalesCategory);
end;

procedure TfmSalesCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qrySalesCategory);
end;

end.
