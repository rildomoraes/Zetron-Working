unit frmLibur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmLibur = class(TFormUniMasterEx)
    cgLibur1: TcxGrid;
    cgvLibur1: TcxGridDBTableView;
    cgvLibur1tgl: TcxGridDBColumn;
    cgvLibur1keterangan: TcxGridDBColumn;
    cgLibur1Level1: TcxGridLevel;
    cgLibur: TcxGrid;
    cgvLibur: TcxGridDBTableView;
    cgvLiburtgl: TcxGridDBColumn;
    cgvLiburketerangan: TcxGridDBColumn;
    cgLiburLevel1: TcxGridLevel;
    pnlCustom: TPanel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
    procedure MonthYearValueChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmLibur: TfmLibur;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta,dtmGlobal;

{ TFormUniMasterEx1 }

procedure TfmLibur.InitForm;
begin
  inherited;
  OpenIfClose(dmGeneral.qryLibur,true);

  GetMonthList(cbMonth, dmglobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmglobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(nil); // -> Trigger dtsSalesInvoiceHd

  SetReadOnly(cgvLibur);

end;

procedure TfmLibur.MonthYearValueChange(Sender: TObject);
begin
  inherited;
  if (dmGeneral.qryLibur.State in [dsEdit, dsInsert]) then
   Abort;

  dmGeneral.qryLibur.Close;
  dmGeneral.qryLibur.Parameters[0].Value :=cbYear.EditValue;
  dmGeneral.qryLibur.Parameters[1].Value :=cbMonth.ItemIndex + 1;
  OpenIfClose(dmGeneral.qryLibur);

end;

procedure TfmLibur.RefreshAll;
begin
  inherited;

end;

end.
