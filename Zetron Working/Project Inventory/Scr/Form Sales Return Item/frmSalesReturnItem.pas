unit frmSalesReturnItem;

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
  TfmSalesReturnItem = class(TFormUniDB)
    btnProcess: TcxButton;
    bvlSpacer12: TBevel;
    dsPrevItemReturn: TDataSource;
    cgMasterSetup: TcxGrid;
    cgvSalesInvoiceReturn: TcxGridTableView;
    cgvSalesInvoiceReturnSalesInvoiceDate: TcxGridColumn;
    cgvSalesInvoiceReturnSalesInvoiceId: TcxGridColumn;
    cgvSalesInvoiceReturnSalesInvoiceIdInternal: TcxGridColumn;
    cgvSalesInvoiceReturnNo: TcxGridColumn;
    cgvSalesInvoiceReturnExpiredDate: TcxGridColumn;
    cgvSalesInvoiceReturnQty: TcxGridColumn;
    cgvSalesInvoiceReturnPrice: TcxGridColumn;
    cgvSalesInvoiceReturnDiscItem: TcxGridColumn;
    cgvSalesInvoiceReturnDiscItemPrice: TcxGridColumn;
    cgvSalesInvoiceReturnDiscItem2: TcxGridColumn;
    cgvSalesInvoiceReturnDiscItemPrice2: TcxGridColumn;
    cgvSalesInvoiceReturnVoucherItem: TcxGridColumn;
    cgvSalesInvoiceReturnQtyMinus: TcxGridColumn;
    cgvSalesInvoiceReturnQtyReturnLeft: TcxGridColumn;
    cgvSalesInvoiceReturnQtyCanReturn: TcxGridColumn;
    cgvSalesInvoiceReturnQtyReturn: TcxGridColumn;
    cgvItem: TcxGridDBTableView;
    cgvItemitemid: TcxGridDBColumn;
    cgvItemitemidexternal: TcxGridDBColumn;
    cgvItemitemname: TcxGridDBColumn;
    cgvItemitemnamechinese: TcxGridDBColumn;
    cgvItemtype: TcxGridDBColumn;
    cgvItemitemcategoryname: TcxGridDBColumn;
    cgvItemjumlah: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    actShow: TAction;
    btnOk: TcxButton;
    actPost: TAction;
    pnl: TPanel;
    lblPeriod: TLabel;
    Label1: TLabel;
    lblItem: TLabel;
    edtDateStart: TcxDateEdit;
    edtDateEnd: TcxDateEdit;
    lcbItem: TcxExtLookupComboBox;
    qryPrevItemReturn: TUniQuery;
    qrySalesInvoiceReturn: TUniQuery;
    qryInsertSalesReturnDtFIFO: TUniQuery;
    procedure actPostExecute(Sender: TObject);
    procedure cgvSalesInvoiceReturnQtyReturnPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actShowExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FVendorId: string;
    FSalesReturnId: string;
  public
    class procedure ExecuteForm(const AVendorId, ASalesReturnId: string);
  end;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGeneral, dtmInventory,
  dtmShare, dtmGlobal;

procedure TfmSalesReturnItem.actPostExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;

  cgvSalesInvoiceReturn.DataController.BeginFullUpdate;
  for i := 0 to cgvSalesInvoiceReturn.DataController.RecordCount - 1 do
  begin
    if cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyReturn.Index] > 0 then
    begin
      qryInsertSalesReturnDtFIFO.Close;
      qryInsertSalesReturnDtFIFO.Params[0].Value := FSalesReturnId;
      qryInsertSalesReturnDtFIFO.Params[1].Value := cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnSalesInvoiceId.Index];
      qryInsertSalesReturnDtFIFO.Params[2].Value := cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnNo.Index];
      qryInsertSalesReturnDtFIFO.Params[3].Value := lcbItem.EditValue;
      qryInsertSalesReturnDtFIFO.Params[4].AsCurrency := cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyReturn.Index];
      qryInsertSalesReturnDtFIFO.Params[5].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
      qryInsertSalesReturnDtFIFO.Execute;
    end;
  end;
  cgvSalesInvoiceReturn.DataController.EndFullUpdate;
  Self.Close;
end;

procedure TfmSalesReturnItem.actShowExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;

  qrySalesInvoiceReturn.Close;
  qrySalesInvoiceReturn.Params[0].Value := FVendorId;
  qrySalesInvoiceReturn.Params[1].Value := VarToStr(lcbItem.EditValue);
  qrySalesInvoiceReturn.Params[2].Value := edtDateStart.Date;
  qrySalesInvoiceReturn.Params[3].Value := edtDateEnd.Date;
  OpenIfClose(qrySalesInvoiceReturn);

  cgvSalesInvoiceReturn.DataController.BeginFullUpdate;
  cgvSalesInvoiceReturn.DataController.RecordCount := qrySalesInvoiceReturn.RecordCount;
  for i := 0 to qrySalesInvoiceReturn.RecordCount - 1 do
  begin
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnSalesInvoiceDate.Index] := qrySalesInvoiceReturn.FieldByName('SalesInvoiceDate').AsDateTime;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnSalesInvoiceId.index] := qrySalesInvoiceReturn.FieldByName('SalesInvoiceId').AsString;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnSalesInvoiceIdInternal.index] := qrySalesInvoiceReturn.FieldByName('SalesInvoiceIdInternal').AsString;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnNo.index] := qrySalesInvoiceReturn.FieldByName('No').AsInteger;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnExpiredDate.index] := qrySalesInvoiceReturn.FieldByName('ExpiredDate').AsDateTime;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQty.index] := qrySalesInvoiceReturn.FieldByName('Qty').AsFloat;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnPrice.index] := qrySalesInvoiceReturn.FieldByName('Price').AsCurrency;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnDiscItem.index] := qrySalesInvoiceReturn.FieldByName('DiscItem').AsFloat;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnDiscItemPrice.index] := qrySalesInvoiceReturn.FieldByName('DiscItemPrice').AsCurrency;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnDiscItem2.index] := qrySalesInvoiceReturn.FieldByName('DiscItem2').AsFloat;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnDiscItemPrice2.index] := qrySalesInvoiceReturn.FieldByName('DiscItemPrice2').AsCurrency;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnVoucherItem.index] := qrySalesInvoiceReturn.FieldByName('VoucherItem').AsCurrency;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyMinus.index] := qrySalesInvoiceReturn.FieldByName('QtyMinus').AsFloat;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyReturnLeft.index] :=
      cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQty.index] -
      qrySalesInvoiceReturn.FieldByName('QtyReturnLeft').AsFloat;
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyCanReturn.index] :=
      qrySalesInvoiceReturn.FieldByName('QtyReturnLeft').AsFloat;
      //Ivan 26/03/2007 retur barang minus dimungkinkan
      // + qrySalesInvoiceReturn.FieldByName('QtyMinus').AsFloat; // qty minus jumlahnya (-)
    cgvSalesInvoiceReturn.DataController.Values[i, cgvSalesInvoiceReturnQtyReturn.index] := 0;
    qrySalesInvoiceReturn.Next;
  end;
  cgvSalesInvoiceReturn.DataController.EndFullUpdate;
end;

procedure TfmSalesReturnItem.cgvSalesInvoiceReturnQtyReturnPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;

  if StrToFloat(DisplayValue) > StrToFloat(cgvSalesInvoiceReturnQtyCanReturn.EditValue) then
  begin
    MessageDlg(Format(MSG_RETURN_QTY_GREATER, [IntToStr(cgvSalesInvoiceReturnQtyReturnLeft.EditValue)]), mtInformation, [mbOk], 0);
    DisplayValue := cgvSalesInvoiceReturnQtyReturnLeft.EditValue;
  end;
end;

class procedure TfmSalesReturnItem.ExecuteForm(const AVendorId,
  ASalesReturnId: string);
var
  fmSalesReturnItem: TfmSalesReturnItem;
begin
  // NOT MDI !
  fmSalesReturnItem := TfmSalesReturnItem.Create(Application);
  with fmSalesReturnItem do
  begin
    try
      FVendorid := AVendorId;
      FSalesReturnId := ASalesReturnId;
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSalesReturnItem.InitForm;
var
  Year, Month, Day: word;
begin
  inherited;

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

  TcxCurrencyEditProperties(cgvSalesInvoiceReturnQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnQtyReturnLeft.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnQtyReturn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceReturnvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmSalesReturnItem.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevItemReturn, True);
  actShow.Execute;
end;

end.
