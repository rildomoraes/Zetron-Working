unit frmBTBEntry;

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
  dxSkinscxPCPainter, ADODB, dxmdaset, DBActns, Math, cxCalc;

type
  TfmBTBEntry = class(TForm)
    cgHasilGradeEntry: TcxGrid;
    cgvHasilGradeEntry: TcxGridDBTableView;
    cgHasilGradeEntryLevel1: TcxGridLevel;
    mdPrevTallySheetlGrade: TdxMemData;
    dsPrevTallySheetlGrade: TDataSource;
    qryPrevTallySheetlGrade: TADOQuery;
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
    mdPrevTallySheetlGradeNoPalet: TStringField;
    dsmdPrevTallySheetlGrade: TDataSource;
    cgvHasilGradeEntryRecId: TcxGridDBColumn;
    cgvHasilGradeEntryNoPalet: TcxGridDBColumn;
    cgvHasilGradeEntryT: TcxGridDBColumn;
    cgvHasilGradeEntryL: TcxGridDBColumn;
    cgvHasilGradeEntryP: TcxGridDBColumn;
    cgvHasilGradeEntryM3: TcxGridDBColumn;
    qryTallySheetGrade: TADODataSet;
    mdPrevTallySheetlGradeQty: TIntegerField;
    cgvHasilGradeEntryQty: TcxGridDBColumn;
    Panel1: TPanel;
    dblcItemPO: TcxExtLookupComboBox;
    Label1: TLabel;
    qryPrevItemPO: TADODataSet;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevItemPO: TcxGridDBTableView;
    cgvPrevItemPOitemid: TcxGridDBColumn;
    cgvPrevItemPOitemname: TcxGridDBColumn;
    dsPrevItemPO: TDataSource;
    mdPrevTallySheetlGradeM3: TFloatField;
    mdPrevTallySheetlGradeDRata: TFloatField;
    cgvHasilGradeEntryD1: TcxGridDBColumn;
    cgvHasilGradeEntryD2: TcxGridDBColumn;
    cgvHasilGradeEntryDRata: TcxGridDBColumn;
    mdPrevTallySheetlGradeT: TFloatField;
    mdPrevTallySheetlGradeL: TFloatField;
    mdPrevTallySheetlGradeP: TFloatField;
    mdPrevTallySheetlGradeD1: TFloatField;
    mdPrevTallySheetlGradeD2: TFloatField;
    qryCekUkuran: TADODataSet;
    procedure mdPrevTallySheetlGradeBeforePost(DataSet: TDataSet);
    procedure dblcItemPOPropertiesEditValueChanged(Sender: TObject);
    procedure dsmdPrevTallySheetlGradeDataChange(Sender: TObject;
      Field: TField);
    procedure mdPrevTallySheetlGradeAfterPost(DataSet: TDataSet);
    procedure mdPrevTallySheetlGradeNewRecord(DataSet: TDataSet);
    procedure actCancelExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    function cekinterval(a,b:real):boolean;
  private
    FStatusHasilGrade: integer;
    FDatasetDt: TADODataSet;
    FPO : integer;
    FGradeResultId:integer;
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
    class function ExecuteForm(AStatusHasilGrade: integer;APO,AGradeResultId:integer; ACutting : integer ;
      var ADatasetDt: TADODataSet): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure, untConstanta;

procedure TfmBTBEntry.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmBTBEntry.actPostExecute(Sender: TObject);
var
  ATallySheetGradeId:integer;
  AGradeResultId:Integer;
begin
  inherited;

  mdPrevTallySheetlGrade.DisableControls;
  mdPrevTallySheetlGrade.First;
  AGradeResultId :=FGradeResultId;
  while not mdPrevTallySheetlGrade.Eof do
  begin
    // Cari di tallysheetgrade kalo tidak ada
    // buat tallysheet baru
    qryTallySheetGrade.close;
    qryTallySheetGrade.parameters[0].value:=mdPrevTallySheetlGrade.fieldbyname('nopalet').asstring;
    qryTallySheetGrade.parameters[1].value:=AGradeResultId;
    qryTallySheetGrade.open;

    if qryTallySheetGrade.eof then
    begin
       qryTallySheetGrade.insert;
       qryTallySheetGrade.FieldByName('TallySheetGradeCode').asstring:=mdPrevTallySheetlGrade.fieldbyname('nopalet').asstring;
       qryTallySheetGrade.FieldByName('GradeResultIdRef').asinteger :=AGradeResultId;
       if FCutting=0 then
       begin
         qryTallySheetGrade.FieldByName('TotalQtyCut').asinteger :=mdPrevTallySheetlGrade.fieldbyname('Qty').asinteger;
         qryTallySheetGrade.FieldByName('TotalVolumeCut').asfloat :=mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
       end
       else
       begin
         qryTallySheetGrade.FieldByName('TotalQtyInv').asinteger :=mdPrevTallySheetlGrade.fieldbyname('Qty').asinteger;
         qryTallySheetGrade.FieldByName('TotalVolumeInv').asfloat :=mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
       end;
       qryTallySheetGrade.Post;
    end
    else
    begin
       qryTallySheetGrade.edit;
       if FCutting=0 then
       begin
         qryTallySheetGrade.FieldByName('TotalQtyCut').asinteger :=qryTallySheetGrade.FieldByName('TotalQtyCut').asinteger+mdPrevTallySheetlGrade.fieldbyname('Qty').asinteger;
         qryTallySheetGrade.FieldByName('TotalVolumeCut').asfloat :=qryTallySheetGrade.FieldByName('TotalVolumeCut').asfloat+mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
       end
       else
       begin
         qryTallySheetGrade.FieldByName('TotalQtyInv').asinteger :=qryTallySheetGrade.FieldByName('TotalQtyInv').asinteger+mdPrevTallySheetlGrade.fieldbyname('Qty').asinteger;
         qryTallySheetGrade.FieldByName('TotalVolumeInv').asfloat :=qryTallySheetGrade.FieldByName('TotalVolumeInv').asfloat+mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
       end;
       qryTallySheetGrade.Post;
    end;
    ATallySheetGradeId:=qryTallySheetGrade.FieldByName('TallySheetGradeId').Asinteger;


    FDatasetDt.Insert;

    FDatasetDt.FieldByName('TallySheetGradeId').AsVariant :=ATallySheetGradeId;
    FDatasetDt.FieldByName('GradeResultId').asinteger :=AGradeResultId;
    FDatasetDt.FieldByName('Qty').asinteger := mdPrevTallySheetlGrade.fieldbyname('Qty').asinteger;
    FDatasetDt.FieldByName('Itemid').asinteger := dblcItemPO.EditValue;
    if FCutting=0 then
    begin
      FDatasetDt.FieldByName('TCut').asfloat := mdPrevTallySheetlGrade.fieldbyname('T').asfloat;
      FDatasetDt.FieldByName('LCut').asfloat := mdPrevTallySheetlGrade.fieldbyname('L').asfloat;
      FDatasetDt.FieldByName('PCut').asfloat := mdPrevTallySheetlGrade.fieldbyname('P').asfloat;
      FDatasetDt.FieldByName('M3Cut').asfloat := mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
    end
    else
    begin
      FDatasetDt.FieldByName('TInv').asfloat := mdPrevTallySheetlGrade.fieldbyname('T').asfloat;
      FDatasetDt.FieldByName('LInv').asfloat := mdPrevTallySheetlGrade.fieldbyname('L').asfloat;
      FDatasetDt.FieldByName('PInv').asfloat := mdPrevTallySheetlGrade.fieldbyname('P').asfloat;
      FDatasetDt.FieldByName('M3Inv').asfloat := mdPrevTallySheetlGrade.fieldbyname('M3').asfloat;
    end;
    FDatasetDt.Post;

    mdPrevTallySheetlGrade.Next;
  end;

  ModalResult := mrOK;
end;

procedure TfmBTBEntry.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

//  IvPositionStandard1.AutoLoad := False;
//  IvPositionDevExpress1.AutoLoad := False;

//  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

procedure TfmBTBEntry.dblcItemPOPropertiesEditValueChanged(
  Sender: TObject);
begin
  qryCekUkuran.Close;
  qryCekUkuran.Parameters[0].Value := FPO;
  qryCekUkuran.Parameters[1].Value := dblcItemPO.EditValue;
  OpenIfClose(qryCekUkuran);
end;

procedure TfmBTBEntry.dsmdPrevTallySheetlGradeDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;
  if FStatusHasilGrade=0 then
  begin
    if (CompareText(Field.FieldName, 'T') = 0) or
      (CompareText(Field.FieldName, 'L') = 0) or
      (CompareText(Field.FieldName, 'P') = 0) or
      (CompareText(Field.FieldName, 'Qty') = 0) then
    begin
      mdPrevTallySheetlGrade.FieldByName('m3').AsFloat:=roundto(mdPrevTallySheetlGrade.FieldByName('T').asfloat
      *mdPrevTallySheetlGrade.FieldByName('l').asfloat
      *mdPrevTallySheetlGrade.FieldByName('p').asfloat
      *mdPrevTallySheetlGrade.FieldByName('qty').asfloat/1000000,-4);
    end;
  end
  else
  begin
    if (CompareText(Field.FieldName, 'D1') = 0) or
      (CompareText(Field.FieldName, 'D2') = 0) then
    begin
      mdPrevTallySheetlGrade.FieldByName('DRata').AsFloat:=roundto(mdPrevTallySheetlGrade.FieldByName('D1').asfloat
      *mdPrevTallySheetlGrade.FieldByName('D2').asfloat/2,-4);
    end;
  end;
end;

class function TfmBTBEntry.ExecuteForm(AStatusHasilGrade: integer; APO,AGradeResultId:integer; ACutting : integer ;
  var ADatasetDt: TADODataSet): TModalResult;
var
  fmBTBEntry: TfmBTBEntry;
begin
  // NOT MDI
  fmBTBEntry := TfmBTBEntry.Create(Application);
  with fmBTBEntry do
  begin
    try
      FCutting:=ACutting; // Cutting & Invoice
      FStatusHasilGrade := AStatusHasilGrade;    // Log & Sawn TImber
      FDatasetDt := ADatasetDt;
      FPO:=APO; // No PO
      FGradeResultId:=AGradeResultId; //No Hasil Grade
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmBTBEntry.InitForm;
begin
  dmGlobal.InitComponent(self);
  qryPrevTallySheetlGrade.Close;
  qryPrevTallySheetlGrade.Parameters[0].Value := FStatusHasilGrade;
  OpenIfClose(qryPrevTallySheetlGrade);
  OpenIfClose(mdPrevTallySheetlGrade);
  TcxCalcEditProperties(cgvHasilGradeEntryT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeEntryL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeEntryP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeEntryD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeEntryD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeEntryDRata.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvHasilGradeEntryQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvHasilGradeEntryM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvHasilGradeEntry.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvHasilGradeEntry.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvHasilGradeEntry.DataController.Summary.DefaultGroupSummaryItems.Items[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvHasilGradeEntry.DataController.Summary.DefaultGroupSummaryItems.Items[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;

  cgvHasilGradeEntryT.Visible:=true;
  cgvHasilGradeEntryL.Visible:=true;
  cgvHasilGradeEntryP.Visible:=true;
  cgvHasilGradeEntryQty.Visible:=true;
  cgvHasilGradeEntryM3.Visible:=true;
  cgvHasilGradeEntryD1.Visible:=true;
  cgvHasilGradeEntryD2.Visible:=true;
  cgvHasilGradeEntryDRata.Visible:=true;

  if FStatusHasilGrade=0 then // Balok
  begin
    cgvHasilGradeEntryD1.Visible:=false;
    cgvHasilGradeEntryD2.Visible:=false;
    cgvHasilGradeEntryDRata.Visible:=false;
    Self.Caption:='Hasil Grade Entry Balok ';
    if fcutting=0 then
       Self.Caption:=Self.Caption+' Cutting'
    else
       Self.Caption:=Self.Caption+' Invoice'
  end
  else // Sawn Timber
  begin
    cgvHasilGradeEntryT.Visible:=false;
    cgvHasilGradeEntryL.Visible:=false;
    Self.Caption:='Hasil Grade Entry Log ';
    if fcutting=0 then
       Self.Caption:=Self.Caption+' Cutting'
    else
       Self.Caption:=Self.Caption+' Invoice'
  end;
  qryPrevItemPO.Close;
  qryPrevItemPO.Parameters[0].Value := FPO;
  OpenIfClose(qryPrevItemPO);
end;

procedure TfmBTBEntry.mdPrevTallySheetlGradeAfterPost(DataSet: TDataSet);
begin
  if FStatusHasilGrade=0 then
  begin
    FNoPalet:=DataSet.FieldByName('nopalet').asstring;
    FT:=DataSet.FieldByName('T').asfloat;
    FL:=DataSet.FieldByName('L').asfloat;
    FP:=DataSet.FieldByName('P').asfloat;
    FQty:=DataSet.FieldByName('QTY').asinteger;
    FM3:=DataSet.FieldByName('M3').asfloat;
    mdPrevTallySheetlGrade.Insert;
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
    mdPrevTallySheetlGrade.Insert;
  end;
end;

function TfmBTBEntry.cekinterval(a,b:real):boolean;
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

procedure TfmBTBEntry.mdPrevTallySheetlGradeBeforePost(
  DataSet: TDataSet);
var
  flagsesuai:boolean;
begin
  if fcutting=0 then
  begin
    if mdPrevTallySheetlGrade.FieldByName('T').AsFloat<>qryCekUkuran.FieldByName('TCut').AsFloat then
    begin
      if MessageDlg('Ukuran T Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    if mdPrevTallySheetlGrade.FieldByName('L').AsFloat<>qryCekUkuran.FieldByName('LCut').AsFloat then
    begin
      if MessageDlg('Ukuran L Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    if mdPrevTallySheetlGrade.FieldByName('P').AsFloat<>qryCekUkuran.FieldByName('PCut').AsFloat then
    begin
      if MessageDlg('Ukuran P Cut tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end
  end
  else
  begin
    if mdPrevTallySheetlGrade.FieldByName('T').AsFloat<>qryCekUkuran.FieldByName('TInv').AsFloat then
    begin
      if MessageDlg('Ukuran T Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         DataSet.Cancel;
      end;
    end;
    flagsesuai:=cekinterval(mdPrevTallySheetlGrade.FieldByName('L').AsFloat-qryCekUkuran.FieldByName('LInv').AsFloat,qryCekUkuran.FieldByName('LInvInterval').AsFloat);
    if not(flagsesuai) then
    begin
      if MessageDlg('Ukuran L Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         Dataset.Cancel;
      end;
    end;
    flagsesuai:=cekinterval(mdPrevTallySheetlGrade.FieldByName('P').AsFloat-qryCekUkuran.FieldByName('PInv').AsFloat,qryCekUkuran.FieldByName('PInvInterval').AsFloat);
    if not(flagsesuai) then
    begin
      if MessageDlg('Ukuran P Inv tidak sesuai PO !!! Lanjutkan !!!', mtInformation, [mbYes, mbNo], 0) = mrNo then
      begin
         Dataset.Cancel;
      end;
    end;
  end
end;

procedure TfmBTBEntry.mdPrevTallySheetlGradeNewRecord(DataSet: TDataSet);
begin
  if FStatusHasilGrade=0 then
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
end;

end.
