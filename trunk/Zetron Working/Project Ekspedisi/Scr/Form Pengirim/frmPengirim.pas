unit frmPengirim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfmPengirim = class(TFormUniMasterEx)
    pnlData: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbeKodePengirim: TcxDBTextEdit;
    dbeNamaPengirim: TcxDBTextEdit;
    dbeAlamat: TcxDBTextEdit;
    dbeTelepon1: TcxDBTextEdit;
    dbeTelepon2: TcxDBTextEdit;
    dbeHandphone: TcxDBTextEdit;
    dbeKeterangan: TcxDBTextEdit;
    cgPengirim: TcxGrid;
    cgvPrevPengirim: TcxGridDBTableView;
    cgPengirimLevel1: TcxGridLevel;
    cgvPrevPengirimPengirimCode: TcxGridDBColumn;
    cgvPrevPengirimPengirimName: TcxGridDBColumn;
    cgvPrevPengirimPengirimAlamat: TcxGridDBColumn;
    cgvPrevPengirimPengirimTelp1: TcxGridDBColumn;
    cgvPrevPengirimPengirimTelp2: TcxGridDBColumn;
    cgvPrevPengirimPengirimHP: TcxGridDBColumn;
    cgvPrevPengirimKeterangan: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmPengirim: TfmPengirim;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TfmPengirim }

procedure TfmPengirim.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryPengirim);
end;

procedure TfmPengirim.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryPengirim);
end;

end.
