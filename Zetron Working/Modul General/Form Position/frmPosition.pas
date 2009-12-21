unit frmPosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls,
  cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, ActnList,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, dxDockPanel,
  cxButtons;

type
  TfmPosition = class(TFormUniMasterEx)
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayDepartmentId: TcxGridDBColumn;
    cgvPrevDisplayPositionId: TcxGridDBColumn;
    cgvPrevDisplayPositionName: TcxGridDBColumn;
    cgvPrevDisplayFlagFix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblDepartment: TLabel;
    dblcDepartmentId: TcxDBExtLookupComboBox;
    lblPositionId: TLabel;
    dbePositionId: TcxDBTextEdit;
    lblPositionName: TLabel;
    dbePositionName: TcxDBTextEdit;
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
  fmPosition: TfmPosition;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmPosition.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmPosition.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dblcDepartmentId, False);
    SetReadOnly(dbePositionId, False);
  end;
  if dsDefault.State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
    begin
      SetReadOnly(dblcDepartmentId, True, COLOR_INACTIVE);
      SetReadOnly(dbePositionId, True, COLOR_INACTIVE);
    end;
  end;
end;

procedure TfmPosition.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryDepartment);
  OpenIfClose(dmGlobal.qryPosition);
end;

procedure TfmPosition.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryDepartment);
  LockRefresh(dmGlobal.qryPosition);
end;

end.

