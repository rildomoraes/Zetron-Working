unit frmBongkaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, ADODB, cxCalendar, DateUtils,
  cxGrid, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGridLevel, cxMemo, cxPC, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmBongkaran = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbeBongkaranCode: TcxDBTextEdit;
    dbeArrivalDate: TcxDBDateEdit;
    dbeBongkaranDateStart: TcxDBDateEdit;
    dbeBongkaranDateEnd: TcxDBDateEdit;
    dblcKerani: TcxDBExtLookupComboBox;
    dblcKomprador: TcxDBExtLookupComboBox;
    dblcKapal: TcxDBExtLookupComboBox;
    dblcRoute: TcxDBExtLookupComboBox;
    qryBongkaranHd: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevShipCrew: TcxGridDBTableView;
    cgvPrevShipCrewShipCrewId: TcxGridDBColumn;
    cgvPrevShipCrewShipCrewCode: TcxGridDBColumn;
    cgvPrevShipCrewShipCrewName: TcxGridDBColumn;
    cgvPrevShipCrewStatusPosition: TcxGridDBColumn;
    cgvPrevShip: TcxGridDBTableView;
    cgvPrevShipShipId: TcxGridDBColumn;
    cgvPrevShipShipCrewId: TcxGridDBColumn;
    cgvPrevShipStorageLocationId: TcxGridDBColumn;
    cgvPrevShipShipCode: TcxGridDBColumn;
    cgvPrevShipShipName: TcxGridDBColumn;
    cgvPrevShipEngineName: TcxGridDBColumn;
    cgvPrevShipOrigin: TcxGridDBColumn;
    cgvPrevShipYearMade: TcxGridDBColumn;
    cgvPrevShipP: TcxGridDBColumn;
    cgvPrevShipL: TcxGridDBColumn;
    cgvPrevShipT: TcxGridDBColumn;
    cgvPrevShipGrossTon: TcxGridDBColumn;
    cgvPrevShipNettoTon: TcxGridDBColumn;
    cgvPrevShipFlagMuat: TcxGridDBColumn;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteId: TcxGridDBColumn;
    cgvPrevRouteRouteCode: TcxGridDBColumn;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    cgvPrevRouteDepatureCityId: TcxGridDBColumn;
    cgvPrevRouteDestinationCityId: TcxGridDBColumn;
    pnlOtherInfo: TPanel;
    pcBody: TcxPageControl;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    cgPrevBongkaran: TcxGrid;
    cgvPrevBongkaran: TcxGridDBTableView;
    cgPrevBongkaranLevel1: TcxGridLevel;
    cgvPrevBongkaranBongkaranCode: TcxGridDBColumn;
    cgvPrevBongkaranArrivalDate: TcxGridDBColumn;
    cgvPrevBongkaranBongkaranDateStart: TcxGridDBColumn;
    cgvPrevBongkaranBongkaranDateEnd: TcxGridDBColumn;
    cgvPrevBongkaranKerani: TcxGridDBColumn;
    cgvPrevBongkaranKomprador: TcxGridDBColumn;
    cgvPrevBongkaranShipId: TcxGridDBColumn;
    cgvPrevBongkaranRouteId: TcxGridDBColumn;
    cgvPrevBongkaranEmployeeId: TcxGridDBColumn;
    cgvPrevBongkaranStatementMemo: TcxGridDBColumn;
    cgvPrevBongkaranInternalMemo: TcxGridDBColumn;
    cgvPrevBongkaranCounterPrint: TcxGridDBColumn;
    cgvPrevBongkaranStatusApprove: TcxGridDBColumn;
    qryLogBongkaran: TADOQuery;
    dsLogBongkaran: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    procedure qryBongkaranHdBeforeInsert(DataSet: TDataSet);
    procedure qryBongkaranHdBeforePost(DataSet: TDataSet);
    procedure qryBongkaranHdBeforeDelete(DataSet: TDataSet);
    procedure qryBongkaranHdAfterDelete(DataSet: TDataSet);
    procedure qryBongkaranHdAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    hasil,action,key:string;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmBongkaran: TfmBongkaran;

implementation
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;
{$R *.dfm}

{ TfmBongkaran }

procedure TfmBongkaran.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'BongkaranCode';
  MonthYearValueChange(nil);

  OpenIfClose(qryBongkaranHd);
  OpenIfClose(dmEkspedisi.qryShipCrew);
  OpenIfClose(dmEkspedisi.qryShip);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(qryLogBongkaran);
end;

procedure TfmBongkaran.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryBongkaranHd.Close;
  qryBongkaranHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryBongkaranHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryBongkaranHd,True, True);
end;

procedure TfmBongkaran.qryBongkaranHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BongkaranHd',hasil,action,key);
end;

procedure TfmBongkaran.qryBongkaranHdAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BongkaranHd',hasil,action,key);
end;

procedure TfmBongkaran.qryBongkaranHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmBongkaran.qryBongkaranHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmBongkaran.qryBongkaranHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmBongkaran.RefreshAll;
begin
  inherited;

  LockRefresh(qryBongkaranHd);
  LockRefresh(dmEkspedisi.qryShipCrew);
  LockRefresh(dmEkspedisi.qryShip);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(qryLogBongkaran);

end;

end.
