unit frmPaymentInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxDBLookupComboBox, cxMaskEdit, cxCurrencyEdit, Menus,
  cxLookAndFeelPainters, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  ActnList, StdCtrls, cxButtons, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TfmPaymentInfo = class(TForm)
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    IvPositionDevExpress1: TIvPositionDevExpress;
    cxStyleRepository1: TcxStyleRepository;
    stRedLight: TcxStyle;
    qryRegisterSalesPayment: TUniQuery;
    dsRegisterSalesPayment: TDataSource;
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgDisplayResultLevel1: TcxGridLevel;
    pnlBottom: TPanel;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    cgvDisplayResultregistersalesid: TcxGridDBColumn;
    cgvDisplayResultno: TcxGridDBColumn;
    cgvDisplayResultpaymenttypeId: TcxGridDBColumn;
    cgvDisplayResultcardno: TcxGridDBColumn;
    cgvDisplayResultcardholdername: TcxGridDBColumn;
    cgvDisplayResultonhandamount: TcxGridDBColumn;
    cgvDisplayResultamount: TcxGridDBColumn;
    cgvDisplayResultshortage: TcxGridDBColumn;
    UniQuery1: TUniQuery;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure cgvDisplayResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cgvDisplayResultCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FRegisterSalesId: string;
    FIsVoidProcess: boolean;
    FNoPayment: integer;
    FSupervisorName: string;
    FJobMessage: string;

    procedure InitForm;
  public
    class function ExecuteForm(const ARegisterSalesId: string; AIsVoidProcess: boolean;
      var ANoPayment: integer; var AJobMessage, ASupervisorName: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmRegister, dtmShare;

{ TfmPaymentInfo }

procedure TfmPaymentInfo.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmPaymentInfo.actOkExecute(Sender: TObject);
var
  DoProcess: boolean;
  JobTitle, SupervisorName: string;
  JobMessage: TStringList;
begin
  if not qryRegisterSalesPayment.IsEmpty then
  begin
    FNoPayment := cgvDisplayResultno.EditValue;

    if not FIsVoidProcess then
    begin
      ModalResult := mrOk;
    end
    else
    begin
      if MessageDlg(ASK_VOID, mtInformation, [mbYes, mbNo], 0) = mrYes then
      begin
        JobMessage := TStringList.Create;
        try
          JobTitle := 'Void Pembayaran';
          qryPrevPaymentType.Locate('PaymentTypeId', cgvDisplayResultpaymenttypeId.EditValue, [loCaseInsensitive]);

          JobMessage.Add('No: ' + VarToStr(cgvDisplayResultno.EditValue));
          JobMessage.Add('Tipe: ' + qryPrevPaymentType.FieldByName('PaymentTypeName').AsString);
          JobMessage.Add('Jumlah: ' + FormatFloat('#,##0.00', cgvDisplayResultamount.EditValue));

          DoProcess := True;
          if dmShare.OptionRegValidationPaymentVoid.Validate then
            if not dmRegister.GetValidationSuperuser(JobTitle, JobMessage,
              dmShare.OptionRegValidationPaymentVoid.Level, SupervisorName) then
              DoProcess := False;

          if DoProcess then
          begin
            qryRegisterSalesPayment.Delete;

            FJobMessage := JobMessage.Text;
            FSupervisorName := SupervisorName;
            ModalResult := mrOk;
          end;
        finally
          JobMessage.Free;
        end;
      end;
    end;
  end;
end;

procedure TfmPaymentInfo.cgvDisplayResultCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actOk.Execute;
end;

procedure TfmPaymentInfo.cgvDisplayResultKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    actOk.Execute;
end;

class function TfmPaymentInfo.ExecuteForm(const ARegisterSalesId: string;
  AIsVoidProcess: boolean; var ANoPayment: integer;
  var AJobMessage, ASupervisorName: string): TModalResult;
var
  fmPaymentInfo: TfmPaymentInfo;
begin
  fmPaymentInfo := TfmPaymentInfo.Create(Application);
  with fmPaymentInfo do
  begin
    try
      FRegisterSalesId := ARegisterSalesId;
      FIsVoidProcess := AIsVoidProcess;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        ANoPayment := FNoPayment;
        AJobMessage := FJobMessage;
        ASupervisorName := FSupervisorName;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmPaymentInfo.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  TcxCurrencyEditProperties(cgvDisplayResultonhandamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayResultamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayResultshortage.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvDisplayResult);

  dmGlobal.InitComponent(Self);

  if FIsVoidProcess then
    Self.Caption := 'Void Pembayaran'
  else
    Self.Caption := 'Display Pembayaran';

  OpenIfClose(qryPrevPaymentType);
  qryRegisterSalesPayment.Close;
  qryRegisterSalesPayment.Params[0].Value := FRegisterSalesId;
  OpenIfClose(qryRegisterSalesPayment, True, True);
end;

end.
