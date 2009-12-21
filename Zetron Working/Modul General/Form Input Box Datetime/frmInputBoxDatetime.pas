unit frmInputBoxDatetime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  StdCtrls, Menus, cxLookAndFeelPainters, ActnList, ImgList, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons;

type
  TfmInputBoxDatetime = class(TForm)
    lblPrompt: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    imgIcon24: TImageList;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    edtDateTimeEdit: TcxDateEdit;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private

  public
    class function ExecuteForm(const ACaption, APrompt, ADisplayFormat: string;
      AFont: TFont; AMinValue: TDateTime; var AValue: TDateTime): TModalResult;
  end;

implementation

{$R *.dfm}

{ TfmInputBoxDecimal }

procedure TfmInputBoxDatetime.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmInputBoxDatetime.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class function TfmInputBoxDatetime.ExecuteForm(const ACaption, APrompt,
  ADisplayFormat: string; AFont: TFont; AMinValue: TDateTime; var AValue: TDateTime): TModalResult;
var
  fmInputBoxDateTime: TfmInputBoxDateTime;
begin
  fmInputBoxDateTime := TfmInputBoxDateTime.Create(Application);
  with fmInputBoxDateTime do
  begin
    try
      Font := AFont;
      BorderStyle := bsDialog;
      Caption := ACaption;
      PopupMode := pmAuto;
      Position := poScreenCenter;
      lblPrompt.Caption := APrompt;
      edtDateTimeEdit.Properties.MinValue := AMinValue;
      edtDateTimeEdit.EditValue := AMinValue;
      edtDateTimeEdit.SelectAll;
      btnOk.ModalResult := mrOk;
      btnOk.Default := True;
      btnCancel.ModalResult := mrCancel;
      btnCancel.Cancel := True;

      Result := ShowModal;
      AValue := edtDateTimeEdit.EditValue;
    finally
      Release;
    end;
  end;
end;

end.
