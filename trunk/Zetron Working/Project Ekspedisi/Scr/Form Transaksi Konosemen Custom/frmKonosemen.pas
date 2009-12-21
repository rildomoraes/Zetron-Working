unit frmKonosemen;

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
  cxCalendar, ADODB, cxGridLevel, DateUtils, cxMemo, cxPC, cxLabel, cxDBLabel,
  cxCalc;

type
  TfmKonosemen = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    qryKonosemen: TADOQuery;
    Label1: TLabel;
    Label3: TLabel;
    dbeKonosemenCode: TcxDBTextEdit;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvStorageLocation: TcxGridDBTableView;
    cgvStorageLocationStorageLocationId: TcxGridDBColumn;
    cgvStorageLocationStorageLocationCode: TcxGridDBColumn;
    cgvStorageLocationStorageLocationName: TcxGridDBColumn;
    cgvStorageLocationFlagShipStorage: TcxGridDBColumn;
    pnlDetail1: TPanel;
    qryKonosemenDt: TADOQuery;
    dsKonosemenDt: TDataSource;
    pnlLeft: TPanel;
    dbeKonosemenDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeDaftarMuatKapalCode: TcxDBExtLookupComboBox;
    cgvDaftarMuatKapal: TcxGridDBTableView;
    Label6: TLabel;
    cgvCustomerForwarding: TcxGridDBTableView;
    cgvCustomerForwardingCustomerId: TcxGridDBColumn;
    cgvCustomerForwardingCustomerCode: TcxGridDBColumn;
    cgvCustomerForwardingCustomerName: TcxGridDBColumn;
    cgvCustomerForwardingTarifKonosemen: TcxGridDBColumn;
    qryPrevTrayek: TADOQuery;
    dsPrevTrayek: TDataSource;
    cgvKonosemenDt: TcxGridDBTableView;
    cgKonosemenDtLevel1: TcxGridLevel;
    cgKonosemenDt: TcxGrid;
    cgvDaftarMuatKapalTrayekCode: TcxGridDBColumn;
    cgvDaftarMuatKapalShipName: TcxGridDBColumn;
    cgvDaftarMuatKapalShipCrewName: TcxGridDBColumn;
    cgvDaftarMuatKapalGrossTon: TcxGridDBColumn;
    Label7: TLabel;
    cgvDaftarMuatKapalTrayekDateGo: TcxGridDBColumn;
    Label8: TLabel;
    Label9: TLabel;
    lblShipName: TcxDBLabel;
    lblShipCrewName: TcxDBLabel;
    lblGrossTon: TcxDBLabel;
    dbeMerekId: TcxDBExtLookupComboBox;
    Label10: TLabel;
    cgvPrevMerek: TcxGridDBTableView;
    cgvPrevMerekMerekId: TcxGridDBColumn;
    cgvPrevMerekMerekCode: TcxGridDBColumn;
    cgvPrevMerekMerekName: TcxGridDBColumn;
    cgvPrevMerekRouteId: TcxGridDBColumn;
    cgvPrevMerekCustomerId: TcxGridDBColumn;
    dbeTarifKonosemen: TcxDBTextEdit;
    qryPrevTarifKonosemen: TADOQuery;
    cgvKonosemenDtKonosemenCode: TcxGridDBColumn;
    cgvKonosemenDtKonosemenNo: TcxGridDBColumn;
    cgvKonosemenDtItemReceiveCode: TcxGridDBColumn;
    cgvKonosemenDtNo: TcxGridDBColumn;
    cgvKonosemenDtPrice: TcxGridDBColumn;
    cgvKonosemenDtPriceFra: TcxGridDBColumn;
    cgvKonosemenDtModeCY: TcxGridDBColumn;
    cgvKonosemenDtQty: TcxGridDBColumn;
    qryKonosemenDtPrice: TADOQuery;
    cgvKonosemenDtTotalAmount: TcxGridDBColumn;
    cgvPrevPackingTransactionHd: TcxGridDBTableView;
    cgvPrevPackingTransactionHdPackingCode: TcxGridDBColumn;
    cgvPrevPackingTransactionHdPackingName: TcxGridDBColumn;
    cgvPrevPackingTransactionHdPackingTransactionCode: TcxGridDBColumn;
    cgvPrevPackingTransactionHdPackingTransactionDate: TcxGridDBColumn;
    cgvPrevPackingTransactionHdPackingAlias: TcxGridDBColumn;
    cgvPrevPackingTransactionHdPrice: TcxGridDBColumn;
    cgvPrevPackingTransactionHdP: TcxGridDBColumn;
    cgvPrevPackingTransactionHdL: TcxGridDBColumn;
    cgvPrevPackingTransactionHdT: TcxGridDBColumn;
    pcBody: TcxPageControl;
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
    cgvKonosemenDtNoPacking: TcxGridDBColumn;
    cgvKonosemenDtPricePort: TcxGridDBColumn;
    Splitter1: TSplitter;
    cgvKonosemenDtSuppliesCode: TcxGridDBColumn;
    cgvKonosemenDtSuppliesName: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure qryKonosemenBeforeInsert(DataSet: TDataSet);
    procedure qryKonosemenBeforePost(DataSet: TDataSet);
    procedure qryKonosemenNewRecord(DataSet: TDataSet);
    procedure qryKonosemenDtBeforeInsert(DataSet: TDataSet);
    procedure dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsKonosemenDtDataChange(Sender: TObject; Field: TField);
    procedure qryKonosemenDtNewRecord(DataSet: TDataSet);
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
  fmKonosemen: TfmKonosemen;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi,
     frmDisplaySuppliesReceive
;

{ TfmKonosemen }

procedure TfmKonosemen.Button1Click(Sender: TObject);
var
  No: integer;
  S, SupCode, SupName: string;
begin
  inherited;

  if TfmDisplaySuppliesReceive.ExecuteForm(S, No, SupCode, SupName) = mrOk then
  begin
    qryKonosemenDt.Insert;
    qryKonosemenDt.FieldByName('ItemReceiveCode').AsString := S;
    qryKonosemenDt.FieldByName('No').AsInteger := No;
  end;
end;

procedure TfmKonosemen.dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if qryKonosemen.FieldByName('TarifKonosemen').IsNull then
  begin
     qryPrevTarifKonosemen.Close;
     qryPrevTarifKonosemen.Parameters[0].Value:= VarToStr(dbeMerekId.EditValue);
     qryPrevTarifKonosemen.Parameters[1].Value:= qryPrevTrayek.FieldByName('RouteId').AsString;
     qryPrevTarifKonosemen.Open;
     dbeTarifKonosemen.EditValue := qryPrevTarifKonosemen.Fields[0].AsVariant;
  end;
end;

procedure TfmKonosemen.dsKonosemenDtDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryKonosemenDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'ItemReceiveCode') = 0) or (CompareText(Field.FieldName, 'No') = 0) or (CompareText(Field.FieldName, 'Qty')=0) then
     begin
        if (not qryKonosemenDt.FieldByName('ItemReceiveCode').IsNull) and (not qryKonosemenDt.FieldByName('No').IsNull) and (not qryKonosemenDt.FieldByName('Qty').IsNull) then
        begin
           // isi tarif & tarif fra
           qryKonosemenDtPrice.Close;
           qryKonosemenDtPrice.Parameters[0].Value := qryKonosemenDt.FieldByName('ItemReceiveCode').AsString;
           qryKonosemenDtPrice.Parameters[1].Value := qryKonosemenDt.FieldByName('No').AsString;
           qryKonosemenDtPrice.Open;
           qryKonosemenDt.FieldByName('Price').AsFloat := qryKonosemenDtPrice.FieldByName('tarif').AsFloat;
           qryKonosemenDt.FieldByName('PriceFra').AsFloat := qryKonosemenDtPrice.FieldByName('tariffra').AsFloat;
           //hitung total amount
           qryKonosemenDt.FieldByName('TotalAmount').AsFloat := (qryKonosemenDt.FieldByName('Price').AsFloat + qryKonosemenDt.FieldByName('PriceFra').AsFloat) * qryKonosemenDt.FieldByName('Qty').AsInteger;
        end;
     end;
  end;
end;

procedure TfmKonosemen.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'KonosemenCode';
  MonthYearValueChange(nil);

  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(qryKonosemen);
  OpenIfClose(qryKonosemenDt);
  OpenIfClose(dmEkspedisi.qryCustomerForwarding);
  OpenIfClose(dmEkspedisi.qryDaftarMuatKapal);
  OpenIfClose(qryPrevTrayek);
  OpenIfClose(qryPrevTarifKonosemen);
  OpenIfClose(dmEkspedisi.qryMerek);

  TcxCalcEditProperties(cgvKonosemenDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtPriceFra.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtPricePort.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKonosemenDtTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;


  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatQty;


end;

procedure TfmKonosemen.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryKonosemen.Close;
  qryKonosemen.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryKonosemen.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryKonosemen,True, True);
end;

procedure TfmKonosemen.qryKonosemenBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmKonosemen.qryKonosemenBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmKonosemen.qryKonosemenDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmKonosemen.qryKonosemenDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('KonosemenNo').AsInteger := DataSet.RecordCount+1;
end;

procedure TfmKonosemen.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(qryKonosemen);
  LockRefresh(dmEkspedisi.qryCustomerForwarding);
  LockRefresh(dmEkspedisi.qryDaftarMuatKapal);
  LockRefresh(qryPrevTrayek);
  LockRefresh(qryPrevTarifKonosemen);
  LockRefresh(dmEkspedisi.qryMerek);
end;

procedure TfmKonosemen.qryKonosemenNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('KonosemenDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

end.
