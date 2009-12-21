unit frmReminder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDB, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxContainer,
  cxMaskEdit, cxDropDownEdit, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, DB, ADODB;

type
  TfmReminder = class(TFormUniDB)
    pnlPeriod: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    chkAutoRefresh: TcxCheckBox;
    cgReminder: TcxGrid;
    cgvReminder: TcxGridTableView;
    cgvReminderCategory: TcxGridColumn;
    cgvReminderInformation: TcxGridColumn;
    cgvReminderTodo: TcxGridColumn;
    cgReminderLevel1: TcxGridLevel;
    tmRefresh: TTimer;
    qryReminder: TADOQuery;
    qryPositionAccess: TADOQuery;
    qryGetUser: TADOQuery;
    procedure tmRefreshTimer(Sender: TObject);
    procedure cgvReminderCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure MonthYearValueChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmReminder: TfmReminder;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure, untConstanta, frmMainMenu;

procedure TfmReminder.cgvReminderCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);

  function FindAndExecuteManuItem(AMenuItem: TMenuItem; ACaption: string): boolean;
  var
    j: integer;
  begin
    Result := False;
    if StringReplace(AMenuItem.Caption, '&', '', [rfReplaceAll]) = StringReplace(ACaption, '&', '', [rfReplaceAll]) then
    begin
      AMenuItem.Click;
      Result := True;
    end
    else
    begin
      for j := 0 to AMenuItem.Count - 1 do
      begin
        if FindAndExecuteManuItem(AMenuItem.Items[j], ACaption) then
        begin
          Result := True;
          Break;
        end;
      end;
    end;
  end;

var
  i: integer;
begin
  inherited;

  for i := 0 to fmMainMenu.MainMenu1.Items.Count - 1 do
    if FindAndExecuteManuItem(fmMainMenu.MainMenu1.Items[i], VarToStr(cgvReminderInformation.EditValue)) then
      Break;
end;

procedure TfmReminder.InitForm;
begin
  inherited;

    // Reminder
    qryPositionAccess.Close;
    qryPositionAccess.Parameters[0].Value := dmGlobal.SettingGlobal.LoginPositionId;
    qryPositionAccess.Parameters[1].Value := FProgramId;
    qryPositionAccess.Open;
    GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
    GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
    cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
    cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
    SetReadOnly(cgvReminder);
    //cgReminder.LookAndFeel.Kind := lfUltraFlat;
    tmRefresh.Interval := 30000;  // 30 Detik
    tmRefresh.Enabled := True;
    btnRefresh.Click;
end;

procedure TfmReminder.MonthYearValueChange(Sender: TObject);

  procedure UpdateGrid(AMenuItem: TMenuItem; const AInfo: string);
  var
    i: integer;
  begin
    if (qryPositionAccess.Locate('MenuId', AMenuItem.Caption, [loCaseInsensitive])) or
      (dmGlobal.SettingGlobal.LoginUsername = ADMIN_ID) then
    begin
      if qryReminder.Locate('Info', AInfo, [loCaseInsensitive]) then
      begin
        if qryReminder.FieldByName('Todo').AsInteger <> 0 then
        begin
          i := cgvReminder.DataController.RecordCount + 1;
          cgvReminder.DataController.RecordCount := i;
          cgvReminder.DataController.Values[i - 1, cgvReminderCategory.Index] := qryReminder.FieldByName('Category').AsString;
          cgvReminder.DataController.Values[i - 1, cgvReminderInformation.Index] := AMenuItem.Caption;
          cgvReminder.DataController.Values[i - 1, cgvReminderTodo.Index] := qryReminder.FieldByName('Todo').AsInteger;
        end;
      end;
    end;
  end;

var
  CurrentDate: TDateTime;
begin
  CurrentDate := EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);
  cgvReminder.DataController.RecordCount := 0;
  cgvReminder.BeginUpdate;
  qryReminder.Close;
  qryReminder.Parameters[0].Value := FormatDateTime('YYYYMM', CurrentDate);
  OpenIfClose(qryReminder, True);
  if not qryReminder.IsEmpty then
  begin
    UpdateGrid(fmMainMenu.mnuPOEntry, 'PO0');
    UpdateGrid(fmMainMenu.mnuPOApproval1, 'PO1');
    UpdateGrid(fmMainMenu.mnuPOApproval2, 'PO2');
    UpdateGrid(fmMainMenu.mnuPIEntry, 'PI0');
    UpdateGrid(fmMainMenu.mnuPIApproval, 'PI1');
    UpdateGrid(fmMainMenu.mnuPPEntry, 'PP0');
    UpdateGrid(fmMainMenu.mnuPPTunaiApproval, 'PP1A');
    UpdateGrid(fmMainMenu.mnuPPKreditApproval, 'PP1B');
    UpdateGrid(fmMainMenu.mnuPREntry, 'PR0');
    UpdateGrid(fmMainMenu.mnuPRApproval, 'PR1');
    UpdateGrid(fmMainMenu.mnuPDEntry, 'PD0');
    UpdateGrid(fmMainMenu.mnuPDApproval, 'PD1');

    UpdateGrid(fmMainMenu.mnuSOEntry, 'SO0');
    UpdateGrid(fmMainMenu.mnuSOApproval, 'SO1');
    UpdateGrid(fmMainMenu.mnuSIEntry, 'SI0');
    UpdateGrid(fmMainMenu.mnuSIApproval1, 'SI1');
    UpdateGrid(fmMainMenu.mnuSIApproval2, 'SI2');
    UpdateGrid(fmMainMenu.mnuSPEntry, 'SP0');
    UpdateGrid(fmMainMenu.mnuSPTunaiApproval, 'SP1A');
    UpdateGrid(fmMainMenu.mnuSPKreditApproval, 'SP1B');
    UpdateGrid(fmMainMenu.mnuSREntry, 'SR0');
    UpdateGrid(fmMainMenu.mnuSRApproval1, 'SR1');
    UpdateGrid(fmMainMenu.mnuSRApproval2, 'SR2');
    UpdateGrid(fmMainMenu.mnuSDEntry, 'SD0');
    UpdateGrid(fmMainMenu.mnuSDApproval, 'SD1');

    UpdateGrid(fmMainMenu.mnuRREntry, 'RRGudang0');
    UpdateGrid(fmMainMenu.mnuRRApproval, 'RRGudang1');
    UpdateGrid(fmMainMenu.mnuRRTokoEntry, 'RRToko0');
    UpdateGrid(fmMainMenu.mnuRRTokoApproval, 'RRToko1');
    UpdateGrid(fmMainMenu.mnuRRVirtualEntry, 'RRVirtual0');
    UpdateGrid(fmMainMenu.mnuRRVirtualApproval, 'RRVirtual1');

    UpdateGrid(fmMainMenu.mnuDOEntry, 'DOGudang0');
    UpdateGrid(fmMainMenu.mnuDOTokoEntry, 'DOToko0');
    UpdateGrid(fmMainMenu.mnuDOVirtualEntry, 'DOVirtual0');

    UpdateGrid(fmMainMenu.mnuMutasiEntry, 'MT0');
    UpdateGrid(fmMainMenu.mnuMutasiAsal, 'MT1');
    UpdateGrid(fmMainMenu.mnuMutasiTujuan, 'MT2');
    UpdateGrid(fmMainMenu.mnuOTEntry, 'OT0');
    UpdateGrid(fmMainMenu.mnuOTApproval, 'OT1');
    UpdateGrid(fmMainMenu.mnuCoupleEntry, 'AT0');
    UpdateGrid(fmMainMenu.mnuCoupleApproval, 'AT1');
  end;
  cgvReminder.EndUpdate;
  cgvReminder.ViewData.Expand(True);
end;

procedure TfmReminder.RefreshAll;
begin
  inherited;

  MonthYearValueChange(nil);
end;

procedure TfmReminder.tmRefreshTimer(Sender: TObject);
begin
  inherited;

  if chkAutoRefresh.Checked then
    MonthYearValueChange(nil);
end;

end.
