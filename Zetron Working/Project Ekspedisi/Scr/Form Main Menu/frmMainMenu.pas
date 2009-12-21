unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMainMenu, ActnList, Menus, AppEvnts, ExtCtrls, ComCtrls, ToolWin,
  ActnMan, ActnCtrls, DB;

type
  TfmMainMenu = class(TFormUniMainMenu)
    mnuEkspedisi: TMenuItem;
    mnuStorageLocation: TMenuItem;
    mnuShipCrew: TMenuItem;
    mnuKapal: TMenuItem;
    N1: TMenuItem;
    mnuRoute: TMenuItem;
    mnuTransaction: TMenuItem;
    mnuShipDailyLog: TMenuItem;
    TarifType1: TMenuItem;
    TarifItem1: TMenuItem;
    CustomerForwarding1: TMenuItem;
    Merek1: TMenuItem;
    Penerimaan1: TMenuItem;
    PackingTrans1: TMenuItem;
    rayek1: TMenuItem;
    DisplaySuppliesReceive1: TMenuItem;
    Konosemen1: TMenuItem;
    Country21: TMenuItem;
    Mutasi1: TMenuItem;
    SettingCounter1: TMenuItem;
    Bongkaran1: TMenuItem;
    BeritaAcara1: TMenuItem;
    SuratJalan1: TMenuItem;
    DisplayBeritaAcara1: TMenuItem;
    KonosemenCustom1: TMenuItem;
    DisplayStock1: TMenuItem;
    Satuan1: TMenuItem;
    DisplayKonosemen1: TMenuItem;
    DisplayStock21: TMenuItem;
    DisplayStock31: TMenuItem;
    DisplaySearchPacking1: TMenuItem;
    KelompokCustomer1: TMenuItem;
    LogDictionary1: TMenuItem;
    procedure mnuStorageLocationClick(Sender: TObject);
    procedure mnuShipCrewClick(Sender: TObject);
    procedure mnuKapalClick(Sender: TObject);
    procedure mnuRouteClick(Sender: TObject);
    procedure mnuShipDailyLogClick(Sender: TObject);
    procedure Merek1Click(Sender: TObject);
    procedure TarifType1Click(Sender: TObject);
    procedure TarifItem1Click(Sender: TObject);
    procedure CustomerForwarding1Click(Sender: TObject);
    procedure RuteKapal1Click(Sender: TObject);
    procedure Penerimaan1Click(Sender: TObject);
    procedure PackingTrans1Click(Sender: TObject);
    procedure rayek1Click(Sender: TObject);
    procedure Konosemen1Click(Sender: TObject);
    procedure Country21Click(Sender: TObject);
    procedure Mutasi1Click(Sender: TObject);
    procedure SettingCounter1Click(Sender: TObject);
    procedure Bongkaran1Click(Sender: TObject);
    procedure BeritaAcara1Click(Sender: TObject);
    procedure SuratJalan1Click(Sender: TObject);
    procedure DisplayBeritaAcara1Click(Sender: TObject);
    procedure KonosemenCustom1Click(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure DisplayStock1Click(Sender: TObject);
    procedure Satuan1Click(Sender: TObject);
    procedure DisplayKonosemen1Click(Sender: TObject);
    procedure DisplaySuppliesReceive1Click(Sender: TObject);
    procedure DisplayStock21Click(Sender: TObject);
    procedure DisplayStock31Click(Sender: TObject);
    procedure KelompokCustomer1Click(Sender: TObject);
    procedure LogDictionary1Click(Sender: TObject);
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
  untProcedure, dtmGlobal, dtmEkspedisi,

  // Master
  frmStorageLocation, frmShipCrew, frmShip,
  frmRoute, frmShipDailyLog, frmTarifType, frmMerek, frmTarifItem,
  frmShipRoute, frmCustomer, frmCountry2,
  frmCounter,frmSettingGlobal,frmUnitMeasure,frmCustomerCategory,
  frmLogDictionary,

  // Process
  //frmClosingDate,

  // Transaksi
  frmSuppliesReceive,
  frmTrxShipDailyLog,
  frmTransactionPacking,
  frmBongkaran,
  frmTrayek,frmKonosemen,frmMutasi,
  frmBeritaAcara, frmSuratJalan,frmDaftarMuatKapal,
  //frmKonosemenCustom,

  //Display
  frmDisplaySuppliesReceive, frmDisplayBeritaAcara,frmDisplayStockLokasi,
  frmDisplayKonosemen,frmDisplayStock2,frmDisplayStock3,
  frmDisplaySearchPacking;

procedure TfmMainMenu.TarifItem1Click(Sender: TObject);
begin
  inherited;

  TfmTarifItem.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.TarifType1Click(Sender: TObject);
begin
  inherited;

  TfmTarifType.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.BeritaAcara1Click(Sender: TObject);
begin
  inherited;

  TfmBeritaAcara.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Bongkaran1Click(Sender: TObject);
begin
  inherited;

  TfmBongkaran.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Country21Click(Sender: TObject);
begin
  inherited;

  TfmCountry2.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.CustomerForwarding1Click(Sender: TObject);
begin
  inherited;

  TfmCustomer.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.DisplayBeritaAcara1Click(Sender: TObject);
var
  Qty: integer;
  No, S, PackingTransCode: string;
begin
  inherited;

  TfmDisplayBeritaAcara.ExecuteForm(S, No, PackingTransCode, Qty);
end;

procedure TfmMainMenu.DisplayKonosemen1Click(Sender: TObject);
var S: string;
begin
  inherited;

  TfmDisplayKonosemen.ExecuteForm(S);
end;

procedure TfmMainMenu.DisplayStock1Click(Sender: TObject);
begin
  inherited;
  TfmDisplayStockLokasi.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.DisplayStock21Click(Sender: TObject);
var S: string;
begin
  inherited;

  TfmDisplayStock2.ExecuteForm(S);
end;

procedure TfmMainMenu.DisplayStock31Click(Sender: TObject);
var S: string;
begin
  inherited;

  TfmDisplayStock3.ExecuteForm(S)
end;

procedure TfmMainMenu.DisplaySuppliesReceive1Click(Sender: TObject);
begin
  inherited;

//  TfmSuppliesReceive.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.InitForm;
begin
  inherited;

  if not Application.Terminated then
  begin
    // Load option from database
//    dmInventory.LoadDataFromOption;

    // Init component
    dmGlobal.InitComponent(dmEkspedisi);
//    dmShare.LoadDataFromOption;
  end;
end;

procedure TfmMainMenu.KelompokCustomer1Click(Sender: TObject);
begin
  inherited;
  TfmCustomerCategory.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Konosemen1Click(Sender: TObject);
begin
  inherited;

  TfmKonosemen.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.KonosemenCustom1Click(Sender: TObject);
begin
  inherited;

//  TfmKonosemenCustom.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.LogDictionary1Click(Sender: TObject);
begin
  inherited;
  TfmLogDictionary.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Merek1Click(Sender: TObject);
begin
  inherited;

  TfmMerek.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuKapalClick(Sender: TObject);
begin
  inherited;

  TfmShip.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuRouteClick(Sender: TObject);
begin
  inherited;

  TfmRoute.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;
  TfmSettingGlobal.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuShipCrewClick(Sender: TObject);
begin
  inherited;

  TfmShipCrew.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuShipDailyLogClick(Sender: TObject);
begin
  inherited;

  TfmTrxShipDailyLog.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.mnuStorageLocationClick(Sender: TObject);
begin
  inherited;

  TfmStorageLocation.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Mutasi1Click(Sender: TObject);
begin
  inherited;

  TfmMutasi.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.PackingTrans1Click(Sender: TObject);
begin
  inherited;
  TfmTransactionPacking.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Penerimaan1Click(Sender: TObject);
begin
  inherited;
  TfmSuppliesReceive.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.rayek1Click(Sender: TObject);
begin
  inherited;
  TfmDaftarMuatKapal.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.RuteKapal1Click(Sender: TObject);
begin
  inherited;

  TfmShipRoute.executeForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.Satuan1Click(Sender: TObject);
begin
  inherited;
  TfmUnitMeasure.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.SettingCounter1Click(Sender: TObject);
begin
  inherited;

  TfmCounter.ExecuteForm((sender as tmenuitem).Name);
end;

procedure TfmMainMenu.SuratJalan1Click(Sender: TObject);
begin
  inherited;

  TfmSuratJalan.ExecuteForm((sender as tmenuitem).Name);
end;

end.

