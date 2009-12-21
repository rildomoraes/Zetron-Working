unit frmAbsenManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCalendar,
  cxCalc, cxImageComboBox, cxCheckBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  ADODB, Grids, DBGrids;

type
  TfmAbsenManual = class(TFormUniPosition)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    dbeTanggal: TcxDateEdit;
    lcbGroupShift: TcxExtLookupComboBox;
    lcbShift: TcxExtLookupComboBox;
    Panel2: TPanel;
    cgAbsenManual: TcxGrid;
    cgvAbsenManual: TcxGridDBTableView;
    cgvAbsenManualNopeg: TcxGridDBColumn;
    cgvAbsenManualNama: TcxGridDBColumn;
    cgvAbsenManualkodeabsen: TcxGridDBColumn;
    cgvAbsenManualmasuk1: TcxGridDBColumn;
    cgvAbsenManualkeluar1: TcxGridDBColumn;
    cgvAbsenManualterlambat: TcxGridDBColumn;
    cgvAbsenManualnoreg: TcxGridDBColumn;
    cgvAbsenManuallembur: TcxGridDBColumn;
    cgvAbsenManualm1: TcxGridDBColumn;
    cgvAbsenManualk1: TcxGridDBColumn;
    cgvAbsenManualemployeeid: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsAbsenManual: TDataSource;
    cgvAbsenManualflagupdate: TcxGridDBColumn;
    cgvAbsenManualstatusabsen: TcxGridDBColumn;
    cgvAbsenManualflagprosesgaji: TcxGridDBColumn;
    cgvAbsenManualpulangawal: TcxGridDBColumn;
    cgvAbsenManualPegawaiId: TcxGridDBColumn;
    cgvAbsenManualketerangan: TcxGridDBColumn;
    cgvAbsenManualnmdivisi: TcxGridDBColumn;
    cgvAbsenManualnmdepartemen: TcxGridDBColumn;
    cgvAbsenManualkodestatus: TcxGridDBColumn;
    qryAbsenManual: TADOQuery;
    qryPosisiAktif: TADOQuery;
    cgvAbsenManualtgl: TcxGridDBColumn;
    cgvAbsenManualkodegroupshiftid: TcxGridDBColumn;
    cgvAbsenManualshift: TcxGridDBColumn;
    cgvAbsenManualmasuk2: TcxGridDBColumn;
    cgvAbsenManualmasuk3: TcxGridDBColumn;
    cgvAbsenManualmasuk4: TcxGridDBColumn;
    cgvAbsenManualmasuk5: TcxGridDBColumn;
    cgvAbsenManualkeluar2: TcxGridDBColumn;
    cgvAbsenManualkeluar3: TcxGridDBColumn;
    cgvAbsenManualkeluar4: TcxGridDBColumn;
    cgvAbsenManualkeluar5: TcxGridDBColumn;
    cgvAbsenManualm2: TcxGridDBColumn;
    cgvAbsenManualm3: TcxGridDBColumn;
    cgvAbsenManualm4: TcxGridDBColumn;
    cgvAbsenManualm5: TcxGridDBColumn;
    cgvAbsenManualk2: TcxGridDBColumn;
    cgvAbsenManualk3: TcxGridDBColumn;
    cgvAbsenManualk4: TcxGridDBColumn;
    cgvAbsenManualk5: TcxGridDBColumn;
    cgvAbsenManualstatus: TcxGridDBColumn;
    cgvAbsenManualmodemasuk: TcxGridDBColumn;
    cgvAbsenManualmodekeluar: TcxGridDBColumn;
    Label9: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure qryAbsenManualBeforeRefresh(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure qryAbsenManualNewRecord(DataSet: TDataSet);
    procedure qryAbsenManualBeforePost(DataSet: TDataSet);
    procedure dsAbsenManualDataChange(Sender: TObject; Field: TField);
    function gabungtanggal(Atime: tdatetime; AAbsen: ttime): tdatetime;
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    procedure Refresh;
  public
    { Public declarations }
  end;

var
  fmAbsenManual: TfmAbsenManual;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGeneral,dtmglobal,dtmshare;

{ TFormUniPosition1 }

procedure TfmAbsenManual.cxButton1Click(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfmAbsenManual.dsAbsenManualDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field = nil then
    Exit;
  if qryAbsenManual.State in [dsinsert,dsedit] then
  begin
    if (CompareText(Field.FieldName, 'pegawaiid') = 0) then
    begin
      if not(qryAbsenManual.fieldbyname('pegawaiid').isnull) then
      begin
        qryAbsenManual.fieldbyname('noreg').asstring:=dmGeneral.qryPrevPosisiActiveTglShift.FieldByName('noreg').asstring;
      end;
    end;
    if (CompareText(Field.FieldName, 'masuk1') = 0) then
    begin
      qryAbsenManual.fieldbyname('m1').asstring:='3';
    end;
    if (CompareText(Field.FieldName, 'keluar1') = 0) then
    begin
      qryAbsenManual.fieldbyname('k1').asstring:='3';
    end;
  end;
end;

function TfmAbsenManual.gabungtanggal(Atime: tdatetime;AAbsen: ttime): tdatetime;
var
  AYear,AMonth,ADay:word;
  AHour,AMinute,ASecond,AMiliSecond:word;
begin
  DecodeDateTime(ATime,AYear,AMonth,ADay,AHour,AMinute,ASecond,AMiliSecond);
  DecodeTime(AAbsen,AHour,AMinute,ASecond,AMiliSecond);
  gabungtanggal:=EncodeDateTime(AYear,AMonth,ADay,AHour,AMinute,0,0);
end;

procedure TfmAbsenManual.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryGroupShiftHd, false, False);
  OpenIfClose(dmGeneral.qryGroupShiftDt1, false, False);
  OpenIfClose(dmGeneral.qryKodeAbsen, false, False);

  dbeTanggal.Date:=dmglobal.SettingGlobal.ServerDateTime;
  lcbGroupShift.editvalue:=dmGeneral.qryGroupShiftHd.FieldByName('kodegroupshiftid').asstring;
  lcbShift.editvalue:=dmGeneral.qryGroupShiftdt1.FieldByName('shift').asstring;

  if self.Tag=0 then
  begin
    cgvAbsenManualmasuk1.Options.Editing:=true;
    cgvAbsenManualkeluar1.Options.Editing:=true;
    cgvAbsenManualterlambat.Options.Editing:=true;
    cgvAbsenManuallembur.Options.Editing:=true;
    cgvAbsenManualpulangawal.Options.Editing:=true;
  end
  else
  begin
    cgvAbsenManualmasuk1.Options.Editing:=false;
    cgvAbsenManualkeluar1.Options.Editing:=false;
    cgvAbsenManualterlambat.Options.Editing:=false;
    cgvAbsenManuallembur.Options.Editing:=false;
    cgvAbsenManualpulangawal.Options.Editing:=false;
  end;
  dsAbsenManual.AutoEdit:=false;
end;

procedure TfmAbsenManual.qryAbsenManualBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryAbsenManual.FieldByName('employeeid').Asstring:=dmGlobal.SettingGlobal.LoginEmployeeId;
  if dmgeneral.qryPrevPosisiActiveTglShift.Locate('pegawaiid',qryAbsenManual.FieldByName('pegawaiid').asstring,[lopartialkey]) then
  begin
    if lcbGroupShift.EditValue=dmgeneral.qryPrevPosisiActiveTglShift.FieldByName('kodegroupshiftid').asstring then
    begin
      if dmgeneral.qryKodeAbsen.fieldbyname('flagabsenmanual').asstring='1' then
      begin
        DataSet.FieldByName('flagupdate').Asstring:='1';
        DataSet.FieldByName('flagprosesgaji').Asstring:='1';
        DataSet.FieldByName('statusabsen').Asstring:='1';
        DataSet.FieldByName('status').Asstring:='1';
        DataSet.FieldByName('modemasuk').Asstring:='1';
        DataSet.FieldByName('modekeluar').Asstring:='1';
        DataSet.FieldByName('terlambat').Asstring:='0';
      end
      else
      begin
        ShowMessage('Kode Absen ini dimasukkan melalui Transaksi Absen!!!');
        DataSet.Cancel;
      end;
    end
    else
    begin
      ShowMessage('Group Shift Tidak Sama !!!');
      DataSet.Cancel;
    end;
  end;
end;

procedure TfmAbsenManual.qryAbsenManualBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qryPosisiAktif.close;
  qryPosisiAktif.Parameters[0].value:=dbetanggal.Date;
  qryPosisiAktif.Parameters[1].value:=lcbGroupShift.EditValue;
  qryPosisiAktif.Parameters[2].value:=lcbShift.EditValue;
  OpenIfClose(qryPosisiAktif,False,true);
end;

procedure TfmAbsenManual.qryAbsenManualNewRecord(DataSet: TDataSet);
begin
  inherited;
  if dbetanggal.Text<>'' then
  begin
    qryAbsenManual.FieldByName('tgl').AsDateTime:=dbetanggal.Date;
    qryAbsenManual.FieldByName('kodegroupshiftid').AsString:=lcbGroupShift.EditValue;
    qryAbsenManual.FieldByName('shift').AsString:=lcbShift.EditValue;
    qryAbsenManual.FieldByName('statusabsen').Asstring:='0';
    qryAbsenManual.FieldByName('employeeid').Asstring:=dmGlobal.SettingGlobal.LoginEmployeeId;
  end
  else
  begin
    showmessage('Tanggal diisi dulu !!!');
    qryAbsenManual.Cancel;
  end;

end;

procedure TfmAbsenManual.Refresh;
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
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[8].Value:=lcbGroupShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[9].Value:=lcbShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[10].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[11].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[12].Value:=lcbGroupShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[13].Value:=lcbShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[14].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[15].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[16].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[17].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[18].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[19].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[20].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[21].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[22].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[23].Value:=lcbShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[24].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[25].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[26].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[27].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[28].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[29].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[30].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[31].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[32].Value:=lcbGroupShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[33].Value:=lcbShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Parameters[34].Value:='%';
  OpenIfClose(dmGeneral.qryPrevPosisiActiveTglShift,False,true);

  qryPosisiAktif.close;
  qryPosisiAktif.Parameters[0].value:=dbetanggal.Date;
  qryPosisiAktif.Parameters[1].value:=lcbGroupShift.EditValue;
  qryPosisiAktif.Parameters[2].value:=lcbShift.EditValue;
  OpenIfClose(qryPosisiAktif,False,true);

  qryAbsenManual.close;
  qryAbsenManual.Parameters[0].value:=dbetanggal.Date;
  qryAbsenManual.Parameters[1].value:=lcbGroupShift.EditValue;
  qryAbsenManual.Parameters[2].value:=lcbShift.EditValue;
  OpenIfClose(qryAbsenManual,False,true);

end;


end.

