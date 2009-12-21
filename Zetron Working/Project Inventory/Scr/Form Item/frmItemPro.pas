unit frmItemPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPEG,

  // Auto Create
  frmItem, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalc, cxImageComboBox, cxCheckBox, cxImage, cxBlobEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxSpinEdit, MemDS, DBAccess, Uni, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxContainer,
  cxTextEdit, StdCtrls, cxPC, dxDockPanel, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxDockControlPainter;

type
  TfmItemPro = class(TfmItem)
    qryItemImage: TUniQuery;
    dsItemImage: TDataSource;
    qryItemRack: TUniQuery;
    dsPrevItemRack: TDataSource;
    qryItemDt: TUniQuery;
    dsItemDt: TDataSource;
    qryPrice: TUniQuery;
    dsPrice: TDataSource;
    tsImage: TcxTabSheet;
    pnlItemImageOption: TPanel;
    edtImageResize: TcxSpinEdit;
    chkImageResize: TcxCheckBox;
    cgItemImage: TcxGrid;
    cgvItemImage: TcxGridDBTableView;
    cgvItemImageitemid: TcxGridDBColumn;
    cgvItemImageno: TcxGridDBColumn;
    cgvItemImageitemimage: TcxGridDBColumn;
    cgvItemImageitemimage2: TcxGridDBColumn;
    cgItemImageLevel1: TcxGridLevel;
    tsItemRack: TcxTabSheet;
    cgItemRack: TcxGrid;
    cgvItemRack: TcxGridDBTableView;
    cgvItemRackitemid: TcxGridDBColumn;
    cgvItemRackwarehouseid: TcxGridDBColumn;
    cgvItemRackrackcode: TcxGridDBColumn;
    cgvItemRackName: TcxGridDBColumn;
    cgvItemRacklokasi1: TcxGridDBColumn;
    cgvItemRacklokasi2: TcxGridDBColumn;
    cgvItemRacklokasi3: TcxGridDBColumn;
    cgvItemRacklokasi4: TcxGridDBColumn;
    cgvItemRacklokasi5: TcxGridDBColumn;
    cgvItemRacklokasi6: TcxGridDBColumn;
    cgvItemRacklokasi7: TcxGridDBColumn;
    cgvPrevWarehouseRack: TcxGridDBTableView;
    cgvPrevWarehouseRackrackcode: TcxGridDBColumn;
    cgvPrevWarehouseRackrackname: TcxGridDBColumn;
    cgvPrevWarehouseRackwarehouseid: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation1: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation2: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation3: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation4: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation5: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation6: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation7: TcxGridDBColumn;
    cgItemRackLevel1: TcxGridLevel;
    tsPrice: TcxTabSheet;
    lbl1: TLabel;
    lblQty: TLabel;
    lblUnitMeasure: TLabel;
    lblPrice: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblPriceList: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbl6: TLabel;
    Label11: TLabel;
    lbl7: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    dbeMeasure1: TcxDBTextEdit;
    dbePrice1: TcxDBCalcEdit;
    dbeMeasure2: TcxDBTextEdit;
    dbePrice2: TcxDBCalcEdit;
    dbeMeasure3: TcxDBTextEdit;
    dbePrice3: TcxDBCalcEdit;
    dbeMeasure4: TcxDBTextEdit;
    dbePrice4: TcxDBCalcEdit;
    dbeMeasure5: TcxDBTextEdit;
    dbePrice5: TcxDBCalcEdit;
    btnPriceEdit: TcxButton;
    btnPricePost: TcxButton;
    btnPriceCancel: TcxButton;
    dbeMinSalePrice: TcxDBCalcEdit;
    dbeMinQty1: TcxDBCalcEdit;
    dbeMinQty2: TcxDBCalcEdit;
    dbeMinQty3: TcxDBCalcEdit;
    dbeMinQty4: TcxDBCalcEdit;
    dbeMinQty5: TcxDBCalcEdit;
    dbeQty1: TcxDBCalcEdit;
    dbeQty2: TcxDBCalcEdit;
    dbeQty3: TcxDBCalcEdit;
    dbeQty4: TcxDBCalcEdit;
    dbeQty5: TcxDBCalcEdit;
    dbeMinQty6: TcxDBCalcEdit;
    dbeQty6: TcxDBCalcEdit;
    dbeMeasure6: TcxDBTextEdit;
    dbePrice6: TcxDBCalcEdit;
    dbeMinQty7: TcxDBCalcEdit;
    dbeQty7: TcxDBCalcEdit;
    dbeMeasure7: TcxDBTextEdit;
    dbePrice7: TcxDBCalcEdit;
    dbeDisc1_1: TcxDBCalcEdit;
    dbeDisc1_2: TcxDBCalcEdit;
    dbeDisc1_3: TcxDBCalcEdit;
    dbeDisc1_4: TcxDBCalcEdit;
    dbeDisc1_5: TcxDBCalcEdit;
    dbeDisc1_6: TcxDBCalcEdit;
    dbeDisc1_7: TcxDBCalcEdit;
    tsCouple: TcxTabSheet;
    pnlCoupleHeader: TPanel;
    dbchkCouple: TcxDBCheckBox;
    cgItemCouple: TcxGrid;
    cgvItemCouple: TcxGridDBTableView;
    cgvItemCoupleItemIdExternal: TcxGridDBColumn;
    cgvItemCoupleItemId: TcxGridDBColumn;
    cgvItemCoupleQty: TcxGridDBColumn;
    cgItemCoupleLevel1: TcxGridLevel;
    dbchFlagPrintBarcode: TcxDBCheckBox;
    dbchFlagPrintPrice: TcxDBCheckBox;
    dbchFlagTerdaftar: TcxDBCheckBox;
    dbchFlagBahasaIndonesia: TcxDBCheckBox;
    procedure qryItemImageBeforeEdit(DataSet: TDataSet);
    procedure qryItemImageBeforePost(DataSet: TDataSet);
    procedure qryItemImageNewRecord(DataSet: TDataSet);
    procedure qryItemRackBeforeEdit(DataSet: TDataSet);
    procedure qryItemRackNewRecord(DataSet: TDataSet);
    procedure qryItemDtBeforeEdit(DataSet: TDataSet);
    procedure qryItemDtBeforePost(DataSet: TDataSet);
    procedure qryItemDtNewRecord(DataSet: TDataSet);
    procedure qryPriceBeforeEdit(DataSet: TDataSet);
    procedure qryPriceBeforePost(DataSet: TDataSet);
    procedure qryPriceNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public
    { Public declarations }
  end;

var
  fmItemPro: TfmItemPro;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmInventory,
  dtmGeneral;

procedure TfmItemPro.InitForm;
begin
  inherited;

  cgMinStockWarehouse.OnEnter := nil;
  cgItemImage.OnEnter := nil;

  if FParamValuesArray[0] = 0 then
    tsPrice.Free // Show qty only
  else
  begin
    dbeQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeMinQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeMinQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeMinQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeMinQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbeMinQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
    dbePrice1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice6.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
    dbePrice7.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  end;

  edtImageResize.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvItemCoupleQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  OpenIfClose(qryItemImage, True);
  OpenIfClose(dmGeneral.qryWarehouseRack);
  OpenIfClose(qryItemRack);
  OpenIfClose(qryPrice);
  OpenIfClose(dmInventory.qryPrevItemCoupleDt);
  OpenIfClose(qryItemDt);

  pcItem.ActivePage := tsGeneral;
end;

procedure TfmItemPro.qryItemDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemPro.qryItemDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('ItemDt').AsInteger = dmInventory.qryItem.FieldByName('ItemId').AsInteger then
  begin
    MessageDlg(MSG_ITEMDT_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmItemPro.qryItemDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('Qty').AsInteger := 1;
end;

procedure TfmItemPro.qryItemImageBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemPro.qryItemImageBeforePost(DataSet: TDataSet);
var
  Jpeg, Jpeg2: TJPEGImage;
  Stream: TStream;
begin
  inherited;

  if DataSet.FieldByName('No').IsNull then
    DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;

  if chkImageResize.Checked then
  begin
    Jpeg := TJPEGImage.Create;
    Jpeg2 := TJPEGImage.Create;
    try
      // Load
      if not qryItemImage.FieldByName('ItemImage').IsNull then
      begin
        Stream := qryItemImage.CreateBlobStream(qryItemImage.FieldByName('ItemImage'), bmReadWrite);
        Jpeg.LoadFromStream(Stream);
        FreeAndNil(Stream);
      end;

      // Resize
      ResizeJPEGFile(Jpeg, Jpeg2, StrToInt(edtImageResize.Text));

      // Save
      Stream := qryItemImage.CreateBlobStream(qryItemImage.FieldByName('ItemImage'), bmReadWrite);
      Jpeg2.SaveToStream(Stream);
      FreeAndNil(Stream);
    finally
      FreeAndNil(Jpeg);
      FreeAndNil(Jpeg2);
    end;
  end;
end;

procedure TfmItemPro.qryItemImageNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmItemPro.qryItemRackBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemPro.qryItemRackNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;
end;

procedure TfmItemPro.qryPriceBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemPro.qryPriceBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
  DataSet.FieldByName('LastModified').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

procedure TfmItemPro.qryPriceNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('StatusApprove').AsInteger := 0;
end;

procedure TfmItemPro.RefreshAll;
begin
  inherited;

  LockRefresh(qryItemImage, True);
  LockRefresh(qryItemRack);
  LockRefresh(qryPrice);
  LockRefresh(qryItemDt);
end;

end.
