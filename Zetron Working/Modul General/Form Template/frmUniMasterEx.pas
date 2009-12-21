{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniMasterEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDBEditableEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, DB, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TFormUniMasterEx = class(TFormUniDBEditableEx)
    {Form induk untuk master data}
    actPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    btnPrint: TcxButton;
    btnDelete: TcxButton;
    actDelete: TAction;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure actDelete2Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
  protected
    procedure InitForm; override;
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

var
  FormUniMasterEx: TFormUniMasterEx;

implementation

{$R *.dfm}

uses untConstanta, dtmGlobal;

procedure TFormUniMasterEx.actDelete2Execute(Sender: TObject);
begin
  inherited;

  if MessageDlg(ASK_DELETE, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  dsDefault.DataSet.Delete;
end;

procedure TFormUniMasterEx.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if FMenuOptions.Delete=TRUE then
  begin
    if MessageDlg(ASK_DELETE, mtInformation, [mbYes, mbNo], 0) = mrNo then
      Abort;
    dsDefault.DataSet.Delete;
  end
  else
  begin
    showmessage('Anda tidak berhak menghapus data !!!');
    abort;
  end;
end;

procedure TFormUniMasterEx.actPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

constructor TFormUniMasterEx.Create(AOwner: TComponent);
begin
  inherited;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin // indonesia
    btnDelete.Caption := 'Hapus';
    btnDelete.Hint := 'Hapus';
  end;

  dxComponentPrinter1Link1.Component := DefaultGrid;
end;

procedure TFormUniMasterEx.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    actDelete.Enabled := True
  else
    actDelete.Enabled := False;
end;

procedure TFormUniMasterEx.InitForm;
begin
  inherited;
  if FMenuOptions.Insert=false then
  begin
    btnInsert.Enabled:=false;
    btnPost.Enabled:=false;
  end;
  if FMenuOptions.Edit=false then
  begin
    btnEdit.Enabled:=false;
    btnPost.Enabled:=false;
  end;
  if FMenuOptions.Delete=false then
  begin
    btnDelete.Enabled:=false;
  end;
end;

end.








