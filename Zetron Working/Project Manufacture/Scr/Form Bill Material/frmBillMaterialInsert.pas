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
  cxGridLevel, untIvPropDevExpress, untIvPositionStandard, cxPC, cxCheckBox,
  untIvPositionDevExpress, cxCurrencyEdit, cxProgressBar;

type
  TfmBillMaterialInsert = class(TForm)
    pnlButton: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    qryBillMaterialDt_Ins: TADOQuery;
    gbParent: TcxGroupBox;
    qryBillMaterialHd: TADOQuery;
    rbRoot: TcxRadioButton;
    rbSubRoot: TcxRadioButton;
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
    lblTebal: TLabel;
    lblLebar: TLabel;
    lblPanjang: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryGetItemInfo: TADOQuery;
    IvPositionStandard1: TIvPositionStandard;
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
    lcbStatusProduction: TcxExtLookupComboBox;
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
    IvPositionDevExpress1: TIvPositionDevExpress;
    cgvNewItemBerat: TcxGridDBColumn;
    mdBillMaterialDt_NewBerat: TFloatField;
    edtItemIdSubRoot: TcxTextEdit;
    edtItemIdRoot: TcxTextEdit;
    edtRoot_T: TcxCurrencyEdit;
    edtRoot_L: TcxCurrencyEdit;
    edtRoot_P: TcxCurrencyEdit;
    edtSub_T: TcxCurrencyEdit;
    edtSub_L: TcxCurrencyEdit;
    edtSub_P: TcxCurrencyEdit;
    edtRoot_M2: TcxCurrencyEdit;
    edtRoot_M3: TcxCurrencyEdit;
    edtSub_M2: TcxCurrencyEdit;
    edtSub_M3: TcxCurrencyEdit;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    Image1: TImage;
    lblFixed: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure mdBillMaterialDt_MasterNewRecord(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewNewRecord(DataSet: TDataSet);
    procedure qryPrevItemBeforeOpen(DataSet: TDataSet);
    procedure rbRootClick(Sender: TObject);
    procedure rbSubRootClick(Sender: TObject);
    procedure dsBillMaterialDt_NewDataChange(Sender: TObject; Field: TField);
    procedure qryPrevItemRawMaterialBeforeOpen(DataSet: TDataSet);
    procedure cgvNewItemStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvMasterItemStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure mdBillMaterialDt_MasterBeforeDelete(DataSet: TDataSet);
    procedure mdBillMaterialDt_MasterBeforeEdit(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewBeforeDelete(DataSet: TDataSet);
    procedure mdBillMaterialDt_NewBeforeEdit(DataSet: TDataSet);
    procedure lcbStatusProductionPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FItemIdRoot: integer;
    FBil_ItemId: integer;
    FBOMPrefix: string;
    FQtyTotalBOMParent: double;
    FQtyBOM: double;

    procedure InitForm;
  public
    { Public declarations }
    class function ExecuteForm(AItemIdRoot, ABil_ItemId: integer; ABOMPrefix: string;
      AQtyTotalBOMParent, AQtyBOM: double): TModalResult;
  end;

implementation

uses untConstanta, untProcedure, dtmGlobal, dtmInventory;

{$R *.dfm}

class function TfmBillMaterialInsert.ExecuteForm(AItemIdRoot, ABil_ItemId: integer;
  ABOMPrefix: string; AQtyTotalBOMParent, AQtyBOM: double): TModalResult;
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
      FQtyBOM := AQtyBOM;
      FQtyTotalBOMParent := AQtyTotalBOMParent;
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
  Parent_ItemId: double;
  QtyPembagi: double;
begin
  if not (mdBillMaterialDt_Master.State in [dsBrowse]) then
    mdBillMaterialDt_Master.Post;
  if not (mdBillMaterialDt_New.State in [dsBrowse]) then
    mdBillMaterialDt_New.Post;

  if lcbStatusProduction.EditValue = null then
  begin
    MessageDlg(MSG_ITEM_TYPE_NULL, mtInformation, [mbOk], 0);
    Exit;
  end;

  // Initial
  lblFixed.Visible := True;
  Image1.Visible := True;
  mdBillMaterialDt_Master.DisableControls;
  mdBillMaterialDt_Master.First;
  while not mdBillMaterialDt_Master.Eof do
  begin
    mdBillMaterialDt_Master.Edit;
    mdBillMaterialDt_Master.FieldByName('FlagColor').AsInteger := 0;
    mdBillMaterialDt_Master.Post;
    mdBillMaterialDt_Master.Next;
  end;
  mdBillMaterialDt_Master.EnableControls;
  mdBillMaterialDt_New.DisableControls;
  mdBillMaterialDt_New.First;
  while not mdBillMaterialDt_New.Eof do
  begin
    mdBillMaterialDt_New.Edit;
    mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 0;
    mdBillMaterialDt_New.Post;
    mdBillMaterialDt_New.Next;
  end;
  mdBillMaterialDt_New.EnableControls;

  // Tentukan parent nya
  if rbRoot.Checked then
  begin
    Parent_ItemId := FItemIdRoot;
    QtyPembagi := FQtyBOM;
  end
  else
  begin
    Parent_ItemId := FBil_ItemId;
    QtyPembagi := FQtyTotalBOMParent;
  end;

  // Check BoM Header (parent nya)
  qryBillMaterialHd.Close;
  qryBillMaterialHd.Parameters[0].Value := Parent_ItemId;
  OpenIfClose(qryBillMaterialHd);
  if qryBillMaterialHd.IsEmpty then
  begin
    // If not exist, create BOM Header first
    qryBillMaterialHd.Insert;
    qryBillMaterialHd.FieldByName('ItemId').AsInteger := FBil_ItemId;
    qryBillMaterialHd.FieldByName('BillMaterialNumber').AsString := 'Auto #' + FloatToStr(Parent_ItemId);
    qryBillMaterialHd.FieldByName('BillMaterialDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryBillMaterialHd.FieldByName('DrawNo').AsString := 'Auto #' + FloatToStr(Parent_ItemId);
    qryBillMaterialHd.FieldByName('PrefixCode').AsString := '#' + FloatToStr(Parent_ItemId);
    qryBillMaterialHd.FieldByName('QtyBOM').AsInteger := 1; // Default
    qryBillMaterialHd.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
    qryBillMaterialHd.Post;
  end;
  qryBillMaterialHd.Close;

  dmGlobal.conGlobal.BeginTrans;
  try
    // Process Tab "Master Barang"
    try
      pnlProgressBar.Visible := True;
      pbProcess.Position := 0;
      pbProcess.Properties.Max := mdBillMaterialDt_Master.RecordCount;
      mdBillMaterialDt_Master.DisableControls;
      mdBillMaterialDt_Master.First;
      while not mdBillMaterialDt_Master.Eof do
      begin
        pbProcess.Position := pbProcess.Position + 1;
        pbProcess.Refresh;
        if mdBillMaterialDt_Master.FieldByName('FlagColor').AsString <> '1' then // if not process yet
        begin
          qryBillMaterialDt_Ins.Parameters[0].Value := Parent_ItemId;
          qryBillMaterialDt_Ins.Parameters[1].Value := mdBillMaterialDt_Master.FieldByName('ItemId').AsVariant;
          qryBillMaterialDt_Ins.Parameters[2].Value := (mdBillMaterialDt_Master.FieldByName('Qty').AsFloat / QtyPembagi);
          qryBillMaterialDt_Ins.Parameters[3].Value := FormatFloat('000', mdBillMaterialDt_Master.FieldbyName('OrderNo').AsFloat);
          qryBillMaterialDt_Ins.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
          try
            qryBillMaterialDt_Ins.ExecSQL;
            // Flag Done
            mdBillMaterialDt_Master.Edit;
            mdBillMaterialDt_Master.FieldByName('FlagColor').AsInteger := 1;
            mdBillMaterialDt_Master.Post;
          except
            dmGlobal.conGlobal.RollbackTrans;
            mdBillMaterialDt_Master.Edit;
            mdBillMaterialDt_Master.FieldByName('FlagColor').AsInteger := 2;
            mdBillMaterialDt_Master.Post;
            Exit;
          end;
        end;
        mdBillMaterialDt_Master.Next;
      end;
    finally
      mdBillMaterialDt_Master.EnableControls;
      pnlProgressBar.Visible := False;
      pbProcess.Position := 0;
    end;

    // Process "Barang Baru"
    try
      pnlProgressBar.Visible := True;
      pbProcess.Position := 0;
      pbProcess.Properties.Max := mdBillMaterialDt_New.RecordCount;
      mdBillMaterialDt_New.DisableControls;
      mdBillMaterialDt_New.First;
      while not mdBillMaterialDt_New.Eof do
      begin
        pbProcess.Position := pbProcess.Position + 1;
        pbProcess.Refresh;
        if mdBillMaterialDt_New.FieldByName('FlagColor').AsString <> '1' then // if not process yet
        begin
          // Create new item
          dmInventory.qryItem.Insert;
          dmInventory.qryItem.FieldByName('StatusProduction').AsVariant := lcbStatusProduction.EditValue;
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
            dmGlobal.conGlobal.RollbackTrans;
            mdBillMaterialDt_New.Edit;
            mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 2;
            mdBillMaterialDt_New.Post;
            Exit;
          end;

          // Then, create BOM Detail
          qryBillMaterialDt_Ins.Parameters[0].Value := Parent_ItemId;
          qryBillMaterialDt_Ins.Parameters[1].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
          qryBillMaterialDt_Ins.Parameters[2].Value := (mdBillMaterialDt_New.FieldByName('Qty').AsFloat / QtyPembagi);
          qryBillMaterialDt_Ins.Parameters[3].Value := FormatFloat('000', mdBillMaterialDt_New.FieldbyName('OrderNo').AsFloat);
          qryBillMaterialDt_Ins.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
          try
            qryBillMaterialDt_Ins.ExecSQL;
          except
            dmGlobal.conGlobal.RollbackTrans;
            mdBillMaterialDt_New.Edit;
            mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 2;
            mdBillMaterialDt_New.Post;
            Exit;
          end;

          // If using material, then proses "Item Material" (RawMaterial) -> create new sub line for material
          if not mdBillMaterialDt_New.FieldByName('ItemIdRawMaterial').IsNull then
          begin
            // Create BOM header first, for item above
            qryBillMaterialHd.Close;
            qryBillMaterialHd.Parameters[0].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
            OpenIfClose(qryBillMaterialHd);
            if qryBillMaterialHd.IsEmpty then
            begin
              qryBillMaterialHd.Insert;
              qryBillMaterialHd.FieldByName('ItemId').AsInteger := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
              qryBillMaterialHd.FieldByName('BillMaterialNumber').AsString := 'Auto #' + dmInventory.qryItem.FieldByName('ItemId').AsString;
              qryBillMaterialHd.FieldByName('DrawNo').AsString := qryBillMaterialHd.FieldByName('BillMaterialNumber').AsString;
              qryBillMaterialHd.FieldByName('BillMaterialDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
              qryBillMaterialHd.FieldByName('PrefixCode').AsString := '#' + dmInventory.qryItem.FieldByName('ItemId').AsString;
              qryBillMaterialHd.FieldByName('QtyBOM').AsInteger := 1;
              qryBillMaterialHd.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
              try
                qryBillMaterialHd.Post;
              except
                qryBillMaterialHd.Cancel;
                dmGlobal.conGlobal.RollbackTrans;
                mdBillMaterialDt_New.Edit;
                mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 2;
                mdBillMaterialDt_New.Post;
                Exit;
              end;
              qryBillMaterialHd.Close;
            end;

            // Save Material
            qryBillMaterialDt_Ins.Parameters[0].Value := dmInventory.qryItem.FieldByName('ItemId').AsVariant;
            qryBillMaterialDt_Ins.Parameters[1].Value := mdBillMaterialDt_New.FieldByName('ItemIdRawMaterial').AsVariant;
            case mdBillMaterialDt_New.FieldByName('StatusDimensi').AsInteger of
              0: qryBillMaterialDt_Ins.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('Qty').AsFloat;
              1: qryBillMaterialDt_Ins.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('M2').AsFloat;
              2: qryBillMaterialDt_Ins.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('M3').AsFloat;
              3: qryBillMaterialDt_Ins.Parameters[2].Value := mdBillMaterialDt_New.FieldByName('Berat').AsFloat;
            end;
            qryBillMaterialDt_Ins.Parameters[3].Value := '001';
            qryBillMaterialDt_Ins.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
            try
              qryBillMaterialDt_Ins.ExecSQL;
            except
              dmGlobal.conGlobal.RollbackTrans;
              mdBillMaterialDt_New.Edit;
              mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 2;
              mdBillMaterialDt_New.Post;
              Exit;
            end;
            // Flag Done
            mdBillMaterialDt_New.Edit;
            mdBillMaterialDt_New.FieldByName('FlagColor').AsInteger := 1;
            mdBillMaterialDt_New.Post;
          end;
          mdBillMaterialDt_New.Next;
        end;
      end;
    finally
      mdBillMaterialDt_New.EnableControls;
      pnlProgressBar.Visible := False;
      pbProcess.Position := 0;
    end;

    dmGlobal.conGlobal.CommitTrans;
    ModalResult := mrOk;
  finally
    dmInventory.qryItem.Requery();
  end;
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
      mdBillMaterialDt_New.FieldByName('ItemCode').AsString :=
        Uppercase(FBOMPrefix + mdBillMaterialDt_New.FieldByName('ItemName').AsString);
    end;

    if (CompareText(Field.FieldName, 'ItemIdRawMaterial') = 0) then
    begin
      mdBillMaterialDt_New.FieldByName('MaterialId').AsVariant :=
        cgvPrevItemRawMaterialMaterialId.EditValue;
    end;
  end;
end;

procedure TfmBillMaterialInsert.InitForm;
var
  Filename: string;
begin
  // 'C:\Documents and Settings\User\Local Settings\Application Data\Zetron System\<project name>\'
  // Nama file diubah menjadi numeric, dan tidak ada proses reverse menjadi huruf kembali (tidak perlu)
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';

  IvPositionStandard1.Filename := Filename;
  IvPositionDevExpress1.Filename := Filename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  dmGlobal.InitComponent(Self);

  cgvNewItemRawMaterial.Visible := False;
  cgvNewItemRawMaterial.VisibleForCustomization := False;
  cgvNewItemMaterialId.Visible := False;
  //cgvNewItemMaterialId.VisibleForCustomization := False;

  edtSub_T.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtSub_L.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtSub_P.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtSub_M2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  edtSub_M3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  edtRoot_T.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_L.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_P.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  edtRoot_M2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  edtRoot_M3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvPrevItemT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevItemL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevItemP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvNewItemM2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  TcxCalcEditProperties(cgvNewItemM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvNewItemBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  //TcxCalcEditProperties(cgvNewItemQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  SetReadOnly(edtItemIdRoot, True, COLOR_INACTIVE);
  SetReadOnly(edtItemIdSubRoot, True, COLOR_INACTIVE);
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

  // validate parent item, if not exist then parent = root
  if FBil_ItemId = 0 then
  begin
    FBil_ItemId := FItemIdRoot;
    rbRoot.Checked := True;
    rbSubRoot.Enabled := False;
  end;

  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevItemRawMaterial, True);

  // Get item root info
  qryGetItemInfo.Close;
  qryGetItemInfo.Parameters[0].Value := FItemIdRoot;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
  begin
    edtItemIdRoot.EditValue := qryGetItemInfo.FieldByName('ItemName').AsString;
    edtRoot_T.Value := qryGetItemInfo.FieldByName('T').AsFloat;
    edtRoot_L.Value := qryGetItemInfo.FieldByName('L').AsFloat;
    edtRoot_P.Value := qryGetItemInfo.FieldByName('P').AsFloat;
    edtRoot_M2.Value := qryGetItemInfo.FieldByName('M2').AsFloat;
    edtRoot_M3.Value := qryGetItemInfo.FieldByName('M3').AsFloat;
  end;

  // Get item parent info
  qryGetItemInfo.Close;
  qryGetItemInfo.Parameters[0].Value := FBil_ItemId;
  OpenIfClose(qryGetItemInfo);
  if not qryGetItemInfo.IsEmpty then
  begin
    edtItemIdSubRoot.EditValue := qryGetItemInfo.FieldByName('ItemName').AsString;
    edtSub_T.Value := qryGetItemInfo.FieldByName('T').AsFloat;
    edtSub_L.Value := qryGetItemInfo.FieldByName('L').AsFloat;
    edtSub_P.Value := qryGetItemInfo.FieldByName('P').AsFloat;
    edtSub_M2.Value := qryGetItemInfo.FieldByName('M2').AsFloat;
    edtSub_M3.Value := qryGetItemInfo.FieldByName('M3').AsFloat;
  end;

  lcbStatusProduction.EditValue := 3; // Default as WIP
end;

procedure TfmBillMaterialInsert.lcbStatusProductionPropertiesEditValueChanged(
  Sender: TObject);
begin
  qryPrevItem.Close;
  qryPrevItem.Parameters[0].Value := VarToStr(lcbStatusProduction.EditValue);
  OpenIfClose(qryPrevItem, True);

  mdBillMaterialDt_Master.Close;
  mdBillMaterialDt_Master.Open;

  mdBillMaterialDt_New.Close;
  mdBillMaterialDt_New.Open;

  if (VarToStr(lcbStatusProduction.EditValue) = '0') or
    (VarToStr(lcbStatusProduction.EditValue) = '1') then // Bahan Baku atau Bahan Penolong
  begin
    cgvNewItemRawMaterial.Visible := False;
    cgvNewItemRawMaterial.VisibleForCustomization := False;
    cgvNewItemMaterialId.Visible := True;
    cgvNewItemMaterialId.VisibleForCustomization := True;
  end
  else
  begin
    cgvNewItemRawMaterial.Visible := True;
    cgvNewItemRawMaterial.VisibleForCustomization := True;
    cgvNewItemMaterialId.Visible := False;
    cgvNewItemMaterialId.VisibleForCustomization := False;
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
  DataSet.FieldByName('StatusDimensi').AsInteger := 1; // 0=Quantity, 0=Luas, 1=Volume, 2=Berat
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
