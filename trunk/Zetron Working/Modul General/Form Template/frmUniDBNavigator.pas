{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniDBNavigator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniDB, Menus, cxLookAndFeelPainters, DB, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls;

type
  TFormUniDBNavigator = class(TFormUniDB)
    {form ini memiliki tombol navigasi untuk maju dan mundur posisi record query}
    actPrev: TAction;
    actNext: TAction;
    btnPrev: TcxButton;
    btnNext: TcxButton;
    bvlSpacer2: TBevel;
    bvlSpacer3: TBevel;
    bvlSpacer4: TBevel;
    dsDefault: TDataSource;
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    //procedure InitForm; inherited
    //procedure DeinitForm; inherited
    //procedure RefreshAll; inherited
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TFormUniDBNavigator.actNextExecute(Sender: TObject);
begin
  inherited;

  if dsDefault.DataSet <> nil then
    dsDefault.DataSet.Next;
end;

procedure TFormUniDBNavigator.actPrevExecute(Sender: TObject);
begin
  inherited;

  if dsDefault.DataSet <> nil then
    dsDefault.DataSet.Prior;
end;

constructor TFormUniDBNavigator.Create(AOwner: TComponent);
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnPrev.Caption := 'Mundur';
    btnPrev.Hint := 'Mundur';

    btnNext.Caption := 'Maju';
    btnNext.Hint := 'Maju';
  end;
end;

end.


