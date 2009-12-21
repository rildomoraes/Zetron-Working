unit frmTableLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxCalc, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls, ADODB, cxImageComboBox;

type
  TfmTableLog = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayTableLogId: TcxGridDBColumn;
    cgvPrevDisplayTableLogName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvTableLogMaterial: TcxGridDBTableView;
    cgTableLogMaterialLevel1: TcxGridLevel;
    cgTableLogMaterial: TcxGrid;
    cgvTableLogDt: TcxGridDBTableView;
    cgTableLogDtLevel1: TcxGridLevel;
    cgTableLogDt: TcxGrid;
    pnlTop: TPanel;
    lblCode: TLabel;
    dbeTableLogName: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsTableLogMaterial: TDataSource;
    dsTableLogDt: TDataSource;
    cgvTableLogMaterialTableLogId: TcxGridDBColumn;
    cgvTableLogMaterialMaterialId: TcxGridDBColumn;
    cgvTableLogDtTableLogId: TcxGridDBColumn;
    cgvTableLogDtD: TcxGridDBColumn;
    cgvTableLogDtP: TcxGridDBColumn;
    cgvTableLogDtM3: TcxGridDBColumn;
    qryTableLogMaterial: TADOQuery;
    qryTableLogDt: TADOQuery;
    cgvTableLogDtDConstanta: TcxGridDBColumn;
    cgvTableLogDtPConstanta: TcxGridDBColumn;
    procedure qryTableLogMaterialBeforeInsert(DataSet: TDataSet);
    procedure qryTableLogDtBeforeInsert(DataSet: TDataSet);
    procedure qryTableLogDtNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure DeinitForm; override;
  private

  public

  end;

var
  fmTableLog: TfmTableLog;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, dtmTimber;

procedure TfmTableLog.DeinitForm;
begin
  inherited;

  LockRefresh(dmTimber.qryGetLogM3);
end;

procedure TfmTableLog.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvTableLogDtD.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvTableLogDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvTableLogDtM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  OpenIfClose(dmTimber.qryTableLogHd, True);
  OpenIfClose(qryTableLogMaterial);
  OpenIfClose(qryTableLogDt);
end;

procedure TfmTableLog.qryTableLogDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmTableLog.qryTableLogDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('DConstanta').AsFloat := 0.01; // CM
  Dataset.FieldByName('PConstanta').AsFloat := 0.01; // CM
end;

procedure TfmTableLog.qryTableLogMaterialBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmTableLog.RefreshAll;
begin
  inherited;

  LockRefresh(dmTimber.qryTableLogHd, True);
  LockRefresh(qryTableLogMaterial);
  LockRefresh(qryTableLogDt);
end;

end.
