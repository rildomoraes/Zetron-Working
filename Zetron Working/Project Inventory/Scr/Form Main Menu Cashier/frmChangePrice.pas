unit frmChangePrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxCurrencyEdit, untIvPositionStandard, untIvPositionDevExpress, DB, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls;

type
  TfmChangePrice = class(TForm)
    qryPrevPrice: TUniQuery;
    cgPriceLevel1: TcxGridLevel;
    cgPrice: TcxGrid;
    lblTitle: TLabel;
    cgvPrice: TcxGridTableView;
    cgvPriceLevel: TcxGridColumn;
    cgvPricePrice: TcxGridColumn;
    cgvPriceQtyMin: TcxGridColumn;
    cgvPriceQtyMax: TcxGridColumn;
    cgvPriceUnitMeasure: TcxGridColumn;
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    procedure cgvPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cgvPriceCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FItemId: integer;

    procedure InitForm;
  public
    class function ExecuteForm(AItemId: integer; var AlevelPrice: byte;
      var APrice: Currency; var AUnitMeasure: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

{ TForm1 }

procedure TfmChangePrice.cgvPriceCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult := mrOk;
end;

procedure TfmChangePrice.cgvPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOk;
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

class function TfmChangePrice.ExecuteForm(AItemId: integer;
  var AlevelPrice: byte; var APrice: Currency; var AUnitMeasure: string): TModalResult;
var
  fmChangePrice: TfmChangePrice;
begin
  fmChangePrice := TfmChangePrice.Create(nil);
  with fmChangePrice do
  begin
    try
      FItemId := AItemId;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AlevelPrice := cgvPriceLevel.EditValue;
        APrice := cgvPricePrice.EditValue;
        AUnitMeasure := cgvPriceUnitMeasure.EditValue;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmChangePrice.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;
  IvPositionStandard1.Filename := Filename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;

  SetReadOnly(cgvPrice);
  TcxCurrencyEditProperties(cgvPricePrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPriceQtyMin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPriceQtyMax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  qryPrevPrice.Params[0].Value := FItemId;
  OpenIfClose(qryPrevPrice);
  if not qryPrevPrice.IsEmpty then
  begin
    lblTitle.Caption := qryPrevPrice.FieldByName('ItemName').AsString;
    cgvPrice.DataController.RecordCount := 7;
    cgvPrice.DataController.Values[0, cgvPriceLevel.Index] := '1';
    cgvPrice.DataController.Values[0, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price1').AsCurrency;
    cgvPrice.DataController.Values[0, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty1').AsFloat;
    cgvPrice.DataController.Values[0, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty1').AsFloat;
    cgvPrice.DataController.Values[0, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure1').AsString;

    cgvPrice.DataController.Values[1, cgvPriceLevel.Index] := '2';
    cgvPrice.DataController.Values[1, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price2').AsCurrency;
    cgvPrice.DataController.Values[1, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty2').AsFloat;
    cgvPrice.DataController.Values[1, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty2').AsFloat;
    cgvPrice.DataController.Values[1, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure2').AsString;

    cgvPrice.DataController.Values[2, cgvPriceLevel.Index] := '3';
    cgvPrice.DataController.Values[2, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price3').AsCurrency;
    cgvPrice.DataController.Values[2, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty3').AsFloat;
    cgvPrice.DataController.Values[2, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty3').AsFloat;
    cgvPrice.DataController.Values[2, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure3').AsString;

    cgvPrice.DataController.Values[3, cgvPriceLevel.Index] := '4';
    cgvPrice.DataController.Values[3, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price4').AsCurrency;
    cgvPrice.DataController.Values[3, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty4').AsFloat;
    cgvPrice.DataController.Values[3, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty4').AsFloat;
    cgvPrice.DataController.Values[3, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure4').AsString;

    cgvPrice.DataController.Values[4, cgvPriceLevel.Index] := '5';
    cgvPrice.DataController.Values[4, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price5').AsCurrency;
    cgvPrice.DataController.Values[4, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty5').AsFloat;
    cgvPrice.DataController.Values[4, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty5').AsFloat;
    cgvPrice.DataController.Values[4, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure5').AsString;

    cgvPrice.DataController.Values[5, cgvPriceLevel.Index] := '6';
    cgvPrice.DataController.Values[5, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price6').AsCurrency;
    cgvPrice.DataController.Values[5, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty6').AsFloat;
    cgvPrice.DataController.Values[5, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty6').AsFloat;
    cgvPrice.DataController.Values[5, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure6').AsString;

    cgvPrice.DataController.Values[6, cgvPriceLevel.Index] := '7';
    cgvPrice.DataController.Values[6, cgvPricePrice.Index] := qryPrevPrice.FieldByName('Price7').AsCurrency;
    cgvPrice.DataController.Values[6, cgvPriceQtyMin.Index] := qryPrevPrice.FieldByName('MinQty7').AsFloat;
    cgvPrice.DataController.Values[6, cgvPriceQtyMax.Index] := qryPrevPrice.FieldByName('Qty7').AsFloat;
    cgvPrice.DataController.Values[6, cgvPriceUnitMeasure.Index] := qryPrevPrice.FieldByName('UnitMeasure7').AsString;
  end
  else
    ModalResult := mrCancel;
end;

end.
