unit frmDailyKurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dateutils,

  //AutoCreate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxDropDownEdit, ADODB, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxCalendar, cxDBEdit, cxCurrencyEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ActnList, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmDailyKurs = class(TFormUniMasterEx)
    lblMataUang: TLabel;
    dblcMataUang: TcxDBExtLookupComboBox;
    lblKurs: TLabel;
    dbeKurs: TcxDBCurrencyEdit;
    Label3: TLabel;
    dbeKursDate: TcxDBDateEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    qryDailyKurs: TADOQuery;
    pnlCustom: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    lblEmployeeId: TLabel;
    dblcEmployeeId: TcxDBExtLookupComboBox;
    cgvPrevDisplayCurrencyId: TcxGridDBColumn;
    cgvPrevDisplayKursDate: TcxGridDBColumn;
    cgvPrevDisplayKursValue: TcxGridDBColumn;
    cgvPrevDisplayEmployeeId: TcxGridDBColumn;
    Label9: TLabel;
    Label1: TLabel;
    procedure qryDailyKursNewRecord(DataSet: TDataSet);
    procedure qryDailyKursBeforePost(DataSet: TDataSet);
  private

  protected
    procedure InitForm; override;
    procedure MonthYearValueChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmDailyKurs: TfmDailyKurs;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure;

procedure TfmDailyKurs.InitForm;
begin
  inherited;

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  SetReadOnly(dblcEmployeeId);
  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplayKursValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger
end;

procedure TfmDailyKurs.MonthYearValueChange(Sender: TObject);
begin
  if (qryDailyKurs.State in [dsEdit, dsInsert]) then
    Abort;

  qryDailyKurs.Close;
  qryDailyKurs.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryDailyKurs.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryDailyKurs, True, True);
end;

procedure TfmDailyKurs.qryDailyKursBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('CurrencyId').AsString = 'IDR' then
    DataSet.FieldByName('KursValue').AsVariant := 1;

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmDailyKurs.qryDailyKursNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('KursValue').AsVariant := 1;
end;

end.
