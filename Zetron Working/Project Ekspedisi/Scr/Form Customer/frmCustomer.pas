unit frmCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxSkinscxPCPainter, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxHyperLinkEdit, cxDropDownEdit, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMemo, StdCtrls, cxPC, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmCustomer = class(TFormUniMasterEx)
    dsCustomerPhone: TDataSource;
    dsCustomerMerek: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayvcCustomerId: TcxGridDBColumn;
    cgvPrevDisplayCustomerName: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayCategoryId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsTelephone: TcxTabSheet;
    tsGeneral: TcxTabSheet;
    tsDetail: TcxTabSheet;
    tsShipping: TcxTabSheet;
    Panel1: TPanel;
    lblCustomerId: TLabel;
    dbeCustomerId: TcxDBTextEdit;
    btnGetId: TcxButton;
    lblCustomerName: TLabel;
    dbeCustomerName: TcxDBTextEdit;
    lblAddress: TLabel;
    dbmAddress: TcxDBMemo;
    lblCity: TLabel;
    dblcCity: TcxDBExtLookupComboBox;
    lblCategory: TLabel;
    dblcCustomerCategory: TcxDBExtLookupComboBox;
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
    cgvCustomerPhonePhoneNo: TcxGridDBColumn;
    cgCustomerPhoneLevel1: TcxGridLevel;
    lblInvoiceDue: TLabel;
    dbeInvoiceDue: TcxDBSpinEdit;
    lblDay2: TLabel;
    qryGetCustomerCode: TADOQuery;
    lbl4: TLabel;
    lbl3: TLabel;
    dbeCreditLimit: TcxDBCurrencyEdit;
    dbmMemo: TcxDBMemo;
    lblMemo: TLabel;
    tsContactPerson: TcxTabSheet;
    dsCustomerContact: TDataSource;
    cgContactPerson: TcxGrid;
    cgvContactPerson: TcxGridDBTableView;
    cgContactPersonLevel1: TcxGridLevel;
    cgvContactPersonCustomerContactId: TcxGridDBColumn;
    cgvContactPersonCustomerId: TcxGridDBColumn;
    cgvContactPersonCustomerContactName: TcxGridDBColumn;
    cgvContactPersonJobPosition: TcxGridDBColumn;
    cgvContactPersonAddress: TcxGridDBColumn;
    cgvContactPersonCountryExt: TcxGridDBColumn;
    cgvContactPersonCityExt: TcxGridDBColumn;
    cgvContactPersonPhoneNo: TcxGridDBColumn;
    cgvContactPersonEmail: TcxGridDBColumn;
    cgvContactPersonReligi: TcxGridDBColumn;
    cgvContactPersonMemo: TcxGridDBColumn;
    cgvCustomerPhoneOrderNo: TcxGridDBColumn;
    dbeNPWP: TcxDBMaskEdit;
    cgMerek: TcxGrid;
    cgvMerek: TcxGridDBTableView;
    cgMerekLevel1: TcxGridLevel;
    cgvMerekMerekId: TcxGridDBColumn;
    cgvMerekMerekCode: TcxGridDBColumn;
    cgvMerekMerekName: TcxGridDBColumn;
    cgvMerekRouteId: TcxGridDBColumn;
    qryCustomerPhone: TADODataSet;
    qryCustomerMerek: TADODataSet;
    qryCustomerContact: TADODataSet;
    procedure btnGetIdClick(Sender: TObject);
    procedure qryCustomerPhoneNewRecord(DataSet: TDataSet);
    procedure qryCustomerContactBeforeInsert(DataSet: TDataSet);
    procedure qryCustomerMerekBeforeInsert(DataSet: TDataSet);
    procedure qryCustomerPhoneBeforeInsert(DataSet: TDataSet);
    procedure qryCustomerMerekBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCustomer: TfmCustomer;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmEkspedisi;

procedure TfmCustomer.btnGetIdClick(Sender: TObject);
var
  S, Prefix: string;
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    if not dsDefault.DataSet.IsEmpty then
      dsDefault.DataSet.Edit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    Prefix := Copy(dsDefault.DataSet.FieldByName('CustomerName').AsString, 1, 3);
    qryGetCustomerCode.Close;
    OpenIfClose(qryGetCustomerCode);
    if not qryGetCustomerCode.IsEmpty then
      S := Prefix + ' #' + qryGetCustomerCode.Fields[0].AsString
    else
      S := Prefix + ' #1';

    dsDefault.DataSet.FieldByName('CustomerCode').AsString := S;
  end;
end;

procedure TfmCustomer.qryCustomerContactBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCustomer.qryCustomerPhoneBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCustomer.qryCustomerPhoneNewRecord(DataSet: TDataSet);
begin
  inherited;

  qryCustomerPhone.FieldByName('CountryExt').AsString := dblcbCountryExt.EditText;
  qryCustomerPhone.FieldByName('CityExt').AsString := dblcCityExt.EditText;
end;

procedure TfmCustomer.qryCustomerMerekBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCustomer.qryCustomerMerekBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if qryCustomerMerek.FieldByName('Mer') then

end;

procedure TfmCustomer.InitForm;
begin
  inherited;

  dbeCreditLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmEkspedisi.qryCustomerCategory, True);
  OpenIfClose(dmEkspedisi.qryCustomer, True);
  OpenIfClose(dmEkspedisi.qryRoute, True);
  OpenIfClose(qryCustomerMerek);
  OpenIfClose(qryCustomerPhone);
  OpenIfClose(qryCustomerContact);
end;

procedure TfmCustomer.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmEkspedisi.qryCustomerCategory);
  LockRefresh(dmEkspedisi.qryCustomer, True);
  LockRefresh(dmEkspedisi.qryRoute, True);
  LockRefresh(qryCustomerMerek);
  LockRefresh(qryCustomerPhone);
  LockRefresh(qryCustomerContact);
end;

end.

