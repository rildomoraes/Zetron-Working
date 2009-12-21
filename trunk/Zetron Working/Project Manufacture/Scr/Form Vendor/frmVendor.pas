unit frmVendor;

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
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, cxPC,
  cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmVendor = class(TFormUniMasterEx)
    Panel1: TPanel;
    lblVendorId: TLabel;
    dbeVendorId: TcxDBTextEdit;
    btnGetId: TcxButton;
    lblVendorName: TLabel;
    dbeVendorName: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    tsTelephone: TcxTabSheet;
    tsGeneral: TcxTabSheet;
    tsDetail: TcxTabSheet;
    tsShipping: TcxTabSheet;
    dsVendorPhone: TDataSource;
    dsVendorShippingDetail: TDataSource;
    lblAddress: TLabel;
    dbmAddress: TcxDBMemo;
    lblCity: TLabel;
    dblcCity: TcxDBExtLookupComboBox;
    lblCategory: TLabel;
    dblcVendorCategory: TcxDBExtLookupComboBox;
    lblMembership: TLabel;
    dbeMemberId: TcxDBTextEdit;
    lblVendorSince: TLabel;
    dbeVendorSince: TcxDBDateEdit;
    lblEmail: TLabel;
    dbeEmail: TcxDBHyperLinkEdit;
    cgVendorPhone: TcxGrid;
    cgvVendorPhone: TcxGridDBTableView;
    cgvVendorPhonephonename: TcxGridDBColumn;
    cgvVendorPhonecountryext: TcxGridDBColumn;
    cgvVendorPhonecityext: TcxGridDBColumn;
    cgvVendorPhonePhoneNo: TcxGridDBColumn;
    cgVendorPhoneLevel1: TcxGridLevel;
    dblcbCountryExt: TcxDBExtLookupComboBox;
    dblcCityExt: TcxDBExtLookupComboBox;
    lblInvoiceDue: TLabel;
    dbeInvoiceDue: TcxDBSpinEdit;
    lblDay2: TLabel;
    cgShipping: TcxGrid;
    cgvShipping: TcxGridDBTableView;
    cgvShippingShippingCode: TcxGridDBColumn;
    cgvShippingShippingName: TcxGridDBColumn;
    cgvShippingContactPerson: TcxGridDBColumn;
    cgShippingLevel1: TcxGridLevel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayVendorId: TcxGridDBColumn;
    cgvPrevDisplayVendorName: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayCategoryId: TcxGridDBColumn;
    cgvPrevDisplayVendorSince: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    qryGetVendorCode: TADOQuery;
    Label4: TLabel;
    Label2: TLabel;
    dbeCreditLimit: TcxDBCurrencyEdit;
    dbmMemo: TcxDBMemo;
    lblMemo: TLabel;
    tsContactPerson: TcxTabSheet;
    dsVendorContact: TDataSource;
    cgContactPerson: TcxGrid;
    cgvContactPerson: TcxGridDBTableView;
    cgvContactPersonVendorContactId: TcxGridDBColumn;
    cgvContactPersonVendorId: TcxGridDBColumn;
    cgvContactPersonJobPosition: TcxGridDBColumn;
    cgvContactPersonAddress: TcxGridDBColumn;
    cgvContactPersonCountryExt: TcxGridDBColumn;
    cgvContactPersonCityExt: TcxGridDBColumn;
    cgvContactPersonPhoneNo: TcxGridDBColumn;
    cgvContactPersonEmail: TcxGridDBColumn;
    cgvContactPersonReligi: TcxGridDBColumn;
    cgvContactPersonMemo: TcxGridDBColumn;
    cgContactPersonLevel1: TcxGridLevel;
    cgvContactPersonVendorContactName: TcxGridDBColumn;
    cgvVendorPhoneOrderNo: TcxGridDBColumn;
    dbeNPWP: TcxDBMaskEdit;
    qryVendorShippingDetail: TADOQuery;
    qryVendorContact: TADOQuery;
    qryVendorPhone: TADOQuery;
    procedure btnGetIdClick(Sender: TObject);
    procedure qryVendorPhoneNewRecord(DataSet: TDataSet);
    procedure qryVendorPhoneBeforeInsert(DataSet: TDataSet);
    procedure qryVendorShippingDetailBeforeInsert(DataSet: TDataSet);
    procedure qryVendorContactBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmVendor: TfmVendor;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmVendor.btnGetIdClick(Sender: TObject);
var
  S, Prefix: string;
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    if not dsDefault.DataSet.IsEmpty then
      dsDefault.DataSet.Edit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    Prefix := Copy(dsDefault.DataSet.FieldByName('VendorName').AsString, 1, 3);
    qryGetVendorCode.Close;
    OpenIfClose(qryGetVendorCode);
    if not qryGetVendorCode.IsEmpty then
      S := Prefix + ' #' + qryGetVendorCode.Fields[0].AsString
    else
      S := Prefix + ' #1';

    dsDefault.DataSet.FieldByName('VendorCode').AsString := S;
  end;
end;

procedure TfmVendor.InitForm;
begin
  inherited;

  dbeCreditLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmInventory.qryVendor, True);
  OpenIfClose(dmInventory.qryShipping);
  OpenIfClose(qryVendorShippingDetail);
  OpenIfClose(qryVendorPhone);
  OpenIfClose(qryVendorContact);
end;

procedure TfmVendor.qryVendorContactBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmVendor.qryVendorPhoneBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmVendor.qryVendorPhoneNewRecord(DataSet: TDataSet);
begin
  inherited;

  qryVendorPhone.FieldByName('CountryExt').AsString := dblcbCountryExt.EditText;
  qryVendorPhone.FieldByName('CityExt').AsString := dblcCityExt.EditText;
end;

procedure TfmVendor.qryVendorShippingDetailBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmVendor.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmInventory.qryVendorCategory);
  LockRefresh(dmInventory.qryVendor, True);
  OpenIfClose(dmInventory.qryShipping);
  LockRefresh(qryVendorShippingDetail);
  LockRefresh(qryVendorPhone);
  LockRefresh(qryVendorContact);
end;

end.

