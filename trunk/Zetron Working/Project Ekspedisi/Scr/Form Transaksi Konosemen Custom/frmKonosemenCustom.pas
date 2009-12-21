unit frmKonosemenCustom;

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
  TfmKonosemenCustom = class(TFormUniTransactionEx)
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
    qryKonosemenCustomDt: TADOQuery;
    dsKonosemenCustomDt: TDataSource;
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
    qryKonosemenDtPrice: TADOQuery;
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
    Splitter1: TSplitter;
    cgKonosemenCustomDt: TcxGrid;
    cgvKonosemenCustomDt: TcxGridDBTableView;
    cgKonosemenCustomDtLevel1: TcxGridLevel;
    cgvKonosemenCustomDtKonosemenCode: TcxGridDBColumn;
    cgvKonosemenCustomDtKonosemenNo: TcxGridDBColumn;
    cgvKonosemenCustomDtTarifTypeId: TcxGridDBColumn;
    cgvKonosemenCustomDtSuppliesCode: TcxGridDBColumn;
    cgvKonosemenCustomDtSuppliesName: TcxGridDBColumn;
    cgvKonosemenCustomDtP: TcxGridDBColumn;
    cgvKonosemenCustomDtL: TcxGridDBColumn;
    cgvKonosemenCustomDtT: TcxGridDBColumn;
    cgvKonosemenCustomDtBerat: TcxGridDBColumn;
    cgvKonosemenCustomDtUnitMeasure: TcxGridDBColumn;
    cgvKonosemenCustomDtTotalM3: TcxGridDBColumn;
    cgvKonosemenCustomDtTotalBerat: TcxGridDBColumn;
    cgvKonosemenCustomDtQty: TcxGridDBColumn;
    cgvKonosemenCustomDtPrice: TcxGridDBColumn;
    cgvKonosemenCustomDtPriceFra: TcxGridDBColumn;
    cgvKonosemenCustomDtPricePort: TcxGridDBColumn;
    cgvKonosemenCustomDtPricePacking: TcxGridDBColumn;
    cgvKonosemenCustomDtTotalAmount: TcxGridDBColumn;
    cgvKonosemenCustomDtModeCY: TcxGridDBColumn;
    procedure qryKonosemenBeforeInsert(DataSet: TDataSet);
    procedure qryKonosemenBeforePost(DataSet: TDataSet);
    procedure qryKonosemenNewRecord(DataSet: TDataSet);
    procedure qryKonosemenCustomDtBeforeInsert(DataSet: TDataSet);
    procedure dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryKonosemenCustomDtNewRecord(DataSet: TDataSet);
    procedure dsKonosemenCustomDtDataChange(Sender: TObject; Field: TField);
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
  fmKonosemenCustom: TfmKonosemenCustom;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi,
     frmDisplaySuppliesReceive
;

{ TfmKonosemen }

procedure TfmKonosemenCustom.dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
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

procedure TfmKonosemenCustom.dsKonosemenCustomDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'T') = 0) or (CompareText(Field.FieldName, 'L') = 0)
     or (CompareText(Field.FieldName, 'P') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if qryKonosemenCustomDt.fieldbyname('Berat').asfloat=0 then
       qryKonosemenCustomDt.FieldByName('totalm3').asfloat :=qryKonosemenCustomDt.FieldByName('T').asfloat*
       qryKonosemenCustomDt.FieldByName('L').asfloat*qryKonosemenCustomDt.FieldByName('P').asfloat/1000000*
       qryKonosemenCustomDt.FieldByName('Qty').asfloat
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
       showmessage('Data yang dimasukkan harus salah satu TLP atau Berat !!!');
       qryKonosemenCustomDt.Cancel;
      end;
    end;
  end;
  if (CompareText(Field.FieldName, 'Berat') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if (qryKonosemenCustomDt.fieldbyname('T').asfloat=0) and (qryKonosemenCustomDt.fieldbyname('L').asfloat=0) and (qryKonosemenCustomDt.fieldbyname('P').asfloat=0) then
       qryKonosemenCustomDt.FieldByName('totalBerat').asfloat :=qryKonosemenCustomDt.FieldByName('Berat').asfloat*
       qryKonosemenCustomDt.FieldByName('Qty').asfloat
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
        showmessage('Data yang dimasukkan harus salah satu TLP atau Berat !!!');
        qryKonosemenCustomDt.Cancel;
      end;
    end;
  end;

end;

procedure TfmKonosemenCustom.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'KonosemenCode';
  MonthYearValueChange(nil);

  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(qryKonosemen);
  OpenIfClose(qryKonosemenCustomDt);
  OpenIfClose(dmEkspedisi.qryDaftarMuatKapal);
  OpenIfClose(qryPrevTrayek);
  OpenIfClose(qryPrevTarifKonosemen);
  OpenIfClose(dmEkspedisi.qryMerek);

  TcxCalcEditProperties(cgvKonosemenCustomDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenCustomDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenCustomDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenCustomDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKonosemenCustomDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvKonosemenCustomDtTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvKonosemenCustomDtTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[5].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[6].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKonosemenCustomDt.DataController.Summary.FooterSummaryItems[7].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

end;

procedure TfmKonosemenCustom.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryKonosemen.Close;
  qryKonosemen.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryKonosemen.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryKonosemen,True, True);
end;

procedure TfmKonosemenCustom.qryKonosemenBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmKonosemenCustom.qryKonosemenBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  DataSet.FieldByName('CustomKonosemen').AsString := '1';
end;

procedure TfmKonosemenCustom.qryKonosemenCustomDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmKonosemenCustom.qryKonosemenCustomDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('KonosemenNo').AsInteger := DataSet.RecordCount+1;
  DataSet.FieldByName('P').AsInteger := 0;
  DataSet.FieldByName('L').AsInteger := 0;
  DataSet.FieldByName('T').AsInteger := 0;
  DataSet.FieldByName('Berat').AsInteger := 0;
  DataSet.FieldByName('Qty').AsInteger := 0;
  DataSet.FieldByName('TotalM3').AsInteger := 0;
  DataSet.FieldByName('TotalBerat').AsInteger := 0;
  DataSet.FieldByName('Price').AsInteger := 0;
  DataSet.FieldByName('PriceFra').AsInteger := 0;
  DataSet.FieldByName('PricePacking').AsInteger := 0;
  DataSet.FieldByName('PricePort').AsInteger := 0;
  DataSet.FieldByName('TotalAmount').AsInteger := 0;
end;

procedure TfmKonosemenCustom.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(qryKonosemen);
  LockRefresh(dmEkspedisi.qryDaftarMuatKapal);
  LockRefresh(qryPrevTrayek);
  LockRefresh(qryPrevTarifKonosemen);
  LockRefresh(dmEkspedisi.qryMerek);
end;

procedure TfmKonosemenCustom.qryKonosemenNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('KonosemenDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

end.
