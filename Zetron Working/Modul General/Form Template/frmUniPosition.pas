{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniPosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls;

type
  TFormUniPosition = class(TFormUni)
    {form ini memiliki fungsi menyimpan letak posisi dan size dirinya}
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    actReset: TAction;
    btnReset: TcxButton;
    procedure actResetExecute(Sender: TObject);
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    procedure InitForm; override;
    procedure DeinitForm; override;
  public
    constructor Create(AOwner: TComponent); override;
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal;

procedure TFormUniPosition.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

constructor TFormUniPosition.Create(AOwner: TComponent);
begin
  inherited;

  IvPositionStandard1.Filename := FConfigFilename;
  IvPositionDevExpress1.Filename := FConfigFilename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;
  IvPositionDevExpress1.ExecuteLoadProcceses;
end;

procedure TFormUniPosition.DeinitForm;
begin
  inherited;

  Self.WindowState := wsNormal;
end;

procedure TFormUniPosition.InitForm;
begin
  inherited;

  IvPositionStandard1.ExecuteLoadFormPosOnly;
end;

end.



