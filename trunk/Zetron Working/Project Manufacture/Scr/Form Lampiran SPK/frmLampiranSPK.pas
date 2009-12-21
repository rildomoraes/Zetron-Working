unit frmLampiranSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxCalendar;

type
  TfmLampiranSPK = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeSPKDate: TcxDBDateEdit;
    dbeSPKId: TcxDBTextEdit;
    dbeDibuat: TcxDBDateEdit;
    dblcProses: TcxDBExtLookupComboBox;
    Label4: TLabel;
    dbeDisetujui: TcxDBDateEdit;
    dbeSPKTime: TcxDBDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLampiranSPK: TfmLampiranSPK;

implementation

{$R *.dfm}

end.
