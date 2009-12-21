unit frmMainMenuEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmMainMenuPro, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenuEnt = class(TfmMainMenuPro)
    mnuCashRegister: TMenuItem;
    mnuCounter: TMenuItem;
    mnuEngineGroup: TMenuItem;
    mnuJobType: TMenuItem;
    mnuEngine: TMenuItem;
    mnuEngineGroupJob: TMenuItem;
    mnuShift: TMenuItem;
    mnuMechineCashRegister: TMenuItem;
    mnuTransaksiCashRegister: TMenuItem;
    mnuCounterFisikMesin: TMenuItem;
    mnuMataUang: TMenuItem;
    SP3_1: TMenuItem;
    SelisihKursBank1: TMenuItem;
    SP3_2: TMenuItem;
    SelisihKursHutangVendor1: TMenuItem;
    SelisihKursPiutangVendor1: TMenuItem;
    SelisihKursHutangCustomer1: TMenuItem;
    SelisihKursPiutangCustomer1: TMenuItem;
    SP3_3: TMenuItem;
    procedure mnuItemClick(Sender: TObject);
    procedure mnuItemQtyClick(Sender: TObject);
    procedure mnuShiftClick(Sender: TObject);
    procedure mnuMechineCashRegisterClick(Sender: TObject);
    procedure mnuEngineGroupClick(Sender: TObject);
    procedure mnuJobTypeClick(Sender: TObject);
    procedure mnuEngineClick(Sender: TObject);
    procedure mnuEngineGroupJobClick(Sender: TObject);
    procedure mnuTransaksiCashRegisterClick(Sender: TObject);
    procedure mnuCounterFisikMesinClick(Sender: TObject);
    procedure mnuMataUangClick(Sender: TObject);
    procedure SelisihKursBank1Click(Sender: TObject);
    procedure SelisihKursHutangVendor1Click(Sender: TObject);
    procedure SelisihKursPiutangVendor1Click(Sender: TObject);
    procedure SelisihKursHutangCustomer1Click(Sender: TObject);
    procedure SelisihKursPiutangCustomer1Click(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenuEnt: TfmMainMenuEnt;

implementation

{$R *.dfm}

uses
  // Option
  untConstantaPOS, frmSettingGlobalEnt,
  // Master
  frmItemEnt,
  frmShift, frmCashRegister,
  frmEngine, frmEngineGroup, frmJobType, frmEngineGroupJob,
  frmCurrency,
  // Proses
  frmCashRegisterTransaction, frmPhysicalCounter,
  // Accounting
  frmBankAdjustment,
  frmAPAdjustmentVendor, frmARAdjustmentVendor,
  frmAPAdjustmentCustomer, frmARAdjustmentCustomer;

procedure TfmMainMenuEnt.mnuCounterFisikMesinClick(Sender: TObject);
begin
  inherited;

  TfmPhysicalCounter.ExecuteForm('', 1, '', '');
end;

procedure TfmMainMenuEnt.mnuEngineClick(Sender: TObject);
begin
  inherited;

  TfmEngine.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuEngineGroupClick(Sender: TObject);
begin
  inherited;

  TfmEngineGroup.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuEngineGroupJobClick(Sender: TObject);
begin
  inherited;

  TfmEngineGroupJob.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuItemClick(Sender: TObject);
begin
  //inherited; don't call parent

  TfmItemEnt.ExecuteForm('0'); // with HPP
end;

procedure TfmMainMenuEnt.mnuItemQtyClick(Sender: TObject);
begin
  //inherited; don't call parent

  TfmItemEnt.ExecuteForm('1'); // Qty Only
end;

procedure TfmMainMenuEnt.mnuJobTypeClick(Sender: TObject);
begin
  inherited;

  TfmJobType.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuMataUangClick(Sender: TObject);
begin
  inherited;

  TfmCurrency.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuMechineCashRegisterClick(Sender: TObject);
begin
  inherited;

  TfmCashRegister.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuSettingGlobalClick(Sender: TObject);
begin
//  inherited;  // Don't call Inherit

  TfmSettingGlobalEnt.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuShiftClick(Sender: TObject);
begin
  inherited;

  TfmShift.ExecuteForm();
end;

procedure TfmMainMenuEnt.mnuTransaksiCashRegisterClick(Sender: TObject);
begin
  inherited;

  TfmCashRegisterTransaction.ExecuteForm();
end;

procedure TfmMainMenuEnt.SelisihKursBank1Click(Sender: TObject);
begin
  inherited;

  TfmBankAdjustment.ExecuteForm('', 1, REPORT_BANK_ADJUSTMENT, 'BankAdjustmentId');
end;

procedure TfmMainMenuEnt.SelisihKursHutangCustomer1Click(Sender: TObject);
begin
  inherited;

  TfmAPAdjustmentCustomer.ExecuteForm('', 1, REPORT_AP_CUSTOMER_ADJUSTMENT, 'APAdjustmentCustomerId');
end;

procedure TfmMainMenuEnt.SelisihKursHutangVendor1Click(Sender: TObject);
begin
  inherited;

  TfmAPAdjustmentVendor.ExecuteForm('', 1, REPORT_AP_VENDOR_ADJUSTMENT, 'APAdjustmentVendorId');
end;

procedure TfmMainMenuEnt.SelisihKursPiutangCustomer1Click(Sender: TObject);
begin
  inherited;

  TfmARAdjustmentCustomer.ExecuteForm('', 1, REPORT_AR_CUSTOMER_ADJUSTMENT, 'ARAdjustmentCustomerId');
end;

procedure TfmMainMenuEnt.SelisihKursPiutangVendor1Click(Sender: TObject);
begin
  inherited;

  TfmARAdjustmentVendor.ExecuteForm('', 1, REPORT_AR_VENDOR_ADJUSTMENT, 'ARAdjustmentVendorId');
end;

end.
