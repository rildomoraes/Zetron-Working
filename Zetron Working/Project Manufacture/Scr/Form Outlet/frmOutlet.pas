unit frmOutlet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, 
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxDBExtLookupComboBox,  
  cxGrid, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmOutlet = class(TFormUniMasterEx)
    cgGrid: TcxGrid;
    cgvGrid: TcxGridDBTableView;
    cgvGridOutletId: TcxGridDBColumn;
    cgvGridOutletName: TcxGridDBColumn;
    cgvGridContactPerson: TcxGridDBColumn;
    cgvGridAddress: TcxGridDBColumn;
    cgvGridCountryId: TcxGridDBColumn;
    cgvGridProvinceId: TcxGridDBColumn;
    cgvGridCityId: TcxGridDBColumn;
    cgGridLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeOutletCode: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeOutletName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    dbeAddress: TcxDBTextEdit;
    lblIdCity: TLabel;
    dblcCityId: TcxDBExtLookupComboBox;
    Label1: TLabel;
    dbmNotes: TcxDBMemo;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmOutlet: TfmOutlet;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmOutlet.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryOutlet);
end;

procedure TfmOutlet.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryOutlet, True);
end;

end.

