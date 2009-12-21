unit frmDaftarMuatKapal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, DateUtils, ADODB, cxCalc,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGridLevel, cxMemo, cxPC, untIvSearchBoxADO,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCurrencyEdit;

type
  TfmDaftarMuatKapal = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    qryDaftarMuatKapal: TADOQuery;
    cgPrevDaftarMuatKapal: TcxGrid;
    cgvPrevDaftarMuatKapal: TcxGridDBTableView;
    cgPrevDaftarMuatKapalLevel1: TcxGridLevel;
    cgvPrevDaftarMuatKapalDaftarMuatKapalCode: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalDaftarMuatKapalDate: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalShipId: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalShipCrewId: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalEmployeeId: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalDaftarMuatKapalOpen: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalDaftarMuatKapalClose: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalDaftarMuatKapalDateGo: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalStatementMemo: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalInternalMemo: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalCounterPrint: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalStatusApprove: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalTotalM3: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalTotalTon: TcxGridDBColumn;
    pnlOther: TPanel;
    pcBody: TcxPageControl;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    IvSearchBoxADO1: TIvSearchBoxADO;
    qryLogDaftarMuatKapal: TADOQuery;
    dsLogDaftarMuatKapal: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    tsShowKonosemen: TcxTabSheet;
    cgShowKonosemen: TcxGrid;
    cgvShowKonosemen: TcxGridDBTableView;
    cgShowKonosemenLevel1: TcxGridLevel;
    qryPrevKonosemen: TADOQuery;
    dsShowKonosemen: TDataSource;
    cgvShowKonosemenKonosemenCode: TcxGridDBColumn;
    cgvShowKonosemenMerekId: TcxGridDBColumn;
    cgvShowKonosemenKonosemenDate: TcxGridDBColumn;
    cgvShowKonosemenTarifKonosemen: TcxGridDBColumn;
    cgvShowKonosemenStatementMemo: TcxGridDBColumn;
    cgvShowKonosemenInternalMemo: TcxGridDBColumn;
    cgvShowKonosemenEmployeeId: TcxGridDBColumn;
    cgvShowKonosemenCounterPrint: TcxGridDBColumn;
    cgvShowKonosemenStatusApprove: TcxGridDBColumn;
    cgShowKonosemenLevel2: TcxGridLevel;
    cgvKonosemenDt: TcxGridDBTableView;
    qryPrevKonosemenDt: TADOQuery;
    dsPrevKonosemenDt: TDataSource;
    cgvKonosemenDtKonosemenCode: TcxGridDBColumn;
    cgvKonosemenDtKonosemenNo: TcxGridDBColumn;
    cgvKonosemenDtItemReceiveCode: TcxGridDBColumn;
    cgvKonosemenDtNo: TcxGridDBColumn;
    cgvKonosemenDtModeCY: TcxGridDBColumn;
    cgvKonosemenDtPrice: TcxGridDBColumn;
    cgvKonosemenDtPriceFra: TcxGridDBColumn;
    cgvKonosemenDtQty: TcxGridDBColumn;
    cgvKonosemenDtTotalAmount: TcxGridDBColumn;
    cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn;
    cgvKonosemenDtPricePacking: TcxGridDBColumn;
    cgvKonosemenDtPricePort: TcxGridDBColumn;
    cgvKonosemenDtBerat: TcxGridDBColumn;
    cgvKonosemenDtL: TcxGridDBColumn;
    cgvKonosemenDtP: TcxGridDBColumn;
    cgvKonosemenDtSuppliesCode: TcxGridDBColumn;
    cgvKonosemenDtSuppliesName: TcxGridDBColumn;
    cgvKonosemenDtT: TcxGridDBColumn;
    cgvKonosemenDtTarifTypeId: TcxGridDBColumn;
    cgvKonosemenDtTotalBerat: TcxGridDBColumn;
    cgvKonosemenDtTotalM3: TcxGridDBColumn;
    cgvKonosemenDtUnitMeasureId: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dbeDaftarMuatKapalCode: TcxDBTextEdit;
    dbeDaftarMuatKapalDate: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dblcShipCrewId: TcxDBExtLookupComboBox;
    Label5: TLabel;
    Label8: TLabel;
    dbeDateGo: TcxDBDateEdit;
    dbeDateOpen: TcxDBDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbcTotalTon: TcxDBCalcEdit;
    dbcTotalM3: TcxDBCalcEdit;
    dbeDateClose: TcxDBDateEdit;
    BtnTutup: TButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    cgDaftarMuatKapalRoute: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    pnlSummary: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dbeCollie: TcxCurrencyEdit;
    dbeM3: TcxCurrencyEdit;
    dbeTon: TcxCurrencyEdit;
    dbeM3Ton: TcxCurrencyEdit;
    cgvDaftarMuatKapalRoute: TcxGridDBTableView;
    dsDaftarMuatKapalRoute: TDataSource;
    cgvDaftarMuatKapalRouteDaftarMuatKapalRouteCode: TcxGridDBColumn;
    cgvDaftarMuatKapalRouteRouteId: TcxGridDBColumn;
    cgvDaftarMuatKapalRouteTotalM3: TcxGridDBColumn;
    cgvDaftarMuatKapalRouteTotalTon: TcxGridDBColumn;
    qryDaftarMuatKapalRoute: TADODataSet;
    cgvShowKonosemenCustomerId: TcxGridDBColumn;
    cgvShowKonosementotalm3: TcxGridDBColumn;
    cgvShowKonosementotalberat: TcxGridDBColumn;
    cgvShowKonosementotalcolie: TcxGridDBColumn;
    cgvShowKonosementotalm3berat: TcxGridDBColumn;
    dblcShipId: TcxDBExtLookupComboBox;
    procedure qryDaftarMuatKapalBeforeInsert(DataSet: TDataSet);
    procedure qryDaftarMuatKapalBeforePost(DataSet: TDataSet);
    procedure qryDaftarMuatKapalNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure dblcShipIdPropertiesEditValueChanged(Sender: TObject);
    procedure BtnTutupClick(Sender: TObject);
    procedure dbeDaftarMuatKapalCodePropertiesEditValueChanged(Sender: TObject);
    procedure qryDaftarMuatKapalAfterDelete(DataSet: TDataSet);
    procedure qryDaftarMuatKapalAfterPost(DataSet: TDataSet);
    procedure qryDaftarMuatKapalBeforeDelete(DataSet: TDataSet);
    procedure qryDaftarMuatKapalRouteBeforePost(DataSet: TDataSet);
    procedure qryDaftarMuatKapalRouteAfterPost(DataSet: TDataSet);
    procedure qryDaftarMuatKapalRouteBeforeDelete(DataSet: TDataSet);
    procedure qryDaftarMuatKapalRouteBeforeInsert(DataSet: TDataSet);
    procedure qryDaftarMuatKapalRouteNewRecord(DataSet: TDataSet);
    procedure cgvShowKonosemenDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cgvDaftarMuatKapalRouteFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
  fmDaftarMuatKapal: TfmDaftarMuatKapal;

implementation
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;
{$R *.dfm}

{ TfmDaftarMuatKapal }

procedure TfmDaftarMuatKapal.BtnTutupClick(Sender: TObject);
begin
  inherited;

  if (BtnTutup.Caption='Buka') then
   begin
     BtnTutup.Caption := 'Tutup';
     pnlHeader.Color:=$0082FFD7;
     // set dateOpennya
     qryDaftarMuatKapal.Edit;
     qryDaftarMuatKapal.FieldByName('DaftarMuatKapalOpen').AsDateTime := Now();
     // dateClosenya dibuka kalo sudah pernah ada sebelumnya
     if (qryDaftarMuatKapal.FieldByName('DaftarMuatKapalClose').Value<>Null) then
       begin
        qryDaftarMuatKapal.FieldByName('DaftarMuatKapalClose').Value := Null;
        qryDaftarMuatKapal.Post;
       end;
   end
  else if (BtnTutup.Caption = 'Tutup') then
   begin
     BtnTutup.Caption := 'Buka';
     pnlHeader.Color:=$00CD98FE;
     // set DateClosenya
     qryDaftarMuatKapal.Edit;
     qryDaftarMuatKapal.FieldByName('DaftarMuatKapalClose').AsDateTime := Now();
     qryDaftarMuatKapal.Post;
   end;
end;

procedure TfmDaftarMuatKapal.cgvDaftarMuatKapalRouteFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  dbeCollie.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[1];
  dbeM3.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[2];
  dbeTon.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[0];
  dbeM3Ton.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[3];
end;

procedure TfmDaftarMuatKapal.cgvShowKonosemenDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if qryPrevKonosemen.active=true then
  begin
   if qryPrevKonosemen.recordcount>0 then
   begin
    dbeCollie.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[1];
    dbeM3.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[2];
    dbeTon.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[0];
    dbeM3Ton.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[3];
   end
   else
   begin
    dbeCollie.EditValue := 0;
    dbeM3.EditValue := 0;
    dbeTon.EditValue := 0;
    dbeM3Ton.EditValue := 0;
   end;
  end;
end;

procedure TfmDaftarMuatKapal.cxButton1Click(Sender: TObject);
begin
  inherited;
{  if IvSearchBoxADO1.Execute=mrOk then
  begin
    qryDaftarMuatKapal.Edit;
    qryDaftarMuatKapal.FieldByName('ShipId').AsString:=IvSearchBoxADO1.FieldByName('ShipId').AsString;
    qryDaftarMuatKapal.FieldByName('RouteId').AsString:=IvSearchBoxADO1.FieldByName('RouteId').AsString;
    qryDaftarMuatKapal.FieldByName('ShipCrewId').AsString:=IvSearchBoxADO1.FieldByName('ShipCrewId').AsString;
  end;}
end;

procedure TfmDaftarMuatKapal.dbeDaftarMuatKapalCodePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if qryDaftarMuatKapal.FieldByName('DaftarMuatKapalClose').IsNull then
  begin
    btnTutup.Caption:='Tutup';
    pnlHeader.Color:=$0082FFD7;
  end
  else
  begin
    btnTutup.Caption:='Buka';
    pnlHeader.Color:=$00CD98FE;
  end;
end;

procedure TfmDaftarMuatKapal.dblcShipIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  dmEkspedisi.qryShipNahkoda.close;
  dmEkspedisi.qryShipNahkoda.Parameters[0].Value := dblcShipId.EditValue;
  dmEkspedisi.qryShipNahkoda.open;
  if not(dmEkspedisi.qryShipNahkoda.eof) then
  begin
    if (qryDaftarMuatKapal.state in [dsinsert,dsedit]) and (qryDaftarMuatKapal.FieldByName('ShipCrewId').IsNull) then
    begin
      qryDaftarMuatKapal.FieldByName('ShipCrewId').AsInteger:=dmEkspedisi.qryShipNahkoda.FieldByName('ShipCrewId').AsInteger;
    end;
  end;
end;

procedure TfmDaftarMuatKapal.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'DaftarMuatKapalCode';
  MonthYearValueChange(nil);

  OpenIfClose(qryDaftarMuatKapal);
  OpenIfClose(qryDaftarMuatKapalRoute);
  OpenIfClose(dmEkspedisi.qryShipCrew);
  OpenIfClose(dmEkspedisi.qryShip);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryShipNahkoda);
  OpenIfClose(qryLogDaftarMuatKapal);
  OpenIfClose(qryPrevKonosemen);
  OpenIfClose(dmEkspedisi.qryMerek);
  OpenIfClose(qryPrevKonosemenDt);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(dmEkspedisi.qryTarifType);

  setreadonly(dbeDaftarMuatKapalCode);
  setreadonly(dbeDaftarMuatKapalDate);
  setreadonly(dbeDateOpen);
  setreadonly(dbeDateClose);
  setreadonly(dbcTotalM3);
  setreadonly(dbcTotalTon);

  if qryDaftarMuatKapal.FieldByName('DaftarMuatKapalClose').IsNull then
  begin
    btnTutup.Caption:='Tutup';
    pnlHeader.Color:=$0082FFD7;
  end
  else
  begin
    btnTutup.Caption:='Buka';
    pnlHeader.Color:=$00CD98FE;
  end;

  TcxCalcEditProperties(cgvKonosemenDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKonosemenDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvKonosemenDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPriceFra.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPricePort.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPricePacking.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeCollie.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[1];
  dbeM3.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[2];
  dbeTon.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[0];
  dbeM3Ton.EditValue := cgvShowKonosemen.DataController.Summary.FooterSummaryValues[3];

end;

procedure TfmDaftarMuatKapal.MonthYearValueChange(Sender: TObject);
begin
  inherited;
  qryDaftarMuatKapal.Close;
  qryDaftarMuatKapal.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryDaftarMuatKapal.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  OpenIfClose(qryDaftarMuatKapal,True, True);
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('DaftarMuatKapal',hasil,action,key);
  qryLogDaftarMuatKapal.Close;
  qryLogDaftarMuatKapal.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogDaftarMuatKapal.Open;
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('DaftarMuatKapal',hasil,action,key);
  qryLogDaftarMuatKapal.Close;
  qryLogDaftarMuatKapal.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogDaftarMuatKapal.Open;
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DaftarMuatKapalCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='DMK';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbeDaftarMuatKapalDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:=dmEkspedisi.qryShip.FieldByName('shipcode').asstring+','+dmEkspedisi.qryRoute.FieldByName('RouteCode').asstring;
    dmEkspedisi.qryGenerateCounter.Open;
    dmEkspedisi.qryspGenerateCounter.Close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='DMK';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbeDaftarMuatKapalDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
    DataSet.FieldByName('DaftarMuatKapalCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DaftarMuatKapalDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('DaftarMuatKapalOpen').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('TotalM3').Asinteger := 0;
  DataSet.FieldByName('TotalTon').Asinteger := 0;
  DataSet.FieldByName('CounterPrint').Asinteger := 0;
  DataSet.FieldByName('StatusApprove').Asinteger := 1;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalRouteAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('DaftarMuatKapalRoute',hasil,action,key);
  qryLogDaftarMuatKapal.Close;
  qryLogDaftarMuatKapal.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogDaftarMuatKapal.Open;
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalRouteBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalRouteBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalRouteBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DaftarMuatKapalRouteCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='DMKR';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbeDaftarMuatKapalDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:=dmEkspedisi.qryShip.FieldByName('shipcode').asstring+','+dmEkspedisi.qryRoute.FieldByName('RouteCode').asstring;
    dmEkspedisi.qryGenerateCounter.Open;
    dmEkspedisi.qryspGenerateCounter.Close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='DMKR';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbeDaftarMuatKapalDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:=dmEkspedisi.qryShip.FieldByName('shipcode').asstring+','+dmEkspedisi.qryRoute.FieldByName('RouteCode').asstring;
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
    DataSet.FieldByName('DaftarMuatKapalRouteCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmDaftarMuatKapal.qryDaftarMuatKapalRouteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TotalM3').Asinteger := 0;
  DataSet.FieldByName('TotalTon').Asinteger := 0;
end;

procedure TfmDaftarMuatKapal.RefreshAll;
begin
  inherited;

  LockRefresh(qryDaftarMuatKapal);
  LockRefresh(qryDaftarMuatKapalRoute);
  LockRefresh(dmEkspedisi.qryShipCrew);
  LockRefresh(dmEkspedisi.qryShip);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(dmEkspedisi.qryShipNahkoda);
  LockRefresh(qryLogDaftarMuatKapal);
  LockRefresh(qryPrevKonosemen);
  LockRefresh(dmEkspedisi.qryMerek);
  LockRefresh(qryPrevKonosemenDt);
  LockRefresh(dmEkspedisi.qryUnitMeasure);
  LockRefresh(dmEkspedisi.qryTarifType);

end;

end.
