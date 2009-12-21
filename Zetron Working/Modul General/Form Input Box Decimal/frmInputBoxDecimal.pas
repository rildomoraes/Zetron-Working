unit frmInputBoxDecimal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  StdCtrls, Menus, cxLookAndFeelPainters, ActnList, ImgList, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalc;

type
  TfmInputBoxDecimal = class(TForm)
    lblPrompt: TLabel;
    edtCalcEdit: TcxCalcEdit;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    imgIcon24: TImageList;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private

  public
    class function ExecuteForm(const ACaption, APrompt, ADisplayFormat: string;
      AFont: TFont; AMinValue: double; var AValue: double): TModalResult;
  end;

implementation

{$R *.dfm}

{ TfmInputBoxDecimal }

procedure TfmInputBoxDecimal.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmInputBoxDecimal.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class function TfmInputBoxDecimal.ExecuteForm(const ACaption, APrompt,
  ADisplayFormat: string; AFont: TFont; AMinValue: double; var AValue: double): TModalResult;
var
  fmInputBoxDecimal: TfmInputBoxDecimal;
begin
  fmInputBoxDecimal := TfmInputBoxDecimal.Create(Application);
  with fmInputBoxDecimal do
  begin
    try
      Font := AFont;
      BorderStyle := bsDialog;
      Caption := ACaption;
      PopupMode := pmAuto;
      Position := poScreenCenter;
      lblPrompt.Caption := APrompt;
      edtCalcEdit.Properties.MinValue := AMinValue;
      edtCalcEdit.EditValue := AMinValue;
      edtCalcEdit.SelectAll;
      btnOk.ModalResult := mrOk;
      btnOk.Default := True;
      btnCancel.ModalResult := mrCancel;
      btnCancel.Cancel := True;

      Result := ShowModal;
      AValue := edtCalcEdit.EditValue;
    finally
      Release;
    end;
  end;
end;

end.
