unit frmDisplayMutasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  cxButtons, ExtCtrls, ADODB;

type
  TfmDisplayMutasi = class(TFormUniDisplay)
    Panel1: TPanel;
    cgvDisplayMutasi: TcxGridDBTableView;
    cgDisplayMutasiLevel1: TcxGridLevel;
    cgDisplayMutasi: TcxGrid;
    Label1: TLabel;
    dsDefault: TDataSource;
    Label2: TLabel;
    lcbNoPeg: TcxExtLookupComboBox;
    lcbNama: TcxExtLookupComboBox;
    cgvDisplayMutasitglmulai: TcxGridDBColumn;
    cgvDisplayMutasikodeperusahaan: TcxGridDBColumn;
    cgvDisplayMutasikodedivisi: TcxGridDBColumn;
    cgvDisplayMutasikodedepartemen: TcxGridDBColumn;
    cgvDisplayMutasikodeoutsourcing: TcxGridDBColumn;
    cgvDisplayMutasikodejabatan: TcxGridDBColumn;
    cgvDisplayMutasikodestatus: TcxGridDBColumn;
    cgvDisplayMutasinamaperusahaan: TcxGridDBColumn;
    cgvDisplayMutasinamadivisi: TcxGridDBColumn;
    cgvDisplayMutasinamadepartemen: TcxGridDBColumn;
    cgvDisplayMutasinamaoutsourcing: TcxGridDBColumn;
    cgvDisplayMutasinamajabatan: TcxGridDBColumn;
    cgvDisplayMutasinamastatus: TcxGridDBColumn;
    cgvDisplayMutasinoreg: TcxGridDBColumn;
    cgvDisplayMutasiketerangan: TcxGridDBColumn;
    qryDisplayMutasi: TADOQuery;
    procedure lcbNamaPropertiesEditValueChanged(Sender: TObject);
    procedure lcbNoPegPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplayMutasi: TfmDisplayMutasi;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, dtmShare,DateUtils;

procedure TfmDisplayMutasi.InitForm;
begin
  inherited;
  OpenIfClose(dmgeneral.qryPrevPegawai,False,True);
  OpenIfClose(qryDisplayMutasi,False,True);
  SetReadOnly(cgvDisplayMutasi);
end;

procedure TfmDisplayMutasi.lcbNamaPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lcbNoPeg.EditValue:=lcbNama.EditValue;
  qryDisplayMutasi.Parameters[0].Value:=lcbNoPeg.EditValue;
  LockRefresh(qryDisplayMutasi,True);
end;

procedure TfmDisplayMutasi.lcbNoPegPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lcbNama.EditValue:=lcbNoPeg.EditValue;
  qryDisplayMutasi.Parameters[0].Value:=lcbNoPeg.EditValue;
  LockRefresh(qryDisplayMutasi,True);
end;

procedure TfmDisplayMutasi.RefreshAll;
begin
  inherited;
  LockRefresh(dmgeneral.qryPrevPegawai,True);
end;

end.
