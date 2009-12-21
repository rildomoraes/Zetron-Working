{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniDBEditableEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniDBNavigatorEx, Menus, cxLookAndFeelPainters, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinsdxDockControlPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFormUniDBEditableEx = class(TFormUniDBNavigatorEx)
    btnInsert: TcxButton;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    actInsert: TAction;
    actEdit: TAction;
    actPost: TAction;
    actCancel: TAction;
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure actInsertExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    //procedure InitForm; inherited
    //procedure DeinitForm; inherited
    //procedure RefreshAll; inherited

    property DefaultGrid;
    property DefaultGridView;
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses dtmGlobal;

procedure TFormUniDBEditableEx.actCancelExecute(Sender: TObject);
begin
  inherited;

  dsDefault.DataSet.Cancel;
end;

procedure TFormUniDBEditableEx.actEditExecute(Sender: TObject);
begin
  inherited;

  dsDefault.DataSet.Edit;
end;

procedure TFormUniDBEditableEx.actInsertExecute(Sender: TObject);
begin
  inherited;

  dsDefault.DataSet.Insert;
end;

procedure TFormUniDBEditableEx.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;

  if (Action = actInsert) or (Action = actEdit) then
  begin
    pnlInfo.SetFocus; // Focus kan ke pnlInfo
    SelectNext(Self.ActiveControl, True, True); // kmdn Focus kan ke control pertamanya
  end;
  ExecuteAction(Action);
end;

procedure TFormUniDBEditableEx.actPostExecute(Sender: TObject);
begin
  inherited;

  dsDefault.DataSet.Post;
end;

constructor TFormUniDBEditableEx.Create(AOwner: TComponent);
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;
  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnInsert.Caption := 'Tambah';
    btnInsert.Hint := 'Tambah';

    btnEdit.Caption := 'Ubah';
    btnEdit.Hint := 'Ubah';

    btnPost.Caption := 'Simpan';
    btnPost.Hint := 'Simpan';

    btnCancel.Caption := 'Batal';
    btnCancel.Hint := 'Batal';
  end;
end;

procedure TFormUniDBEditableEx.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    actInsert.Enabled := True;
    actEdit.Enabled := True;
    actPost.Enabled := False;
    actCancel.Enabled := False;
  end
  else
  begin
    actInsert.Enabled := False;
    actEdit.Enabled := False;
    actPost.Enabled := True;
    actCancel.Enabled := True;
  end;

end;

end.




