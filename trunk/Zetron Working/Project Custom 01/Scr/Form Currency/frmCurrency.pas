unit frmCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUni, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, DB, ADODB,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalc, StdCtrls, ActnList, cxButtons, ExtCtrls;

type
  TfmCurrency = class(TFormUni)
    Label7: TLabel;
    edtRateUS: TcxCalcEdit;
    Label8: TLabel;
    edtRateYen: TcxCalcEdit;
    qrySetup: TADOQuery;
    cxButton1: TcxButton;
    actPost: TAction;
    actCancel: TAction;
    actRefresh: TAction;
    cxButton3: TcxButton;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    procedure LoadDataToForm;
    procedure SaveDataFromForm;
    function  GetData(const AIdSetup: string): variant;
    procedure SaveData(const AIdSetup: string; AValue: variant);
  public
    { Public declarations }
  end;

var
  fmCurrency: TfmCurrency;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, untCustom01, untConstanta;

procedure TfmCurrency.actPostExecute(Sender: TObject);
begin
  inherited;

  SaveDataFromForm;
end;

procedure TfmCurrency.actRefreshExecute(Sender: TObject);
begin
  inherited;

  LockRefresh(qrySetup);
  LoadDataToForm;
end;

function TfmCurrency.GetData(const AIdSetup: string): variant;
begin
  if qrySetup.Locate('SetupId', AIdSetup, [loCaseInsensitive]) then
    Result := qrySetup.FieldByName('SetupValue').AsString;
end;

procedure TfmCurrency.InitForm;
begin
  inherited;

  edtRateUS.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtRateYen.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  qrySetup.Close;
  qrySetup.Parameters[0].Value := FProgramId;
  OpenIfClose(qrySetup);

  LoadDataToForm;
end;

procedure TfmCurrency.LoadDataToForm;
begin
  edtRateUS.EditValue := GetData('OPT14');
  edtRateYen.EditValue := GetData('OPT15');
end;

procedure TfmCurrency.SaveData(const AIdSetup: string; AValue: variant);
begin
  if qrySetup.Locate('SetupId', AIdSetup, [loCaseInsensitive]) then
    qrySetup.Edit
  else
  begin
    qrySetup.Insert;
    qrySetup.FieldByName('ProgramId').AsString := FProgramId;
    qrySetup.FieldByName('SetupId').AsString := AIdSetup;
    qrySetup.FieldByName('SetupName').AsString := AIdSetup;
  end;

  qrySetup.FieldByName('SetupValue').AsString := AValue;
  qrySetup.Post;
end;

procedure TfmCurrency.SaveDataFromForm;
begin
  SaveData('OPT14', edtRateUS.EditValue);
  SaveData('OPT15', edtRateYen.EditValue);
end;

end.
