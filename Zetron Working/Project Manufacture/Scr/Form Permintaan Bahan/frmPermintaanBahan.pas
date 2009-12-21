unit frmPermintaanBahan;

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
  TfmPermintaanBahan = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    dbeSPKDate: TcxDBDateEdit;
    dbeSPKId: TcxDBTextEdit;
    dbeDibuat: TcxDBDateEdit;
    dblcProses: TcxDBExtLookupComboBox;
    dbeDisetujui: TcxDBDateEdit;
    dblcMaterial: TcxDBExtLookupComboBox;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    Label8: TLabel;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPermintaanBahan: TfmPermintaanBahan;

implementation

{$R *.dfm}

end.
