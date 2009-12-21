unit dtmAccounting;

interface

uses
  SysUtils, Classes, DB, ADODB, dtmGlobal, cxStyles, cxCustomData, cxNavigator,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Forms,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBExtLookupComboBox;

type
  TdmAccounting = class(TDataModule)
    dsBank: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvBank: TcxGridDBTableView;
    cgvBankvcIdBank: TcxGridDBColumn;
    cgvBankvcBankName: TcxGridDBColumn;
    cgvBankvcBankContactPerson: TcxGridDBColumn;
    cgvBankvcBankAddress: TcxGridDBColumn;
    cgvBankvcPhone: TcxGridDBColumn;
    cgvBankvcCityName: TcxGridDBColumn;
    qryBank: TADOQuery;
    qryPrevSupplierDownPayment: TADOQuery;
    dsPrevSupplierDownPayment: TDataSource;
    qryPrevCustomerDownPayment: TADOQuery;
    dsPrevCustomerDownPayment: TDataSource;
    qryPaymentType: TADOQuery;
    dsPaymentType: TDataSource;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypevcIdPaymentType: TcxGridDBColumn;
    cgvPrevPaymentTypevcPaymentTypeName: TcxGridDBColumn;
    procedure qryBankBeforeOpen(DataSet: TDataSet);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAccounting: TdmAccounting;

implementation

uses
  untProcedure, untConstanta, dtmInventory;

{$R *.dfm}

{ TdmAccounting }

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

procedure TdmAccounting.qryBankBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity);
end;

end.
