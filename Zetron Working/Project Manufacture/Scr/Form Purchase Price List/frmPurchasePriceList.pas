unit frmPurchasePriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDB, Menus, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCurrencyEdit, cxCalendar, cxImageComboBox, cxCalc, cxTextEdit,
  cxCheckListBox, cxDropDownEdit, cxMaskEdit, cxCheckBox, cxContainer, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, DBActns,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, cxProgressBar, ImgList, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, ADODB;

type
  TfmPurchasePriceList = class(TFormUniDB)
    dsPrice: TDataSource;
    cgPrice: TcxGrid;
    cgvPrice: TcxGridDBBandedTableView;
    cgvPriceeffectivedate: TcxGridDBBandedColumn;
    cgvPricestatusapprove: TcxGridDBBandedColumn;
    cgvPriceqty1: TcxGridDBBandedColumn;
    cgvPriceunitmeasure1: TcxGridDBBandedColumn;
    cgvPriceprice1: TcxGridDBBandedColumn;
    cgvPricenewprice1: TcxGridDBBandedColumn;
    cgvPriceqty2: TcxGridDBBandedColumn;
    cgvPriceunitmeasure2: TcxGridDBBandedColumn;
    cgvPriceprice2: TcxGridDBBandedColumn;
    cgvPricenewprice2: TcxGridDBBandedColumn;
    cgvPriceqty3: TcxGridDBBandedColumn;
    cgvPriceunitmeasure3: TcxGridDBBandedColumn;
    cgvPriceprice3: TcxGridDBBandedColumn;
    cgvPricenewprice3: TcxGridDBBandedColumn;
    cgvPriceqty4: TcxGridDBBandedColumn;
    cgvPriceunitmeasure4: TcxGridDBBandedColumn;
    cgvPriceprice4: TcxGridDBBandedColumn;
    cgvPricenewprice4: TcxGridDBBandedColumn;
    cgvPriceqty5: TcxGridDBBandedColumn;
    cgvPriceunitmeasure5: TcxGridDBBandedColumn;
    cgvPriceprice5: TcxGridDBBandedColumn;
    cgvPricenewprice5: TcxGridDBBandedColumn;
    cgvPricelastmodified: TcxGridDBBandedColumn;
    cgvPriceapprovedate: TcxGridDBBandedColumn;
    cgvPriceemployeeid: TcxGridDBBandedColumn;
    cgPriceLevel1: TcxGridLevel;
    Panel1: TPanel;
    chnaik: TcxCheckBox;
    chLevel: TcxImageComboBox;
    edtprosentase1: TcxCalcEdit;
    edtprosentase2: TcxCalcEdit;
    edtnominal1: TcxCalcEdit;
    edtnominal2: TcxCalcEdit;
    dtEfektif: TcxDateEdit;
    clSet: TcxCheckListBox;
    ciApprove: TcxImageComboBox;
    cxButton1: TcxButton;
    btnProses: TcxButton;
    DataSetCancel1: TDataSetCancel;
    ActProses: TAction;
    cgvPriceminqty1: TcxGridDBBandedColumn;
    cgvPriceminqty2: TcxGridDBBandedColumn;
    cgvPriceminqty3: TcxGridDBBandedColumn;
    cgvPriceminqty4: TcxGridDBBandedColumn;
    cgvPriceminqty5: TcxGridDBBandedColumn;
    cgvPricememo1: TcxGridDBBandedColumn;
    cgvPricememo2: TcxGridDBBandedColumn;
    cgvPricememo3: TcxGridDBBandedColumn;
    cgvPricememo4: TcxGridDBBandedColumn;
    cgvPricememo5: TcxGridDBBandedColumn;
    cbLevel: TcxCheckBox;
    Progress: TcxProgressBar;
    cxLabel1: TLabel;
    cxLabel2: TLabel;
    cxLabel3: TLabel;
    cxLabel4: TLabel;
    cxLabel5: TLabel;
    lblTglEfektif: TLabel;
    lblApprove: TLabel;
    cgvPriceflagupdown1: TcxGridDBBandedColumn;
    ImageList1: TImageList;
    cgvPriceflagupdown2: TcxGridDBBandedColumn;
    cgvPriceflagupdown3: TcxGridDBBandedColumn;
    cgvPriceflagupdown4: TcxGridDBBandedColumn;
    cgvPriceflagupdown5: TcxGridDBBandedColumn;
    cgvPriceitemid: TcxGridDBBandedColumn;
    cgvPriceitemcode: TcxGridDBBandedColumn;
    cgvPriceitemname: TcxGridDBBandedColumn;
    cgvPriceitemcategoryid: TcxGridDBBandedColumn;
    cgvPriceitemcategoryname: TcxGridDBBandedColumn;
    qryPrice: TADOQuery;
    qrySetNew: TADOQuery;
    procedure cbLevelPropertiesEditValueChanged(Sender: TObject);
    procedure chnaikPropertiesEditValueChanged(Sender: TObject);
    procedure ActProsesExecute(Sender: TObject);
    procedure dsPriceDataChange(Sender: TObject; Field: TField);
  protected
    procedure RefreshAll; override;
    procedure InitForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPurchasePriceList: TfmPurchasePriceList;

implementation

{$R *.dfm}

uses dtmglobal, dtminventory, untConstanta, untProcedure;

procedure TfmPurchasePriceList.ActProsesExecute(Sender: TObject);
var
  i, ALevel: integer;
  hasil, harga, pros1, pros2, nom1, nom2: real;
  itemcode, keterangan: string;
  AProses: boolean;
begin
  inherited;
  if chnaik.Checked then
  begin
    keterangan := 'Naik '
  end
  else
  begin
    keterangan := 'Turun '
  end;
  if edtprosentase1.EditValue > 0 then
  begin
    keterangan := keterangan + ' ' + CurrToStr(edtprosentase1.EditValue) + '%';
  end;
  if edtprosentase2.EditValue > 0 then
  begin
    keterangan := keterangan + '+' + CurrToStr(edtprosentase1.EditValue) + '%';
  end;
  if edtnominal1.EditValue > 0 then
  begin
    keterangan := keterangan + ' Rp.' + CurrToStr(edtnominal1.EditValue);
  end;
  if edtnominal2.EditValue > 0 then
  begin
    keterangan := keterangan + ' + Rp.' + CurrToStr(edtnominal2.EditValue);
  end;

  Progress.Properties.Min := 0;
  if cbLevel.Checked then
  begin
    Progress.Properties.Max := cgvPrice.Controller.SelectedRowCount * 5;
  end
  else
  begin
    Progress.Properties.Max := cgvPrice.Controller.SelectedRowCount
  end;
  Progress.Visible := true;
  Progress.Position := 0;
  for i := 1 to cgvPrice.Controller.SelectedRowCount do
  begin
    itemcode := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceitemid.Index];
    for ALevel := 1 to 5 do
    begin
      if cbLevel.Checked then
      begin
        AProses := True;
      end
      else
      begin
        if ALevel = chLevel.ItemIndex + 1 then
          AProses := True
        else
          AProses := False;
      end;
      if AProses then
      begin
        Progress.Position := Progress.Position + 1;
        Progress.Repaint;
        harga := 0;
        case ALevel of
          1: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice1.Index];
          2: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice2.Index];
          3: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice3.Index];
          4: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice4.Index];
          5: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice5.Index];
        end;
        pros1 := 100 + (chnaik.EditingValue * edtprosentase1.EditValue);
        pros2 := 100 + (chnaik.EditingValue * edtprosentase2.EditValue);
        nom1 := chnaik.EditingValue * edtnominal1.EditValue;
        nom2 := chnaik.EditingValue * edtnominal2.EditValue;
        hasil := ((harga * pros1 / 100) * pros2 / 100) + nom1 + nom2;
        if qryPrice.Locate('itemid', itemcode, []) then
        begin
          qryPrice.Edit;
          if clSet.Items[0].Checked then
          begin
            qryPrice.FieldByName('newprice' + inttostr(ALevel)).asfloat := hasil;
    //        qryPrice.FieldByName('memo' + inttostr(ALevel)).asstring := keterangan;
          end;
          if clSet.Items[1].Checked then
            qryPrice.FieldByName('effectivedate').asdatetime := dtEfektif.Date;
          if clSet.Items[2].Checked then
          begin
            qryPrice.FieldByName('statusapprove').asstring := ciApprove.EditValue;
          end;
          qryPrice.Post;
        end;
      end;
    end;
  end;
  Progress.Visible := false;
  cgvPrice.IsSynchronization;
  ShowMessage('Data Sudah Di Set !!!');
end;

procedure TfmPurchasePriceList.cbLevelPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cbLevel.Checked then
  begin
    cbLevel.Caption := 'Semua';
  end
  else
  begin
    cbLevel.Caption := 'Per Level';
  end;
end;

procedure TfmPurchasePriceList.chnaikPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if chnaik.Checked then
  begin
    chnaik.Caption := 'Naik';
  end
  else
  begin
    chnaik.Caption := 'Turun';
  end;
end;

procedure TfmPurchasePriceList.dsPriceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (Field = nil) then
    Exit;
  if (qryPrice.State in [dsInsert, dsEdit]) then
  begin
    if (CompareText(Field.FieldName, 'NewPrice1') = 0) or
      (CompareText(Field.FieldName, 'NewPrice2') = 0) or
      (CompareText(Field.FieldName, 'NewPrice3') = 0) or
      (CompareText(Field.FieldName, 'NewPrice4') = 0) or
      (CompareText(Field.FieldName, 'NewPrice5') = 0)
      then
    begin
      if (qryPrice.FieldByName('statusapprove').asstring = '0') then
        qryPrice.FieldByName('statusapprove').asstring := '1';
    end;
  end;

end;

procedure TfmPurchasePriceList.InitForm;
begin
  inherited;

  dmGlobal.InitComponent(Self);
  cgvPrice.OptionsView.GridLines := glVertical;
  cgvPrice.DataController.Options :=
    cgvPrice.DataController.Options - [dcoSortByDisplayText];

  qryPrice.Close;
  qrySetNew.ExecSQL;

  if self.Tag = 0 then
  begin
    cgvPricestatusapprove.Options.Editing := False;
    cgvPricestatusapprove.Options.Editing := False;
    cgvPriceapprovedate.Options.Editing := False;
    qryPrice.Parameters[0].Value := '0';
    qryPrice.Parameters[1].Value := '1';
//    if dmShare.OptionShowInactiveItem then
//    begin
//      qryPrice.Parameters[2].Value := '%';
//    end
//    else
//    begin
//      qryPrice.Parameters[2].Value := '0';
//    end;
    qryPrice.Parameters[2].Value := '%';
    clset.Items[0].Checked := true;
    clset.Items[1].Checked := false;
    clset.Items[2].Checked := true;
    clset.visible := false;
    lblTglEfektif.Visible := false;
    dtEfektif.Visible := false;
    lblApprove.Visible := false;
    ciApprove.Visible := false;
    ciApprove.ItemIndex := 1;
  end
  else
  begin
    lblTglEfektif.Visible := true;
    dtEfektif.Visible := true;
    lblApprove.Visible := true;
    ciApprove.Visible := true;
    clset.Items[0].Checked := false;
    clset.Items[1].Checked := true;
    clset.Items[2].Checked := true;
    clset.visible := true;
    qryPrice.Parameters[0].Value := '1';
    qryPrice.Parameters[1].Value := '2';
//    if dmShare.OptionShowInactiveItem then
//    begin
//      qryPrice.Parameters[2].Value := '%';
//    end
//    else
//    begin
//      qryPrice.Parameters[2].Value := '0';
//    end;
    qryPrice.Parameters[2].Value := '%';
    ciApprove.ItemIndex := 2;
  end;

  OpenIfClose(qryPrice, True);

//  if not dmShare.OptionStockIsDecimal then
//  begin
//    TcxCalcEditProperties(cgvPriceqty1.Properties).DisplayFormat := '#,##0;(#,##0)';
//    TcxCalcEditProperties(cgvPriceqty2.Properties).DisplayFormat := '#,##0;(#,##0)';
//    TcxCalcEditProperties(cgvPriceqty3.Properties).DisplayFormat := '#,##0;(#,##0)';
//    TcxCalcEditProperties(cgvPriceqty4.Properties).DisplayFormat := '#,##0;(#,##0)';
//    TcxCalcEditProperties(cgvPriceqty5.Properties).DisplayFormat := '#,##0;(#,##0)';
//  end;

  chLevel.ItemIndex := 0;
  dtEfektif.Date := Now;
  chnaikPropertiesEditValueChanged(self);
  cbLevelPropertiesEditValueChanged(self);
  Progress.Visible := false;

end;

procedure TfmPurchasePriceList.RefreshAll;
begin
  inherited;
  LockRefresh(qryPrice, true);
end;

end.

