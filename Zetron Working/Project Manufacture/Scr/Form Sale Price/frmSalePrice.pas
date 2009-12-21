unit frmSalePrice;

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
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalc, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer,
  cxProgressBar, StdCtrls, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxButtons, ExtCtrls;

type
  TfmSalePrice = class(TFormUniDB)
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
    edtNewPrice: TcxCalcEdit;
    edtNewDisc: TcxCalcEdit;
    edtNewDisc2: TcxCalcEdit;
    mdPrevCustomer: TdxMemData;
    dsPrevCustomer: TDataSource;
    cgCustomer: TcxGrid;
    cgvCustomer: TcxGridDBTableView;
    cgvCustomerFlagCheck: TcxGridDBColumn;
    cgvCustomercustomerid: TcxGridDBColumn;
    cgvCustomercustomername: TcxGridDBColumn;
    cgvCustomercontactperson: TcxGridDBColumn;
    cgvCustomeraddress: TcxGridDBColumn;
    cgvCustomercountryname: TcxGridDBColumn;
    cgvCustomerprovincename: TcxGridDBColumn;
    cgvCustomercityname: TcxGridDBColumn;
    cgvCustomercategoryid: TcxGridDBColumn;
    cgvCustomermemberid: TcxGridDBColumn;
    cgvCustomercustomersince: TcxGridDBColumn;
    cgCustomerLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    actPost: TAction;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label8: TLabel;
    pbProcess: TcxProgressBar;
    PopupMenu1: TPopupMenu;
    DeselectAll1: TMenuItem;
    qryPrevCustomer: TADOQuery;
    qryGetSalePrice: TADOQuery;
    procedure DeselectAll1Click(Sender: TObject);
    procedure lcbItemNamePropertiesEditValueChanged(Sender: TObject);
    procedure lcbItemIdPropertiesEditValueChanged(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSalePrice: TfmSalePrice;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal,dtmInventory;

procedure TfmSalePrice.actPostExecute(Sender: TObject);
begin
  inherited;

  //Process
  if mdPrevCustomer.State in [dsEdit, dsInsert] then
    mdPrevCustomer.Post;

  if VarToStr(lcbItemId.EditValue) = '' then
    Exit;
  if (edtNewPrice.EditValue < 0) or (edtNewDisc.EditValue < 0) then
  begin
    MessageDlg(MSG_NEW_PRICE_INVALID, mtInformation, [mbOk], 0);
    Exit;
  end;

  pbProcess.Properties.Max := cgvCustomer.DataController.Summary.FooterSummaryValues[0];
  mdPrevCustomer.DisableControls;
  while mdPrevCustomer.Locate('FlagCheck', 1, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    qryGetSalePrice.Close;
    qryGetSalePrice.Parameters[0].Value := mdPrevCustomer.FieldByName('CustomerId').AsString;
    qryGetSalePrice.Parameters[1].Value := lcbItemId.EditValue;
    OpenIfClose(qryGetSalePrice);

    if qryGetSalePrice.IsEmpty then
    begin
      qryGetSalePrice.Insert;
      qryGetSalePrice.FieldByName('ItemId').AsString := lcbItemId.EditValue;
      qryGetSalePrice.FieldByName('CustomerId').AsString := mdPrevCustomer.FieldByName('CustomerId').AsString;
    end
    else
      qryGetSalePrice.Edit;
    qryGetSalePrice.FieldByName('LastSI').AsVariant := null;
    qryGetSalePrice.FieldByName('Price').AsCurrency := edtNewPrice.EditValue;
    qryGetSalePrice.FieldByName('DiscItem').AsCurrency := edtNewDisc.EditValue;
    qryGetSalePrice.FieldByName('DiscItem2').AsCurrency := edtNewDisc2.EditValue;
    qryGetSalePrice.FieldByName('DiscItemPrice').AsCurrency := 0;
    qryGetSalePrice.FieldByName('DiscItemPrice2').AsCurrency := 0;
    if edtNewDisc.EditValue <> 0 then
      qryGetSalePrice.FieldByName('DiscItemPrice').AsCurrency :=
        (edtNewPrice.EditValue * edtNewDisc.EditValue) / 100;
    if edtNewDisc2.EditValue <> 0 then
      qryGetSalePrice.FieldByName('DiscItemPrice2').AsCurrency :=
        ((edtNewPrice.EditValue - qryGetSalePrice.FieldByName('DiscItemPrice').AsCurrency)
        * edtNewDisc2.EditValue) / 100;
    qryGetSalePrice.FieldByName('DateModified').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryGetSalePrice.Post;

    //set flag check to '2'
    mdPrevCustomer.Edit;
    mdPrevCustomer.FieldByName('FlagCheck').AsInteger := 2;
    mdPrevCustomer.Post;
  end;

  //set flag check to '1' again
  pbProcess.Properties.Max := cgvCustomer.DataController.Summary.FooterSummaryValues[0];
  while mdPrevCustomer.Locate('FlagCheck', 2, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    mdPrevCustomer.Edit;
    mdPrevCustomer.FieldByName('FlagCheck').AsInteger := 1;
    mdPrevCustomer.Post;
  end;

  mdPrevCustomer.EnableControls;
  pbProcess.Position := 0;

  MessageDlg(MSG_PROCESS_COMPLETE, mtInformation, [mbOk], 0);
end;

procedure TfmSalePrice.DeselectAll1Click(Sender: TObject);
begin
  inherited;

  pbProcess.Properties.Max := cgvCustomer.DataController.Summary.FooterSummaryValues[0];
  mdPrevCustomer.DisableControls;
  while mdPrevCustomer.Locate('FlagCheck', 1, [loCaseInsensitive]) do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    mdPrevCustomer.Edit;
    mdPrevCustomer.FieldByName('FlagCheck').AsInteger := 0;
    mdPrevCustomer.Post;
  end;
  mdPrevCustomer.EnableControls;
  pbProcess.Position := 0;
end;

procedure TfmSalePrice.InitForm;
begin
  inherited;

  dsPrevCustomer.AutoEdit := True;

  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevCustomer, True);
  mdPrevCustomer.Close;
  mdPrevCustomer.CreateFieldsFromDataSet(qryPrevCustomer);
  mdPrevCustomer.LoadFromDataSet(qryPrevCustomer);
  OpenIfClose(mdPrevCustomer, True);

  edtNewPrice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtNewDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtNewDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
end;

procedure TfmSalePrice.lcbItemIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if lcbItemName.EditValue <> lcbItemId.EditValue then
    lcbItemName.EditValue := lcbItemId.EditValue;
end;

procedure TfmSalePrice.lcbItemNamePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if lcbItemName.EditValue <> lcbItemId.EditValue then
    lcbItemId.EditValue := lcbItemName.EditValue;
end;

procedure TfmSalePrice.RefreshAll;
begin
  inherited;

  qryPrevCustomer.Close;
  OpenIfClose(qryPrevCustomer, True);
  mdPrevCustomer.Close;
  mdPrevCustomer.CreateFieldsFromDataSet(qryPrevCustomer);
  mdPrevCustomer.LoadFromDataSet(qryPrevCustomer);
  OpenIfClose(mdPrevCustomer, True);
end;

end.
