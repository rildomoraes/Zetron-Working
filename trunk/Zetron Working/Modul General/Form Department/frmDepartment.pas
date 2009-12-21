unit frmDepartment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ActnList, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, dxDockPanel, cxButtons;

type
  TfmDepartment = class(TFormUniMasterEx)
    lblCompany: TLabel;
    dblcCompanyId: TcxDBExtLookupComboBox;
    lblDepartmentId: TLabel;
    dbeDepartmentId: TcxDBTextEdit;
    lblDepartmentName: TLabel;
    dbeDepartmentName: TcxDBTextEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayCompanyId: TcxGridDBColumn;
    cgvPrevDisplayDepartmentId: TcxGridDBColumn;
    cgvPrevDisplayDepartmentName: TcxGridDBColumn;
    cgvPrevDisplayFlagFix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    Label9: TLabel;
    procedure dsDefaultStateChange(Sender: TObject);
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
  fmDepartment: TfmDepartment;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmDepartment.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmDepartment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCompanyId, False);
    SetReadOnly(dbeDepartmentId, False);
  end;
  if dsDefault.State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
    begin
      SetReadOnly(dblcCompanyId, True, COLOR_INACTIVE);
      SetReadOnly(dbeDepartmentId, True, COLOR_INACTIVE);
    end;
  end;
end;

procedure TfmDepartment.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCompany);
  OpenIfClose(dmGlobal.qryDepartment);
end;

procedure TfmDepartment.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCompany);
  LockRefresh(dmGlobal.qryDepartment);
end;

end.
