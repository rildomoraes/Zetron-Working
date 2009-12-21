unit frmTransactionType;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxRadioGroup, ExtCtrls, cxGroupBox,
  cxDBEdit, cxContainer, cxTextEdit, StdCtrls, ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons;

type
  TfmTransactionType = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvTransactionType: TcxGridDBTableView;
    cgvTransactionTypevcIdTransactionType: TcxGridDBColumn;
    cgvTransactionTypevcTransactionName: TcxGridDBColumn;
    cgvTransactionTypechStatusTransaction: TcxGridDBColumn;
    cgvTransactionTypechFlagFix: TcxGridDBColumn;
    cgvTransactionTypedtSystemStamp: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    qryTransactionType: TADODataSet;
    lblIdTransactionType: TLabel;
    dbeIdTransactionType: TcxDBTextEdit;
    lblTransactionName: TLabel;
    dbeTransactionName: TcxDBTextEdit;
    rgStatusTransaction: TcxDBRadioGroup;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvTransactionTypeStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure qryTransactionTypeNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTransactionType: TfmTransactionType;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmTransactionType.cgvTransactionTypeStylesGetContentStyle(
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

procedure TfmTransactionType.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbeIdTransactionType, False);
    rgStatusTransaction.Properties.ReadOnly := True;
  end;
  if dsDefault.State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName('ch' + FIELD_FLAGFIX ).AsString = '1' then
    begin
      SetReadOnly(dbeIdTransactionType, True);
    end;
  end;
end;

procedure TfmTransactionType.InitForm;
begin
  inherited;

  OpenIfClose(qryTransactionType);
end;

procedure TfmTransactionType.qryTransactionTypeNewRecord(DataSet: TDataSet);
begin
  inherited;

  rgStatusTransaction.Properties.ReadOnly := False;
end;

procedure TfmTransactionType.RefreshAll;
begin
  inherited;

  LockRefresh(qryTransactionType);
end;

end.
