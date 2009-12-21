unit frmCashBankTransactionType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, MemDS, DBAccess, Uni, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxButtons;

type
  TfmCashBankTransactionType = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaycashbanktransactiontypeid: TcxGridDBColumn;
    cgvPrevDisplayflagbank: TcxGridDBColumn;
    cgvPrevDisplayflagout: TcxGridDBColumn;
    cgvPrevDisplaycashbanktransactiontypename: TcxGridDBColumn;
    cgvPrevDisplayflagfix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCompanyId: TLabel;
    dbeCashBankTransactionTypeId: TcxDBTextEdit;
    lblType: TLabel;
    dblcFlagBank: TcxDBImageComboBox;
    lblCompanyName: TLabel;
    dbeCashBankTransactionTypeName: TcxDBTextEdit;
    lblAddress: TLabel;
    dblcFlagOut: TcxDBImageComboBox;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    qryCashBankTransactionType: TUniQuery;
    procedure qryCashBankTransactionTypeBeforeEdit(DataSet: TDataSet);
    procedure qryCashBankTransactionTypeNewRecord(DataSet: TDataSet);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCashBankTransactionType: TfmCashBankTransactionType;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmAccounting;

procedure TfmCashBankTransactionType.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmCashBankTransactionType.DeinitForm;
begin
  // Refresh link preview
  LockRefresh(dmAccounting.qryPrevCashBankTransactionType);

  inherited;
end;

procedure TfmCashBankTransactionType.InitForm;
begin
  inherited;

  SetReadOnly(dblcFlagOut, True, COLOR_INACTIVE);
  SetReadOnly(dblcFlagBank, True, COLOR_INACTIVE);

  OpenIfClose(qryCashBankTransactionType);
end;

procedure TfmCashBankTransactionType.qryCashBankTransactionTypeBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmCashBankTransactionType.qryCashBankTransactionTypeNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  SetReadOnly(dblcFlagOut, False);
  SetReadOnly(dblcFlagBank, False);

  DataSet.FieldByName('FlagBank').AsString := '0';
  DataSet.FieldByName('FlagOut').AsString := '0';
  DataSet.FieldByName('FlagUsable').AsString := '0';
  DataSet.FieldByName('FlagFix').AsString := '0';
end;

procedure TfmCashBankTransactionType.RefreshAll;
begin
  inherited;

  LockRefresh(qryCashBankTransactionType);
end;

end.
