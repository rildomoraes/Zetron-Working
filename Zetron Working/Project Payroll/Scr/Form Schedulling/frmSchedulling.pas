unit frmSchedulling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, MemDS, DBAccess, Uni,
  cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxProgressBar, cxContainer,
  cxDateNavigator, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  cxButtons, ADODB, DateUtils, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

const
  LOCAL_DAY_IN_IND3: array[1..7] of string = ('Minggu', 'Senin', 'Selasa',
    'Rabu', 'Kamis', 'Jumat', 'Sabtu');
type
  TfmSchedulling = class(TFormUniPosition)
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Panel2: TPanel;
    BSet: TcxButton;
    BUnSet: TcxButton;
    Panel3: TPanel;
    cgUnSelect: TcxGrid;
    cgvUnSelect: TcxGridDBTableView;
    cgvUnSelectpegawaiid: TcxGridDBColumn;
    cgvUnSelectnopeg: TcxGridDBColumn;
    cgvUnSelectnama: TcxGridDBColumn;
    cgvUnSelecttglmasuk: TcxGridDBColumn;
    cgvUnSelectkodeperusahaan: TcxGridDBColumn;
    cgvUnSelectnamaperusahaan: TcxGridDBColumn;
    cgvUnSelectkodedivisi: TcxGridDBColumn;
    cgvUnSelectnamadivisi: TcxGridDBColumn;
    cgvUnSelectkodedepartemen: TcxGridDBColumn;
    cgvUnSelectnamadepartemen: TcxGridDBColumn;
    cgvUnSelecttglkeluar: TcxGridDBColumn;
    cgvUnSelectflagschedule: TcxGridDBColumn;
    cgvUnSelectstpegawai: TcxGridDBColumn;
    cgvUnSelectnamastatus: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    cgSelect: TcxGrid;
    cgvSelect: TcxGridDBTableView;
    cgvSelectpegawaiid: TcxGridDBColumn;
    cgvSelectnopeg: TcxGridDBColumn;
    cgvSelectnama: TcxGridDBColumn;
    cgvSelecttglmasuk: TcxGridDBColumn;
    cgvSelectkodeperusahaan: TcxGridDBColumn;
    cgvSelectnamaperusahaan: TcxGridDBColumn;
    cgvSelectkodedivisi: TcxGridDBColumn;
    cgvSelectnamadivisi: TcxGridDBColumn;
    cgvSelectkodedepartemen: TcxGridDBColumn;
    cgvSelectnamadepartemen: TcxGridDBColumn;
    cgvSelecttglkeluar: TcxGridDBColumn;
    cgvSelectflagschedule: TcxGridDBColumn;
    cgvSelectstpegawai: TcxGridDBColumn;
    cgvSelectnamastatus: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel1: TPanel;
    lblPerusahaan: TLabel;
    lblDivisi: TLabel;
    lblDepartemen: TLabel;
    lblGroupShift: TLabel;
    lblShift: TLabel;
    tanggal: TcxDateNavigator;
    pbProcess: TcxProgressBar;
    dbePerusahaan: TcxExtLookupComboBox;
    BPreview: TcxButton;
    BPrint: TcxButton;
    dblcKodeDivisi: TcxExtLookupComboBox;
    dblcKodeDepartemen: TcxExtLookupComboBox;
    dbeDouble: TcxCheckBox;
    dblcGroupShift: TcxExtLookupComboBox;
    dblcShift: TcxExtLookupComboBox;
    BSimpan: TcxButton;
    dsUnSelect: TDataSource;
    dsSelect: TDataSource;
    dsDraw: TDataSource;
    ActUbah: TAction;
    ActCopy: TAction;
    ActPreview: TAction;
    ActPrint: TAction;
    qryUnSelect: TADOQuery;
    qrySelect: TADOQuery;
    qryDraw: TADOQuery;
    qryCekHari: TADOQuery;
    qrySet: TADOQuery;
    qrySet2: TADOQuery;
    qryCekTerdaftar: TADOQuery;
    qryCekBelumTerdaftar: TADOQuery;
    cgvUnSelectstatusschedule: TcxGridDBColumn;
    cgvUnSelectkodestatus: TcxGridDBColumn;
    cgvSelectstatusschedule: TcxGridDBColumn;
    cgvSelectkodestatus: TcxGridDBColumn;
    procedure ActPrintExecute(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure ActCopyExecute(Sender: TObject);
    procedure ActUbahExecute(Sender: TObject);
    procedure dbePerusahaanPropertiesEditValueChanged(Sender: TObject);
    procedure cgvSelectStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cgvUnSelectStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure BUnSetClick(Sender: TObject);
    procedure BSetClick(Sender: TObject);
    procedure dbeDoublePropertiesEditValueChanged(Sender: TObject);
    procedure tanggalSelectionChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure tanggalPeriodChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure tanggalCustomDrawDayNumber(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
      var ADone: Boolean);
    function cekterdaftarhari(kodegroupshiftid,shift:string;tanggal:tdatetime):boolean;
    function cekbelumterdaftar(AKodeGroupShiftId,AShift,APegawaiid:string;ATgl:tdatetime):boolean;
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    procedure Refresh;
  public
    { Public declarations }
  end;

var
  fmSchedulling: TfmSchedulling;
  FStart,FFinish,FStart2,FFinish2:tdatetime;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGeneral,dtmglobal,frmPrintFastReport,frmPreviewFastReport;


{ TFormUniPosition1 }

procedure TfmSchedulling.ActCopyExecute(Sender: TObject);
var
  i,j:integer;
begin
  inherited;  //validasi apakah pada hari tersebut sudah ditentukan jam masuk dan pulang shiftnya

  pbProcess.Visible := True;
  pbProcess.Properties.Max := qrySelect.RecordCount;
  pbProcess.Refresh;

  qrySelect.First;
  for i := 0 to qrySelect.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    for j := 0 to tanggal.SelectedDays.Count - 1 do
    begin
      if cekterdaftarhari(dblcGroupShift.EditValue,dblcShift.EditValue,tanggal.SelectedDays[j]) then
      begin
        if (qrySelect.fieldbyname('tglkeluar').IsNull) or (qrySelect.fieldbyname('tglkeluar').asdatetime>=tanggal.SelectedDays[j]) then
        begin
          if cekbelumterdaftar(dblcGroupShift.EditValue,dblcShift.EditValue,qrySelect.fieldbyname('pegawaiid').asstring,tanggal.SelectedDays[j]) then
          begin
            qrySet.Parameters[0].value:=dbePerusahaan.EditValue;
            qrySet.Parameters[1].value:=tanggal.SelectedDays[j];
            qrySet.Parameters[2].Value:=dblcGroupShift.EditValue;
            qrySet.Parameters[3].Value:=dblcShift.EditValue;
            qrySet.Parameters[4].Value:=1;
            qrySet.Parameters[5].Value:=qrySelect.fieldbyname('pegawaiid').asstring;
            qrySet.Parameters[6].Value:=dbeDouble.EditValue;
            qrySet.ExecSQL;
          end;
        end;
      end
      else
      begin
        showmessage('Jam Kerja Pada Hari '+LOCAL_DAY_IN_IND3[DayOfWeek(tanggal.SelectedDays[j])]+' Tanggal '+datetostr(tanggal.SelectedDays[j])+' Belum Di Set !!! Set dulu di form jam kerja !!!');
        exit;
      end;
    end;
    qrySelect.Next;
  end;
  pbProcess.Visible := False;
  tanggalPeriodChanged(self,FStart2,FFinish2);
  Refresh;
end;

procedure TfmSchedulling.ActPreviewExecute(Sender: TObject);
begin
  inherited;

  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPT004',
    dblcShift.EditValue,datetostr(FStart),datetostr(FFinish));
end;

procedure TfmSchedulling.ActPrintExecute(Sender: TObject);
begin
  inherited;

  TfmPrintFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, 'RPT004',
    dblcShift.EditValue, datetostr(FStart), datetostr(FFinish));
end;

procedure TfmSchedulling.ActUbahExecute(Sender: TObject);
begin
  inherited;
  if (dbePerusahaan.editvalue<>NULL) and (dblckodedivisi.EditValue<>NULL) and (dblckodedepartemen.EditValue<>NULL) then
  begin
    tanggal.Enabled:=true;
    Refresh;
  end
  else
  begin
    tanggal.Enabled:=false;
  end;
end;

procedure TfmSchedulling.BSetClick(Sender: TObject);
var
  i,j:integer;
begin
  inherited;
  //validasi apakah pada hari tersebut sudah ditentukan jam masuk dan pulang shiftnya

  pbProcess.Visible := True;
  pbProcess.Properties.Max := cgvUnSelect.Controller.SelectedRowCount;
  pbProcess.Refresh;

  for i := 0 to cgvUnSelect.Controller.SelectedRowCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    for j := 0 to tanggal.SelectedDays.Count - 1 do
    begin
      if cekterdaftarhari(dblcGroupShift.EditValue,dblcShift.EditValue,tanggal.SelectedDays[j]) then
      begin
        if (cgvUnSelect.Controller.SelectedRows[i].Values[10]=Null) or (cgvUnSelect.Controller.SelectedRows[i].Values[10]>=tanggal.SelectedDays[j]) then
        begin
          qrySet.Parameters[0].value:=dbePerusahaan.EditValue;
          qrySet.Parameters[1].value:=tanggal.SelectedDays[j];
          qrySet.Parameters[2].Value:=dblcGroupShift.EditValue;
          qrySet.Parameters[3].Value:=dblcShift.EditValue;
          qrySet.Parameters[4].Value:=1;
          qrySet.Parameters[5].Value:=cgvUnSelect.Controller.SelectedRows[i].Values[0];
          qrySet.Parameters[6].Value:=dbeDouble.EditValue;
          qrySet.ExecSQL;
        end;
      end
      else
      begin
        showmessage('Jam Kerja Pada Hari '+LOCAL_DAY_IN_IND3[DayOfWeek(tanggal.SelectedDays[j])]+' Tanggal '+datetostr(tanggal.SelectedDays[j])+' Belum Di Set !!! Set dulu di form jam kerja !!!');
        exit;
      end;
    end;
  end;
  pbProcess.Visible := False;
  tanggalPeriodChanged(self,FStart2,FFinish2);
  Refresh;
end;

procedure TfmSchedulling.BUnSetClick(Sender: TObject);
var
  i,j:integer;
begin
  pbProcess.Visible := True;
  pbProcess.Properties.Max := cgvSelect.Controller.SelectedRowCount;
  pbProcess.Refresh;

  for i := 0 to cgvSelect.Controller.SelectedRowCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    for j := 0 to tanggal.SelectedDays.Count - 1 do
    begin
      qrySet2.Parameters[0].value:=dbePerusahaan.EditValue;
      qrySet2.Parameters[1].value:=tanggal.SelectedDays[j];
      qrySet2.Parameters[2].Value:=dblcGroupShift.EditValue;
      qrySet2.Parameters[3].Value:=dblcShift.EditValue;
      qrySet2.Parameters[4].Value:=cgvSelect.Controller.SelectedRows[i].Values[0];
      qrySet2.ExecSQL;
    end;
  end;
  pbProcess.Visible := False;
  tanggalPeriodChanged(self,FStart2,FFinish2);
  Refresh;
end;

function TfmSchedulling.cekbelumterdaftar(AKodeGroupShiftId, AShift,
  APegawaiid: string; ATgl: tdatetime): boolean;
var
  hari:integer;
  hasil:boolean;
begin
  hasil:=false;
  qryCekBelumTerdaftar.Close;
  qryCekBelumTerdaftar.Parameters[0].Value:=AKodeGroupShiftId;
  qryCekBelumTerdaftar.Parameters[1].Value:=Ashift;
  qryCekBelumTerdaftar.Parameters[2].Value:=APegawaiid;
  qryCekBelumTerdaftar.Parameters[3].Value:=Atgl;
  qryCekBelumTerdaftar.Open;
  if qryCekBelumTerdaftar.RecordCount=0 then
  begin
    hasil:=true;
  end;
  CekBelumTerdaftar:=hasil;
end;

function TfmSchedulling.cekterdaftarhari(kodegroupshiftid,shift: string;
  tanggal: tdatetime): boolean;
var
  hari:integer;
  hasil:boolean;
begin
  hasil:=false;
  qryCekHari.Close;
  qryCekHari.Parameters[0].Value:=kodegroupshiftid;
  qryCekHari.Parameters[1].Value:=shift;
  qryCekHari.Parameters[2].Value:=tanggal;
  qryCekHari.Open;
  if qryCekHari.RecordCount>0 then
  begin
    hasil:=true;
  end;
  cekterdaftarhari:=hasil;
end;

procedure TfmSchedulling.cgvSelectStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('tglkeluar').Index]<>NULL then
        AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmSchedulling.cgvUnSelectStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('tglkeluar').Index]<>NULL then
        AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmSchedulling.dbeDoublePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
 qryUnSelect.Close;
 if dbeDouble.Checked then
 begin
    qryUnSelect.SQL.Text:=
    ' select distinct b.pegawaiid, b.nopeg, b.nama, b.tglmasuk, b.tglkeluar, d.kodeperusahaan, d.namaperusahaan, e.kodedivisi, e.namadivisi, f.kodedepartemen, f.namadepartemen'+
    ' from pegawai b'+
    ' left join scheduling a on a.pegawaiid=b.pegawaiid'+
    ' left join perusahaan d on b.kodeperusahaan=d.kodeperusahaan'+
    ' left join divisi e on b.kodedivisi=e.kodedivisi'+
    ' left join departemen f on b.kodedepartemen=f.kodedepartemen'+
    ' where b.pegawaiid not in (select pegawaiid from scheduling'+
    ' where tglschedule between cast(:start as datetime) and cast(:end as datetime) and kodegroupshiftid=:kodegroupshiftid and shift=:shift)'+
    ' and b.kodeperusahaan=:kodeperusahaan'+
    ' and b.kodedivisi=:kodedivisi'+
    ' and b.kodedepartemen=:kodedepartemen'+
    ' and (b.tglkeluar is null or b.tglkeluar>=cast(:tglkeluar as datetime))'+
    ' and b.statusschedule=''1'' '+
    ' and b.kodegroupshiftid=:kodegroupshiftid '+
    ' order by b.pegawaiid';
 end
 else
 begin
    qryUnSelect.SQL.Text:=
    ' select distinct b.pegawaiid, b.nopeg, b.nama, b.tglmasuk, b.tglkeluar, d.kodeperusahaan, d.namaperusahaan, e.kodedivisi, e.namadivisi, f.kodedepartemen, f.namadepartemen'+
    ' from pegawai b'+
    ' left join scheduling a on a.pegawaiid=b.pegawaiid'+
    ' left join perusahaan d on b.kodeperusahaan=d.kodeperusahaan'+
    ' left join divisi e on b.kodedivisi=e.kodedivisi'+
    ' left join departemen f on b.kodedepartemen=f.kodedepartemen'+
    ' where b.pegawaiid not in (select pegawaiid from scheduling'+
    ' where tglschedule between cast(:start as datetime) and cast(:end as datetime) )'+
    ' and b.kodeperusahaan=:kodeperusahaan'+
    ' and b.kodedivisi=:kodedivisi'+
    ' and b.kodedepartemen=:kodedepartemen'+
    ' and (b.tglkeluar is null or b.tglkeluar>=cast(:tglkeluar as datetime))'+
    ' and b.statusschedule=''1'' '+
    ' and b.kodegroupshiftid=:kodegroupshiftid '+
    ' order by b.pegawaiid';
 end;
 Refresh;

end;

procedure TfmSchedulling.Refresh;
begin
  tanggalSelectionChanged(self,FStart,FFinish);
end;

procedure TfmSchedulling.dbePerusahaanPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (dbePerusahaan.editvalue<>NULL) and (dblckodedivisi.EditValue<>NULL) and (dblckodedepartemen.EditValue<>NULL) then
  begin
    tanggal.Enabled:=true;
    Refresh;
  end
  else
  begin
    tanggal.Enabled:=false;
  end;
end;

procedure TfmSchedulling.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryGroupShiftHd, False, False);
  OpenIfClose(dmGeneral.qryGroupShiftDt1, False, False);
  OpenIfClose(dmGeneral.qryGroupShiftDt2, False, False);
  OpenIfClose(dmGeneral.qryPerusahaan, False, False);
  OpenIfClose(dmGeneral.qryDivisi, False, False);
  OpenIfClose(dmGeneral.qryDepartemen, False, False);
  OpenIfClose(qryDraw, False, False);

  dbePerusahaan.EditValue:=dmGeneral.qryPerusahaan.FieldByName('kodeperusahaan').asstring;
  dblcKodeDivisi.EditValue:=dmGeneral.qryDivisi.FieldByName('kodedivisi').asstring;
  dblcKodeDepartemen.EditValue:=dmGeneral.qryDepartemen.FieldByName('kodedepartemen').asstring;
  dblcGroupShift.EditValue:=dmGeneral.qryGroupShiftHd.FieldByName('kodegroupshiftid').asstring;
  dblcShift.EditValue:=dmGeneral.qryGroupShiftDt1.FieldByName('shift').asstring;
  dbeDoublePropertiesEditValueChanged(self);
  tanggalSelectionChanged(self,date,date);

end;

procedure TfmSchedulling.tanggalCustomDrawDayNumber(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
  var ADone: Boolean);
var
  tanggal,bulan,tahun:word;
  tgl:tdatetime;
begin
  inherited;
  if qryDraw.Locate('tglschedule',AViewInfo.Date,[]) then
     AViewInfo.Bold:=true;
end;

procedure TfmSchedulling.tanggalPeriodChanged(Sender: TObject; const AStart,
  AFinish: TDateTime);
begin
  inherited;
  qryDraw.Close;
  qryDraw.Parameters[0].Value:=AStart;
  qryDraw.Parameters[1].Value:=AFinish;
  OpenIfClose(qryDraw,false,true);
  FStart2:=AStart;
  FFinish2:=AFinish;
end;

procedure TfmSchedulling.tanggalSelectionChanged(Sender: TObject;
  const AStart, AFinish: TDateTime);
begin
  inherited;
  if (dbePerusahaan.editvalue<>NULL) and (dblckodedivisi.EditValue<>NULL) and (dblckodedepartemen.EditValue<>NULL) then
  begin
    qryUnSelect.Close;
    qryUnSelect.Parameters[0].Value:=AStart;
    qryUnSelect.Parameters[1].Value:=AFinish;
    if dbeDouble.Checked then
    begin
      qryUnSelect.Parameters[2].Value:=dblcGroupShift.EditValue;
      qryUnSelect.Parameters[3].Value:=dblcShift.EditValue;
      qryUnSelect.Parameters[4].Value:=dbePerusahaan.EditValue;
      qryUnSelect.Parameters[5].Value:=dblckodedivisi.EditValue;
      qryUnSelect.Parameters[6].Value:=dblckodedepartemen.EditValue;
      qryUnSelect.Parameters[7].Value:=AStart;
      qryUnSelect.Parameters[8].Value:=dblcGroupShift.EditValue;
    end
    else
    begin
      qryUnSelect.Parameters[2].Value:=dbePerusahaan.EditValue;
      qryUnSelect.Parameters[3].Value:=dblckodedivisi.EditValue;
      qryUnSelect.Parameters[4].Value:=dblckodedepartemen.EditValue;
      qryUnSelect.Parameters[5].Value:=AStart;
      qryUnSelect.Parameters[6].Value:=dblcGroupShift.EditValue;
    end;
    OpenIfClose(qryUnSelect,false,true);
    qrySelect.Close;
    qrySelect.Parameters[0].Value:=AStart;
    qrySelect.Parameters[1].Value:=AFinish;
    qrySelect.Parameters[2].Value:=dblcGroupShift.EditValue;
    qrySelect.Parameters[3].Value:=dblcShift.EditValue;
    qrySelect.Parameters[4].Value:=dbePerusahaan.EditValue;
    qrySelect.Parameters[5].Value:=dblckodedivisi.EditValue;
    qrySelect.Parameters[6].Value:=dblckodedepartemen.EditValue;
    qrySelect.Parameters[7].Value:=AStart;
    qrySelect.Parameters[8].Value:=dblcGroupShift.EditValue;

    OpenIfClose(qrySelect,false,true);
    FStart:=AStart;
    FFinish:=AFinish;
  end;
end;

end.
