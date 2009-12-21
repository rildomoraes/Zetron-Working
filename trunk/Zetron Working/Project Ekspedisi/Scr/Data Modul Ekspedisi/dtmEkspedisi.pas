unit dtmEkspedisi;

interface

uses
  SysUtils, Classes, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxImageComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Variants, Dialogs;

type
  TdmEkspedisi = class(TDataModule)
    qryStorageLocation: TADOQuery;
    qryShipCrew: TADOQuery;
    qryShip: TADOQuery;
    gvrEkspedisi: TcxGridViewRepository;
    cgvPrevStorageLocation: TcxGridDBTableView;
    dsPrevStorageLocation: TDataSource;
    dsPrevShipCrew: TDataSource;
    dsPrevShip: TDataSource;
    cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn;
    cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn;
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
    qryRoute: TADOQuery;
    dsPrevRoute: TDataSource;
    qryShipDailyLog: TADOQuery;
    qryMerek: TADOQuery;
    qryTarifType: TADOQuery;
    qryTarifItem: TADOQuery;
    qryShipRoute: TADOQuery;
    dsPrevShipDailyLog: TDataSource;
    dsPrevMerek: TDataSource;
    dsTarifType: TDataSource;
    qryDaftarMuatKapal: TADOQuery;
    dsDaftarMuatKapal: TDataSource;
    qryPacking: TADOQuery;
    dsPacking: TDataSource;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    qryMerekByRoute: TADOQuery;
    dsPrevMerkbyRoute: TDataSource;
    cgvPrevMerekByRoute: TcxGridDBTableView;
    cgvPrevMerekByRouteMerekCode: TcxGridDBColumn;
    cgvPrevMerekByRouteMerekName: TcxGridDBColumn;
    qryCounter: TADOQuery;
    dsCounter: TDataSource;
    qryCounterHd: TADOQuery;
    dsCounterHd: TDataSource;
    qryUnitMeasure: TADOQuery;
    dsUnitMeasure: TDataSource;
    cgvPrevUnitMeasure: TcxGridDBTableView;
    cgvPrevUnitMeasureUnitMeasureCode: TcxGridDBColumn;
    cgvPrevUnitMeasureUnitMeasureName: TcxGridDBColumn;
    qryGenerateCounter: TADOQuery;
    qryspGenerateCounter: TADOQuery;
    qryLog: TADOQuery;
    dsLog: TDataSource;
    qryStorageLocationDest: TADOQuery;
    dsStorageLocationDest: TDataSource;
    cgvPrevStorageLocationDest: TcxGridDBTableView;
    cgvPrevStorageLocationDestStorageLocationId: TcxGridDBColumn;
    cgvPrevStorageLocationDestStorageLocationCode: TcxGridDBColumn;
    cgvPrevStorageLocationDestStorageLocationName: TcxGridDBColumn;
    cgvPrevStorageLocationDestFlagShipStorage: TcxGridDBColumn;
    dsCustomer: TDataSource;
    qryCustomer: TADOQuery;
    qryCustomerCategory: TADOQuery;
    dsCustomerCategory: TDataSource;
    dsPositionCrew: TDataSource;
    qryPositionCrew: TADOQuery;
    cgvPrevPositionCrew: TcxGridDBTableView;
    cgvPrevPositionCrewPositionName: TcxGridDBColumn;
    cgvPrevCustomer: TcxGridDBTableView;
    cgvPrevCustomerCustomerName: TcxGridDBColumn;
    cgvPrevCustomerCategory: TcxGridDBTableView;
    cgvPrevCustomerCategoryCategoryName: TcxGridDBColumn;
    dsPengirim: TDataSource;
    qryPengirim: TADOQuery;
    cgvPrevPengirim: TcxGridDBTableView;
    cgvPrevPengirimCustomerName: TcxGridDBColumn;
    qryShipNahkoda: TADOQuery;
    dsShipNahkoda: TDataSource;
    cgvPrevShipNahkoda: TcxGridDBTableView;
    cgvPrevShipNahkodaShipName: TcxGridDBColumn;
    cgvPrevShipNahkodaShipCrewName: TcxGridDBColumn;
    qryLogDictionary: TADOQuery;
    dsLogDictionary: TDataSource;
    qryValue: TADOQuery;
    qryGetValue: TADOQuery;
    dsItemList: TDataSource;
    qryItemList: TADOQuery;
    cgvprevItemList: TcxGridDBTableView;
    cgvprevItemListItemName: TcxGridDBColumn;
    cgvprevItemListT: TcxGridDBColumn;
    cgvprevItemListL: TcxGridDBColumn;
    cgvprevItemListP: TcxGridDBColumn;
    cgvprevItemListBerat: TcxGridDBColumn;
    cgvprevItemListTotalM3: TcxGridDBColumn;
    cgvprevItemListTotalBerat: TcxGridDBColumn;
    qryDaftarMuatKapalRoute: TADOQuery;
    dsDaftarMuatKapalRoute: TDataSource;
    cgvPrevDaftarMuatKapalRoute: TcxGridDBTableView;
    cgvPrevDaftarMuatKapalRouteDaftarMuatKapalRouteCode: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalRouteDaftarMuatKapalCode: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalRouteRouteId: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalRouteTotalM3: TcxGridDBColumn;
    cgvPrevDaftarMuatKapalRouteTotalTon: TcxGridDBColumn;
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryMerekAfter(DataSet: TDataSet);
    procedure qryCustomerForwardingAfter(DataSet: TDataSet);
    procedure qryStorageLocationAfter(DataSet: TDataSet);
    procedure qryShipCrewAfter(DataSet: TDataSet);
    procedure qryShipAfter(DataSet: TDataSet);
    procedure qryTarifTypeAfter(DataSet: TDataSet);
    procedure qryTarifItemAfter(DataSet: TDataSet);
    procedure qryShipRouteAfter(DataSet: TDataSet);
    procedure qryDaftarMuatKapalAfter(DataSet: TDataSet);
    procedure qryPengirimAfter(DataSet: TDataSet);
    procedure qryCounterAfter(DataSet: TDataSet);
    procedure qryMerekByRouteAfter(DataSet: TDataSet);
    procedure qryRouteAfter(DataSet: TDataSet);
    procedure qryShipDailyLogAfter(DataSet: TDataSet);
    procedure qryPrevPackingAfter(DataSet: TDataSet);
    procedure qryUnitMeasureAfter(DataSet: TDataSet);
    procedure qryPackingAfter(DataSet: TDataSet);
    procedure qryCounterHdAfter(DataSet: TDataSet);
    procedure qryShipNewRecord(DataSet: TDataSet);
    procedure qryTarifTypeBeforePost(DataSet: TDataSet);
    procedure qryCustomerNewRecord(DataSet: TDataSet);
    procedure qryUnitMeasureBeforePost(DataSet: TDataSet);
    procedure qryStorageLocationBeforePost(DataSet: TDataSet);
    procedure qryShipCrewBeforePost(DataSet: TDataSet);
    procedure qryShipBeforePost(DataSet: TDataSet);
    procedure qryRouteBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    hasil,action,key:string;
  public
    { Public declarations }
    procedure InsertLog(const TableName,Hasil,Action,KeyField: string);
    function GetLog(DataSet:TDataSet;var Action:string):string;
    function GetLogDel(DataSet:TDataSet;var Action:string):string;
  end;

var
  dmEkspedisi: TdmEkspedisi;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure;
{ TdmEkspedisi }

procedure TdmEkspedisi.InsertLog(const TableName,Hasil,Action,KeyField: string);
begin
  OpenIfClose(qryLog);
  dsLog.DataSet.Insert;
  dsLog.DataSet.FieldByName('User').Asstring :=dmGlobal.SettingGlobal.LoginEmployeeId;
  dsLog.DataSet.FieldByName('TransactionDate').AsDateTime :=dmGlobal.SettingGlobal.ServerDateTime;
  dsLog.DataSet.FieldByName('Action').AsString := Action;
  dsLog.DataSet.FieldByName('TableName').AsString :=TableName ;
  dsLog.DataSet.FieldByName('Description').AsString := Hasil;
  dsLog.DataSet.FieldByName('KeyField').AsString := KeyField;
  dsLog.DataSet.Post;
end;

procedure TdmEkspedisi.qryCounterAfter(DataSet: TDataSet);
begin
  InsertLog('Counter',hasil,action,key);
end;

procedure TdmEkspedisi.qryCounterHdAfter(DataSet: TDataSet);
begin
  InsertLog('CounterHd',hasil,action,key);
end;

procedure TdmEkspedisi.qryCustomerForwardingAfter(DataSet: TDataSet);
begin
  InsertLog('CustomerForwarding',hasil,action,key);
end;

procedure TdmEkspedisi.qryCustomerNewRecord(DataSet: TDataSet);
begin
  if DataSet.State in [dsinsert] then
  begin
    DataSet.FieldByName('CustomerSince').AsDateTime:=Now;
    DataSet.FieldByName('CreditLimit').AsFloat:=0;
    DataSet.FieldByName('DepositBalance').AsFloat:=0;
  end;
end;

procedure TdmEkspedisi.qryDaftarMuatKapalAfter(DataSet: TDataSet);
begin
  InsertLog('DaftarMuatKapal',hasil,action,key);
end;

procedure TdmEkspedisi.qryMerekAfter(DataSet: TDataSet);
begin
  InsertLog('Merek',hasil,action,key);
end;

procedure TdmEkspedisi.qryMerekByRouteAfter(DataSet: TDataSet);
begin
  InsertLog('Merek',hasil,action,key);
end;

procedure TdmEkspedisi.qryPackingAfter(DataSet: TDataSet);
begin
  InsertLog('Packing',hasil,action,key);
end;

procedure TdmEkspedisi.qryPengirimAfter(DataSet: TDataSet);
begin
  InsertLog('Pengirim',hasil,action,key);
end;

procedure TdmEkspedisi.qryPrevPackingAfter(DataSet: TDataSet);
begin
  InsertLog('Packing',hasil,action,key);
end;

procedure TdmEkspedisi.qryRouteAfter(DataSet: TDataSet);
begin
  InsertLog('Route',hasil,action,key);
end;

procedure TdmEkspedisi.qryRouteBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('RouteCode').Value := Dataset.FieldByName('RouteName').Value;
  hasil:=GetLog(DataSet,Action);
end;

procedure TdmEkspedisi.qryShipAfter(DataSet: TDataSet);
begin
  InsertLog('Ship',hasil,action,key);
end;

procedure TdmEkspedisi.qryShipBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('ShipCode').Value := copy(Dataset.FieldByName('ShipName').Value,5,4);
  hasil:=GetLog(DataSet,Action);
end;

procedure TdmEkspedisi.qryShipCrewAfter(DataSet: TDataSet);
begin
  InsertLog('ShipCrew',hasil,action,key);
end;

procedure TdmEkspedisi.qryShipCrewBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('ShipCrewCode').Value := copy(Dataset.FieldByName('ShipCrewName').Value,1,4);
  hasil:=GetLog(DataSet,Action);
end;

procedure TdmEkspedisi.qryShipDailyLogAfter(DataSet: TDataSet);
begin
  InsertLog('ShipDailyLog',hasil,action,key);
end;

procedure TdmEkspedisi.qryShipNewRecord(DataSet: TDataSet);
begin
  if DataSet.State in [dsinsert] then
    Dataset.fieldbyname('FlagMuat').asstring:='0';
end;

procedure TdmEkspedisi.qryShipRouteAfter(DataSet: TDataSet);
begin
  InsertLog('ShipRoute',hasil,action,key);
end;

procedure TdmEkspedisi.qryStorageLocationAfter(DataSet: TDataSet);
begin
  InsertLog('StorageLocation',hasil,action,key);
end;

procedure TdmEkspedisi.qryStorageLocationBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('StorageLocationCode').Value := Dataset.FieldByName('StorageLocationName').Value;
  hasil:=GetLog(DataSet,Action);
end;

procedure TdmEkspedisi.qryTarifItemAfter(DataSet: TDataSet);
begin
  InsertLog('TarifItem',hasil,action,key);
end;

procedure TdmEkspedisi.qryTarifTypeAfter(DataSet: TDataSet);
begin
  InsertLog('TarifType',hasil,action,key);
end;

procedure TdmEkspedisi.qryTarifTypeBeforePost(DataSet: TDataSet);
begin
  if (qryTarifType.FieldByName('TarifTypeCode').isnull) then
  begin
    qryGenerateCounter.Close;
    qryGenerateCounter.Parameters[0].Value:='TIPE TARIF';
    qryGenerateCounter.Parameters[1].Value:=now;
    qryGenerateCounter.Parameters[2].Value:='';
    qryGenerateCounter.Open;
    qryTarifType.FieldByName('TarifTypeCode').AsString:=qryGenerateCounter.FieldByName('GenCounter').Text;
    qryspGenerateCounter.close;
    qryspGenerateCounter.Parameters[0].Value:='TIPE TARIF';
    qryspGenerateCounter.Parameters[1].Value:=now;
    qryspGenerateCounter.Parameters[2].Value:='';
    qryspGenerateCounter.ExecSQL;
  end;
  qryBeforePost(DataSet);
end;

procedure TdmEkspedisi.qryUnitMeasureAfter(DataSet: TDataSet);
begin
  InsertLog('UnitMeasure',hasil,action,key);
end;

procedure TdmEkspedisi.qryUnitMeasureBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('UnitMeasureCode').Value := DataSet.FieldByName('UnitMeasureName').Value;
   hasil:=GetLog(DataSet,Action);
end;

procedure TdmEkspedisi.qryBeforeDelete(DataSet: TDataSet);
begin
  hasil:=GetLogDel(DataSet,Action);
end;

procedure TdmEkspedisi.qryBeforePost(DataSet: TDataSet);
begin
   hasil:=GetLog(DataSet,Action);
end;


function TdmEkspedisi.GetLog(DataSet:TDataSet;var Action:string):string;
var i,flag:integer;
  lama,baru,hasil,keyfield,tablename:string;
begin
  flag:=0;
  if DataSet.State in [dsInsert] then
  begin
    action:='1';
    hasil:='Insert ';
    for i := 0 to DataSet.FieldCount - 1 do begin
      if qryLogDictionary.Locate('queryname;fieldname', VarArrayOf([DataSet.Name,DataSet.Fields[i].FieldName]), []) then
         begin
           if flag<>1 then begin
            hasil:=hasil+qryLogDictionary.FieldByName('DisplayKeyField').AsString+' '+DataSet.FieldByName(qryLogDictionary.FieldByName('KeyField').AsString).AsString;
            flag:=1;
           end;
           if qryLogDictionary.FieldByName('referencetablename').IsNull then
           begin
             if not(qryLogDictionary.FieldByName('value1').isnull) and (qryLogDictionary.FieldByName('value1').asstring<>'') then
             begin
               qryValue.close;
               qryValue.Parameters[0].Value:=qryLogDictionary.FieldByName('value2').AsString;
               qryValue.Parameters[1].Value:=qryLogDictionary.FieldByName('value1').AsString;
               qryValue.Parameters[2].Value:=VarToStr(DataSet.Fields[i].Value);
               qryValue.Parameters[3].Value:=qryLogDictionary.FieldByName('value2').AsString;
               qryValue.Parameters[4].Value:=qryLogDictionary.FieldByName('value1').AsString;
               qryValue.Parameters[5].Value:=VarToStr(DataSet.Fields[i].NewValue);
               qryValue.Open;
               qryValue.Open;
               baru:=qryValue.FieldByName('baru').AsString;
               hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+baru+';  ';
             end
             else
             begin
               baru:=VarToStr(DataSet.Fields[i].Value);
               hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+baru+';  ';
             end;
           end
           else
           begin
             qryGetValue.Close;
             qryGetValue.sql.Clear;
             qryGetValue.sql.Add('select '+qryLogDictionary.FieldByName('ReferenceFieldDisplay').AsString+' as hasil from');
             qryGetValue.sql.Add(qryLogDictionary.FieldByName('ReferenceTableName').asstring);
             qryGetValue.sql.Add('Where cast('+qryLogDictionary.FieldByName('ReferenceKeyField').asstring+' as varchar)='''+VarToStr(DataSet.Fields[i].Value)+'''');
             qryGetValue.Open;
             baru:=qryGetValue.FieldByName('hasil').AsString;
             hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+baru+';  ';
           end;
         end;
    end;
  end;
  if DataSet.State in [dsEdit] then
  begin
    LockRefresh(qryLogDictionary);
    action:='2';
    hasil:='Ubah ';
    for i := 0 to DataSet.FieldCount - 1 do
    begin
       lama:=VarToStr(DataSet.Fields[i].OldValue);
       baru:=VarToStr(DataSet.Fields[i].NewValue);
       if lama<>baru then begin
         if qryLogDictionary.Locate('queryname;fieldname', VarArrayOf([DataSet.Name,DataSet.Fields[i].FieldName]), []) then
         begin
           if flag<>1 then begin
            hasil:=hasil+qryLogDictionary.FieldByName('DisplayKeyField').AsString+' '+DataSet.FieldByName(qryLogDictionary.FieldByName('KeyField').AsString).AsString;
            flag:=1;
           end;
           if qryLogDictionary.FieldByName('referencetablename').IsNull then
           begin
             if not(qryLogDictionary.FieldByName('value1').isnull) and (qryLogDictionary.FieldByName('value1').asstring<>'') then
             begin
               qryValue.close;
               qryValue.Parameters[0].Value:=qryLogDictionary.FieldByName('value2').AsString;
               qryValue.Parameters[1].Value:=qryLogDictionary.FieldByName('value1').AsString;
               qryValue.Parameters[2].Value:=VarToStr(DataSet.Fields[i].OldValue);
               qryValue.Parameters[3].Value:=qryLogDictionary.FieldByName('value2').AsString;
               qryValue.Parameters[4].Value:=qryLogDictionary.FieldByName('value1').AsString;
               qryValue.Parameters[5].Value:=VarToStr(DataSet.Fields[i].NewValue);
               qryValue.Open;
               lama:=qryValue.FieldByName('lama').AsString;
               baru:=qryValue.FieldByName('baru').AsString;
               hasil:=hasil+' Kolom ['+uppercase(qryLogDictionary.FieldByName('displayfieldname').AsString)+'] dari '+
                    lama+' diubah ke '+baru+'; ';
             end
             else
             begin
               lama:=VarToStr(DataSet.Fields[i].OldValue);
               baru:=VarToStr(DataSet.Fields[i].NewValue);
               hasil:=hasil+' Kolom ['+uppercase(qryLogDictionary.FieldByName('displayfieldname').AsString)+'] dari '+
                    lama+' diubah ke '+baru+'; ';
             end;
           end
           else
           begin
             qryGetValue.Close;
             qryGetValue.sql.Clear;
             qryGetValue.sql.Add('select '+qryLogDictionary.FieldByName('ReferenceFieldDisplay').asstring+' as hasil from');
             qryGetValue.sql.Add(qryLogDictionary.FieldByName('ReferenceTableName').asstring);
             qryGetValue.sql.Add('Where cast('+qryLogDictionary.FieldByName('ReferenceKeyField').asstring+' as varchar)='''+VarToStr(DataSet.Fields[i].OldValue)+'''');
             qryGetValue.Open;
             lama:=qryGetValue.FieldByName('hasil').AsString;
             qryGetValue.Close;
             qryGetValue.sql.Clear;
             qryGetValue.sql.Add('select '+qryLogDictionary.FieldByName('ReferenceFieldDisplay').AsString+' as hasil from');
             qryGetValue.sql.Add(qryLogDictionary.FieldByName('ReferenceTableName').asstring);
             qryGetValue.sql.Add('Where cast('+qryLogDictionary.FieldByName('ReferenceKeyField').asstring+' as varchar)='''+VarToStr(DataSet.Fields[i].NewValue)+'''');
             qryGetValue.Open;
             baru:=qryGetValue.FieldByName('hasil').AsString;
             hasil:=hasil+' Kolom ['+uppercase(qryLogDictionary.FieldByName('displayfieldname').AsString)+'] diubah dari '+
                  lama+' menjadi '+baru+'; ';
           end;
         end;
       end;
    end;
  end;

  GetLog:=hasil;
end;

function TdmEkspedisi.GetLogDel(DataSet:TDataSet;var Action:string):string;
var i,flag:integer;
  lama,baru,hasil,KeyField:string;
begin
  flag:=0;
  hasil:='Delete ';
  action:='3';
  if (uppercase(Dataset.Name)=uppercase('qryBeritaAcaraHd')) or (uppercase(Dataset.Name)=uppercase('qryBeritaAcaraDt')) then
  begin
     KeyField:='BeritaAcaraCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryBongkaranHd')) then
  begin
     KeyField:='BongkaranCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCity')) then
  begin
     KeyField:='CityId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCompany')) then
  begin
     KeyField:='CompanyId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCounterHd')) or (uppercase(Dataset.Name)=uppercase('qryCounterDt1')) then
  begin
     KeyField:='CounterId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCountry')) then
  begin
     KeyField:='CountryId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCurrencyMaster')) then
  begin
     KeyField:='CurrencyId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCustomer')) then
  begin
     KeyField:='CustomerId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCustomerCategory')) then
  begin
     KeyField:='CustomerCategoryId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCustomerContact')) then
  begin
     KeyField:='CustomerContactId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryCustomerPhone')) then
  begin
     KeyField:='PhoneName';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryDaftarMuatKapal'))  or (uppercase(Dataset.Name)=uppercase('qryDaftarMuatKapalRoute')) then
  begin
     KeyField:='DaftarMuatKapalCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryDailyKurs')) then
  begin
     KeyField:='KursDate';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryDepartment')) then
  begin
     KeyField:='DepartmentId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryDisplay')) then
  begin
     KeyField:='DisplayId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryEmployee')) then
  begin
     KeyField:='EmployeeId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryJobPosition')) then
  begin
     KeyField:='PositionId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryKonosemen')) or (uppercase(Dataset.Name)=uppercase('qryKonosemenDt')) then
  begin
     KeyField:='KonosemenCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryMerek')) then
  begin
     KeyField:='MerekId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryMutasiStorageHd')) or (uppercase(Dataset.Name)=uppercase('qryMutasiStorageDt')) then
  begin
     KeyField:='MutasiCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryPackingTransactionHd')) or (uppercase(Dataset.Name)=uppercase('qryPackingTransactionDt')) then
  begin
     KeyField:='PackingTransactionCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryProvince')) then
  begin
     KeyField:='ProvinceId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryReport')) then
  begin
     KeyField:='ReportId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryReportCategory')) then
  begin
     KeyField:='ReportCategoryId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryRoute')) then
  begin
     KeyField:='RouteId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShip')) then
  begin
     KeyField:='ShipId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShipCrew')) then
  begin
     KeyField:='ShipCrewId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShipDailyLog')) then
  begin
     KeyField:='ShipLogDate';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShipHistory')) then
  begin
     KeyField:='HistoryDate';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShipProperty')) then
  begin
     KeyField:='Property';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryShipPropertyDetail')) then
  begin
     KeyField:='Detail';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryStock')) then
  begin
     KeyField:='StockId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryStorageLocation')) then
  begin
     KeyField:='StorageLocationId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qrySuppliesReceiveHd')) or (uppercase(Dataset.Name)=uppercase('qrySuppliesReceiveDt')) then
  begin
     KeyField:='ItemReceiveCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qrySuratJalanHd')) or (uppercase(Dataset.Name)=uppercase('qrySuratJalanDt')) then
  begin
     KeyField:='SuratJalanCode';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryTarifItem')) or (uppercase(Dataset.Name)=uppercase('qryTarifType')) then
  begin
     KeyField:='TarifTypeId';
  end;
  if (uppercase(Dataset.Name)=uppercase('qryUnitMeasure')) then
  begin
     KeyField:='UnitMeasureId';
  end;

  key:=DataSet.fieldbyname(KeyField).asstring;
  for i := 0 to DataSet.FieldCount - 1 do begin
    if qryLogDictionary.Locate('queryname;fieldname', VarArrayOf([DataSet.Name,DataSet.Fields[i].FieldName]), []) then
         begin
           if flag<>1 then begin
            hasil:=hasil+qryLogDictionary.FieldByName('DisplayKeyField').AsString+' '+DataSet.FieldByName(qryLogDictionary.FieldByName('KeyField').AsString).AsString;
            flag:=1;
           end;
           if qryLogDictionary.FieldByName('referencetablename').IsNull then
           begin
             if not(qryLogDictionary.FieldByName('value1').isnull) and (qryLogDictionary.FieldByName('value1').asstring<>'') then
             begin
               qryValue.close;
               qryValue.Parameters[0].Value:=qryLogDictionary.FieldByName('value2').AsString;
               qryValue.Parameters[1].Value:=qryLogDictionary.FieldByName('value1').AsString;
               qryValue.Parameters[2].Value:=VarToStr(DataSet.Fields[i].Value);
               qryValue.Open;
               lama:=qryValue.FieldByName('lama').AsString;
               hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+lama+';  ';
             end
             else
             begin
               lama:=VarToStr(DataSet.Fields[i].Value);
               hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+lama+';  ';
             end;
           end
           else
           begin
             qryGetValue.Close;
             qryGetValue.sql.Clear;
             qryGetValue.sql.Add('select '+qryLogDictionary.FieldByName('ReferenceFieldDisplay').AsString+' as hasil from');
             qryGetValue.sql.Add(qryLogDictionary.FieldByName('ReferenceTableName').asstring);
             qryGetValue.sql.Add('Where cast('+qryLogDictionary.FieldByName('ReferenceKeyField').asstring+' as varchar)='''+VarToStr(DataSet.Fields[i].OldValue)+'''');
             qryGetValue.Open;
             lama:=qryGetValue.FieldByName('hasil').AsString;
             hasil:=hasil+' Kolom ['+DataSet.Fields[i].FieldName+'] ='+lama+';  ';
           end;
         end;

  end;
  GetLogDel:=hasil;
end;

end.
