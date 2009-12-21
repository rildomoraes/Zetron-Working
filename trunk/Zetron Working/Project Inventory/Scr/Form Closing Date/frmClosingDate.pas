unit frmClosingDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, ActnList,
  cxButtons, ExtCtrls;

type
  TfmClosingDate = class(TFormUni)
    actSave: TAction;
    lblCurrentClosingDate: TLabel;
    edtNewClosingDate: TcxDateEdit;
    btnPost: TcxButton;
    procedure actSaveExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClosingDate: TfmClosingDate;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmClosingDate.actSaveExecute(Sender: TObject);
begin
  inherited;

  dmGlobal.SaveSetupValue('GLB01', FormatDateTime('YYYYMMDD', edtNewClosingDate.Date));
  dmGlobal.SettingGlobal.OptionClosingDate := edtNewClosingDate.EditValue;
  MessageDlg(MSG_SAVING_COMPLETE, mtInformation, [mbOk], 0);
end;

procedure TfmClosingDate.InitForm;
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnPost.Caption := 'Simpan';
    btnPost.Hint := 'Simpan';
  end;

  edtNewClosingDate.EditValue := dmGlobal.SettingGlobal.OptionClosingDate;
end;

end.
