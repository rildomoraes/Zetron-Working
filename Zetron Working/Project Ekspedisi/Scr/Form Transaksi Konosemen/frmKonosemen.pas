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
  cxCalc, cxButtonEdit, untIvSearchBoxADO, cxCurrencyEdit, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmKonosemen = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    qryKonosemen: TADOQuery;
    Label1: TLabel;
    Label3: TLabel;
    cxGridViewRepository1: TcxGridViewRepository;
    qryKonosemenDt: TADOQuery;
    dsKonosemenDt: TDataSource;
    pnlLeft: TPanel;
    dbeKonosemenDate: TcxDBDateEdit;
    Label2: TLabel;
    cgvDaftarMuatKapal: TcxGridDBTableView;
    Label6: TLabel;
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
    cgDependenciesLevel1: TcxGridLevel;
    dbeKonosemenCode: TcxDBButtonEdit;
    isbSuppliesReceive: TIvSearchBoxADO;
    cgvPrevTarifType: TcxGridDBTableView;
    cgvPrevTarifTypeTarifTypeId: TcxGridDBColumn;
    cgvPrevTarifTypeTarifTypeCode: TcxGridDBColumn;
    cgvPrevTarifTypeTarifTypeName: TcxGridDBColumn;
    cgvPrevTarifTypeStatusDimensi: TcxGridDBColumn;
    qryGenerateCounter: TADOQuery;
    tsDetail: TcxTabSheet;
    cgKonosemenDt: TcxGrid;
    cgvKonosemenDt: TcxGridDBTableView;
    cgvKonosemenDtKonosemenCode: TcxGridDBColumn;
    cgvKonosemenDtKonosemenNo: TcxGridDBColumn;
    cgvKonosemenDtItemReceiveCode: TcxGridDBColumn;
    cgvKonosemenDtNo: TcxGridDBColumn;
    cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn;
    cgvKonosemenDtSuppliesCode: TcxGridDBColumn;
    cgvKonosemenDtSuppliesName: TcxGridDBColumn;
    cgvKonosemenDtQty: TcxGridDBColumn;
    cgvKonosemenDtP: TcxGridDBColumn;
    cgvKonosemenDtL: TcxGridDBColumn;
    cgvKonosemenDtT: TcxGridDBColumn;
    cgvKonosemenDtBerat: TcxGridDBColumn;
    cgvKonosemenDtUnitMeasure: TcxGridDBColumn;
    cgvKonosemenDtTotalM3: TcxGridDBColumn;
    cgvKonosemenDtTotalBerat: TcxGridDBColumn;
    cgvKonosemenDtTarifTypeId: TcxGridDBColumn;
    cgvKonosemenDtPrice: TcxGridDBColumn;
    cgvKonosemenDtPriceFra: TcxGridDBColumn;
    cgvKonosemenDtPricePort: TcxGridDBColumn;
    cgvKonosemenDtPricePacking: TcxGridDBColumn;
    cgvKonosemenDtTotalAmount: TcxGridDBColumn;
    cgvKonosemenDtModeCY: TcxGridDBColumn;
    cgKonosemenDtLevel1: TcxGridLevel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cgvPrevDisplayKonosemenCode: TcxGridDBColumn;
    cgvPrevDisplayMerekId: TcxGridDBColumn;
    cgvPrevDisplayKonosemenDate: TcxGridDBColumn;
    cgvPrevDisplayTarifKonosemen: TcxGridDBColumn;
    cgvPrevDisplayStatementMemo: TcxGridDBColumn;
    cgvPrevDisplayInternalMemo: TcxGridDBColumn;
    cgvPrevDisplayEmployeeId: TcxGridDBColumn;
    cgvPrevDisplayCounterPrint: TcxGridDBColumn;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    cgvPrevDisplayDaftarMuatKapalRouteCode: TcxGridDBColumn;
    pnlSummary: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblTotalAmount: TLabel;
    cgvKonosemenDtTotM3Ton: TcxGridDBColumn;
    dbeCollie: TcxCurrencyEdit;
    dbeM3: TcxCurrencyEdit;
    dbeTon: TcxCurrencyEdit;
    dbeM3Ton: TcxCurrencyEdit;
    dbeOPP: TcxCurrencyEdit;
    dbeFreight: TcxCurrencyEdit;
    dbeOPT: TcxCurrencyEdit;
    cgvKonosemenDtTotalPacking: TcxGridDBColumn;
    dbePacking: TcxCurrencyEdit;
    qryLogKonosemen: TADOQuery;
    dsLogKonosemen: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    dbeDaftarMuatKapalRouteCode: TcxDBTextEdit;
    procedure Button1Click(Sender: TObject);
    procedure qryKonosemenBeforeInsert(DataSet: TDataSet);
    procedure qryKonosemenBeforePost(DataSet: TDataSet);
    procedure qryKonosemenNewRecord(DataSet: TDataSet);
    procedure qryKonosemenDtBeforeInsert(DataSet: TDataSet);
    procedure dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsKonosemenDtDataChange(Sender: TObject; Field: TField);
    procedure qryKonosemenDtNewRecord(DataSet: TDataSet);
    procedure cgvKonosemenDtPackingTransactionCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cgvKonosemenDtItemReceiveCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbeKonosemenCodePropertiesEditValueChanged(Sender: TObject);
    procedure dbeTarifKonosemenPropertiesEditValueChanged(Sender: TObject);
    procedure qryKonosemenAfterDelete(DataSet: TDataSet);
    procedure qryKonosemenAfterPost(DataSet: TDataSet);
    procedure qryKonosemenBeforeDelete(DataSet: TDataSet);
    procedure qryKonosemenDtAfterDelete(DataSet: TDataSet);
    procedure qryKonosemenDtAfterPost(DataSet: TDataSet);
    procedure qryKonosemenDtBeforeDelete(DataSet: TDataSet);
    procedure qryKonosemenDtBeforePost(DataSet: TDataSet);
    procedure cgvKonosemenDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  private
    { Private declarations }
    hasil,action,key:string;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
    var
     total:real;
  end;

var
  fmKonosemen: TfmKonosemen;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta, untEkspedisi,
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

procedure TfmKonosemen.cgvKonosemenDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if qryKonosemenDt.active=true then
  begin
   if qryKonosemenDt.recordcount>0 then
   begin
    dbeCollie.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[3];
    dbeM3.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[7];
    dbeTon.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[8];
    dbeM3Ton.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[6];
    dbeOPP.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[0];
    dbeFreight.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[1];
    dbeOPT.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[2];
    dbePacking.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[9];
    if (cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) and (dbeTarifKonosemen.editValue<>NULL) then
    begin
     total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50+dbetarifkonosemen.editvalue;
     lblTotalAmount.Caption := format('%m',[total])
    end
    else if(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) then
     begin
     total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50;
     lblTotalAmount.Caption := format('%m',[total])
     end
    else
     lblTotalAmount.Caption := '0';
   end
   else
   begin
    dbeCollie.EditValue := 0;
    dbeM3.EditValue := 0;
    dbeTon.EditValue := 0;
    dbeM3Ton.EditValue := 0;
    dbeOPP.EditValue := 0;
    dbeFreight.EditValue := 0;
    dbeOPT.EditValue := 0;
    dbePacking.EditValue := 0;
    total:=0;
    lblTotalAmount.Caption := format('%m',[total])
   end;
  end;

end;

procedure TfmKonosemen.cgvKonosemenDtItemReceiveCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if isbSuppliesReceive.Execute = mrOk then
   begin

    if qryKonosemenDt.State in [dsInsert] then
      qryKonosemenDt.Insert
    else
     qryKonosemenDt.Edit;

     qryKonosemenDt.FieldByName('ItemReceiveCode').AsString := isbSuppliesReceive.FieldByName('ItemReceiveCode').AsString;
     qryKonosemenDt.FieldByName('No').AsInteger := isbSuppliesReceive.FieldByName('No').AsInteger;
     qryKonosemenDt.FieldByName('SuppliesCode').AsString := isbSuppliesReceive.FieldByName('SuppliesCode').AsString;
     qryKonosemenDt.FieldByName('SuppliesName').AsString := isbSuppliesReceive.FieldByName('SuppliesName').AsString;
     qryKonosemenDt.FieldByName('P').AsInteger := isbSuppliesReceive.FieldByName('P').AsInteger;
     qryKonosemenDt.FieldByName('L').AsInteger := isbSuppliesReceive.FieldByName('L').AsInteger;
     qryKonosemenDt.FieldByName('T').AsInteger := isbSuppliesReceive.FieldByName('T').AsInteger;
     qryKonosemenDt.FieldByName('Berat').AsInteger := isbSuppliesReceive.FieldByName('T').AsInteger;
     qryKonosemenDt.FieldByName('UnitMeasure').AsString := isbSuppliesReceive.FieldByName('UnitMeasure').AsString;
     qryKonosemenDt.FieldByName('TotalM3').AsInteger := isbSuppliesReceive.FieldByName('TotalM3').AsInteger;
     qryKonosemenDt.FieldByName('TotalBerat').AsInteger := isbSuppliesReceive.FieldByName('TotalM3').AsInteger;
     qryKonosemenDt.FieldByName('Qty').AsInteger := isbSuppliesReceive.FieldByName('Qty').AsInteger;
   end;
end;

procedure TfmKonosemen.cgvKonosemenDtPackingTransactionCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  {if isbPackingCode.Execute = mrOk then
   begin
     qryKonosemenDt.Edit;
     qryKonosemenDt.FieldByName('PackingTransactionCode').AsString := isbPackingCode.ResultSet[0];
     qryKonosemenDt.FieldByName('ItemReceiveCode').AsString := '';
     qryKonosemenDt.FieldByName('No').AsString := '';
   end;
   }
end;

procedure TfmKonosemen.dbeKonosemenCodePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  dbeCollie.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[3];
  dbeM3.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[7];
  dbeTon.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[8];
  dbeM3Ton.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[6];
  dbeOPP.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[0];
  dbeFreight.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[1];
  dbeOPT.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[2];
  dbePacking.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[9];
  if (cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) and (dbeTarifKonosemen.editValue<>NULL) then
  begin
   total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50+dbetarifkonosemen.editvalue;
   lblTotalAmount.Caption := format('%m',[total])
  end
  else if(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) then
   begin
   total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50;
   lblTotalAmount.Caption := format('%m',[total])
   end
  else
   lblTotalAmount.Caption := '0';
end;

procedure TfmKonosemen.dbeMerekIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  dbeTarifKonosemen.EditValue := 50000;
 {
  if qryKonosemen.FieldByName('TarifKonosemen').IsNull then
  begin
     qryPrevTarifKonosemen.Close;
     qryPrevTarifKonosemen.Parameters[0].Value:= VarToStr(dbeMerekId.EditValue);
     qryPrevTarifKonosemen.Parameters[1].Value:= qryPrevTrayek.FieldByName('RouteId').AsString;
     qryPrevTarifKonosemen.Open;
     dbeTarifKonosemen.EditValue := qryPrevTarifKonosemen.Fields[0].AsVariant;
  end;
  }
end;

procedure TfmKonosemen.dbeTarifKonosemenPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) and (dbeTarifKonosemen.editValue<>NULL) then
  begin
   total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50+dbetarifkonosemen.editvalue;
   lblTotalAmount.Caption := format('%m',[total])
  end
end;

procedure TfmKonosemen.dsKonosemenDtDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryKonosemenDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'ItemReceiveCode') = 0) or (CompareText(Field.FieldName, 'No') = 0) or (CompareText(Field.FieldName, 'Qty')=0) or (CompareText(Field.FieldName,'TarifTypeId')=0) then
     begin
        if (not qryKonosemenDt.FieldByName('ItemReceiveCode').IsNull) and (not qryKonosemenDt.FieldByName('No').IsNull) and (not qryKonosemenDt.FieldByName('Qty').IsNull) then
        begin
           // isi tarif & tarif fra
           qryKonosemenDtPrice.Close;
           qryKonosemenDtPrice.Parameters[0].Value := qryKonosemenDt.FieldByName('ItemReceiveCode').AsString;
           qryKonosemenDtPrice.Parameters[1].Value := qryKonosemenDt.FieldByName('No').AsString;
           qryKonosemenDtPrice.Parameters[2].Value := qryKonosemenDt.FieldByName('TarifTypeId').AsString;
           qryKonosemenDtPrice.Parameters[3].Value := qryKonosemenDt.FieldByName('RouteId').AsString;
           qryKonosemenDtPrice.Parameters[4].Value := qryKonosemenDt.FieldByName('PackingTransactionCode').AsString;
           qryKonosemenDtPrice.Parameters[5].Value := qryKonosemenDt.FieldByName('TarifTypeId').AsString;
           qryKonosemenDtPrice.Parameters[6].Value := qryKonosemenDt.FieldByName('RouteId').AsString;
           qryKonosemenDtPrice.Open;
           qryKonosemenDt.FieldByName('Price').AsFloat := qryKonosemenDtPrice.FieldByName('tarif').AsFloat* qryKonosemenDt.FieldByName('Qty').AsInteger;
           qryKonosemenDt.FieldByName('PriceFra').AsFloat := qryKonosemenDtPrice.FieldByName('tariffra').AsFloat* qryKonosemenDt.FieldByName('Qty').AsInteger;
           //hitung total amount
           qryKonosemenDt.FieldByName('TotalAmount').AsFloat := (qryKonosemenDt.FieldByName('Price').AsFloat + qryKonosemenDt.FieldByName('PriceFra').AsFloat + qryKonosemenDt.FieldByName('PricePacking').AsFloat + qryKonosemenDt.FieldByName('PricePort').AsFloat);
        end
        else if (not qryKonosemenDt.FieldByName('PackingTransactionCode').IsNull) then
         begin
           // isi tarif & tarif fra
           qryKonosemenDtPrice.Close;
           qryKonosemenDtPrice.Parameters[0].Value := qryKonosemenDt.FieldByName('ItemReceiveCode').AsString;
           qryKonosemenDtPrice.Parameters[1].Value := qryKonosemenDt.FieldByName('No').AsString;
           qryKonosemenDtPrice.Parameters[2].Value := qryKonosemenDt.FieldByName('TarifTypeId').AsString;
           qryKonosemenDtPrice.Parameters[3].Value := qryKonosemenDt.FieldByName('RouteId').AsString;
           qryKonosemenDtPrice.Parameters[4].Value := qryKonosemenDt.FieldByName('PackingTransactionCode').AsString;
           qryKonosemenDtPrice.Parameters[5].Value := qryKonosemenDt.FieldByName('TarifTypeId').AsString;
           qryKonosemenDtPrice.Parameters[6].Value := qryKonosemenDt.FieldByName('RouteId').AsString;
           qryKonosemenDtPrice.Open;
           qryKonosemenDt.FieldByName('Price').AsFloat := qryKonosemenDtPrice.FieldByName('tarif').AsFloat* qryKonosemenDt.FieldByName('Qty').AsInteger;
           qryKonosemenDt.FieldByName('PriceFra').AsFloat := qryKonosemenDtPrice.FieldByName('tariffra').AsFloat* qryKonosemenDt.FieldByName('Qty').AsInteger;
           //hitung total amount
           qryKonosemenDt.FieldByName('TotalAmount').AsFloat := (qryKonosemenDt.FieldByName('Price').AsFloat + qryKonosemenDt.FieldByName('PriceFra').AsFloat + qryKonosemenDt.FieldByName('PricePacking').AsFloat + qryKonosemenDt.FieldByName('PricePort').AsFloat);
         end;

     end;
    if (CompareText(Field.FieldName,'PricePort')=0) or (CompareText(Field.FieldName,'PricePacking')=0) or (CompareText(Field.FieldName,'Qty')=0)  then
     begin
       qryKonosemenDt.FieldByName('TotalAmount').AsFloat := qryKonosemenDt.FieldByName('Price').AsFloat + qryKonosemenDt.FieldByName('PriceFra').AsFloat + qryKonosemenDt.FieldByName('PricePacking').AsFloat + qryKonosemenDt.FieldByName('PricePort').AsFloat;
     end;
    dbeCollie.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[3];
    dbeM3.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[7];
    dbeTon.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[8];
    dbeM3Ton.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[6];
    dbeOPP.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[0];
    dbeFreight.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[1];
    dbeOPT.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[2];
    dbePacking.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[9];
    if (cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) and (dbeTarifKonosemen.editValue<>NULL) then
    begin
     total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50+dbetarifkonosemen.editvalue;
     lblTotalAmount.Caption := format('%m',[total])
    end
    else if(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) then
     begin
     total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50;
     lblTotalAmount.Caption := format('%m',[total])
     end
    else
     lblTotalAmount.Caption := '0';
 end;
end;

procedure TfmKonosemen.InitForm;
var
  PRINT_KONOSEMEN:string;
begin
  inherited;
  SetReadOnly(dbeKonosemenCode, True, COLOR_INACTIVE);
  DefaultPrimaryKeyField := 'KonosemenCode';
  PRINT_KONOSEMEN:='KON%';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_KONOSEMEN);
  MonthYearValueChange(nil);

  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(qryKonosemen);
  OpenIfClose(qryKonosemenDt);
  OpenIfClose(dmEkspedisi.qryDaftarMuatKapal);
  OpenIfClose(qryPrevTrayek);

//  OpenIfClose(qryPrevTarifKonosemen);
  OpenIfClose(dmEkspedisi.qryMerek);
  OpenIfClose(dmEkspedisi.qryTarifType);
  OpenIfClose(qryGenerateCounter);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(qryLogKonosemen);

  TcxCalcEditProperties(cgvKonosemenDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKonosemenDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvKonosemenDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvKonosemenDtTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvKonosemenDtTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvKonosemenDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPriceFra.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPricePort.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtPricePacking.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvKonosemenDtTotM3Ton.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[5].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[6].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[7].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[8].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvKonosemenDt.DataController.Summary.FooterSummaryItems[9].Format := dmGlobal.SettingGlobal.DisplayFormatQty;

  currencystring:='';

  dbeCollie.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[3];
  dbeM3.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[7];
  dbeTon.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[8];
  dbeM3Ton.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[6];
  dbeOPP.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[0];
  dbeFreight.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[1];
  dbeOPT.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[2];
  dbePacking.EditValue := cgvKonosemenDt.DataController.Summary.FooterSummaryValues[9];
  if (cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) and (dbeTarifKonosemen.editValue<>NULL) then
  begin
   total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50+dbetarifkonosemen.editvalue;
   lblTotalAmount.Caption := format('%m',[total])
  end
  else if(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4]<>NULL) then
   begin
   total:=round(strtofloat(cgvKonosemenDt.DataController.Summary.FooterSummaryValues[4])/50)*50;
   lblTotalAmount.Caption := format('%m',[total])
   end
  else
   lblTotalAmount.Caption := '0';
end;

procedure TfmKonosemen.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryKonosemen.Close;
  qryKonosemen.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryKonosemen.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  OpenIfClose(qryKonosemen,True, True);
end;



procedure TfmKonosemen.qryKonosemenAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('Konosemen',hasil,action,key);
  qryLogKonosemen.Close;
  qryLogKonosemen.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogKonosemen.Open;
end;

procedure TfmKonosemen.qryKonosemenAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('Konosemen',hasil,action,key);
  qryLogKonosemen.Close;
  qryLogKonosemen.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogKonosemen.Open;
end;

procedure TfmKonosemen.qryKonosemenBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmKonosemen.qryKonosemenBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmKonosemen.qryKonosemenBeforePost(DataSet: TDataSet);
var tgl:string;
begin
  inherited;


  if DataSet.FieldByName('KonosemenCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='KONOSEMEN';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbeKonosemenDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryGenerateCounter.Open;
    dmEkspedisi.qryspGenerateCounter.Close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='KONOSEMEN';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbeKonosemenDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
    DataSet.FieldByName('KonosemenCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmKonosemen.qryKonosemenDtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('KonosemenDt',hasil,action,key);
  qryLogKonosemen.Close;
  qryLogKonosemen.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogKonosemen.Open;
end;

procedure TfmKonosemen.qryKonosemenDtAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('KonosemenDt',hasil,action,key);
  qryLogKonosemen.Close;
  qryLogKonosemen.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogKonosemen.Open;
  lockRefresh(qryKonosemenDt);
end;

procedure TfmKonosemen.qryKonosemenDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmKonosemen.qryKonosemenDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmKonosemen.qryKonosemenDtBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
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
  LockRefresh(qryKonosemenDt);
  LockRefresh(dmEkspedisi.qryDaftarMuatKapal);
  LockRefresh(qryPrevTrayek);
  LockRefresh(qryPrevTarifKonosemen);
  LockRefresh(dmEkspedisi.qryMerek);
  LockRefresh(dmEkspedisi.qryTarifType);
  LockRefresh(qryGenerateCounter);
  LockRefresh(qryLogKonosemen);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
end;

procedure TfmKonosemen.qryKonosemenNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('KonosemenDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

end.
