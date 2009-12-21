unit fmPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, fmeSetupButton;

type
  TfrmPegawai = class(TForm)
    feSetupButton1: TfeSetupButton;
    qryPegawai: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPegawai: TfrmPegawai;

implementation

uses dtmglobal;
{$R *.dfm}

end.
