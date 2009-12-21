unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniManufacture, ActnList, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenu = class(TFormUniManufacture)
    mnuPONonTax: TMenuItem;
    mnuPOTax: TMenuItem;
    Jurnal1: TMenuItem;
    procedure mnuItemClick(Sender: TObject);
    procedure mnuLHPClick(Sender: TObject);
    procedure mnuPONonTaxClick(Sender: TObject);
    procedure mnuPOTaxClick(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure mnuSPKClick(Sender: TObject);
    procedure mnuLPBClick(Sender: TObject);
    procedure Jurnal1Click(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

{$R *.dfm}

uses
  untProcedure, dtmGlobal, dtmInventory, dtmManufacture,

  // Master
  frmSettingGlobalPackaging, frmCurrency, frmDailyKurs,
  frmVendorCategory, frmCustomerCategory,
  frmVendor, frmCustomer, frmShipping, frmWarehouse, frmCostingPrice,

  // Inventory
  frmItemCategory, frmMaterial, frmItemPlastik,
  frmBillMaterial, frmCosting,

  // Process
  //frmClosingDate, frmClosingYear,

  // Pembelian
  frmPOManufactureItem, frmPenerimaanBarang,

  //accounting
  frmJournal,

  // Production
  frmSPKBOM, frmLHP, frmPenerimaanBarangItem; //frmSOManufacture;



procedure TfmMainMenu.InitForm;
begin
  inherited;

  if not Application.Terminated then
  begin
    // Init component
    dmGlobal.InitComponent(dmInventory);
    dmGlobal.InitComponent(dmManufacture);

    // Load option from database
    dmInventory.LoadDataFromOption;
    dmInventory.InitDatamodule;
  end;
end;

procedure TfmMainMenu.Jurnal1Click(Sender: TObject);
begin
  inherited;

  TfmJournal.executeForm();
end;

procedure TfmMainMenu.mnuItemClick(Sender: TObject);
begin
  inherited;

  TfmItemPlastik.ExecuteForm;
end;

procedure TfmMainMenu.mnuLHPClick(Sender: TObject);
begin
  inherited;

  TfmLHP.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBClick(Sender: TObject);
begin
  inherited;

   TfmPenerimaanBarangItem.ExecuteForm('0', 0);
end;

procedure TfmMainMenu.mnuPOTaxClick(Sender: TObject);
begin
  inherited;

  //Param1: 0=All Item  //Param2: 2=Non Pajak Only
  TfmPOManufactureItem.ExecuteForm('0;2', 1);
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;

  TfmSettingGlobalPackaging.ExecuteForm;
end;

procedure TfmMainMenu.mnuSPKClick(Sender: TObject);
begin
  inherited;

  TfmSPKBOM.ExecuteForm;
end;

procedure TfmMainMenu.mnuPONonTaxClick(Sender: TObject);
begin
  inherited;

  //Param1: 0=All Item  //Param2: 1=Pajak Only
  TfmPOManufactureItem.ExecuteForm('0;1', 0);
end;

end.
