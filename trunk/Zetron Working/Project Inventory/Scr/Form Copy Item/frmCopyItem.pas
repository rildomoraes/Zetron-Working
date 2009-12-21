unit frmCopyItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Cretae
  frmUniDB, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfmCopyItem = class(TFormUniDB)
    cgMasterSetup: TcxGrid;
    cgvItem: TcxGridDBTableView;
    cgvItemitemid: TcxGridDBColumn;
    cgvItemflaginactive: TcxGridDBColumn;
    cgvItemitemidexternal: TcxGridDBColumn;
    cgvItemitemname: TcxGridDBColumn;
    cgvItemitemnamechinese: TcxGridDBColumn;
    cgvItemtype: TcxGridDBColumn;
    cgvItemunitmeasure: TcxGridDBColumn;
    cgvItemitemcategoryid: TcxGridDBColumn;
    cgvItemmemo: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    pnlBottom: TPanel;
    lblNewItemIdExternal: TLabel;
    edtItemIdExternal: TcxTextEdit;
    lblJobOrder: TLabel;
    edtJobOrder: TcxTextEdit;
    dsPrevItem: TDataSource;
    cxButton1: TcxButton;
    actCopy: TAction;
    procedure FormShow(Sender: TObject);
    procedure cgvItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actCopyExecute(Sender: TObject);
  private
    procedure EncodeItemIdExternal;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmCopyItem: TfmCopyItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmInventory, dtmGlobal,
  dtmShare;

procedure TfmCopyItem.actCopyExecute(Sender: TObject);
var
  NewItemIdExternal: string;
  i: integer;
  ArrayFieldValue: array of variant;
begin

  inherited;

  if edtJobOrder.Text = '' then
    NewItemIdExternal := edtItemIdExternal.Text
  else
    NewItemIdExternal := edtItemIdExternal.Text + '#' + edtJobOrder.Text;

  if Length(NewItemIdExternal) > dmInventory.qryItem.FieldByName('ItemIdExternal').Size then
  begin
    MessageDlg(Format(MSG_COPY_ITEM_LENGTH_FAILED,
      [IntToStr(dmInventory.qryItem.FieldByName('ItemIdExternal').Size)]), mtInformation, [mbOk], 0);
    Exit;
  end;

  // Copy process
  SetLength(ArrayFieldValue, dmInventory.qryItem.Fields.Count);
  for i := 1 to dmInventory.qryItem.Fields.Count do
    ArrayFieldValue[i - 1] := dmInventory.qryItem.Fields[i - 1].Value;

  // Inserting
  dmInventory.qryItem.Insert;
  for i := 1 to dmInventory.qryItem.Fields.Count do
  begin
    if CompareText(dmInventory.qryItem.Fields[i - 1].FieldName, 'ItemId') = 0 then
      // do nothing
    else if CompareText(dmInventory.qryItem.Fields[i - 1].FieldName, 'ItemIdExternal') = 0 then
      dmInventory.qryItem.Fields[i - 1].Value := NewItemIdExternal
    else
      dmInventory.qryItem.Fields[i - 1].Value := ArrayFieldValue[i - 1];
  end;
  dmInventory.qryItem.Post;

  //Finally
  SetLength(ArrayFieldValue, 0);
  MessageDlg(MSG_COPY_ITEM_SUCCESSED, mtInformation, [mbOk], 0);
  ModalResult := mrOk;
end;

procedure TfmCopyItem.cgvItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  EncodeItemIdExternal;
end;

procedure TfmCopyItem.EncodeItemIdExternal;
var
  S: string;
begin
  S := VarToStr(cgvItemitemidexternal.EditValue);
  if Pos('#', S) = 0 then
    edtItemIdExternal.Text := S
  else
    edtItemIdExternal.Text := Copy(S, 1, Pos('#', S) - 1);
end;

procedure TfmCopyItem.FormShow(Sender: TObject);
begin
  inherited;

  EncodeItemIdExternal;
end;

procedure TfmCopyItem.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryItemCategory, True);
  OpenIfClose(dmInventory.qryItem, True);

  SetReadOnly(cgvItem);
end;

procedure TfmCopyItem.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItemCategory, True);
  LockRefresh(dmInventory.qryItem, True);
end;

end.
