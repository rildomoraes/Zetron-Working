unit frmProsesLockHari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons,
  ADODB, untIvPositionDevExpress, untIvPositionStandard, cxGraphics,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,Db, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfmProsesLockHari = class(TForm)
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    DtTgl: TcxDateEdit;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    cxLabel2: TcxLabel;
    lcbShift: TcxExtLookupComboBox;
    qryProses: TZQuery;
    cxLabel3: TcxLabel;
    lcbGroupShift: TcxExtLookupComboBox;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
    class procedure ExecuteForm;
  end;

var
  fmProsesLockHari: TfmProsesLockHari;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;
{$R *.dfm}

procedure TfmProsesLockHari.cxButton1Click(Sender: TObject);
begin
  qryProses.Params[0].DataType:=ftDatetime;
  qryProses.Params[0].Value:=DtTgl.Date;
  qryProses.Params[1].DataType:=ftString;
  qryProses.Params[1].Value:=lcbGroupShift.EditValue;
  qryProses.Params[2].DataType:=ftString;
  qryProses.Params[2].Value:=lcbShift.EditValue;
  qryProses.ExecSQL;
  showmessage('Proses Lock Hari Sudah Selesai !!!');
end;

class procedure TfmProsesLockHari.ExecuteForm;
begin
  with fmProsesLockHari do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmProsesLockHari);
      InitForm;
    end
    else
    begin
      WindowState := wsNormal;
      BringToFront;
    end;
  end;
end;

procedure TfmProsesLockHari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmProsesLockHari.InitForm;
begin
  dmGlobal.InitComponent(Self);
  DtTgl.Date:=dmglobal.SettingGlobal.ServerDateTime;
  dmGeneral.qryGroupShiftHd.Close;
  dmGeneral.qryGroupShiftHd.Open;
  dmGeneral.qryGroupShiftDt1.Close;
  dmGeneral.qryGroupShiftDt1.Open;
end;


end.
