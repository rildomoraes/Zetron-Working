unit frmItemKayu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math,

  // Auto Generate
  frmItem, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImage, cxBlobEdit,
  cxDBExtLookupComboBox, cxCalc, cxCheckBox, dxSkinsdxDockControlPainter,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, untIvPositionDevExpress, ADODB, dxDockControl,
  untIvPositionStandard, DBActns, ActnList, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxSpinEdit, cxCurrencyEdit, cxDBEdit, cxImageComboBox, cxDropDownEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxPC, cxContainer, cxTextEdit,
  StdCtrls, dxDockPanel, cxButtons, ExtCtrls, DBCtrls;

type
  TfmItemKayu = class(TfmItem)
    lblKondisiKayu: TLabel;
    dbeItemProperty1: TcxDBImageComboBox;
    dbeItemProperty2: TcxDBImageComboBox;
    lblBentukKayu: TLabel;
  private

  public
    { Public declarations }
  end;

var
  fmItemKayu: TfmItemKayu;

implementation

{$R *.dfm}

end.
