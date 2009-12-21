unit frmStruktur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, ADODB;

type
  TfmStruktur = class(TFormUniPosition)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
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
    cgPerusahaanLevel1: TcxGridLevel;
    cgDivisi: TcxGrid;
    cgvDivisi: TcxGridDBTableView;
    cgvDivisikodedivisi: TcxGridDBColumn;
    cgvDivisinamadivisi: TcxGridDBColumn;
    cgDivisiLevel1: TcxGridLevel;
    cgDepartemen: TcxGrid;
    cgvDepartemen: TcxGridDBTableView;
    cgvDepartemenkodedepartemen: TcxGridDBColumn;
    cgvDepartemennamadepartemen: TcxGridDBColumn;
    cgvDepartemenurutreport: TcxGridDBColumn;
    cgvDepartemengroupreport: TcxGridDBColumn;
    cgDepartemenLevel1: TcxGridLevel;
  private
    { Private declarations }
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmStruktur: TfmStruktur;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

{ TFormUniPosition1 }

procedure TfmStruktur.InitForm;
begin
  inherited;

  OpenIfClose(dmgeneral.qryPerusahaan, True, False);
  OpenIfClose(dmgeneral.qryDivisi, True, False);
  OpenIfClose(dmgeneral.qryDepartemen, True, False);

end;

end.
