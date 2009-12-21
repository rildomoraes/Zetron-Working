unit frmInputBoxString;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  Menus, cxLookAndFeelPainters, ActnList, ImgList, cxControls, cxContainer,
  cxEdit, cxTextEdit, StdCtrls, cxButtons;

type
  TfmInputBoxString = class(TForm)
    lblPrompt: TLabel;
    btnOk: TcxButton;
    imgIcon24: TImageList;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    btnCancel: TcxButton;
    edtTextEdit: TcxTextEdit;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private

  public
    class function ExecuteForm(const ACaption, APrompt: string;
      AFont: TFont; var AValue: string): TModalResult;
  end;

implementation

{$R *.dfm}

{ TfmInputBoxString }

procedure TfmInputBoxString.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmInputBoxString.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class function TfmInputBoxString.ExecuteForm(const ACaption, APrompt: string;
  AFont: TFont; var AValue: string): TModalResult;
var
  fmInputBoxString: TfmInputBoxString;
begin
  fmInputBoxString := TfmInputBoxString.Create(Application);
  with fmInputBoxString do
  begin
    try
      Font := AFont;
      BorderStyle := bsDialog;
      Caption := ACaption;
      PopupMode := pmAuto;
      Position := poScreenCenter;
      lblPrompt.Caption := APrompt;
      edtTextEdit.EditValue := AValue;
      edtTextEdit.SelectAll;
      btnOk.ModalResult := mrOk;
      btnOk.Default := True;
      btnCancel.ModalResult := mrCancel;
      btnCancel.Cancel := True;

      Result := ShowModal;
      AValue := edtTextEdit.EditValue;
    finally
      Release;
    end;
  end;
end;

end.
