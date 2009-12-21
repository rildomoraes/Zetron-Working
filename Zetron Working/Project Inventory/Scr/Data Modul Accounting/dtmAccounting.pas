unit dtmAccounting;

interface

uses
  SysUtils, Classes, Forms, DB, cxNavigator, Dialogs,

  // Auto Generate
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxImageComboBox, Uni, MemDS, DBAccess;

type
  TdmAccounting = class(TDataModule)
    dsPrevBank: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevBank: TcxGridDBTableView;
    dsPrevPaymentType: TDataSource;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    cgvPrevBankBankId: TcxGridDBColumn;
    dsPrevCashBankTransactionType: TDataSource;
    cgvPrevCashBankTransactionType: TcxGridDBTableView;
    cgvPrevCashBankTransactionTypecashbanktransactiontypeid: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypecashbanktransactiontypename: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagbank: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagout: TcxGridDBColumn;
    dsPrevAccount: TDataSource;
    cgvPrevAccount: TcxGridDBTableView;
    cgvPrevAccountaccountno: TcxGridDBColumn;
    cgvPrevAccountaccountname: TcxGridDBColumn;
    dsPrevGiro: TDataSource;
    qryPrevBank: TUniQuery;
    qryPrevCashBankTransactionType: TUniQuery;
    qryPrevAccount: TUniQuery;
    qryPrevGiro: TUniQuery;
    qryPaymentType: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    procedure DeinitDataModule;
    procedure InitDataModule;
  public
    { Public declarations }
  end;

var
  dmAccounting: TdmAccounting;

implementation

uses
  untProcedure, untConstanta, dtmGlobal;

{$R *.dfm}

{ TdmAccounting }

procedure TdmAccounting.DataModuleCreate(Sender: TObject);
begin
  InitDataModule;
end;

procedure TdmAccounting.DataModuleDestroy(Sender: TObject);
begin
  DeinitDataModule;
end;

procedure TdmAccounting.DeinitDataModule;
begin
 //
end;

procedure TdmAccounting.InitDataModule;
begin
  if not Application.Terminated then
    dmGlobal.InitComponent(Self);
end;

procedure TdmAccounting.cgvNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  TableView: TcxGridDBTableView;
begin
  if Sender is TcxNavigatorControlButtons then
  begin
    if TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner is TcxGridDBTableView then
    begin
      TableView := TcxGridDBTableView(TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner);

      if AButtonIndex = NAVIGATOR_BUTTON_REFRESH then
      begin
        LockRefresh(TableView.DataController.DataSource.DataSet);
        ADone := True;
      end;
    end;
  end;
end;

end.

