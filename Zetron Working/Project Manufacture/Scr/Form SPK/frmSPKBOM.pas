unit frmSPKBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmSPK, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, DB, ADODB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  cxDropDownEdit, cxCalendar, cxDBEdit, dxDockPanel, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls,
  dxSkinscxPCPainter, cxMemo, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfmSPKBOM = class(TfmSPK)
    qrySPKRendemen: TADOQuery;
    dsSPKRendemen: TDataSource;
    pcMemo: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbeMemoInternal: TcxDBMemo;
    cgSPKDt: TcxGrid;
    cgvSPKDt: TcxGridDBTableView;
    cgvSPKDtSPKCode: TcxGridDBColumn;
    cgvSPKDtNo: TcxGridDBColumn;
    cgvSPKDtItemId: TcxGridDBColumn;
    cgvSPKDtItemName: TcxGridDBColumn;
    cgvSPKDtItemBOM: TcxGridDBColumn;
    cgvSPKDtQty: TcxGridDBColumn;
    cgvSPKDtItemUnitMeasure: TcxGridDBColumn;
    cgvSPKDtDescription: TcxGridDBColumn;
    cgvSPKDtEmployeeId: TcxGridDBColumn;
    cgvSPKItem: TcxGridDBBandedTableView;
    cgvSPKItemSPKCode: TcxGridDBBandedColumn;
    cgvSPKItemNo: TcxGridDBBandedColumn;
    cgvSPKItemItemId: TcxGridDBBandedColumn;
    cgvSPKItemItemName: TcxGridDBBandedColumn;
    cgvSPKItemItemCategoryId: TcxGridDBBandedColumn;
    cgvSPKItemMaterialId: TcxGridDBBandedColumn;
    cgvSPKItemQtySPK: TcxGridDBBandedColumn;
    cgvSPKItemQty: TcxGridDBBandedColumn;
    cgvSPKItemT: TcxGridDBBandedColumn;
    cgvSPKItemL: TcxGridDBBandedColumn;
    cgvSPKItemP: TcxGridDBBandedColumn;
    cgSPKDtLevel1: TcxGridLevel;
    cgSPKDtLevel2: TcxGridLevel;
    cgSPKDtLevel3: TcxGridLevel;
    cgvSPKRendemen: TcxGridDBTableView;
    cgvSPKRendemenSPKCode: TcxGridDBColumn;
    cgvSPKRendemenMaterialId: TcxGridDBColumn;
    cgvSPKRendemenRendemen: TcxGridDBColumn;
    qrySPKItem: TADOQuery;
    dsSPKItem: TDataSource;
    qrySPKDt: TADOQuery;
    dsSPKDt: TDataSource;
    procedure qrySPKItemBeforeInsert(DataSet: TDataSet);
    procedure qrySPKDtAfterDelete(DataSet: TDataSet);
    procedure qrySPKDtAfterPost(DataSet: TDataSet);
    procedure qrySPKDtBeforeInsert(DataSet: TDataSet);
    procedure qrySPKDtBeforePost(DataSet: TDataSet);
    procedure qrySPKDtNewRecord(DataSet: TDataSet);
    procedure qrySPKRendemenBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSPKBOM: TfmSPKBOM;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmSPKBOM.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvSPKDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSPKItemQtySPK.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSPKItemQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSPKRendemenRendemen.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;

  OpenIfClose(dmInventory.qryPrevItemBOM, True);
  OpenIfClose(dmInventory.qryItem, True);

  OpenIfClose(qrySPKDt);
  OpenIfClose(qrySPKItem);
  OpenIfClose(qrySPKRendemen);
end;

procedure TfmSPKBOM.qrySPKDtAfterDelete(DataSet: TDataSet);
begin
  inherited;

  LockRefresh(qrySPKItem);
end;

procedure TfmSPKBOM.qrySPKDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  LockRefresh(qrySPKItem);
end;

procedure TfmSPKBOM.qrySPKDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmSPKBOM.qrySPKDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSPKBOM.qrySPKDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsVariant := DataSet.RecordCount + 1;
  DataSet.FieldByName('Qty').AsInteger := 1;
end;

procedure TfmSPKBOM.qrySPKItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmSPKBOM.qrySPKRendemenBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmSPKBOM.RefreshAll;
begin
  inherited;

  LockRefresh(qrySPKItem, True);
  LockRefresh(qrySPKDt);
  LockRefresh(qrySPKRendemen);
end;

end.
