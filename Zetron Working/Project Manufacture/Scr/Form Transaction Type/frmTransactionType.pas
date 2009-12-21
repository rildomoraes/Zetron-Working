unit frmTransactionType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, 
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxRadioGroup, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxContainer,
  cxTextEdit, StdCtrls, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter, ADODB;

type
  TfmTransactionType = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayTransactionTypeId: TcxGridDBColumn;
    cgvPrevDisplayTransactionTypeName: TcxGridDBColumn;
    cgvPrevDisplayStatusTransaction: TcxGridDBColumn;
    cgvPrevDisplayFlagFix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblTransactionTypeId: TLabel;
    dbeTransactionTypeCode: TcxDBTextEdit;
    lblTransactionName: TLabel;
    dbeTransactionTypeName: TcxDBTextEdit;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    Label1: TLabel;
    dblcStatusTransaction: TcxDBImageComboBox;
    qryTransactionType: TADOQuery;
    procedure qryTransactionTypeBeforeDelete(DataSet: TDataSet);
    procedure qryTransactionTypeNewRecord(DataSet: TDataSet);
    procedure qryTransactionTypeBeforeEdit(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
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
  fmTransactionType: TfmTransactionType;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmTransactionType.cgvPrevDisplayStylesGetContentStyle(
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

procedure TfmTransactionType.DeinitForm;
begin
  // Refresh link preview
  LockRefresh(dmInventory.qryPrevTransactionType, True);

  inherited;
end;

procedure TfmTransactionType.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryTransactionType.State in [dsBrowse] then
  begin
    SetReadOnly(dbeTransactionTypeCode, True, Color_INACTIVE);
    SetReadOnly(dblcStatusTransaction, True, Color_INACTIVE);
  end;
end;

procedure TfmTransactionType.InitForm;
begin
  inherited;

  OpenIfClose(qryTransactionType, True);
end;

procedure TfmTransactionType.qryTransactionTypeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmTransactionType.qryTransactionTypeBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString <> '1' then
  begin
    SetReadOnly(dbeTransactionTypeCode, False);
  end;
end;

procedure TfmTransactionType.qryTransactionTypeNewRecord(DataSet: TDataSet);
begin
  inherited;

  SetReadOnly(dbeTransactionTypeCode, False);
  SetReadOnly(dblcStatusTransaction, False);
  DataSet.FieldByName('StatusTransaction').AsString := '0';
  DataSet.FieldByName('FlagFix').AsString := '0';
end;

procedure TfmTransactionType.RefreshAll;
begin
  inherited;

  LockRefresh(qryTransactionType, True);
end;

end.
