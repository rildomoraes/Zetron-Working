unit frmBankAccount;

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
  TfmBankAccount = class(TFormUniMasterEx)
    cgBankAccountSetup: TcxGrid;
    cgvBankAccount: TcxGridDBTableView;
    cgvBankAccountvcIdBank: TcxGridDBColumn;
    cgvBankAccountvcAccountNo: TcxGridDBColumn;
    cgvBankAccountvcAccountName: TcxGridDBColumn;
    cgvBankAccountchFlagInactive: TcxGridDBColumn;
    cgBankAccountSetupLevel1: TcxGridLevel;
    lblIdBank: TLabel;
    lblAccountNo: TLabel;
    lblAccountName: TLabel;
    lblEmployeeName: TLabel;
    dblcIdBank: TcxDBExtLookupComboBox;
    dbeAccountNo: TcxDBTextEdit;
    dbeAccountName: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbchFlagInactive: TcxDBCheckBox;
    dbmNotes: TcxDBMemo;
    qryBankAccount: TADOQuery;
    procedure qryBankAccountBeforeOpen(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBankAccount: TfmBankAccount;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmAccounting;

procedure TfmBankAccount.InitForm;
begin
  inherited;

  OpenIfClose(qryBankAccount);
  
  SetReadOnly(dbeEmployeeName, True);
end;

procedure TfmBankAccount.qryBankAccountBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  OpenIfClose(dmAccounting.qryBank);
end;

procedure TfmBankAccount.RefreshAll;
begin
  inherited;

  LockRefresh(qryBankAccount);
end;

end.
