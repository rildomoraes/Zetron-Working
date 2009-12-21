unit frmSupplierBankAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxMemo,
  cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, ADODB;

type
  TfmSupplierBankAccount = class(TFormUniMasterEx)
    cgSupplierBankAccountSetup: TcxGrid;
    cgvSupplierBankAccount: TcxGridDBTableView;
    cgvSupplierBankAccountvcIdSupplier: TcxGridDBColumn;
    cgvSupplierBankAccountvcSupplierIdBank: TcxGridDBColumn;
    cgvSupplierBankAccountvcSupplierAccountNo: TcxGridDBColumn;
    cgvSupplierBankAccountvcAccountName: TcxGridDBColumn;
    cgvSupplierBankAccountchFlagInactive: TcxGridDBColumn;
    cgSupplierBankAccountSetupLevel1: TcxGridLevel;
    lblIdSupplier: TLabel;
    dblcIdSupplier: TcxDBExtLookupComboBox;
    lblIdBank: TLabel;
    lblAccountNo: TLabel;
    lblAccountName: TLabel;
    lblEmployeeName: TLabel;
    dblcSupplierIdBank: TcxDBExtLookupComboBox;
    dbeSupplierAccountNo: TcxDBTextEdit;
    dbeSupplierAccountName: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbchFlagInactive: TcxDBCheckBox;
    dbmNotes: TcxDBMemo;
    qrySupplierBankAccount: TADOQuery;
    procedure qrySupplierBankAccountBeforePost(DataSet: TDataSet);
    procedure qrySupplierBankAccountBeforeOpen(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSupplierBankAccount: TfmSupplierBankAccount;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, dtmAccounting;

procedure TfmSupplierBankAccount.InitForm;
begin
  inherited;

  OpenIfClose(qrySupplierBankAccount);

  SetReadOnly(dbeEmployeeName, True);
end;

procedure TfmSupplierBankAccount.qrySupplierBankAccountBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  OpenIfClose(dmInventory.qrySupplier);
  OpenIfClose(dmAccounting.qryBank);
end;

procedure TfmSupplierBankAccount.qrySupplierBankAccountBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSupplierBankAccount.RefreshAll;
begin
  inherited;

  LockRefresh(qrySupplierBankAccount);
end;

end.
