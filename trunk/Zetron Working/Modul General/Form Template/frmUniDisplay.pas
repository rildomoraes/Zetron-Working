{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGrid,

  // Auto Generate
  frmUniDB, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFormUniDisplay = class(TFormUniDB)
    {Form induk untuk display}
    actPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnPrint: TcxButton;
    procedure actPrintExecute(Sender: TObject);
  private
    procedure GridOnEnter(Sender: TObject);
      {procedure GridOnEnter men-set default grid yang akan di cetak oleh event
      actPrintExecute. procedure ini digunakan hanya untuk kepentingan form ini
      saja, form keturunan tidak perlu mendefinisikan procedure ini lagi}
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    //procedure InitForm; inherited
    //procedure DeinitForm; inherited
    //procedure RefreshAll; inherited
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited    
  end;

implementation

{$R *.dfm}

procedure TFormUniDisplay.actPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

constructor TFormUniDisplay.Create(AOwner: TComponent);
var
  i : integer;
begin
  inherited;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TcxGrid then
      if not Assigned(TcxGrid(Self.Components[i]).OnEnter) then
        TcxGrid(Self.Components[i]).OnEnter := GridOnEnter;
  end;
end;

procedure TFormUniDisplay.GridOnEnter(Sender: TObject);
begin
  dxComponentPrinter1Link1.Component := TComponent(Sender);
end;

end.
