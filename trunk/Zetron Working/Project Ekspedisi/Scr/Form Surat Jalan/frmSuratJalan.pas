unit frmSuratJalan;

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
  cxMemo, cxPC, ADODB, cxCalc, cxCalendar, DateUtils;

type
  TfmSuratJalan = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    pnlOtherInfo: TPanel;
    pnlGrid: TPanel;
    qrySuratJalanHd: TADOQuery;
    pcBody: TcxPageControl;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    cgPrevSuratJalanHd: TcxGrid;
    cgvPrevSuratJalanHd: TcxGridDBTableView;
    cgPrevSuratJalanHdLevel1: TcxGridLevel;
    cgvPrevSuratJalanHdSuratJalanCode: TcxGridDBColumn;
    cgvPrevSuratJalanHdSuratJalanDate: TcxGridDBColumn;
    cgvPrevSuratJalanHdTotalM3: TcxGridDBColumn;
    cgvPrevSuratJalanHdTotalBerat: TcxGridDBColumn;
    cgvPrevSuratJalanHdEmployeeId: TcxGridDBColumn;
    cgvPrevSuratJalanHdStatementMemo: TcxGridDBColumn;
    cgvPrevSuratJalanHdInternalMemo: TcxGridDBColumn;
    cgvPrevSuratJalanHdCounterPrint: TcxGridDBColumn;
    cgvPrevSuratJalanHdStatusApprove: TcxGridDBColumn;
    cgvPrevSuratJalanHdPenerima: TcxGridDBColumn;
    cgSuratJalanDt: TcxGrid;
    cgvSuratJalanDt: TcxGridDBTableView;
    cgSuratJalanDtLevel1: TcxGridLevel;
    qrySuratJalanDt: TADOQuery;
    dsSuratJalanDt: TDataSource;
    cgvSuratJalanDtSuratJalanCode: TcxGridDBColumn;
    cgvSuratJalanDtBeritaAcaraCode: TcxGridDBColumn;
    cgvSuratJalanDtSuppliesCode: TcxGridDBColumn;
    cgvSuratJalanDtSuppliesName: TcxGridDBColumn;
    cgvSuratJalanDtQty: TcxGridDBColumn;
    qryLogSuratJalan: TADOQuery;
    dsLogSuratJalan: TDataSource;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    cgvDependenciesKeyField: TcxGridDBColumn;
    procedure qrySuratJalanHdBeforeInsert(DataSet: TDataSet);
    procedure qrySuratJalanHdBeforePost(DataSet: TDataSet);
    procedure cgvSuratJalanDtNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qrySuratJalanDtBeforePost(DataSet: TDataSet);
    procedure qrySuratJalanHdAfterDelete(DataSet: TDataSet);
    procedure qrySuratJalanHdAfterPost(DataSet: TDataSet);
    procedure qrySuratJalanDtAfterPost(DataSet: TDataSet);
    procedure qrySuratJalanDtAfterDelete(DataSet: TDataSet);
    procedure qrySuratJalanDtBeforeDelete(DataSet: TDataSet);
    procedure qrySuratJalanHdBeforeDelete(DataSet: TDataSet);
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
  fmSuratJalan: TfmSuratJalan;

implementation
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi, frmDisplayBeritaAcara;

{$R *.dfm}

{ TfmSuratJalan }

procedure TfmSuratJalan.cgvSuratJalanDtNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  Qty: integer;
  BeritaAcaraCode, SuppliesCode, SuppliesName : string;
begin
  inherited;

  case AButtonIndex of
    13:
      begin //Insert
       if TfmDisplayBeritaAcara.ExecuteForm(BeritaAcaraCode, SuppliesCode, SuppliesName, Qty) = mrOk then
        begin
          qrySuratJalanDt.Insert;
          qrySuratJalanDt.FieldByName('BeritaAcaraCode').AsString := BeritaAcaraCode;
          qrySuratJalanDt.FieldByName('SuppliesCode').AsString := SuppliesCode;
          qrySuratJalanDt.FieldByName('SuppliesName').AsString := SuppliesName;
          qrySuratJalanDt.FieldByName('Qty').AsInteger := Qty;
        end;
      end;
  end;
end;

procedure TfmSuratJalan.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'SuratJalanCode';
  MonthYearValueChange(nil);

  OpenIfClose(qrySuratJalanHd);
  OpenIfClose(qrySuratJalanDt);
  OpenIfClose(qryLogSuratJalan);

  TcxCalcEditProperties(cgvSuratJalanDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  cgvSuratJalanDt.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;


end;

procedure TfmSuratJalan.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qrySuratJalanHd.Close;
  qrySuratJalanHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));
  qrySuratJalanHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex+1));

  OpenIfClose(qrySuratJalanHd,True, True);

end;

procedure TfmSuratJalan.qrySuratJalanDtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuratJalanDt',hasil,action,key);
end;

procedure TfmSuratJalan.qrySuratJalanDtAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuratJalanDt',hasil,action,key);
end;

procedure TfmSuratJalan.qrySuratJalanDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmSuratJalan.qrySuratJalanDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmSuratJalan.qrySuratJalanHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuratJalanHd',hasil,action,key);
end;

procedure TfmSuratJalan.qrySuratJalanHdAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmEkspedisi.InsertLog('SuratJalanHd',hasil,action,key);
end;

procedure TfmSuratJalan.qrySuratJalanHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmEkspedisi.GetLogDel(DataSet,Action);
end;

procedure TfmSuratJalan.qrySuratJalanHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;

end;

procedure TfmSuratJalan.qrySuratJalanHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
  hasil:=dmEkspedisi.GetLog(DataSet,Action);
end;

procedure TfmSuratJalan.RefreshAll;
begin
  inherited;

  LockRefresh(qrySuratJalanHd);
  LockRefresh(qrySuratJalanDt);
  LockRefresh(qryLogSuratJalan);
end;

end.
