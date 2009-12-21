unit frmCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxDBExtLookupComboBox, cxGrid, MemDS, DBAccess, Uni,
  cxCurrencyEdit, cxDBEdit, cxCheckBox, cxSpinEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxHyperLinkEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, cxContainer, StdCtrls, cxPC,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmCustomer = class(TFormUniMasterEx)
    dsCustomerPhone: TDataSource;
    dsVendorShippingDetail: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayvcCustomerId: TcxGridDBColumn;
    cgvPrevDisplayCustomerName: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCityId2: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayCategoryId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsTelephone: TcxTabSheet;
    tsGeneral: TcxTabSheet;
    tsDefaultSales: TcxTabSheet;
    tsShipping: TcxTabSheet;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    Panel1: TPanel;
    lblCustomerId: TLabel;
    dbeCustomerId: TcxDBTextEdit;
    btnGetId: TcxButton;
    lblCustomerName: TLabel;
    dbeCustomerName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    dbmAddress: TcxDBMemo;
    lblCity: TLabel;
    dblcCity: TcxDBExtLookupComboBox;
    lblCategory: TLabel;
    dblcCategory: TcxDBExtLookupComboBox;
    lblReligi: TLabel;
    dblcReligi: TcxDBComboBox;
    lblMembership: TLabel;
    dbeMemberId: TcxDBTextEdit;
    lblCustomerSince: TLabel;
    dbeCustomerSince: TcxDBDateEdit;
    lblEmail: TLabel;
    dbeEmail: TcxDBHyperLinkEdit;
    dblcCityExt: TcxDBExtLookupComboBox;
    dblcbCountryExt: TcxDBExtLookupComboBox;
    cgCustomerPhone: TcxGrid;
    cgvCustomerPhone: TcxGridDBTableView;
    cgvCustomerPhonephonename: TcxGridDBColumn;
    cgvCustomerPhonecountryext: TcxGridDBColumn;
    cgvCustomerPhonecityext: TcxGridDBColumn;
    cgvCustomerPhonenumber: TcxGridDBColumn;
    cgvCustomerPhonecontactperson: TcxGridDBColumn;
    cgvCustomerPhoneJobPosition: TcxGridDBColumn;
    cgCustomerPhoneLevel1: TcxGridLevel;
    lblInvoiceDue: TLabel;
    dbeInvoiceDue: TcxDBSpinEdit;
    lblDay2: TLabel;
    lbl1: TLabel;
    dbchkShippingCost: TcxDBCheckBox;
    lbl2: TLabel;
    dbchkPKP: TcxDBCheckBox;
    cgShipping: TcxGrid;
    cgvShipping: TcxGridDBTableView;
    cgvShippingShippingId: TcxGridDBColumn;
    cgvShippingShippingName: TcxGridDBColumn;
    cgvShippingContactPerson: TcxGridDBColumn;
    cgShippingLevel1: TcxGridLevel;
    tsAccounting: TcxTabSheet;
    lbl4: TLabel;
    dbeNPWP: TcxDBTextEdit;
    lbl3: TLabel;
    dbeCreditLimit: TcxDBCurrencyEdit;
    qryGetCustomerId: TUniQuery;
    qryCustomerPhone: TUniQuery;
    qryCustomerShippingDetail: TUniQuery;
    Label1: TLabel;
    dbeCustomerIdParent: TcxDBExtLookupComboBox;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevCustomerParent: TcxGridDBTableView;
    qryPrevCustomerParent: TUniQuery;
    dsPrevCustomerParent: TDataSource;
    cgvPrevCustomerParentcustomerid: TcxGridDBColumn;
    cgvPrevCustomerParentcustomername: TcxGridDBColumn;
    cgvPrevCustomerParentcontactperson: TcxGridDBColumn;
    cgvPrevCustomerParentcityid: TcxGridDBColumn;
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure qryCustomerShippingDetailBeforeEdit(DataSet: TDataSet);
    procedure qryCustomerPhoneBeforeEdit(DataSet: TDataSet);
    procedure qryCustomerPhoneNewRecord(DataSet: TDataSet);
    procedure dbeCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure DetailShow;
    function GetCurrentCustomerId(ACustomerName: variant): string;
  public

  end;

var
  fmCustomer: TfmCustomer;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmCustomer.btnGetIdClick(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
    dmGeneral.qryCustomer.FieldByName('CustomerId').AsString :=
      GetCurrentCustomerId(dmGeneral.qryCustomer.FieldByName('CustomerName').AsString);
end;

procedure TfmCustomer.cgvNavigatorButtonsButtonClick(Sender: TObject;
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
  end
end;

procedure TfmCustomer.cxPageControl1Change(Sender: TObject);
begin
  inherited;

  DetailShow;
end;

procedure TfmCustomer.dbeCustomerIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  DetailShow;
end;

procedure TfmCustomer.DetailShow;
begin
  if cxPageControl1.ActivePage = tsShipping then
  begin
    qryCustomerShippingDetail.Close;
    qryCustomerShippingDetail.Params[0].Value := dmGeneral.qryCustomer.FieldByName('CustomerId').AsVariant;
    OpenIfClose(qryCustomerShippingDetail);
  end;
  if cxPageControl1.ActivePage = tsTelephone then
  begin
    qryCustomerPhone.Close;
    qryCustomerPhone.Params[0].Value := dmGeneral.qryCustomer.FieldByName('CustomerId').AsVariant;
    OpenIfClose(qryCustomerPhone);
  end;
end;

procedure TfmCustomer.qryCustomerPhoneBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if dmGeneral.qryCustomer.State in [dsInsert, dsEdit] then
    dmGeneral.qryCustomer.Post;
  if dmGeneral.qryCustomer.IsEmpty then
    Abort;
end;

procedure TfmCustomer.qryCustomerPhoneNewRecord(DataSet: TDataSet);
begin
  inherited;

  qryCustomerPhone.FieldByName('CountryExt').AsString := dblcbCountryExt.EditText;
  qryCustomerPhone.FieldByName('CityExt').AsString := dblcCityExt.EditText;
end;

function TfmCustomer.GetCurrentCustomerId(ACustomerName: variant): string;
var
  Prefix: string;
  Counter: integer;
begin
  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    Prefix := Copy(dmGeneral.qryCustomer.FieldByName('CustomerName').AsString, 1, 3);
    qryGetCustomerId.Close;
    qryGetCustomerId.Params[0].Value := Prefix + '%';
    OpenIfClose(qryGetCustomerId);
    if not qryGetCustomerId.IsEmpty then
    begin
      Counter := StrToIntDef(Copy(qryGetCustomerId.Fields[0].AsString, 4, length(qryGetCustomerId.Fields[0].AsString) - 3), 0) + 1;
      Result := Prefix + StringOfChar('0', 3 - Length(IntToStr(Counter))) + IntToStr(Counter);
    end
    else
      Result := Prefix + '001';
  end;
end;

procedure TfmCustomer.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmGeneral.qryCategory);
  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryShipping);
  OpenIfClose(qryPrevCustomerParent, True);

  dbeCreditLimit.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmCustomer.qryCustomerShippingDetailBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  if dmGeneral.qryCustomer.State in [dsInsert, dsEdit] then
    dmGeneral.qryCustomer.Post;
  if dmGeneral.qryCustomer.IsEmpty then
    Abort;
end;

procedure TfmCustomer.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmGeneral.qryCategory, True);
  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(qryCustomerPhone);
  LockRefresh(qryCustomerShippingDetail);
end;

end.

