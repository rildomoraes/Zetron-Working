unit frmMasterJamKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTimeEdit, cxCalc,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxMaskEdit, cxSpinEdit, cxContainer, cxTextEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmMasterJamKerja = class(TFormUniMasterEx)
    Label1: TLabel;
    dbeKodeAbsen: TcxDBTextEdit;
    dbteJamKerjaAwal: TcxDBTimeEdit;
    lbJamKerjaAwal: TLabel;
    Label2: TLabel;
    dbteJamKerjaAkhir: TcxDBTimeEdit;
    dbteJamMulaiAbsen: TcxDBTimeEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbteJamAbsenAkhir: TcxDBTimeEdit;
    dbteJamBatasLembur: TcxDBTimeEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label9: TLabel;
    Label11: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TLabel;
    Label3: TLabel;
    chkAktif: TcxDBCheckBox;
    chkOverday: TcxDBCheckBox;
    Label4: TLabel;
    cgMasterJamKerja: TcxGrid;
    cgvMasterJamKerja: TcxGridDBTableView;
    cgvMasterJamKerjakodejamkerja: TcxGridDBColumn;
    cgvMasterJamKerjajammulaiabsen: TcxGridDBColumn;
    cgvMasterJamKerjajamakhirabsen: TcxGridDBColumn;
    cgvMasterJamKerjajamkerjaawal: TcxGridDBColumn;
    cgvMasterJamKerjajamkerjaakhir: TcxGridDBColumn;
    cgvMasterJamKerjajambataslembur: TcxGridDBColumn;
    cgvMasterJamKerjatoleransiterlambat: TcxGridDBColumn;
    cgvMasterJamKerjajumlahsetengahhari: TcxGridDBColumn;
    cgvMasterJamKerjaoverday: TcxGridDBColumn;
    cgvMasterJamKerjaaktif: TcxGridDBColumn;
    cgMasterJamKerjaLevel1: TcxGridLevel;
    Label12: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMasterJamKerja: TfmMasterJamKerja;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;



{ TFormUniMasterEx1 }

procedure TfmMasterJamKerja.InitForm;
begin
  inherited;
  OpenIfClose(dmGeneral.qryKodeAbsen,true);
  OpenIfClose(dmGeneral.qryMasterJamKerja,true);

  SetReadOnly(cgvMasterJamKerja);

end;

procedure TfmMasterJamKerja.RefreshAll;
begin
  inherited;

end;

end.


