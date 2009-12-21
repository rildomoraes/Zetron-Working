unit frmBillMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxDBExtLookupComboBox, cxCalc, dxSkinscxPCPainter, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxGrid,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxDBEdit,
  cxCheckBox, cxInplaceContainer, cxDBTL, cxTLData, cxMemo, cxDropDownEdit,
  cxCalendar, cxContainer, cxTextEdit, cxLookupEdit, cxDBLookupEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, ImgList, ADODB, dxDockControl,
  untIvPositionDevExpress, DBActns, ActnList, untIvPositionStandard,
  dxDockPanel, cxButtons, ExtCtrls, cxTLdxBarBuiltInMenu, dxPScxTL5Lnk;

type
  TfmBillMaterial = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayBillMaterialId: TcxGridDBColumn;
    cgvPrevDisplayItemId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvPrevDisplayBillMaterialName: TcxGridDBColumn;
    dsBillMaterialDt: TDataSource;
    pnlTop: TPanel;
    lblCode: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    dbeBillMaterialNumber: TcxDBTextEdit;
    dbeBillMaterialDate: TcxDBDateEdit;
    dblcItemIdBOM: TcxDBExtLookupComboBox;
    dbeDrawNo: TcxDBTextEdit;
    dbtBillMaterial: TcxDBTreeList;
    dbmMemo: TcxDBMemo;
    dbtBillMaterialItemId: TcxDBTreeListColumn;
    dbtBillMaterialItemIdParent: TcxDBTreeListColumn;
    dbtBillMaterialQtyTotal: TcxDBTreeListColumn;
    dbtBillMaterialQtyTotalBOM: TcxDBTreeListColumn;
    qryPrevBillMaterial: TADOQuery;
    imgStateBOM16: TImageList;
    dbtBillMaterialBillMaterialNumber: TcxDBTreeListColumn;
    pnlRight: TPanel;
    btnCollapse: TcxButton;
    btnEditDt: TcxButton;
    btnInsertDt: TcxButton;
    dbtBillMaterialMaterialId: TcxDBTreeListColumn;
    dbtBillMaterialT: TcxDBTreeListColumn;
    dbtBillMaterialL: TcxDBTreeListColumn;
    dbtBillMaterialP: TcxDBTreeListColumn;
    dbtBillMaterialM2M3: TcxDBTreeListColumn;
    btnExpand: TcxButton;
    btnDeleteDt: TcxButton;
    cgvPrevDisplayFlagProtected: TcxGridDBColumn;
    Label2: TLabel;
    dblcFlagProtected: TcxDBImageComboBox;
    dbtBillMaterialOrderNo: TcxDBTreeListColumn;
    dbtBillMaterialOrderNoRec: TcxDBTreeListColumn;
    lblEmployeeName: TLabel;
    dbeEmployeeId: TcxDBExtLookupComboBox;
    dbtBillMateriaEmployeeId: TcxDBTreeListColumn;
    qryDel_BillMaterialDt: TADOQuery;
    dbtBillMaterialUnitMeasure: TcxDBTreeListColumn;
    Label3: TLabel;
    dbePrefixCode: TcxDBTextEdit;
    gvrBillOfMaterial: TcxGridViewRepository;
    cgvPrevItemWIP: TcxGridDBTableView;
    cgvPrevItemWIPItemId: TcxGridDBColumn;
    cgvPrevItemWIPItemCode: TcxGridDBColumn;
    cgvPrevItemWIPItemName: TcxGridDBColumn;
    cgvPrevItemWIPMaterialId: TcxGridDBColumn;
    cgvPrevItemWIPItemCategoryId: TcxGridDBColumn;
    qryPrevItemWIP: TADOQuery;
    dsPrevItemWIP: TDataSource;
    pnlBottom: TPanel;
    chkShowOrder: TcxCheckBox;
    chkShowRawMaterial: TcxCheckBox;
    pnlTopGrid: TPanel;
    Label4: TLabel;
    dbeQtyBoM: TcxDBCalcEdit;
    dbeUnitMeasure: TcxDBExtLookupComboBox;
    qryBillMaterialHd: TADOQuery;
    dbtBillMaterialQty: TcxDBTreeListColumn;
    actInsertDt: TAction;
    actEditDt: TAction;
    actDeleteDt: TAction;
    actExpandAll: TAction;
    actCollapseAll: TAction;
    dxComponentPrinter1Link2: TcxDBTreeListReportLink;
    btnShow: TcxButton;
    actShow: TAction;
    Bevel1: TBevel;
    procedure actCollapseAllExecute(Sender: TObject);
    procedure actDeleteDtExecute(Sender: TObject);
    procedure actEditDtExecute(Sender: TObject);
    procedure actExpandAllExecute(Sender: TObject);
    procedure actInsertDtExecute(Sender: TObject);
    procedure cgPrevDisplayEnter(Sender: TObject);
    procedure dbtBillMaterialEnter(Sender: TObject);
    procedure chkShowOrderClick(Sender: TObject);
    procedure chkShowRawMaterialClick(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeUnitMeasurePropertiesInitPopup(Sender: TObject);
    procedure qryBillMaterialHdNewRecord(DataSet: TDataSet);
    procedure qryBillMaterialHdBeforeDelete(DataSet: TDataSet);
    procedure qryBillMaterialHdBeforeEdit(DataSet: TDataSet);
    procedure qryBillMaterialHdBeforeOpen(DataSet: TDataSet);
    procedure qryBillMaterialHdBeforePost(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure dblcItemIdBOMPropertiesEditValueChanged(Sender: TObject);
    procedure qryPrevBillMaterialAfterClose(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;

    procedure UpdateTreeList;
  private

  public

  end;

var
  fmBillMaterial: TfmBillMaterial;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, frmBillMaterialInsert,
  frmBillMaterialModify;

procedure TfmBillMaterial.actCollapseAllExecute(Sender: TObject);
begin
  inherited;

  dbtBillMaterial.FullCollapse;
end;

procedure TfmBillMaterial.actDeleteDtExecute(Sender: TObject);
begin
  inherited;

  if (qryBillMaterialHd.IsEmpty) or (not qryPrevBillMaterial.Active) then
    Exit;

  if not qryPrevBillMaterial.IsEmpty then
  begin
    if MessageDlg(ASK_DELETE, mtInformation, [mbYes, mbNo], 0) = mrNo then
      Exit;
    if qryPrevBillMaterial.FieldByName('FlagProtectedParent').AsString = '1' then
    begin
      if qryPrevBillMaterial.FieldByName('Bil_ItemId').AsString <>
        qryBillMaterialHd.FieldByName('ItemId').AsString then
      begin
        MessageDlg(MSG_MODIFY_BOM_INVALID, mtInformation, [mbOk], 0);
        Exit;
      end;
    end;

    //Delete
    qryDel_BillMaterialDt.Parameters[0].Value := qryPrevBillMaterial.FieldByName('Bil_ItemId').AsVariant;
    qryDel_BillMaterialDt.Parameters[1].Value := qryPrevBillMaterial.FieldByName('ItemId').AsVariant;
    ExecuteQuery(qryDel_BillMaterialDt);

    UpdateTreeList;
  end;
end;

procedure TfmBillMaterial.actEditDtExecute(Sender: TObject);
begin
  inherited;

  if (qryBillMaterialHd.IsEmpty) or (not qryPrevBillMaterial.Active) then
    Exit;

  if not qryPrevBillMaterial.IsEmpty then
  begin
    if qryPrevBillMaterial.FieldByName('FlagProtectedParent').AsString = '1' then
    begin
      if qryPrevBillMaterial.FieldByName('Bil_ItemId').AsString <>
        qryBillMaterialHd.FieldByName('ItemId').AsString then
      begin
        MessageDlg(MSG_MODIFY_BOM_INVALID, mtInformation, [mbOk], 0);
        Exit;
      end;
    end;

    if TfmBillMaterialModify.ExecuteForm( // ItemIdRoot, Bil_ItemId, OrderNo, Qty, QtyTotalBOM_Parent
      qryPrevBillMaterial.FieldByName('Bil_ItemId').AsInteger,
      qryPrevBillMaterial.FieldByName('ItemId').AsInteger,
      qryPrevBillMaterial.FieldByName('OrderNo').AsInteger,
      qryPrevBillMaterial.FieldByName('QtyTotalBOM').AsFloat,
      (qryPrevBillMaterial.FieldByName('QtyTotalBOM').AsFloat / qryPrevBillMaterial.FieldByName('Qty').AsFloat)
      ) = mrOk then
    begin
      UpdateTreeList;
    end;
  end;
end;

procedure TfmBillMaterial.actExpandAllExecute(Sender: TObject);
begin
  inherited;

  dbtBillMaterial.FullExpand;
end;

procedure TfmBillMaterial.actInsertDtExecute(Sender: TObject);
begin
  inherited;

  if (qryBillMaterialHd.IsEmpty) or (not qryPrevBillMaterial.Active) then
    Exit;

  if not qryPrevBillMaterial.IsEmpty then
  begin
    if qryPrevBillMaterial.FieldByName('FlagProtected').AsString = '1' then
    begin
      MessageDlg(MSG_MODIFY_BOM_INVALID, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  if TfmBillMaterialInsert.ExecuteForm( // ItemIdRoot, Bil_ItemId, PrefixCode, QtyTotalBOM_Parent, QtyBOM
    qryBillMaterialHd.FieldByName('ItemId').AsInteger,
    qryPrevBillMaterial.FieldByName('ItemId').AsInteger,
    qryBillMaterialHd.FieldByName('PrefixCode').AsString,
    qryPrevBillMaterial.FieldByName('QtyTotalBOM').AsFloat,
    dsDefault.DataSet.FieldByName('QtyBOM').AsFloat) = mrOk then
  begin
    UpdateTreeList;
    LockRefresh(dmInventory.qryItem, True);
  end;
end;

procedure TfmBillMaterial.actShowExecute(Sender: TObject);
begin
  inherited;

  UpdateTreeList;
end;

procedure TfmBillMaterial.cgPrevDisplayEnter(Sender: TObject);
begin
  inherited;

  dxComponentPrinter1.CurrentLink := dxComponentPrinter1Link1;
end;

procedure TfmBillMaterial.chkShowOrderClick(Sender: TObject);
begin
  inherited;

  dbtBillMaterialOrderNo.Visible := chkShowOrder.Checked;
end;

procedure TfmBillMaterial.chkShowRawMaterialClick(Sender: TObject);
begin
  inherited;

  qryPrevBillMaterial.Filtered := chkShowRawMaterial.Checked;
end;

procedure TfmBillMaterial.dbtBillMaterialEnter(Sender: TObject);
begin
  inherited;

  dxComponentPrinter1.CurrentLink := dxComponentPrinter1Link2;
end;

procedure TfmBillMaterial.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert] then
    SetReadOnly(dbeQtyBoM, False);
  if dsDefault.State in [dsBrowse] then
    SetReadOnly(dbeQtyBoM, True);
end;

procedure TfmBillMaterial.dbeUnitMeasurePropertiesInitPopup(Sender: TObject);
begin
  inherited;

  Abort;
end;

procedure TfmBillMaterial.dblcItemIdBOMPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevBillMaterial.Close;
end;

procedure TfmBillMaterial.InitForm;
begin
  inherited;

  cgvPrevDisplay.DataController.Filter.Active := True;
  cgvPrevDisplay.DataController.Filter.AddItem(cgvPrevDisplay.DataController.Filter.Root,
    cgvPrevDisplayFlagProtected, foEqual, '1', 'Protected Only');

  TcxCalcEditProperties(dbtBillMaterialT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(dbtBillMaterialL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(dbtBillMaterialP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(dbtBillMaterialM2M3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;

  SetReadOnly(dbeEmployeeId, True, COLOR_INACTIVE);
  SetReadOnly(dbeQtyBoM, True);
  SetReadOnly(dbeUnitMeasure, True);
  actInsertDt.Enabled := False;
  actEditDt.Enabled := False;
  actDeleteDt.Enabled := False;
  actCollapseAll.Enabled := False;
  actExpandAll.Enabled := False;

  dbtBillMaterialOrderNo.Visible := False;

  OpenIfClose(dmGlobal.qryEmployee, True);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevItemWIP, True);
  OpenIfClose(qryBillMaterialHd, True);

  chkShowRawMaterial.Checked := True;
end;

procedure TfmBillMaterial.qryBillMaterialHdBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('FlagUsed').AsString = '1' then
  begin
    MessageDlg(MSG_MODIFY_BOM_ERROR, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmBillMaterial.qryBillMaterialHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('FlagUsed').AsString = '1' then
  begin
    MessageDlg(MSG_MODIFY_BOM_ERROR, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmBillMaterial.qryBillMaterialHdBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  OpenIfClose(dmInventory.qryItem);
end;

procedure TfmBillMaterial.qryBillMaterialHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmBillMaterial.qryBillMaterialHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('BillMaterialDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('FlagProtected').AsString := '1';
  DataSet.FieldByName('QtyBOM').AsInteger := 1;
end;

procedure TfmBillMaterial.qryPrevBillMaterialAfterClose(DataSet: TDataSet);
begin
  inherited;

  actInsertDt.Enabled := False;
  actEditDt.Enabled := False;
  actDeleteDt.Enabled := False;
  actCollapseAll.Enabled := False;
  actExpandAll.Enabled := False;
end;

procedure TfmBillMaterial.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryBillMaterialHd, True);
  UpdateTreeList;
end;

procedure TfmBillMaterial.UpdateTreeList;
var
  Bil_ItemId, ItemId: integer;
  DoLocate: boolean;
begin
  DoLocate := False;
  Bil_ItemId := 0;
  ItemId := 0;
  if not qryPrevBillMaterial.IsEmpty then
  begin
    Bil_ItemId := qryPrevBillMaterial.FieldByName('Bil_ItemId').AsInteger;
    ItemId := qryPrevBillMaterial.FieldByName('ItemId').AsInteger;
    DoLocate := True;
  end;

  qryPrevBillMaterial.Close;
  qryPrevBillMaterial.Parameters[0].Value := qryBillMaterialHd.FieldByName('ItemId').AsVariant;
  qryPrevBillMaterial.Parameters[1].Value := qryBillMaterialHd.FieldByName('QtyBOM').AsVariant;
  OpenIfClose(qryPrevBillMaterial, True);

  if DoLocate then
    qryPrevBillMaterial.Locate('Bil_ItemId;ItemId', VarArrayOf([Bil_ItemId, ItemId]), [loCaseInsensitive]);

  dbtBillMaterial.FullExpand;

  actInsertDt.Enabled := True;
  actEditDt.Enabled := True;
  actDeleteDt.Enabled := True;
  actCollapseAll.Enabled := True;
  actExpandAll.Enabled := True;
end;

end.
