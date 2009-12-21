unit frmCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxHyperLinkEdit, cxImage, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxMaskEdit, cxSpinEdit,
  cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  ActnList, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  dxDockPanel, cxButtons;

type
  TfmCompany = class(TFormUniMasterEx)
    lblCompanyId: TLabel;
    dbeCompanyId: TcxDBTextEdit;
    lblCompanyName: TLabel;
    dbeCompanyname: TcxDBTextEdit;
    lblAddress: TLabel;
    dbeAddress2: TcxDBTextEdit;
    dbeAddress: TcxDBTextEdit;
    lblTelephone: TLabel;
    dbeTelephone: TcxDBTextEdit;
    lblFax: TLabel;
    dbeFax: TcxDBTextEdit;
    lblEmail: TLabel;
    dbeEmail: TcxDBHyperLinkEdit;
    lblWebsite: TLabel;
    dbeWebsite: TcxDBHyperLinkEdit;
    Label1: TLabel;
    dbeYear: TcxDBSpinEdit;
    Label2: TLabel;
    dbiLogo: TcxDBImage;
    lblLeftClickToUploadPicture: TLabel;
    cgvGrid: TcxGridDBTableView;
    cgvGridCompanyId: TcxGridDBColumn;
    cgvGridCompanyName: TcxGridDBColumn;
    cgvGridEmail: TcxGridDBColumn;
    cgvGridWebsite: TcxGridDBColumn;
    cgvGridImage: TcxGridDBColumn;
    cgvGridFlagFix: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure RefreshAll; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmCompany: TfmCompany;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmCompany.cgvPrevDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName(FIELD_FLAGFIX).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmCompany.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if TDataSource(Sender).State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
      SetReadOnly(dbeCompanyId, True, COLOR_INACTIVE);
  end;
  if TDataSource(Sender).State in [dsBrowse] then
  begin
    SetReadOnly(dbeCompanyId, False);
  end;
end;

procedure TfmCompany.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCompany);
end;

procedure TfmCompany.RefreshAll;
begin
  inherited;
  
  LockRefresh(dmGlobal.qryCompany);
end;

end.
