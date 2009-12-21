unit frmClosingYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUni, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  DB, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, ActnList, cxButtons, ExtCtrls;

type
  TfmClosingYear = class(TFormUni)
    lblYear: TLabel;
    cbYear: TcxComboBox;
    lblProcess: TLabel;
    lblInfo: TLabel;
    spProcessClosingYear: TADOStoredProc;
    cxButton1: TcxButton;
    actProcess: TAction;
    procedure actProcessExecute(Sender: TObject);
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

uses dtmGlobal, untProcedure, untCustom01;

procedure TfmClosingYear.actProcessExecute(Sender: TObject);
begin
  inherited;

  lblProcess.Visible := True;
  Application.ProcessMessages;

  spProcessClosingYear.Close;
  spProcessClosingYear.Parameters[1].Value := cbYear.EditValue;
  spProcessClosingYear.ExecProc;
  if (spProcessClosingYear.Parameters[0].Value <> 0) or
    (VarIsEmpty(spProcessClosingYear.Parameters[0].Value)) then
  begin
    MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spProcessClosingYear.']), mtInformation, [mbOk], 0);
    //dmGlobal.AddApplicationLog('spProcessClosingYear cannot be execute !', llHigh);
    lblProcess.Visible := False;
  end
  else
  begin
    MessageDlg(MSG_CLOSING_YEAR_SUCCESS, mtInformation, [mbOk], 0);
    Close;
  end;
end;

procedure TfmClosingYear.InitForm;
begin
  inherited;

  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
end;

end.
