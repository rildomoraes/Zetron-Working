unit frmPurchasePrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDB, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxGraphics,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, cxCalendar, ADODB, dxmdaset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCurrencyEdit, cxSpinEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxProgressBar, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmPurchasePrice = class(TFormUniDB)
    mdPrevVendor: TdxMemData;
    dsPrevVendor: TDataSource;
    PopupMenu1: TPopupMenu;
    DeselectAll1: TMenuItem;
    cxButton1: TcxButton;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label8: TLabel;
    pbProcess: TcxProgressBar;
    actPost: TAction;
    pnlHeader: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lcbItemId: TcxExtLookupComboBox;
    lcbItemName: TcxExtLookupComboBox;
    cgVendor: TcxGrid;
    cgvVendor: TcxGridDBTableView;
    cgvVendorFlagCheck: TcxGridDBColumn;
    cgvVendorvendorid: TcxGridDBColumn;
    cgvVendorcustomername: TcxGridDBColumn;
    cgvVendorcontactperson: TcxGridDBColumn;
    cgvVendoraddress: TcxGridDBColumn;
    cgvVendorcountryname: TcxGridDBColumn;
    cgvVendorprovincename: TcxGridDBColumn;
    cgvVendorcityname: TcxGridDBColumn;
    cgvVendorcategoryid: TcxGridDBColumn;
    cgvVendorcustomersince: TcxGridDBColumn;
    cgVendorLevel1: TcxGridLevel;
    edtNewDisc: TcxSpinEdit;
    edtNewDisc2: TcxSpinEdit;
    edtNewPrice: TcxCurrencyEdit;
    qryPrevVendor: TADOQuery;
    qryGetPurchasePrice: TADOQuery;
    procedure DeselectAll1Click(Sender: TObject);
    procedure lcbItemNamePropertiesEditValueChanged(Sender: TObject);
    procedure lcbItemIdPropertiesEditValueChanged(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmPurchasePrice: TfmPurchasePrice;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal,dtmInventory;

procedure TfmPurchasePrice.actPostExecute(Sender: TObject);
begin
  inherited;

  //Process
  if mdPrevVendor.State in [dsEdit, dsInsert] then
    mdPrevVendor.Post;

  if VarToStr(lcbItemId.EditValue) = '' then
    Exit;
  if (edtNewPrice.EditValue < 0) or (edtNewDisc.EditValue < 0) then
  begin
    MessageDlg(MSG_NEW_PRICE_INVALID, mtInformation, [mbOk], 0);
    Exit;
  end;

  pbProcess.Properties.Max := cgvVendor.DataController.Summary.FooterSummaryValues[0];
  mdPrevVendor.DisableControls;
  while mdPrevVendor.Locate('FlagCheck', 1, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    qryGetPurchasePrice.Close;
    qryGetPurchasePrice.Parameters[0].Value := mdPrevVendor.FieldByName('VendorId').AsString;
    qryGetPurchasePrice.Parameters[1].Value := lcbItemId.EditValue;
    OpenIfClose(qryGetPurchasePrice);

    if qryGetPurchasePrice.IsEmpty then
    begin
      qryGetPurchasePrice.Insert;
      qryGetPurchasePrice.FieldByName('ItemId').AsString := lcbItemId.EditValue;
      qryGetPurchasePrice.FieldByName('VendorId').AsString := mdPrevVendor.FieldByName('VendorId').AsString;
    end
    else
      qryGetPurchasePrice.Edit;
    qryGetPurchasePrice.FieldByName('LastPI').AsVariant := null;
    qryGetPurchasePrice.FieldByName('Price').AsCurrency := edtNewPrice.EditValue;
    qryGetPurchasePrice.FieldByName('DiscItem').AsCurrency := edtNewDisc.EditValue;
    qryGetPurchasePrice.FieldByName('DiscItem2').AsCurrency := edtNewDisc2.EditValue;
    qryGetPurchasePrice.FieldByName('DiscItemPrice').AsCurrency := 0;
    qryGetPurchasePrice.FieldByName('DiscItemPrice2').AsCurrency := 0;
    if edtNewDisc.EditValue <> 0 then
      qryGetPurchasePrice.FieldByName('DiscItemPrice').AsCurrency :=
        edtNewPrice.EditValue * edtNewDisc.EditValue / 100;
    if edtNewDisc2.EditValue <> 0 then
      qryGetPurchasePrice.FieldByName('DiscItemPrice2').AsCurrency :=
        (edtNewPrice.EditValue - qryGetPurchasePrice.FieldByName('DiscItemPrice').AsCurrency) *
        edtNewDisc2.EditValue / 100;
    qryGetPurchasePrice.FieldByName('DateModified').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryGetPurchasePrice.Post;

    //set flag check to '2'
    mdPrevVendor.Edit;
    mdPrevVendor.FieldByName('FlagCheck').AsInteger := 2;
    mdPrevVendor.Post;
  end;

  //set flag check to '1' again
  pbProcess.Properties.Max := cgvVendor.DataController.Summary.FooterSummaryValues[0];
  while mdPrevVendor.Locate('FlagCheck', 2, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    
    mdPrevVendor.Edit;
    mdPrevVendor.FieldByName('FlagCheck').AsInteger := 1;
    mdPrevVendor.Post;
  end;

  mdPrevVendor.EnableControls;
  pbProcess.Position := 0;

  MessageDlg(MSG_PROCESS_COMPLETE, mtInformation, [mbOk], 0);
end;

procedure TfmPurchasePrice.DeselectAll1Click(Sender: TObject);
begin
  inherited;

  pbProcess.Properties.Max := cgvVendor.DataController.Summary.FooterSummaryValues[0];
  mdPrevVendor.DisableControls;
  while mdPrevVendor.Locate('FlagCheck', 1, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    mdPrevVendor.Edit;
    mdPrevVendor.FieldByName('FlagCheck').AsInteger := 0;
    mdPrevVendor.Post;
  end;
  mdPrevVendor.EnableControls;
  pbProcess.Position := 0;
end;

procedure TfmPurchasePrice.InitForm;
begin
  inherited;

  dsPrevVendor.AutoEdit := True;

  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevVendor, True);
  mdPrevVendor.Close;
  mdPrevVendor.CreateFieldsFromDataSet(qryPrevVendor);
  mdPrevVendor.LoadFromDataSet(qryPrevVendor);
  OpenIfClose(mdPrevVendor, True);

  edtNewPrice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtNewDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtNewDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
end;

procedure TfmPurchasePrice.lcbItemIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if lcbItemName.EditValue <> lcbItemId.EditValue then
    lcbItemName.EditValue := lcbItemId.EditValue;
end;

procedure TfmPurchasePrice.lcbItemNamePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if lcbItemName.EditValue <> lcbItemId.EditValue then
    lcbItemId.EditValue := lcbItemName.EditValue;
end;

procedure TfmPurchasePrice.RefreshAll;
begin
  inherited;

  qryPrevVendor.Close;
  OpenIfClose(qryPrevVendor, True);
  mdPrevVendor.Close;
  mdPrevVendor.CreateFieldsFromDataSet(qryPrevVendor);
  mdPrevVendor.LoadFromDataSet(qryPrevVendor);
  OpenIfClose(mdPrevVendor, True);
end;

end.
