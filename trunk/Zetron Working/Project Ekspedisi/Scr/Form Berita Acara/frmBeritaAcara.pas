unit frmBeritaAcara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCalc, DateUtils, cxCalendar, cxMemo, cxPC;

type
  TfmBeritaAcara = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeBeritaAcaraCode: TcxDBTextEdit;
    dblcBongkaranCode: TcxDBExtLookupComboBox;
    dblcMerek: TcxDBExtLookupComboBox;
    pnlOtherInfo: TPanel;
    pnlGrid: TPanel;
    cgvBeritaAcaraDt: TcxGridDBTableView;
    cgBeritaAcaraDtLevel1: TcxGridLevel;
    cgBeritaAcaraDt: TcxGrid;
    qryBeritaAcaraHd: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    qryPrevBongkaran: TADOQuery;
    qryPrevMerek: TADOQuery;
    dsPrevBongkaran: TDataSource;
    dsPrevMerek: TDataSource;
    cgvPrevMerek: TcxGridDBTableView;
    cgvPrevMerekMerekId: TcxGridDBColumn;
    cgvPrevMerekMerekCode: TcxGridDBColumn;
    cgvPrevMerekMerekName: TcxGridDBColumn;
    cgvPrevMerekRouteId: TcxGridDBColumn;
    cgvPrevMerekCustomerId: TcxGridDBColumn;
    cgvPrevBongkaran: TcxGridDBTableView;
    cgvPrevBongkaranBongkaranCode: TcxGridDBColumn;
    cgvPrevBongkaranArrivalDate: TcxGridDBColumn;
    cgvPrevBongkaranBongkaranDateStart: TcxGridDBColumn;
    cgvPrevBongkaranBongkaranDateEnd: TcxGridDBColumn;
    cgvPrevBongkaranKerani: TcxGridDBColumn;
    cgvPrevBongkaranKomprador: TcxGridDBColumn;
    cgvPrevBongkaranShipId: TcxGridDBColumn;
    cgvPrevBongkaranRouteId: TcxGridDBColumn;
    cgvPrevBongkaranEmployeeId: TcxGridDBColumn;
    cgvPrevBongkaranStatementMemo: TcxGridDBColumn;
    cgvPrevBongkaranInternalMemo: TcxGridDBColumn;
    cgvPrevBongkaranCounterPrint: TcxGridDBColumn;
    cgvPrevBongkaranStatusApprove: TcxGridDBColumn;
    Label6: TLabel;
    dbeBeritaAcaraDate: TcxDBDateEdit;
    cgPrevBeritaAcara: TcxGrid;
    cgvPrevBeritaAcara: TcxGridDBTableView;
    cgPrevBeritaAcaraLevel1: TcxGridLevel;
    cgvPrevBeritaAcaraBeritaAcaraCode: TcxGridDBColumn;
    cgvPrevBeritaAcaraBeritaAcaraDate: TcxGridDBColumn;
    cgvPrevBeritaAcaraBongkaranCode: TcxGridDBColumn;
    cgvPrevBeritaAcaraMerekId: TcxGridDBColumn;
    cgvPrevBeritaAcaraTotalM3: TcxGridDBColumn;
    cgvPrevBeritaAcaraTotalBerat: TcxGridDBColumn;
    cgvPrevBeritaAcaraEmployeeId: TcxGridDBColumn;
    cgvPrevBeritaAcaraStatementMemo: TcxGridDBColumn;
    cgvPrevBeritaAcaraInternalMemo: TcxGridDBColumn;
    cgvPrevBeritaAcaraCounterPrint: TcxGridDBColumn;
    cgvPrevBeritaAcaraStatusApprove: TcxGridDBColumn;
    pcBody: TcxPageControl;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    qryBeritaAcaraDt: TADOQuery;
    dsBeritaAcaraDt: TDataSource;
    cgvBeritaAcaraDtBeritaAcaraCode: TcxGridDBColumn;
    cgvBeritaAcaraDtSuppliesCode: TcxGridDBColumn;
    cgvBeritaAcaraDtSuppliesName: TcxGridDBColumn;
    cgvBeritaAcaraDtStorageLocationId: TcxGridDBColumn;
    cgvBeritaAcaraDtQty: TcxGridDBColumn;
    cgvBeritaAcaraDtQtyKonosemen: TcxGridDBColumn;
    cgvBeritaAcaraDtQtySelisih: TcxGridDBColumn;
    cgvBeritaAcaraDtQtyOutStanding: TcxGridDBColumn;
    cgvPrevStorageLocation: TcxGridDBTableView;
    cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn;
    cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn;
    cgvBeritaAcaraDtBerat: TcxGridDBColumn;
    cgvBeritaAcaraDtL: TcxGridDBColumn;
    cgvBeritaAcaraDtP: TcxGridDBColumn;
    cgvBeritaAcaraDtT: TcxGridDBColumn;
    cgvBeritaAcaraDtTotalBerat: TcxGridDBColumn;
    cgvBeritaAcaraDtTotalM3: TcxGridDBColumn;
    cgvBeritaAcaraDtUnitMeasure: TcxGridDBColumn;
    qryLogBeritaAcara: TADOQuery;
    dsLogBeritaAcara: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    procedure qryBeritaAcaraHdBeforeInsert(DataSet: TDataSet);
    procedure qryBeritaAcaraHdBeforePost(DataSet: TDataSet);
    procedure qryBeritaAcaraDtBeforeInsert(DataSet: TDataSet);
    procedure qryBeritaAcaraDtNewRecord(DataSet: TDataSet);
    procedure dsBeritaAcaraDtDataChange(Sender: TObject; Field: TField);
    procedure qryBeritaAcaraHdAfterDelete(DataSet: TDataSet);
    procedure qryBeritaAcaraHdAfterPost(DataSet: TDataSet);
    procedure qryBeritaAcaraDtAfterPost(DataSet: TDataSet);
    procedure qryBeritaAcaraDtAfterDelete(DataSet: TDataSet);
    procedure qryBeritaAcaraDtBeforeDelete(DataSet: TDataSet);
    procedure qryBeritaAcaraDtBeforePost(DataSet: TDataSet);
    procedure qryBeritaAcaraHdBeforeDelete(DataSet: TDataSet);
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
  fmBeritaAcara: TfmBeritaAcara;

implementation
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;
{$R *.dfm}

procedure TfmBeritaAcara.dsBeritaAcaraDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'T') = 0) or (CompareText(Field.FieldName, 'L') = 0)
     or (CompareText(Field.FieldName, 'P') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if qryBeritaAcaraDt.fieldbyname('Berat').asfloat=0 then
      qryBeritaAcaraDt.FieldByName('totalm3').asfloat :=qryBeritaAcaraDt.FieldByName('T').asfloat*
       qryBeritaAcaraDt.FieldByName('L').asfloat*qryBeritaAcaraDt.FieldByName('P').asfloat/1000000*
       qryBeritaAcaraDt.FieldByName('Qty').asfloat
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
       showmessage('Data yang dimasukkan harus salah satu TLP atau Berat !!!');
       qryBeritaAcaraDt.Cancel;
      end;
    end;
  end;
  if (CompareText(Field.FieldName, 'Berat') = 0) or (CompareText(Field.FieldName, 'Qty') = 0) then
  begin
    if (qryBeritaAcaraDt.fieldbyname('T').asfloat=0) and (qryBeritaAcaraDt.fieldbyname('L').asfloat=0) and (qryBeritaAcaraDt.fieldbyname('P').asfloat=0) then
      qryBeritaAcaraDt.FieldByName('totalBerat').asfloat :=qryBeritaAcaraDt.FieldByName('Berat').asfloat*
       qryBeritaAcaraDt.FieldByName('Qty').asfloat
    else
    begin
      if CompareText(Field.FieldName, 'Qty')<>0 then
      begin
        showmessage('Data yang dimasukkan harus salah satu TLP atau Berat !!!');
        qryBeritaAcaraDt.Cancel;
      end;
    end;
  end;

end;

procedure TfmBeritaAcara.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'BeritaAcaraCode';
  MonthYearValueChange(nil);

  OpenIfClose(qryBeritaAcaraHd);
  OpenIfClose(qryPrevBongkaran);
  OpenIfClose(qryPrevMerek);
  OpenIfClose(qryBeritaAcaraDt);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(dmEkspedisi.qryUnitMeasure);
  OpenIfClose(qryLogBeritaAcara);

  TcxCalcEditProperties(cgvBeritaAcaraDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvBeritaAcaraDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvBeritaAcaraDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvBeritaAcaraDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvBeritaAcaraDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvBeritaAcaraDtTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCalcEditProperties(cgvBeritaAcaraDtTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvBeritaAcaraDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvBeritaAcaraDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvBeritaAcaraDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvBeritaAcaraDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;



end;

procedure TfmBeritaAcara.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryBeritaAcaraHd.Close;
  qryBeritaAcaraHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qryBeritaAcaraHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qryBeritaAcaraHd,True, True);

end;

procedure TfmBeritaAcara.qryBeritaAcaraDtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BeritaAcaraDt',hasil,action,key);
end;

procedure TfmBeritaAcara.qryBeritaAcaraDtAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BeritaAcaraDt',hasil,action,key);
end;

procedure TfmBeritaAcara.qryBeritaAcaraDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmBeritaAcara.qryBeritaAcaraDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmBeritaAcara.qryBeritaAcaraDtBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmBeritaAcara.qryBeritaAcaraDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('Qty').AsInteger := 0;
  DataSet.FieldByName('QtyKonosemen').AsInteger := 0;
  DataSet.FieldByName('QtySelisih').AsInteger := 0;
  DataSet.FieldByName('QtyOutstanding').AsInteger := 0;

end;

procedure TfmBeritaAcara.qryBeritaAcaraHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BeritaAcaraHd',hasil,action,key);
end;

procedure TfmBeritaAcara.qryBeritaAcaraHdAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('BeritaAcaraHd',hasil,action,key);
end;

procedure TfmBeritaAcara.qryBeritaAcaraHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmBeritaAcara.qryBeritaAcaraHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmBeritaAcara.qryBeritaAcaraHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmBeritaAcara.RefreshAll;
begin
  inherited;

  LockRefresh(qryBeritaAcaraHd);
  LockRefresh(qryPrevBongkaran);
  LockRefresh(qryPrevMerek);
  LockRefresh(qryBeritaAcaraDt);
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(dmEkspedisi.qryUnitMeasure);
  LockRefresh(qryLogBeritaAcara);

end;

end.



