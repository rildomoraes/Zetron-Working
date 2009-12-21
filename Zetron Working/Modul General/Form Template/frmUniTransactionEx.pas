{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniTransactionEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, Uni,

  // Auto Generate
  frmUniDBEditableEx, Menus, cxLookAndFeelPainters, cxGraphics, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit, cxImageComboBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxButtons, ExtCtrls, dxSkinsCore, dxSkinsdxDockControlPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFormUniTransactionEx = class(TFormUniDBEditableEx)
    actVoid: TAction;
    pnlCustom: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    lblStatusApprove: TLabel;
    dblcStatusApprove: TcxDBImageComboBox;
    lblCounterPrint: TLabel;
    dbeCounterPrint: TcxDBTextEdit;
    btnVoid: TcxButton;
    dblcEmployeeId: TcxDBExtLookupComboBox;
    lblEmployeeId: TLabel;
    btnPrint: TcxButton;
    pmPrint: TPopupMenu;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure InitPopupMenuPrint;
  protected
    //FMenuOptions: TRecMenuOptions; //inherited
    //FMasterField: string; //inherited
    FStatusApprove: byte;
    FPrefixReportId: string;
    FPKFields: string;
    procedure InitForm; override;
    //procedure DeinitForm; override;
    //procedure RefreshAll; override;

    procedure OnClickPrint(Sender: TObject); virtual;
    procedure MonthYearValueChange(Sender: TObject); virtual; abstract;
      {procedure MonthYearValueChange dipanggil ketika ada perubahan pada
      periode bulan atau tahun pada form}

    property DefaultGrid;
    property DefaultGridView;
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    class procedure ExecuteForm(const AParamValues: string;
      AStatusApprove: byte; const APrefixReportId, APKFields: string);
  end;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, frmPrintFastReport;

procedure TFormUniTransactionEx.actEditExecute(Sender: TObject);
begin
  inherited;
  if FMenuOptions.Edit=false then
  begin
    showmessage('Anda tidak berhak merubah data !!');
    abort;
  end;
end;

procedure TFormUniTransactionEx.actInsertExecute(Sender: TObject);
begin
  inherited;
  if FMenuOptions.Insert=false then
  begin
    showmessage('Anda tidak berhak memasukkan data baru !!');
    abort;
  end;
end;

procedure TFormUniTransactionEx.actPrintExecute(Sender: TObject);
begin
  inherited;

  if pmPrint.Items.Count > 0 then
    pmPrint.Items[0].Click;
end;

procedure TFormUniTransactionEx.actVoidExecute(Sender: TObject);
begin
  inherited;

  if dsDefault.DataSet.IsEmpty then
    Abort;
  if not (dsDefault.DataSet.State in [dsBrowse]) then
    dsDefault.DataSet.Post;

  if MessageDlg(ASK_VOID, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;
  dsDefault.DataSet.Edit;
  if dsDefault.State in [dsEdit] then // If enter edit state success
  begin
      dsDefault.DataSet.FieldByName(FIELD_STATUS_APPROVE).AsString := dmGlobal.SettingGlobal.StatusVoid;
      dsDefault.DataSet.Post;
  end;
end;

constructor TFormUniTransactionEx.Create(AOwner: TComponent);
begin
  inherited;

  SetReadOnly(dbeCounterPrint, True, COLOR_INACTIVE);
  SetReadOnly(dblcEmployeeId, True, COLOR_INACTIVE);

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  OpenIfClose(dmGlobal.qryEmployee);
end;

procedure TFormUniTransactionEx.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    actVoid.Enabled := True
  else
    actVoid.Enabled := False;

  if dsDefault.State in [dsInsert] then
  begin
    // Cek trial transaction limitation
    if dmGlobal.SettingGlobal.UseTrialTransaction then
    begin
      if dsDefault.DataSet.RecordCount > dmGlobal.SettingGlobal.TrialTransaction then
      begin
        MessageDlg(MSG_TRIAL_APP, mtInformation, [mbOk], 0);
        dsDefault.DataSet.Cancel;
      end;
    end;

    // Cek trial date limitation
    if dmGlobal.SettingGlobal.UseTrialDate then
    begin
      if EncodeDate(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1, 1)  > dmGlobal.SettingGlobal.TrialDate then
      begin
        MessageDlg(MSG_TRIAL_DATE, mtInformation, [mbOk], 0);
        dsDefault.DataSet.Cancel;
      end;
    end;
  end;
end;

class procedure TFormUniTransactionEx.ExecuteForm(const AParamValues: string;
  AStatusApprove: byte; const APrefixReportId, APKFields: string);
var
  i, Pos: integer;
begin
  // Check already create
  for i := 0 to Application.MainForm.MDIChildCount - 1 do
  begin
    if (Application.MainForm.MDIChildren[i] is Self) then
    begin
      if (TFormUniTransactionEx(Application.MainForm.MDIChildren[i]).FParamValues = AParamValues) and
        (TFormUniTransactionEx(Application.MainForm.MDIChildren[i]).FStatusApprove = AStatusApprove) then
      begin
        with (Application.MainForm.MDIChildren[i] as Self) do
        begin
          Show;
          WindowState := wsNormal;
          Exit;
        end;
      end;
    end;
  end;

  // if not Created then
  with Self.Create(Application) do
  begin
    FParamValues := AParamValues;
    FPrefixReportId := APrefixReportId;
    FPKFields := APKFields;
    FStatusApprove := AStatusApprove;
    // 'C:\Documents and Settings\User\Local Settings\Application Data\Zetron System\<project name>\'
    // Nama file diubah menjadi numeric, dan tidak ada proses reverse menjadi huruf kembali (tidak perlu)
    FConfigFilename :=
      dmGlobal.SettingLocal.Path_AppData + 'Setting' + TranslateToNumeric(FParamValues) +
      IntToStr(FStatusApprove) + ' ' + TranslateToNumeric(Copy(Name, 3, Length(Name) - 2)) + '.cfg';

    // Retrive parameters
    SetLength(FParamValuesArray, 1);
    FParamValuesArray[0] := '';
    i := 0;
    Pos := 1;
    while Pos <= Length(VarToStr(AParamValues)) do
    begin
      SetLength(FParamValuesArray, i + 1);
      FParamValuesArray[i] := ExtractFieldName(AParamValues, Pos);
      i := i + 1;
    end;

    InitForm;
  end;
end;

procedure TFormUniTransactionEx.InitForm;
begin
  inherited;

  // Check is report used
  if (FPrefixReportId = '') and (FPKFields = '') then
    btnPrint.Visible := False;

  case FStatusApprove of
    0 :
      begin
        Self.Caption := Self.Caption + ' - Entry';
        SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
      end;
    1 : Self.Caption := Self.Caption + ' - Approved';
  end;

  if not FMenuOptions.Insert then
  begin
    btnInsert.Enabled := False;
    btnPost.Enabled := False;
  end;
  if not FMenuOptions.Edit then
  begin
    btnEdit.Enabled := False;
    btnPost.Enabled := False;
  end;
  if not FMenuOptions.Delete then
  begin
    btnVoid.Enabled := False;
  end;

  InitPopupMenuPrint;
end;

procedure TFormUniTransactionEx.InitPopupMenuPrint;
var
  i: Integer;
  MenuItem: TMenuItem;
  QueryReport: TDataset;
  SQL: TStringList;
begin
  SQL := TStringList.Create;
  try
    SQL.Add('select * from Report');
    SQL.Add('where ReportId like :ReportId');
    SQL.Add('and ProgramId = :ProgramId');
    SQL.Add('order by OrderNo, ReportId');

    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      QueryReport := TADOQuery.Create(Self);
      TADOQuery(QueryReport).Connection := TADOConnection(dmGlobal.conGlobal);
      TADOQuery(QueryReport).SQL := SQL;
      TADOQuery(QueryReport).Parameters[0].Value := FPrefixReportId;
      TADOQuery(QueryReport).Parameters[1].Value := dmGlobal.SettingGlobal.ProgramId;
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      QueryReport := TUniQuery.Create(Self);
      TUniQuery(QueryReport).Connection := TUniConnection(dmGlobal.conGlobal);
      TUniQuery(QueryReport).SQL := SQL;
      TUniQuery(QueryReport).Params[0].Value := FPrefixReportId;
      TUniQuery(QueryReport).Params[1].Value := dmGlobal.SettingGlobal.ProgramId;
    end;
  finally
    SQL.Free;
  end;

  OpenIfClose(QueryReport);
  i := 0;
  while not QueryReport.Eof do
  begin
    // Add to bar manager
    MenuItem := TMenuItem.Create(pmPrint);
    MenuItem.Name := QueryReport.FieldByName('ReportId').AsString;
    MenuItem.Caption := QueryReport.FieldByName('ReportName').AsString;
    if QueryReport.FieldByName('ReportName').AsString <> '-' then
      MenuItem.OnClick := OnClickPrint;
    MenuItem.Tag := i;

    // Add to popup
    pmPrint.Items.Add(MenuItem);

    // Next
    Inc(i);
    QueryReport.Next;
  end;
end;

procedure TFormUniTransactionEx.OnClickPrint(Sender: TObject);
var
  IdReport: string;
  DoCounter: boolean;
begin
  // Check StatusApproval
  if dsDefault.DataSet.FieldByName(FIELD_STATUS_APPROVE).AsString = dmGlobal.SettingGlobal.StatusVoid then
  begin
    MessageDlg(MSG_TRANSACTION_ALREADY_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  IdReport := TComponent(Sender).Name;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if dsDefault.DataSet.FieldByName(FPKFields).AsString = '' then
    Exit;

  // check counter print
  if FMenuOptions.MaxReprint <> 0 then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger >= FMenuOptions.MaxReprint then
    begin
      MessageDlg(Format(MSG_MAX_PRINT, [FMenuOptions.MaxReprint]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  // Printing
  DoCounter := False;
  if TfmPrintFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, IdReport,
    dsDefault.DataSet.FieldByName(FPKFields).AsString, '', '') = mrOk then
  begin
//XXXX    if DoCounter then
//    begin
//      if dsDefault.DataSet.State in [dsBrowse] then
//   Harusnya di awal ->     dsDefault.DataSet.Edit;
//      dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger :=
//        dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger + 1;
//      dsDefault.DataSet.Post;
//    end;
  end;
end;

end.







