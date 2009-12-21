unit frmPengambilanPayroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxCalendar,
  cxDBExtLookupComboBox, cxImageComboBox, cxCalc, MemDS, DBAccess, Uni,
  dxmdaset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxDBEdit, cxDropDownEdit, DBCtrls, ExtCtrls, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, cxButtons,
  ADODB, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPengambilanPayroll = class(TFormUniTransactionEx)
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
    dbePerusahaan: TDBText;
    dbeDivisi: TDBText;
    dbeDepartemen: TDBText;
    dbeNama: TcxDBExtLookupComboBox;
    dbeNoPeg: TcxDBExtLookupComboBox;
    dbeNoPengambilanPayroll: TcxDBTextEdit;
    dbeTglPengambilanPayroll: TcxDBDateEdit;
    btnGetId: TcxButton;
    dbeTotal: TcxDBCalcEdit;
    Splitter1: TSplitter;
    dbimgShift: TcxDBImageComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dbeTgl1: TcxDBDateEdit;
    dbeTgl2: TcxDBDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    dbeShift1: TcxDBImageComboBox;
    dbeShift2: TcxDBImageComboBox;
    Label15: TLabel;
    ActProses: TAction;
    dsPengambilanPayrollDt: TDataSource;
    Label16: TLabel;
    dbeJabatan: TDBText;
    cgTransaksiPayroll: TcxGrid;
    cgvTransaksiPengambilanPayrollHd: TcxGridDBTableView;
    cgvTransaksiPengambilanPayrollHdNopeg: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdNama: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdnamaperusahaan: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdnamadivisi: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdnamadepartemen: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdshift: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdcounterprint: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdstatus: TcxGridDBColumn;
    cgTransaksiPayrollLevel1: TcxGridLevel;
    cgvTransaksiPengambilanPayrollHdnotransaksipengambilan: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdtglpengambilanpayroll: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdpotongan: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdstatusapprove: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdbatastgl1: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdbatastgl2: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdshift1: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdshift2: TcxGridDBColumn;
    btnProses: TcxButton;
    dsPrevKriteria: TDataSource;
    mdPrevKriteria: TdxMemData;
    cbAmbilSemua: TcxCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    cgTransaksiPengambilanPayrollDt: TcxGrid;
    cgvTransaksiPengambilanPayrollDt: TcxGridDBTableView;
    cgvTransaksiPengambilanPayrollDtflagambil: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDttgl: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtnopayroll: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtkodegroupshiftid: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtshift: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtjammasuk: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtjamkeluar: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtm1: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtk1: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtpayrolltype: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtnosyarat: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtbruto: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtpotongan: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtNetto: TcxGridDBColumn;
    cgTransaksiPengambilanPayrollDtLevel1: TcxGridLevel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    btnSimpan: TcxButton;
    ActSimpan: TAction;
    ActDelete: TAction;
    Label17: TLabel;
    Label18: TLabel;
    dbePotongan: TcxDBCalcEdit;
    dbeBruto: TcxDBCalcEdit;
    cgvTransaksiPengambilanPayrollDtambilbruto: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtambilpotongan: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollDtambilnetto: TcxGridDBColumn;
    btnDelete: TcxButton;
    cgvTransaksiPengambilanPayrollHdbruto: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdnetto: TcxGridDBColumn;
    cgvTransaksiPengambilanPayrollHdtglcetak: TcxGridDBColumn;
    DataSource1: TDataSource;
    qryPengambilanPayrollHd: TADOQuery;
    qryPengambilanPayrollDt: TADOQuery;
    qryPrevKriteria: TADOQuery;
    qryHapusPengambilanPayrollDt: TADOQuery;
    cgvTransaksiPengambilanPayrollDtRecId: TcxGridDBColumn;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure dtTglPengambilanPayrollPropertiesEditValueChanged(
      Sender: TObject);
    procedure dbeNoPengambilanPayrollPropertiesEditValueChanged(
      Sender: TObject);
    procedure qryPengambilanPayrollHdBeforePost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure dsPrevKriteriaDataChange(Sender: TObject; Field: TField);
    procedure ActDeleteExecute(Sender: TObject);
    procedure ActSimpanExecute(Sender: TObject);
    procedure cbAmbilSemuaPropertiesEditValueChanged(Sender: TObject);
    procedure qryPengambilanPayrollHdNewRecord(DataSet: TDataSet);
    procedure ActProsesExecute(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
  protected
    FCurrentStatus: byte;
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    function ValidateTransaction(ACheckClosingDate: boolean = True): boolean;
  public
    { Public declarations }
  end;

var
  fmPengambilanPayroll: TfmPengambilanPayroll;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta,dtmglobal,dtmshare, frmPreviewFastReport;

procedure TfmPengambilanPayroll.ActDeleteExecute(Sender: TObject);
begin
  inherited;
  qryPengambilanPayrollHd.Delete;
end;

procedure TfmPengambilanPayroll.actPrintExecute(Sender: TObject);
var
  ATglCetak:tdatetime;
begin
  inherited;
  ATglCetak:=now;
  qryPengambilanPayrollHd.Edit;
  qryPengambilanPayrollHd.FieldByName('tglcetak').asdatetime:=ATglCetak;
  qryPengambilanPayrollHd.Post;
  if qryPengambilanPayrollDt.RecordCount>0 then
     TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPTSLIP1',
       qryPengambilanPayrollHd.FieldByName('notransaksipengambilan').asstring,datetimetostr(ATglCetak), '')
  else
     showmessage('Tidak Ada Gaji Yang Diambil !!!');
end;

procedure TfmPengambilanPayroll.ActProsesExecute(Sender: TObject);
begin
  inherited;
  if (qryPengambilanPayrollHd.State in [dsinsert,dsedit]) and (not(qryPengambilanPayrollHd.fieldbyname('notransaksipengambilan').IsNull)) then
  begin
     qryPengambilanPayrollHd.Post;
  end;
  if (cbAmbilSemua.EditValue<>null) and (dbeTgl1.EditValue<>null) and (dbeTgl2.EditValue<>null) and (dbeShift1.EditValue<>Null) and (dbeShift2.EditValue<>Null)
  and (dbeNoPengambilanPayroll.EditValue<>null) and (dbeNoPeg.EditValue<>null) then
  begin
    qryPrevKriteria.Close;
    qryPrevKriteria.Parameters[0].Value:=dbeTgl1.Date;
    qryPrevKriteria.Parameters[1].Value:=dbeTgl2.Date;
    qryPrevKriteria.Parameters[2].Value:=dbeShift1.EditValue;
    qryPrevKriteria.Parameters[3].Value:=dbeShift2.EditValue;
    qryPrevKriteria.Parameters[4].Value:=dbeNoPengambilanPayroll.EditValue;
    qryPrevKriteria.Parameters[5].Value:=dbeNoPeg.EditValue;
    qryPrevKriteria.Open;
    qryPrevKriteria.First;

    mdPrevKriteria.Close;
    mdPrevKriteria.LoadFromDataSet(qryPrevKriteria);
  end;
end;

procedure TfmPengambilanPayroll.ActSimpanExecute(Sender: TObject);
var
  ANoTransaksiPengambilan:string;
begin
  inherited;
  if not ValidateTransaction then
    Abort;
  if mdPrevKriteria.Active then
  begin
    ANoTransaksiPengambilan:=qryPengambilanPayrollHd.FieldByName('notransaksipengambilan').asstring;
    qryHapusPengambilanPayrollDt.Parameters[0].value:=ANoTransaksiPengambilan;
    qryHapusPengambilanPayrollDt.ExecSQL;
    mdPrevKriteria.First;
    while not(mdPrevKriteria.eof) do
    begin
      if mdPrevKriteria.FieldByName('flagambil').asstring='1' then
      begin
         qryPengambilanPayrollDt.Insert;
         qryPengambilanPayrollDt.FieldByName('notransaksipengambilan').asstring:=ANoTransaksiPengambilan;
         qryPengambilanPayrollDt.FieldByName('nopayroll').asstring:=mdPrevKriteria.FieldByName('nopayroll').asstring;
         qryPengambilanPayrollDt.FieldByName('nosyarat').asstring:=mdPrevKriteria.FieldByName('nosyarat').asstring;
         qryPengambilanPayrollDt.FieldByName('payrolltype').asstring:=mdPrevKriteria.FieldByName('payrolltype').asstring;
         qryPengambilanPayrollDt.Post;
      end;
      mdPrevKriteria.Next;
    end;
    qryPengambilanPayrollHd.Edit;
    qryPengambilanPayrollHd.FieldByName('bruto').AsCurrency:=cgvTransaksiPengambilanPayrollDt.DataController.Summary.FooterSummaryValues[3];
    qryPengambilanPayrollHd.FieldByName('potongan').AsCurrency:=cgvTransaksiPengambilanPayrollDt.DataController.Summary.FooterSummaryValues[5];
    qryPengambilanPayrollHd.FieldByName('netto').AsCurrency:=cgvTransaksiPengambilanPayrollDt.DataController.Summary.FooterSummaryValues[4];
    qryPengambilanPayrollHd.Post;
    ShowMessage('Data Pengambilan Sudah Di Proses !!!');
  end;

end;

procedure TfmPengambilanPayroll.actVoidExecute(Sender: TObject);
begin
  inherited;
  if qryPengambilanPayrollHd.IsEmpty then
    Abort;
  if not (qryPengambilanPayrollHd.State in [dsBrowse]) then
    qryPengambilanPayrollHd.Post;

  // Void Here!
  qryPengambilanPayrollHd.Edit;
  qryPengambilanPayrollHd.FieldByName('StatusApprove').AsString := dmGlobal.SettingGlobal.StatusVoid;
  qryPengambilanPayrollHd.Post;
end;

procedure TfmPengambilanPayroll.btnGetIdClick(Sender: TObject);
begin
  inherited;
  if dmgeneral.qryPegawai.State in [dsInsert, dsEdit] then
  begin
   if dmGeneral.qryPegawai.FieldByName('NoTransaksiPengambilan').isnull then
   begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='AMBILGAJI';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglPengambilanPayroll.Date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='AMBILGAJI';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=dbeTglPengambilanPayroll.Date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
    dmGeneral.qryPegawai.FieldByName('NoTransaksiPengambilan').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
   end;
  end;
end;

procedure TfmPengambilanPayroll.cbAmbilSemuaPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if mdPrevKriteria.Active then
  begin
    mdPrevKriteria.First;
    while not(mdPrevKriteria.eof) do
    begin
      mdPrevKriteria.Edit;
      mdPrevKriteria.FieldByName('flagambil').asstring:=cbAmbilSemua.EditValue;
      mdPrevKriteria.Post;
      mdPrevKriteria.Next;
    end;
  end;
end;

procedure TfmPengambilanPayroll.dbeNoPengambilanPayrollPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (cbAmbilSemua.EditValue<>null) and (dbeTgl1.EditValue<>null) and (dbeTgl2.EditValue<>null) and (dbeShift1.EditValue<>Null) and (dbeShift2.EditValue<>Null)
  and (dbeNoPengambilanPayroll.EditValue<>null) and (dbeNoPeg.EditValue<>null) then
  begin
    qryPrevKriteria.Close;
    qryPrevKriteria.Parameters[0].Value:=qryPengambilanPayrollHd.FieldByName('batastgl1').asdatetime;
    qryPrevKriteria.Parameters[1].Value:=qryPengambilanPayrollHd.FieldByName('batastgl2').asdatetime;
    qryPrevKriteria.Parameters[2].Value:=qryPengambilanPayrollHd.FieldByName('shift1').asstring;
    qryPrevKriteria.Parameters[3].Value:=qryPengambilanPayrollHd.FieldByName('shift2').asstring;
    qryPrevKriteria.Parameters[4].Value:=qryPengambilanPayrollHd.FieldByName('notransaksipengambilan').asstring;
    qryPrevKriteria.Parameters[5].Value:=qryPengambilanPayrollHd.FieldByName('pegawaiid').asstring;
    qryPrevKriteria.Open;

    mdPrevKriteria.Close;
    mdPrevKriteria.LoadFromDataSet(qryPrevKriteria);
  end;
end;

procedure TfmPengambilanPayroll.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if qryPengambilanPayrollHd.State in [dsEdit] then
  begin
    if not ValidateTransaction then
      qryPengambilanPayrollHd.Cancel;
  end;
end;

procedure TfmPengambilanPayroll.dsPrevKriteriaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if mdPrevKriteria.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'FlagAmbil') = 0) or (CompareText(Field.FieldName, 'amount') = 0) then
    begin
      if mdPrevKriteria.fieldbyname('FlagAmbil').asstring='1' then
      begin
       mdPrevKriteria.fieldbyname('ambilbruto').AsCurrency:=mdPrevKriteria.fieldbyname('bruto').AsCurrency;
       mdPrevKriteria.fieldbyname('ambilpotongan').AsCurrency:=mdPrevKriteria.fieldbyname('potongan').AsCurrency;
       mdPrevKriteria.fieldbyname('ambilnetto').AsCurrency:=mdPrevKriteria.fieldbyname('netto').AsCurrency;
      end
      else
      begin
       mdPrevKriteria.fieldbyname('ambilbruto').AsCurrency:=0;
       mdPrevKriteria.fieldbyname('ambilpotongan').AsCurrency:=0;
       mdPrevKriteria.fieldbyname('ambilnetto').AsCurrency:=0;
      end;
    end;
  end;
end;

procedure TfmPengambilanPayroll.dtTglPengambilanPayrollPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if FormatDateTime('yyyy/mm/dd',dbetglpengambilanpayroll.date)<>'0000/00/00' then
  begin
    dmGeneral.qryPrevPegawaiActive.Parameters[0].Value:=FormatDateTime('yyyy/mm/dd',dbetglpengambilanpayroll.date);
    dmGeneral.qryPrevPegawaiActive.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',dbetglpengambilanpayroll.date);
    LockRefresh(dmGeneral.qryPrevPegawaiActive,true);
  end;

end;

procedure TfmPengambilanPayroll.InitForm;
begin
  inherited;

   btnVoid.Visible:=false;
  GetMonthList(cbMonth, dmglobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmglobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbAmbilSemua.EditValue:='1';

  MonthYearValueChange(nil); // -> Trigger

  OpenIfClose(dmGeneral.qryKodeAbsen,false,true);
  OpenIfClose(dmGeneral.qryPrevPegawaiActive,false,true);
  OpenIfClose(dmGeneral.qryTransaksiPayrollHd,false,true);
  OpenIfClose(dmGeneral.qryTransaksiPayrollDt,false,true);
  OpenIfClose(qryPengambilanPayrollDt,false,true);
  OpenIfClose(dmGeneral.qrySyaratHd,false,true);
  OpenIfClose(dmGeneral.qryPayrollType,false,true);
  OpenIfClose(dmGeneral.qryGroupGaji,false,true);
  OpenIfClose(dmGeneral.qryGroupShiftHd,false,true);
  OpenIfClose(dmGeneral.qryGroupShiftDt1,false,true);
  OpenIfClose(qryPengambilanPayrollHd,false,true);

  SetReadOnly(cgvTransaksiPengambilanPayrollHd);
  dbeNoPengambilanPayrollPropertiesEditValueChanged(self);

end;

procedure TfmPengambilanPayroll.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPengambilanPayrollHd.State in [dsEdit, dsInsert]) then
    Abort;

  dmGeneral.periode:=EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);

  dmGeneral.qryPrevPegawaiActive.Parameters[0].Value:=FormatDateTime('yyyy/mm/dd',EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  dmGeneral.qryPrevPegawaiActive.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(dmGeneral.qryPrevPegawaiActive,true);

  qryPengambilanPayrollHd.Close;
  qryPengambilanPayrollHd.Parameters[0].Value :=cbYear.EditValue;
  qryPengambilanPayrollHd.Parameters[1].Value :=cbMonth.ItemIndex + 1;

end;

procedure TfmPengambilanPayroll.qryPengambilanPayrollHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if not ValidateTransaction then
    qryPengambilanPayrollHd.Cancel;
  if dmgeneral.qryPegawai.State in [dsInsert, dsEdit] then
  begin
   if dmGeneral.qryPegawai.FieldByName('NoTransaksiPengambilan').isnull then
   begin
    dmGeneral.qryGenerateCounter.Close;
    dmGeneral.qryGenerateCounter.Parameters[0].Value:='AMBILGAJI';
    dmGeneral.qryGenerateCounter.Parameters[1].Value:=dbeTglPengambilanPayroll.Date;
    dmGeneral.qryGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryGenerateCounter.Open;
    dmGeneral.qryspGenerateCounter.Close;
    dmGeneral.qryspGenerateCounter.Parameters[0].Value:='AMBILGAJI';
    dmGeneral.qryspGenerateCounter.Parameters[1].Value:=dbeTglPengambilanPayroll.Date;
    dmGeneral.qryspGenerateCounter.Parameters[2].Value:='';
    dmGeneral.qryspGenerateCounter.ExecSQL;
    dmGeneral.qryPegawai.FieldByName('NoTransaksiPengambilan').AsVariant := dmGeneral.qryGenerateCounter.FieldByName('GenCounter').Text;
   end;
  end;
end;

procedure TfmPengambilanPayroll.qryPengambilanPayrollHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('pegawaiid').Value:=Null;
    DataSet.FieldByName('batastgl1').AsDateTime:=Date;
    DataSet.FieldByName('batastgl2').AsDateTime:=Date;
    DataSet.FieldByName('shift1').Asstring:='1';
    DataSet.FieldByName('shift2').Asstring:='1';
    DataSet.FieldByName('bruto').AsCurrency:=0;
    DataSet.FieldByName('potongan').AsCurrency:=0;
    DataSet.FieldByName('netto').AsCurrency:=0;
    DataSet.FieldByName('statusapprove').Asstring:='1';
    DataSet.FieldByName('counterprint').AsCurrency:=0;
  end;
end;

procedure TfmPengambilanPayroll.RefreshAll;
begin
  inherited;
  LockRefresh(dmGeneral.qryKodeAbsen,false);
  LockRefresh(dmGeneral.qryPrevPegawaiActive,false);
  LockRefresh(dmGeneral.qryTransaksiPayrollHd,false);
  LockRefresh(dmGeneral.qryTransaksiPayrollDt,false);
  LockRefresh(qryPengambilanPayrollHd,false);
  LockRefresh(qryPengambilanPayrollDt,false);
  LockRefresh(dmGeneral.qrySyaratHd,false);
  LockRefresh(dmGeneral.qryPayrollType,false);
  LockRefresh(dmGeneral.qryGroupGaji,false);
  LockRefresh(dmGeneral.qryGroupShiftHd,false);
  LockRefresh(dmGeneral.qryGroupShiftDt1,false);
end;

function TfmPengambilanPayroll.ValidateTransaction(
  ACheckClosingDate: boolean): boolean;
var
  Status: string;
begin
  Result := False;

  // Checking closing here
  if ACheckClosingDate then
  begin
    if qryPengambilanPayrollHd.FieldByName('tglpengambilanpayroll').AsDateTime <= dmShare.OptionClosingDate then
    begin
      MessageDlg(MSG_TRANSACTION_ALREADY_CLOSING_DATE, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  // If state is insert don't check status
  if qryPengambilanPayrollHd.State in [dsInsert] then
  begin
    Result := True;
    Exit;
  end;

  // Check Status Transaction here
  Status := dmShare.GetTransactionStatus(tmPengambilanPayroll, qryPengambilanPayrollHd.FieldByName('notransaksipengambilan').AsString);
  if Status = dmGlobal.SettingGlobal.StatusVoid then
  begin
    MessageDlg(MSG_TRANSACTION_ALREADY_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
end;

end.
