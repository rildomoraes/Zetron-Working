unit frmTransactionPacking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, ADODB, cxMemo, cxDBEdit, cxPC, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, DateUtils, cxSpinEdit,
  Grids, DBGrids, cxButtonEdit, cxCurrencyEdit, dxmdaset, untIvSearchBoxADO,
  cxCheckBox;

type
  TfmTransactionPacking =  class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    pnlLeft: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    dbePackingTransactionDate: TcxDBDateEdit;
    dbePackingTransactionCode: TcxDBTextEdit;
    qryPackingTransactionHd: TADOQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryPackingTransactionDt: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    dsPackingTransactionDt: TDataSource;
    dsPrevSuppliesReceiveDt: TDataSource;
    qryPrevSuppliesReceiveDt: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeUnitMeasureId: TcxDBExtLookupComboBox;
    dblcStorageLocationId: TcxDBExtLookupComboBox;
    dbePackingAlias: TcxDBTextEdit;
    cxGrid1DBTableView1PackingTransactionCode: TcxGridDBColumn;
    cxGrid1DBTableView1PackingID: TcxGridDBColumn;
    cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn;
    cxGrid1DBTableView1PackingTransactionDate: TcxGridDBColumn;
    cxGrid1DBTableView1PackingDelivered: TcxGridDBColumn;
    cxGrid1DBTableView1PackingAlias: TcxGridDBColumn;
    cxGrid1DBTableView1Qty: TcxGridDBColumn;
    cxGrid1DBTableView1T: TcxGridDBColumn;
    cxGrid1DBTableView1L: TcxGridDBColumn;
    cxGrid1DBTableView1P: TcxGridDBColumn;
    cxGrid1DBTableView1OtyOutStanding: TcxGridDBColumn;
    cxGrid1DBTableView1Price: TcxGridDBColumn;
    cxGrid1DBTableView1StatementMemo: TcxGridDBColumn;
    cxGrid1DBTableView1InternalMemo: TcxGridDBColumn;
    cxGrid1DBTableView1EmployeeId: TcxGridDBColumn;
    cxGrid1DBTableView1CounterPrint: TcxGridDBColumn;
    cxGrid1DBTableView1StatusApprove: TcxGridDBColumn;
    Panel1: TPanel;
    Label6: TLabel;
    cgvPrevSuppliesReceiveDt: TcxGridDBTableView;
    pcBody: TcxPageControl;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    dblcRute: TcxDBExtLookupComboBox;
    Label18: TLabel;
    dblcMerk: TcxDBExtLookupComboBox;
    cgvPrevSuppliesReceiveDtItemRecCode: TcxGridDBColumn;
    cgvPrevSuppliesReceiveDtNo: TcxGridDBColumn;
    cgvPrevSuppliesReceiveDtMerekId: TcxGridDBColumn;
    cgvPrevSuppliesReceiveDtSuppliesCode: TcxGridDBColumn;
    cgvPrevSuppliesReceiveDtSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesReceiveDtqty: TcxGridDBColumn;
    tsDetail: TcxTabSheet;
    cgPackingTransaction: TcxGrid;
    cgvPackingTransactionDt: TcxGridDBTableView;
    cgvPackingTransactionDtPackingTransactionNo: TcxGridDBColumn;
    cgvPackingTransactionDtQty: TcxGridDBColumn;
    cgvPackingTransactionDtItemReceiveCode: TcxGridDBColumn;
    cgvPackingTransactionDtNo: TcxGridDBColumn;
    cgvPackingTransactionDtSisa: TcxGridDBColumn;
    cgvPackingTransactionDtPackingTransactionCode: TcxGridDBColumn;
    cgvPackingTransactionDtNo1: TcxGridDBColumn;
    cgvPackingTransactionDtSuppliesCode: TcxGridDBColumn;
    cgvPackingTransactionDtSuppliesName: TcxGridDBColumn;
    cgvPackingTransactionDtP: TcxGridDBColumn;
    cgvPackingTransactionDtL: TcxGridDBColumn;
    cgvPackingTransactionDtT: TcxGridDBColumn;
    cgvPackingTransactionDtBerat: TcxGridDBColumn;
    cgvPackingTransactionDtUnitMeasure: TcxGridDBColumn;
    cgvPackingTransactionDtTotalM3: TcxGridDBColumn;
    cgvPackingTransactionDtTotalBerat: TcxGridDBColumn;
    cgPackingTransactionLevel1: TcxGridLevel;
    dbceLebar: TcxDBCurrencyEdit;
    dbcePanjang: TcxDBCurrencyEdit;
    dbceTinggi: TcxDBCurrencyEdit;
    dbceBerat: TcxDBCurrencyEdit;
    dbceJumlah: TcxDBCurrencyEdit;
    cxGrid1DBTableView1Berat: TcxGridDBColumn;
    cxGrid1DBTableView1MerekId: TcxGridDBColumn;
    cxGrid1DBTableView1RouteId: TcxGridDBColumn;
    cxGrid1DBTableView1TotalBerat: TcxGridDBColumn;
    cxGrid1DBTableView1TotalM3: TcxGridDBColumn;
    mdPackingItem: TdxMemData;
    IvSearchBoxADO1: TIvSearchBoxADO;
    BtnSearchRuteMerk: TcxButton;
    btnTutup: TcxButton;
    cxGrid1DBTableView1PackingClose: TcxGridDBColumn;
    qryLogTransactionPacking: TADOQuery;
    dsLogTransactionPacking: TDataSource;
    pnlSummary: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dbeCollie: TcxCurrencyEdit;
    dbeM3: TcxCurrencyEdit;
    dbeTon: TcxCurrencyEdit;
    dbeM3Ton: TcxCurrencyEdit;
    cgvPackingTransactionDtQtyTotal: TcxGridDBColumn;
    cgvPackingTransactionDtTotM3Ton: TcxGridDBColumn;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    procedure qryPackingTransactionHdBeforePost(DataSet: TDataSet);
    procedure qryPackingTransactionHdNewRecord(DataSet: TDataSet);
    procedure qryPackingTransactionHdBeforeInsert(DataSet: TDataSet);
    procedure qryPackingTransactionDtNewRecord(DataSet: TDataSet);
    procedure qryPrevSuppliesReceiveDtNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcStorageLocationIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsPackingTransactionDtDataChange(Sender: TObject; Field: TField);
    procedure qryPackingTransactionHdAfterPost(DataSet: TDataSet);
    procedure actVoidExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cgvPackingTransactionDtSuppliesCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure BtnSearchRuteMerkClick(Sender: TObject);
    procedure btnTutupClick(Sender: TObject);
    procedure dbePackingTransactionCodePropertiesEditValueChanged(
      Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure qryPackingTransactionHdAfterDelete(DataSet: TDataSet);
    procedure qryPackingTransactionHdBeforeDelete(DataSet: TDataSet);
    procedure qryPackingTransactionDtAfterPost(DataSet: TDataSet);
    procedure cgvPackingTransactionDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure setenable;
    procedure qryPackingTransactionDtAfterDelete(DataSet: TDataSet);
    procedure qryPackingTransactionDtBeforeDelete(DataSet: TDataSet);
    procedure qryPackingTransactionDtBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
    var isSearched : boolean;
    hasil,action,key:string;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmTransactionPacking: TfmTransactionPacking;


implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta, untEkspedisi, frmDisplayPacking,
     frmDisplaySearchPacking;

{ TfmPacking }

procedure TfmTransactionPacking.actVoidExecute(Sender: TObject);
begin
  inherited;
  LockRefresh(qryPackingTransactionDt);
end;

procedure TfmTransactionPacking.Button1Click(Sender: TObject);
var merekId, lokasiId, ruteId, c,i,AQty : integer;
begin
  inherited;
  merekId := StrToInt(VarToStr((dblcMerk.EditValue)));
  lokasiId := StrToInt(VarToStr((dblcStorageLocationId.EditValue)));
  ruteId := StrToInt(VarToStr((dblcRute.EditValue)));
  AQty:=qryPackingTransactionHd.FieldByName('qty').asinteger;
  isSearched := false;
  if TfmDisplaySearchPacking.executeForm(merekId,lokasiId,ruteId,qryPackingTransactionHd.FieldByName('PackingTransactionCode').AsString,AQty,mdPackingItem) = mrOk then
   begin
    mdPackingItem.First;
    c := 0;
    while not (mdPackingItem.Eof) do
     begin
       isSearched := true;
       if mdPackingItem.FieldByName('Jumlah').AsInteger > 0 then
         begin
 //         showmessage(inttostr(mdPackingItem.FieldByName('Jumlah').AsInteger));
          qryPackingTransactionDt.Insert;
          qryPackingTransactionDt.FieldByName('PackingTransactionNo').AsInteger := qryPackingTransactionDt.RecordCount+1;
          qryPackingTransactionDt.FieldByName('ItemReceiveCode').AsString := mdPackingItem.FieldByName('No SJ').AsString;
          qryPackingTransactionDt.FieldByName('No').AsString := mdPackingItem.FieldByName('No').AsString;
          qryPackingTransactionDt.FieldByName('SuppliesName').AsString := mdPackingItem.FieldByName('Nama Barang').AsString;
          qryPackingTransactionDt.FieldByName('SuppliesCode').AsString := mdPackingItem.FieldByName('Kode Barang').AsString;
          qryPackingTransactionDt.FieldByName('P').AsFloat := mdPackingItem.FieldByName('P').AsFloat;
          qryPackingTransactionDt.FieldByName('L').AsFloat := mdPackingItem.FieldByName('L').AsFloat;
          qryPackingTransactionDt.FieldByName('T').AsFloat := mdPackingItem.FieldByName('T').AsFloat;
          qryPackingTransactionDt.FieldByName('Berat').AsFloat := mdPackingItem.FieldByName('Berat').AsFloat;
          qryPackingTransactionDt.FieldByName('Qty').AsInteger := mdPackingItem.FieldByName('Jumlah').AsInteger;
          qryPackingTransactionDt.FieldByName('QtyOutStanding').AsInteger := mdPackingItem.FieldByName('Sisa').AsInteger - mdPackingItem.FieldByName('totpacking').AsInteger;
          qryPackingTransactionDt.FieldByName('UnitMeasureId').AsInteger := mdPackingItem.FieldByName('UnitMeasure').AsInteger;
          qryPackingTransactionDt.FieldByName('TotalM3').AsFloat := dbceJumlah.editValue * qryPackingTransactionDt.FieldByName('Qty').AsInteger *
                              qryPackingTransactionDt.FieldByName('P').AsFloat *
                              qryPackingTransactionDt.FieldByName('L').AsFloat * qryPackingTransactionDt.FieldByName('T').AsFloat
                              / 1000000;
          qryPackingTransactionDt.FieldByName('TotalBerat').AsFloat := qryPackingTransactionDt.FieldByName('Berat').AsFloat * qryPackingTransactionDt.FieldByName('Qty').AsFloat * dbceJumlah.EditValue/1000;
          qryPackingTransactionDt.Post;
         end;
       mdPackingItem.Next;
     end;
    isSearched := false;
   end;

end;

procedure TfmTransactionPacking.cgvPackingTransactionDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if qryPackingTransactionDt.active=true then
  begin
   if qryPackingTransactionDt.recordcount>0 then
   begin
    dbeCollie.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[0];
    dbeM3.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[1];
    dbeTon.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[2];
    dbeM3Ton.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[3];
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

procedure TfmTransactionPacking.cgvPackingTransactionDtSuppliesCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var merekId, lokasiId, ruteId, c,i,AQty : integer;
begin
  inherited;
  merekId := StrToInt(VarToStr((dblcMerk.EditValue)));
  lokasiId := StrToInt(VarToStr((dblcStorageLocationId.EditValue)));
  ruteId := StrToInt(VarToStr((dblcRute.EditValue)));
  AQty := qryPackingTransactionHd.FieldByName('qty').AsInteger;
  isSearched := false;
  if TfmDisplaySearchPacking.executeForm(merekId,lokasiId,ruteId,qryPackingTransactionHd.FieldByName('PackingTransactionCode').AsString,AQty,mdPackingItem) = mrOk then
   begin
    mdPackingItem.First;
    c := 0;
    while not (mdPackingItem.Eof) do
     begin
       isSearched := true;
       if mdPackingItem.FieldByName('Jumlah').AsInteger > 0 then
         begin
          qryPackingTransactionDt.Insert;
          qryPackingTransactionDt.FieldByName('PackingTransactionNo').AsInteger := qryPackingTransactionDt.RecordCount+1;
          qryPackingTransactionDt.FieldByName('ItemReceiveCode').AsString := mdPackingItem.FieldByName('No SJ').AsString;
          qryPackingTransactionDt.FieldByName('No').AsString := mdPackingItem.FieldByName('No').AsString;
          qryPackingTransactionDt.FieldByName('SuppliesName').AsString := mdPackingItem.FieldByName('Nama Barang').AsString;
          qryPackingTransactionDt.FieldByName('SuppliesCode').AsString := mdPackingItem.FieldByName('Kode Barang').AsString;
          qryPackingTransactionDt.FieldByName('P').AsFloat := mdPackingItem.FieldByName('P').AsFloat;
          qryPackingTransactionDt.FieldByName('L').AsFloat := mdPackingItem.FieldByName('L').AsFloat;
          qryPackingTransactionDt.FieldByName('T').AsFloat := mdPackingItem.FieldByName('T').AsFloat;
          qryPackingTransactionDt.FieldByName('Berat').AsFloat := mdPackingItem.FieldByName('Berat').AsFloat;
          qryPackingTransactionDt.FieldByName('Qty').AsInteger := mdPackingItem.FieldByName('Jumlah').AsInteger;
          qryPackingTransactionDt.FieldByName('QtyOutStanding').AsInteger := mdPackingItem.FieldByName('Sisa').AsInteger - mdPackingItem.FieldByName('totpacking').AsInteger;
          qryPackingTransactionDt.FieldByName('UnitMeasureId').AsInteger := mdPackingItem.FieldByName('UnitMeasure').AsInteger;
          qryPackingTransactionDt.FieldByName('TotalM3').AsFloat := dbceJumlah.EditValue * qryPackingTransactionDt.FieldByName('Qty').AsInteger *
                              qryPackingTransactionDt.FieldByName('P').AsFloat *
                              qryPackingTransactionDt.FieldByName('L').AsFloat * qryPackingTransactionDt.FieldByName('T').AsFloat
                              / 1000000;
          qryPackingTransactionDt.FieldByName('TotalBerat').AsFloat := qryPackingTransactionDt.FieldByName('Berat').AsFloat * qryPackingTransactionDt.FieldByName('Qty').AsFloat * dbceJumlah.EditValue/1000;
          qryPackingTransactionDt.Post;
         end;
       mdPackingItem.Next;
     end;
    isSearched := false;
   end;

end;

procedure TfmTransactionPacking.BtnSearchRuteMerkClick(Sender: TObject);
begin
  inherited;

  IvSearchBoxADO1.Parameters[0].Value:=dblcStorageLocationId.EditValue;
  IvSearchBoxADO1.Parameters[1].Value:=dblcStorageLocationId.EditValue;
  if IvSearchBoxADO1.Execute=mrOk then
  begin
     qryPackingTransactionHd.Edit;
     qryPackingTransactionHd.FieldByName('CustomerId').AsString:=IvSearchBoxADO1.FieldByName('CustomerId').AsString;
     qryPackingTransactionHd.FieldByName('MerekId').AsString:=IvSearchBoxADO1.FieldByName('MerekId').AsString;
     qryPackingTransactionHd.FieldByName('RouteId').AsString:=IvSearchBoxADO1.FieldByName('RouteId').AsString;
  end;
end;

procedure TfmTransactionPacking.btnTutupClick(Sender: TObject);
begin
  inherited;
  qryPackingTransactionHd.Edit;
  if qryPackingTransactionHd.FieldByName('packingclose').asinteger=0 then
  begin
    qryPackingTransactionHd.FieldByName('packingclose').asinteger:=1;
    cgPackingTransaction.Enabled:=false;
    dbceJumlah.Enabled:=false;
    pnlLeft.Color:=$00CD98FE;
  end
  else
  begin
    qryPackingTransactionHd.FieldByName('packingclose').asinteger:=0;
    cgPackingTransaction.Enabled:=true;
    dbceJumlah.Enabled:=true;
    pnlLeft.Color:=$0082FFD7;
  end;
  qryPackingTransactionHd.Post;
end;

procedure TfmTransactionPacking.setenable;
begin
  if qryPackingTransactionDt.Active=true then
  begin
    if qryPackingTransactionDt.RecordCount=0 then
    begin
       dblcStorageLocationId.Enabled:=true;
       BtnSearchRuteMerk.Enabled := true;
    end
    else
    begin
       dblcStorageLocationId.Enabled:=false;
       BtnSearchRuteMerk.Enabled := false;
    end;
  end;
end;

procedure TfmTransactionPacking.dbePackingTransactionCodePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if qryPackingTransactionHd.FieldByName('PackingClose').Asstring='0' then
  begin
    btnTutup.Caption:='Tutup';
    cgPackingTransaction.Enabled:=true;
    dbceJumlah.Enabled:=true;
    pnlLeft.Color:=$0082FFD7;
  end
  else
  begin
    btnTutup.Caption:='Buka';
    cgPackingTransaction.Enabled:=false;
    dbceJumlah.Enabled:=false;
    pnlLeft.Color:=$00CD98FE;
  end;

  setenable;

  dbeCollie.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[1];
  dbeTon.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[2];
  dbeM3Ton.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[3];

end;

procedure TfmTransactionPacking.dblcStorageLocationIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  qryPrevSuppliesReceiveDt.Close;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('lokasi').Value := dblcStorageLocationId.EditValue;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('RouteId').Value := dblcRute.EditValue;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('MerekId').Value := dblcMerk.EditValue;
  qryPrevSuppliesReceiveDt.Open;
end;

procedure TfmTransactionPacking.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'T') = 0) or (CompareText(Field.FieldName, 'L') = 0)
     or (CompareText(Field.FieldName, 'P') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
      qryPackingTransactionHd.FieldByName('totalm3').asfloat :=qryPackingTransactionHd.FieldByName('T').asfloat*
       qryPackingTransactionHd.FieldByName('L').asfloat*qryPackingTransactionHd.FieldByName('P').asfloat/1000000*
       qryPackingTransactionHd.FieldByName('Qty').asfloat;
  end;
  if (CompareText(Field.FieldName, 'Berat') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
      qryPackingTransactionHd.FieldByName('totalBerat').asfloat :=qryPackingTransactionHd.FieldByName('Berat').asfloat*
       qryPackingTransactionHd.FieldByName('Qty').asfloat/1000
  end;
end;

procedure TfmTransactionPacking.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  BtnSearchRuteMerk.Enabled:=false;
  dblcStorageLocationId.Enabled := false;
  setenable;
  if qryPackingTransactionHd.State in [dsinsert,dsedit] then
  begin
    if (qryPackingTransactionDt.Active) then
    begin
      BtnSearchRuteMerk.Enabled:=true;
    end;
  end
end;

procedure TfmTransactionPacking.dsPackingTransactionDtDataChange(
  Sender: TObject; Field: TField);
var
  ATotal:real;
  temp : integer;

begin
  inherited;
  // kalo merk diisi maka customer diisi sesuai dengan merk
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'Qty') = 0) and (isSearched=false) then
  begin
//    if qryPackingTransactionDt.FieldByName('QtyOutStanding').Asfloat>0 then
//      ATotal:=qryPackingTransactionDt.FieldByName('QtyOutStanding').Asfloat+qryPackingTransactionDt.FieldByName('Qty').Asfloat;
//    qryPackingTransactionDt.FieldByName('QtyOutStanding').Asfloat := ATotal-qryPackingTransactionDt.FieldByName('Qty').Asfloat;
    temp := qryPackingTransactionDt.FieldByName('QtyOutStanding').AsInteger +(qryPackingTransactionDt.FieldByName('Qty').OldValue*qryPackingTransactionHd.FieldByName('Qty').AsInteger)
          -(qryPackingTransactionDt.FieldByName('Qty').NewValue*qryPackingTransactionHd.FieldByName('Qty').AsInteger);
    if temp>=0 then
      qryPackingTransactionDt.FieldByName('QtyOutStanding').AsInteger := temp
    else
    begin
      showmessage('Data Barang Kurang !!!');
      qryPackingTransactionDt.Cancel;
    end;
  end;
  dbeCollie.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[1];
  dbeTon.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[2];
  dbeM3Ton.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[3];
end;

procedure TfmTransactionPacking.InitForm;
begin
  inherited;

  SetReadOnly(dbePackingTransactionCode, True, COLOR_INACTIVE);
  SetReadOnly(dblcMerk, True, COLOR_INACTIVE);
  SetReadOnly(dblcRute, True, COLOR_INACTIVE);

  DefaultPrimaryKeyField := 'PackingTransactionCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_SUPPLIES_RECEIVE);

  MonthYearValueChange(nil);
  OpenIfClose(qryPackingTransactionHd);
  OpenIfClose(qryPackingTransactionDt);
  OpenIfClose(qryPrevSuppliesReceiveDt);
  OpenIfClose(dmEkspedisi.qryMerek);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(dmEkspedisi.qryMerekByRoute);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(qryLogTransactionPacking);

  TcxCalcEditProperties(cgvPackingTransactionDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPackingTransactionDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPackingTransactionDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPackingTransactionDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPackingTransactionDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvPackingTransactionDtTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvPackingTransactionDtTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvPackingTransactionDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvPackingTransactionDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPackingTransactionDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvPackingTransactionDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;

  dbeCollie.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[0];
  dbeM3.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[1];
  dbeTon.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[2];
  dbeM3Ton.EditValue := cgvPackingTransactionDt.DataController.Summary.FooterSummaryValues[3];

  if (dbePackingTransactionCode.EditValue=null) then
   begin
     BtnSearchRuteMerk.Enabled := true;
   end;

  setenable;

end;

procedure TfmTransactionPacking.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryPackingTransactionHd.Close;
  qryPackingTransactionHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryPackingTransactionHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryPackingTransactionHd,True, True);
end;

procedure TfmTransactionPacking.qryPackingTransactionDtAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('PackingTransactionDt',hasil,action,key);
  qryLogTransactionPacking.Close;
  qryLogTransactionPacking.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogTransactionPacking.Open;
end;

procedure TfmTransactionPacking.qryPackingTransactionDtAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  LockRefresh(qryPackingTransactionDt);
  setenable;
  dmEkspedisi.InsertLog('PackingTransactionHd',hasil,action,key);
  qryLogTransactionPacking.Close;
  qryLogTransactionPacking.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogTransactionPacking.Open;
end;

procedure TfmTransactionPacking.qryPackingTransactionDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmTransactionPacking.qryPackingTransactionDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmTransactionPacking.qryPackingTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('PackingTransactionNo').AsInteger := DataSet.RecordCount+1;

end;

procedure TfmTransactionPacking.qryPackingTransactionHdAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('PackingTransactionHd',hasil,action,key);
  qryLogTransactionPacking.Close;
  qryLogTransactionPacking.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogTransactionPacking.Open;
end;

procedure TfmTransactionPacking.qryPackingTransactionHdAfterPost(
  DataSet: TDataSet);
var tgl:string;
begin
  inherited;
  if qryPackingTransactionHd.FieldByName('PackingClose').Asinteger=0 then
  begin
    btnTutup.Caption:='Tutup';
  end
  else
  begin
    btnTutup.Caption:='Buka';
  end;
  dmEkspedisi.InsertLog('PackingTransactionHd',hasil,action,key);
  qryLogTransactionPacking.Close;
  qryLogTransactionPacking.Parameters[0].Value:=dataset.FieldByName(DefaultPrimaryKeyField).AsString;
  qryLogTransactionPacking.Open;
end;

procedure TfmTransactionPacking.qryPackingTransactionHdBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmTransactionPacking.qryPackingTransactionHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmTransactionPacking.qryPackingTransactionHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DataSet.FieldByName('totalm3').AsFloat=0) and (DataSet.FieldByName('totalberat').AsFloat=0) then
  begin
    showmessage('Periksa T,L,P atau Berat !!!');
    DataSet.Cancel
  end;

  if DataSet.FieldByName('PackingTransactionCode').isnull then
  begin
    dmEkspedisi.qryGenerateCounter.Close;
    dmEkspedisi.qryGenerateCounter.Parameters[0].Value:='PACKING';
    dmEkspedisi.qryGenerateCounter.Parameters[1].Value:=dbePackingTransactionDate.date;
    dmEkspedisi.qryGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryGenerateCounter.Open;
    DataSet.FieldByName('PackingTransactionCode').AsVariant := dmEkspedisi.qryGenerateCounter.FieldByName('GenCounter').Text;
    dmEkspedisi.qryspGenerateCounter.close;
    dmEkspedisi.qryspGenerateCounter.Parameters[0].Value:='PACKING';
    dmEkspedisi.qryspGenerateCounter.Parameters[1].Value:=dbePackingTransactionDate.date;
    dmEkspedisi.qryspGenerateCounter.Parameters[2].Value:='';
    dmEkspedisi.qryspGenerateCounter.ExecSQL;
  end;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmTransactionPacking.qryPackingTransactionHdNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PackingTransactionDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('CounterPrint').Asinteger := 0;
  DataSet.FieldByName('StatusApprove').Asinteger := 0;
  DataSet.FieldByName('PackingClose').Asinteger := 0;
end;

procedure TfmTransactionPacking.qryPrevSuppliesReceiveDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('P').AsInteger := 0;
  DataSet.FieldByName('L').AsInteger := 0;
  DataSet.FieldByName('T').AsInteger := 0;
  DataSet.FieldByName('Berat').AsInteger := 0;
  DataSet.FieldByName('Qty').AsInteger := 0;

end;

procedure TfmTransactionPacking.RefreshAll;
begin
  inherited;

  LockRefresh(qryPackingTransactionDt);
  LockRefresh(qryPackingTransactionHd);
  LockRefresh(qryPrevSuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(dmEkspedisi.qryMerekByRoute);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(dmEkspedisi.qryUnitMeasure);
  LockRefresh(qryLogTransactionPacking);
end;

end.
