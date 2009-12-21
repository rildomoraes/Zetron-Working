unit frmSettingLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, cxGraphics, cxCheckBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls,
  ActnList, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmSettingLocal = class(TFormUni)
    actRefresh: TAction;
    actPost: TAction;
    actCancel: TAction;
    lblLanguage: TLabel;
    cbLanguage: TcxComboBox;
    Label3: TLabel;
    cbSkin: TcxComboBox;
    Label2: TLabel;
    chkFingerPrintDevice: TcxCheckBox;
    chkUseSkins: TcxCheckBox;
    OpenDialog1: TOpenDialog;
    btnRefresh: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    procedure actCancelExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    procedure RefreshAll;
    procedure LoadDataToForm;
    procedure SaveDataFromForm;
  public
    { Public declarations }
  end;

var
  fmSettingLocal: TfmSettingLocal;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmSettingLocal.actCancelExecute(Sender: TObject);
begin
  inherited;

  Close;
end;

procedure TfmSettingLocal.actPostExecute(Sender: TObject);
begin
  inherited;
  
  SaveDataFromForm;
  Close;
end;

procedure TfmSettingLocal.actRefreshExecute(Sender: TObject);
begin
  inherited;

  RefreshAll;
end;

procedure TfmSettingLocal.InitForm;
var
  i: Integer;
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;
  LoadDataToForm;

  cbSkin.Properties.Items.Clear;
  for i := 0 to GetExtendedStylePainters.Count - 1 do
    cbSkin.Properties.Items.Add(GetExtendedStylePainters.Names[I]);
end;

procedure TfmSettingLocal.LoadDataToForm;
begin
  // Local Setting
  cbLanguage.ItemIndex := dmGlobal.SettingLocal.LanguageFlag;
  chkFingerPrintDevice.Checked := dmGlobal.SettingLocal.IsFingerPrintDeviceExist;
  chkUseSkins.Checked := dmGlobal.SettingLocal.UseSkins;
  cbSkin.Text := dmGlobal.SettingLocal.SkinName;
end;

procedure TfmSettingLocal.RefreshAll;
begin
  LoadDataToForm;
end;

procedure TfmSettingLocal.SaveDataFromForm;
begin
  // Save Local Setting
  SetINIValue(dmGlobal.SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'Language', IntToStr(cbLanguage.ItemIndex));
  SetINIValue(dmGlobal.SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'FingerPrintDevice', BoolToStr(chkFingerPrintDevice.Checked));
  SetINIValue(dmGlobal.SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'UseSkins', BoolToStr(chkUseSkins.Checked));
  SetINIValue(dmGlobal.SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'SkinName', cbSkin.Text);

  // Reload all program options !!!
  dmGlobal.LoadDataFromSettingIni;
end;

end.
