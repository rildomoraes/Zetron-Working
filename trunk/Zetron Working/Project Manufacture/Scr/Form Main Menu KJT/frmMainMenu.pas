unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniManufacture, ActnList, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenu = class(TFormUniManufacture)
    mnuBPPBLog: TMenuItem;
    mnuBPPBSawnTimber: TMenuItem;
    mnuHasilGrade: TMenuItem;
    mnuHasilGradeLog: TMenuItem;
    mnuHasilGradeSawnTimber: TMenuItem;
    mnuLPBBalok: TMenuItem;
    mnuLPBItem: TMenuItem;
    mnuLPBLog: TMenuItem;
    mnuPOItemApprove: TMenuItem;
    mnuPOLogApprove: TMenuItem;
    mnuPOSawnTimberApprove: TMenuItem;
    mnuRoughSize: TMenuItem;
    N2: TMenuItem;
    mnuTableLog: TMenuItem;
    procedure mnuBPPBLogClick(Sender: TObject);
    procedure mnuBPPBSawnTimberClick(Sender: TObject);
    procedure mnuHasilGradeLogClick(Sender: TObject);
    procedure mnuHasilGradeSawnTimberClick(Sender: TObject);
    procedure mnuItemClick(Sender: TObject);
    procedure mnuLHPClick(Sender: TObject);
    procedure mnuLPBBalokClick(Sender: TObject);
    procedure mnuLPBItemClick(Sender: TObject);
    procedure mnuLPBLogClick(Sender: TObject);
    procedure mnuPOItemApproveClick(Sender: TObject);
    procedure mnuPOLogApproveClick(Sender: TObject);
    procedure mnuPOSawnTimberApproveClick(Sender: TObject);
    procedure mnuRoughSizeClick(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure mnuSPKClick(Sender: TObject);
    procedure mnuTableLogClick(Sender: TObject);
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
  frmSettingGlobalTimber, frmItemKayu,

  // Inventory
  frmTableLog, frmRoughSize,

  // Production
  frmSPKBOM, frmPermintaanBahanBalok, frmPermintaanBahanLog,
  frmLHP, frmSOManufacture,

  // Pembelian
  dtmTimber, frmPOManufactureItem, frmPOManufactureBalok, frmPOManufactureLog,
  frmTallySheetGrade, frmHasilGradeBalok, frmHasilGradeLog, frmPenerimaanBarang,
  frmPenerimaanBarangKayuBalok, frmPenerimaanBarangKayuLog;

procedure TfmMainMenu.InitForm;
begin
  inherited;

  if not Application.Terminated then
  begin
    // Initialize Datamodule
    dmGlobal.InitComponent(dmInventory);
    dmInventory.LoadDataFromOption;
    dmInventory.InitDatamodule;

    dmGlobal.InitComponent(dmManufacture);
    dmGlobal.InitComponent(dmTimber);
  end;
end;

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

procedure TfmMainMenu.mnuItemClick(Sender: TObject);
begin
  inherited;

  TfmItemKayu.ExecuteForm;
end;

procedure TfmMainMenu.mnuLHPClick(Sender: TObject);
begin
  inherited;

  TfmLHP.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBBalokClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarangKayuBalok.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBItemClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarang.ExecuteForm;
end;

procedure TfmMainMenu.mnuLPBLogClick(Sender: TObject);
begin
  inherited;

  TfmPenerimaanBarangKayuLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuRoughSizeClick(Sender: TObject);
begin
  inherited;

  TfmRoughSize.ExecuteForm;
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;

  TfmSettingGlobalTimber.ExecuteForm;
end;

procedure TfmMainMenu.mnuSPKClick(Sender: TObject);
begin
  inherited;

  TfmSPKBOM.ExecuteForm;
end;

procedure TfmMainMenu.mnuTableLogClick(Sender: TObject);
begin
  inherited;

  TfmTableLog.ExecuteForm;
end;

procedure TfmMainMenu.mnuPOItemApproveClick(Sender: TObject);
begin
  inherited;

  //Param1: 1=Barang Penolong Only  //Param2: 0=All(Pajak & Non Pajak)
  TfmPOManufactureItem.ExecuteForm('1;0', 1);
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
