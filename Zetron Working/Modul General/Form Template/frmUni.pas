{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untProcedure,

  // Auto Generate
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, ActnList, DB;

type
  TRecMenuOptions = record
    Insert: boolean;
    Edit: boolean;
    Delete: boolean;
    MaxReprint: integer;
  end;

  TFormUni = class(TForm)
    {form uni merupakan form induk}
    ActionList1: TActionList;
    actClose: TAction;
    pnlMenu: TPanel;
    bvlSpacer1: TBevel;
    btnClose: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCloseExecute(Sender: TObject);
  protected
    FMenuOptions: TRecMenuOptions;
      {field MenuOption merupakan sebuah record yang didelarasikan pada unit
      untProcedure.pas, yang berisi property:
        * Insert : user login dapat insert data pada form ini
        * Edit : user login dapat edit data pada form ini
        * Delete : user login dapat hapus data pada form ini
        * MaxReprint : user login dibatasi hanya dapat mencetak (print)
          berulang suatu transaksi maksimum sebanyak nilai daripada MaxReprint
          pada form ini.
      Tiap property tersebut dapat diakses oleh keturunan dari form ini}
    FParamValues: string;
    FParamValuesArray: array of Variant;
      {field ParamValues berisi array kumpulan parameter ketika ExecuteForm dipanggil}
    FConfigFilename: string;
      {Config filename digunakan untuk penyimpanan setting ivComponent}
    procedure InitForm; virtual;
      {procedure InitForm dipanggil SESUDAH FORM DIBUAT (visible = true),
      procedure ini dapat di turunkan (override) dan dipanggil lagi oleh
      keturunan form ini}
    procedure DeinitForm; virtual;
      {procedure DeinitForm dipanggil SEBELUM form di akan ditutup, procedure ini
      dapat di turunkan (override) dan dipanggil lagi oleh keturunan form ini}
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create dipanggil KETIKA FORM DIBUAT (visible = false),
      constructor dapat di turunkan (override) dan dipanggil lagi oleh
      keturunan form ini}
    class procedure ExecuteForm(const AParamValues: string = '');
      {procedure ExecuteForm merupakan class procedure. Procedure ini befungsi
      untuk me-create dirinya (form) sendiri. Parameter MenuFlag digunakan pada
      keturunan form ini (optional) yang berguna apabila satu form dipanggil
      oleh beberapa menu, misalnya: menu kas masuk dan menu kas keluar yang
      berasal dari satu form. Parameter AParamValues digunakan pada keturunan
      form ini (optional) yang berguna untuk me-passing parameter}
  end;

implementation

{$R *.dfm}

uses dtmGlobal;

procedure TFormUni.actCloseExecute(Sender: TObject);
begin
  Close;
end;

constructor TFormUni.Create(AOwner: TComponent);
begin
  inherited;

  dmGlobal.InitComponent(Self);

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnClose.Caption := 'Keluar';
    btnClose.Hint := 'Keluar (Alt+F4)';
  end;
end;

procedure TFormUni.DeinitForm;
begin
  SetLength(FParamValuesArray, 0);
end;

class procedure TFormUni.ExecuteForm(const AParamValues: string = '');
var
  i, Pos: integer;
begin
  // Check already create
  for i := 0 to Application.MainForm.MDIChildCount - 1 do
  begin
    if (Application.MainForm.MDIChildren[i] is Self) then
    begin
      if (TFormUni(Application.MainForm.MDIChildren[i]).FParamValues = AParamValues) then
      begin
        with (Application.MainForm.MDIChildren[i] as Self) do
        begin
          Show;
          WindowState := wsNormal;
          Exit;
        end;
      end;
    end;
  end;

  // if not Created then
  with Self.Create(Application) do
  begin
    FParamValues := AParamValues;
    // 'C:\Documents and Settings\User\Local Settings\Application Data\Zetron System\<project name>\'
    // Nama file diubah menjadi numeric, dan tidak ada proses reverse menjadi huruf kembali (tidak perlu)
    FConfigFilename :=
      dmGlobal.SettingLocal.Path_AppData + 'Setting' + TranslateToNumeric(FParamValues) + ' ' +
      TranslateToNumeric(Copy(Name, 3, Length(Name) - 2)) + '.cfg';

    // Retrive parameters
    SetLength(FParamValuesArray, 1);
    FParamValuesArray[0] := '';
    i := 0;
    Pos := 1;
    while Pos <= Length(VarToStr(AParamValues)) do
    begin
      SetLength(FParamValuesArray, i + 1);
      FParamValuesArray[i] := ExtractFieldName(AParamValues, Pos);
      i := i + 1;
    end;

    InitForm;
  end;
end;

procedure TFormUni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DeinitForm;

  Action := caFree;
end;

procedure TFormUni.InitForm;
begin
    // Get Menu Option for this menu
//    if dmGlobal.qryPositionAccess.Locate('MenuId',vartostr(FParamValuesArray[0]), [loCaseInsensitive]) then
//    begin
//      if dmGlobal.qryPositionAccess.FieldByName('FlagInsert').Asstring = '1' then
//        FMenuOptions.Insert := True
//      else
//        FMenuOptions.Insert := False;
//
//      if dmGlobal.qryPositionAccess.FieldByName('FlagEdit').Asstring = '1' then
//        FMenuOptions.Edit := True
//      else
//        FMenuOptions.Edit := False;
//
//      if dmGlobal.qryPositionAccess.FieldByName('FlagDelete').Asstring = '1' then
//        FMenuOptions.Delete := True
//      else
//        FMenuOptions.Delete := False;
//
//      FMenuOptions.MaxReprint := dmGlobal.qryPositionAccess.FieldByName('MaxReprint').AsInteger;
//    end
//    else
//    begin
      FMenuOptions.Insert := True;
      FMenuOptions.Edit := True;
      FMenuOptions.Delete := True;
      FMenuOptions.MaxReprint := 0;
//    end;
end;

end.







