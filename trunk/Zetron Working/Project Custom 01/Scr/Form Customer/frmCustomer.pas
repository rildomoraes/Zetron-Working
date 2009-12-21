unit frmCustomer;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxMemo, cxDBEdit,
  cxSpinEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, cxPC, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmCustomer = class(TFormUniMasterEx)
    qryCustomerPhone: TADODataSet;
    dsGNCustomerPhone: TDataSource;
    cgCustomerSetup: TcxGrid;
    cgvCustomer: TcxGridDBTableView;
    cgvCustomervcIdCustomer: TcxGridDBColumn;
    cgvCustomervcCustomerName: TcxGridDBColumn;
    cgvCustomervcAddress: TcxGridDBColumn;
    cgvCustomervcIdCity: TcxGridDBColumn;
    cgvCustomervcContactPerson: TcxGridDBColumn;
    cgvCustomervcEmail: TcxGridDBColumn;
    cgvCustomerdtDateIn: TcxGridDBColumn;
    cgvCustomervcNotes: TcxGridDBColumn;
    cgvCustomervcIdCategory: TcxGridDBColumn;
    cgCustomerSetupLevel1: TcxGridLevel;
    pnlEntry: TPanel;
    lblIdCustomer: TLabel;
    lblCustomerName: TLabel;
    dbeIdCustomer: TcxDBTextEdit;
    dbeCustomerName: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lblCustomerAddress: TLabel;
    lblCustomerCity: TLabel;
    lblContactPerson: TLabel;
    lblCustomerEmail: TLabel;
    lblDeliveryDate: TLabel;
    lblDay: TLabel;
    lblSupplierCategory: TLabel;
    Label1: TLabel;
    dbeBudget: TcxDBCurrencyEdit;
    dbeCustomerEmail: TcxDBTextEdit;
    dbeContactPerson: TcxDBTextEdit;
    dblcCity: TcxDBExtLookupComboBox;
    dbeCustomerAddress: TcxDBTextEdit;
    dbeDeliveryDate: TcxDBSpinEdit;
    dblcCategory: TcxDBExtLookupComboBox;
    cxTabSheet2: TcxTabSheet;
    cgCustomerPhone: TcxGrid;
    cgvCustomerPhone: TcxGridDBTableView;
    cgvCustomerPhonevcPhoneName: TcxGridDBColumn;
    cgvCustomerPhonevcCountryExt: TcxGridDBColumn;
    cgvCustomerPhonevcCityExt: TcxGridDBColumn;
    cgvCustomerPhonevcIdCustomerPhone: TcxGridDBColumn;
    cgCustomerPhoneLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    dbmNotes: TcxDBMemo;
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
  fmCustomer: TfmCustomer;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, frmUni;

procedure TfmCustomer.DeinitForm;
begin
  inherited;

  dmInventory.qryCustomer.Tag := 0;
end;

procedure TfmCustomer.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmInventory.qryCustomer);
  OpenIfClose(qryCustomerPhone);

  dmInventory.qryCustomer.Tag := FParamArrayValues[0];
  if FParamArrayValues[0] = 1 then
  begin
    Self.Caption := Self.Caption + ' - Inesert Only';
  end;
end;

procedure TfmCustomer.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmInventory.qryCustomer);
  LockRefresh(qryCustomerPhone);
end;

end.
