unit frmPayrollType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxDBEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmKomponenPayroll = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvExplorerpayrolltype: TcxGridDBColumn;
    cgvExplorerpayrolltypename: TcxGridDBColumn;
    lblSuppliesCategory: TLabel;
    dbePayrollTypeName: TcxDBTextEdit;
    lblIdSupplies: TLabel;
    dbePayrollType: TcxDBTextEdit;
    btnGetId: TcxButton;
    Label9: TLabel;
    Label1: TLabel;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmKomponenPayroll: TfmKomponenPayroll;

implementation

{$R *.dfm}

uses dtmgeneral,untProcedure,dtmshare;
{ TFormKomponenPayroll }

procedure TfmKomponenPayroll.btnGetIdClick(Sender: TObject);
begin
  inherited;
  dmshare.qryGetTransactionIdNotDate.Close;
  dmshare.qryGetTransactionIdNotDate.Parameters[0].Value := 'payrolltype';
  dmshare.qryGetTransactionIdNotDate.Parameters[1].Value := 'payrolltype';
  dmshare.qryGetTransactionIdNotDate.Parameters[2].Value := ''  ;
  dmshare.qryGetTransactionIdNotDate.Parameters[3].Value := 2;
  OpenIfClose(dmshare.qryGetTransactionIdNotDate, False, True);;
  dmgeneral.qryPayrollType.FieldByName('payrolltype').AsString :=dmshare.qryGetTransactionIdNotDate.Fields[0].AsString;
end;

procedure TfmKomponenPayroll.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if dmgeneral.qryPayrollType.State in [dsinsert,dsedit] then
     btngetid.Enabled:=true
  else
     btngetid.Enabled:=false;
end;

procedure TfmKomponenPayroll.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPayrollType, False, False);

end;

procedure TfmKomponenPayroll.RefreshAll;
begin
  inherited;

end;

end.
