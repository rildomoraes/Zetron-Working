unit frmPayrollRule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxImageComboBox, cxCheckBox, cxCalc, cxMemo, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxContainer, cxTextEdit, StdCtrls, ExtCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ADODB;

type
  TfmPayrollRule = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    Panel1: TPanel;
    lblSuppliesCategory: TLabel;
    dbeNoSyarat: TcxDBTextEdit;
    dbeNamaSyarat: TcxDBTextEdit;
    lblIdSupplies: TLabel;
    dbeJumlahHari: TcxDBTextEdit;
    Label1: TLabel;
    dbeTerlambat1: TcxDBTextEdit;
    cgDetailSyarat2Level1: TcxGridLevel;
    cgDetailSyarat2: TcxGrid;
    dbeGrouping: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbckFlagExecuteQuery: TcxDBCheckBox;
    dbmmQuery: TcxDBMemo;
    cgvDetailSyarat2: TcxGridDBTableView;
    cgvDetailSyarat2nosyarat: TcxGridDBColumn;
    cgvDetailSyarat2no: TcxGridDBColumn;
    cgvDetailSyarat2kodeabsen: TcxGridDBColumn;
    dbimgStatusProses: TcxDBImageComboBox;
    Label8: TLabel;
    dbckFlagBayarSesuai: TcxDBCheckBox;
    cgvExplorernosyarat: TcxGridDBColumn;
    cgvExplorernamasyarat: TcxGridDBColumn;
    cgvExplorerqtyhari: TcxGridDBColumn;
    cgvExplorerterlambat: TcxGridDBColumn;
    cgvExplorerkoefisien: TcxGridDBColumn;
    cgvExplorerstatusproses: TcxGridDBColumn;
    cgvExplorerflagexecutequery: TcxGridDBColumn;
    cgvExplorersyntaxquery: TcxGridDBColumn;
    cgvExplorergrouping: TcxGridDBColumn;
    cgvExplorerflagbayarsesuaitglproses: TcxGridDBColumn;
    cgDetailSyarat1: TcxGrid;
    cgvDetailSyarat1: TcxGridDBTableView;
    cgDetailSyarat1Level1: TcxGridLevel;
    Label3: TLabel;
    dbeTerlambat2: TcxDBTextEdit;
    Label9: TLabel;
    dbckFlagTerlambat: TcxDBCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    dbckFlagSyarat: TcxDBCheckBox;
    cgvDetailSyarat1nosyarat: TcxGridDBColumn;
    cgvDetailSyarat1no: TcxGridDBColumn;
    cgvDetailSyarat1modesyarat: TcxGridDBColumn;
    cgvDetailSyarat1qtymode: TcxGridDBColumn;
    cgvDetailSyarat1urut: TcxGridDBColumn;
    cgvDetailSyarat1modeoperator: TcxGridDBColumn;
    cgvDetailSyarat1Group: TcxGridDBColumn;
    btnGetId: TcxButton;
    Label2: TLabel;
    Splitter1: TSplitter;
    dsSyaratDt: TDataSource;
    dsSyaratDt2: TDataSource;
    qrySyaratHd: TADOQuery;
    cgvExplorerTERLAMBAT1: TcxGridDBColumn;
    cgvExplorerTERLAMBAT2: TcxGridDBColumn;
    cgvExplorerFLAGTERLAMBAT: TcxGridDBColumn;
    cgvExplorerFLAGSYARAT: TcxGridDBColumn;
    Label4: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Splitter2: TSplitter;
    qrySyaratDt: TADODataSet;
    qrySyaratDt2: TADODataSet;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure dbckFlagSyaratPropertiesEditValueChanged(Sender: TObject);
    procedure dbckFlagExecuteQueryPropertiesEditValueChanged(Sender: TObject);
    procedure dbimgStatusProsesPropertiesEditValueChanged(Sender: TObject);
    procedure dbckFlagTerlambatPropertiesEditValueChanged(Sender: TObject);
    procedure qrySyaratHdBeforePost(DataSet: TDataSet);
    procedure qrySyaratHdBeforeDelete(DataSet: TDataSet);
    procedure qrySyaratHdAfterPost(DataSet: TDataSet);
    procedure qrySyaratHdAfterDelete(DataSet: TDataSet);
    procedure qrySyaratDtAfter(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qrySyaratDt2After(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
    hasil, action : string;
    AFlagBaru : boolean;
  public
    { Public declarations }
  end;

var
  fmPayrollRule: TfmPayrollRule;

implementation

{$R *.dfm}

uses dtmGlobal, dtmgeneral,untProcedure,untConstanta,dtmshare;

{ TFormUniMasterEx1 }

procedure TfmPayrollRule.btnGetIdClick(Sender: TObject);
begin
  inherited;
  AFlagBaru := false;

if qrySyaratHd.State in [dsInsert, dsEdit] then
 begin
  if qrySyaratHd.FieldByName('NoSyarat').isnull then
  begin
    AFlagBaru := true;
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLLRULE';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    qrySyaratHd.FieldByName('NoSyarat').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
 end;
end;

procedure TfmPayrollRule.dbckFlagExecuteQueryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dbckFlagExecuteQuery.EditValue='1' then
  begin
     dbmmQuery.Enabled:=true;
  end
  else
  begin
     dbmmQuery.Enabled:=false;
  end;
end;

procedure TfmPayrollRule.dbckFlagSyaratPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dbckFlagSyarat.EditValue='1' then
  begin
     cgvDetailSyarat1.OptionsData.Editing:=true;
     cgvDetailSyarat2.OptionsData.Editing:=true;
  end
  else
  begin
     cgvDetailSyarat1.OptionsData.Editing:=false;
     cgvDetailSyarat2.OptionsData.Editing:=false;
  end;
end;

procedure TfmPayrollRule.dbckFlagTerlambatPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dbckFlagTerlambat.EditValue='1' then
  begin
     dbeTerlambat1.Enabled:=true;
     dbeTerlambat2.Enabled:=true;
  end
  else
  begin
     dbeTerlambat1.Enabled:=false;
     dbeTerlambat2.Enabled:=false;
  end;
end;

procedure TfmPayrollRule.dbimgStatusProsesPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dbimgStatusProses.EditValue='0' then
  begin
     dbeJumlahHari.Enabled:=true;
  end
  else
  begin
     dbeJumlahHari.Enabled:=false;
  end;
end;

procedure TfmPayrollRule.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if qrySyaratHd.State in [dsinsert,dsedit] then
     btngetid.Enabled:=true
  else
     btngetid.Enabled:=false;
end;

procedure TfmPayrollRule.InitForm;
begin
  inherited;

  OpenIfClose(qrySyaratHd, False, False);
  OpenIfClose(qrySyaratDt, False, False);
  OpenIfClose(qrySyaratDt2, False, False);
  OpenIfClose(dmGeneral.qryPayrollType, False, False);
  OpenIfClose(dmGeneral.qryKodeAbsen, False, False);

end;

procedure TfmPayrollRule.qrySyaratDt2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('SyaratDt2',hasil,action);
end;

procedure TfmPayrollRule.qrySyaratDtAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('SyaratDt',hasil,action);
end;

procedure TfmPayrollRule.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmPayrollRule.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmPayrollRule.qrySyaratHdAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('SyaratHd',hasil,action);
end;

procedure TfmPayrollRule.qrySyaratHdAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (AFLagBaru=true) then
  begin
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='PAYROLLRULE';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
  end;
  dmGeneral.InsertLog('SyaratHd',hasil,action);
end;

procedure TfmPayrollRule.qrySyaratHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmPayrollRule.qrySyaratHdBeforePost(DataSet: TDataSet);
begin
  inherited;
  AFlagBaru := false;
  if qrySyaratHd.State in [dsInsert, dsEdit] then
   begin
    if qrySyaratHd.FieldByName('NoSyarat').isnull then
    begin
      AFlagBaru := true;
      dmGeneral.qryGenerateCounter.Close;
      dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLLRULE';
      dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
      dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
      dmGeneral.qryGenerateCounter.Open;
      qrySyaratHd.FieldByName('NoSyarat').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
    end;
   end;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmPayrollRule.RefreshAll;
begin
  inherited;

end;

end.
