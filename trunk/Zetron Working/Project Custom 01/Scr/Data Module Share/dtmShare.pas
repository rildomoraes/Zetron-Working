unit dtmShare;

interface

uses
  SysUtils, Classes, ADODB, dtmGlobal, DB;

type
  TUpdateTable = (utReceivingRecord, utPurchaseOrder, utPurchaseInvoice,
    utPurchasePayment, utPurchaseReturn, utSalesOrder, utSalesInvoice,
    utDeliveryOrder, utSalesPayment, utSalesReturn, utOtherTransaction,
    utPurchaseDownPayment, utSalesDownPayment, utAssemblyTransaction,
    utMutation);

  TdmShare = class(TDataModule)
  private
    procedure GetTableInfo(AUpdateTable: TUpdateTable; out ATableName, AFieldIdName, AFieldDate, APrefix: string);
  public
    // Check supplies qty
    function  CompareRRWithPOValid(const AIdReceivingRecord, AIdPurchaseOrder: string): boolean;
    function  CompareSIWithSOValid(const AIdSalesInvoice, AIdSalesOrder: string): boolean;
    function  CompareSIWithWHValid(const AIdSalesInvoice, AIdWarehouse: string): boolean;
    function  CompareMTWithWHValid(const AIdMutation, AIdWarehouseSource: string): boolean;
    function  CompareOTWithWHValid(const AIdOtherTransaction, AIdWarehouseSource: string): boolean;
    function  ComparePRWithWHValid(const AIdPurchaseReturn, AIdWarehouse: string): boolean;
    function  ComparePRWithPIValid(const AIdPurchaseReturn: string): boolean;
    function  CompareSRWithSIValid(const AIdSalesReturn: string): boolean;

    // Checking outstanding amount with amount pay
    function  CheckOutstandingPurchaseInvoice(AIdPurchaseInvoice: string; AAmountPay: Real): Boolean;
    function  CheckOutstandingSalesInvoice(AIdSalesInvoice: string; AAmountPay: Real): Boolean;

    // Function to generate id
    function  GetCurrentTransNo(AUpdateTable: TUpdateTable; ADate: TDateTime): string; overload;
    function  GetCurrentTransNo(AUpdateTable: TUpdateTable; ADate: TDateTime; AIdWarehouse: string): string; overload;
    function  GetCurrentIdSupplies(const AIdSuppliesCategory: string; ALengthCounter: byte): string;

    // Get return price and disc of purchase/sale price
    procedure GetPurchasePriceAndDisc(const AFieldSupplierValue, AFieldSuppliesValue: string; out APrice, ADiscItem: real);
    procedure GetPurchasePriceAndDiscFromPO(const AFieldPOValue, AFieldSuppliesValue: string; out APrice, ADiscItem: real);
    procedure GetSalesPriceAndDisc(const AFieldCustomerValue, AFieldSuppliesValue: string; out APrice, ADiscItem: real);
    procedure GetSalesPriceAndDiscFromSO(const AFieldSOValue, AFieldSuppliesValue: string; out APrice, ADiscItem: real);

    // Get DownPayment Balance
    function  GetSupplierDownPayment(const AIdSupplier: string): Currency;
    function  GetCustomerDownPayment(const AIdCustomer: string): Currency;

    // Procedure for updating
    //IvanXXX procedure UpdateStatusApprove(AUpdateTable: TUpdateTable; const AFieldIdValue: string; AFieldApproveValue: integer);
    //IvanXXX procedure UpdateNotes(AUpdateTable: TUpdateTable; const AFieldIdValue, ANotesState, ANotesOld, ANotes: string);
    procedure UpdatePurchasePrice(const AFieldIdSupplierValue, AFieldIdSuppliesValue: string; AFieldPriceValue, AFieldDiscValue: real);
    procedure UpdateSalesPrice(const AFieldIdCustomerValue, AFieldIdSuppliesValue: string; AFieldPriceValue, AFieldDiscValue: real);
    procedure UpdatePrintCounter(AUpdateTable: TUpdateTable; const AFieldIdValue: string);
    function  GetPrintCounter(AUpdateTable: TUpdateTable; const AFieldIdValue: string): integer;

    // Get and set receiving record's vcIdPurchaseOrder
    function  GetReceivingRecordPI(const AIdReceivingRecord: string): string;
    procedure SetReceivingRecordPI(const AIdReceivingRecord, AIdPurchaseInvoice: string);

    // Function checking transaction status
    function  IsTransactionApprovePurchase(ATableTransaction: TUpdateTable; const AId: string; AApprove: byte): boolean;
    function  IsTransactionRejectPurchase(ATableTransaction: TUpdateTable; const AId: string): boolean;
    function  IsTransactionDone(ATableTransaction: TUpdateTable; const AId: string): boolean;
  end;

var
  dmShare: TdmShare;

implementation

uses
  untProcedure, untConstanta, untCustom01, StrUtils, DateUtils;

{$R *.dfm}

function TdmShare.CompareSIWithSOValid(const AIdSalesInvoice,
  AIdSalesOrder: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                               ');
      SQL.Add('from tbIMSalesInvoiceDt a                           ');
      SQL.Add('left join tbIMSalesOrderDt b on                     ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and              ');
      SQL.Add('  b.vcIdSalesOrder = :IdSalesOrder)                 ');
      SQL.Add('where a.vcIdSalesInvoice = :IdSalesInvoice          ');
      SQL.Add('and                                                 ');
      SQL.Add(' (IsNull(b.vcIdSupplies, '''') = '''' or            ');
      SQL.Add(' IsNull(a.inQty, 0) > IsNull(b.inOutstandingQty, 0))');
      Parameters[0].Value := AIdSalesOrder;
      Parameters[1].Value := AIdSalesInvoice;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.CompareSIWithWHValid(const AIdSalesInvoice,
  AIdWarehouse: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                        ');
      SQL.Add('from tbIMSalesInvoiceDt a                    ');
      SQL.Add('left join tbIMStockOnHandHd b on             ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and       ');
      SQL.Add('  b.vcIdWarehouse = :vcIdWarehouse)          ');
      SQL.Add('left join tbIMSupplies c on a.vcIdSupplies = c.vcIdSupplies');
      SQL.Add('where a.vcIdSalesInvoice = :IdSalesInvoice   ');
      SQL.Add('and c.chFlagService <> ''1''                 ');
      SQL.Add('and                                          ');
      SQL.Add('  (IsNull(b.vcIdSupplies, '''') = '''' or    ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(b.inEndQty, 0))');
      Parameters[0].Value := AIdWarehouse;
      Parameters[1].Value := AIdSalesInvoice;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.CompareSRWithSIValid(const AIdSalesReturn: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                            ');
      SQL.Add('from tbIMSalesReturnDt a                         ');
      SQL.Add('left join tbIMSalesReturnHd b on                 ');
      SQL.Add('  (a.vcIdSalesReturn = b.vcIdSalesReturn)        ');
      SQL.Add('left join tbIMSalesInvoiceDt c on                ');
      SQL.Add('  (a.vcIdSupplies = c.vcIdSupplies and           ');
      SQL.Add('  b.vcIdSalesInvoice = c.vcIdSalesInvoice)       ');
      SQL.Add('where a.vcIdSalesReturn = :IdSalesReturn         ');
      SQL.Add('and                                              ');
      SQL.Add('  (IsNull(c.vcIdSupplies, '''') = '''' or        ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(c.inCurrentQty, 0))');
      Parameters[0].Value := AIdSalesReturn;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.GetCurrentTransNo(AUpdateTable: TUpdateTable;
  ADate: TDateTime): string;
var
  qryTemp: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);
  qryTemp := TADOQuery.Create(self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select Max(' + FieldIdName + ') as CurrentNo');
    qryTemp.SQL.Add('from ' + TableName);
    qryTemp.SQL.Add('where Year(' + FieldDate + ') = :YearRR');
    qryTemp.SQL.Add('and Month(' + FieldDate + ') = :MonthRR');
    qryTemp.Parameters[0].Value := FormatDateTime('YYYY', ADate);
    qryTemp.Parameters[1].Value := FormatDateTime('MM', ADate);
    qryTemp.Open;
    Result := '0000';
    if not qryTemp.FieldByName('CurrentNo').IsNull then
      Result := RightStr(qryTemp.FieldByName('CurrentNo').AsString, 4);
    Result := IntToStr(StrToInt(Result) + 1);
    Result := AddingZero(Result, 4);
    Result := UpperCase(Prefix) + '-' + FormatDateTime('YYMM', ADate) + '-' + Result;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.GetCurrentIdSupplies(const AIdSuppliesCategory: string;
  ALengthCounter: byte): string;
var
  qryTemp: TADOQuery;
  Prefix: string;
begin
  Result := '';
  qryTemp := TADOQuery.Create(self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    // Get prefix
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select vcSuppliesCategoryCode                      ');
    qryTemp.SQL.Add('from tbIMSuppliesCategory                          ');
    qryTemp.SQL.Add('where vcIdSuppliesCategory like :IdSuppliesCategory');
    qryTemp.Parameters[0].Value := AIdSuppliesCategory;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
      Prefix := qryTemp.FieldByName('vcSuppliesCategoryCode').AsString;

    if Prefix = '' then
      Exit;

    // Get new id
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select Max(vcIdSupplies) as CurrentNo  ');
    qryTemp.SQL.Add('from tbIMSupplies                      ');
    qryTemp.SQL.Add('where vcIdSupplies like :IdSuppliesCode');
    qryTemp.Parameters[0].Value := Prefix + '%';
    qryTemp.Open;
    Result :=  StringOfChar('0', ALengthCounter);
    if not qryTemp.FieldByName('CurrentNo').IsNull then
      Result := RightStr(qryTemp.FieldByName('CurrentNo').AsString, ALengthCounter);
    Result := IntToStr(StrToInt(Result) + 1);
    Result := AddingZero(Result, ALengthCounter);
    Result := UpperCase(Prefix) + '-' + Result;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.GetCurrentTransNo(AUpdateTable: TUpdateTable;
  ADate: TDateTime; AIdWarehouse: string): string;
var
  qryTemp: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);
  Prefix := Prefix + RightStr(AIdWarehouse, 2);
  qryTemp := TADOQuery.Create(self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select Max(' + FieldIdName + ') as CurrentNo');
    qryTemp.SQL.Add('from ' + TableName                           );
    qryTemp.SQL.Add('where Year(' + FieldDate + ') = :YearRR     ');
    qryTemp.SQL.Add('and Month(' + FieldDate + ') = :MonthRR     ');
    qryTemp.SQL.Add('and ' + FieldIdName + ' like :Id            ');
    qryTemp.Parameters[0].Value := FormatDateTime('YYYY', ADate);
    qryTemp.Parameters[1].Value := FormatDateTime('MM', ADate);
    qryTemp.Parameters[2].Value := UpperCase(Prefix) + '-' + FormatDateTime('YYMM', ADate) + '-%';
    qryTemp.Open;
    Result := '0000';
    if not qryTemp.FieldByName('CurrentNo').IsNull then
      Result := RightStr(qryTemp.FieldByName('CurrentNo').AsString, 4);
    Result := IntToStr(StrToInt(Result) + 1);
    Result := AddingZero(Result, 4);
    Result := UpperCase(Prefix) + '-' + FormatDateTime('YYMM', ADate) + '-' + Result;
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.GetPurchasePriceAndDisc(const AFieldSupplierValue,
  AFieldSuppliesValue: string; out APrice, ADiscItem: real);
var
  qryTemp: TADOQuery;
begin
  qryTemp := TADOQuery.Create(self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select * from tbIMPurchasePrice ');
    qryTemp.SQL.Add('where vcIdSupplier = :IdSupplier');
    qryTemp.SQL.Add('and vcIdSupplies = :IdSupplies  ');
    qryTemp.Parameters[0].Value := AFieldSupplierValue;
    qryTemp.Parameters[1].Value := AFieldSuppliesValue;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
    begin
      APrice := qryTemp.FieldByName('dcPrice').AsFloat;
      ADiscItem := qryTemp.FieldByName('dcDiscItem').AsFloat;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.GetPurchasePriceAndDiscFromPO(const AFieldPOValue,
  AFieldSuppliesValue: string; out APrice, ADiscItem: real);
var
  qryTemp: TADOQuery;
begin
  qryTemp := TADOQuery.Create(self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select * from tbIMPurchaseOrderDt');
    qryTemp.SQL.Add('where vcIdPurchaseOrder = :IdPurchaseOrder');
    qryTemp.SQL.Add('and vcIdSupplies = :IdSupplies  ');
    qryTemp.Parameters[0].Value := AFieldPOValue;
    qryTemp.Parameters[1].Value := AFieldSuppliesValue;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
    begin
      APrice := qryTemp.FieldByName('dcPrice').AsFloat;
      ADiscItem := qryTemp.FieldByName('dcDiscItem').AsFloat;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.GetReceivingRecordPI(
  const AIdReceivingRecord: string): string;
var
  qryTemp: TADOQuery;
begin
  Result := '';
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select vcIdPurchaseInvoice from tbIMReceivingRecordHd');
      SQL.Add('where vcIdReceivingRecord = :ReceivingRecord');
      Parameters[0].Value := AIdReceivingRecord;
      Open;
    end;
    if not qryTemp.IsEmpty then
      Result := qryTemp.FieldByName('vcIdPurchaseInvoice').AsString;
//    else
//      dmGlobal.AddApplicationLog('exec TdmShare.GetReceivingRecordPI(' +
//      AIdReceivingRecord + ') but RR not founded', llHigh);
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.GetSalesPriceAndDisc(const AFieldCustomerValue,
  AFieldSuppliesValue: string; out APrice, ADiscItem: real);
var
  qryTemp: TADOQuery;
begin
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select dcPrice, dcDiscItem');
      SQL.Add('from tbIMSalePrice');
      SQL.Add('where vcIdCustomer = :IdCustomer');
      SQL.Add('and vcIdSupplies = :IdSupplies');
      Parameters[0].Value := AFieldCustomerValue;
      Parameters[1].Value := AFieldSuppliesValue;
      Open;
    end;
    APrice := qryTemp.FieldByName('dcPrice').AsFloat;
    ADiscItem := qryTemp.FieldByName('dcDiscItem').AsFloat;
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.GetSalesPriceAndDiscFromSO(const AFieldSOValue,
  AFieldSuppliesValue: string; out APrice, ADiscItem: real);
var
  qryTemp: TADOQuery;
begin
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select dcPrice, dcDiscItem');
      SQL.Add('from tbIMSalesOrderDt');
      SQL.Add('where vcIdSalesOrder = :IdSalesOrder');
      SQL.Add('and vcIdSupplies = :IdSupplies');
      Parameters[0].Value := AFieldSOValue;
      Parameters[1].Value := AFieldSuppliesValue;
      Open;
    end;
    APrice := qryTemp.FieldByName('dcPrice').AsFloat;
    ADiscItem := qryTemp.FieldByName('dcDiscItem').AsFloat;
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.GetTableInfo(AUpdateTable: TUpdateTable; out ATableName,
  AFieldIdName, AFieldDate, APrefix: string);
begin
  case AUpdateTable of
    utReceivingRecord:
      begin
        ATableName := TABLE_RR;
        AFieldIdName := FIELD_RR_ID;
        AFieldDate := FIELD_RR_DATE;
        APrefix := RR_PREFIX;
      end;
    utPurchaseOrder:
      begin
        ATableName := TABLE_PO;
        AFieldIdName := FIELD_PO_ID;
        AFieldDate := FIELD_PO_DATE;
        APrefix := PO_PREFIX;
      end;
    utPurchaseInvoice:
      begin
        ATableName := TABLE_PI;
        AFieldIdName := FIELD_PI_ID;
        AFieldDate := FIELD_PI_DATE;
        APrefix := PI_PREFIX;
      end;
    utPurchasePayment:
      begin
        ATableName := TABLE_PP;
        AFieldIdName := FIELD_PP_ID;
        AFieldDate := FIELD_PP_DATE;
        APrefix := PP_PREFIX;
      end;
    utPurchaseReturn:
      begin
        ATableName := TABLE_PR;
        AFieldIdName := FIELD_PR_ID;
        AFieldDate := FIELD_PR_DATE;
        APrefix := PR_PREFIX;
      end;
    utSalesOrder:
      begin
        ATableName := TABLE_SO;
        AFieldIdName := FIELD_SO_ID;
        AFieldDate := FIELD_SO_DATE;
        APrefix := SO_PREFIX;
      end;
    utSalesInvoice:
      begin
        ATableName := TABLE_SI;
        AFieldIdName := FIELD_SI_ID;
        AFieldDate := FIELD_SI_DATE;
        APrefix := SI_PREFIX;
      end;
    utDeliveryOrder:
      begin
        ATableName := TABLE_DR;
        AFieldIdName := FIELD_DR_ID;
        AFieldDate := FIELD_DR_DATE;
        APrefix := DR_PREFIX;
      end;
    utSalesPayment:
      begin
        ATableName := TABLE_SP;
        AFieldIdName := FIELD_SP_ID;
        AFieldDate := FIELD_SP_DATE;
        APrefix := SP_PREFIX;
      end;
    utSalesReturn:
      begin
        ATableName := TABLE_SR;
        AFieldIdName := FIELD_SR_ID;
        AFieldDate := FIELD_SR_DATE;
        APrefix := SR_PREFIX;
      end;
    utOtherTransaction:
      begin
        ATableName := TABLE_OT;
        AFieldIdName := FIELD_OT_ID;
        AFieldDate := FIELD_OT_DATE;
        APrefix := OT_PREFIX;
      end;
    utPurchaseDownPayment:
      begin
        ATableName := TABLE_PD;
        AFieldIdName := FIELD_PD_ID;
        AFieldDate := FIELD_PD_DATE;
        APrefix := PD_PREFIX;
      end;
    utSalesDownPayment:
      begin
        ATableName := TABLE_SD;
        AFieldIdName := FIELD_SD_ID;
        AFieldDate := FIELD_SD_DATE;
        APrefix := SD_PREFIX;
      end;
    utAssemblyTransaction:
      begin
        ATableName := TABLE_AT;
        AFieldIdName := FIELD_AT_ID;
        AFieldDate := FIELD_AT_DATE;
        APrefix := AT_PREFIX;
      end;
    utMutation:
      begin
        ATableName := TABLE_MT;
        AFieldIdName := FIELD_MT_ID;
        AFieldDate := FIELD_MT_DATE;
        APrefix := MT_PREFIX;
      end;
  else
    raise Exception.Create('Invalid TUpdateTable !!!');
  end;
end;

function TdmShare.IsTransactionApprovePurchase(
  ATableTransaction: TUpdateTable; const AId: string; AApprove: byte): boolean;
var
  qryTemp: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  Result := False;
  GetTableInfo(ATableTransaction, TableName, FieldIdName, FieldDate, Prefix);
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select ' + STATUS_APPROVE_FIELD      );
    qryTemp.SQL.Add('from ' + TableName                   );
    qryTemp.SQL.Add('where ' + FieldIdName + ' = :FieldId');
    qryTemp.Parameters[0].Value := AId;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
      Result := qryTemp.FieldByName(STATUS_APPROVE_FIELD).AsInteger = AApprove;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.IsTransactionDone(ATableTransaction: TUpdateTable;
  const AId: string): boolean;
var
  qryTemp: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  Result := False;
  GetTableInfo(ATableTransaction, TableName, FieldIdName, FieldDate, Prefix);
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select ' + STATUS_APPROVE_FIELD      );
    qryTemp.SQL.Add('from ' + TableName                   );
    qryTemp.SQL.Add('where ' + FieldIdName + ' = :FieldId');
    qryTemp.Parameters[0].Value := AId;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
      Result := qryTemp.FieldByName(STATUS_APPROVE_FIELD).AsInteger = STATUS_DONE;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.IsTransactionRejectPurchase(
  ATableTransaction: TUpdateTable; const AId: string): boolean;
var
  qryTemp: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  Result := False;
  GetTableInfo(ATableTransaction, TableName, FieldIdName, FieldDate, Prefix);
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select ' + STATUS_APPROVE_FIELD      );
    qryTemp.SQL.Add('from ' + TableName                   );
    qryTemp.SQL.Add('where ' + FieldIdName + ' = :FieldId');
    qryTemp.Parameters[0].Value := AId;
    qryTemp.Open;
    if not qryTemp.IsEmpty then
      Result := qryTemp.FieldByName(STATUS_APPROVE_FIELD).AsInteger = STATUS_REJECT;
  finally
    FreeAndNil(qryTemp);
  end;
end;

procedure TdmShare.SetReceivingRecordPI(const AIdReceivingRecord,
  AIdPurchaseInvoice: string);
var
  qryTemp: TADOQuery;
begin
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('update tbIMReceivingRecordHd');
      SQL.Add('set vcIdPurchaseInvoice = :IdPurchaseInvoice');
      SQL.Add('where vcIdReceivingRecord = :ReceivingRecord');
      Parameters[0].Value := AIdPurchaseInvoice;
      Parameters[1].Value := AIdReceivingRecord;
      if ExecSQL = 0 then
        {dmGlobal.CreateLogEven('exec TdmShare.SetReceivingRecordPI(' +
          AIdReceivingRecord + ', ' + AIdPurchaseInvoice + ') but RR not founded',
          llHigh);}
    end;
  finally
    FreeAndNil(qryTemp);
  end;
end;

//procedure TdmShare.UpdateNotes(AUpdateTable: TUpdateTable;
//  const AFieldIdValue, ANotesState, ANotesOld, ANotes: string);
//var
//  qryTemp: TADOQuery;
//  TableName, FieldIdName, FieldDate, Prefix: string;
//  Temp: string;
//begin
//  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);
//
//  // Set Header
//  Temp := ANotesOld +
//    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
//    ' - ' + ANotesState + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10 +
//    ANotes + #13#10;
//  qryTemp := TADOQuery.Create(Self);
//  try
//    qryTemp.Connection := dmGlobal.conGlobal;
//    qryTemp.Close;
//    qryTemp.SQL.Clear;
//    qryTemp.SQL.Add('Update ' + TableName);
//    qryTemp.SQL.Add('Set txNotes = :Notes');
//    qryTemp.SQL.Add('where ' + FieldIdName + ' = :AFieldIdValue');
//    qryTemp.Parameters[0].Value := Temp;
//    qryTemp.Parameters[1].Value := AFieldIdValue;
//    qryTemp.ExecSQL;
//  finally
//    FreeAndNil(qryTemp);
//  end;
//end;

procedure TdmShare.UpdatePrintCounter(AUpdateTable: TUpdateTable;
  const AFieldIdValue: string);
var
  qryUpdate: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);

  qryUpdate := TADOQuery.Create(Self);
  try
    qryUpdate.Connection := dmGlobal.conGlobal;
    qryUpdate.Close;
    qryUpdate.SQL.Clear;
    qryUpdate.SQL.Add('update ' + TableName );
    qryUpdate.SQL.Add('set inCounterPrint = IsNull(inCounterPrint, 0) + 1');
    qryUpdate.SQL.Add('where ' + FieldIdName + ' = :AFieldIdName');
    qryUpdate.Parameters[0].Value := AFieldIdValue;
    qryUpdate.ExecSQL;
  finally
    FreeAndNil(qryUpdate);
  end;
end;

function TdmShare.GetPrintCounter(AUpdateTable: TUpdateTable; const AFieldIdValue: string): integer;
var
  qryUpdate: TADOQuery;
  TableName, FieldIdName, FieldDate, Prefix: string;
begin
  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);

  qryUpdate := TADOQuery.Create(Self);
  try
    qryUpdate.Connection := dmGlobal.conGlobal;
    qryUpdate.Close;
    qryUpdate.SQL.Clear;
    qryUpdate.SQL.Add('select IsNull(CounterPrint, 0) from ' + TableName );
    qryUpdate.SQL.Add('where ' + FieldIdName + ' = :AFieldIdName');
    qryUpdate.Parameters[0].Value := AFieldIdValue;
    qryUpdate.Open;
    Result := qryUpdate.Fields[0].AsInteger;
  finally
    FreeAndNil(qryUpdate);
  end;
end;

procedure TdmShare.UpdatePurchasePrice(const AFieldIdSupplierValue,
  AFieldIdSuppliesValue: string; AFieldPriceValue, AFieldDiscValue: real);
var
  qryUpdate: TADOQuery;
begin
  qryUpdate := TADOQuery.Create(Self);
  try
    qryUpdate.Connection := dmGlobal.conGlobal;
    qryUpdate.Close;
    qryUpdate.SQL.Clear;
    qryUpdate.SQL.Add('select * from tbIMPurchasePrice            ');
    qryUpdate.SQL.Add('where vcIdSupplier = :AFieldIdSupplierValue');
    qryUpdate.SQL.Add('and vcIdSupplies  = :AFieldIdSuppliesValue ');
    qryUpdate.Parameters[0].Value := AFieldIdSupplierValue;
    qryUpdate.Parameters[1].Value := AFieldIdSuppliesValue;
    qryUpdate.Open;
    if qryUpdate.IsEmpty then
    begin
      // Insert new one
      qryUpdate.Close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Add('insert into tbIMPurchasePrice                     ');
      qryUpdate.SQL.Add('  (vcIdSupplier, vcIdSupplies, dcPurchasePrice,   ');
      qryUpdate.SQL.Add('  dcPurchaseDisc)                                 ');
      qryUpdate.SQL.Add('values                                            ');
      qryUpdate.SQL.Add('  (:AFieldIdSupplierValue, :AFieldIdSuppliesValue,');
      qryUpdate.SQL.Add('  :AFieldPriceValue, :AFieldDiscValue)            ');
      qryUpdate.Parameters[0].Value := AFieldIdSupplierValue;
      qryUpdate.Parameters[1].Value := AFieldIdSuppliesValue;
      qryUpdate.Parameters[2].Value := AFieldPriceValue;
      qryUpdate.Parameters[3].Value := AFieldDiscValue;
      qryUpdate.ExecSQL;
    end
    else
    begin
      // Update
      qryUpdate.Close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Add('update tbIMPurchasePrice                    ');
      qryUpdate.SQL.Add('  set dcPurchasePrice = :AFieldPriceValue,  ');
      qryUpdate.SQL.Add('  dcPurchaseDisc = :AFieldDiscValue         ');
      qryUpdate.SQL.Add('where vcIdSupplier = :AFieldIdSupplierValue ');
      qryUpdate.SQL.Add('and vcIdSupplies  = :AFieldIdSuppliesValue  ');
      qryUpdate.Parameters[0].Value := AFieldPriceValue;
      qryUpdate.Parameters[1].Value := AFieldDiscValue;
      qryUpdate.Parameters[2].Value := AFieldIdSupplierValue;
      qryUpdate.Parameters[3].Value := AFieldIdSuppliesValue;
      qryUpdate.ExecSQL;
    end;
  finally
    FreeAndNil(qryUpdate);
  end;
end;

procedure TdmShare.UpdateSalesPrice(const AFieldIdCustomerValue,
  AFieldIdSuppliesValue: string; AFieldPriceValue, AFieldDiscValue: real);
var
  qryUpdate: TADOQuery;
begin
  qryUpdate := TADOQuery.Create(Self);
  try
    qryUpdate.Connection := dmGlobal.conGlobal;
    qryUpdate.Close;
    qryUpdate.SQL.Clear;
    qryUpdate.SQL.Add('select * from tbIMSalesPrice               ');
    qryUpdate.SQL.Add('where vcIdCustomer = :AFieldIdCustomerValue');
    qryUpdate.SQL.Add('and vcIdSupplies  = :AFieldIdSuppliesValue ');
    qryUpdate.Parameters[0].Value := AFieldIdCustomerValue;
    qryUpdate.Parameters[1].Value := AFieldIdSuppliesValue;
    qryUpdate.Open;
    if qryUpdate.IsEmpty then
    begin
      // Insert new one
      qryUpdate.Close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Add('insert into tbIMSalesPrice                        ');
      qryUpdate.SQL.Add('  (vcIdCustomer, vcIdSupplies, dcSalesPrice,      ');
      qryUpdate.SQL.Add('  dcSalesDisc)                                    ');
      qryUpdate.SQL.Add('values                                            ');
      qryUpdate.SQL.Add('  (:AFieldIdCustomerValue, :AFieldIdSuppliesValue,');
      qryUpdate.SQL.Add('  :AFieldPriceValue, :AFieldDiscValue)            ');
      qryUpdate.Parameters[0].Value := AFieldIdCustomerValue;
      qryUpdate.Parameters[1].Value := AFieldIdSuppliesValue;
      qryUpdate.Parameters[2].Value := AFieldPriceValue;
      qryUpdate.Parameters[3].Value := AFieldDiscValue;
      qryUpdate.ExecSQL;
    end
    else
    begin
      // Update
      qryUpdate.Close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Add('update tbIMSalesPrice                      ');
      qryUpdate.SQL.Add('  set dcSalesPrice = :AFieldPriceValue,    ');
      qryUpdate.SQL.Add('  dcSalesDisc = :AFieldDiscValue           ');
      qryUpdate.SQL.Add('where vcIdCustomer = :AFieldIdCustomerValue');
      qryUpdate.SQL.Add('and vcIdSupplies  = :AFieldIdSuppliesValue ');
      qryUpdate.Parameters[0].Value := AFieldPriceValue;
      qryUpdate.Parameters[1].Value := AFieldDiscValue;
      qryUpdate.Parameters[2].Value := AFieldIdCustomerValue;
      qryUpdate.Parameters[3].Value := AFieldIdSuppliesValue;
      qryUpdate.ExecSQL;
    end;
  finally
    FreeAndNil(qryUpdate);
  end;
end;

//procedure TdmShare.UpdateStatusApprove(AUpdateTable: TUpdateTable;
//  const AFieldIdValue: string; AFieldApproveValue: integer);
//var
//  qryUpdate: TADOQuery;
//  TableName, FieldIdName, FieldDate, Prefix: string;
//begin
//  GetTableInfo(AUpdateTable, TableName, FieldIdName, FieldDate, Prefix);
//
//  qryUpdate := TADOQuery.Create(Self);
//  try
//    qryUpdate.Connection := dmGlobal.conGlobal;
//    qryUpdate.Close;
//    qryUpdate.SQL.Clear;
//    qryUpdate.SQL.Add('update ' + TableName );
//    qryUpdate.SQL.Add('set chStatusApprove = :AFieldApproveValue');
//    qryUpdate.SQL.Add('where ' + FieldIdName + ' = :AFieldIdName');
//    qryUpdate.Parameters[0].Value := AFieldApproveValue;
//    qryUpdate.Parameters[1].Value := AFieldIdValue;
//    qryUpdate.ExecSQL;
//
//    qryUpdate.Close;
//    qryUpdate.SQL.Clear;
//    qryUpdate.SQL.Add('select * from ' + TableName );
//    qryUpdate.SQL.Add('where ' + FieldIdName + ' = :AFieldIdName');
//    qryUpdate.Parameters[0].Value := AFieldIdValue;
//    qryUpdate.Open;
//    if not qryUpdate.IsEmpty then
//    begin
//      if qryUpdate.FindField('dtSystemStamp') <> nil then
//      begin
//        qryUpdate.Edit;
//        qryUpdate.FieldByName('dtSystemStamp').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
//        qryUpdate.Post;
//      end;
//    end;
//  finally
//    FreeAndNil(qryUpdate);
//  end;
//end;

function TdmShare.CheckOutstandingPurchaseInvoice(
  AIdPurchaseInvoice: string; AAmountPay: Real): Boolean;
var
  qrySelect: TADOQuery;
begin
  qrySelect := TADOQuery.Create(self);
  try
    with qrySelect do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select dcOutstandingTotalAmount');
      SQL.Add('from tbIMPurchaseInvoiceHd');
      SQL.Add('where vcIdPurchaseInvoice = :IdPurchaseInvoice');
      Parameters[0].Value := AIdPurchaseInvoice;
      Open;
    end;
    Result := AAmountPay <= qrySelect.FieldByName('dcOutstandingTotalAmount').AsFloat;
  finally
    FreeAndNil(qrySelect);
  end;
end;

function TdmShare.CheckOutstandingSalesInvoice(AIdSalesInvoice: string;
  AAmountPay: Real): Boolean;
var
  qrySelect: TADOQuery;
begin
  qrySelect := TADOQuery.Create(self);
  try
    with qrySelect do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select dcOutstandingTotalAmount');
      SQL.Add('from tbIMSalesInvoiceHd');
      SQL.Add('where vcIdSalesInvoice = :IdSalesInvoice');
      Parameters[0].Value := AIdSalesInvoice;
      Open;
    end;
    Result := AAmountPay <= qrySelect.FieldByName('dcOutstandingTotalAmount').AsFloat;
  finally
    FreeAndNil(qrySelect);
  end;
end;

function TdmShare.GetCustomerDownPayment(const AIdCustomer: string): Currency;
var
  qrySelect: TADOQuery;
begin
  qrySelect := TADOQuery.Create(self);
  try
    with qrySelect do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('declare  @IdCustomer varchar(10), @DatePeriod datetime');
      SQL.Add('set @IdCustomer = :IdCustomer');
      SQL.Add('set @DatePeriod = :DatePeriod');
      SQL.Add('select dbo.fnGetCustomerDPOpeningBalance(@IdCustomer, Year(@DatePeriod), Month(@DatePeriod)) as dcDownPayment');
      Parameters[0].Value := AIdCustomer;
      Parameters[1].Value := dmGlobal.SettingGlobal.ServerDateTime;
      Open;
    end;
    Result := qrySelect.FieldByName('dcDownPayment').AsFloat;
  finally
    FreeAndNil(qrySelect);
  end;
end;

function TdmShare.GetSupplierDownPayment(const AIdSupplier: string): Currency;
var
  qrySelect: TADOQuery;
begin
  qrySelect := TADOQuery.Create(self);
  try
    with qrySelect do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('declare  @IdSupplier varchar(10), @DatePeriod datetime');
      SQL.Add('set @IdSupplier = :IdSupplier');
      SQL.Add('set @DatePeriod = :DatePeriod');
      SQL.Add('select dbo.fnGetSupplierDPOpeningBalance(@IdSupplier, Year(@DatePeriod), Month(@DatePeriod)) as dcDownPayment');
      Parameters[0].Value := AIdSupplier;
      Parameters[1].Value := dmGlobal.SettingGlobal.ServerDateTime;
      Open;
    end;
    Result := qrySelect.FieldByName('dcDownPayment').AsFloat;
  finally
    FreeAndNil(qrySelect);
  end;
end;

function TdmShare.CompareMTWithWHValid(const AIdMutation,
  AIdWarehouseSource: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                                                   ');
      SQL.Add('from tbIMMutationDt a                                                   ');
      SQL.Add('left join tbIMStockOnHandHd b on                                        ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and b.vcIdWarehouse = :vcIdWarehouse)');
      SQL.Add('where a.vcIdMutation = :IdMutation                                      ');
      SQL.Add('and                                                                     ');
      SQL.Add('  (IsNull(b.vcIdSupplies, '''') = '''' or                               ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(b.inEndQty, 0))                           ');
      Parameters[0].Value := AIdWarehouseSource;
      Parameters[1].Value := AIdMutation;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.CompareOTWithWHValid(const AIdOtherTransaction,
  AIdWarehouseSource: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                                                   ');
      SQL.Add('from tbIMOtherTransactionDt a                                           ');
      SQL.Add('left join tbIMStockOnHandHd b on                                        ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and b.vcIdWarehouse = :vcIdWarehouse)');
      SQL.Add('where a.vcIdOtherTransaction = :IdOtherTransaction                      ');
      SQL.Add('and                                                                     ');
      SQL.Add('  (IsNull(b.vcIdSupplies, '''') = '''' or                               ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(b.inEndQty, 0))                           ');
      Parameters[0].Value := AIdWarehouseSource;
      Parameters[1].Value := AIdOtherTransaction;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.ComparePRWithPIValid(const AIdPurchaseReturn: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                          ');
      SQL.Add('from tbIMPurchaseReturnDt a                    ');
      SQL.Add('left join tbIMPurchaseReturnHd b on            ');
      SQL.Add('  (a.vcIdPurchaseReturn = b.vcIdPurchaseReturn)');
      SQL.Add('left join tbIMPurchaseInvoiceDt c on           ');
      SQL.Add('  (a.vcIdSupplies = c.vcIdSupplies and         ');
      SQL.Add('  b.vcIdPurchaseInvoice = c.vcIdPurchaseInvoice)');
      SQL.Add('where a.vcIdPurchaseReturn = :IdPurchaseReturn ');
      SQL.Add('and                                            ');
      SQL.Add('  (IsNull(c.vcIdSupplies, '''') = '''' or      ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(c.inCurrentQty, 0))');
      Parameters[0].Value := AIdPurchaseReturn;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.ComparePRWithWHValid(const AIdPurchaseReturn,
  AIdWarehouse: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                          ');
      SQL.Add('from tbIMPurchaseReturnDt a                    ');
      SQL.Add('left join tbIMStockOnHandHd b on               ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and         ');
      SQL.Add('  b.vcIdWarehouse = :vcIdWarehouse)            ');
      SQL.Add('where a.vcIdPurchaseReturn = :IdPurchaseReturn ');
      SQL.Add('and                                            ');
      SQL.Add('  (IsNull(b.vcIdSupplies, '''') = '''' or      ');
      SQL.Add('  IsNull(a.inQty, 0) > IsNull(b.inEndQty, 0))  ');
      Parameters[0].Value := AIdWarehouse;
      Parameters[1].Value := AIdPurchaseReturn;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TdmShare.CompareRRWithPOValid(const AIdReceivingRecord,
  AIdPurchaseOrder: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(self);
  try
    with qryTemp do
    begin
      Connection := dmGlobal.conGlobal;
      Close;
      SQL.Clear;
      SQL.Add('select a.vcIdSupplies                                 ');
      SQL.Add('from tbIMReceivingRecordDt a                          ');
      SQL.Add('left join tbIMPurchaseOrderDt b on                    ');
      SQL.Add('  (a.vcIdSupplies = b.vcIdSupplies and                ');
      SQL.Add('  b.vcIdPurchaseOrder = :IdPurchaseOrder)             ');
      SQL.Add('where a.vcIdReceivingRecord = :IdReceivingRecord      ');
      SQL.Add('and                                                   ');
      SQL.Add(' (IsNull(b.vcIdSupplies, '''') = '''' or              ');
      SQL.Add(' IsNull(a.inQty, 0) > IsNull(b.inOutstandingQty, 0))  ');
      Parameters[0].Value := AIdPurchaseOrder;
      Parameters[1].Value := AIdReceivingRecord;
      Open;
    end;
    if qryTemp.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

end.

