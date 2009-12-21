unit frmHasilGradeLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmHasilGrade, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxDBEdit, dxDockPanel, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, ADODB,
  cxGridDBTableView, cxCalc, DateUtils, cxMRUEdit, cxCurrencyEdit, cxMemo, cxPC,
  cxButtonEdit;

type
  TfmHasilGradeLog = class(TfmHasilGrade)
    pnlLog: TPanel;
    cgHasilGradeLog: TcxGrid;
    cgvHasilGradeLogD1: TcxGridDBColumn;
    cgvHasilGradeLogD2: TcxGridDBColumn;
    cgvHasilGradeLogD3: TcxGridDBColumn;
    cgvHasilGradeLogD4: TcxGridDBColumn;
    cgvHasilGradeLogDAvg: TcxGridDBColumn;
    cgvHasilGradeLogPLog: TcxGridDBColumn;
    cgvHasilGradeLogM3Log: TcxGridDBColumn;
    cgvHasilGradeLogQty: TcxGridDBColumn;
    cgHasilGradeLogLevel1: TcxGridLevel;
    cgvHasilGradeLogItemId: TcxGridDBColumn;
    cgvHasilGradeLogPaletId: TcxGridDBColumn;
    cgvHasilGradeLogNo: TcxGridDBColumn;
    cgvHasilGradeLogGradeResultCode: TcxGridDBColumn;
    Label4: TLabel;
    cgvPrevPOStatusLogCalculate: TcxGridDBColumn;
    cgvHasilGradeLog: TcxGridDBTableView;
    procedure cgvHasilGradeLogNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryGradeResultHdNewRecord(DataSet: TDataSet);
    procedure qryGradeResultInvoiceDtNewRecord(DataSet: TDataSet);
    procedure dbeGradeDatePropertiesEditValueChanged(Sender: TObject);
    procedure dsGradeResultInvoiceDtDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHasilGradeLog: TfmHasilGradeLog;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber,
  frmHasilGradeEntry;

procedure TfmHasilGradeLog.cgvHasilGradeLogNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    TfmHasilGradeEntry.ExecuteForm(1, qryGradeResultHd.FieldByName('PurchaseOrderId').asinteger,
      qryGradeResultHd.FieldByName('GradeResultId').asinteger, 1, TDataset(qryGradeResultInvoiceDt));
    ADone := True;
  end;
end;

procedure TfmHasilGradeLog.dbeGradeDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevPurchaseOrder.Close;
  qryPrevPurchaseOrder.Parameters[0].Value := '2'; // Kayu Log
  qryPrevPurchaseOrder.Parameters[1].Value := qryGradeResultHd.FieldByName('PurchaseOrderId').asinteger;
  OpenIfClose(qryPrevPurchaseOrder);
end;

procedure TfmHasilGradeLog.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevItemPO.Close;
  qryPrevItemPO.Parameters[0].Value := qryGradeResultHd.FieldByName('PurchaseOrderId').AsInteger;
  OpenIfClose(qryPrevItemPO);
end;

procedure TfmHasilGradeLog.dsGradeResultInvoiceDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryGradeResultInvoiceDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'DAvgInv') = 0) or
      (CompareText(Field.FieldName, 'PInv') = 0) then
    begin
      if (qryGradeResultInvoiceDt.FieldByName('DAvgInv').AsFloat <> 0) and
        (qryGradeResultInvoiceDt.FieldByName('PInv').AsFloat <> 0) then
        qryGradeResultInvoiceDt.FieldByName('M3Inv').AsFloat :=
          dmTimber.GetLogM3(cgvPrevPOStatusLogCalculate.EditValue, cgvPrevPurchaseOrderMaterialId.EditValue,
            (qryGradeResultInvoiceDt.FieldByName('DAvgInv').AsFloat * 0.01), // CM
            (qryGradeResultInvoiceDt.FieldByName('PInv').AsFloat * 0.01))  // CM
      else
        qryGradeResultInvoiceDt.FieldByName('M3Inv').AsFloat := 0;
    end;
  end;
end;

procedure TfmHasilGradeLog.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  TcxCalcEditProperties(cgvHasilGradeLogD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogD3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogD4.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogDAvg.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogPLog.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvHasilGradeLogQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvHasilGradeLogM3Log.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;

  OpenIfClose(dmTimber.qryPrevItemLog, True);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd

  OpenIfClose(qryGradeResultInvoiceDt);
  OpenIfClose(qryPrevTallySheetGrade);
end;

procedure TfmHasilGradeLog.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryGradeResultHd.State in [dsEdit, dsInsert]) //or
    //(qryPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    then
    Abort;

  qryGradeResultHd.Close;
  qryGradeResultHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryGradeResultHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryGradeResultHd.Parameters[2].Value := '1';
  OpenIfClose(qryGradeResultHd, True, True);
end;

procedure TfmHasilGradeLog.qryGradeResultHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.fieldbyname('StatusGradeResult').asstring:='1'; // Log
end;

procedure TfmHasilGradeLog.qryGradeResultInvoiceDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Qty').AsInteger := 1;
end;

procedure TfmHasilGradeLog.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPurchaseOrder);
end;

end.
