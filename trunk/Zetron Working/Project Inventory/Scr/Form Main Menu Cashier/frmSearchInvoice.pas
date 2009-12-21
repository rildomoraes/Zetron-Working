unit frmSearchInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxCalendar, cxCalc, Menus, cxLookAndFeelPainters, MemDS,
  DBAccess, Uni, untIvPositionDevExpress, ActnList, StdCtrls, ExtCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfmSearchInvoice = class(TForm)
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    IvPositionDevExpress1: TIvPositionDevExpress;
    qryPrevRegisterSales: TUniQuery;
    dsPrevRegisterSales: TDataSource;
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgDisplayResultLevel1: TcxGridLevel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    pnlBottom: TPanel;
    cgvDisplayResultregistersalesid: TcxGridDBColumn;
    cgvDisplayResultregistersalesdate: TcxGridDBColumn;
    cgvDisplayResultamount: TcxGridDBColumn;
    cgvDisplayResultdisc: TcxGridDBColumn;
    cgvDisplayResultdiscamount: TcxGridDBColumn;
    cgvDisplayResultdisc2: TcxGridDBColumn;
    cgvDisplayResultdiscamount2: TcxGridDBColumn;
    cgvDisplayResultvoucher: TcxGridDBColumn;
    cgvDisplayResultvoucheramount: TcxGridDBColumn;
    cgvDisplayResulttax: TcxGridDBColumn;
    cgvDisplayResulttaxamount: TcxGridDBColumn;
    cgvDisplayResulttotalamount: TcxGridDBColumn;
    cgvDisplayResulttotalpaymentamount: TcxGridDBColumn;
    cgvDisplayResultoutstandingtotalamount: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    stRedLight: TcxStyle;
    cgvDisplayResultstatusapprove: TcxGridDBColumn;
    pnlLegend: TPanel;
    Image1: TImage;
    lblVoid: TLabel;
    procedure cgvDisplayResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure cgvDisplayResultStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvDisplayResultCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FCashRegisterTransactionId: string;
    FRegisterSalesId: string;

    procedure InitForm;
  public
    class function ExecuteForm(const ACashRegisterTransactionId: string; var ARegisterSalesId: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

{ TfmSearchInvoice }

procedure TfmSearchInvoice.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmSearchInvoice.actOkExecute(Sender: TObject);
begin
  if not qryPrevRegisterSales.IsEmpty then
  begin
    FRegisterSalesId := cgvDisplayResultregistersalesid.EditValue;
    ModalResult := mrOk;
  end;
end;

procedure TfmSearchInvoice.cgvDisplayResultCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actOk.Execute;
end;

procedure TfmSearchInvoice.cgvDisplayResultKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    actOk.Execute;
end;

procedure TfmSearchInvoice.cgvDisplayResultStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if not (ARecord.Values[cgvDisplayResultstatusapprove.Index] = null) then
    if (ARecord.Values[cgvDisplayResultstatusapprove.Index] = STATUS_VOID)then
      AStyle := stRedLight;
end;

class function TfmSearchInvoice.ExecuteForm(
  const ACashRegisterTransactionId: string;
  var ARegisterSalesId: string): TModalResult;
var
  fmSearchInvoice: TfmSearchInvoice;
begin
  fmSearchInvoice := TfmSearchInvoice.Create(Application);
  with fmSearchInvoice do
  begin
    try
      FCashRegisterTransactionId := ACashRegisterTransactionId;
      FRegisterSalesId := ARegisterSalesId;
      InitForm;
      Result := ShowModal;
      if ModalResult = mrOk then
        ARegisterSalesId := FRegisterSalesId;
    finally
      Release;
    end;
  end;
end;

procedure TfmSearchInvoice.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  TcxCalcEditProperties(cgvDisplayResultamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResultdisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvDisplayResultdiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResultdisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvDisplayResultdiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResultvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResulttax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvDisplayResulttotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResulttotalpaymentamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayResultoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvDisplayResult);

  dmGlobal.InitComponent(Self);

  qryPrevRegisterSales.Close;
  qryPrevRegisterSales.Params[0].Value := FCashRegisterTransactionId;
  OpenIfClose(qryPrevRegisterSales, True, True);
  qryPrevRegisterSales.Locate('RegisterSalesId', FRegisterSalesId, [loCaseInsensitive]);
end;

end.
