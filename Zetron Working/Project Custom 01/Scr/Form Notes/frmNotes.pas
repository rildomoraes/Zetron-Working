unit frmNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, untIvPositionStandard, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, Menus, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmNotes = class(TForm)
    pnlEntry: TPanel;
    pnlControl: TPanel;
    memNotes: TcxMemo;
    btnOk: TcxButton;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm(const ACaption: string);
    procedure DeinitForm;
  public
    { Public declarations }
    class procedure ExecuteForm(const ACaption: string;
      out ANotes: TStringList);
  end;

implementation

uses dtmGlobal;

{$R *.dfm}

procedure TfmNotes.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfmNotes.DeinitForm;
begin
//
end;

class procedure TfmNotes.ExecuteForm(const ACaption: string;
  out ANotes: TStringList);
var
  fmNotes: TfmNotes;
begin
  fmNotes := TfmNotes.Create(Application);
  with fmNotes do
  begin
    try
      InitForm(ACaption);
      ShowModal;
      ANotes.Assign(memNotes.Lines);
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmNotes.InitForm(const ACaption: string);
begin
  dmGlobal.InitComponent(Self);
  Caption := ACaption;
end;

end.

