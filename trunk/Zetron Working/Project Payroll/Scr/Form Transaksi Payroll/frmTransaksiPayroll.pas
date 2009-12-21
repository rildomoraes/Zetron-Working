unit frmTransaksiPayroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalc, cxCalendar, cxImageComboBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxDropDownEdit, DBCtrls,
  ExtCtrls, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, ADODB;

type
  TfmTransaksiPayroll = class(TFormUniTransactionEx)
    Panel1: TPanel;
    lblPerusahaan: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dbeNama: TcxDBExtLookupComboBox;
    dbeNoPeg: TcxDBExtLookupComboBox;
    dbeNoPayroll: TcxDBTextEdit;
    dbeTglPayroll: TcxDBDateEdit;
    cgvTransaksiPayrollDt: TcxGridDBTableView;
    cgTransaksiPayrollDtLevel1: TcxGridLevel;
    cgTransaksiPayrollDt: TcxGrid;
    cgvTransaksiPayrollDtnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrollDtpayrolltype: TcxGridDBColumn;
    cgvTransaksiPayrollDtnosyarat: TcxGridDBColumn;
    cgvTransaksiPayrollDtkoefisien: TcxGridDBColumn;
    cgvTransaksiPayrollDtamount: TcxGridDBColumn;
    cgvTransaksiPayrollDttotal: TcxGridDBColumn;
    cgTransaksiPayroll: TcxGrid;
    cgvTransaksiPayroll: TcxGridDBTableView;
    cgvTransaksiPayrollNopeg: TcxGridDBColumn;
    cgvTransaksiPayrollNama: TcxGridDBColumn;
    cgvTransaksiPayrollnamaperusahaan: TcxGridDBColumn;
    cgvTransaksiPayrollnamadivisi: TcxGridDBColumn;
    cgvTransaksiPayrollnamadepartemen: TcxGridDBColumn;
    cgTransaksiPayrollLevel1: TcxGridLevel;
    dbeShift: TcxDBExtLookupComboBox;
    cgvTransaksiPayrollnopayroll: TcxGridDBColumn;
    cgvTransaksiPayrolltglpayroll: TcxGridDBColumn;
    cgvTransaksiPayrollkodegroupgaji: TcxGridDBColumn;
    cgvTransaksiPayrollkodegroupshiftid: TcxGridDBColumn;
    cgvTransaksiPayrollshift: TcxGridDBColumn;
    cgvTransaksiPayrolltotal: TcxGridDBColumn;
    cgvTransaksiPayrollcounterprint: TcxGridDBColumn;
    cgvTransaksiPayrollstatus: TcxGridDBColumn;
    Splitter1: TSplitter;
    dbePerusahaan: TDBText;
    dbeDivisi: TDBText;
    dbeDepartemen: TDBText;
    btnGetId: TcxButton;
    Label13: TLabel;
    dbImgStatus: TcxDBImageComboBox;
    dsTransaksiPayrollDt: TDataSource;
    dbeTotal: TcxDBCalcEdit;
    btnDelete: TcxButton;
    ActDelete: TAction;
    qryPegawaiGroupGaji: TADOQuery;
    qryTransaksiPayrollHd: TADOQuery;
    qryTransaksiPayrollDt: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure dtTglPayrollPropertiesEditValueChanged(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure qryTransaksiPayrollDtNewRecord(DataSet: TDataSet);
    procedure qryTransaksiPayrollDtBeforePost(DataSet: TDataSet);
    procedure qryTransaksiPayrollHdBeforePost(DataSet: TDataSet);
    procedure qryTransaksiPayrollHdNewRecord(DataSet: TDataSet);
    procedure dsTransaksiPayrollDtStateChange(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsTransaksiPayrollDtDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure btnGetIdClick(Sender: TObject);
    function ValidateTransaction(ACheckClosingDate: boolean = True): boolean;
    procedure qryTransaksiPayrollDtAfterPost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    var AFlagBaru : boolean;
  public
    { Public declarations }
  end;

var
  fmTransaksiPayroll: TfmTransaksiPayroll;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta,dtmglobal,dtmshare;

{ TFormUniTransactionEx1 }

procedure TfmTransaksiPayroll.ActDeleteExecute(Sender: TObject);
begin
  inherited;
  qryTransaksiPayrollHd.delete;
end;

procedure TfmTransaksiPayroll.btnGetIdClick(Sender: TObject);
begin
  inherited;
 if qryTransaksiPayrollHd.State in [dsInsert, dsEdit] then
 begin
  if qryTransaksiPayrollHd.FieldByName('NoPayroll').isnull then
  begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglPayroll.date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=dbeTglPayroll.date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
    qryTransaksiPayrollHd.FieldByName('NoPayroll').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
 end;
end;

procedure TfmTransaksiPayroll.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if qryTransaksiPayrollHd.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'pegawaiid') = 0) then
    begin
      qryTransaksiPayrollHd.FieldByName('kodegroupgaji').asstring:=qryPegawaiGroupGaji.FieldByName('kodegroupgaji').asstring;
      qryTransaksiPayrollHd.FieldByName('kodegroupshiftid').asstring:=dmgeneral.qryPrevPegawaiActive.FieldByName('kodegroupshiftid').asstring;
      qryTransaksiPayrollHd.FieldByName('shift').asstring:=dmgeneral.qryPrevPegawaiActive.FieldByName('shift').asstring;
    end;
  end;
end;

procedure TfmTransaksiPayroll.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if qryTransaksiPayrollHd.State in [dsEdit] then
  begin
    if not ValidateTransaction then
      qryTransaksiPayrollHd.Cancel;
  end;

end;

procedure TfmTransaksiPayroll.dsTransaksiPayrollDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if qryTransaksiPayrollDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'koefisien') = 0) or (CompareText(Field.FieldName, 'amount') = 0) then
    begin
      if not(qryTransaksiPayrollDt.fieldbyname('payrolltype').IsNull) then
      begin
       qryTransaksiPayrollDt.FieldByName('total').AsCurrency:=qryTransaksiPayrollDt.FieldByName('koefisien').AsCurrency*qryTransaksiPayrollDt.FieldByName('amount').AsCurrency;
       qryTransaksiPayrollHd.Edit;
       qryTransaksiPayrollHd.FieldByName('total').AsCurrency:=cgvTransaksiPayrollDt.DataController.Summary.FooterSummaryValues[0];
       qryTransaksiPayrollHd.Post;
      end;
    end;
  end;
end;

procedure TfmTransaksiPayroll.dsTransaksiPayrollDtStateChange(Sender: TObject);
begin
  inherited;
  if qryTransaksiPayrollDt.State in [dsInsert, dsEdit] then
  begin
    if not ValidateTransaction then
      qryTransaksiPayrollDt.Cancel;
  end;
end;

procedure TfmTransaksiPayroll.dtTglPayrollPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if FormatDateTime('yyyy/mm/dd',dbetglpayroll.date)<>'0000/00/00' then
  begin
    dmGeneral.qryPrevPegawaiActive.Parameters[0].Value:=FormatDateTime('yyyy/mm/dd',dbetglpayroll.date);
    dmGeneral.qryPrevPegawaiActive.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',dbetglpayroll.date);
    LockRefresh(dmGeneral.qryPrevPegawaiActive,true);
  end;

end;

procedure TfmTransaksiPayroll.InitForm;
begin
  inherited;

  btnVoid.Visible:=false;
  GetMonthList(cbMonth, dmglobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmglobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  MonthYearValueChange(nil); // -> Trigger

  OpenIfClose(dmGeneral.qryKodeAbsen,false,true);
  OpenIfClose(dmGeneral.qryPrevPegawaiActive,false,true);
  OpenIfClose(qryTransaksiPayrollHd,false,true);
  OpenIfClose(qryTransaksiPayrollDt,false,true);
  OpenIfClose(dmGeneral.qrySyaratHd,false,true);
  OpenIfClose(dmGeneral.qryPayrollType,false,true);
  OpenIfClose(dmGeneral.qryGroupGaji,false,true);
  OpenIfClose(dmGeneral.qryGroupShiftHd,false,true);
  OpenIfClose(dmGeneral.qryGroupShiftDt1,false,true);
  OpenIfClose(qryPegawaiGroupGaji,false,true);

  SetReadOnly(cgvTransaksiPayroll);
end;

procedure TfmTransaksiPayroll.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryTransaksiPayrollHd.State in [dsEdit, dsInsert]) then
    Abort;

  dmGeneral.periode:=EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);

  dmGeneral.qryPrevPegawaiActive.Parameters[0].Value:=FormatDateTime('yyyy/mm/dd',EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  dmGeneral.qryPrevPegawaiActive.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(dmGeneral.qryPrevPegawaiActive,true);

  qryTransaksiPayrollHd.Parameters[0].Value :=cbYear.EditValue;
  qryTransaksiPayrollHd.Parameters[1].Value :=cbMonth.ItemIndex + 1;
  LockRefresh(qryTransaksiPayrollHd,true);
end;

procedure TfmTransaksiPayroll.qryTransaksiPayrollDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  if (AFlagBaru=true) then
  begin
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=dbeTglPayroll.date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
  end;
end;

procedure TfmTransaksiPayroll.qryTransaksiPayrollDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if not ValidateTransaction then
    qryTransaksiPayrollHd.Cancel;

 if qryTransaksiPayrollHd.State in [dsInsert, dsEdit] then
 begin
  AFlagBaru := false;
  if qryTransaksiPayrollHd.FieldByName('NoPayroll').isnull then
  begin
    AFlagBaru := true;
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='PAYROLL';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglPayroll.date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryPegawai.FieldByName('NoPayroll').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
  end;
 end;
end;

procedure TfmTransaksiPayroll.qryTransaksiPayrollDtNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('koefisien').AsCurrency:=1;
end;

procedure TfmTransaksiPayroll.qryTransaksiPayrollHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if not ValidateTransaction then
    qryTransaksiPayrollHd.Cancel;

end;

procedure TfmTransaksiPayroll.qryTransaksiPayrollHdNewRecord(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('tglpayroll').AsDateTime:=dmGlobal.SettingGlobal.ServerDateTime;
    DataSet.FieldByName('total').AsCurrency:=0;
    DataSet.FieldByName('counterprint').AsCurrency:=0;
    DataSet.FieldByName('statusapprove').AsString:='1';
    DataSet.FieldByName('status').AsString:='0';
  end;
end;

procedure TfmTransaksiPayroll.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryKodeAbsen,false);
  LockRefresh(dmGeneral.qryPrevPegawaiActive,false);
  LockRefresh(qryTransaksiPayrollHd,false);
  LockRefresh(qryTransaksiPayrollDt,false);
  LockRefresh(dmGeneral.qrySyaratHd,false);
  LockRefresh(dmGeneral.qryPayrollType,false);
  LockRefresh(dmGeneral.qryGroupGaji,false);
  LockRefresh(dmGeneral.qryGroupShiftHd,false);
  LockRefresh(dmGeneral.qryGroupShiftDt1,false);
  LockRefresh(qryPegawaiGroupGaji,false);
end;

function TfmTransaksiPayroll.ValidateTransaction(
  ACheckClosingDate: boolean): boolean;
var
  Status: string;
begin
  Result := False;

  // Checking closing here
  if ACheckClosingDate then
  begin
    if qryTransaksiPayrollHd.FieldByName('tglpayroll').AsDateTime <= dmShare.OptionClosingDate then
    begin
      MessageDlg(MSG_TRANSACTION_ALREADY_CLOSING_DATE, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  // If state is insert don't check status
  if qryTransaksiPayrollHd.State in [dsInsert] then
  begin
    Result := True;
    Exit;
  end;

  // Check Status Transaction here
  Status := dmShare.GetTransactionStatus(tmPengambilanPayroll, qryTransaksiPayrollHd.FieldByName('nopayroll').AsString);
  if Status = dmGlobal.SettingGlobal.StatusVoid then
  begin
    MessageDlg(MSG_TRANSACTION_ALREADY_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
end;

end.
