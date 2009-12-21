unit frmGroupShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox,
  cxColorComboBox, cxDBExtLookupComboBox, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxDBEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmGroupShift = class(TFormUniMasterEx)
    Panel1: TPanel;
    dbeKodeGroupShifId: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbeNamaGroupShifId: TcxDBTextEdit;
    cgGroupShiftDt1: TcxGrid;
    cgvGroupShiftDt1: TcxGridDBTableView;
    cgvGroupShiftDt1kodegroupshiftid: TcxGridDBColumn;
    cgvGroupShiftDt1shift: TcxGridDBColumn;
    cgvGroupShiftDt1warna: TcxGridDBColumn;
    cgGroupShiftDt1Level1: TcxGridLevel;
    cgGroupShiftDt2: TcxGrid;
    cgvGroupShiftDt2: TcxGridDBTableView;
    cgvGroupShiftDt2kodehari: TcxGridDBColumn;
    cgvGroupShiftDt2hari: TcxGridDBColumn;
    cgvGroupShiftDt2kodejamkerja: TcxGridDBColumn;
    cgvGroupShiftDt2spl: TcxGridDBColumn;
    cgvGroupShiftDt2kodegroupshiftid: TcxGridDBColumn;
    cgvGroupShiftDt2shift: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerja: TcxGridDBTableView;
    cgvGroupShiftDt2MasterJamKerjakodejamkerja: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajamkerjaawal: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajamkerjaakhir: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjaoverday: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjaaktif: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjatoleransiterlambat: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajumlahsetengahhari: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajambataslembur: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajammulaiabsen: TcxGridDBColumn;
    cgvGroupShiftDt2MasterJamKerjajamakhirabsen: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cgGroupShiftDt2Level1: TcxGridLevel;
    cgGroupShift: TcxGrid;
    cgvGroupShift: TcxGridDBTableView;
    cgvGroupShiftkodegroupshiftid: TcxGridDBColumn;
    cgGroupShiftLevel1: TcxGridLevel;
    cgvGroupShiftDt1modevalidasi: TcxGridDBColumn;
    cgvGroupShiftNAMAGROUPSHIFT: TcxGridDBColumn;
    Label9: TLabel;
    Label3: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupShift: TfmGroupShift;

implementation

{$R *.dfm}
uses dtmgeneral,untProcedure,untConstanta;

{ TFormUniMasterEx1 }

procedure TfmGroupShift.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryPerusahaan,true);
  OpenIfClose(dmGeneral.qryMasterJamKerja,true);
  OpenIfClose(dmGeneral.qryGroupShiftHd,true);
  OpenIfClose(dmGeneral.qryGroupShiftDt1,true);
  OpenIfClose(dmGeneral.qryGroupShiftDt2,true);

  SetReadOnly(cgvGroupShift);

end;

procedure TfmGroupShift.RefreshAll;
begin
  inherited;


end;

end.
