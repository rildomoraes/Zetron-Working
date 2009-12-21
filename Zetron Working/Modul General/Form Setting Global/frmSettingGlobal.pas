unit frmSettingGlobal;

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
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxTextEdit, cxContainer, cxEdit, cxCheckBox, cxPC,
  cxControls, StdCtrls, ActnList, cxButtons, ExtCtrls, cxMaskEdit, cxSpinEdit;

type
  TfmSettingGlobal = class(TFormUni)
    actRefresh: TAction;
    actPost: TAction;
    actCancel: TAction;
    cxPageControl1: TcxPageControl;
    tsGeneral: TcxTabSheet;
    chkAutoEdit: TcxCheckBox;
    btnRefresh: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    edtFormatDisplayBerat: TcxTextEdit;
    edtFormatDisplayPLT: TcxTextEdit;
    Label1: TLabel;
    Label3: TLabel;
    edtFormatDisplayQty: TcxTextEdit;
    edtFormatDisplayPersen: TcxTextEdit;
    Label5: TLabel;
    edtFormatDisplayCurrency: TcxTextEdit;
    Label6: TLabel;
    edtFormatDisplayLuas: TcxTextEdit;
    Label7: TLabel;
    edtFormatDisplayVolume: TcxTextEdit;
    edtDecimalPLT: TcxSpinEdit;
    edtDecimalLuas: TcxSpinEdit;
    edtDecimalVolume: TcxSpinEdit;
    edtDecimalQty: TcxSpinEdit;
    edtDecimalPercent: TcxSpinEdit;
    edtDecimalCurrency: TcxSpinEdit;
    edtDecimalBerat: TcxSpinEdit;
    procedure actCancelExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure LoadDataToForm; virtual;
    procedure SaveDataFromForm; virtual;
  private
    procedure RefreshAll;
  public
    { Public declarations }
  end;

var
  fmSettingGlobal: TfmSettingGlobal;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmSettingGlobal.actCancelExecute(Sender: TObject);
begin
  inherited;

  Close;
end;

procedure TfmSettingGlobal.actPostExecute(Sender: TObject);
begin
  inherited;

  SaveDataFromForm;

  MessageDlg(MSG_SAVING_COMPLETE, mtInformation, [mbOk], 0);
end;

procedure TfmSettingGlobal.actRefreshExecute(Sender: TObject);
begin
  inherited;

  RefreshAll;
end;

procedure TfmSettingGlobal.InitForm;
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;

  LoadDataToForm;
end;

procedure TfmSettingGlobal.LoadDataToForm;
begin
  // Global
  {Warning: GLB01 = dipakai untuk Tanggal Closing}
  chkAutoEdit.Checked := dmGlobal.GetSetupValue('GLB04', '1'); // Auto edit data (expert user)
  edtFormatDisplayBerat.EditValue := dmGlobal.GetSetupValue('GLB06', ',0.00;-,0.00'); // Format display berat
  edtFormatDisplayPLT.EditValue := dmGlobal.GetSetupValue('GLB07', ',0.00;-,0.00'); // Format display P / L / T
  edtFormatDisplayQty.EditValue := dmGlobal.GetSetupValue('GLB08', ',0.00;-,0.00'); // Format display qty
  edtFormatDisplayPersen.EditValue := dmGlobal.GetSetupValue('GLB09', ',0.00;-,0.00'); // Format display disc
  edtFormatDisplayCurrency.EditValue := dmGlobal.GetSetupValue('GLB10', ',0.00;-,0.00'); // Format display currency
  edtFormatDisplayLuas.EditValue := dmGlobal.GetSetupValue('GLB11', ',0.00;-,0.00'); // Format display luas
  edtFormatDisplayVolume.EditValue := dmGlobal.GetSetupValue('GLB12', ',0.00;-,0.00'); // Format display volume
end;

procedure TfmSettingGlobal.RefreshAll;
begin
  LoadDataToForm;
end;

procedure TfmSettingGlobal.SaveDataFromForm;
begin
  // Global
  {Warning: GLB01 = dipakai untuk Tanggal Closing}
  {GLB02, GLB03, GLB05 = belum terpakai}
  dmGlobal.SaveSetupValue('GLB04', Integer(chkAutoEdit.Checked)); // Auto edit data (expert user)
  dmGlobal.SaveSetupValue('GLB06', VarToStr(edtFormatDisplayBerat.EditValue)); // Format desimal berat
  dmGlobal.SaveSetupValue('GLB07', VarToStr(edtFormatDisplayPLT.EditValue)); // Format desimal measure
  dmGlobal.SaveSetupValue('GLB08', VarToStr(edtFormatDisplayQty.EditValue)); // Format desimal qty
  dmGlobal.SaveSetupValue('GLB09', VarToStr(edtFormatDisplayPersen.EditValue)); // Format desimal discount
  dmGlobal.SaveSetupValue('GLB10', VarToStr(edtFormatDisplayCurrency.EditValue)); // Format desimal currency
  dmGlobal.SaveSetupValue('GLB11', VarToStr(edtFormatDisplayLuas.EditValue)); // Format desimal luas
  dmGlobal.SaveSetupValue('GLB12', VarToStr(edtFormatDisplayVolume.EditValue)); // Format desimal volume

  // Reload all program options !!!
  dmGlobal.LoadDataFromOption;
end;

end.
