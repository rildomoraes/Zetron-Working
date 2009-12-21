unit frmMutasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMemo, cxPC, cxCalendar, ADODB, DateUtils, cxCalc, cxButtonEdit,
  untIvSearchBoxADO, dxmdaset, cxCurrencyEdit, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmMutasi = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    pnlLeft: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeMutasiCode: TcxDBTextEdit;
    qryMutasiStorageHd: TADOQuery;
    Label3: TLabel;
    dbeStorageLocationSource: TcxDBExtLookupComboBox;
    dbeMutasiDate: TcxDBDateEdit;
    Label4: TLabel;
    dbeStorageLocationDest: TcxDBExtLookupComboBox;
    qryMutasiStorageDt: TADOQuery;
    dsMutasiStorageDt: TDataSource;
    qryPrevPackingTransaction: TADOQuery;
    dsPrevPackingTransaction: TDataSource;
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
    qryPrevStorageLocationSource: TADOQuery;
    dsPrevStorageLocationSource: TDataSource;
    qryGenerateCounter: TADOQuery;
    tsDetail: TcxTabSheet;
    cgMutasiStorageDt: TcxGrid;
    cgvMutasiStorageDt: TcxGridDBTableView;
    cgvMutasiStorageDtMutasiCode: TcxGridDBColumn;
    cgvMutasiStorageDtMutasiNo: TcxGridDBColumn;
    cgvMutasiStorageDtItemReceiveCode: TcxGridDBColumn;
    cgvMutasiStorageDtNo: TcxGridDBColumn;
    cgvMutasiStorageDtPackingTransactionCode: TcxGridDBColumn;
    cgvMutasiStorageDtSuppliesCode: TcxGridDBColumn;
    cgvMutasiStorageDtSuppliesName: TcxGridDBColumn;
    cgvMutasiStorageDtQty: TcxGridDBColumn;
    cgvMutasiStorageDtP: TcxGridDBColumn;
    cgvMutasiStorageDtL: TcxGridDBColumn;
    cgvMutasiStorageDtT: TcxGridDBColumn;
    cgvMutasiStorageDtBerat: TcxGridDBColumn;
    cgvMutasiStorageDtUnitMeasure: TcxGridDBColumn;
    cgvMutasiStorageDtTotalM3: TcxGridDBColumn;
    cgvMutasiStorageDtTotalBerat: TcxGridDBColumn;
    cgMutasiStorageDtLevel1: TcxGridLevel;
    Panel1: TPanel;
    Panel2: TPanel;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    cgvDisplayMutasiCode: TcxGridDBColumn;
    cgvDisplayMutasiDate: TcxGridDBColumn;
    cgvDisplayStorageLocationIdSource: TcxGridDBColumn;
    cgvDisplayStorageLocationIdDest: TcxGridDBColumn;
    cgvDisplayEmployeeId: TcxGridDBColumn;
    cgvDisplayStatementMemo: TcxGridDBColumn;
    cgvDisplayInternalMemo: TcxGridDBColumn;
    cgvDisplayCounterPrint: TcxGridDBColumn;
    cgvDisplayStatusApprove: TcxGridDBColumn;
    cgvDisplayDaftarMuatKapalCode: TcxGridDBColumn;
    mdSearchMutasi1: TdxMemData;
    qryFindDaftarMuatKapal: TADOQuery;
    pnlSummary: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dbeCollie: TcxCurrencyEdit;
    dbeM3: TcxCurrencyEdit;
    dbeTon: TcxCurrencyEdit;
    dbeM3Ton: TcxCurrencyEdit;
    qryLogMutasi: TADOQuery;
    cgvMutasiStorageDtTotM3Ton: TcxGridDBColumn;
    dsLogMutasi: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    procedure qryMutasiStorageDtNewRecord(DataSet: TDataSet);
    procedure qryMutasiStorageDtBeforeInsert(DataSet: TDataSet);
    procedure qryMutasiStorageHdBeforeInsert(DataSet: TDataSet);
    procedure qryMutasiStorageHdBeforePost(DataSet: TDataSet);
    procedure qryMutasiStorageHdNewRecord(DataSet: TDataSet);
    procedure dbeStorageLocationDestPropertiesEditValueChanged(Sender: TObject);
    procedure cgvMutasiStorageDtItemReceiveCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cgvMutasiStorageDtPackingTransactionCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dsMutasiStorageDtDataChange(Sender: TObject; Field: TField);
    procedure qryMutasiStorageHdAfterPost(DataSet: TDataSet);
    procedure dbeMutasiCodePropertiesEditValueChanged(Sender: TObject);
    procedure qryMutasiStorageDtAfterPost(DataSet: TDataSet);
    procedure cgvMutasiStorageDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure qryMutasiStorageHdAfterDelete(DataSet: TDataSet);
    procedure qryMutasiStorageDtAfterDelete(DataSet: TDataSet);
    procedure qryMutasiStorageHdBeforeDelete(DataSet: TDataSet);
    procedure qryMutasiStorageDtBeforeDelete(DataSet: TDataSet);
    procedure qryMutasiStorageDtBeforePost(DataSet: TDataSet);
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
  fmMutasi: TfmMutasi;

implementation
  uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta, untEkspedisi,
       frmDisplaySearchMutasi1, frmDisplaySearchMutasi2,
       frmDisplayStock;

{$R *.dfm}

{ TfmMutasi }

procedure TfmMutasi.cgvMutasiStorageDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if qryMutasiStorageDt.active=true then
  begin
   if qryMutasiStorageDt.recordcount>0 then
   begin
    dbeCollie.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[0];
    dbeM3.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[2];
    dbeTon.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[1];
    dbeM3Ton.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[3];
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

procedure TfmMutasi.cgvMutasiStorageDtItemReceiveCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var   StorageID,c: integer;
      DaftarMuatKapalCode:string;
begin
  inherited;
  StorageId := StrToInt(VarToStr((dbeStorageLocationSource.EditValue)));
// cari lokasi yang dituju kapal ini
  dmEkspedisi.qryStorageLocationDest.Locate('StorageLocationId',dbeStorageLocationDest.EditValue,[lopartialkey]);
  if dmEkspedisi.qryStorageLocationDest.FieldByName('FlagShipStorage').Asstring='0' then
    DaftarMuatKapalCode :='%'
  else
  begin
    qryFindDaftarMuatKapal.Close;
    qryFindDaftarMuatKapal.Parameters[0].Value:=dmEkspedisi.qryStorageLocationDest.FieldByName('StorageLocationId').Asstring;
    qryFindDaftarMuatKapal.Open;
    if not(qryFindDaftarMuatKapal.eof) then
       DaftarMuatKapalCode:=qryFindDaftarMuatKapal.fieldbyname('DaftarMuatKapalCode').asstring
    else
       DaftarMuatKapalCode:=' ';
  end;
  if TfmDisplaySearchMutasi1.executeForm(StorageId,DaftarMuatKapalCode,qryMutasiStorageHd.FieldByName('MutasiCode').AsString, mdSearchMutasi1) = mrOk then
   begin
    mdsearchMutasi1.First;
    c := 0;
    while not (mdsearchMutasi1.Eof) do
     begin
       if mdsearchMutasi1.FieldByName('Jumlah').AsInteger > 0 then
         begin
          qryMutasiStorageDt.Insert;
          qryMutasiStorageDt.FieldByName('MutasiNo').AsInteger := qryMutasiStorageDt.RecordCount+1;
          qryMutasiStorageDt.FieldByName('ItemReceiveCode').AsString := mdSearchMutasi1.FieldByName('No SJ').AsString;
          qryMutasiStorageDt.FieldByName('No').AsString := mdSearchMutasi1.FieldByName('No').AsString;
          qryMutasiStorageDt.FieldByName('Qty').AsInteger := mdSearchMutasi1.FieldByName('Jumlah').AsInteger;
          qryMutasiStorageDt.FieldByName('SuppliesName').AsString := mdSearchMutasi1.FieldByName('Nama Barang').AsString;
          qryMutasiStorageDt.FieldByName('SuppliesCode').AsString := mdSearchMutasi1.FieldByName('Kode Barang').AsString;
          qryMutasiStorageDt.FieldByName('P').AsFloat := mdSearchMutasi1.FieldByName('P').AsFloat;
          qryMutasiStorageDt.FieldByName('L').AsFloat := mdSearchMutasi1.FieldByName('L').AsFloat;
          qryMutasiStorageDt.FieldByName('T').AsFloat := mdSearchMutasi1.FieldByName('T').AsFloat;
          qryMutasiStorageDt.FieldByName('Berat').AsFloat := mdSearchMutasi1.FieldByName('Berat').AsFloat;
          qryMutasiStorageDt.FieldByName('TotalM3').AsFloat := qryMutasiStorageDt.FieldByName('Qty').AsInteger *
                              qryMutasiStorageDt.FieldByName('P').AsFloat *
                              qryMutasiStorageDt.FieldByName('L').AsFloat * qryMutasiStorageDt.FieldByName('T').AsFloat
                              / 1000000;
          qryMutasiStorageDt.FieldByName('TotalBerat').AsFloat := qryMutasiStorageDt.FieldByName('Berat').AsFloat * qryMutasiStorageDt.FieldByName('Qty').AsFloat/1000;
          qryMutasiStorageDt.FieldByName('UnitMeasureId').AsInteger := mdSearchMutasi1.FieldByName('UnitMeasure').AsInteger;
          qryMutasiStorageDt.Post;
         end;
       mdSearchMutasi1.Next;
     end;
   end;
end;

procedure TfmMutasi.cgvMutasiStorageDtPackingTransactionCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var   StorageID,c: integer;
     DaftarMuatKapalCode:string;
begin
  inherited;
  StorageId := StrToInt(VarToStr((dbeStorageLocationSource.EditValue)));
  dmEkspedisi.qryStorageLocationDest.Locate('StorageLocationId',dbeStorageLocationDest.EditValue,[lopartialkey]);
  if dmEkspedisi.qryStorageLocationDest.FieldByName('FlagShipStorage').Asstring='0' then
    DaftarMuatKapalCode :='%'
  else
  begin
    qryFindDaftarMuatKapal.Close;
    qryFindDaftarMuatKapal.Parameters[0].Value:=dmEkspedisi.qryStorageLocationDest.FieldByName('StorageLocationId').Asstring;
    qryFindDaftarMuatKapal.Open;
    if not(qryFindDaftarMuatKapal.eof) then
       DaftarMuatKapalCode:=qryFindDaftarMuatKapal.fieldbyname('DaftarMuatKapalCode').asstring
    else
       DaftarMuatKapalCode:=' ';
  end;
  if TfmDisplaySearchMutasi2.executeForm(StorageId,DaftarMuatKapalCode,qryMutasiStorageHd.FieldByName('MutasiCode').AsString, mdSearchMutasi1) = mrOk then
   begin
    mdsearchMutasi1.First;
    c := 0;
    while not (mdsearchMutasi1.Eof) do
     begin
       if mdsearchMutasi1.FieldByName('Jumlah').AsInteger > 0 then
         begin
          qryMutasiStorageDt.Insert;
          qryMutasiStorageDt.FieldByName('MutasiNo').AsInteger := qryMutasiStorageDt.RecordCount+1;
          qryMutasiStorageDt.FieldByName('PackingTransactionCode').AsString := mdSearchMutasi1.FieldByName('No Packing').AsString;
          qryMutasiStorageDt.FieldByName('Qty').AsInteger := mdSearchMutasi1.FieldByName('Jumlah').AsInteger;
          qryMutasiStorageDt.FieldByName('SuppliesName').AsString := mdSearchMutasi1.FieldByName('Nama Barang').AsString;
          qryMutasiStorageDt.FieldByName('SuppliesCode').AsString := mdSearchMutasi1.FieldByName('Kode Barang').AsString;
          qryMutasiStorageDt.FieldByName('P').AsFloat := mdSearchMutasi1.FieldByName('P').AsFloat;
          qryMutasiStorageDt.FieldByName('L').AsFloat := mdSearchMutasi1.FieldByName('L').AsFloat;
          qryMutasiStorageDt.FieldByName('T').AsFloat := mdSearchMutasi1.FieldByName('T').AsFloat;
          qryMutasiStorageDt.FieldByName('Berat').AsFloat := mdSearchMutasi1.FieldByName('Berat').AsFloat;
          qryMutasiStorageDt.FieldByName('TotalM3').AsFloat := qryMutasiStorageDt.FieldByName('Qty').AsInteger *
                              qryMutasiStorageDt.FieldByName('P').AsFloat *
                              qryMutasiStorageDt.FieldByName('L').AsFloat * qryMutasiStorageDt.FieldByName('T').AsFloat
                              / 1000000;
          qryMutasiStorageDt.FieldByName('TotalBerat').AsFloat := qryMutasiStorageDt.FieldByName('Berat').AsFloat * qryMutasiStorageDt.FieldByName('Qty').AsFloat/1000;
          qryMutasiStorageDt.FieldByName('UnitMeasureId').AsInteger := mdSearchMutasi1.FieldByName('UnitMeasure').AsInteger;
          qryMutasiStorageDt.Post;
         end;
       mdSearchMutasi1.Next;
     end;
   end;
end;

procedure TfmMutasi.dbeMutasiCodePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dbeCollie.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[2];
  dbeTon.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[1];
  dbeM3Ton.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[3];
end;

procedure TfmMutasi.dbeStorageLocationDestPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if (dbeStorageLocationDest.EditValue=dbeStorageLocationSource.EditValue) then
   begin
     showmessage('Lokasi penyimpanan tujuan tidak boleh sama dengan asal');
     dbeStorageLocationDest.EditValue := null;
   end;


end;

procedure TfmMutasi.dsMutasiStorageDtDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if (qryMutasiStorageDt.State in [dsEdit]) and (CompareText(Field.FieldName, 'T') = 0) or (CompareText(Field.FieldName, 'L') = 0)
     or (CompareText(Field.FieldName, 'P') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if qryMutasiStorageDt.fieldbyname('Berat').asfloat=0 then
      qryMutasiStorageDt.FieldByName('totalm3').asfloat :=qryMutasiStorageDt.FieldByName('T').asfloat*
       qryMutasiStorageDt.FieldByName('L').asfloat*qryMutasiStorageDt.FieldByName('P').asfloat/1000000*
       qryMutasiStorageDt.FieldByName('Qty').asfloat
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
       showmessage('Data yang dimasukkan harus salah satu TLP atau Berat2 !!!');
       qryMutasiStorageDt.Cancel;
      end;
    end;
  end;

  if (qryMutasiStorageDt.State in [dsEdit]) and  (CompareText(Field.FieldName, 'Berat') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if (qryMutasiStorageDt.fieldbyname('T').asfloat=0) and (qryMutasiStorageDt.fieldbyname('L').asfloat=0) and (qryMutasiStorageDt.fieldbyname('P').asfloat=0) then
      qryMutasiStorageDt.FieldByName('totalBerat').asfloat :=qryMutasiStorageDt.FieldByName('Berat').asfloat*
       qryMutasiStorageDt.FieldByName('Qty').asfloat/1000
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
        showmessage('Data yang dimasukkan harus salah satu TLP atau Berat1 !!!');
        qryMutasiStorageDt.Cancel;
      end;
    end;
  end;

  dbeCollie.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[2];
  dbeTon.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[1];
  dbeM3Ton.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[3];

end;

procedure TfmMutasi.InitForm;
begin
  inherited;
  SetReadOnly(dbeMutasiCode, True, COLOR_INACTIVE);
  DefaultPrimaryKeyField := 'MutasiCode';
  MonthYearValueChange(nil);

  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(qryMutasiStorageHd);
  OpenIfClose(qryMutasiStorageDt);
  OpenIfClose(dmEkspedisi.qryStorageLocationDest);
  OpenIfClose(qryGenerateCounter);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(qryLogMutasi);

  TcxCalcEditProperties(cgvMutasiStorageDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvMutasiStorageDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvMutasiStorageDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvMutasiStorageDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvMutasiStorageDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvMutasiStorageDtTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvMutasiStorageDtTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;

  cgvMutasiStorageDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvMutasiStorageDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvMutasiStorageDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvMutasiStorageDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;

  dbeCollie.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[2];
  dbeTon.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[1];
  dbeM3Ton.EditValue := cgvMutasiStorageDt.DataController.Summary.FooterSummaryValues[3];

end;

procedure TfmMutasi.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryMutasiStorageHd.Close;
  qryMutasiStorageHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryMutasiStorageHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryMutasiStorageHd,True, True);
end;

procedure TfmMutasi.qryMutasiStorageDtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('MutasiStorageDt',hasil,action,key);
end;

procedure TfmMutasi.qryMutasiStorageDtAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('MutasiStorageDt',hasil,action,key);
  LockRefresh(qryMutasiStorageDt);
end;

procedure TfmMutasi.qryMutasiStorageDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmMutasi.qryMutasiStorageDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmMutasi.qryMutasiStorageDtBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmMutasi.qryMutasiStorageDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('MutasiNo').AsInteger := DataSet.RecordCount+1;
end;


procedure TfmMutasi.qryMutasiStorageHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('MutasiStorageHd',hasil,action,key);
end;

procedure TfmMutasi.qryMutasiStorageHdAfterPost(DataSet: TDataSet);
var tgl:string;
begin
  inherited;
  dmEkspedisi.InsertLog('MutasiStorageHd',hasil,action,key);
end;

procedure TfmMutasi.qryMutasiStorageHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmMutasi.qryMutasiStorageHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmMutasi.qryMutasiStorageHdBeforePost(DataSet: TDataSet);
var tgl:string;
begin
  inherited;

  if DataSet.FieldByName('MutasiCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='MUTASI';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbeMutasiDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryGenerateCounter.Open;
    DataSet.FieldByName('MutasiCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
    dmEkspedisi.qryspGenerateCounter.close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='MUTASI';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbeMutasiDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
  end;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmMutasi.qryMutasiStorageHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('MutasiDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
  DataSet.FieldByName('StatusApprove').AsString := '0';

end;

procedure TfmMutasi.RefreshAll;
begin
  inherited;

  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(qryMutasiStorageHd);
  LockRefresh(qryMutasiStorageDt);
  LockRefresh(qryPrevStorageLocationSource);
  LockRefresh(qryGenerateCounter);
  LockRefresh(dmEkspedisi.qryUnitMeasure);
  LockRefresh(qryLogMutasi);
end;

end.
