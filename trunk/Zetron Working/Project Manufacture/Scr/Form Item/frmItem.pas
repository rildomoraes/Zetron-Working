unit frmItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JPEG, Math,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImage, cxBlobEdit,
  cxDBExtLookupComboBox, cxCalc, cxCheckBox, DBActns, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxSpinEdit, cxDropDownEdit, cxDBEdit,
  cxImageComboBox, cxCurrencyEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxPC, cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ActnList, ADODB, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, dxDockPanel, cxButtons, ExtCtrls, cxButtonEdit;

type
  TfmItem = class(TFormUniMasterEx)
    dsItemMinStock: TDataSource;
    dsItemImage: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayItemId: TcxGridDBColumn;
    cgvPrevDisplayItemCode: TcxGridDBColumn;
    cgvPrevDisplayItemName: TcxGridDBColumn;
    cgvPrevDisplayItemCategoryId: TcxGridDBColumn;
    cgvPrevDisplayType: TcxGridDBColumn;
    cgvPrevDisplayUnitMeasure: TcxGridDBColumn;
    cgvPrevDisplayFlagInactive: TcxGridDBColumn;
    cgvPrevDisplayFlagProcessOpname: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlTop: TPanel;
    cxPageControl1: TcxPageControl;
    tsImage: TcxTabSheet;
    tsGeneral: TcxTabSheet;
    lblSuppliesCategory: TLabel;
    dblcItemCategoryId: TcxDBExtLookupComboBox;
    lblIdSupplies: TLabel;
    dbchkInactive: TcxDBCheckBox;
    lblSuppliesName: TLabel;
    dbeItemName: TcxDBTextEdit;
    lblNameLength: TLabel;
    lblEmployeeName: TLabel;
    dbeEmployeeId: TcxDBExtLookupComboBox;
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
    tsMinStock: TcxTabSheet;
    cgMinStockWarehouse: TcxGrid;
    cgvMinStock: TcxGridDBTableView;
    cgvMinStockItemId: TcxGridDBColumn;
    cgvMinStockWarehouseId: TcxGridDBColumn;
    cgvMinStockMinStockQty: TcxGridDBColumn;
    cgvMinStockEmployeeName: TcxGridDBColumn;
    cgMinStockWarehouseLevel1: TcxGridLevel;
    btnCopy: TcxButton;
    tsStockInfo: TcxTabSheet;
    qryGetItemCode: TADOQuery;
    dblcItemTypeId: TcxDBExtLookupComboBox;
    lblItemType: TLabel;
    lblTebal: TLabel;
    lblLebar: TLabel;
    lblPanjang: TLabel;
    dbeTebal: TcxDBCalcEdit;
    dbeLebar: TcxDBCalcEdit;
    dbePanjang: TcxDBCalcEdit;
    dbeTConstanta: TcxDBImageComboBox;
    dbeLConstanta: TcxDBImageComboBox;
    dbePConstanta: TcxDBImageComboBox;
    lblUnitMeasure: TLabel;
    lblMaterial: TLabel;
    dblcMaterialId: TcxDBExtLookupComboBox;
    lblStatusItem: TLabel;
    dblcStatusItem: TcxDBImageComboBox;
    lblCostMethod: TLabel;
    dblcbStatusCostMethod: TcxDBImageComboBox;
    lblSatuanStock: TLabel;
    dbeUnitMeasure: TcxDBTextEdit;
    lblItemDimensiSize: TLabel;
    cgvPrevDisplayStatusProduction: TcxGridDBColumn;
    pmLuas: TPopupMenu;
    pmVolume: TPopupMenu;
    pmBerat: TPopupMenu;
    btnBerat: TcxButton;
    btnLuas: TcxButton;
    btnVolume: TcxButton;
    mniVolumeBalok: TMenuItem;
    mniLuasKotak: TMenuItem;
    dbeStatusDimensi: TcxDBExtLookupComboBox;
    dbeM2: TcxDBCurrencyEdit;
    dbeM3: TcxDBCurrencyEdit;
    dbeBerat: TcxDBCurrencyEdit;
    qryItemImage: TADOQuery;
    qryItemMinStock: TADOQuery;
    tsPricing: TcxTabSheet;
    Label2: TLabel;
    dbeStatusPurchasePricing: TcxDBImageComboBox;
    dbeStatusSalesPricing: TcxDBImageComboBox;
    Label3: TLabel;
    qryPurchasePriceList: TADOQuery;
    dsPurchasePriceList: TDataSource;
    btnSalePriceEdit: TcxButton;
    btnSalePricePost: TcxButton;
    btnSalePriceCancel: TcxButton;
    lbl1: TLabel;
    dbeSaleMinQty1: TcxDBCalcEdit;
    Label5: TLabel;
    dbeSaleQty1: TcxDBCalcEdit;
    lblPrice: TLabel;
    dbeSalePrice1: TcxDBCalcEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbeSaleMinQty2: TcxDBCalcEdit;
    dbeSaleMinQty3: TcxDBCalcEdit;
    dbeSaleMinQty4: TcxDBCalcEdit;
    dbeSaleMinQty5: TcxDBCalcEdit;
    Label6: TLabel;
    dbeSaleQty2: TcxDBCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeSaleQty3: TcxDBCalcEdit;
    dbeSaleQty4: TcxDBCalcEdit;
    dbeSaleQty5: TcxDBCalcEdit;
    dbeSalePrice2: TcxDBCalcEdit;
    dbeSalePrice3: TcxDBCalcEdit;
    dbeSalePrice4: TcxDBCalcEdit;
    dbeSalePrice5: TcxDBCalcEdit;
    lblQty: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    dbePurchaseMinQty1: TcxDBCalcEdit;
    Label13: TLabel;
    dbePurchaseQty1: TcxDBCalcEdit;
    dbePurchasePrice1: TcxDBCalcEdit;
    Label14: TLabel;
    Label15: TLabel;
    dbePurchaseMinQty2: TcxDBCalcEdit;
    Label16: TLabel;
    dbePurchaseQty2: TcxDBCalcEdit;
    dbePurchasePrice2: TcxDBCalcEdit;
    Label17: TLabel;
    dbePurchaseMinQty3: TcxDBCalcEdit;
    Label18: TLabel;
    dbePurchaseQty3: TcxDBCalcEdit;
    dbePurchasePrice3: TcxDBCalcEdit;
    Label19: TLabel;
    dbePurchaseMinQty4: TcxDBCalcEdit;
    Label20: TLabel;
    dbePurchaseQty4: TcxDBCalcEdit;
    dbePurchasePrice4: TcxDBCalcEdit;
    Label21: TLabel;
    dbePurchaseMinQty5: TcxDBCalcEdit;
    Label22: TLabel;
    dbePurchaseQty5: TcxDBCalcEdit;
    dbePurchasePrice5: TcxDBCalcEdit;
    btnPurchasePriceEdit: TcxButton;
    btnPurchasePricePost: TcxButton;
    btnPurchasePriceCancel: TcxButton;
    qrySalePriceList: TADOQuery;
    dsSalePriceList: TDataSource;
    dbeUnitMeasure2: TDBText;
    dbeUnitMeasure3: TDBText;
    Label11: TLabel;
    Label23: TLabel;
    actCopyItem: TAction;
    actPurchasePriceEdit: TDataSetEdit;
    actPurchasePricePost: TDataSetPost;
    actPurchasePriceCancel: TDataSetCancel;
    actSalePriceEdit: TDataSetEdit;
    actSalePricePost: TDataSetPost;
    actSalePriceCancel: TDataSetCancel;
    pnlHeader: TPanel;
    pnlItemDimensiSize: TPanel;
    pnlBody: TPanel;
    dbeBeratJenis: TcxDBCalcEdit;
    Label1: TLabel;
    lblStatusPurchaseDimensi: TLabel;
    dbeStatusPurchaseDimensi: TcxDBExtLookupComboBox;
    dbchkFlagTally: TcxDBCheckBox;
    dbeItemItemCode: TcxDBButtonEdit;
    procedure qryItemDtBeforeEdit(DataSet: TDataSet);
    procedure qryItemImageNewRecord(DataSet: TDataSet);
    procedure qryItemImageBeforePost(DataSet: TDataSet);
    procedure qryItemMinStockBeforePost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeItemNamePropertiesEditValueChanged(Sender: TObject);
    procedure dbeItemItemCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actCopyItemExecute(Sender: TObject);
    procedure mniLuasKotakClick(Sender: TObject);
    procedure mniVolumeBalokClick(Sender: TObject);
    procedure pmLuasPopup(Sender: TObject);
    procedure pmVolumePopup(Sender: TObject);
    procedure pmBeratPopup(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure qryItemImageBeforeInsert(DataSet: TDataSet);
    procedure qryItemMinStockBeforeInsert(DataSet: TDataSet);
    procedure qryPurchasePriceListBeforePost(DataSet: TDataSet);
    procedure qrySalePriceListBeforePost(DataSet: TDataSet);
    procedure qryPurchasePriceListBeforeInsert(DataSet: TDataSet);
    procedure qrySalePriceListBeforeInsert(DataSet: TDataSet);
    procedure qryPurchasePriceListNewRecord(DataSet: TDataSet);
    procedure qrySalePriceListNewRecord(DataSet: TDataSet);
    procedure dbeStatusDimensiPropertiesEditValueChanged(Sender: TObject);
    procedure dbeItemItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmItem: TfmItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory;
//  ,  frmCopyItem;

procedure TfmItem.actCopyItemExecute(Sender: TObject);
begin
  inherited;

  //TfmCopyItem.ExecuteForm('', 0);
end;

procedure TfmItem.dbeItemItemCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = VK_F3 then
  begin
    dbeItemItemCode.Properties.OnButtonClick(Sender, 0);
  end;
end;

procedure TfmItem.dbeItemItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  S, Prefix: string;
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    if not dsDefault.DataSet.IsEmpty then
      dsDefault.DataSet.Edit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    Prefix := Copy(dsDefault.DataSet.FieldByName('ItemName').AsString, 1, 3);
    qryGetItemCode.Close;
    OpenIfClose(qryGetItemCode);
    if not qryGetItemCode.IsEmpty then
      S := Prefix + ' #' + qryGetItemCode.Fields[0].AsString
    else
      S := Prefix + ' #1';

    dsDefault.DataSet.FieldByName('ItemCode').AsString := S;
  end;
end;

procedure TfmItem.dbeItemNamePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblNameLength.Caption := IntToStr(Length(dbeItemName.EditingText)) + ' Digit';
end;

procedure TfmItem.dbeStatusDimensiPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  pnlItemDimensiSize.Visible := VarToStr(dbeStatusDimensi.EditValue) = '0';
end;

procedure TfmItem.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'StatusDimensi') = 0) then
    begin
      if dsDefault.DataSet.FieldByName('StatusDimensi').AsString = '0' then
        dsDefault.DataSet.FieldByName('UnitMeasure').AsString := 'Pcs';
      if dsDefault.DataSet.FieldByName('StatusDimensi').AsString = '1' then
        dsDefault.DataSet.FieldByName('UnitMeasure').AsString := 'M2';
      if dsDefault.DataSet.FieldByName('StatusDimensi').AsString = '2' then
        dsDefault.DataSet.FieldByName('UnitMeasure').AsString := 'M3';
      if dsDefault.DataSet.FieldByName('StatusDimensi').AsString = '3' then
        dsDefault.DataSet.FieldByName('UnitMeasure').AsString := 'Kg';

      // Set default satuan harga beli, jika satuan dalam stock bukan PCS
      if dsDefault.DataSet.FieldByName('StatusDimensi').AsString <> '0' then
        dsDefault.DataSet.FieldByName('StatusPurchaseDimensi').AsString :=
          dsDefault.DataSet.FieldByName('StatusDimensi').AsString;
    end;

    // Calculate
    if (CompareText(Field.FieldName, 'T') = 0) or
      (CompareText(Field.FieldName, 'L') = 0) or
      (CompareText(Field.FieldName, 'P') = 0) or
      (CompareText(Field.FieldName, 'TConstanta') = 0) or
      (CompareText(Field.FieldName, 'LConstanta') = 0) or
      (CompareText(Field.FieldName, 'PConstanta') = 0) then
    begin
      mniLuasKotak.Click;
      mniVolumeBalok.Click;
    end;
  end;
end;

procedure TfmItem.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dblcStatusItem, True, COLOR_INACTIVE);
    SetReadOnly(dblcbStatusCostMethod, True, COLOR_INACTIVE);
    SetReadOnly(dbchkFlagTally);
  end;
  if dsDefault.State in [dsInsert] then
  begin
    SetReadOnly(dblcStatusItem, False);
    SetReadOnly(dblcbStatusCostMethod, False);
    SetReadOnly(dbchkFlagTally, False);
  end;
end;

procedure TfmItem.InitForm;
begin
  inherited;

  cgMinStockWarehouse.OnEnter := nil;
  cgItemImage.OnEnter := nil;
  dbeUnitMeasure3.Transparent := True;
  dbeUnitMeasure2.Transparent := True;

  SetReadOnly(dbeEmployeeId, True, COLOR_INACTIVE);
  SetReadOnly(dbeM3);
  SetReadOnly(dbeM2);
  SetReadOnly(dbePurchaseMinQty1);
  SetReadOnly(dbeSaleMinQty1);

  TcxCalcEditProperties(cgvMinStockMinStockQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeTebal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  dbeLebar.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  dbePanjang.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  //dbeDiameter.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  dbeM3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  dbeM2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  dbeBerat.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  dbePurchaseQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseMinQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseMinQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseMinQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseMinQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchaseMinQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePurchasePrice5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePurchasePrice4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePurchasePrice3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePurchasePrice2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePurchasePrice1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeSaleQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleMinQty5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleMinQty4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleMinQty3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleMinQty2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSaleMinQty1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeSalePrice5.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeSalePrice4.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeSalePrice3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeSalePrice2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeSalePrice1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryItemMinStock);
  OpenIfClose(qryItemImage, True);
  OpenIfClose(qryPurchasePriceList);
  OpenIfClose(qrySalePriceList);
end;

procedure TfmItem.mniLuasKotakClick(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    dsDefault.DataSet.FieldByName('M2').AsFloat :=
      (dsDefault.DataSet.FieldByName('L').AsFloat * dsDefault.DataSet.FieldByName('LConstanta').AsFloat) *
      (dsDefault.DataSet.FieldByName('P').AsFloat * dsDefault.DataSet.FieldByName('PConstanta').AsFloat);
  end;
end;

procedure TfmItem.mniVolumeBalokClick(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    dsDefault.DataSet.FieldByName('M3').AsFloat :=
      (dsDefault.DataSet.FieldByName('T').AsFloat * dsDefault.DataSet.FieldByName('TConstanta').AsFloat) *
      (dsDefault.DataSet.FieldByName('L').AsFloat * dsDefault.DataSet.FieldByName('LConstanta').AsFloat) *
      (dsDefault.DataSet.FieldByName('P').AsFloat * dsDefault.DataSet.FieldByName('PConstanta').AsFloat);
  end;
end;

procedure TfmItem.pmBeratPopup(Sender: TObject);
begin
  inherited;

  if not dsDefault.DataSet.IsEmpty then
    if dsDefault.State in [dsBrowse] then
      dsDefault.DataSet.Edit;
end;

procedure TfmItem.pmLuasPopup(Sender: TObject);
begin
  inherited;

  if not dsDefault.DataSet.IsEmpty then
    if dsDefault.State in [dsBrowse] then
      dsDefault.DataSet.Edit;
end;

procedure TfmItem.pmVolumePopup(Sender: TObject);
begin
  inherited;

  if not dsDefault.DataSet.IsEmpty then
    if dsDefault.State in [dsBrowse] then
      dsDefault.DataSet.Edit;
end;

procedure TfmItem.qryItemDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if dmInventory.qryItem.State in [dsInsert, dsEdit] then
    dmInventory.qryItem.Post;
  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItem.qryItemImageBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmItem.qryItemImageBeforePost(DataSet: TDataSet);
var
  Jpeg, Jpeg2: TJPEGImage;
  Stream: TStream;
begin
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

procedure TfmItem.qryItemImageNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmItem.qryItemMinStockBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmItem.qryItemMinStockBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmItem.qryPurchasePriceListBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmItem.qryPurchasePriceListBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DataSet.FieldByName('qty1').asInteger < DataSet.FieldByName('minqty1').asInteger) or
    (DataSet.FieldByName('qty2').asInteger < DataSet.FieldByName('minqty2').asInteger) or
    (DataSet.FieldByName('qty3').asInteger < DataSet.FieldByName('minqty3').asInteger) or
    (DataSet.FieldByName('qty4').asInteger < DataSet.FieldByName('minqty4').asInteger) or
    (DataSet.FieldByName('qty5').asInteger < DataSet.FieldByName('minqty5').asInteger) then
  begin
    MessageDlg(MSG_PRICE_LIST_QTY_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;

  DataSet.FieldByName('LastModified').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

procedure TfmItem.qryPurchasePriceListNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('minqty1').asInteger := 1;
  DataSet.FieldByName('qty1').asInteger := 1;
end;

procedure TfmItem.qrySalePriceListBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmItem.qrySalePriceListBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DataSet.FieldByName('qty1').asInteger < DataSet.FieldByName('minqty1').asInteger) or
    (DataSet.FieldByName('qty2').asInteger < DataSet.FieldByName('minqty2').asInteger) or
    (DataSet.FieldByName('qty3').asInteger < DataSet.FieldByName('minqty3').asInteger) or
    (DataSet.FieldByName('qty4').asInteger < DataSet.FieldByName('minqty4').asInteger) or
    (DataSet.FieldByName('qty5').asInteger < DataSet.FieldByName('minqty5').asInteger) then
  begin
    MessageDlg(MSG_PRICE_LIST_QTY_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;

  DataSet.FieldByName('LastModified').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
end;

procedure TfmItem.qrySalePriceListNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('minqty1').asInteger := 1;
  DataSet.FieldByName('qty1').asInteger := 1;
end;

procedure TfmItem.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItemCategory);
  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryItemMinStock);
  LockRefresh(qryItemImage, True);
  LockRefresh(qryPurchasePriceList);
  LockRefresh(qrySalePriceList);
end;

end.


