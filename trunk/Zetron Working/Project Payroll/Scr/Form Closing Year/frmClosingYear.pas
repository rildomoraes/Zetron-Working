unit frmClosingYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, DB, MemDS, DBAccess, Uni, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, ActnList, cxButtons,
  ExtCtrls, ADODB;

type
  TfmClosingYear = class(TFormUni)
    actSave: TAction;
    lblProcess: TLabel;
    lblYear: TLabel;
    cbYear: TcxComboBox;
    lblInfo: TLabel;
    btnPost: TcxButton;
    qryClosingYear: TADOQuery;
    qrySetup: TADOQuery;
    procedure actSaveExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClosingYear: TfmClosingYear;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmShare;

procedure TfmClosingYear.actSaveExecute(Sender: TObject);
var
  EndYearDate: TDatetime;
begin
  inherited;
  lblProcess.Visible := True;
  Application.ProcessMessages;

  // Proses Closing Year
  qryClosingYear.Close;
  qryClosingYear.Parameters[0].Value := cbYear.EditValue;
  qryClosingYear.ExecSQL;

  // Update Closing Date
  EndYearDate := EncodeDate(cbYear.EditValue, 12, 31);
  qrySetup.Close;
  OpenIfClose(qrySetup,False);
  if not qrySetup.IsEmpty then
    qrySetup.Edit
  else
  begin
    qrySetup.Insert;
    qrySetup.FieldByName('SetupId').AsString := 'OPT05';
    qrySetup.FieldByName('SetupName').AsString := 'Closing Date';
  end;
  qrySetup.FieldByName('Value').AsString := FormatDateTime('YYYYMMDD', EndYearDate);
  qrySetup.Post;
  dmShare.OptionClosingDate := EndYearDate;

  // Finally
  lblProcess.Visible := False;
  Close;
end;

procedure TfmClosingYear.InitForm;
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnPost.Caption := 'Simpan';
    btnPost.Hint := 'Simpan';
  end;

  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
end;

end.
