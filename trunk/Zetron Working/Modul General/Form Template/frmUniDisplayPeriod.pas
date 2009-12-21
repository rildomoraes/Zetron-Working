{*******************************
  Copyrights By Zetron System
  Last Modified 14/07/2008
*******************************}

unit frmUniDisplayPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TFormUniDisplayPeriod = class(TFormUniDisplay)
    {Form display dengan fasilitas periode}
    pnlCustom: TPanel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
  private
    //procedure GridOnEnter(Sender: TObject);
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    //procedure InitForm; inherited
    //procedure DeinitForm; inherited
    //procedure RefreshAll; inherited
    procedure MonthYearValueChange(Sender: TObject); virtual; abstract;
      {procedure MonthYearValueChange dipanggil ketika ada perubahan pada
      periode bulan atau tahun pada form}
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

constructor TFormUniDisplayPeriod.Create(AOwner: TComponent);
begin
  inherited;

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
end;

end.
