unit frmKodeAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxContainer,
  cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons;

type
  TfmKodeAbsen = class(TFormUniMasterEx)
    Label1: TLabel;
    dbeKodeAbsen: TcxDBTextEdit;
    dbeKeterangan: TcxDBTextEdit;
    lblCountryName: TLabel;
    Label2: TLabel;
    dbckFlagCekLock: TcxDBCheckBox;
    cgKodeAbsensi: TcxGrid;
    cgvKodeAbsensi: TcxGridDBTableView;
    cgvKodeAbsensikodeabsen: TcxGridDBColumn;
    cgvKodeAbsensiketerangan: TcxGridDBColumn;
    cgvKodeAbsensiflagchecklock: TcxGridDBColumn;
    cgKodeAbsensiLevel1: TcxGridLevel;
    cgvKodeAbsensiFlagFix: TcxGridDBColumn;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    Label3: TLabel;
    dbckFlagAbsenManual: TcxDBCheckBox;
    cgvKodeAbsensiflagabsenmanual: TcxGridDBColumn;
    Label9: TLabel;
    procedure cgvKodeAbsensiStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmKodeAbsen: TfmKodeAbsen;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmKodeAbsen.cgvKodeAbsensiStylesGetContentStyle(
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

procedure TfmKodeAbsen.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryKodeAbsen,true);
  SetReadOnly(cgvKodeAbsensi);
end;

procedure TfmKodeAbsen.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryKodeAbsen);
end;

end.
