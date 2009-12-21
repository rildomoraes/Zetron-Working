unit frmPenerimaanBarangKayuEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //
  Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, ADODB, dxmdaset, DBActns, Math, cxCalc, cxCalendar;

type
  TfmPenerimaanBarangKayuEntry = class(TForm)
    cgPenerimaanBarangKayuEntry: TcxGrid;
    cgvPenerimaanBarangKayuEntry: TcxGridDBTableView;
    cgPenerimaanBarangKayuEntryLevel1: TcxGridLevel;
    mdPrevTallySheet: TdxMemData;
    dsPrevTallySheetlGrade: TDataSource;
    qryPrevTallySheet: TADOQuery;
    ActionList1: TActionList;
    actReset: TAction;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    pnlMenu: TPanel;
    bvlSpacer1: TBevel;
    btnCancel: TcxButton;
    btnReset: TcxButton;
    btnPost: TcxButton;
    actPost: TAction;
    actCancel: TAction;
    mdPrevTallySheetNoPalet: TStringField;
    dsmdPrevTallySheetlGrade: TDataSource;
    cgvPenerimaanBarangKayuEntryRecId: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryNoPalet: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryT: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryL: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryP: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryM3: TcxGridDBColumn;
    mdPrevTallySheetQty: TIntegerField;
    cgvPenerimaanBarangKayuEntryQty: TcxGridDBColumn;
    Panel1: TPanel;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevItemPO: TcxGridDBTableView;
    cgvPrevItemPOitemid: TcxGridDBColumn;
    cgvPrevItemPOitemname: TcxGridDBColumn;
    dsPrevItemPO: TDataSource;
    mdPrevTallySheetM3: TFloatField;
    mdPrevTallySheetDRata: TFloatField;
    cgvPenerimaanBarangKayuEntryD1: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryD2: TcxGridDBColumn;
    cgvPenerimaanBarangKayuEntryDRata: TcxGridDBColumn;
    mdPrevTallySheetT: TFloatField;
    mdPrevTallySheetL: TFloatField;
    mdPrevTallySheetP: TFloatField;
    mdPrevTallySheetD1: TFloatField;
    mdPrevTallySheetD2: TFloatField;
    Label2: TLabel;
    dtTglTally: TcxDateEdit;
    Label3: TLabel;
    dtTallyMan: TcxExtLookupComboBox;
    qryTallySheet: TADOQuery;
    qryPrevItemPeriode: TADOQuery;
    InsqryTallySheetHistory: TADOQuery;
    InsqryTallySheetDt: TADOQuery;
    updqryTallySheet: TADOQuery;
    mdPrevTallySheetNo: TIntegerField;
    procedure mdPrevTallySheetBeforePost(DataSet: TDataSet);
    procedure dsmdPrevTallySheetlGradeDataChange(Sender: TObject;
      Field: TField);
    procedure mdPrevTallySheetAfterPost(DataSet: TDataSet);
    procedure mdPrevTallySheetNewRecord(DataSet: TDataSet);
    procedure actCancelExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    function cekinterval(a,b:real):boolean;
  private
    FReceivingRecordId:integer;
    FStatusPenerimaanBarang:byte;
    FItemId:integer;
    FWareHouseId:integer;
    FNoPalet: string;
    FT:Real;
    FL:Real;
    FP:Real;
    FD1:Real;
    FD2:Real;
    FDRata: Real;
    FM3: Real;
    FQty: integer;
    FCutting: integer;
    procedure InitForm;
  public
    class function ExecuteForm(AWareHouseId:integer;AStatusPenerimaanBarang:byte;AReceivingRecordId:integer;AItemId:integer): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmInventory, untProcedure, untConstanta, frmHasilGrade;

procedure TfmPenerimaanBarangKayuEntry.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmPenerimaanBarangKayuEntry.actPostExecute(Sender: TObject);
var
  ATallySheetId:integer;
  AReceivingRecordId:Integer;
begin
  inherited;

  mdPrevTallySheet.DisableControls;
  mdPrevTallySheet.First;
  AReceivingRecordId :=FReceivingRecordId;
  while not mdPrevTallySheet.Eof do
  begin
    // Cari di TallySheet kalo tidak ada
    // buat tallysheet baru
    qryTallySheet.close;
    qryTallySheet.parameters[0].value:=mdPrevTallySheet.fieldbyname('nopalet').asstring;
    qryTallySheet.open;

    if qryTallySheet.eof then
    begin
       qryTallySheet.insert;
       qryTallySheet.FieldByName('TallySheetCode').asstring:=mdPrevTallySheet.fieldbyname('nopalet').asstring;
       qryTallySheet.FieldByName('TallySheetDate').asdatetime:=dtTglTally.Date;
       qryTallySheet.FieldByName('Itemid').asinteger := FItemId;
       qryTallySheet.FieldByName('TallymanId').asinteger:=dminventory.qryTallyMan.fieldbyname('tallymanid').asinteger;
       qryTallySheet.FieldByName('TotalQty').asinteger :=mdPrevTallySheet.fieldbyname('Qty').asinteger;
       qryTallySheet.FieldByName('TotalVolume').asfloat :=mdPrevTallySheet.fieldbyname('M3').asfloat;
       qryTallySheet.Post;

       InsqryTallySheetHistory.parameters[0].value:=qryTallySheet.FieldByName('TallySheetId').Asinteger;
       InsqryTallySheetHistory.parameters[1].value:=FWarehouseId;
       InsqryTallySheetHistory.parameters[2].value:=dtTglTally.Date;
       InsqryTallySheetHistory.parameters[3].value:=FReceivingRecordId;
       InsqryTallySheetHistory.parameters[4].value:=0;
       InsqryTallySheetHistory.execsql;
    end
    else
    begin
       qryTallySheet.edit;
       qryTallySheet.FieldByName('TotalQty').asinteger :=qryTallySheet.FieldByName('TotalQty').asinteger+mdPrevTallySheet.fieldbyname('Qty').asinteger;
       qryTallySheet.FieldByName('TotalVolume').asfloat :=qryTallySheet.FieldByName('TotalVolume').asfloat+mdPrevTallySheet.fieldbyname('M3').asfloat;
       qryTallySheet.Post;
    end;
    ATallySheetId:=qryTallySheet.FieldByName('TallySheetId').Asinteger;

    // masukkan data ke receving record detail Tally;

    InsqryTallySheetDt.parameters[0].value :=ATallySheetId;
    InsqryTallySheetDt.parameters[1].value  := mdPrevTallySheet.fieldbyname('no').asinteger;
    InsqryTallySheetDt.parameters[2].value  := mdPrevTallySheet.fieldbyname('T').asfloat;
    InsqryTallySheetDt.parameters[3].value  := mdPrevTallySheet.fieldbyname('L').asfloat;
    InsqryTallySheetDt.parameters[4].value  := mdPrevTallySheet.fieldbyname('P').asfloat;
    InsqryTallySheetDt.parameters[5].value  := mdPrevTallySheet.fieldbyname('Qty').asinteger;
    InsqryTallySheetDt.parameters[6].value  := mdPrevTallySheet.fieldbyname('M3').asfloat;
    InsqryTallySheetDt.parameters[7].value  := 0;
    InsqryTallySheetDt.execsql;

    // ubah data detail tally sesuai dengan data tally yang dimasukkan;

    updqrytallysheet.parameters[0].value :=ATallySheetId;
    updqrytallysheet.execsql;
    mdPrevTallySheet.Next;
  end;

  ModalResult := mrOK;
end;

procedure TfmPenerimaanBarangKayuEntry.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

procedure TfmPenerimaanBarangKayuEntry.dsmdPrevTallySheetlGradeDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;
  if FStatusPenerimaanBarang=0 then
  begin
    if (CompareText(Field.FieldName, 'T') = 0) or
      (CompareText(Field.FieldName, 'L') = 0) or
      (CompareText(Field.FieldName, 'P') = 0) or
      (CompareText(Field.FieldName, 'Qty') = 0) then
    begin
      mdPrevTallySheet.FieldByName('m3').AsFloat:=roundto(mdPrevTallySheet.FieldByName('T').asfloat
      *mdPrevTallySheet.FieldByName('l').asfloat
      *mdPrevTallySheet.FieldByName('p').asfloat
      *mdPrevTallySheet.FieldByName('qty').asfloat/1000000,-4);
    end;
  end
  else
  begin
    if (CompareText(Field.FieldName, 'D1') = 0) or
      (CompareText(Field.FieldName, 'D2') = 0) then
    begin
      mdPrevTallySheet.FieldByName('DRata').AsFloat:=roundto(mdPrevTallySheet.FieldByName('D1').asfloat
      *mdPrevTallySheet.FieldByName('D2').asfloat/2,-4);
    end;
  end;
end;

class function TfmPenerimaanBarangKayuEntry.ExecuteForm(AWareHouseId:integer;AStatusPenerimaanBarang:byte;AReceivingRecordId:integer;AItemId:integer): TModalResult;
var
  fmPenerimaanBarangKayuEntry: TfmPenerimaanBarangKayuEntry;
begin
  // NOT MDI
  fmPenerimaanBarangKayuEntry := TfmPenerimaanBarangKayuEntry.Create(Application);
  with fmPenerimaanBarangKayuEntry do
  begin
    try
      FReceivingRecordId:=AReceivingRecordId;
      FItemId:=AItemId;
      FWareHouseId:=AWareHouseId;
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmPenerimaanBarangKayuEntry.InitForm;
begin
  dmGlobal.InitComponent(self);
  qryPrevTallySheet.Close;
  qryPrevTallySheet.Parameters[0].Value := FStatusPenerimaanBarang;
  OpenIfClose(qryPrevTallySheet);
  OpenIfClose(mdPrevTallySheet);
  OpenIfClose(dminventory.qryTallyMan);

  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryDRata.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPenerimaanBarangKayuEntryM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPenerimaanBarangKayuEntry.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPenerimaanBarangKayuEntry.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvPenerimaanBarangKayuEntry.DataController.Summary.DefaultGroupSummaryItems.Items[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPenerimaanBarangKayuEntry.DataController.Summary.DefaultGroupSummaryItems.Items[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;

  cgvPenerimaanBarangKayuEntryT.Visible:=true;
  cgvPenerimaanBarangKayuEntryL.Visible:=true;
  cgvPenerimaanBarangKayuEntryP.Visible:=true;
  cgvPenerimaanBarangKayuEntryQty.Visible:=true;
  cgvPenerimaanBarangKayuEntryM3.Visible:=true;
  cgvPenerimaanBarangKayuEntryD1.Visible:=true;
  cgvPenerimaanBarangKayuEntryD2.Visible:=true;
  cgvPenerimaanBarangKayuEntryDRata.Visible:=true;

  if FStatusPenerimaanBarang=0 then // Balok
  begin
    cgvPenerimaanBarangKayuEntryD1.Visible:=false;
    cgvPenerimaanBarangKayuEntryD2.Visible:=false;
    cgvPenerimaanBarangKayuEntryDRata.Visible:=false;
    Self.Caption:='Penerimaan Kayu Balok ';
  end
  else // Sawn Timber
  begin
    cgvPenerimaanBarangKayuEntryT.Visible:=false;
    cgvPenerimaanBarangKayuEntryL.Visible:=false;
    Self.Caption:='Penerimaan Kayu Log ';
  end;
end;

procedure TfmPenerimaanBarangKayuEntry.mdPrevTallySheetAfterPost(DataSet: TDataSet);
begin
  if FStatusPenerimaanBarang=0 then
  begin
    FNoPalet:=DataSet.FieldByName('nopalet').asstring;
    FT:=DataSet.FieldByName('T').asfloat;
    FL:=DataSet.FieldByName('L').asfloat;
    FP:=DataSet.FieldByName('P').asfloat;
    FQty:=DataSet.FieldByName('QTY').asinteger;
    FM3:=DataSet.FieldByName('M3').asfloat;
    mdPrevTallySheet.Insert;
  end
  else
  begin
    FNoPalet:=DataSet.FieldByName('nopalet').asstring;
    FD1:=DataSet.FieldByName('D1').asfloat;
    FD2:=DataSet.FieldByName('D2').asfloat;
    FDRata:=DataSet.FieldByName('DRata').asfloat;
    FP:=DataSet.FieldByName('P').asfloat;
    FQty:=DataSet.FieldByName('QTY').asinteger;
    FM3:=DataSet.FieldByName('M3').asfloat;
    mdPrevTallySheet.Insert;
  end;
end;

function TfmPenerimaanBarangKayuEntry.cekinterval(a,b:real):boolean;
var
 c:real;
begin
 if b=0 then
 begin
   if a>0 then
      cekinterval:=false
   else
      cekinterval:=true;
 end
 else
 begin
   if frac(a/b)>0 then
      cekinterval:=false
   else
      cekinterval:=true;
 end;
end;

procedure TfmPenerimaanBarangKayuEntry.mdPrevTallySheetBeforePost(
  DataSet: TDataSet);
var
  flagsesuai:boolean;
begin
{  if fcutting=0 then
  begin
    if mdPrevTallySheet.FieldByName('T').AsFloat<>qryCekUkuran.FieldByName('TCut').AsFloat then
    begin
      if MessageDlg('Ukuran T Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    if mdPrevTallySheet.FieldByName('L').AsFloat<>qryCekUkuran.FieldByName('LCut').AsFloat then
    begin
      if MessageDlg('Ukuran L Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    if mdPrevTallySheet.FieldByName('P').AsFloat<>qryCekUkuran.FieldByName('PCut').AsFloat then
    begin
      if MessageDlg('Ukuran P Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end
  end
  else
  begin
    if mdPrevTallySheet.FieldByName('T').AsFloat<>qryCekUkuran.FieldByName('TInv').AsFloat then
    begin
      if MessageDlg('Ukuran T Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    flagsesuai:=cekinterval(mdPrevTallySheet.FieldByName('L').AsFloat-qryCekUkuran.FieldByName('LInv').AsFloat,qryCekUkuran.FieldByName('LInvInterval').AsFloat);
    if not(flagsesuai) then
    begin
      if MessageDlg('Ukuran L Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         Dataset.Cancel;
      end;
    end;
    flagsesuai:=cekinterval(mdPrevTallySheet.FieldByName('P').AsFloat-qryCekUkuran.FieldByName('PInv').AsFloat,qryCekUkuran.FieldByName('PInvInterval').AsFloat);
    if not(flagsesuai) then
    begin
      if MessageDlg('Ukuran P Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         Dataset.Cancel;
      end;
    end;
  end}
end;

procedure TfmPenerimaanBarangKayuEntry.mdPrevTallySheetNewRecord(DataSet: TDataSet);
begin
  if FStatusPenerimaanBarang=0 then
  begin
    if dataset.Eof then
    begin
      DataSet.FieldByName('nopalet').asstring:=FNoPalet;
      DataSet.FieldByName('T').asfloat:=1;
      DataSet.FieldByName('L').asfloat:=1;
      DataSet.FieldByName('P').asfloat:=1;
      DataSet.FieldByName('QTY').asfloat:=1;
      DataSet.FieldByName('M3').asfloat:=1;
    end
    else
    begin
      DataSet.FieldByName('nopalet').asstring:=FNoPalet;
      DataSet.FieldByName('T').asfloat:=FT;
      DataSet.FieldByName('L').asfloat:=FL;
      DataSet.FieldByName('P').asfloat:=FP;
      DataSet.FieldByName('QTY').asinteger:=FQty;
      DataSet.FieldByName('M3').asfloat:=FM3;
    end;
  end
  else
  begin
    if dataset.Eof then
    begin
      DataSet.FieldByName('nopalet').asstring:=FNoPalet;
      DataSet.FieldByName('D1').asfloat:=1;
      DataSet.FieldByName('D2').asfloat:=1;
      DataSet.FieldByName('DRata').asfloat:=1;
      DataSet.FieldByName('P').asfloat:=1;
      DataSet.FieldByName('QTY').asinteger:=1;
      DataSet.FieldByName('M3').asfloat:=1;
    end
    else
    begin
      DataSet.FieldByName('nopalet').asstring:=FNoPalet;
      DataSet.FieldByName('D1').asfloat:=FD1;
      DataSet.FieldByName('D2').asfloat:=FD2;
      DataSet.FieldByName('DRata').asfloat:=FDRata;
      DataSet.FieldByName('P').asfloat:=FP;
      DataSet.FieldByName('QTY').asinteger:=FQty;
      DataSet.FieldByName('M3').asfloat:=FM3;
    end;
  end;
  DataSet.FieldByName('no').asfloat:=DataSet.recordcount+1;
end;

end.
