unit frmMasterGaji;

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
  cxCalc, cxImageComboBox, cxCheckBox, cxMemo, cxCalendar, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  ExtCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ADODB;

type
  TfmMasterGaji = class(TFormUniMasterEx)
    Panel1: TPanel;
    cgMasterSetup: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgSettingGajiSyarat: TcxGrid;
    cgSettingGajiSyaratLevel1: TcxGridLevel;
    cgvSettingGajiSyarat: TcxGridDBTableView;
    cgvSyaratHd: TcxGridDBTableView;
    cgvSyaratHdnosyarat: TcxGridDBColumn;
    cgvSyaratHdnamasyarat: TcxGridDBColumn;
    cgvSyaratHdqtyhari: TcxGridDBColumn;
    cgvSyaratHdterlambat: TcxGridDBColumn;
    cgvSyaratHdkoefisien: TcxGridDBColumn;
    cgvSyaratHdstatusproses: TcxGridDBColumn;
    cgvSyaratHdflagexecutequery: TcxGridDBColumn;
    cgvSyaratHdsyntaxquery: TcxGridDBColumn;
    cgvSyaratHdgrouping: TcxGridDBColumn;
    cgvSyaratHdflagbayarsesuaitglproses: TcxGridDBColumn;
    cgvSyaratDt: TcxGridDBTableView;
    cgvSyaratDt2: TcxGridDBTableView;
    cgvSyaratDt2nosyarat: TcxGridDBColumn;
    cgvSyaratDt2no: TcxGridDBColumn;
    cgvSyaratDt2kodeabsen: TcxGridDBColumn;
    cgvSyaratDtnosyarat: TcxGridDBColumn;
    cgvSyaratDtno: TcxGridDBColumn;
    cgvSyaratDtmodesyarat: TcxGridDBColumn;
    cgvSyaratDtqtymode: TcxGridDBColumn;
    cgvSyaratDturut: TcxGridDBColumn;
    cgvSyaratDtmodeoperator: TcxGridDBColumn;
    cgvSyaratDtGroup: TcxGridDBColumn;
    cgSettingGajiNominal: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    Label1: TLabel;
    dbeKodeGroupGaji: TcxDBTextEdit;
    dbeNamaGroupGaji: TcxDBTextEdit;
    Label2: TLabel;
    cgvSettingGajiNominal: TcxGridDBTableView;
    cgvSettingGajiSyaratkodegroupgaji: TcxGridDBColumn;
    cgvSettingGajiSyaratpayrolltype: TcxGridDBColumn;
    cgvSettingGajiSyaratnosyarat: TcxGridDBColumn;
    cgvSettingGajiSyaratkoefisien: TcxGridDBColumn;
    btnGetId: TcxButton;
    cgvExplorerkodegroupgaji: TcxGridDBColumn;
    cgvExplorernamagroupgaji: TcxGridDBColumn;
    Splitter1: TSplitter;
    ActCopy: TAction;
    ActOK: TAction;
    BCopy: TcxButton;
    BOK: TcxButton;
    lcbGroupGaji2: TcxExtLookupComboBox;
    dsSettingGajiNominal: TDataSource;
    dsSettingGajiSyarat: TDataSource;
    dsGroupGaji2: TDataSource;
    cgvGroupGaji2: TcxGridDBTableView;
    cgvGroupGaji2kodegroupgaji: TcxGridDBColumn;
    cgvGroupGaji2namagroupgaji: TcxGridDBColumn;
    cgvSettingGajiNominaltglberlaku: TcxGridDBColumn;
    cgvSettingGajiNominalkodegroupgaji: TcxGridDBColumn;
    cgvSettingGajiNominalpayrolltype: TcxGridDBColumn;
    cgvSettingGajiNominalnominal: TcxGridDBColumn;
    qryCopyGroupGaji: TADOQuery;
    qrySettingGajiSyarat: TADOQuery;
    qrySettingGajiNominal: TADOQuery;
    qryGroupGaji: TADOQuery;
    qryGroupGaji2: TADOQuery;
    Label9: TLabel;
    Label3: TLabel;
    procedure ActOKExecute(Sender: TObject);
    procedure ActCopyExecute(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure qryGroupGajiBeforePost(DataSet: TDataSet);
    procedure qryGroupGajiAfterPost(DataSet: TDataSet);
    procedure qryGroupGajiBeforeDelete(DataSet: TDataSet);
    procedure qryGroupGajiAfterDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryCopyGroupGajiAfter(DataSet: TDataSet);
    procedure qryGroupGaji2After(DataSet: TDataSet);
    procedure qrySettingGajiNominalAfter(DataSet: TDataSet);
    procedure qrySettingGajiSyaratAfter(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
    hasil, action : string;
    AFlagBaru : boolean;
  end;

var
  fmMasterGaji: TfmMasterGaji;

implementation

{$R *.dfm}

uses dtmGlobal, dtmgeneral,untProcedure,untConstanta,dtmshare;

procedure TfmMasterGaji.ActCopyExecute(Sender: TObject);
begin
  inherited;
  qryGroupGaji2.Parameters[0].Value:=dbeKodeGroupGaji.EditValue;
  LockRefresh(qryGroupGaji2,false);
  lcbGroupGaji2.Visible:=true;
  lcbGroupGaji2.SetFocus;
  Bok.Visible:=true;
end;

procedure TfmMasterGaji.ActOKExecute(Sender: TObject);
begin
  inherited;
  qryCopyGroupGaji.Parameters[0].Value:=lcbGroupGaji2.EditValue;
  qryCopyGroupGaji.Parameters[1].Value:=dbeKodeGroupGaji.EditValue;
  qryCopyGroupGaji.ExecSQL;
  lcbGroupGaji2.Visible:=false;
  Bok.Visible:=false;
  LockRefresh(qrySettingGajiNominal,false);
  LockRefresh(qrySettingGajiSyarat,false);
end;

procedure TfmMasterGaji.btnGetIdClick(Sender: TObject);
begin
  inherited;
 if qryGroupGaji.State in [dsInsert, dsEdit] then
 begin
  if qryGroupGaji.FieldByName('KodeGroupGaji').isnull then
  begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='MASTERGAJI';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='MASTERGAJI';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
    qryGroupGaji.FieldByName('KodeGroupGaji').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
 end;
end;

procedure TfmMasterGaji.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if qryGroupGaji.State in [dsinsert,dsedit] then
     btngetid.Enabled:=true
  else
     btngetid.Enabled:=false;
end;

procedure TfmMasterGaji.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPayrollType);
  OpenIfClose(dmGeneral.qrySyaratHd);
  OpenIfClose(dmGeneral.qryKodeAbsen );
  OpenIfClose(qryGroupGaji);
  OpenIfClose(qryGroupGaji2);
  OpenIfClose(qrySettingGajiNominal);
  OpenIfClose(qrySettingGajiSyarat);

end;

procedure TfmMasterGaji.qryGroupGaji2After(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('GroupGaji',hasil,action);
end;

procedure TfmMasterGaji.qryGroupGajiAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('GroupGaji',hasil,action);
end;

procedure TfmMasterGaji.qryGroupGajiAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (AFlagBaru=true) then
  begin
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='MASTERGAJI';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
  end;
  dmGeneral.InsertLog('GroupGaji',hasil,action);
end;

procedure TfmMasterGaji.qryGroupGajiBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmMasterGaji.qryGroupGajiBeforePost(DataSet: TDataSet);
begin
  inherited;
  AFlagBaru := false;

  if qryGroupGaji.State in [dsInsert, dsEdit] then
   begin
    if qryGroupGaji.FieldByName('KodeGroupGaji').isnull then
    begin
      AFlagBaru := true;
      dmGeneral.qryGenerateCounter.Close;
      dmGeneral.qryGenerateCounter.Parameters[0].Value:='MASTERGAJI';
      dmGeneral.qryGenerateCounter.Parameters[1].Value:=date;
      dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
      dmGeneral.qryGenerateCounter.Open;
      qryGroupGaji.FieldByName('KodeGroupGaji').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
    end;
   end;

   hasil:=dmGeneral.GetLog(DataSet,Action);

end;

procedure TfmMasterGaji.qrySettingGajiNominalAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('SettingGajiNominal',hasil,action);
end;

procedure TfmMasterGaji.qrySettingGajiSyaratAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('SettingGajiSyarat',hasil,action);
end;

procedure TfmMasterGaji.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmMasterGaji.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmMasterGaji.qryCopyGroupGajiAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('GroupGaji',hasil,action);
end;

procedure TfmMasterGaji.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryPayrollType);
  LockRefresh(dmGeneral.qrySyaratHd);
  LockRefresh(dmGeneral.qryKodeAbsen );
  LockRefresh(qryGroupGaji);
  LockRefresh(qryGroupGaji2);
  LockRefresh(qrySettingGajiNominal);
  LockRefresh(qrySettingGajiSyarat);
end;

end.
