unit frmCustomerBankAccount;

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
  cxMemo, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls, ADODB;

type
  TfmCustomerBankAccount = class(TFormUniMasterEx)
    cgCustomerBankAccountSetup: TcxGrid;
    cgvCustomerBankAccount: TcxGridDBTableView;
    cgvCustomerBankAccountvcIdCustomer: TcxGridDBColumn;
    cgvCustomerBankAccountvcCustomerIdBank: TcxGridDBColumn;
    cgvCustomerBankAccountvcCustomerAccountNo: TcxGridDBColumn;
    cgvCustomerBankAccountvcAccountName: TcxGridDBColumn;
    cgvCustomerBankAccountchFlagInactive: TcxGridDBColumn;
    cgCustomerBankAccountSetupLevel1: TcxGridLevel;
    lblIdCustomer: TLabel;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    lblIdBank: TLabel;
    dblcCustomerIdBank: TcxDBExtLookupComboBox;
    lblAccountNo: TLabel;
    lblAccountName: TLabel;
    lblEmployeeName: TLabel;
    dbeCustomerAccountNo: TcxDBTextEdit;
    dbeCustomerAccountName: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbchFlagInactive: TcxDBCheckBox;
    dbmNotes: TcxDBMemo;
    qryCustomerBankAccount: TADOQuery;
    procedure qryCustomerBankAccountBeforePost(DataSet: TDataSet);
    procedure qryCustomerBankAccountBeforeOpen(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCustomerBankAccount: TfmCustomerBankAccount;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, dtmAccounting;

procedure TfmCustomerBankAccount.InitForm;
begin
  inherited;

  OpenIfClose(qryCustomerBankAccount);

  SetReadOnly(dbeEmployeeName, True);
end;

procedure TfmCustomerBankAccount.qryCustomerBankAccountBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  
  OpenIfClose(dmInventory.qryCustomer);
  OpenIfClose(dmAccounting.qryBank);
end;

procedure TfmCustomerBankAccount.qryCustomerBankAccountBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmCustomerBankAccount.RefreshAll;
begin
  inherited;

  LockRefresh(qryCustomerBankAccount);
end;

end.
