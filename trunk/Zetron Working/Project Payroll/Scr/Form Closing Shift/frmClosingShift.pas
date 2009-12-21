unit frmClosingShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCalc,
  cxImageComboBox, cxTimeEdit, cxCheckBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxContainer, cxLabel,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, ADODB;

type
  TfmClosingShift = class(TFormUniPosition)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    DtTgl: TcxDateEdit;
    lcbGroupShift: TcxExtLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    lcbShift: TcxExtLookupComboBox;
    BProses: TcxButton;
    cgvAbsen: TcxGridDBTableView;
    cgAbsenLevel1: TcxGridLevel;
    cgAbsen: TcxGrid;
    dsAnomali: TDataSource;
    cgvAbsennopeg: TcxGridDBColumn;
    cgvAbsenkodeabsen: TcxGridDBColumn;
    cgvAbsenterlambat: TcxGridDBColumn;
    cgvAbsenmodemasuk: TcxGridDBColumn;
    cgvAbsenmodekeluar: TcxGridDBColumn;
    cgvAbsenmasuk1: TcxGridDBColumn;
    cgvAbsenkeluar1: TcxGridDBColumn;
    cgvAbsenlembur: TcxGridDBColumn;
    cgvAbsenemployeeid: TcxGridDBColumn;
    cgvAbsenflagupdate: TcxGridDBColumn;
    cgvAbsenNama: TcxGridDBColumn;
    cgvAbsennamadivisi: TcxGridDBColumn;
    cgvAbsennamadepartemen: TcxGridDBColumn;
    cgvAbsennamastatus: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cgvClosing: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsClosing: TDataSource;
    cgvAbsentgl: TcxGridDBColumn;
    cgvAbsenkodegroupshiftid: TcxGridDBColumn;
    cgvAbsenshift: TcxGridDBColumn;
    cgvAbsennoreg: TcxGridDBColumn;
    cgvAbsenpulangawal: TcxGridDBColumn;
    cgvAbsenalatm1: TcxGridDBColumn;
    cgvAbsenalatk1: TcxGridDBColumn;
    cgvAbsenstatusabsen: TcxGridDBColumn;
    cgvAbsenketerangan: TcxGridDBColumn;
    cgvClosingstatusabsen: TcxGridDBColumn;
    cgvClosingketerangan: TcxGridDBColumn;
    cgvClosingalatm1: TcxGridDBColumn;
    cgvClosingalatk1: TcxGridDBColumn;
    qryProses: TADOQuery;
    qryAnomali: TADOQuery;
    qryProsesHarian: TADOQuery;
    qryClosing: TADOQuery;
    procedure lcbShiftPropertiesEditValueChanged(Sender: TObject);
    procedure lcbGroupShiftPropertiesEditValueChanged(Sender: TObject);
    procedure DtTglPropertiesEditValueChanged(Sender: TObject);
    procedure BProsesClick(Sender: TObject);
    procedure qryAnomaliBeforePost(DataSet: TDataSet);
    procedure qryAnomaliBeforeDelete(DataSet: TDataSet);
    procedure qryAnomaliAfter(DataSet: TDataSet);
    procedure qryClosingBeforePost(DataSet: TDataSet);
    procedure qryClosingBeforeDelete(DataSet: TDataSet);
    procedure qryClosingAfterPost(DataSet: TDataSet);
    procedure qryClosingAfterDelete(DataSet: TDataSet);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    function checkisi:boolean;
    var
    hasil, action : string;
  public
    { Public declarations }
    procedure refresh;
  end;

var
  fmClosingShift: TfmClosingShift;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

function TfmClosingShift.checkisi: boolean;
var
  ok:boolean;
begin
  ok:=false;
  if (DtTgl.editvalue<>NULL) and (lcbGroupShift.EditValue<>NULL) and (lcbShift.EditValue<>NULL) then
  begin
    ok:=true;
  end;
  checkisi:=ok;
end;

procedure TfmClosingShift.BProsesClick(Sender: TObject);
begin
  inherited;
  // cek dulu ada yang anomali nggak
  // kalo ada tampilkan data yang anomali
  if checkisi then
  begin
    qryAnomali.close;
    qryAnomali.Parameters[0].Value:=DtTgl.Date;
    qryAnomali.Parameters[1].Value:=lcbGroupShift.EditValue;
    qryAnomali.Parameters[2].Value:=lcbShift.EditValue;
    qryAnomali.open;

//    if qryAnomali.Eof then
//    begin
      qryProses.Parameters[0].Value:=DtTgl.Date;
      qryProses.Parameters[1].Value:=lcbGroupShift.EditValue;
      qryProses.Parameters[2].Value:=lcbShift.EditValue;
      qryProses.ExecSQL;
      showmessage('Proses Closing Shift Sudah Selesai !!!');
      if MessageDlg('Mau Proses Gaji Harian ?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      begin
        qryProsesHarian.Parameters[0].Value:=dtTgl.Date;
        qryProsesHarian.Parameters[1].Value:=dtTgl.Date;
        qryProsesHarian.Parameters[2].Value:='%';
        qryProsesHarian.Parameters[3].Value:=lcbGroupShift.EditValue;
        qryProsesHarian.Parameters[4].Value:=lcbShift.EditValue;
        qryProsesHarian.Parameters[5].Value:='%';
        qryProsesHarian.ExecSQL;
        showmessage('Proses Gaji Harian Sudah Selesai !!!');
      end;
//    end
//    else
//    begin
//      showmessage('Benarkan Data yang Anomali Dulu !!!');
//    end;
    qryClosing.close;
    qryClosing.Parameters[0].Value:=DtTgl.Date;
    qryClosing.Parameters[1].Value:=lcbGroupShift.EditValue;
    qryClosing.Parameters[2].Value:=lcbShift.EditValue;
    qryClosing.open;
  end
end;

procedure TfmClosingShift.DtTglPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  refresh;

end;



procedure TfmClosingShift.InitForm;
begin
  inherited;

  DtTgl.Date:=Date;
  openifclose(dmGeneral.qryGroupShiftHd,false,true);
  openifclose(dmGeneral.qryGroupShiftDt1,false,true);
  openifclose(dmGeneral.qryKodeAbsen,true);
  SetReadOnly(cgvAbsen);
  SetReadOnly(cgvClosing);
end;

procedure TfmClosingShift.lcbGroupShiftPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  refresh;

end;

procedure TfmClosingShift.lcbShiftPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  refresh;

end;

procedure TfmClosingShift.qryAnomaliAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Absen',hasil,action);
end;

procedure TfmClosingShift.qryAnomaliBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmClosingShift.qryAnomaliBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmClosingShift.qryClosingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Absen',hasil,action);
end;

procedure TfmClosingShift.qryClosingAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Absen',hasil,action);
end;

procedure TfmClosingShift.qryClosingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmClosingShift.qryClosingBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

procedure TfmClosingShift.refresh;
begin
  if checkisi then
  begin
    dmGeneral.qryPrevPosisiActiveTglShift.close;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[0].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[1].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[2].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[3].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[4].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[5].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[6].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[7].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[8].Value:=lcbGroupShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[9].Value:=lcbShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[10].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[11].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[12].Value:=lcbGroupShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[13].Value:=lcbShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[14].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[15].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[16].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[17].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[18].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[19].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[20].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[21].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[22].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[23].Value:=lcbShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[24].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[25].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[26].Value:=dttgl.Date;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[27].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[28].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[29].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[30].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[31].Value:='%';
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[32].Value:=lcbGroupShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[33].Value:=lcbShift.EditValue;
    dmGeneral.qryPrevPosisiActiveTglShift.Parameters[34].Value:='%';
    OpenIfClose(dmgeneral.qryPrevPosisiActiveTglShift,false,true);
  end;
end;

end.

