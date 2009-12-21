unit frmAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, jpeg, ExtCtrls, StdCtrls, ActnList,
  cxButtons;

type
  TfmAbout = class(TFormUni)
    imgAbout: TImage;
    lblProjectName: TLabel;
    lblLastModified: TLabel;
    lblProjectDetail: TLabel;
    imgLogoProgram: TImage;
    lblRegister: TLabel;
    lblRegisterTo: TLabel;
    Panel1: TPanel;
    lblWarning: TLabel;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmAbout.InitForm;
begin
  inherited;

  imgLogoProgram.Picture.Assign(Application.Icon);
  lblProjectName.AutoSize := False;
  lblProjectName.Height := 73;
  lblProjectName.Width := 359;
  lblProjectName.Caption := Application.Name;
  lblRegisterTo.Caption := dmGlobal.SettingGlobal.RegisterTo;

  lblProjectDetail.Caption := COMPANY_NAME;
  lblLastModified.Caption :=
    'Version ' + dmGlobal.SettingGlobal.VersionFileVersion + ' Last update on ' +
    LowerCase(FormatDateTime('dd mmmm yyyy hh:nn:ss', GetFileLastWriteTime(Application.ExeName)));
end;

end.

