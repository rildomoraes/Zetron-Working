unit frmPacking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxTextEdit, cxDBEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxSkinscxPCPainter;

type
  TfmPacking = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PackingID: TcxGridDBColumn;
    cxGrid1DBTableView1PackingCode: TcxGridDBColumn;
    cxGrid1DBTableView1PackingName: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPacking: TfmPacking;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TfmPacking }

procedure TfmPacking.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryPacking)
end;

procedure TfmPacking.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryPacking)
end;

end.
