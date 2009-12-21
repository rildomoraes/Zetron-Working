unit frmAbsenManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniPosition, DateUtils, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxTimeEdit, cxTextEdit, cxImageComboBox, cxCheckBox,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar, cxContainer,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, cxCalc, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

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
    cgvUnSelect: TcxGridDBTableView;
    cgvUnSelectpegawaiid: TcxGridDBColumn;
    cgvUnSelectnopeg: TcxGridDBColumn;
    cgvUnSelectnama: TcxGridDBColumn;
    cgvUnSelecttglmasuk: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsAbsenManual: TDataSource;
    qryAbsenManual: TZQuery;
    cgvAbsenManualflagupdate: TcxGridDBColumn;
    cgvAbsenManualstatusabsen: TcxGridDBColumn;
    cgvAbsenManualflagprosesgaji: TcxGridDBColumn;
    ZQuery1: TZQuery;
    cgvAbsenManualpulangawal: TcxGridDBColumn;
    cgvAbsenManualPegawaiId: TcxGridDBColumn;
    cgvAbsenManualketerangan: TcxGridDBColumn;
    cgvAbsenManualDivisi: TcxGridDBColumn;
    cgvAbsenManualDepartemen: TcxGridDBColumn;
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
        //qryAbsenManual.fieldbyname('masuk1').AsDateTime:=gabungtanggal(qryAbsenManual.fieldbyname('tgl').AsDateTime,dmGeneral.qryPrevPosisiActiveTglShift.FieldByName('jamkerjaawal').asdatetime);
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

end;

procedure TfmAbsenManual.qryAbsenManualBeforePost(DataSet: TDataSet);
begin
  inherited;
  if lcbGroupShift.EditValue=dmgeneral.qryPrevPegawaiActive.FieldByName('kodegroupshiftid').asstring then
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
  dmGeneral.qryPrevPosisiActiveTglShift.Params[0].Value:=dbeTanggal.Date;
  dmGeneral.qryPrevPosisiActiveTglShift.Params[1].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[2].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[3].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[4].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[5].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[6].Value:=lcbGroupShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Params[7].Value:=lcbShift.EditValue;
  dmGeneral.qryPrevPosisiActiveTglShift.Params[8].Value:='%';
  dmGeneral.qryPrevPosisiActiveTglShift.Params[9].Value:='%';
  OpenIfClose(dmGeneral.qryPrevPosisiActiveTglShift,False,true);

  dmGeneral.qryPrevPegawaiActive.close;
  dmGeneral.qryPrevPegawaiActive.Params[0].Value:=dbeTanggal.Date;
  OpenIfClose(dmGeneral.qryPrevPegawaiActive,False,true);

  qryAbsenManual.close;
  qryAbsenManual.Params[0].value:=dbetanggal.Date;
  qryAbsenManual.Params[1].value:=lcbGroupShift.EditValue;
  qryAbsenManual.Params[2].value:=lcbShift.EditValue;
  OpenIfClose(qryAbsenManual,False,true);

end;


end.

