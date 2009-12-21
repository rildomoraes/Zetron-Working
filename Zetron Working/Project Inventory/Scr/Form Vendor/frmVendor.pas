unit frmVendor;

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
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, cxPC, cxContainer, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

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
    tsDefaultPurchase: TcxTabSheet;
    tsAccounting: TcxTabSheet;
    tsShipping: TcxTabSheet;
    tsMemo: TcxTabSheet;
    dsVendorPhone: TDataSource;
    dsVendorShippingDetail: TDataSource;
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
    lblVendorSince: TLabel;
    dbeVendorSince: TcxDBDateEdit;
    lblEmail: TLabel;
    dbeEmail: TcxDBHyperLinkEdit;
    cgVendorPhone: TcxGrid;
    cgvVendorPhone: TcxGridDBTableView;
    cgvVendorPhonephonename: TcxGridDBColumn;
    cgvVendorPhonecountryext: TcxGridDBColumn;
    cgvVendorPhonecityext: TcxGridDBColumn;
    cgvVendorPhonenumber: TcxGridDBColumn;
    cgvVendorPhonecontactperson: TcxGridDBColumn;
    cgvVendorPhoneJobPosition: TcxGridDBColumn;
    cgVendorPhoneLevel1: TcxGridLevel;
    dblcbCountryExt: TcxDBExtLookupComboBox;
    dblcCityExt: TcxDBExtLookupComboBox;
    lblInvoiceDue: TLabel;
    dbeInvoiceDue: TcxDBSpinEdit;
    lblDay2: TLabel;
    Label5: TLabel;
    dbchkShippingCost: TcxDBCheckBox;
    Label1: TLabel;
    dbchkPKP: TcxDBCheckBox;
    Label4: TLabel;
    dbeNPWP: TcxDBTextEdit;
    Label2: TLabel;
    dbeCreditLimit: TcxDBCurrencyEdit;
    cgShipping: TcxGrid;
    cgvShipping: TcxGridDBTableView;
    cgvShippingShippingId: TcxGridDBColumn;
    cgvShippingShippingName: TcxGridDBColumn;
    cgvShippingContactPerson: TcxGridDBColumn;
    cgShippingLevel1: TcxGridLevel;
    dbmMemo: TcxDBMemo;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayVendorId: TcxGridDBColumn;
    cgvPrevDisplayVendorName: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCityId2: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayCategoryId: TcxGridDBColumn;
    cgvPrevDisplayVendorSince: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    qryGetVendorId: TUniQuery;
    qryVendorPhone: TUniQuery;
    qryVendorShippingDetail: TUniQuery;
    Label3: TLabel;
    dbeVendorIdParent: TcxDBExtLookupComboBox;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevVendorParent: TcxGridDBTableView;
    cgvPrevVendorParentvendorid: TcxGridDBColumn;
    cgvPrevVendorParentvendorname: TcxGridDBColumn;
    cgvPrevVendorParentcontactperson: TcxGridDBColumn;
    cgvPrevVendorParentcityid: TcxGridDBColumn;
    qryPrevVendorParent: TUniQuery;
    dsPrevVendorParent: TDataSource;
    procedure btnGetIdClick(Sender: TObject);
    procedure qryVendorPhoneBeforeEdit(DataSet: TDataSet);
    procedure qryVendorShippingDetailBeforeEdit(DataSet: TDataSet);
    procedure qryVendorPhoneNewRecord(DataSet: TDataSet);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dbeVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure DetailShow;
    function GetCurrentVendorId(AVendorName: variant): string;
  public

  end;

var
  fmVendor: TfmVendor;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmVendor.btnGetIdClick(Sender: TObject);
begin
  inherited;
  if dsDefault.State in [dsInsert, dsEdit] then
    dmGeneral.qryVendor.FieldByName('VendorId').AsString :=
      GetCurrentVendorId(dmGeneral.qryVendor.FieldByName('VendorName').AsString);
end;

procedure TfmVendor.cgvNavigatorButtonsButtonClick(Sender: TObject;
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

procedure TfmVendor.cxPageControl1Change(Sender: TObject);
begin
  inherited;
  DetailShow;
end;

procedure TfmVendor.dbeVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  DetailShow;
end;

procedure TfmVendor.DetailShow;
begin
  if cxPageControl1.ActivePage = tsShipping then
  begin
    qryVendorShippingDetail.Close;
    qryVendorShippingDetail.Params[0].Value := dmGeneral.qryVendor.FieldByName('VendorId').AsVariant;
    OpenIfClose(qryVendorShippingDetail);
  end;
  if cxPageControl1.ActivePage = tsTelephone then
  begin
    qryVendorPhone.Close;
    qryVendorPhone.Params[0].Value := dmGeneral.qryVendor.FieldByName('VendorId').AsVariant;
    OpenIfClose(qryVendorPhone);
  end;
end;

function TfmVendor.GetCurrentVendorId(AVendorName: variant): string;
var
  Prefix: string;
  Counter: integer;
begin
  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    Prefix := Copy(dmGeneral.qryVendor.FieldByName('VendorName').AsString, 1, 3);
    qryGetVendorId.Close;
    qryGetVendorId.Params[0].Value := Prefix + '%';
    OpenIfClose(qryGetVendorId);
    if not qryGetVendorId.IsEmpty then
    begin
      Counter := StrToIntDef(Copy(qryGetVendorId.Fields[0].AsString, 4, length(qryGetVendorId.Fields[0].AsString) - 3), 0) + 1;
      Result := Prefix + StringOfChar('0', 3 - Length(IntToStr(Counter))) + IntToStr(Counter);
    end
    else
      Result := Prefix + '001';
  end;
end;

procedure TfmVendor.InitForm;
begin
  inherited;

  dbeCreditLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmGeneral.qryCategory);
  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryShipping);
  OpenIfClose(qryPrevVendorParent, True);
end;

procedure TfmVendor.qryVendorPhoneBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if dmGeneral.qryVendor.State in [dsInsert, dsEdit] then
    dmGeneral.qryVendor.Post;
  if dmGeneral.qryVendor.IsEmpty then
    Abort;
end;

procedure TfmVendor.qryVendorPhoneNewRecord(DataSet: TDataSet);
begin
  inherited;

  qryVendorPhone.FieldByName('CountryExt').AsString := dblcbCountryExt.EditText;
  qryVendorPhone.FieldByName('CityExt').AsString := dblcCityExt.EditText;
end;

procedure TfmVendor.qryVendorShippingDetailBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if dmGeneral.qryVendor.State in [dsInsert, dsEdit] then
    dmGeneral.qryVendor.Post;
  if dmGeneral.qryVendor.IsEmpty then
    Abort;
end;

procedure TfmVendor.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmGeneral.qryCategory);
  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(qryVendorPhone);
  LockRefresh(qryVendorShippingDetail);
end;

end.

