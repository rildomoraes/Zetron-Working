unit frmSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxSkinscxPCPainter, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxMemo, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxSpinEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCurrencyEdit, cxPC,
  cxContainer, cxTextEdit, StdCtrls, ADODB, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmSupplier = class(TFormUniMasterEx)
    qrySupplierPhone: TADODataSet;
    dsGNSupplierPhone: TDataSource;
    pnlEntry: TPanel;
    lblIdSupplier: TLabel;
    lblSupplierName: TLabel;
    dbeIdSupplier: TcxDBTextEdit;
    dbeSupplierName: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lblSupplierAddress: TLabel;
    lblSupplierCity: TLabel;
    lblContactPerson: TLabel;
    lblSupplierEmail: TLabel;
    lblDeliveryDate: TLabel;
    Label1: TLabel;
    lblSupplierCategory: TLabel;
    lblDay: TLabel;
    dbeBudget: TcxDBCurrencyEdit;
    dbeSupplierAddress: TcxDBTextEdit;
    dblcCity: TcxDBExtLookupComboBox;
    dbeContactPerson: TcxDBTextEdit;
    dbeSupplierEmail: TcxDBTextEdit;
    dbeDeliveryDate: TcxDBSpinEdit;
    dblcCategory: TcxDBExtLookupComboBox;
    Telephone: TcxTabSheet;
    cgSupplierPhone: TcxGrid;
    cgvSupplierPhone: TcxGridDBTableView;
    cgvSupplierPhonevcPhoneName: TcxGridDBColumn;
    cgvSupplierPhonevcCountryExt: TcxGridDBColumn;
    cgvSupplierPhonevcCityExt: TcxGridDBColumn;
    cgvSupplierPhonevcIdSupplierPhone: TcxGridDBColumn;
    cgSupplierPhoneLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    cgSupplierSetup: TcxGrid;
    cgvSupplier: TcxGridDBTableView;
    cgvSuppliervcIdSupplier: TcxGridDBColumn;
    cgvSuppliervcSupplierName: TcxGridDBColumn;
    cgvSuppliervcAddress: TcxGridDBColumn;
    cgvSuppliervcIdCity: TcxGridDBColumn;
    cgvSuppliervcContactPerson: TcxGridDBColumn;
    cgvSuppliervcEmail: TcxGridDBColumn;
    cgvSupplierdtDateIn: TcxGridDBColumn;
    cgvSuppliervcNotes: TcxGridDBColumn;
    cgvSuppliervcIdCategory: TcxGridDBColumn;
    cgSupplierSetupLevel1: TcxGridLevel;
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSupplier: TfmSupplier;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, frmUni;

procedure TfmSupplier.DeinitForm;
begin
  inherited;

  dmInventory.qrySupplier.Tag := 0;
end;

procedure TfmSupplier.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmInventory.qryCategory);
  OpenIfClose(dmInventory.qrySupplier);
  OpenIfClose(qrySupplierPhone);

  dmInventory.qrySupplier.Tag := FParamArrayValues[0];
  if FParamArrayValues[0] = 1 then
  begin
    Self.Caption := Self.Caption + ' - Inesert Only';
  end;
end;

procedure TfmSupplier.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmInventory.qryCategory);
  LockRefresh(dmInventory.qrySupplier);
  LockRefresh(qrySupplierPhone);
end;

end.
