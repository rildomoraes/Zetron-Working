unit frmBillMaterialInsert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DateUtils, Math,

  // Auto Generate
  cxGraphics, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, cxDropDownEdit, cxCalc,
  cxTextEdit, StdCtrls, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxRadioGroup, cxContainer, cxGroupBox, cxButtons,
  ExtCtrls, cxImageComboBox, cxSpinEdit, cxDBEdit, dxSkinscxPCPainter, dxmdaset,
  cxGridLevel, untIvPropDevExpress, untIvPositionStandard, cxPC;

type
  TfmBillMaterialInsert = class(TForm)
    pnlButton: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    qryInsBillMaterialDt: TADOQuery;
    gbParent: TcxGroupBox;
    lcbItemIdSubRoot: TcxExtLookupComboBox;
    qryBillMaterialHd: TADOQuery;
    rbRoot: TcxRadioButton;
    rbSubRoot: TcxRadioButton;
    lcbItemIdRoot: TcxExtLookupComboBox;
    qryPrevItem: TADOQuery;
    dsPrevItem: TDataSource;
    gvrBillOfMaterial: TcxGridViewRepository;
    cgvPrevItem: TcxGridDBTableView;
    cgvPrevItemItemId: TcxGridDBColumn;
    cgvPrevItemItemName: TcxGridDBColumn;
    cgvPrevItemMaterialId: TcxGridDBColumn;
    cgvPrevItemItemCategoryId: TcxGridDBColumn;
    cgvPrevItemItemCode: TcxGridDBColumn;
    cgvPrevItemT: TcxGridDBColumn;
    cgvPrevItemL: TcxGridDBColumn;
    cgvPrevItemP: TcxGridDBColumn;
    mdBillMaterialDt_Master: TdxMemData;
    mdBillMaterialDt_New: TdxMemData;
    dsBillMaterialDt_Master: TDataSource;
    dsBillMaterialDt_New: TDataSource;
    mdBillMaterialDt_MasterOrderNo: TIntegerField;
    mdBillMaterialDt_MasterItemId: TIntegerField;
    mdBillMaterialDt_MasterQty: TFloatField;
    mdBillMaterialDt_NewOrderNo: TIntegerField;
    mdBillMaterialDt_NewItemCode: TStringField;
    mdBillMaterialDt_NewItemName: TStringField;
    mdBillMaterialDt_NewItemCategoryId: TIntegerField;
    mdBillMaterialDt_NewMaterialId: TIntegerField;
    mdBillMaterialDt_NewT: TFloatField;
    mdBillMaterialDt_NewL: TFloatField;
    mdBillMaterialDt_NewP: TFloatField;
    mdBillMaterialDt_NewTConstanta: TFloatField;
    mdBillMaterialDt_NewLConstanta: TFloatField;
    mdBillMaterialDt_NewPConstanta: TFloatField;
    mdBillMaterialDt_NewM2: TFloatField;
    mdBillMaterialDt_NewM3: TFloatField;
    mdBillMaterialDt_NewStatusDimensi: TStringField;
    mdBillMaterialDt_NewUnitMeasure: TStringField;
    mdBillMaterialDt_NewQty: TFloatField;
    edtRoot_T: TcxCalcEdit;
    edtRoot_L: TcxCalcEdit;
    edtRoot_P: TcxCalcEdit;
    edtSub_T: TcxCalcEdit;
    edtSub_L: TcxCalcEdit;
    edtSub_P: TcxCalcEdit;
    edtRoot_M2: TcxCalcEdit;
    edtRoot_M3: TcxCalcEdit;
    edtSub_M2: TcxCalcEdit;
    edtSub_M3: TcxCalcEdit;
    lblTebal: TLabel;
    lblLebar: TLabel;
    lblPanjang: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryGetItemInfo: TADOQuery;
    IvPositionStandard1: TIvPositionStandard;
    IvPropDevExpress1: TIvPropDevExpress;
    qryPrevItemRawMaterial: TADOQuery;
    dsPrevItemRawMaterial: TDataSource;
    cgvPrevItemRawMaterial: TcxGridDBTableView;
    cgvPrevItemRawMaterialItemId: TcxGridDBColumn;
    cgvPrevItemRawMaterialItemCode: TcxGridDBColumn;
    cgvPrevItemRawMaterialItemName: TcxGridDBColumn;
    cgvPrevItemRawMaterialMaterialId: TcxGridDBColumn;
    cgvPrevItemRawMaterialItemCategoryId: TcxGridDBColumn;
    mdBillMaterialDt_NewItemIdRawMaterial: TIntegerField;
    gbChild: TcxGroupBox;
    pnlTop: TPanel;
    lblItemTypeId: TLabel;
    lcbItemTypeId: TcxExtLookupComboBox;
    pcItem: TcxPageControl;
    tsMasterItem: TcxTabSheet;
    cgMasterItem: TcxGrid;
    cgvMasterItem: TcxGridDBTableView;
    cgvMasterItemOrderNo: TcxGridDBColumn;
    cgvMasterItemItemId: TcxGridDBColumn;
    cgvMasterItemItemIdMaterialId: TcxGridDBColumn;
    cgvMasterItemItemIdT: TcxGridDBColumn;
    cgvMasterItemItemIdL: TcxGridDBColumn;
    cgvMasterItemItemIdP: TcxGridDBColumn;
    cgvMasterItemQty: TcxGridDBColumn;
    cgMasterItemLevel1: TcxGridLevel;
    tsNewItem: TcxTabSheet;
    cgNewItem: TcxGrid;
    cgvNewItem: TcxGridDBTableView;
    cgvNewItemRecId: TcxGridDBColumn;
    cgvNewItemOrderNo: TcxGridDBColumn;
    cgvNewItemItemName: TcxGridDBColumn;
    cgvNewItemItemCode: TcxGridDBColumn;
    cgvNewItemItemCategoryId: TcxGridDBColumn;
    cgvNewItemRawMaterial: TcxGridDBColumn;
    cgvNewItemMaterialId: TcxGridDBColumn;
    cgvNewItemUnitMeasure: TcxGridDBColumn;
    cgvNewItemT: TcxGridDBColumn;
    cgvNewItemTConstanta: TcxGridDBColumn;
    cgvNewItemL: TcxGridDBColumn;
    cgvNewItemLConstanta: TcxGridDBColumn;
    cgvNewItemP: TcxGridDBColumn;
    cgvNewItemPConstanta: TcxGridDBColumn;
    cgvNewItemM2: TcxGridDBColumn;
    cgvNewItemM3: TcxGridDBColumn;
    cgvNewItemQty: TcxGridDBColumn;
    cgvNewItemStatusDimensi: TcxGridDBColumn;
    cgNewItemLevel1: TcxGridLevel;
    mdBillMaterialDt_MasterFlagColor: TStringField;
    mdBillMaterialDt_NewFlagColor: TStringField;
    cgvMasterItemFlagColor: TcxGridDBColumn;
    cgvNewItemFlagColor: TcxGridDBColumn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure lcbItemTypeIdPropertiesEditValueChanged(Sender: TObject);
    procedure mdBillMaterialDt_MasterNewRecord(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewNewRecord(DataSet: TDataSet);
    procedure qryPrevItemBeforeOpen(DataSet: TDataSet);
    procedure rbRootClick(Sender: TObject);
    procedure rbSubRootClick(Sender: TObject);
    procedure dsBillMaterialDt_NewDataChange(Sender: TObject; Field: TField);
    procedure qryPrevItemRawMaterialBeforeOpen(DataSet: TDataSet);
    procedure cgvNewItemStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cgvMasterItemStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure mdBillMaterialDt_MasterBeforeDelete(DataSet: TDataSet);
    procedure mdBillMaterialDt_MasterBeforeEdit(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewBeforeDelete(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    FItemIdRoot: integer;
    FBil_ItemId: integer;
    FBOMPrefix: string;

    procedure InitForm;
  public
    { Public declarations }
    class function ExecuteForm(AItemIdRoot, ABil_ItemId: integer; ABOMPrefix: string): TModalResult;
  end;

implementation

uses untConstanta, untProcedure, dtmGlobal, dtmInventory;

{$R *.dfm}

class function TfmBillMaterialInsert.ExecuteForm(AItemIdRoot,
  ABil_ItemId: integer; ABOMPrefix: string): TModalResult;
var
  fmBillMaterialInsert: TfmBillMaterialInsert;
begin
  // NOT MDI
  fmBillMaterialInsert := TfmBillMaterialInsert.Create(Application);
  with fmBillMaterialInsert do
  begin
    try
      FItemIdRoot := AItemIdRoot;
      FBil_ItemId := ABil_ItemId;
      FBOMPrefix := ABOMPrefix;
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmBillMaterialInsert.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmBillMaterialInsert.btnSaveClick(Sender: TObject);
var
  Bil_ItemId: double;
begin
  if not (mdBillMaterialDt_Master.State in [dsBrowse]) then
    mdBillMaterialDt_Master.Post;
  if not (mdBillMaterialDt_New.State in [dsBrowse]) then
    mdBillMaterialDt_New.Post;

  if lcbItemTypeId.EditValue = null then
  begin
    MessageDlg(MSG_ITEM_TYPE_NULL, mtInformation, [mbOk], 0);
    Exit;
  end;

  // Tentukan parent nya
  if rbRoot.Checked then
    Bil_ItemId := lcbItemIdRoot.EditValue
  else
    Bil_ItemId := lcbItemIdSubRoot.EditValue;

  // Check BoM Header (parent nya)
  qryBillMaterialHd.Close;
  qryBillMaterialHd.Parameters[0].Value := Bil_ItemId;
  OpenIfClose(qryBillMaterialHd);
  if qryBillMaterialHd.IsEmpty then
  begin
    // Create BOM Header first
    qryBillMaterialHd.Insert;
    qryBillMaterialHd.FieldByName('ItemId').AsInteger := lcbItemIdSubRoot.EditValue;
    qryBillMaterialHd.FieldByName('BillMaterialNumber').AsString := 'Auto #' + VarToStr(lcbItemIdSubRoot.EditValue);
    qryBillMaterialHd.FieldByName('BillMaterialDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryBillMaterialHd.FieldByName('DrawNo').AsString := 'Auto #' + VarToStr(lcbItemIdSubRoot.EditValue);
    qryBillMaterialHd.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
    try
      qryBillMaterialHd.Post;
    except
      qryBillMaterialHd.Cancel;
      Abort;
    end;
  end;

  // Process "Master Barang"
  try
    mdBillMaterialDt_Master.DisableControls;
    try
      mdBillMaterialDt_Master.First;
      while not mdBillMaterialDt_Master.Eof do
      begin
        if mdBillMaterialDt_Master.FieldByName('FlagColor').AsString <> '1' then // if not process yet
        begin
          qryInsBillMaterialDt.Parameters[0].Value := Bil_ItemId;
          qryInsBillMaterialDt.Parameters[1].Value := mdBillMaterialDt_Master.FieldByName('ItemId').AsVariant;
          qryInsBillMaterialDt.Parameters[2].Value := mdBillMaterialDt_Master.FieldByName('Qty').AsFloat;
          qryInsBillMaterialDt.Parameters[3].Value := FormatFloat('000', mdBillMaterialDt_Master.FieldbyName('OrderNo').AsFloat);
          qryInsBillMaterialDt.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
          qryInsBillMaterialDt.ExecSQL;

          // Flag Done
          mdBillMaterialDt_Master.Edit;
          mdBillMaterialDt_Master.FieldByName('FlagColor').AsInteger := 1;
          mdBillMaterialDt_Master.Post;
        end;

        mdBillMaterialDt_Master.Next;
      end;
    finally
      mdBillMaterialDt_Master.EnableControls;
    end;
  except
    mdBillMaterialDt_Master.Edit;
    mdBillMaterialDt_Master.FieldByName('FlagColor').AsInteger := 2;
    mdBillMaterialDt_Master.Post;
    Abort;
  end;

  // Process "Barang Baru"
  try
    mdBillMaterialDt_New.DisableControls;
    try
      mdBillMaterialDt_New.First;
      while not mdBillMaterialDt_New.Eof do
      begin
        if mdBillMaterialDt_New.FieldByName('FlagColor').AsString <> '1' then // if not process yet
        begin
          dmInventory.qryItem.Insert;
          dmInventory.qryItem.FieldByName('ItemTypeId').AsVariant := lcbItemTypeId.EditValue;
          dmInventory.qryItem.FieldByName('MaterialId').AsVariant := mdBillMaterialDt_New.FieldByName('MaterialId').AsVariant;
          dmInventory.qryItem.FieldByName('ItemCategoryId').AsVariant := mdBillMaterialDt_New.FieldByName('ItemCategoryId').AsVariant;
          dmInventory.qryItem.FieldByName('ItemCode').AsVariant := mdBillMaterialDt_New.FieldByName('ItemCode').AsVariant;
          dmInventory.qryItem.FieldByName('ItemName').AsVariant := mdBillMaterialDt_New.FieldByName('ItemName').AsVariant;
          dmInventory.qryItem.FieldByName('UnitMeasure').AsString := mdBillMaterialDt_New.FieldByName('UnitMeasure').AsString;
          dmInventory.qryItem.FieldByName('T').AsVariant := mdBillMaterialDt_New.FieldByName('T').AsFloat;
          dmInventory.qryItem.FieldByName('L').AsVariant := mdBillMaterialDt_New.FieldByName('L').AsFloat;
          dmInventory.qryItem.FieldByName('P').AsVariant := mdBillMaterialDt_New.FieldByName('P').AsFloat;
          dmInventory.qryItem.FieldByName('TConstanta').AsVariant := mdBillMaterialDt_New.FieldByName('TConstanta').AsFloat;
          dmInventory.qryItem.FieldByName('LConstanta').AsVariant := mdBillMaterialDt_New.FieldByName('LConstanta').AsFloat;
          dmInventory.qryItem.FieldByName('PConstanta').AsVariant := mdBillMaterialDt_New.FieldByName('PConstanta').AsFloat;
          dmInventory.qryItem.FieldByName('M2').AsVariant := mdBillMaterialDt_New.FieldByName('M2').AsFloat;
          dmInventory.qryItem.FieldByName('M3').AsVariant := mdBillMaterialDt_New.FieldByName('M3').AsFloat;
          dmInventory.qryItem.FieldByName('StatusItem').AsInteger := 1; // Item
          dmInventory.qryItem.FieldByName('StatusCostMethod').AsInteger := 2; // Average
          dmInventory.qryItem.FieldByName('StatusDimensi').AsInteger := mdBillMaterialDt_New.FieldByName('StatusDimensi').AsInteger; // 0=Luas, 1=Volume
          try
            dmInventory.qryItem.Post;
          except
            dmInventory.qryItem.Cancel;
            Abort;
          end;

          qryInsBillMaterialDt.Parameters[0].Value := Bil_ItemId;
          qryInsBillMaterialDt.Parameters[1].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
          qryInsBillMaterialDt.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('Qty').AsFloat;
          qryInsBillMaterialDt.Parameters[3].Value := FormatFloat('000', mdBillMaterialDt_New.FieldbyName('OrderNo').AsFloat);
          qryInsBillMaterialDt.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
          qryInsBillMaterialDt.ExecSQL;

          // Cek ItemRawMaterial (bahan)
          if not mdBillMaterialDt_New.FieldByName('ItemIdRawMaterial').IsNull then
          begin
            // Create BOM header first
            qryBillMaterialHd.Close;
            qryBillMaterialHd.Parameters[0].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
            OpenIfClose(qryBillMaterialHd);
            if qryBillMaterialHd.IsEmpty then
            begin
              // Create BOM Header first
              qryBillMaterialHd.Insert;
              qryBillMaterialHd.FieldByName('ItemId').AsInteger := lcbItemIdSubRoot.EditValue;
              qryBillMaterialHd.FieldByName('BillMaterialNumber').AsString := 'Auto #' + VarToStr(lcbItemIdSubRoot.EditValue);
              qryBillMaterialHd.FieldByName('BillMaterialDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
              qryBillMaterialHd.FieldByName('DrawNo').AsString := 'Auto #' + VarToStr(lcbItemIdSubRoot.EditValue);
              qryBillMaterialHd.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
              try
                qryBillMaterialHd.Post;
              except
                qryBillMaterialHd.Cancel;
                Abort;
              end;
            end;

            // Save Material
            qryInsBillMaterialDt.Parameters[0].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
            qryInsBillMaterialDt.Parameters[1].Value := mdBillMaterialDt_New.FieldByName('ItemIdRawMaterial').AsVariant;
            if mdBillMaterialDt_New.FieldByName('StatusDimensi').AsString = '0' then
              qryInsBillMaterialDt.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('M2').AsFloat
            else
              qryInsBillMaterialDt.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('M3').AsFloat;
            qryInsBillMaterialDt.Parameters[3].Value := '001';
            qryInsBillMaterialDt.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
            qryInsBillMaterialDt.ExecSQL;
          end;

          // Flag Done
          mdBillMaterialDt_New.Edit;
          mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 1;
          mdBillMaterialDt_New.Post;
        end;

        mdBillMaterialDt_New.Next;
      end;
    finally
      mdBillMaterialDt_New.EnableControls;
    end;
  except
    mdBillMaterialDt_New.Edit;
    mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 2;
    mdBillMaterialDt_New.Post;
    Abort;
  end;

  // Finally
  ModalResult := mrOk;
end;

procedure TfmBillMaterialInsert.cgvMasterItemStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('FlagColor').Index]) = '1' then
        AStyle := dmGlobal.stGreenLight;
      if VarToStr(ARecord.Values[GetColumnByFieldName('FlagColor').Index]) = '2' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmBillMaterialInsert.cgvNewItemStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('FlagColor').Index]) = '1' then
        AStyle := dmGlobal.stGreenLight;
      if VarToStr(ARecord.Values[GetColumnByFieldName('FlagColor').Index]) = '2' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmBillMaterialInsert.dsBillMaterialDt_NewDataChange(Sender: TObject;
  Field: TField);
begin

  if (Field = nil) then
    Exit;

  if mdBillMaterialDt_New.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'T') = 0) or
      (CompareText(Field.FieldName, 'L') = 0) or
      (CompareText(Field.FieldName, 'P') = 0) or
      (CompareText(Field.FieldName, 'TConstanta') = 0) or
      (CompareText(Field.FieldName, 'LConstanta') = 0) or
      (CompareText(Field.FieldName, 'PConstanta') = 0) then
    begin
      mdBillMaterialDt_New.FieldByName('M2').AsFloat :=
        (mdBillMaterialDt_New.FieldByName('L').AsFloat * mdBillMaterialDt_New.FieldByName('LConstanta').AsFloat) *
        (mdBillMaterialDt_New.FieldByName('P').AsFloat * mdBillMaterialDt_New.FieldByName('PConstanta').AsFloat);

      mdBillMaterialDt_New.FieldByName('M3').AsFloat :=
        (mdBillMaterialDt_New.FieldByName('L').AsFloat * mdBillMaterialDt_New.FieldByName('LConstanta').AsFloat) *
        (mdBillMaterialDt_New.FieldByName('P').AsFloat * mdBillMaterialDt_New.FieldByName('PConstanta').AsFloat) *
        (mdBillMaterialDt_New.FieldByName('T').AsFloat * mdBillMaterialDt_New.FieldByName('TConstanta').AsFloat);
    end;

    if (CompareText(Field.FieldName, 'ItemName') = 0) then
    begin
      if mdBillMaterialDt_New.FieldByName('ItemCode').IsNull then
        mdBillMaterialDt_New.FieldByName('ItemCode').AsString :=
          Uppercase(FBOMPrefix + mdBillMaterialDt_New.FieldByName('ItemName').AsString);
    end;
  end;
end;

procedure TfmBillMaterialInsert.InitForm;
begin
  dmGlobal.InitComponent(Self);

  cgvNewItem.OptionsCustomize.ColumnsQuickCustomization := False;
  cgvNewItemRawMaterial.Visible := False;
  cgvNewItemMaterialId.Visible := False;

  edtSub_M3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  edtSub_M2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  edtSub_P.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtSub_L.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtSub_T.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_M3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  edtRoot_M2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  edtRoot_P.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_L.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_T.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevItemT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevItemL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevItemP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemM2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  TcxCalcEditProperties(cgvNewItemM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  //TcxCalcEditProperties(cgvNewItemQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  lcbItemIdRoot.EditValue := FItemIdRoot;
  if FBil_ItemId <> 0 then
    lcbItemIdSubRoot.EditValue := FBil_ItemId
  else
    lcbItemIdSubRoot.EditValue := FItemIdRoot;

  SetReadOnly(lcbItemIdRoot, True, COLOR_INACTIVE);
  SetReadOnly(lcbItemIdSubRoot, True, COLOR_INACTIVE);
  SetReadOnly(edtSub_M3, True, COLOR_INACTIVE);
  SetReadOnly(edtSub_M2, True, COLOR_INACTIVE);
  SetReadOnly(edtSub_P, True, COLOR_INACTIVE);
  SetReadOnly(edtSub_L, True, COLOR_INACTIVE);
  SetReadOnly(edtSub_T, True, COLOR_INACTIVE);
  SetReadOnly(edtRoot_M3, True, COLOR_INACTIVE);
  SetReadOnly(edtRoot_M2, True, COLOR_INACTIVE);
  SetReadOnly(edtRoot_P, True, COLOR_INACTIVE);
  SetReadOnly(edtRoot_L, True, COLOR_INACTIVE);
  SetReadOnly(edtRoot_T, True, COLOR_INACTIVE);

  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevItemRawMaterial, True);
  qryGetItemInfo.Close;
  qryGetItemInfo.Parameters[0].Value := lcbItemIdRoot.EditValue;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
  begin
    edtRoot_T.EditValue := qryGetItemInfo.FieldByName('T').AsFloat;
    edtRoot_L.EditValue := qryGetItemInfo.FieldByName('L').AsFloat;
    edtRoot_P.EditValue := qryGetItemInfo.FieldByName('P').AsFloat;
    edtRoot_M2.EditValue := qryGetItemInfo.FieldByName('M2').AsFloat;
    edtRoot_M3.EditValue := qryGetItemInfo.FieldByName('M3').AsFloat;
  end;

  qryGetItemInfo.Close;
  qryGetItemInfo.Parameters[0].Value := lcbItemIdSubRoot.EditValue;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
  begin
    edtSub_T.EditValue := qryGetItemInfo.FieldByName('T').AsFloat;
    edtSub_L.EditValue := qryGetItemInfo.FieldByName('L').AsFloat;
    edtSub_P.EditValue := qryGetItemInfo.FieldByName('P').AsFloat;
    edtSub_M2.EditValue := qryGetItemInfo.FieldByName('M2').AsFloat;
    edtSub_M3.EditValue := qryGetItemInfo.FieldByName('M3').AsFloat;
  end;

  lcbItemTypeId.EditValue := 3;
end;

procedure TfmBillMaterialInsert.lcbItemTypeIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  qryPrevItem.Close;
  qryPrevItem.Parameters[0].Value := VarToStr(lcbItemTypeId.EditValue);
  OpenIfClose(qryPrevItem, True);

  mdBillMaterialDt_Master.Close;
  mdBillMaterialDt_Master.Open;

  mdBillMaterialDt_New.Close;
  mdBillMaterialDt_New.Open;

  if VarToStr(lcbItemTypeId.EditValue) <> '2' then // Selain Bahan Baku
  begin
    cgvNewItemRawMaterial.Visible := True;
    cgvNewItemMaterialId.Visible := False;
  end
  else
  begin
    cgvNewItemRawMaterial.Visible := False;
    cgvNewItemMaterialId.Visible := True;
  end;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_MasterBeforeDelete(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('FlagColor').AsString = '1' then
    Abort;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_MasterBeforeEdit(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('FlagColor').AsString = '1' then
    Abort;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_MasterNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('OrderNo').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Qty').AsInteger := 1;
  DataSet.FieldByName('FlagColor').AsInteger := 0;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_NewBeforeDelete(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('FlagColor').AsString = '1' then
    Abort;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_NewBeforeEdit(
  DataSet: TDataSet);
begin
  if DataSet.FieldByName('FlagColor').AsString = '1' then
    Abort;
end;

procedure TfmBillMaterialInsert.mdBillMaterialDt_NewNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('OrderNo').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('UnitMeasure').AsString := 'Pcs';
  DataSet.FieldByName('T').AsInteger := 0;
  DataSet.FieldByName('L').AsInteger := 0;
  DataSet.FieldByName('P').AsInteger := 0;
  DataSet.FieldByName('TConstanta').AsFloat := 0.001; //MM
  DataSet.FieldByName('LConstanta').AsFloat := 0.001; //MM
  DataSet.FieldByName('PConstanta').AsFloat := 0.001; //MM
  DataSet.FieldByName('M2').AsFloat := 0;
  DataSet.FieldByName('M3').AsFloat := 0;
  DataSet.FieldByName('StatusDimensi').AsInteger := 0; // 0=Luas, 1=Volume
  DataSet.FieldByName('Qty').AsInteger := 1;
  DataSet.FieldByName('FlagColor').AsInteger := 0;
end;

procedure TfmBillMaterialInsert.qryPrevItemBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryItemCategory);
  OpenIfClose(dmInventory.qryMaterial);
end;

procedure TfmBillMaterialInsert.qryPrevItemRawMaterialBeforeOpen(
  DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryItemCategory);
  OpenIfClose(dmInventory.qryMaterial);
end;

procedure TfmBillMaterialInsert.rbRootClick(Sender: TObject);
begin
  rbSubRoot.Checked := not rbRoot.Checked;
end;

procedure TfmBillMaterialInsert.rbSubRootClick(Sender: TObject);
begin
  rbRoot.Checked := not rbSubRoot.Checked;
end;

end.
