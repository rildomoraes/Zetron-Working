unit frmSPL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalendar, cxTextEdit, cxRichEdit, cxTimeEdit, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBEdit, cxImageComboBox,
  cxContainer, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB;

type
  TfmSPL = class(TFormUniTransactionEx)
    dsSPL: TDataSource;
    cgSPL: TcxGrid;
    cgvSPL: TcxGridDBTableView;
    cgvSPLtanggal: TcxGridDBColumn;
    cgvSPLnopeg: TcxGridDBColumn;
    cgvSPLnama: TcxGridDBColumn;
    cgvSPLperusahaan: TcxGridDBColumn;
    cgvSPLdivisi: TcxGridDBColumn;
    cgvSPLdepartemen: TcxGridDBColumn;
    cgvSPLpegawaiid: TcxGridDBColumn;
    cgvSPLshift: TcxGridDBColumn;
    cgvSPLkodeperusahaan: TcxGridDBColumn;
    cgvSPLkodedivisi: TcxGridDBColumn;
    cgvSPLkodedepartemen: TcxGridDBColumn;
    cgvSPLjammulai: TcxGridDBColumn;
    cgvSPLpekerjaan: TcxGridDBColumn;
    cgvSPLjamakhir: TcxGridDBColumn;
    cgvSPLbatal: TcxGridDBColumn;
    cgvSPLketerangan: TcxGridDBColumn;
    cgvSPLkodestatus: TcxGridDBColumn;
    cgvSPLkodegroupshiftid: TcxGridDBColumn;
    cgvSPLjumlembur: TcxGridDBColumn;
    cgSPLLevel1: TcxGridLevel;
    Panel1: TPanel;
    dbeTanggal: TcxDateEdit;
    Label2: TLabel;
    Label5: TLabel;
    lcbGroupShift: TcxExtLookupComboBox;
    lcbShift: TcxExtLookupComboBox;
    Label6: TLabel;
    cgLembur: TcxGrid;
    cgvLembur: TcxGridDBTableView;
    cgvLemburNoPeg: TcxGridDBColumn;
    cgvLemburNama: TcxGridDBColumn;
    cgvLemburjammulai: TcxGridDBColumn;
    cgvLemburjamakhir: TcxGridDBColumn;
    cgvLemburpekerjaan: TcxGridDBColumn;
    cgvLemburketerangan: TcxGridDBColumn;
    cgvLemburjumlembur: TcxGridDBColumn;
    cgvLemburPerusahaan: TcxGridDBColumn;
    cgvLemburDivisi: TcxGridDBColumn;
    cgvLemburnoreg: TcxGridDBColumn;
    cgvUnSelect: TcxGridDBTableView;
    cgvUnSelectpegawaiid: TcxGridDBColumn;
    cgvUnSelectnopeg: TcxGridDBColumn;
    cgvUnSelectnama: TcxGridDBColumn;
    cgvUnSelecttglmasuk: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ActIsiPrevPegawai: TAction;
    cxButton1: TcxButton;
    cgvLemburDepartemen: TcxGridDBColumn;
    cgvLemburjumistirahat: TcxGridDBColumn;
    qrySPL: TADOQuery;
    qryLembur: TADOQuery;
    qryCariAbsenSPL: TADOQuery;
    qryUbah: TADOQuery;
    cgvLemburtgl: TcxGridDBColumn;
    cgvLemburkodegroupshiftid: TcxGridDBColumn;
    cgvLemburshift: TcxGridDBColumn;
    cgvLemburbatal: TcxGridDBColumn;
    cgvLemburcounterprint: TcxGridDBColumn;
    cgvLemburstatusapprove: TcxGridDBColumn;
    cgvLemburflaganomali: TcxGridDBColumn;
    cgvLemburemployeeid: TcxGridDBColumn;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure qryLemburBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure ActIsiPrevPegawaiExecute(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure qryLemburAfterDelete(DataSet: TDataSet);
    procedure qryLemburNewRecord(DataSet: TDataSet);
    procedure qryLemburAfterPost(DataSet: TDataSet);
    procedure cgvSPLFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    function gabungtanggal(Atime: tdatetime; AHariIni: ttime): tdatetime;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
    function checkisi:boolean;
    procedure IsiPrevPegawai;
    procedure Refresh;
  public
    { Public declarations }
  end;

var
  fmSPL: TfmSPL;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, dtmShare,DateUtils;

{ TFormUniTransaction1 }

procedure TfmSPL.Refresh;
begin
  if checkisi then
  begin
    qryLembur.Parameters[0].Value:=dbeTanggal.Date;
    qryLembur.Parameters[1].Value:=lcbGroupShift.EditValue;
    qryLembur.Parameters[2].Value:=lcbShift.EditValue;
    LockRefresh(qryLembur,true);
  end;
end;

procedure TfmSPL.ActIsiPrevPegawaiExecute(Sender: TObject);
begin
  inherited;
  IsiPrevPegawai;
end;

procedure TfmSPL.cgvSPLFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if not(qrySPL.eof)  then
  begin
    dbeTanggal.Date:=qrySPL.FieldByName('tgl').asdatetime;
    lcbGroupShift.EditValue:=qrySPL.FieldByName('kodegroupshiftid').asstring;
    lcbShift.EditValue:=qrySPL.fieldbyname('shift').asstring;
  end;
end;

function TfmSPL.checkisi: boolean;
var
  ok:boolean;
begin
  ok:=false;
  if (dbeTanggal.editvalue<>NULL) and (lcbGroupShift.EditValue<>NULL) and (lcbShift.EditValue<>NULL)  then
  begin
    ok:=true;
  end;
  checkisi:=ok;
end;

procedure TfmSPL.cxButton1Click(Sender: TObject);
begin
  inherited;
  refresh;
{  qryubah.Open;
  qryubah.First;
  while not(qryubah.eof) do
  begin
    qryubah.Edit;
    qryubah.FieldByName('jammulai').asdatetime:=gabungtanggal(qryubah.FieldByName('tgl').asdatetime,qryubah.FieldByName('jammulai2').asdatetime);
    qryubah.FieldByName('jamakhir').asdatetime:=gabungtanggal(qryubah.FieldByName('tgl').asdatetime,qryubah.FieldByName('jamakhir2').asdatetime);
    qryubah.Post;
    qryubah.Next;
  end;}
end;

procedure TfmSPL.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if qryLembur.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'jammulai') = 0) or (CompareText(Field.FieldName, 'jamakhir') = 0) or (CompareText(Field.FieldName, 'jumistirahat') = 0) then
    begin
      if (qryLembur.FieldByName('jammulai').AsDateTime<=qryLembur.FieldByName('jamakhir').AsDateTime) then
      begin
       if (not(qryLembur.FieldByName('jammulai').IsNull)) and (not(qryLembur.FieldByName('jamakhir').IsNull)) then
       begin
//         showmessage(inttostr(MinutesBetween(0,qryLembur.FieldByName('jumistirahat').AsDateTime)));
//         showmessage(inttostr(MinutesBetween(qryLembur.FieldByName('jammulai').AsDateTime,qryLembur.FieldByName('jamakhir').AsDateTime)));
         qryLembur.FieldByName('jumlembur').Asfloat:=roundto((MinutesBetween(qryLembur.FieldByName('jammulai').AsDateTime,qryLembur.FieldByName('jamakhir').AsDateTime)-MinutesBetween(0,qryLembur.FieldByName('jumistirahat').AsDateTime))/60,-1);
       end;
      end
      else
      begin
        if not(qryLembur.FieldByName('jamakhir').isnull) then
        begin
         showmessage('Jam Mulai Tidak Boleh > Dari Jam Akhir !!!'+timetostr(qryLembur.FieldByName('jammulai').asdatetime)+' > '+timetostr(qryLembur.FieldByName('jamakhir').asdatetime));
         qryLembur.Cancel;
        end;
      end;
    end;
    if (CompareText(Field.FieldName, 'pegawaiid') = 0) then
    begin
       qryLembur.FieldByName('noreg').Asstring:=dmGeneral.qryPrevPosisiActiveTglShift.FieldByName('noreg').asstring;
    end;
  end;
end;

procedure TfmSPL.IsiPrevPegawai;
begin
  if checkisi then
  begin
    dmGeneral.qryPrevPosisiActiveTglShift.close;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[0].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[1].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[2].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[3].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[4].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[5].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[6].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[7].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[8].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[9].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[10].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[11].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[12].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[13].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[14].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[15].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[16].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[17].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[18].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[19].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[20].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[21].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[22].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[23].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[24].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[25].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[26].Value:=dbeTanggal.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[27].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[28].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[29].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[30].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[31].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[32].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[33].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[34].Value:='%';
    OpenIfClose(dmgeneral.qryPrevPosisiActiveTglShift,false,true);
    Refresh;
  end;
end;

procedure TfmSPL.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPrevPosisiActiveTglShift, False, True);
  OpenIfClose(dmGeneral.qryPrevPegawai, False, True);
  OpenIfClose(dmGeneral.qryPerusahaan, False, True);
  OpenIfClose(dmGeneral.qryDivisi, False, True);
  OpenIfClose(dmGeneral.qryDepartemen, False, True);
  OpenIfClose(dmGeneral.qryJabatan, False, True);
  OpenIfClose(dmGeneral.qryStatusKaryawan, False, True);
  OpenIfClose(dmGeneral.qryGroupShiftHd, False, True);
  OpenIfClose(dmGeneral.qryGroupShiftDt1, False, True);
  OpenIfClose(qryLembur, False, True);

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  dbeTanggal.Date:=Today;
  lcbGroupShift.editvalue:=dmGeneral.qryGroupShiftHd.FieldByName('kodegroupshiftid').asstring;
  lcbShift.editvalue:=dmGeneral.qryGroupShiftdt1.FieldByName('shift').asstring;

  qrySPL.close;
  MonthYearValueChange(nil); // -> Trigger
  qrySPL.open;
  Refresh;
end;


procedure TfmSPL.MonthYearValueChange(Sender: TObject);
begin
  inherited;
  if (qrySPL.State in [dsEdit, dsInsert]) then
    Abort;
  qrySPL.Parameters[0].Value :=
    FormatDateTime('YYYYMM', EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1));
  LockRefresh(qrySPL,true);

end;

procedure TfmSPL.qryLemburAfterDelete(DataSet: TDataSet);
begin
  inherited;
  MonthYearValueChange(nil); // -> Trigger
  Refresh;
end;

procedure TfmSPL.qryLemburAfterPost(DataSet: TDataSet);
begin
  inherited;
//  MonthYearValueChange(nil); // -> Trigger
//  Refresh;
end;

function TfmSPL.gabungtanggal(Atime: tdatetime; AHariIni: ttime): tdatetime;
var
  AYear,AMonth,ADay:word;
  AHour,AMinute,ASecond,AMiliSecond:word;
begin
  DecodeDateTime(ATime,AYear,AMonth,ADay,AHour,AMinute,ASecond,AMiliSecond);
  DecodeTime(AHariIni,AHour,AMinute,ASecond,AMiliSecond);
  gabungtanggal:=EncodeDateTime(AYear,AMonth,ADay,AHour,AMinute,0,0);
end;

procedure TfmSPL.qryLemburBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryCariAbsenSPL.close;
  qryCariAbsenSPL.Parameters[0].Value:=qryLembur.FieldByName('tgl').asdatetime;
  qryCariAbsenSPL.Parameters[1].Value:=qryLembur.FieldByName('pegawaiid').AsString;
  qryCariAbsenSPL.Parameters[2].Value:=qryLembur.FieldByName('kodegroupshiftid').AsString;
  qryCariAbsenSPL.Parameters[3].Value:=qryLembur.FieldByName('shift').AsString;
  qryCariAbsenSPL.open;
  if qryCariAbsenSPL.recordcount<>0 then
  begin
    if qryLembur.FieldByName('jamakhir').asdatetime>qryCariAbsenSPL.FieldByName('keluar1').asdatetime then
    begin
       DataSet.FieldByName('flaganomali').asstring:='1';
    end;
  end;
end;

procedure TfmSPL.qryLemburNewRecord(DataSet: TDataSet);
begin
  inherited;
  if checkisi then
  begin
    DataSet.FieldByName('tgl').asdatetime:=dbeTanggal.Date;
    DataSet.FieldByName('kodegroupshiftid').asstring:=lcbGroupShift.EditValue;
    DataSet.FieldByName('shift').asstring:=lcbShift.EditValue;
    DataSet.FieldByName('jumlembur').asinteger:=0;
    DataSet.FieldByName('batal').asstring:='0';
    DataSet.FieldByName('counterprint').AsInteger:=0;
    DataSet.FieldByName('statusapprove').Asstring:='1';
    DataSet.FieldByName('flaganomali').Asstring:='0';
  end;
end;

procedure TfmSPL.RefreshAll;
begin
  inherited;

end;

end.
