unit frmBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxContainer,
  cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmBank = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayAccountNo: TcxGridDBColumn;
    cgvPrevDisplayAccountName: TcxGridDBColumn;
    cgvPrevDisplayBankId: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayTelephone: TcxGridDBColumn;
    cgvPrevDisplayFlagInactive: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblBankId: TLabel;
    dbeBankId: TcxDBTextEdit;
    dbFlagInactive: TcxDBCheckBox;
    lblAccountNo: TLabel;
    dbeAccountNo: TcxDBTextEdit;
    lblAccountName: TLabel;
    dbeAccountName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    dbeAddress: TcxDBTextEdit;
    lblTelephone: TLabel;
    dbeTelephone: TcxDBTextEdit;
    Label1: TLabel;
    dbmMemo: TcxDBMemo;
    qryBank: TUniQuery;
    procedure qryBankNewRecord(DataSet: TDataSet);
    procedure qryBankBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmBank: TfmBank;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmAccounting, dtmShare;

procedure TfmBank.DeinitForm;
begin
  // Refresh link preview
  LockRefresh(dmAccounting.qryPrevBank);
  LockRefresh(dmAccounting.qryPrevAccount);

  inherited;
end;

procedure TfmBank.qryBankBeforePost(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmBank.qryBankNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('FlagInactive').AsInteger := 0;
end;

procedure TfmBank.InitForm;
begin
  inherited;

  OpenIfClose(qryBank);
end;

procedure TfmBank.RefreshAll;
begin
  inherited;
  LockRefresh(qryBank);
end;

end.

