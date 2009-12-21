unit frmBillMaterialModify;

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
  ExtCtrls, cxImageComboBox, cxSpinEdit, cxDBEdit, cxCheckBox;

type
  TfmBillMaterialModify = class(TForm)
    pnlButton: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    qryBillMaterialDt: TADOQuery;
    gbChild: TcxGroupBox;
    lcbItemId: TcxExtLookupComboBox;
    lblName: TLabel;
    lblQty: TLabel;
    lblOrderNo: TLabel;
    edtOrderNo: TcxSpinEdit;
    edtQty: TcxCalcEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    FBil_ItemId: integer;
    FItemId: integer;
    FQty: double;
    FOrderNo: integer;
    FQtyTotalBOMParent: double;

    procedure InitForm;
  public
    { Public declarations }
    class function ExecuteForm(ABil_ItemId, AItemId, AOrderNo: integer; AQty,
      AQtyTotalBOMParent: double): TModalResult;
  end;

implementation

uses untConstanta, untProcedure, dtmGlobal, dtmInventory;

{$R *.dfm}

class function TfmBillMaterialModify.ExecuteForm(ABil_ItemId, AItemId,
  AOrderNo: integer; AQty, AQtyTotalBOMParent: double): TModalResult;
var
  fmBillMaterialModify: TfmBillMaterialModify;
begin
  // NOT MDI
  fmBillMaterialModify := TfmBillMaterialModify.Create(Application);
  with fmBillMaterialModify do
  begin
    try
      FBil_ItemId := ABil_ItemId;
      FItemId := AItemId;
      FQty := AQty;
      FOrderNo := AOrderNo;
      FQtyTotalBOMParent := AQtyTotalBOMParent;
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmBillMaterialModify.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmBillMaterialModify.btnSaveClick(Sender: TObject);
begin
  qryBillMaterialDt.Close;
  qryBillMaterialDt.Parameters[0].Value := FBil_ItemId;
  qryBillMaterialDt.Parameters[1].Value := FItemId;
  OpenIfClose(qryBillMaterialDt);
  if not qryBillMaterialDt.IsEmpty then
  begin
    qryBillMaterialDt.Edit;
    qryBillMaterialDt.FieldByName('OrderNo').AsVariant := FormatFloat('000', edtOrderNo.EditValue);
    qryBillMaterialDt.FieldByName('Qty').AsVariant := edtQty.EditValue / FQtyTotalBOMParent;
    qryBillMaterialDt.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
    qryBillMaterialDt.Post;
  end;

  ModalResult := mrOk;
end;

procedure TfmBillMaterialModify.InitForm;
begin
  dmGlobal.InitComponent(Self);

//  edtQty.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  lcbItemId.EditValue := FItemId;
  edtOrderNo.EditValue := FOrderNo;
  edtQty.EditValue := FQty;

  SetReadOnly(lcbItemId, True, COLOR_INACTIVE);

  OpenIfClose(dmInventory.qryItem, True);
end;

end.
