unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniManufacture, ActnList, Menus, AppEvnts, ExtCtrls, ComCtrls, ToolWin,
  ActnMan, ActnCtrls;

type
  TfmMainMenu = class(TFormUniManufacture)
    mnuHasilGrade: TMenuItem;
    mnuHasilGradeLog: TMenuItem;
    mnuHasilGradeSawnTimber: TMenuItem;
    mnuLPBLog: TMenuItem;
    mnuLPBSawnTimber: TMenuItem;
    mnuMuatHasilGrade: TMenuItem;
    mnuMuatLog: TMenuItem;
    mnuMuatSawnTimber: TMenuItem;
    mnuPeriodePembelian: TMenuItem;
    mnuPOItemApprove: TMenuItem;
    mnuPOItemEntry: TMenuItem;
    mnuPOLogApprove: TMenuItem;
    mnuPOSawnTimberApprove: TMenuItem;
    mnuTallySheetGrade: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    mnuBPPBSawnTimber: TMenuItem;
    mnuBPPBLog: TMenuItem;
    mnuTabelLog: TMenuItem;
    N3: TMenuItem;
    mnuLPBBarang: TMenuItem;
    mnuTransaksiBarang: TMenuItem;
    mnuTransaksiSawnTimber: TMenuItem;
    mnuTransaksiLog: TMenuItem;
    procedure mnuBPPBLogClick(Sender: TObject);
    procedure mnuBPPBSawnTimberClick(Sender: TObject);
    procedure mnuHasilGradeLogClick(Sender: TObject);
    procedure mnuHasilGradeSawnTimberClick(Sender: TObject);
    procedure mnuItemClick(Sender: TObject);
    procedure mnuLaporanHasilProduksi_1Click(Sender: TObject);
    procedure mnuLPBLogClick(Sender: TObject);
    procedure mnuLPBSawnTimberClick(Sender: TObject);
    procedure mnuMuatLogClick(Sender: TObject);
    procedure mnuMuatSawnTimberClick(Sender: TObject);
    procedure mnuPeriodePembelianClick(Sender: TObject);
    procedure mnuPOItemApproveClick(Sender: TObject);
    procedure mnuPOItemEntryClick(Sender: TObject);
    procedure mnuPOLogApproveClick(Sender: TObject);
    procedure mnuPOSawnTimberApproveClick(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure mnuTabelLogClick(Sender: TObject);
    procedure mnuTallySheetGradeClick(Sender: TObject);
    procedure mnuSPKClick(Sender: TObject);
    procedure mnuLPBBarangClick(Sender: TObject);
    procedure mnuTransaksiBarangClick(Sender: TObject);
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
  untProcedure, dtmGlobal, dtmInventory, dtmTimber,

  // Master
  frmSettingGlobalTimber, frmTableLog,

  // Inventory
  frmItemKayu, frmRoughSize,


  // Process
  //frmClosingDate,

  // Production
  frmSPKTimber, frmPermintaanBahanBalok, frmPermintaanBahanLog,
  frmLHP, frmSOManufacture,

  // Pembelian
  frmPOManufactureItem, frmPOManufactureBalok, frmPOManufactureLog,
  frmTallySheetGrade, frmHasilGradeBalok, frmHasilGradeLog,
  frmKayuMuatBalok, frmKayuMuatLog, frmPenerimaanBarang,
  frmPenerimaanBarangItem,frmPenerimaanBarangKayuBalok,
  frmPenerimaanBarangKayuLog, frmPurchaseInvoice,

  // Transaksi
  frmOtherTransaction;

procedure TfmMainMenu.mnuBPPBLogClick(Sender: TObject);
begin
  inherited;

  TfmPermintaanBahanLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuBPPBSawnTimberClick(Sender: TObject);
begin
  inherited;

  TfmPermintaanBahanBalok.ExecuteForm;
end;

procedure TfmMainMenu.mnuHasilGradeLogClick(Sender: TObject);
begin
  inherited;

  TfmHasilGradeLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuHasilGradeSawnTimberClick(Sender: TObject);
begin
  inherited;

  TfmHasilGradeBalok.ExecuteForm;
end;

procedure TfmMainMenu.InitForm;
begin
  inherited;

  if not Application.Terminated then
  begin
    // Load option from database
    dmInventory.LoadDataFromOption;

    // Init component
    dmGlobal.InitComponent(dmInventory);
    dmGlobal.InitComponent(dmTimber);
//    dmGlobal.InitComponent(dmAccounting);
//    dmShare.LoadDataFromOption;
  end;
end;

procedure TfmMainMenu.mnuMuatLogClick(Sender: TObject);
begin
  inherited;

  TfmKayuMuatLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuMuatSawnTimberClick(Sender: TObject);
begin
  inherited;

  TfmKayuMuatBalok.ExecuteForm;
end;

procedure TfmMainMenu.mnuItemClick(Sender: TObject);
begin
  inherited;

  TfmItemKayu.ExecuteForm;
end;

procedure TfmMainMenu.mnuLaporanHasilProduksi_1Click(Sender: TObject);
begin
  inherited;

  TfmLHP.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBBarangClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarangItem.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBLogClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarangKayuLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBSawnTimberClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarangKayuBalok.ExecuteForm;
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;

  TfmSettingGlobalTimber.ExecuteForm;
end;

procedure TfmMainMenu.mnuSPKClick(Sender: TObject);
begin
  inherited;

  TfmSPKTimber.ExecuteForm;
end;

procedure TfmMainMenu.mnuTabelLogClick(Sender: TObject);
begin
  inherited;

  TfmTableLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuTallySheetGradeClick(Sender: TObject);
begin
  inherited;

  TfmTallySheetGrade.ExecuteForm;
end;

procedure TfmMainMenu.mnuTransaksiBarangClick(Sender: TObject);
begin
  inherited;

  TfmOtherTransaction.ExecuteForm;
end;

procedure TfmMainMenu.mnuPeriodePembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm;
end;

procedure TfmMainMenu.mnuPOItemApproveClick(Sender: TObject);
begin
  inherited;

  //Param1: 1=Barang Penolong Only  //Param2: 0=All(Pajak & Non Pajak)
  TfmPOManufactureItem.ExecuteForm('1;0', 1);
end;

procedure TfmMainMenu.mnuPOItemEntryClick(Sender: TObject);
begin
  inherited;

  //Param1: 1=Barang PenolongOnly  //Param2: 0=All(Pajak & Non Pajak)
  TfmPOManufactureItem.ExecuteForm('1;0', 0);
end;

procedure TfmMainMenu.mnuPOLogApproveClick(Sender: TObject);
begin
  inherited;

  //Param1: 3=LogOnly  //Param2: 0=All(Pajak & Non Pajak)
  TfmPOManufactureLog.ExecuteForm('3;0', 1);
end;

procedure TfmMainMenu.mnuPOSawnTimberApproveClick(Sender: TObject);
begin
  inherited;

  //Param1: 2=SawTimberOnly  //Param2: 0=All(Pajak & Non Pajak)
  TfmPOManufactureBalok.ExecuteForm('2;0', 1);
end;

end.

