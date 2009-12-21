{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls;

type
  TFormUniDB = class(TFormUniPosition)
    {form ini memiliki tombol refresh dataset}
    actRefresh: TAction;
    btnRefresh: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRefreshExecute(Sender: TObject);
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    //procedure InitForm; inherited
    //procedure DeinitForm; inherited
    procedure RefreshAll; virtual; abstract;
      {procedure RefreshAll berisi statement-statement untuk me-refresh
      dataset-dataset dalam form ini, isi dari procedure ini dibuat secara
      manual dengan memperhatikan dataset yang ada dalam form. procedure ini
      dapat di turunkan (override) dan dipanggil lagi oleh keturunan form ini}
  public
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses untProcedure;

procedure TFormUniDB.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TFormUniDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not IsAllDatasetAlreadyPost(Self) then
    Action := caNone
  else
    inherited;
end;

end.


