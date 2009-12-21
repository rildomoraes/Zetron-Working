unit frmCountry2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ExtCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, DB, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer,
  cxDBEdit;

type
  TfmCountry2 = class(TFormUniMasterEx)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    lblCountryId: TLabel;
    lblCountryName: TLabel;
    lblCountryExt: TLabel;
    dbeCountryId: TcxDBTextEdit;
    dbeCountryName: TcxDBTextEdit;
    dbeCountryExt: TcxDBTextEdit;
    cgvProvince: TcxGridDBTableView;
    cgProvinceLevel1: TcxGridLevel;
    cgProvince: TcxGrid;
    qryProvince: TADOQuery;
    dsProvince: TDataSource;
    cgvProvinceProvinceId: TcxGridDBColumn;
    cgvProvinceCountryId: TcxGridDBColumn;
    cgvProvinceProvinceName: TcxGridDBColumn;
    cgvCity: TcxGridDBTableView;
    cgCityLevel1: TcxGridLevel;
    cgCity: TcxGrid;
    qryCity: TADOQuery;
    dsCity: TDataSource;
    cgvCityCityId: TcxGridDBColumn;
    cgvCityProvinceId: TcxGridDBColumn;
    cgvCityCityName: TcxGridDBColumn;
    cgvCityCityExt: TcxGridDBColumn;
    cgPrev: TcxGrid;
    cgvPrev: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryPrevCity: TADOQuery;
    dsPrevCity: TDataSource;
    cgvPrevNegara: TcxGridDBColumn;
    cgvPrevKodeNegara: TcxGridDBColumn;
    cgvPrevPropinsi: TcxGridDBColumn;
    cgvPrevKota: TcxGridDBColumn;
    Label9: TLabel;
    Label1: TLabel;
    procedure qryProvinceNewRecord(DataSet: TDataSet);
    procedure qryProvinceBeforeInsert(DataSet: TDataSet);
    procedure qryCityBeforeInsert(DataSet: TDataSet);
    procedure qryCityNewRecord(DataSet: TDataSet);
    procedure cgvPrevFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmCountry2: TfmCountry2;

implementation
uses untProcedure, dtmGlobal;

{$R *.dfm}

{ TFormUniMasterEx1 }

procedure TfmCountry2.cgvPrevFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  dmGlobal.qryCountry.Locate('CountryId',qryPrevCity.FieldByName('CountryId').asstring,[loPartialkey]);
  qryProvince.Locate('ProvinceId',qryPrevCity.FieldByName('ProvinceId').asstring,[loPartialkey]);
  qryCity.Locate('CityId',qryPrevCity.FieldByName('CityId').asstring,[loPartialkey]);
end;

procedure TfmCountry2.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(qryProvince);
  OpenIfClose(qryCity);
  OpenIfClose(qryPrevCity);
end;

procedure TfmCountry2.qryCityBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmCountry2.qryCityNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('ProvinceID').AsString := qryProvince.FieldByName('ProvinceID').AsString;
end;

procedure TfmCountry2.qryProvinceBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmCountry2.qryProvinceNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('CountryID').AsString := dmGlobal.qryCountry.FieldByName('CountryID').AsString;
end;

procedure TfmCountry2.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCountry);
  LockRefresh(qryProvince);
  LockRefresh(qryCity);
  LockRefresh(qryPrevCity);
end;

end.
