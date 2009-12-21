unit frmJamKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, untIvPositionDevExpress, untIvPositionStandard,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid,  cxClasses,
  cxGridLevel, cxSplitter, cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  ExtCtrls, ADODB, dxDockControl, dxDockPanel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxDockControlPainter;

type
  TfmJamKerja = class(TForm)
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    feSetupButton1: TfeSetupButton;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dpExplorer: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockingManager1: TdxDockingManager;
    cgJamKerja: TcxGrid;
    cgvJamKerja: TcxGridDBTableView;
    cgJamKerjaLevel1: TcxGridLevel;
    cgvJamKerjakodehari: TcxGridDBColumn;
    cgvJamKerjashift: TcxGridDBColumn;
    cgvJamKerjanamahari: TcxGridDBColumn;
    dxDockPanel1: TdxDockPanel;
    Label1: TLabel;
    dxDockPanel2: TdxDockPanel;
    dxVertContainerDockSite2: TdxVertContainerDockSite;
    cgJamKerja1: TcxGrid;
    cgvJamKerja1: TcxGridDBTableView;
    cgJamKerja1Level1: TcxGridLevel;
    cgvJamKerja1kodehari: TcxGridDBColumn;
    cgvJamKerja1shift: TcxGridDBColumn;
    cgvJamKerja1kodeperusahaan: TcxGridDBColumn;
    cgvJamKerjakodeperusahaan: TcxGridDBColumn;
    dbeKodePerusahaan: TcxExtLookupComboBox;
    dsJamKerja: TDataSource;
    Label2: TLabel;
    dbeKodeShift: TcxExtLookupComboBox;
    cgvJamKerja1kodejamkerja: TcxGridDBColumn;
    cgvJamKerjakodejamkerja: TcxGridDBColumn;
    cgvJamKerjaAkhir: TcxGridDBColumn;
    cgvJamKerjaOverday: TcxGridDBColumn;
    cgvJamKerjaAktif: TcxGridDBColumn;
    cgvJamKerjaAwal: TcxGridDBColumn;
    procedure dbeKodePerusahaanPropertiesEditValueChanged(Sender: TObject);
    procedure dsJamKerjaStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure feSetupButton1ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure feSetupButton1DataSetRefresh1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;
  public
    { Public declarations }
    class procedure ExecuteForm;
  end;

var
  fmJamKerja: TfmJamKerja;
  
implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{$R *.dfm}

procedure TfmJamKerja.InitForm;
begin
  dmGlobal.InitComponent(Self);

  OpenIfClose(Application,dmGeneral.qryPerusahaan,true);
  OpenIfClose(Application,dmGeneral.qryShift,true);
  OpenIfClose(Application,dmGeneral.qryMasterJamKerja,true);
  OpenIfClose(Application,dmGeneral.qryJamKerja,true);

  SetReadOnly(cgvJamKerja);
  SetActionDataSource(feSetupButton1.ActionList1,dsJamKerja);
end;

procedure TfmJamKerja.dbeKodePerusahaanPropertiesEditValueChanged(
  Sender: TObject);
begin
  dmGeneral.qryJamKerja.close;
  dmGeneral.qryJamKerja.Params[0].value:=dmGeneral.qryPerusahaan.FieldByName('kodeperusahaan').asstring;
  dmGeneral.qryJamKerja.Params[1].value:=dmGeneral.qryShift.FieldByName('shift').asstring;
  dmGeneral.qryJamKerja.open;
end;

procedure TfmJamKerja.DeinitForm;
begin
  // Refresh link preview
  LockRefreshIfOpen(Application, dmGeneral.qryJamKerja);
end;

procedure TfmJamKerja.dsJamKerjaStateChange(Sender: TObject);
begin
  if dmGeneral.qryJamKerja.State in [dsinsert] then
  begin
    if dbeKodePerusahaan.EditValue<>null then
       dmGeneral.qryJamKerja.FieldByName('kodeperusahaan').asstring:=dbeKodePerusahaan.EditValue
    else
    begin
      showmessage('Kode Perusahaan Diisi Dulu !!!');
      dmGeneral.qryJamKerja.Cancel;
    end;
  end;
end;

class procedure TfmJamKerja.ExecuteForm;
begin
  with fmJamKerja do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmJamKerja);
      InitForm;
    end
    else
    begin
      WindowState := wsNormal;
      BringToFront;
    end;
  end;
end;

procedure TfmJamKerja.RefreshAll;
begin
  LockRefresh(Application, dmgeneral.qryJamKerja, 'kodeperusahaan');
  LockRefresh(Application, dmgeneral.qryShift, 'shift');
end;

procedure TfmJamKerja.feSetupButton1ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = feSetupButton1.DataSetInsert1)
    or (Action = feSetupButton1.DataSetEdit1) then
  begin
    dbeKodePerusahaan.SetFocus;
  end;
  feSetupButton1.ActionList1Execute(Action, Handled);
end;

procedure TfmJamKerja.feSetupButton1DataSetRefresh1Execute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmJamKerja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

end.



