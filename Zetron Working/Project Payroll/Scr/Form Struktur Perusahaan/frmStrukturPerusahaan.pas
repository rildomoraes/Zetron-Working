unit frmStrukturPerusahaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, untIvPositionDevExpress, untIvPositionStandard,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxImage, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, 
  ExtCtrls, cxClasses, cxGridLevel, cxSplitter, cxDBEdit, cxHyperLinkEdit,
  cxContainer, cxTextEdit, StdCtrls, ADODB, dxDockControl, dxDockPanel, Menus,
  cxLookAndFeelPainters, cxGridCardView, cxGridDBCardView, ActnList, cxButtons,
  cxDBExtLookupComboBox;

type
  TfmStrukturPerusahaan = class(TForm)
    dsPerusahaan: TDataSource;
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    dxDockingManager1: TdxDockingManager;
    dxDockSite1: TdxDockSite;
    dpPerusahaan: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dpDivisi: TdxDockPanel;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    dpDepartemen: TdxDockPanel;
    pnlButton: TPanel;
    shpToolbarBackground: TShape;
    btnRefresh: TcxButton;
    btnCancel: TcxButton;
    aclHeader: TActionList;
    actRefresh: TAction;
    actClose: TAction;
    cgPerusahaanLevel1: TcxGridLevel;
    cgPerusahaan: TcxGrid;
    cgvPerusahaan: TcxGridDBCardView;
    cgvPerusahaankodeperusahaan: TcxGridDBCardViewRow;
    cgvPerusahaannamaperusahaan: TcxGridDBCardViewRow;
    cgvPerusahaanalamat1: TcxGridDBCardViewRow;
    cgvPerusahaanalamat2: TcxGridDBCardViewRow;
    cgvPerusahaankota: TcxGridDBCardViewRow;
    cgvPerusahaankodepos: TcxGridDBCardViewRow;
    cgvPerusahaanphone: TcxGridDBCardViewRow;
    cgvPerusahaanfax: TcxGridDBCardViewRow;
    cgvPerusahaannpwp: TcxGridDBCardViewRow;
    cgvPerusahaancorebusiness: TcxGridDBCardViewRow;
    cgvPerusahaandirector: TcxGridDBCardViewRow;
    cgvDivisi: TcxGridDBTableView;
    cgDivisiLevel1: TcxGridLevel;
    cgDivisi: TcxGrid;
    cgvDepartemen: TcxGridDBTableView;
    cgDepartemenLevel1: TcxGridLevel;
    cgDepartemen: TcxGrid;
    dsDivisi: TDataSource;
    dsDepartmen: TDataSource;
    cgvDepartemenkodedepartemen: TcxGridDBColumn;
    cgvDepartemenkodedivisi: TcxGridDBColumn;
    cgvDepartemennamadepartemen: TcxGridDBColumn;
    cgvDivisikodedivisi: TcxGridDBColumn;
    cgvDivisinamadivisi: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCloseExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
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
  fmStrukturPerusahaan: TfmStrukturPerusahaan;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{$R *.dfm}

procedure TfmStrukturPerusahaan.actCloseExecute(Sender: TObject);
begin
   Close;
end;

procedure TfmStrukturPerusahaan.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmStrukturPerusahaan.DeinitForm;
begin
  // Refresh link preview
  LockRefreshIfOpen(Application, dmGeneral.dtsPerusahaan, False);
  LockRefreshIfOpen(Application, dmGeneral.dtsDivisi, False);
  LockRefreshIfOpen(Application, dmGeneral.dtsPrevDepartemen, False);
end;

class procedure TfmStrukturPerusahaan.ExecuteForm;
begin
  with fmStrukturPerusahaan do
  begin
    if not IsMDIChildAlreadyCreated(Application.MainForm, Self) then
    begin
      Application.CreateForm(Self, fmStrukturPerusahaan);
      InitForm;
    end;
  end;
end;

procedure TfmStrukturPerusahaan.feSetupButton1DataSetRefresh1Execute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmStrukturPerusahaan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsAllDatasetAlreadyPost(Self) then
  begin
    DeinitForm;
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TfmStrukturPerusahaan.InitForm;
begin
  dmGlobal.InitFormComponent(Self);

  OpenIfClose(Application, dmGeneral.dtsDivisi, True, False);
  OpenIfClose(Application, dmGeneral.dtsPerusahaan, True, False);
  OpenIfClose(Application, dmGeneral.dtsDivisi, True, False);
  OpenIfClose(Application, dmGeneral.dtsPrevDepartemen, True, False);
end;

procedure TfmStrukturPerusahaan.RefreshAll;
begin
  LockRefresh(Application, dmGeneral.dtsPerusahaan, 'KodePerusahaan', False);
  LockRefresh(Application, dmGeneral.dtsDivisi, 'KodeDivisi', False);
  LockRefresh(Application, dmGeneral.dtsPrevDepartemen, 'KodeDepartemen', False);
end;

end.








