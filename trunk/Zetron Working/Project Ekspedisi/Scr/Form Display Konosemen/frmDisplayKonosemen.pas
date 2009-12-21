unit frmDisplayKonosemen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, ADODB,
  cxDBExtLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLabel, cxDBLabel, cxCalc;

type
  TfmDisplayKonosemen = class(TForm)
    pnlHeader: TPanel;
    btnSearch: TcxButton;
    Panel1: TPanel;
    cgvKonosemenDt: TcxGridDBTableView;
    cgKonosemenLevel1: TcxGridLevel;
    cgKonosemen: TcxGrid;
    Panel2: TPanel;
    Bevel1: TBevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ActionList2: TActionList;
    actCancel: TAction;
    actOk: TAction;
    actRefresh: TAction;
    IvPositionStandard2: TIvPositionStandard;
    IvPositionDevExpress2: TIvPositionDevExpress;
    Label2: TLabel;
    dbeItemReceiveCode: TcxTextEdit;
    qryKonosemenDt: TADOQuery;
    dsKonosemenDt: TDataSource;
    cgvKonosemenDtKonosemenCode: TcxGridDBColumn;
    cgvKonosemenDtKonosemenNo: TcxGridDBColumn;
    cgvKonosemenDtItemReceiveCode: TcxGridDBColumn;
    cgvKonosemenDtNo: TcxGridDBColumn;
    cgvKonosemenDtPrice: TcxGridDBColumn;
    cgvKonosemenDtPriceFra: TcxGridDBColumn;
    cgvKonosemenDtModeCY: TcxGridDBColumn;
    cgvKonosemenDtTotalAmount: TcxGridDBColumn;
    cgvKonosemenDtQty: TcxGridDBColumn;
    cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn;
    cgvKonosemenDtPricePacking: TcxGridDBColumn;
    cgvKonosemenDtPricePort: TcxGridDBColumn;
    cgvKonosemenDtTarifTypeId: TcxGridDBColumn;
    cgvKonosemenDtBerat: TcxGridDBColumn;
    cgvKonosemenDtL: TcxGridDBColumn;
    cgvKonosemenDtP: TcxGridDBColumn;
    cgvKonosemenDtSuppliesCode: TcxGridDBColumn;
    cgvKonosemenDtSuppliesName: TcxGridDBColumn;
    cgvKonosemenDtT: TcxGridDBColumn;
    cgvKonosemenDtTotalBerat: TcxGridDBColumn;
    cgvKonosemenDtTotalM3: TcxGridDBColumn;
    cgvKonosemenDtUnitMeasureId: TcxGridDBColumn;
    cgvPrevLocation: TcxGridDBTableView;
    cgvPrevLocationStorageLocationId: TcxGridDBColumn;
    cgvPrevLocationStorageLocationCode: TcxGridDBColumn;
    cgvPrevLocationStorageLocationName: TcxGridDBColumn;
    cgvPrevLocationFlagShipStorage: TcxGridDBColumn;
    cgvKonosemenDtKonosemenDate: TcxGridDBColumn;
    procedure btnSearchClick(Sender: TObject);
    procedure cgvKonosemenDtCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure InitForm;
  public
    { Public declarations }
      var storageLocationId : string;
    class function ExecuteForm(var AKonosemenCode : string) : TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplayKonosemen.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplayKonosemen.actOkExecute(Sender: TObject);
begin
  if not qryKonosemenDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayKonosemen.actRefreshExecute(Sender: TObject);
begin

  LockRefresh(qryKonosemenDt);
  LockRefresh(dmEkspedisi.qryStorageLocation);
end;

procedure TfmDisplayKonosemen.cgvKonosemenDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryKonosemenDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayKonosemen.btnSearchClick(Sender: TObject);
begin
  inherited;

  qryKonosemenDt.Close;
  qryKonosemenDt.Parameters[0].Value := '%' + dbeItemReceiveCode.Text + '%';
  qryKonosemenDt.Open;

end;

class function TfmDisplayKonosemen.ExecuteForm(var AKonosemenCode : string): TModalResult;
var
  fmDisplayKonosemen: TfmDisplayKonosemen;
begin
  fmDisplayKonosemen := TfmDisplayKonosemen.Create(Application);
  with fmDisplayKonosemen do
  begin
    try
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AKonosemenCode := qryKonosemenDt.FieldByName('KonosemenCode').AsString;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplayKonosemen.InitForm;
begin
  OpenIfClose(qryKonosemenDt);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
end;

end.
