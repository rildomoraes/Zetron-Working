unit frmTransaksiLembur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxMemo, cxDBEdit, cxSpinEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls;

type
  TfmTransaksiLembur = class(TFormUniTransactionEx)
    qryTransaksi: TZQuery;
    lblCountryId: TLabel;
    dbeNoReg: TcxDBTextEdit;
    dbeNoPeg: TcxDBExtLookupComboBox;
    Label2: TLabel;
    Label7: TLabel;
    dbeNama: TcxDBExtLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    dbeKode: TcxDBExtLookupComboBox;
    dbeTgl1: TcxDBDateEdit;
    Label6: TLabel;
    Label11: TLabel;
    dbeTgl2: TcxDBDateEdit;
    dbeLama: TcxDBSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    dbeKeterangan: TcxDBMemo;
    lDepartemen: TLabel;
    lDivisi: TLabel;
    lPerusahaan: TLabel;
    cgTransaksiCuti: TcxGrid;
    cgvTransaksi: TcxGridDBTableView;
    cgvTransaksinamaperusahaan: TcxGridDBColumn;
    cgvTransaksinamadivisi: TcxGridDBColumn;
    cgvTransaksinamadepartemen: TcxGridDBColumn;
    cgvTransaksinopeg: TcxGridDBColumn;
    cgvTransaksinama: TcxGridDBColumn;
    cgvTransaksinoreg: TcxGridDBColumn;
    cgvTransaksikodeabsen: TcxGridDBColumn;
    cgvTransaksilama: TcxGridDBColumn;
    cgvTransaksidaritgl: TcxGridDBColumn;
    cgvTransaksisampaitgl: TcxGridDBColumn;
    cgvTransaksiketerangan: TcxGridDBColumn;
    cgTransaksiCutiLevel1: TcxGridLevel;
    btnGetId: TcxButton;
    btnDelete: TcxButton;
    ActDelete: TAction;
    procedure ActDeleteExecute(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure dbeNamaPropertiesEditValueChanged(Sender: TObject);
    procedure qryTransaksiNewRecord(DataSet: TDataSet);
    procedure qryTransaksiBeforePost(DataSet: TDataSet);
    procedure dbeNoPegPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    procedure Isi;
  public
    { Public declarations }
  end;

var
  fmTransaksiLembur: TfmTransaksiLembur;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, dtmShare,DateUtils;


{ TFormUniTransaction1 }

procedure TfmTransaksiLembur.ActDeleteExecute(Sender: TObject);
begin
  inherited;
  qryTransaksi.Delete;
end;

procedure TfmTransaksiLembur.btnGetIdClick(Sender: TObject);
begin
  inherited;
  if (qryTransaksi.FieldByName('notransaksiabsen').IsNull) or (qryTransaksi.FieldByName('notransaksiabsen').asstring='') then
  begin
    qryTransaksi.FieldByName('notransaksiabsen').AsString :=dmShare.GetCurrentTransactionId(tmTransaksi, qryTransaksi.FieldByName('daritgl').AsDateTime);
  end;
end;

procedure TfmTransaksiLembur.dbeNamaPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Isi;
end;

procedure TfmTransaksiLembur.dbeNoPegPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  isi;
end;

procedure TfmTransaksiLembur.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;

  if qryTransaksi.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'daritgl') = 0) or (CompareText(Field.FieldName, 'sampaitgl') = 0) then
    begin
      if (qryTransaksi.FieldByName('daritgl').asdatetime>qryTransaksi.FieldByName('sampaitgl').asdatetime) and (not(qryTransaksi.FieldByName('Daritgl').IsNull)) and (not(qryTransaksi.FieldByName('sampaitgl').IsNull)) then
      begin
        qryTransaksi.FieldByName('lama').asinteger:=0;
        showmessage('Sampai Tgl < Dari Tgl !!!');
        qryTransaksi.Cancel;
      end
      else
        qryTransaksi.FieldByName('lama').asinteger:=DaysBetween(qryTransaksi.FieldByName('daritgl').asdatetime,qryTransaksi.FieldByName('sampaitgl').asdatetime)+1;
    end;
  end;
end;

procedure TfmTransaksiLembur.InitForm;
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
  OpenIfClose(qryTransaksi,false,true);
  
  SetReadOnly(cgvTransaksi);
end;

procedure TfmTransaksiLembur.Isi;
begin
  if dbeNoPeg.EditValue<>null then 
  begin
    lPerusahaan.Caption:=dmGeneral.cgvPrevPegawaiActivenamaperusahaan.EditValue;
    lDivisi.Caption:=dmGeneral.cgvPrevPegawaiActivenamadivisi.EditValue;
    lDepartemen.Caption:=dmGeneral.cgvPrevPegawaiActivenamadepartemen.EditValue;
  end
  else
  begin
    lPerusahaan.Caption:='';
    lDivisi.Caption:='';
    lDepartemen.Caption:='';
  end
end;

procedure TfmTransaksiLembur.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryTransaksi.State in [dsEdit, dsInsert]) then
    Abort;

  dmGeneral.periode:=EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);

  dmGeneral.qryPrevPegawaiActive.Params[0].Value:=FormatDateTime('yyyy/mm/dd',EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(dmGeneral.qryPrevPegawaiActive,true);

  qryTransaksi.Params[0].Value :=
    FormatDateTime('YYYYMM', EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(qryTransaksi,true);

end;

procedure TfmTransaksiLembur.qryTransaksiBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('notransaksiabsen').IsNull) or (DataSet.FieldByName('notransaksiabsen').asstring='') then
  begin
    DataSet.FieldByName('notransaksiabsen').AsString :=dmShare.GetCurrentTransactionId(tmTransaksi, DataSet.FieldByName('daritgl').AsDateTime);
  end;
end;

procedure TfmTransaksiLembur.qryTransaksiNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('counterprint').AsInteger:=0;
  DataSet.FieldByName('statusapprove').Asstring:='1';
  Isi;
end;

procedure TfmTransaksiLembur.RefreshAll;
begin
  inherited;
  LockRefresh(qryTransaksi);
  LockRefresh(dmGeneral.qryKodeAbsen);
  LockRefresh(dmGeneral.qryPrevPegawaiActive);
end;

end.


