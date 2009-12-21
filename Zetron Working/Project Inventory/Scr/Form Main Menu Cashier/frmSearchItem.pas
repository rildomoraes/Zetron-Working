unit frmSearchItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,

  //Auto Create
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCurrencyEdit,
  ImgList, untIvPositionDevExpress, ActnList, MemDS, DBAccess, Uni, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, StdCtrls, cxButtons,
  cxContainer, ExtCtrls;

type
  TfmSearchItem = class(TForm)
    lblKeywords: TLabel;
    edtSearch: TcxTextEdit;
    qryPrevSearchItem: TUniQuery;
    dsPrevSearchItem: TDataSource;
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgvDisplayResultItemIdExternal: TcxGridDBColumn;
    cgvDisplayResultitemname: TcxGridDBColumn;
    cgvDisplayResultitemnamechinese: TcxGridDBColumn;
    cgvDisplayResulttype: TcxGridDBColumn;
    cgDisplayResultLevel1: TcxGridLevel;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    cgvDisplayResultBarcodeId: TcxGridDBColumn;
    IvPositionDevExpress1: TIvPositionDevExpress;
    cgvDisplayResultItemId: TcxGridDBColumn;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    qryPrevPrice: TUniQuery;
    dsPrevPrice: TDataSource;
    pcSearchItem: TcxPageControl;
    tsItem: TcxTabSheet;
    tsPriceList: TcxTabSheet;
    ImageList1: TImageList;
    cgvPrice: TcxGridDBTableView;
    cgPriceLevel1: TcxGridLevel;
    cgPrice: TcxGrid;
    cgvPricelevel: TcxGridDBColumn;
    cgvPriceprice: TcxGridDBColumn;
    cgvPricedisc1: TcxGridDBColumn;
    cgvPriceminqty1: TcxGridDBColumn;
    cgvPriceqty1: TcxGridDBColumn;
    cgvPriceunitmeasure1: TcxGridDBColumn;
    dbeItemName: TcxDBTextEdit;
    pnlItemName: TPanel;
    procedure edtSearchPropertiesEditValueChanged(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cgvDisplayResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cgvDisplayResultCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pcSearchItemPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    FItemId: string;
    FBarcodeId: string;

    procedure InitForm;

    function CreateFilter(const AText: string): string;
    procedure DoSearch(const AParam: string);
  public
    class function ExecuteForm(var AItemId, ABarcodeId: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TfmSearchItem.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmSearchItem.actOkExecute(Sender: TObject);
begin
  if not qryPrevSearchItem.IsEmpty then
  begin
    FItemId := cgvDisplayResultitemid.EditValue;
    FBarcodeId := cgvDisplayResultBarcodeId.EditValue;
    ModalResult := mrOk;
  end;
end;

procedure TfmSearchItem.cgvDisplayResultCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actOk.Execute;
end;

procedure TfmSearchItem.cgvDisplayResultKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    actOk.Execute;
end;

function TfmSearchItem.CreateFilter(const AText: string): string;
var
  SearchItem, Search: string;
  Pos: integer;
begin
  Pos := 1;
  SearchItem := UpperCase(StringReplace(AText, ',', ';', [rfReplaceAll]));
  while Pos <= Length(SearchItem) do
  begin
    Search := ExtractFieldName(SearchItem, Pos);
    if Search <> '' then
    begin
      if Result = '' then
        Result := '(upper(itemidexternal) like ' + QuotedStr('%' + Search + '%') + ')'
      else
        Result := Result + 'OR (upper(itemidexternal) like ' + QuotedStr('%' + Search + '%') + ')';
      Result := Result + 'OR (upper(itemname) like ' + QuotedStr('%' + Search + '%') + ')';
      Result := Result + 'OR (upper(itemnamechinese) like ' + QuotedStr('%' + Search + '%') + ')';
      Result := Result + 'OR (upper(type) like ' + QuotedStr('%' + Search + '%') + ')';
    end;
  end;
end;

procedure TfmSearchItem.pcSearchItemPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if NewPage = tsPriceList then
  begin
    qryPrevPrice.Close;
    if not qryPrevSearchItem.IsEmpty then
    begin
      qryPrevPrice.Params[0].Value := qryPrevSearchItem.FieldByName('ItemId').AsVariant;
      qryPrevPrice.Open;
    end;
  end;
end;

procedure TfmSearchItem.DoSearch(const AParam: string);
begin
  edtSearch.Style.Color := clWhite;

  if Trim(AParam) <> '' then
  begin
    qryPrevSearchItem.Close;
    qryPrevSearchItem.SQL.Clear;
    qryPrevSearchItem.SQL.Add('select ItemId, BarcodeId, ItemIdExternal, ItemName, ItemNameChinese, Type');
    qryPrevSearchItem.SQL.Add('from Item');
    qryPrevSearchItem.SQL.Add('where FlagInactive = ''0''');
    qryPrevSearchItem.SQL.Add('and ' + AParam);
    qryPrevSearchItem.SQL.Add('Order by ItemIdExternal');
    OpenIfClose(qryPrevSearchItem, True);

    if qryPrevSearchItem.IsEmpty then
    begin
//      edtSearch.Style.Color := dmGlobal.stRedLight.Color;
//      edtSearch.EditValue := 'Keywords not found';
      edtSearch.SetFocus;
      edtSearch.SelectAll;
    end;
  end;
end;

procedure TfmSearchItem.edtSearchPropertiesEditValueChanged(Sender: TObject);
begin
  pcSearchItem.ActivePage := tsItem;
  cgDisplayResult.SetFocus;
  DoSearch(CreateFilter(VarToStr(edtSearch.EditingValue)));
end;

class function TfmSearchItem.ExecuteForm(var AItemId, ABarcodeId: string): TModalResult;
var
  fmSearchItem: TfmSearchItem;
begin
  fmSearchItem := TfmSearchItem.Create(Application);
  with fmSearchItem do
  begin
    try
      InitForm;
      Result := ShowModal;
      if ModalResult = mrOk then
      begin
        AItemId := FItemId;
        ABarcodeId := FBarcodeId;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmSearchItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    pcSearchItem.ActivePage := tsItem;
    cgDisplayResult.SetFocus;
  end;
  if Key = VK_F2 then
    edtSearch.SetFocus;
  if Key = VK_F3 then
  begin
    pcSearchItem.ActivePage := tsPriceList;
    cgPrice.SetFocus;
  end;
end;

procedure TfmSearchItem.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  SetReadOnly(cgvDisplayResult);
  SetReadOnly(cgvPrice);
  SetReadOnly(dbeItemName);
  TcxCurrencyEditProperties(cgvPriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPricedisc1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPriceminqty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPriceqty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  dmGlobal.InitComponent(Self);
end;

end.
