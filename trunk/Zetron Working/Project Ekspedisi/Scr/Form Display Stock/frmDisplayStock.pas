unit frmDisplayStock;

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
  cxDBLookupEdit, cxLabel, cxDBLabel;

type
  TfmDisplayStock = class(TForm)
    pnlHeader: TPanel;
    btnSearch: TcxButton;
    Panel1: TPanel;
    cgvStock: TcxGridDBTableView;
    cgStockLevel1: TcxGridLevel;
    cgStock: TcxGrid;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevMerek: TcxGridDBTableView;
    cgvPrevMerekMerekId: TcxGridDBColumn;
    cgvPrevMerekMerekCode: TcxGridDBColumn;
    cgvPrevMerekMerekName: TcxGridDBColumn;
    cgvPrevMerekRouteId: TcxGridDBColumn;
    cgvPrevMerekCustomerId: TcxGridDBColumn;
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
    qryStock: TADOQuery;
    dsStock: TDataSource;
    cgvStockStorageLocationId: TcxGridDBColumn;
    cgvStockItemReceiveCode: TcxGridDBColumn;
    cgvStockNo: TcxGridDBColumn;
    cgvStockPackingTransactionCode: TcxGridDBColumn;
    cgvStockQty: TcxGridDBColumn;
    dbeItemReceiveCode: TcxTextEdit;
    procedure btnSearchClick(Sender: TObject);
    procedure cgvStockCellDblClick(Sender: TcxCustomGridTableView;
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
    class function ExecuteForm(var AStorageLocationID : string;
      var AItemReceiveCode : string;
      var ANo: integer;
      var APackingTransactionCode : string;
      var AQty : integer): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplayStock.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplayStock.actOkExecute(Sender: TObject);
begin
  if not qryStock.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayStock.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryStock);
  LockRefresh(dmEkspedisi.qryMerek);
end;

procedure TfmDisplayStock.cgvStockCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryStock.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayStock.btnSearchClick(Sender: TObject);
begin
  inherited;

  qryStock.Close;
  qryStock.Parameters[0].Value := StorageLocationId;
  qryStock.Parameters[1].Value := dbeItemReceiveCode.Text + '%';
  qryStock.Open;

end;

class function TfmDisplayStock.ExecuteForm(var AStorageLocationId : string; var AItemReceiveCode : string;var ANo: integer; var APackingTransactionCode: string; var AQty : integer): TModalResult;
var
  fmDisplayStock: TfmDisplayStock;
begin
  fmDisplayStock := TfmDisplayStock.Create(Application);
  with fmDisplayStock do
  begin
    try
      InitForm;
      storageLocationId := AStorageLocationId;
      qryStock.Close;
      qryStock.Parameters[0].Value := StorageLocationId;
      qryStock.Parameters[1].Value := '%';
      qryStock.Open;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AItemReceiveCode := qryStock.FieldByName('ItemReceiveCode').AsString;
        ANo := qryStock.FieldByName('No').AsInteger;
        APackingTransactionCode := qryStock.FieldByName('PackingTransactionCode').AsString;
        AQty := qryStock.FieldByName('Qty').AsInteger;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplayStock.InitForm;
begin
  OpenIfClose(qryStock);
//  OpenIfClose(dmEkspedisi.qryMerek);
end;

end.
