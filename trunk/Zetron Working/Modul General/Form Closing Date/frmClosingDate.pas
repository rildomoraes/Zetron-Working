unit frmClosingDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, ActnList, cxButtons, ExtCtrls, DB, ADODB;

type
  TfmClosingDate = class(TFormUni)
    actSave: TAction;
    lblCurrentClosingDate: TLabel;
    btnPost: TcxButton;
    spProcessClosingDate: TADOStoredProc;
    qryGetClosingDate: TADOQuery;
    edtNewClosingDate: TcxDateEdit;
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

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmClosingDate.actSaveExecute(Sender: TObject);
begin
  inherited;

  spProcessClosingDate.Parameters[1].Value := edtNewClosingDate.EditValue;
  spProcessClosingDate.ExecProc;
  if spProcessClosingDate.Parameters[0].Value = '0' then
  begin
    qryGetClosingDate.Close;
    OpenIfClose(qryGetClosingDate);
    dmGlobal.SettingGlobal.OptionClosingDate := qryGetClosingDate.Fields[0].AsDateTime;
    MessageDlg(MSG_SAVING_CLOSING_COMPLETE, mtInformation, [mbOk], 0);
  end
  else
    MessageDlg(MSG_SAVING_CLOSING_ERROR, mtInformation, [mbOk], 0);
end;

procedure TfmClosingDate.InitForm;
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnPost.Caption := 'Simpan';
    btnPost.Hint := 'Simpan';
  end;

  qryGetClosingDate.Close;
  OpenIfClose(qryGetClosingDate);
  edtNewClosingDate.EditValue := qryGetClosingDate.Fields[0].AsDateTime;
end;

end.
