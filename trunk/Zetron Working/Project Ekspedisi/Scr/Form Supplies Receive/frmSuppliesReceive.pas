unit frmSuppliesReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxCalendar, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, cxCheckBox, cxCurrencyEdit, ADODB, DateUtils,
  cxCalc, untIvSearchBoxADO, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxButtonEdit;

type
  TfmSuppliesReceive = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    pnlLeft: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeItemReceiveDate: TcxDBDateEdit;
    dblcMerekId: TcxDBExtLookupComboBox;
    dbeNoSuratJalan: TcxDBTextEdit;
    dbeJenisKendaraan: TcxDBTextEdit;
    dbeNoPolisi: TcxDBTextEdit;
    qrySuppliesReceiveHd: TADOQuery;
    Label7: TLabel;
    dbeItemReceiveCode: TcxDBTextEdit;
    cgvPrevSuppliesReceive: TcxGridDBTableView;
    cgPrevSuppliesReceiveLevel1: TcxGridLevel;
    cgPrevSuppliesReceive: TcxGrid;
    cgvPrevSuppliesReceiveItemReceiveCode: TcxGridDBColumn;
    cgvPrevSuppliesReceiveItemReceiveDate: TcxGridDBColumn;
    cgvPrevSuppliesReceiveCustomerId: TcxGridDBColumn;
    cgvPrevSuppliesReceiveNoSuratJalan: TcxGridDBColumn;
    cgvPrevSuppliesReceiveJenisKendaraan: TcxGridDBColumn;
    cgvPrevSuppliesReceiveNoPolisi: TcxGridDBColumn;
    cgvPrevSuppliesReceiveNoCont: TcxGridDBColumn;
    qrySuppliesReceiveDt: TADOQuery;
    dsSuppliesReceiveDt: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    qryPrevDaftarMuatKapal: TADOQuery;
    dsPrevDaftarMuatKapal: TDataSource;
    Splitter1: TSplitter;
    pcBody: TcxPageControl;
    tsStatementMemo: TcxTabSheet;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    Label6: TLabel;
    dblcRute: TcxDBExtLookupComboBox;
    dblcPengirim: TcxDBExtLookupComboBox;
    dblcPenerima: TcxDBExtLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    cgSuppliesReceive: TcxGrid;
    cgvSuppliesReceive: TcxGridDBTableView;
    cgvSuppliesReceiveItemReceiveCode: TcxGridDBColumn;
    cgvSuppliesReceiveNo: TcxGridDBColumn;
    cgvSuppliesReceiveSuppliesCode: TcxGridDBColumn;
    cgvSuppliesReceiveSuppliesName: TcxGridDBColumn;
    cgvSuppliesReceiveStorageLocationId: TcxGridDBColumn;
    cgvSuppliesReceiveP: TcxGridDBColumn;
    cgvSuppliesReceiveL: TcxGridDBColumn;
    cgvSuppliesReceiveT: TcxGridDBColumn;
    cgvSuppliesReceiveBerat: TcxGridDBColumn;
    cgvSuppliesReceiveQty: TcxGridDBColumn;
    cgvSuppliesReceiveUnitMeasure: TcxGridDBColumn;
    cgvSuppliesReceiveTotalM3: TcxGridDBColumn;
    cgvSuppliesReceiveTotalBerat: TcxGridDBColumn;
    cgSuppliesReceiveLevel1: TcxGridLevel;
    cgvPrevSuppliesReceiveMerekId: TcxGridDBColumn;
    cgvPrevSuppliesReceiveRouteId: TcxGridDBColumn;
    dsLog: TDataSource;
    cxButton1: TcxButton;
    IvSearchBoxADO1: TIvSearchBoxADO;
    Label10: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    pnlSummary: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbeCollie: TcxCurrencyEdit;
    dbeM3: TcxCurrencyEdit;
    dbeTon: TcxCurrencyEdit;
    dbeM3Ton: TcxCurrencyEdit;
    cgvSuppliesReceiveQtyOutStanding: TcxGridDBColumn;
    cgvSuppliesReceiveDaftarMuatKapalCode: TcxGridDBColumn;
    cgvSuppliesReceiveQtyRetur: TcxGridDBColumn;
    cgvSuppliesReceiveTotM3Ton: TcxGridDBColumn;
    qryLogSuppliesReceive: TADOQuery;
    dsLogSuppliesReceive: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    IvSearchBoxADO2: TIvSearchBoxADO;
    procedure qrySuppliesReceiveHdBeforePost(DataSet: TDataSet);
    procedure qrySuppliesReceiveHdBeforeInsert(DataSet: TDataSet);
    procedure qrySuppliesReceiveHdNewRecord(DataSet: TDataSet);
    procedure qrySuppliesReceiveDtBeforeInsert(DataSet: TDataSet);
    procedure qrySuppliesReceiveDtNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsSuppliesReceiveDtDataChange(Sender: TObject; Field: TField);
    procedure qrySuppliesReceiveDtAfterPost(DataSet: TDataSet);
    procedure qrySuppliesReceiveDtBeforePost(DataSet: TDataSet);
    procedure qrySuppliesReceiveHdAfterPost(DataSet: TDataSet);
    procedure qrySuppliesReceiveHdDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure actVoidExecute(Sender: TObject);
    procedure qrySuppliesReceiveDtBeforeDelete(DataSet: TDataSet);
    procedure qrySuppliesReceiveDtAfterDelete(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure dbeItemReceiveCodePropertiesEditValueChanged(Sender: TObject);
    procedure cgvSuppliesReceiveDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure qrySuppliesReceiveHdBeforeDelete(DataSet: TDataSet);
    procedure qrySuppliesReceiveHdAfterDelete(DataSet: TDataSet);
    procedure cgvSuppliesReceiveSuppliesNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    FSuppliesCode:string;
    FSuppliesName:string;
    FStorageLocationId:integer;
    hasil,action,key:string;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    var temp,temp2 : array[1..100] of string;
    { Public declarations }
  end;

var
  fmSuppliesReceive: TfmSuppliesReceive;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta, untEkspedisi;


{ TfmSuppliesReceive }

procedure TfmSuppliesReceive.actVoidExecute(Sender: TObject);
begin
  inherited;
  LockRefresh(qrySuppliesReceiveDt);
end;

procedure TfmSuppliesReceive.cgvSuppliesReceiveDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if qrySuppliesReceiveDt.active=true then
  begin
   if qrySuppliesReceiveDt.recordcount>0 then
   begin
    dbeCollie.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[0];
    dbeM3.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[1];
    dbeTon.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[3];
    dbeM3Ton.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[4];
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

procedure TfmSuppliesReceive.cgvSuppliesReceiveSuppliesNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if IvSearchBoxADO2.Execute=mrOk then
  begin
     qrySuppliesReceiveDt.Edit;
     qrySuppliesReceiveDt.FieldByName('SuppliesName').AsString:=IvSearchBoxADO2.FieldByName('itemname').AsString;
     qrySuppliesReceiveDt.FieldByName('T').Asinteger:=IvSearchBoxADO2.FieldByName('T').AsInteger;
     qrySuppliesReceiveDt.FieldByName('L').Asinteger:=IvSearchBoxADO2.FieldByName('L').AsInteger;
     qrySuppliesReceiveDt.FieldByName('P').Asinteger:=IvSearchBoxADO2.FieldByName('P').AsInteger;
     qrySuppliesReceiveDt.FieldByName('Berat').Asinteger:=IvSearchBoxADO2.FieldByName('Berat').AsInteger;
  end;
end;

procedure TfmSuppliesReceive.cxButton1Click(Sender: TObject);
begin
  inherited;

  if IvSearchBoxADO1.Execute=mrOk then
  begin
     qrySuppliesReceiveHd.Edit;
     qrySuppliesReceiveHd.FieldByName('CustomerId').AsString:=IvSearchBoxADO1.FieldByName('CustomerId').AsString;
     qrySuppliesReceiveHd.FieldByName('MerekId').AsString:=IvSearchBoxADO1.FieldByName('MerekId').AsString;
     qrySuppliesReceiveHd.FieldByName('RouteId').AsString:=IvSearchBoxADO1.FieldByName('RouteId').AsString;
  end;
end;

procedure TfmSuppliesReceive.dbeItemReceiveCodePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  dbeCollie.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[1];
  dbeTon.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[3];
  dbeM3Ton.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[4];
  qryLogSuppliesReceive.Close;
  qryLogSuppliesReceive.Parameters[0].Value:=qrySuppliesReceiveHd.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogSuppliesReceive.Open;
end;

procedure TfmSuppliesReceive.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  // kalo merk diisi maka customer diisi sesuai dengan merk
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'MerekId') = 0) and (not(dmEkspedisi.qryMerekByRoute.FieldByName('CustomerId').isnull)) then
    qrySuppliesReceiveHd.FieldByName('CustomerId').AsVariant := dmEkspedisi.qryMerekByRoute.FieldByName('CustomerId').asVariant;
end;

procedure TfmSuppliesReceive.dsSuppliesReceiveDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'T') = 0) or (CompareText(Field.FieldName, 'L') = 0)
     or (CompareText(Field.FieldName, 'P') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    qrySuppliesReceiveDt.FieldByName('totalm3').asfloat :=qrySuppliesReceiveDt.FieldByName('T').asfloat*
       qrySuppliesReceiveDt.FieldByName('L').asfloat*qrySuppliesReceiveDt.FieldByName('P').asfloat/1000000*
       qrySuppliesReceiveDt.FieldByName('Qty').asfloat
  end;
  if (CompareText(Field.FieldName, 'Berat') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
      qrySuppliesReceiveDt.FieldByName('totalBerat').asfloat :=qrySuppliesReceiveDt.FieldByName('Berat').asfloat*
       qrySuppliesReceiveDt.FieldByName('Qty').asfloat/1000
  end;
end;

procedure TfmSuppliesReceive.InitForm;
begin
  inherited;
  SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
  SetReadOnly(dbeItemReceiveCode, True, COLOR_INACTIVE);
  SetReadOnly(dblcMerekId, True, COLOR_INACTIVE);
  SetReadOnly(dblcRute, True, COLOR_INACTIVE);

  DefaultPrimaryKeyField := 'ItemReceiveCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_SUPPLIES_RECEIVE);

  MonthYearValueChange(nil);
  OpenIfClose(dmEkspedisi.qryCustomer);
  OpenIfClose(dmEkspedisi.qryPengirim);
  OpenIfClose(qrySuppliesReceiveHd);
  OpenIfClose(qrySuppliesReceiveDt);
  OpenIfClose(dmEkspedisi.qryMerek);
  OpenIfClose(dmEkspedisi.qryTarifType);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryMerekByRoute);
  OpenIfClose(qryPrevDaftarMuatKapal);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(dmEkspedisi.qryLog);
  OpenIfClose(qryLogSuppliesReceive);
  OpenIfClose(dmEkspedisi.qryItemList);

  TcxCalcEditProperties(cgvSuppliesReceiveT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvSuppliesReceiveL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvSuppliesReceiveP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvSuppliesReceiveQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSuppliesReceiveBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvSuppliesReceiveTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvSuppliesReceiveTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvSuppliesReceive.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvSuppliesReceive.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvSuppliesReceive.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvSuppliesReceive.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;

  dbeCollie.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[1];
  dbeTon.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[3];
  dbeM3Ton.EditValue := cgvSuppliesReceive.DataController.Summary.FooterSummaryValues[4];

end;

procedure TfmSuppliesReceive.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qrySuppliesReceiveHd.Close;
  qrySuppliesReceiveHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qrySuppliesReceiveHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qrySuppliesReceiveHd,True, True);


end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuppliesReceiveDt',hasil,action,dataset.FieldByName(DefaultPrimaryKeyField).AsString);
  qryLogSuppliesReceive.Close;
  qryLogSuppliesReceive.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogSuppliesReceive.Open;
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtAfterPost(DataSet: TDataSet);
var a : string; i: integer;
begin
  inherited;
  FSuppliesCode:=qrySuppliesReceiveDt.FieldByName('SuppliesCode').AsString;
  FSuppliesName:=qrySuppliesReceiveDt.FieldByName('SuppliesName').AsString;
  FStorageLocationId:=qrySuppliesReceiveDt.FieldByName('StorageLocationId').Asinteger;

  dmEkspedisi.InsertLog('SuppliesReceiveDt',hasil,action,dataset.FieldByName(DefaultPrimaryKeyField).AsString);
  qryLogSuppliesReceive.Close;
  qryLogSuppliesReceive.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogSuppliesReceive.Open;

  LockRefresh(qrySuppliesReceiveDt);
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (qrySuppliesReceiveDt.FieldByName('totalm3').AsFloat=0) and (qrySuppliesReceiveDt.FieldByName('totalberat').AsFloat=0) then
  begin
    showmessage('Periksa T,L,P atau Berat !!!');
    DataSet.Cancel;
  end;
  if DataSet.DataSource<>nil then
    if DataSet.DataSource.State in [dsEdit,dsInsert] then
       DataSet.DataSource.DataSet.Post;

  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveDtNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ItemReceiveCode').AsString := qrySuppliesReceiveHd.FieldByName('ItemReceiveCode').AsString;
  DataSet.FieldByName('SuppliesCode').AsString :=FSuppliesCode;
  DataSet.FieldByName('SuppliesName').AsString :=FSuppliesName;
  DataSet.FieldByName('StorageLocationId').AsInteger :=FStorageLocationId;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount+1;
  DataSet.FieldByName('TotalBerat').AsInteger := 0;
  DataSet.FieldByName('TotalM3').AsInteger := 0;
  DataSet.FieldByName('P').AsInteger := 0;
  DataSet.FieldByName('L').AsInteger := 0;
  DataSet.FieldByName('T').AsInteger := 0;
  DataSet.FieldByName('Berat').AsInteger := 0;
  DataSet.FieldByName('Qty').AsInteger := 1;
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuppliesReceiveHd',hasil,action,dataset.FieldByName(DefaultPrimaryKeyField).AsString);
  qryLogSuppliesReceive.Close;
  qryLogSuppliesReceive.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogSuppliesReceive.Open;

end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdAfterPost(DataSet: TDataSet);
var tgl:string;
begin
  inherited;
  dmEkspedisi.InsertLog('SuppliesReceiveHd',hasil,action,dataset.FieldByName(DefaultPrimaryKeyField).AsString);
  qryLogSuppliesReceive.Close;
  qryLogSuppliesReceive.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogSuppliesReceive.Open;

end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdBeforePost(DataSet: TDataSet);
var tgl:string;
begin
  inherited;
  if DataSet.FieldByName('ItemReceiveCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='PENERIMAAN';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbeItemReceiveDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryGenerateCounter.Open;
    dmEkspedisi.qryspGenerateCounter.Close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='PENERIMAAN';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbeItemReceiveDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
    DataSet.FieldByName('ItemReceiveCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  qrySuppliesReceiveDt.connection:=nil;
  qrySuppliesReceiveDt.connection:=dmGlobal.conGlobal;
  qrySuppliesReceiveDt.Close;
  qrySuppliesReceiveDt.open;
  qrySuppliesReceiveDt.Refresh;
end;

procedure TfmSuppliesReceive.qrySuppliesReceiveHdNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ItemReceiveDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('EmployeeId').Asstring := dmGlobal.SettingGlobal.LoginEmployeeId;
  DataSet.FieldByName('StatusApprove').Asstring := '1';
  DataSet.FieldByName('CounterPrint').Asstring := '1';
  DataSet.FieldByName('ItemReceiveDate').Asdatetime := dmGlobal.SettingGlobal.ServerDateTime;
end;

procedure TfmSuppliesReceive.RefreshAll;
begin
  inherited;

  LockRefresh(qrySuppliesReceiveHd);
  LockRefresh(qrySuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
  LockRefresh(dmEkspedisi.qryTarifType);
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(dmEkspedisi.qryMerekByRoute);
  LockRefresh(qryPrevDaftarMuatKapal);
  LockRefresh(dmEkspedisi.qryUnitMeasure);
  LockRefresh(dmEkspedisi.qryLog);
  LockRefresh(dmEkspedisi.qryPengirim);
  LockRefresh(dmEkspedisi.qryCustomer);
  LockRefresh(dmEkspedisi.qryItemList);
  LockRefresh(qryLogSuppliesReceive);

end;

end.
