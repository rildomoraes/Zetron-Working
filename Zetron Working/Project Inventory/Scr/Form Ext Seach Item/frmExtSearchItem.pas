unit frmExtSearchItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmExtSearchItem = class(TFormUniPosition)
    dsPrevSearchItem: TDataSource;
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgvDisplayResultitemidexternal: TcxGridDBColumn;
    cgvDisplayResultitemname: TcxGridDBColumn;
    cgvDisplayResultitemnamechinese: TcxGridDBColumn;
    cgvDisplayResulttype: TcxGridDBColumn;
    cgDisplayResultLevel1: TcxGridLevel;
    actSearch: TAction;
    bvlSeparator2: TBevel;
    Bevel1: TBevel;
    btnSearch: TcxButton;
    lblCari: TLabel;
    edtSearch: TcxTextEdit;
    qryPrevSearchItem: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  protected
    procedure InitForm; override;
  private
    procedure DoSearch(const AParam: string);
    function CreateFilter(const AText: string): string;
  public

  end;

var
  fmExtSearchItem: TfmExtSearchItem;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmExtSearchItem.actSearchExecute(Sender: TObject);
begin
  inherited;

  DoSearch(CreateFilter(VarToStr(edtSearch.EditingText)));
end;

function TfmExtSearchItem.CreateFilter(const AText: string): string;
var
  SearchItem, Search: string;
  Pos: integer;
begin
  Pos := 1;
  SearchItem := UpperCase(StringReplace(AText, ' ', ';', [rfReplaceAll]));
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

procedure TfmExtSearchItem.DoSearch(const AParam: string);
begin
  if Trim(AParam) <> '' then
  begin
    qryPrevSearchItem.Close;
    qryPrevSearchItem.SQL.Clear;
    qryPrevSearchItem.SQL.Add('select ItemIdExternal, ItemName, ItemNameChinese, Type');
    qryPrevSearchItem.SQL.Add('from Item');
    qryPrevSearchItem.SQL.Add('where ' + AParam);
    qryPrevSearchItem.SQL.Add('Order by ItemIdExternal');
    OpenIfClose(qryPrevSearchItem, True);
  end;
end;

procedure TfmExtSearchItem.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    DoSearch(CreateFilter(VarToStr(edtSearch.EditingText)));
end;

procedure TfmExtSearchItem.FormShow(Sender: TObject);
begin
  inherited;

  edtSearch.SetFocus;
end;

procedure TfmExtSearchItem.InitForm;
begin
  inherited;

  SetReadOnly(cgvDisplayResult);
end;

end.
