unit frmTrxShipDailyLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGridLevel, ADODB, cxCalendar, DateUtils;

type
  TfmTrxShipDailyLog = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    qryShipDailyLog: TADOQuery;
    cgShipDailyLog: TcxGrid;
    cgvShipDailyLog: TcxGridDBTableView;
    cgShipDailyLogLevel1: TcxGridLevel;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ShipId: TcxGridDBColumn;
    cxGridDBTableView1ShipLogDate: TcxGridDBColumn;
    cxGridDBTableView1ShipPosition: TcxGridDBColumn;
    cxGridDBTableView1StatusWeather: TcxGridDBColumn;
    cxGridDBTableView1EmployeeId: TcxGridDBColumn;
    cxGridDBTableView1DaftarMuatKapalCode: TcxGridDBColumn;
    cxGridDBTableView1StatementMemo: TcxGridDBColumn;
    cxGridDBTableView1InternalMemo: TcxGridDBColumn;
    cxGridDBTableView1CounterPrint: TcxGridDBColumn;
    cxGridDBTableView1StatusApprove: TcxGridDBColumn;
    dbeDate: TcxDateEdit;
    cgvShipDailyLogShipId: TcxGridDBColumn;
    cgvShipDailyLogShipLogDate: TcxGridDBColumn;
    cgvShipDailyLogShipPosition: TcxGridDBColumn;
    cgvShipDailyLogStatusWeather: TcxGridDBColumn;
    cgvShipDailyLogEmployeeId: TcxGridDBColumn;
    cgvShipDailyLogDaftarMuatKapalCode: TcxGridDBColumn;
    cgvShipDailyLogStatementMemo: TcxGridDBColumn;
    cgvShipDailyLogInternalMemo: TcxGridDBColumn;
    cgvShipDailyLogCounterPrint: TcxGridDBColumn;
    cgvShipDailyLogStatusApprove: TcxGridDBColumn;
    cgvShipDailyLogKeterangan: TcxGridDBColumn;
    qryPrevShip: TADOQuery;
    cgvPrevShip: TcxGridDBTableView;
    dsPrevShip: TDataSource;
    cgvPrevShipShipId: TcxGridDBColumn;
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
    qryIsiLogDate: TADOQuery;
    procedure qryShipDailyLogBeforeInsert(DataSet: TDataSet);
    procedure qryShipDailyLogBeforePost(DataSet: TDataSet);
    procedure dbeDatePropertiesEditValueChanged(Sender: TObject);
    procedure qryShipDailyLogNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmTrxShipDailyLog: TfmTrxShipDailyLog;

implementation
uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta, untEkspedisi;
{$R *.dfm}

{ TfmTrxShipDailyLog }

procedure TfmTrxShipDailyLog.dbeDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  qryShipDailyLog.Close;

  qryIsiLogDate.Parameters[0].Value := dbeDate.EditValue;
  qryIsiLogDate.Parameters[1].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryIsiLogDate.Parameters[2].Value := dbeDate.EditValue;
  qryIsiLogDate.ExecSQL;

  qryShipDailyLog.Parameters[0].Value := StartOfTheDay(dbeDate.EditValue);
  qryShipDailyLog.Parameters[1].Value := EndOfTheDay(dbeDate.EditValue);
  qryShipDailyLog.Open;
end;


procedure TfmTrxShipDailyLog.InitForm;
begin
  inherited;

  OpenIfClose(dmEkspedisi.qryShip);
  OpenIfClose(qryShipDailyLog);
  OpenIfClose(qryPrevShip);

end;

procedure TfmTrxShipDailyLog.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryShipDailyLog.Close;
  qryShipDailyLog.Parameters[0].Value := StartOfTheDay(dbeDate.EditValue);
  qryShipDailyLog.Parameters[1].Value := EndOfTheDay(dbeDate.EditValue);
  OpenIfClose(qryShipDailyLog,True, True);

  qryPrevShip.Close;
  qryPrevShip.Parameters[0].Value := StartOfTheDay(dbeDate.EditValue);
  qryPrevShip.Parameters[1].Value := EndOfTheDay(dbeDate.EditValue);
  OpenIfClose(qryPrevShip, True, True);



end;

procedure TfmTrxShipDailyLog.qryShipDailyLogBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmTrxShipDailyLog.qryShipDailyLogBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ShipLogDate').AsVariant := dbeDate.EditValue;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmTrxShipDailyLog.qryShipDailyLogNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('CounterPrint').Value := 0;
  Dataset.FieldByName('StatusApprove').Value := '0';

{  qryPrevShip.Close;
  qryPrevShip.SQL.Text := 'Select * from Ship ' +
                          'where shipid not in ' +
                          '(select ShipId from ShipDailyLog ' +
                          'where ShipLogDate between :Start and :End)';
  qryPrevShip.Parameters[0].Value := StartOfTheDay(dbeDate.EditValue);
  qryPrevShip.Parameters[1].Value := EndOfTheDay(dbeDate.EditValue);
  qryPrevShip.Open;
}
end;

procedure TfmTrxShipDailyLog.RefreshAll;
begin
  inherited;

  LockRefresh(dmEkspedisi.qryShip);
  LockRefresh(qryShipDailyLog);
  LockRefresh(qryPrevShip);
end;

end.
