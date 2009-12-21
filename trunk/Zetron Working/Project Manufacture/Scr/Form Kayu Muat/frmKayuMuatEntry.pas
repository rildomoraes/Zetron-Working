unit frmKayuMuatEntry;

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
  dxSkinscxPCPainter, ADODB, dxmdaset, DBActns, cxCalc;

type
  TfmKayuMuatEntry = class(TForm)
    cgKayuMuatEntry: TcxGrid;
    cgvKayuMuatEntry: TcxGridDBTableView;
    cgvKayuMuatEntryGradeResultCode: TcxGridDBColumn;
    cgvKayuMuatEntryTallySheetGradeCode: TcxGridDBColumn;
    cgvKayuMuatEntryTallyTotalQtyInv: TcxGridDBColumn;
    cgvKayuMuatEntryTallyTotalVolumeInv: TcxGridDBColumn;
    cgvKayuMuatEntryTallyTotalQtyCut: TcxGridDBColumn;
    cgvKayuMuatEntryTallyTotalVolumeCut: TcxGridDBColumn;
    cgKayuMuatEntryLevel1: TcxGridLevel;
    cgvKayuMuatEntryCheckMuat: TcxGridDBColumn;
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
    cgvKayuMuatEntryGradeResultDate: TcxGridDBColumn;
    cgvKayuMuatEntryLokasi: TcxGridDBColumn;
    cgvKayuMuatEntryPurchaseOrderCode: TcxGridDBColumn;
    qryUpdateTallySheetGrade: TADOQuery;
    procedure actCancelExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  private
    FStatusKayuMuat: integer;
    FDatasetDt: TDataSet;

    procedure InitForm;
  public
    class function ExecuteForm(AStatusKayuMuat: integer; var ADatasetDt: TDataSet): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure, untConstanta;

procedure TfmKayuMuatEntry.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmKayuMuatEntry.actPostExecute(Sender: TObject);
begin
  inherited;

  if mdPrevTallySheetlGrade.State in [dsEdit] then
    mdPrevTallySheetlGrade.Post;

  mdPrevTallySheetlGrade.DisableControls;
  mdPrevTallySheetlGrade.First;
  while not mdPrevTallySheetlGrade.Eof do
  begin
    if mdPrevTallySheetlGrade.FieldByName('CheckMuat').AsInteger = 1 then
    begin
      FDatasetDt.Insert;
      FDatasetDt.FieldByName('TallySheetGradeId').AsVariant :=
        mdPrevTallySheetlGrade.FieldByName('TallySheetGradeId').AsVariant;
      FDatasetDt.Post;
      qryUpdateTallySheetGrade.Parameters[0].Value:=mdPrevTallySheetlGrade.FieldByName('TallySheetGradeId').AsVariant;
      qryUpdateTallySheetGrade.ExecSQL;
    end;

    mdPrevTallySheetlGrade.Next;
  end;

  ModalResult := mrOK;
end;

procedure TfmKayuMuatEntry.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

class function TfmKayuMuatEntry.ExecuteForm(AStatusKayuMuat: integer;
  var ADatasetDt: TDataSet): TModalResult;
var
  fmKayuMuatEntry: TfmKayuMuatEntry;
begin
  // NOT MDI
  fmKayuMuatEntry := TfmKayuMuatEntry.Create(Application);
  with fmKayuMuatEntry do
  begin
    try
      FStatusKayuMuat := AStatusKayuMuat;
      FDatasetDt := ADatasetDt;
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmKayuMuatEntry.InitForm;
var
  Filename: string;
begin
  // 'C:\Documents and Settings\User\Local Settings\Application Data\Zetron System\<project name>\'
  // Nama file diubah menjadi numeric, dan tidak ada proses reverse menjadi huruf kembali (tidak perlu)
  Filename :=
    dmGlobal.SettingLocal.Path_AppData + 'Setting' + IntToStr(FStatusKayuMuat) + ' ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';

  IvPositionStandard1.Filename := Filename;
  IvPositionDevExpress1.Filename := Filename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  dmGlobal.InitComponent(Self);

  if FStatusKayuMuat = 0 then
    cgvKayuMuatEntryTallySheetGradeCode.Caption := 'No Tally'
  else
    cgvKayuMuatEntryTallySheetGradeCode.Caption := 'No Log';

  SetReadOnly(cgvKayuMuatEntryGradeResultCode);
  SetReadOnly(cgvKayuMuatEntryTallySheetGradeCode);
  SetReadOnly(cgvKayuMuatEntryTallyTotalQtyInv);
  SetReadOnly(cgvKayuMuatEntryTallyTotalVolumeInv);
  SetReadOnly(cgvKayuMuatEntryTallyTotalQtyCut);
  SetReadOnly(cgvKayuMuatEntryTallyTotalVolumeCut);

  TcxCalcEditProperties(cgvKayuMuatEntryTallyTotalQtyInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKayuMuatEntryTallyTotalVolumeInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvKayuMuatEntryTallyTotalQtyCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvKayuMuatEntryTallyTotalVolumeCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  cgvKayuMuatEntry.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuatEntry.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuatEntry.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuatEntry.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuatEntry.DataController.Summary.DefaultGroupSummaryItems.Items[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuatEntry.DataController.Summary.DefaultGroupSummaryItems.Items[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuatEntry.DataController.Summary.DefaultGroupSummaryItems.Items[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuatEntry.DataController.Summary.DefaultGroupSummaryItems.Items[3].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;

  qryPrevTallySheetlGrade.Close;
  qryPrevTallySheetlGrade.Parameters[0].Value := FStatusKayuMuat;
  OpenIfClose(qryPrevTallySheetlGrade);
  mdPrevTallySheetlGrade.LoadFromDataSet(qryPrevTallySheetlGrade);
  OpenIfClose(mdPrevTallySheetlGrade);
end;

end.
