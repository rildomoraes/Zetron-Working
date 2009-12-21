unit frmKayuMuatLog;

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
  TfmKayuMuatLog = class(TfmKayuMuat)
    cgKayuMuat: TcxGrid;
    cgvKayuMuat: TcxGridDBTableView;
    cgvKayuMuatTallySheetGradeId: TcxGridDBColumn;
    cgvKayuMuatTallySheetGradeId2: TcxGridDBColumn;
    cgvKayuMuatTallySheetGradeId3: TcxGridDBColumn;
    cgKayuMuatLevel1: TcxGridLevel;
    procedure dbeNoMuatPropertiesEditValueChanged(Sender: TObject);
    procedure cgvKayuMuatNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cgvKayuMuatDblClick(Sender: TObject);
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
  fmKayuMuatLog: TfmKayuMuatLog;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal, frmKayuMuatEntry, frmUni;

procedure TfmKayuMuatLog.cgvKayuMuatDblClick(Sender: TObject);
begin
  inherited;

  KayuMuatEntry;
end;

procedure TfmKayuMuatLog.cgvKayuMuatNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    KayuMuatEntry;
    ADone := True;
  end;
end;

procedure TfmKayuMuatLog.dbeNoMuatPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if qryKayuMuatHd.Active then
  begin
    qryPrevTallySheetGrade.Close;
    qryPrevTallySheetGrade.Parameters[0].Value := '1'; // Hasil Grade Log
    qryPrevTallySheetGrade.Parameters[1].Value := qryKayuMuatHd.FieldByName('KayuMuatCode').AsString;
    OpenIfClose(qryPrevTallySheetGrade);
  end;
end;

procedure TfmKayuMuatLog.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_KAYU_MUAT_BALOK);

  SetReadOnly(cgvKayuMuatTallySheetGradeId2);
  SetReadOnly(cgvKayuMuatTallySheetGradeId3);

  MonthYearValueChange(nil);
  OpenIfClose(qryKayuMuatDt);
end;

procedure TfmKayuMuatLog.KayuMuatEntry;
begin
  if qryKayuMuatHd.State in [dsInsert, dsEdit] then
    qryKayuMuatHd.Post;
  if qryKayuMuatDt.State in [dsInsert, dsEdit] then
    qryKayuMuatDt.Post;

  if qryKayuMuatHd.IsEmpty then
    Exit;
             // StatusHasilGrade, Dataset KayuMuatDt
  TfmKayuMuatEntry.ExecuteForm(1, TDataset(qryKayuMuatDt));
end;

procedure TfmKayuMuatLog.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryKayuMuatHd.State in [dsEdit, dsInsert]) or
    (qryKayuMuatDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryKayuMuatHd.Close;
  qryKayuMuatHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryKayuMuatHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryKayuMuatHd.Parameters[2].Value := '1'; // Kayu muat Log
  OpenIfClose(qryKayuMuatHd, True, True);
end;

procedure TfmKayuMuatLog.qryKayuMuatHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('StatusApprove').AsInteger := 0;
  DataSet.FieldByName('StatusKayuMuat').AsString := '1'; // Kayu muat Log
end;

procedure TfmKayuMuatLog.RefreshAll;
begin
  inherited;

  LockRefresh(qryKayuMuatHd, True);
  LockRefresh(qryKayuMuatDt);
end;

end.
