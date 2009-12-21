unit frmSettingGlobalTimber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //
  frmSettingGlobalInventory, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, ActnList, cxMaskEdit, cxSpinEdit, cxTextEdit, cxContainer,
  cxEdit, cxCheckBox, cxPC, cxControls, StdCtrls, cxButtons, ExtCtrls,
  frmSettingGlobal;

type
  TfmSettingGlobalTimber = class(TfmSettingGlobalInventory)
  protected
    procedure LoadDataToForm; override;
    procedure SaveDataFromForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingGlobalTimber: TfmSettingGlobalTimber;

implementation

{$R *.dfm}

uses dtmGlobal, dtmTimber;

procedure TfmSettingGlobalTimber.LoadDataToForm;
begin
  inherited;

end;

procedure TfmSettingGlobalTimber.SaveDataFromForm;
begin
  inherited;

  // Reload all program options !!!
end;

end.
