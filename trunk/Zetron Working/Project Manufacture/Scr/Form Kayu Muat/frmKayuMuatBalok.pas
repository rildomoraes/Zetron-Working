unit frmKayuMuatBalok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmKayuMuat, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  cxDropDownEdit, cxCalendar, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, ADODB, cxPC, cxCalc;

type
  TfmKayuMuatBalok = class(TfmKayuMuat)
    cgKayuMuat: TcxGrid;
    cgvKayuMuat: TcxGridDBTableView;
    cgvKayuMuatTallySheetGradeId2: TcxGridDBColumn;
    cgKayuMuatLevel1: TcxGridLevel;
    cgvKayuMuatTallySheetGradeId: TcxGridDBColumn;
    cgvKayuMuatKayuMuatId: TcxGridDBColumn;
    cgvKayuMuattotalvolumecut: TcxGridDBColumn;
    cgvKayuMuattotalvolumeinv: TcxGridDBColumn;
    cgvKayuMuattotalqtycut: TcxGridDBColumn;
    cgvKayuMuattotalqtyinv: TcxGridDBColumn;
    qryUpdateTallySheetGrade: TADOQuery;
    procedure qryKayuMuatDtBeforeDelete(DataSet: TDataSet);
    procedure qryKayuMuatDtAfterPost(DataSet: TDataSet);
    procedure dbeNoMuatPropertiesEditValueChanged(Sender: TObject);
    procedure cgvKayuMuatDblClick(Sender: TObject);
    procedure cgvKayuMuatNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qryKayuMuatHdNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    procedure KayuMuatEntry;
  public
    { Public declarations }
  end;

var
  fmKayuMuatBalok: TfmKayuMuatBalok;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal, frmKayuMuatEntry, frmUni, dtmInventory;

procedure TfmKayuMuatBalok.cgvKayuMuatDblClick(Sender: TObject);
begin
  inherited;

  KayuMuatEntry;
end;

procedure TfmKayuMuatBalok.cgvKayuMuatNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    KayuMuatEntry;
    ADone := True;
  end;
end;

procedure TfmKayuMuatBalok.dbeNoMuatPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if qryKayuMuatHd.Active then
  begin
    qryPrevTallySheetGrade.Close;
    qryPrevTallySheetGrade.Parameters[0].Value := '0'; // Hasil Grade Sawn Timber & Square
    qryPrevTallySheetGrade.Parameters[1].Value := qryKayuMuatHd.FieldByName('KayuMuatCode').AsString;
    OpenIfClose(qryPrevTallySheetGrade);
  end;
end;

procedure TfmKayuMuatBalok.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_KAYU_MUAT_BALOK);

  SetReadOnly(cgvKayuMuattotalvolumecut);
  SetReadOnly(cgvKayuMuattotalvolumeinv);
  SetReadOnly(cgvKayuMuattotalqtycut);
  SetReadOnly(cgvKayuMuattotalqtyinv);

  MonthYearValueChange(nil);
  OpenIfClose(qryKayuMuatDt);
  OpenIfClose(dminventory.qryWareHouse);

  cgvKayuMuat.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuat.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuat.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuat.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuat.DataController.Summary.DefaultGroupSummaryItems.Items[0].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuat.DataController.Summary.DefaultGroupSummaryItems.Items[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvKayuMuat.DataController.Summary.DefaultGroupSummaryItems.Items[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvKayuMuat.DataController.Summary.DefaultGroupSummaryItems.Items[3].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;

end;

procedure TfmKayuMuatBalok.KayuMuatEntry;
begin
  if qryKayuMuatHd.State in [dsInsert, dsEdit] then
    qryKayuMuatHd.Post;
  if qryKayuMuatDt.State in [dsInsert, dsEdit] then
    qryKayuMuatDt.Post;

  if qryKayuMuatHd.IsEmpty then
    Exit;

  TfmKayuMuatEntry.ExecuteForm(0, TDataset(qryKayuMuatDt));
end;

procedure TfmKayuMuatBalok.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryKayuMuatHd.State in [dsEdit, dsInsert]) or
    (qryKayuMuatDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryKayuMuatHd.Close;
  qryKayuMuatHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryKayuMuatHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryKayuMuatHd.Parameters[2].Value := '0'; // Kayu muat Sawn Timber & Square
  OpenIfClose(qryKayuMuatHd, True, True);
end;

procedure TfmKayuMuatBalok.qryKayuMuatDtAfterPost(DataSet: TDataSet);
begin
  inherited;  qryKayuMuatDt.Close;
  qryKayuMuatDt.Open;
end;

procedure TfmKayuMuatBalok.qryKayuMuatDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qryUpdateTallySheetGrade.Parameters[0].Value:=qryKayuMuatDt.FieldByName('TallySheetGradeId').AsVariant;
  qryUpdateTallySheetGrade.ExecSQL;

end;

procedure TfmKayuMuatBalok.qryKayuMuatHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('StatusApprove').AsInteger := 0;
  DataSet.FieldByName('StatusKayuMuat').AsString := '0'; // Kayu muat Sawn Timber & Square
end;

procedure TfmKayuMuatBalok.RefreshAll;
begin
  inherited;

  LockRefresh(qryKayuMuatHd, True);
  LockRefresh(qryKayuMuatDt);
end;

end.
