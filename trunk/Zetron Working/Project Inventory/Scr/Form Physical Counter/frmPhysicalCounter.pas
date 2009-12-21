unit frmPhysicalCounter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxDBExtLookupComboBox, cxCalc, untIvSearchBoxDAC,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxButtonEdit, cxDBEdit, cxDropDownEdit, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmPhysicalCounter = class(TFormUniTransactionEx)
    qryPhysicalCounter: TUniQuery;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplayemployeeid: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblEngineCode: TLabel;
    dbeJobType: TcxDBExtLookupComboBox;
    lblJobType: TLabel;
    lblValueStart: TLabel;
    lblValueEnd: TLabel;
    dbValueStart: TcxDBCalcEdit;
    dbValueEnd: TcxDBCalcEdit;
    cgvPrevDisplayenginecode: TcxGridDBColumn;
    cgvPrevDisplayjobcode: TcxGridDBColumn;
    cgvPrevDisplaycounterdate: TcxGridDBColumn;
    cgvPrevDisplayvaluestart: TcxGridDBColumn;
    cgvPrevDisplayvalueend: TcxGridDBColumn;
    dbeCounterDate: TcxDBDateEdit;
    lblCounterDate: TLabel;
    lblShift: TLabel;
    dbeShiftCode: TcxDBExtLookupComboBox;
    cgvPrevDisplayshiftcode: TcxGridDBColumn;
    IvSearchBoxDAC1: TIvSearchBoxDAC;
    dbeEngineCode: TcxDBButtonEdit;
    procedure qryPhysicalCounterNewRecord(DataSet: TDataSet);
    procedure qryPhysicalCounterBeforePost(DataSet: TDataSet);
    procedure dbeEngineCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actVoidExecute(Sender: TObject);
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
  fmPhysicalCounter: TfmPhysicalCounter;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPhysicalCounter.actVoidExecute(Sender: TObject);
begin
  // inherited;
  // Khusus transaksi counter fisik, kalo void = dihapus

  if dsDefault.DataSet.IsEmpty then
    Abort;
  if not (dsDefault.DataSet.State in [dsBrowse]) then
    dsDefault.DataSet.Post;
  if MessageDlg(ASK_DELETE, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  dsDefault.DataSet.Delete;
end;

procedure TfmPhysicalCounter.dbeEngineCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;

  if qryPhysicalCounter.State in [dsBrowse] then
    Exit;

  if IvSearchBoxDAC1.Execute = mrOk then
  begin
    qryPhysicalCounter.FieldByName('EngineCode').AsString := IvSearchBoxDAC1.FieldByName('EngineCode').AsString;
    qryPhysicalCounter.FieldByName('JobCode').AsString := IvSearchBoxDAC1.FieldByName('JobCode').AsString;
  end;
end;

procedure TfmPhysicalCounter.InitForm;
begin
  inherited;

  SetReadOnly(dbeJobType);

  OpenIfClose(dmInventory.qryEngine);
  OpenIfClose(dmInventory.qryJobType);
  OpenIfClose(dmInventory.qryShift);

  MonthYearValueChange(nil); // -> Trigger Hd
end;

procedure TfmPhysicalCounter.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPhysicalCounter.State in [dsEdit, dsInsert]) then
    Abort;

  qryPhysicalCounter.Close;
  qryPhysicalCounter.Params[0].Value := StrToInt(cbYear.Text);
  qryPhysicalCounter.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPhysicalCounter, True, True);
end;

procedure TfmPhysicalCounter.qryPhysicalCounterBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPhysicalCounter.qryPhysicalCounterNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('CounterDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('ValueStart').AsInteger := 0;
  Dataset.FieldByName('ValueEnd').AsInteger := 0;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
end;

procedure TfmPhysicalCounter.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryEngine);
  LockRefresh(dmInventory.qryJobType);
  LockRefresh(qryPhysicalCounter);
end;

end.
