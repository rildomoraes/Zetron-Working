unit frmPriceChanged;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDB, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalendar, cxImageComboBox, cxCalc, cxCurrencyEdit, DBActns, cxCheckListBox,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxProgressBar, StdCtrls, untIvPositionDevExpress, MemDS,
  DBAccess, Uni, ImgList, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPriceChanged = class(TFormUniDB)
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
    cbLevel: TcxCheckBox;
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
    cgvPriceitemidexternal: TcxGridDBBandedColumn;
    cgvPriceitemname: TcxGridDBBandedColumn;
    cgvPriceitemcategoryid: TcxGridDBBandedColumn;
    qryPrice: TUniQuery;
    qrySetNew: TUniQuery;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    bvlSpacer12: TBevel;
    cgvPriceprice6: TcxGridDBBandedColumn;
    cgvPriceprice7: TcxGridDBBandedColumn;
    cgvPriceqty6: TcxGridDBBandedColumn;
    cgvPriceqty7: TcxGridDBBandedColumn;
    cgvPriceminqty6: TcxGridDBBandedColumn;
    cgvPriceminqty7: TcxGridDBBandedColumn;
    cgvPriceunitmeasure6: TcxGridDBBandedColumn;
    cgvPriceunitmeasure7: TcxGridDBBandedColumn;
    cgvPricenewprice6: TcxGridDBBandedColumn;
    cgvPricenewprice7: TcxGridDBBandedColumn;
    cgvPriceflagupdown6: TcxGridDBBandedColumn;
    cgvPriceflagupdown7: TcxGridDBBandedColumn;
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
  fmPriceChanged: TfmPriceChanged;

implementation

{$R *.dfm}

uses dtmglobal, dtmshare, dtminventory, untConstanta, untConstantaPos, untProcedure;

procedure TfmPriceChanged.ActProsesExecute(Sender: TObject);
var
  i, ALevel: integer;
  hasil, harga, pros1, pros2, nom1, nom2: real;
  itemidexternal, keterangan: string;
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

  pbProcess.Properties.Min := 0;
  if cbLevel.Checked then
  begin
    pbProcess.Properties.Max := cgvPrice.Controller.SelectedRowCount * 5;
  end
  else
  begin
    pbProcess.Properties.Max := cgvPrice.Controller.SelectedRowCount
  end;
  pbProcess.Position := 0;
  for i := 1 to cgvPrice.Controller.SelectedRowCount do
  begin
    itemidexternal := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceitemid.Index];
    for ALevel := 1 to 7 do
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
        pbProcess.Position := pbProcess.Position + 1;
        pbProcess.Repaint;
        harga := 0;
        case ALevel of
          1: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice1.Index];
          2: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice2.Index];
          3: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice3.Index];
          4: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice4.Index];
          5: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice5.Index];
          6: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice6.Index];
          7: harga := cgvPrice.Controller.SelectedRows[i - 1].Values[cgvPriceprice7.Index];
        end;
        pros1 := 100 + (chnaik.EditingValue * edtprosentase1.EditValue);
        pros2 := 100 + (chnaik.EditingValue * edtprosentase2.EditValue);
        nom1 := chnaik.EditingValue * edtnominal1.EditValue;
        nom2 := chnaik.EditingValue * edtnominal2.EditValue;
        hasil := ((harga * pros1 / 100) * pros2 / 100) + nom1 + nom2;
        if qryPrice.Locate('itemid', itemidexternal, []) then
        begin
          qryPrice.Edit;
          if clSet.Items[0].Checked then
          begin
            qryPrice.FieldByName('newprice' + inttostr(ALevel)).asfloat := hasil;
            qryPrice.FieldByName('memo' + inttostr(ALevel)).asstring := keterangan;
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
  cgvPrice.IsSynchronization;
  ShowMessage('Data Sudah Di Set !!!');
end;

procedure TfmPriceChanged.cbLevelPropertiesEditValueChanged(Sender: TObject);
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

procedure TfmPriceChanged.chnaikPropertiesEditValueChanged(Sender: TObject);
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

procedure TfmPriceChanged.dsPriceDataChange(Sender: TObject; Field: TField);
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

procedure TfmPriceChanged.InitForm;
begin
  inherited;

  dmGlobal.InitComponent(Self);
  cgvPrice.OptionsView.GridLines := glVertical;
  cgvPrice.DataController.Options :=
    cgvPrice.DataController.Options - [dcoSortByDisplayText];

  qryPrice.Close;
  qrySetNew.Execute;

  if FParamValuesArray[0] = 0 then
  begin
    cgvPricestatusapprove.Options.Editing := False;
    cgvPricestatusapprove.Options.Editing := False;
    cgvPriceapprovedate.Options.Editing := False;
    qryPrice.Params[0].Value := '0';
    qryPrice.Params[1].Value := '1';
    if dmShare.OptionShowInactiveItem then
    begin
      qryPrice.Params[2].Value := '%';
    end
    else
    begin
      qryPrice.Params[2].Value := '0';
    end;
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
    Self.Caption := Self.Caption + ' (Approve)';
    lblTglEfektif.Visible := true;
    dtEfektif.Visible := true;
    lblApprove.Visible := true;
    ciApprove.Visible := true;
    clset.Items[0].Checked := false;
    clset.Items[1].Checked := true;
    clset.Items[2].Checked := true;
    clset.visible := true;
    qryPrice.Params[0].Value := '1';
    qryPrice.Params[1].Value := '2';
    if dmShare.OptionShowInactiveItem then
    begin
      qryPrice.Params[2].Value := '%';
    end
    else
    begin
      qryPrice.Params[2].Value := '0';
    end;
    ciApprove.ItemIndex := 2;
  end;

  OpenIfClose(qryPrice, True);

  TcxCalcEditProperties(cgvPriceqty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPriceqty2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPriceqty3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPriceqty4.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPriceqty5.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  chLevel.ItemIndex := 0;
  dtEfektif.Date := Now;
  chnaikPropertiesEditValueChanged(self);
  cbLevelPropertiesEditValueChanged(self);
end;

procedure TfmPriceChanged.RefreshAll;
begin
  inherited;
  LockRefresh(qryPrice, true);
end;

end.

