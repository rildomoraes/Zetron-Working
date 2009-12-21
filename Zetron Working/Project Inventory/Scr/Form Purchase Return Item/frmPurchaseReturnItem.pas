unit frmPurchaseReturnItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Generate
  frmUniDB, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxCalendar, cxCalc, cxCurrencyEdit,
  cxSpinEdit, DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridDBTableView, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons,
  ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPurchaseReturnItem = class(TFormUniDB)
    btnProcess: TcxButton;
    bvlSpacer12: TBevel;
    btnOk: TcxButton;
    pnl: TPanel;
    lblPeriod: TLabel;
    edtDateStart: TcxDateEdit;
    Label1: TLabel;
    edtDateEnd: TcxDateEdit;
    lblItem: TLabel;
    lcbItem: TcxExtLookupComboBox;
    actPost: TAction;
    actShow: TAction;
    dsPrevItemReturn: TDataSource;
    cgMasterSetup: TcxGrid;
    cgvPurchaseInvoiceReturn: TcxGridTableView;
    cgvPurchaseInvoiceReturnPurchaseInvoiceDate: TcxGridColumn;
    cgvPurchaseInvoiceReturnPurchaseInvoiceId: TcxGridColumn;
    cgvPurchaseInvoiceReturnVendorPurchaseInvoiceId: TcxGridColumn;
    cgvPurchaseInvoiceReturnNo: TcxGridColumn;
    cgvPurchaseInvoiceReturnExpiredDate: TcxGridColumn;
    cgvPurchaseInvoiceReturnQty: TcxGridColumn;
    cgvPurchaseInvoiceReturnPrice: TcxGridColumn;
    cgvPurchaseInvoiceReturnDiscItem: TcxGridColumn;
    cgvPurchaseInvoiceReturnDiscItemPrice: TcxGridColumn;
    cgvPurchaseInvoiceReturnDiscItem2: TcxGridColumn;
    cgvPurchaseInvoiceReturnDiscItemPrice2: TcxGridColumn;
    cgvPurchaseInvoiceReturnVoucherItem: TcxGridColumn;
    cgvPurchaseInvoiceReturnQtyReturnLeft: TcxGridColumn;
    cgvPurchaseInvoiceReturnQtyReturn: TcxGridColumn;
    cgvItem: TcxGridDBTableView;
    cgvItemitemid: TcxGridDBColumn;
    cgvItemitemidexternal: TcxGridDBColumn;
    cgvItemitemname: TcxGridDBColumn;
    cgvItemitemnamechinese: TcxGridDBColumn;
    cgvItemtype: TcxGridDBColumn;
    cgvItemitemcategoryname: TcxGridDBColumn;
    cgvItemjumlah: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    qryPrevItemReturn: TUniQuery;
    qryPurchaseInvoiceReturn: TUniQuery;
    qryPurchaseReturnDt: TUniQuery;
    procedure cgvPurchaseInvoiceReturnQtyReturnPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actShowExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FVendorId: string;
    FPurchaseReturnId: string;
  public
    class procedure ExecuteForm(const AVendorId, APurchaseReturnId: string);
  end;

var
  fmPurchaseReturnItem: TfmPurchaseReturnItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGeneral, dtmInventory,
  dtmShare, dtmGlobal;

procedure TfmPurchaseReturnItem.actShowExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;

  qryPurchaseInvoiceReturn.Close;
  qryPurchaseInvoiceReturn.Params[0].Value := FVendorId;
  qryPurchaseInvoiceReturn.Params[1].Value := VarToStr(lcbItem.EditValue);
  qryPurchaseInvoiceReturn.Params[2].Value := edtDateStart.Date;
  qryPurchaseInvoiceReturn.Params[3].Value := edtDateEnd.Date;
  OpenIfClose(qryPurchaseInvoiceReturn);

  cgvPurchaseInvoiceReturn.DataController.BeginFullUpdate;
  cgvPurchaseInvoiceReturn.DataController.RecordCount := qryPurchaseInvoiceReturn.RecordCount;
  for i := 0 to qryPurchaseInvoiceReturn.RecordCount - 1 do
  begin
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPurchaseInvoiceDate.Index] := qryPurchaseInvoiceReturn.FieldByName('PurchaseInvoiceDate').AsDateTime;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPurchaseInvoiceId.Index] := qryPurchaseInvoiceReturn.FieldByName('PurchaseInvoiceId').AsString;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnVendorPurchaseInvoiceId.Index] := qryPurchaseInvoiceReturn.FieldByName('VendorPurchaseInvoiceId').AsString;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnNo.Index] := qryPurchaseInvoiceReturn.FieldByName('No').AsInteger;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnExpiredDate.Index] := qryPurchaseInvoiceReturn.FieldByName('ExpiredDate').AsDateTime;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQty.Index] := qryPurchaseInvoiceReturn.FieldByName('Qty').AsFloat;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPrice.Index] := qryPurchaseInvoiceReturn.FieldByName('Price').AsCurrency;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItem.Index] := qryPurchaseInvoiceReturn.FieldByName('DiscItem').AsFloat;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice.Index] := qryPurchaseInvoiceReturn.FieldByName('DiscItemPrice').AsCurrency;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItem2.Index] := qryPurchaseInvoiceReturn.FieldByName('DiscItem2').AsFloat;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice2.Index] := qryPurchaseInvoiceReturn.FieldByName('DiscItemPrice2').AsCurrency;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnVoucherItem.Index] := qryPurchaseInvoiceReturn.FieldByName('VoucherItem').AsCurrency;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQtyReturnLeft.Index] := qryPurchaseInvoiceReturn.FieldByName('QtyReturnLeft').AsFloat;
    cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQtyReturn.Index] := 0;
    qryPurchaseInvoiceReturn.Next;
  end;
  cgvPurchaseInvoiceReturn.DataController.EndFullUpdate;
end;

procedure TfmPurchaseReturnItem.cgvPurchaseInvoiceReturnQtyReturnPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;

  if StrToFloat(DisplayValue) > StrToFloat(cgvPurchaseInvoiceReturnQtyReturnLeft.EditValue) then
  begin
    MessageDlg(Format(MSG_RETURN_QTY_GREATER, [IntToStr(cgvPurchaseInvoiceReturnQtyReturnLeft.EditValue)]), mtInformation, [mbOk], 0);
    DisplayValue := cgvPurchaseInvoiceReturnQtyReturnLeft.EditValue;
  end;
end;

class procedure TfmPurchaseReturnItem.ExecuteForm(const AVendorId,
  APurchaseReturnId: string);
var
  fmPurchaseReturnItem: TfmPurchaseReturnItem;
begin
  // NOT MDI
  fmPurchaseReturnItem := TfmPurchaseReturnItem.Create(Application);
  with fmPurchaseReturnItem do
  begin
    try
      FVendorid := AVendorId;
      FPurchaseReturnId := APurchaseReturnId;
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmPurchaseReturnItem.InitForm;
var
  Year, Month, Day: word;
begin
  inherited;

  dmGlobal.InitComponent(Self);
  cgMasterSetup.OnEnter := nil;

  DecodeDate(dmGlobal.SettingGlobal.ServerDateTime, Year, word(Month), Day);
  if (Month - 6) < 1 then
  begin
    Month := 12 - (6 - Month);
    Year := Year - 1;
  end
  else
    Month := Month - 6;
  edtDateStart.Date := EncodeDate(Year, Month, 1);
  edtDateEnd.Date := EndOfTheMonth(dmGlobal.SettingGlobal.ServerDateTime);

  qryPrevItemReturn.Close;
  qryPrevItemReturn.Params[0].Value := FVendorId;
  OpenIfClose(qryPrevItemReturn, True);

  cgvItem.OptionsCustomize.ColumnsQuickCustomization := False;

  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnQtyReturnLeft.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnQtyReturn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceReturnvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmPurchaseReturnItem.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevItemReturn, True);
  actShow.Execute;
end;

procedure TfmPurchaseReturnItem.actPostExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;

  qryPurchaseReturnDt.Close;
  qryPurchaseReturnDt.Params[0].Value := FPurchaseReturnId;
  OpenIfClose(qryPurchaseReturnDt);

  cgvPurchaseInvoiceReturn.DataController.BeginFullUpdate;
  for i := 0 to cgvPurchaseInvoiceReturn.DataController.RecordCount - 1 do
  begin
    if cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQtyReturn.Index] > 0 then
    begin
      qryPurchaseReturnDt.Insert;
      qryPurchaseReturnDt.FieldByName('PurchaseReturnId').AsString := FPurchaseReturnId;
      qryPurchaseReturnDt.FieldByName('No').AsInteger := qryPurchaseReturnDt.RecordCount + 1;
      qryPurchaseReturnDt.FieldByName('PurchaseInvoiceId').AsString := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPurchaseInvoiceId.Index];
      qryPurchaseReturnDt.FieldByName('NoPI').AsInteger := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnNo.Index];
      qryPurchaseReturnDt.FieldByName('ItemId').AsInteger := lcbItem.EditValue;
      qryPurchaseReturnDt.FieldByName('Qty').AsFloat := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQtyReturn.Index];
      qryPurchaseReturnDt.FieldByName('Price').AsFloat := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPrice.Index];
      qryPurchaseReturnDt.FieldByName('DiscItem').AsFloat := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItem.Index];
      qryPurchaseReturnDt.FieldByName('DiscItemPrice').AsCurrency := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice.Index];
      qryPurchaseReturnDt.FieldByName('DiscItem2').AsFloat := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItem2.Index];
      qryPurchaseReturnDt.FieldByName('DiscItemPrice2').AsCurrency := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice2.Index];
      qryPurchaseReturnDt.FieldByName('VoucherItem').AsCurrency := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnVoucherItem.Index];
      qryPurchaseReturnDt.FieldByName('Amount').AsFloat :=
        (cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnPrice.Index] -
        cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice.Index] -
        cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnDiscItemPrice2.Index] -
        cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnVoucherItem.Index]) *
        cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnQtyReturn.Index];
      qryPurchaseReturnDt.FieldByName('ExpiredDate').AsVariant := cgvPurchaseInvoiceReturn.DataController.Values[i, cgvPurchaseInvoiceReturnExpiredDate.Index];
      qryPurchaseReturnDt.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
      qryPurchaseReturnDt.Post;
    end;
  end;
  cgvPurchaseInvoiceReturn.DataController.EndFullUpdate;
  Self.Close;
end;

end.
