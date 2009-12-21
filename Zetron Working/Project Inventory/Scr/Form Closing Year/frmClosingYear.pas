unit frmClosingYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, cxGraphics, DB, MemDS, DBAccess, Uni,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  StdCtrls, ActnList, cxButtons, ExtCtrls;

type
  TfmClosingYear = class(TFormUni)
    actSave: TAction;
    lblProcess: TLabel;
    lblYear: TLabel;
    cbYear: TcxComboBox;
    lblInfo: TLabel;
    btnPost: TcxButton;
    qryClosingYear: TUniQuery;
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
  qryClosingYear.Params[0].Value := cbYear.EditValue;
  qryClosingYear.Execute;

  // Update Closing Date
  EndYearDate := EncodeDate(cbYear.EditValue, 12, 31);
  dmGlobal.SaveSetupValue('GLB01', FormatDateTime('YYYYMMDD', EndYearDate));
  dmGlobal.SettingGlobal.OptionClosingDate := EndYearDate;

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
