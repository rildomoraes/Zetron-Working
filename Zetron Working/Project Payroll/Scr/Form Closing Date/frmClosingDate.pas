unit frmClosingDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, DB,
  MemDS, DBAccess, Uni, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, ActnList, cxButtons, ExtCtrls, ADODB;

type
  TfmClosingDate = class(TFormUni)
    actSave: TAction;
    lblCurrentClosingDate: TLabel;
    edtNewClosingDate: TcxDateEdit;
    btnPost: TcxButton;
    qrySetup: TADOQuery;
    procedure actSaveExecute(Sender: TObject);
    procedure qrySetupBeforePost(DataSet: TDataSet);
    procedure qrySetupBeforeDelete(DataSet: TDataSet);
    procedure qrySetupAfterPost(DataSet: TDataSet);
    procedure qrySetupAfterDelete(DataSet: TDataSet);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    hasil, action : string;
  public
    { Public declarations }
  end;

var
  fmClosingDate: TfmClosingDate;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmShare, dtmGeneral;

procedure TfmClosingDate.actSaveExecute(Sender: TObject);
begin
  inherited;
  OpenIfClose(qrySetup,False,True);
  if not qrySetup.IsEmpty then
    qrySetup.Edit
  else
  begin
    qrySetup.Insert;
    qrySetup.FieldByName('SetupId').AsString := 'GLB01';
    qrySetup.FieldByName('SetupName').AsString := 'Closing Date';
  end;
  qrySetup.FieldByName('Value').AsString := FormatDateTime('YYYYMMDD', edtNewClosingDate.Date);
  qrySetup.Post;
  // Finally
  dmShare.OptionClosingDate := edtNewClosingDate.EditValue;
  Close;
end;

procedure TfmClosingDate.InitForm;
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnPost.Caption := 'Simpan';
    btnPost.Hint := 'Simpan';
  end;

  edtNewClosingDate.EditValue := dmShare.OptionClosingDate;
end;

procedure TfmClosingDate.qrySetupAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Setup',hasil,action);
end;

procedure TfmClosingDate.qrySetupAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('Setup',hasil,action);
end;

procedure TfmClosingDate.qrySetupBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmClosingDate.qrySetupBeforePost(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

end.
