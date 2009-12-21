unit frmCardEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  Menus, cxLookAndFeelPainters, cxGraphics, ActnList, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  cxButtons;

type
  TfmCardEntry = class(TForm)
    lblCardType: TLabel;
    lblCardNo: TLabel;
    lblCardHolder: TLabel;
    lblDebitAmount: TLabel;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edtCardHolder: TcxTextEdit;
    edtCardNumber: TcxCurrencyEdit;
    edtDebitAmount: TcxCurrencyEdit;
    lcbPaymentType: TcxExtLookupComboBox;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure InitForm;
  public
    class function ExecuteForm(var ACardType, ACardNumber, ACardHolderName: string;
      var ADebitAmount: double): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmRegister;

procedure TfmCardEntry.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmCardEntry.actOkExecute(Sender: TObject);
var
  Success: boolean;
begin
  Success := True;

  if lcbPaymentType.EditValue = null then
  begin
    MessageDlg('Tipe pembayaran masih belum dipilih !', mtInformation, [mbOk], 0);
    Success := False;
  end;

  if edtDebitAmount.EditValue <= 0 then
  begin
    MessageDlg('Jumlah nilai yang akan didebit masih belum dimasukan !', mtInformation, [mbOk], 0);
    Success := False;
  end;

  if Success then
    ModalResult := mrOk;
end;

class function TfmCardEntry.ExecuteForm(var ACardType, ACardNumber,
  ACardHolderName: string; var ADebitAmount: double): TModalResult;
var
  fmCardEntry: TfmCardEntry;
begin
  fmCardEntry := TfmCardEntry.Create(Application);
  with fmCardEntry do
  begin
    try
      Position := poScreenCenter;
      InitForm;
      Result := ShowModal;
      if ModalResult = mrOk then
      begin
        ACardType := lcbPaymentType.EditValue;
        ACardNumber := edtCardNumber.EditValue;
        ACardHolderName := edtCardHolder.EditValue;
        ADebitAmount := edtDebitAmount.EditValue;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmCardEntry.InitForm;
begin
  dmGlobal.InitComponent(Self);

  edtCardNumber.Properties.Alignment.Horz := taLeftJustify;
  edtDebitAmount.Properties.DisplayFormat := '0;(0)';
  edtDebitAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmRegister.qryPrevPaymentType);
end;

end.
