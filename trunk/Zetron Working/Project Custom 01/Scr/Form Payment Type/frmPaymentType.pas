unit frmPaymentType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, ExtCtrls, ADODB, cxDBEdit,
  cxContainer, cxTextEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TfmPaymentType = class(TFormUniMasterEx)
    cgPaymentType: TcxGrid;
    cgvPaymentType: TcxGridDBTableView;
    cgvPaymentTypevcIdPaymentType: TcxGridDBColumn;
    cgvPaymentTypevcPaymentTypeName: TcxGridDBColumn;
    cgvPaymentTypechFlagFix: TcxGridDBColumn;
    cgPaymentTypeLevel1: TcxGridLevel;
    lblIdPaymentType: TLabel;
    dbeIdPaymentType: TcxDBTextEdit;
    lblPaymentTypeName: TLabel;
    dbePaymentTypeName: TcxDBTextEdit;
    lblEmployeeName: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    dbchFlagInactive: TcxDBCheckBox;
    dbchFlagPPView: TcxDBCheckBox;
    dbchFlagPPApprovalType1: TcxDBCheckBox;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    Label3: TLabel;
    dblcStatusPayment: TcxDBImageComboBox;
    qryPaymentType: TADOQuery;
    procedure qryPaymentTypeNewRecord(DataSet: TDataSet);
    procedure qryPaymentTypeBeforePost(DataSet: TDataSet);
    procedure qryPaymentTypeBeforeEdit(DataSet: TDataSet);
    procedure qryPaymentTypeBeforeDelete(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvPaymentTypeStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPaymentType: TfmPaymentType;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmAccounting;

procedure TfmPaymentType.cgvPaymentTypeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('ch' + FIELD_FLAGFIX ).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmPaymentType.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbeIdPaymentType, False);
  end;
  if dsDefault.State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName('ch' + FIELD_FLAGFIX ).AsString = '1' then
    begin
      SetReadOnly(dbeIdPaymentType, True, COLOR_INACTIVE);
    end;
  end;
end;

procedure TfmPaymentType.InitForm;
begin
  inherited;

  OpenIfClose(qryPaymentType);

  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
end;

procedure TfmPaymentType.qryPaymentTypeBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if FMenuFlag <> 0 then
    Abort;
end;

procedure TfmPaymentType.qryPaymentTypeBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if FMenuFlag <> 0 then
    Abort;
end;

procedure TfmPaymentType.qryPaymentTypeBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmPaymentType.qryPaymentTypeNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('FlagPurchasePayment').AsInteger := 1;
  DataSet.FieldByName('FlagSalesPayment').AsInteger := 1;
  DataSet.FieldByName('StatusPayment').AsInteger := 0;
end;

procedure TfmPaymentType.RefreshAll;
begin
  inherited;

  LockRefresh(qryPaymentType);
end;

end.
