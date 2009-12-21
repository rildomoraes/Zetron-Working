unit frmPOManufacture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox,
  cxDBExtLookupComboBox, cxGrid, ADODB, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxMemo, cxDBEdit, cxPC, cxMRUEdit, cxCurrencyEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, Grids, DBGrids,
  cxButtonEdit;

type
  TfmPOManufacture = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    lblVendor: TLabel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbePurchaseOrderIdExt: TcxDBTextEdit;
    lblTermin: TLabel;
    lblPeriodeKirim: TLabel;
    lblSampaiDengan: TLabel;
    dbeStartDate: TcxDBDateEdit;
    dbeEndDate: TcxDBDateEdit;
    lblNoOrderExt: TLabel;
    qryPurchaseOrderHd: TADODataSet;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn;
    cgvPrevDisplayPurchaseOrderDate: TcxGridDBColumn;
    cgvPrevDisplayVendorId: TcxGridDBColumn;
    cgvPrevDisplayPurchaseOrderExternal: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    dsPurchaseOrderDt: TDataSource;
    dsPrevVendorContact: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevVendorContact: TcxGridDBTableView;
    cgvPrevVendorContactVendorContactId: TcxGridDBColumn;
    cgvPrevVendorContactVendorId: TcxGridDBColumn;
    cgvPrevVendorContactVendorContactName: TcxGridDBColumn;
    cgvPrevVendorContactPhoneNo: TcxGridDBColumn;
    dbePaymentTerm: TcxDBMRUEdit;
    qryPrevVendorContact: TADOQuery;
    qryGetItemPrice: TADOQuery;
    qryPurchaseOrderDt: TADOQuery;
    pcBody: TcxPageControl;
    tsInfo: TcxTabSheet;
    lblCurrency: TLabel;
    lblKurs: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    tsAddress: TcxTabSheet;
    lblAddress: TLabel;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgvDependenciesTransaction: TcxGridDBColumn;
    cgvDependenciesCode: TcxGridDBColumn;
    cgvDependenciesDate: TcxGridDBColumn;
    cgDependenciesLevel1: TcxGridLevel;
    pnlLeft: TPanel;
    dblcVendorId: TcxDBExtLookupComboBox;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBExtLookupComboBox;
    dbePurchaseOrderCode: TcxDBButtonEdit;
    lblOutlet: TLabel;
    dblcOutletId: TcxDBExtLookupComboBox;
    lblProject: TLabel;
    chkFlagClose: TcxDBCheckBox;
    dblcProject: TcxDBExtLookupComboBox;
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsPurchaseOrderDtDataChange(Sender: TObject; Field: TField);
    procedure dbeKursExit(Sender: TObject);
    procedure dblcCurrencyIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderDtNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoingCalculate: boolean;
    FNewDetail: boolean;
  public
    { Public declarations }
    {Procedure ExecuteForm, Parameters :
       FParamArrayValues[0] = [0=All Item, 1=Penolong, 2=Saw Timber, 3=Log]
       FParamArrayValues[1] = [0=All, 1=Non Pajak, 2=Pajak]}
  end;

var
  fmPOManufacture: TfmPOManufacture;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPOManufacture.dbeKursExit(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
    if dsDefault.Dataset.FieldByName('CurrencyId').AsString = 'IDR' then
      dsDefault.Dataset.FieldByName('Kurs').AsVariant := 1;
end;

procedure TfmPOManufacture.dblcCurrencyIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
    if dblcCurrencyId.EditValue = 'IDR' then
      dsDefault.Dataset.FieldByName('Kurs').AsVariant := 1;
end;

procedure TfmPOManufacture.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevVendorContact.Close;

  if dblcVendorId.EditValue <> null then
  begin
    qryPrevVendorContact.Parameters[0].Value := dblcVendorId.EditValue;
    OpenIfClose(qryPrevVendorContact);
  end;
end;

procedure TfmPOManufacture.dsPurchaseOrderDtDataChange(Sender: TObject;
  Field: TField);
var
  QtySat: real;
  TotalAmount: real;
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryPurchaseOrderDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'ItemId') = 0) or
      (CompareText(Field.FieldName, 'StatusDimensiPrice') = 0) or
      (CompareText(Field.FieldName, 'PricePrint') = 0 ) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'ItemTax') = 0) then
    begin
      // Item POdt sudah dimasukan
      if (not qryPurchaseOrderDt.FieldByName('ItemId').IsNull) and (not FDoingCalculate) then
      begin
        // Mark doing calculate
        FDoingCalculate := True;

        qryGetItemPrice.Close;
        qryGetItemPrice.Parameters[0].Value := qryPurchaseOrderHd.FieldByName('VendorId').AsInteger;
        qryGetItemPrice.Parameters[1].Value := qryPurchaseOrderDt.FieldByName('ItemId').AsString;
        OpenIfClose(qryGetItemPrice);

        if (CompareText(Field.FieldName, 'ItemId') = 0) or (FNewDetail) then
        begin
          qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsInteger :=
            qryGetItemPrice.FieldByName('StatusPurchaseDimensi').AsInteger;
          FNewDetail := False;
        end;

        // Calculating
        if qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsString = '1' then
          QtySat := qryGetItemPrice.FieldByName('M2').AsFloat
        else if qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsString = '2' then
          QtySat := qryGetItemPrice.FieldByName('M3').AsFloat
        else if qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsString = '3' then
          QtySat := qryGetItemPrice.FieldByName('Berat').AsFloat
        else
          QtySat := 1;

        qryPurchaseOrderDt.FieldByName('QtyPrint').AsFloat := QtySat;

        // Get Default Price (di tampilan form), jika PricePrint=0 or ItemId Berubah
        if (qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency = 0) or
          (CompareText(Field.FieldName, 'ItemId') = 0) then
        begin
          if qryGetItemPrice.FieldByName('StatusPurchasePricing').AsString = '0' then
          begin
            // Price List
            if (not qryGetItemPrice.FieldByName('Price1').IsNull) and (QtySat <> 0) then
              qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency :=
                qryGetItemPrice.FieldByName('Price1').AsCurrency / QtySat
            else
              qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency := 0;
          end
          else
          begin
            // Price per Supplier
            if not (qryGetItemPrice.FieldByName('Price').IsNull) and (QtySat <> 0) then
              qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency :=
                qryGetItemPrice.FieldByName('Price').AsCurrency / QtySat
            else
              qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency := 0;
          end;
        end;

        // Harga Satuan Terkecil
        qryPurchaseOrderDt.FieldByName('Price').AsCurrency :=
          QtySat * qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency;

        TotalAmount := (qryPurchaseOrderDt.FieldByName('Qty').AsFloat *
            qryPurchaseOrderDt.FieldByName('Price').AsCurrency);

        if qryPurchaseOrderDt.FieldByName('DiscItem').AsFloat >= 0 then
          qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency :=
            TotalAmount * qryPurchaseOrderDt.FieldByName('DiscItem').AsFloat / 100;

        if qryPurchaseOrderDt.FieldByName('DiscItem2').AsFloat >= 0 then
          qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsCurrency :=
            (TotalAmount - qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency) *
            qryPurchaseOrderDt.FieldByName('DiscItem2').AsFloat / 100;

        if qryPurchaseOrderDt.FieldByName('ItemTax').AsFloat >= 0 then
          qryPurchaseOrderDt.FieldByName('ItemTaxPrice').AsCurrency :=
            (TotalAmount -
            qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency -
            qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsCurrency -
            qryPurchaseOrderDt.FieldByName('VoucherItem').AsCurrency) *
            qryPurchaseOrderDt.FieldByName('ItemTax').AsFloat / 100;

        qryPurchaseOrderDt.FieldByName('Amount').AsCurrency :=
          TotalAmount -
          qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency -
          qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsCurrency -
          qryPurchaseOrderDt.FieldByName('VoucherItem').AsCurrency +
          qryPurchaseOrderDt.FieldByName('ItemTaxPrice').AsCurrency;

        // Mark not doing calculate
        FDoingCalculate := False;
      end;
    end;
  end;
end;

procedure TfmPOManufacture.InitForm;
begin
  inherited;

  FDoingCalculate := False;

  SetReadOnly(chkFlagClose);

  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmInventory.qryVendor, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster);
  OpenIfClose(dmInventory.qryOutlet);
  OpenIfClose(dmInventory.qryProject);
end;

procedure TfmPOManufacture.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseOrderHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseOrderHd.Close;
  qryPurchaseOrderHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryPurchaseOrderHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  case FParamArrayValues[0] of
    0 : qryPurchaseOrderHd.Parameters[2].Value := '%'; // PO All
    1 : qryPurchaseOrderHd.Parameters[2].Value := '0'; // PO Bahan Penolong Only
    2 : qryPurchaseOrderHd.Parameters[2].Value := '1'; // PO Saw Timber Only
    3 : qryPurchaseOrderHd.Parameters[2].Value := '2'; // PO Log Only
  end;
  case FParamArrayValues[1] of
    0 : qryPurchaseOrderHd.Parameters[3].Value := '%'; // All
    1 : qryPurchaseOrderHd.Parameters[3].Value := '0'; // Non Pajak Only
    2 : qryPurchaseOrderHd.Parameters[3].Value := '1'; // Pajak Only
  end;
  OpenIfClose(qryPurchaseOrderHd, True, True);
end;

procedure TfmPOManufacture.qryPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmPOManufacture.qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPOManufacture.qryPurchaseOrderDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  FNewDetail := True;
  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  Dataset.FieldByName('Qty').AsInteger := 0;
  Dataset.FieldByName('QtyPrint').AsInteger := 0;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('PricePrint').AsCurrency := 0;
  Dataset.FieldByName('DiscItem').AsInteger := 0;
  Dataset.FieldByName('DiscItemPrice').AsInteger := 0;
  Dataset.FieldByName('DiscItem2').AsInteger := 0;
  Dataset.FieldByName('DiscItemPrice2').AsInteger := 0;
  Dataset.FieldByName('VoucherItem').AsInteger := 0;
  Dataset.FieldByName('ItemTax').AsInteger := 0;
  Dataset.FieldByName('ItemTaxPrice').AsInteger := 0;
  DataSet.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('StatusDimensiPrice').AsString := '0';
end;

procedure TfmPOManufacture.qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('CurrencyId').AsString = 'IDR' then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPOManufacture.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('PurchaseOrderDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('TglKirimAwal').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('TglKirimAkhir').AsDateTime := EndOfTheMonth(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('CurrencyId').AsString := 'IDR';
  Dataset.FieldByName('Kurs').AsInteger := 1;
  Dataset.FieldByName('StatusLogCalculate').AsInteger := 0;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := FStatusApprove;

  case FParamArrayValues[0] of
    0 : DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 0; // All = default sebagai PO Bahan Penolong
    1 : DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 0; // Item Bahan Penolong
    2 : DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 1; // Item Saw Timber
    3 : DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 2; // Item Log
  end;

  case FParamArrayValues[1] of
    0 : DataSet.FieldByName('FlagAT').asInteger := 0; // All = default sebagai Non Pajak
    1 : DataSet.FieldByName('FlagAT').asInteger := 0; // Non Pajak
    2 : DataSet.FieldByName('FlagAT').asInteger := 1; // Pajak
  end;
end;

procedure TfmPOManufacture.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevVendorContact);
  LockRefresh(qryPurchaseOrderHd, True);
  LockRefresh(qryPurchaseOrderDt);
end;

end.
