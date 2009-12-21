unit frmSettingGlobalInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //
  frmSettingGlobal, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, ActnList, cxMaskEdit, cxSpinEdit, cxTextEdit, cxContainer,
  cxEdit, cxCheckBox, cxPC, cxControls, StdCtrls, cxButtons, ExtCtrls;

type
  TfmSettingGlobalInventory = class(TfmSettingGlobal)
    tsItem: TcxTabSheet;
    Label43: TLabel;
    chkItemNameUnique: TcxCheckBox;
    chkShowInactiveItem: TcxCheckBox;
  protected
    procedure LoadDataToForm; override;
    procedure SaveDataFromForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingGlobalInventory: TfmSettingGlobalInventory;

implementation

{$R *.dfm}

uses dtmGlobal, dtmInventory;

procedure TfmSettingGlobalInventory.LoadDataToForm;
begin
  inherited;

  chkItemNameUnique.Checked := dmGlobal.GetSetupValue('OPT01', '1');
  chkShowInactiveItem.Checked := dmGlobal.GetSetupValue('OPT02', '1');
end;

procedure TfmSettingGlobalInventory.SaveDataFromForm;
begin
  inherited;

  dmGlobal.SaveSetupValue('OPT01', Integer(chkItemNameUnique.Checked));
  dmGlobal.SaveSetupValue('OPT02', Integer(chkShowInactiveItem.Checked));

  // Reload all program options !!!
  dmInventory.LoadDataFromOption;
end;

end.
