unit frmDisplayBeritaAcara;

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
  TfmDisplayBeritaAcara = class(TForm)
    pnlHeader: TPanel;
    btnSearch: TcxButton;
    Panel1: TPanel;
    cgvBeritaAcaraDt: TcxGridDBTableView;
    cgBeritaAcaraLevel1: TcxGridLevel;
    cgBeritaAcara: TcxGrid;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevStorageLocation: TcxGridDBTableView;
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
    dbeBeritaAcaraCode: TcxTextEdit;
    qryBeritaAcaraDt: TADOQuery;
    dsBeritaAcaraDt: TDataSource;
    cgvBeritaAcaraDtBeritaAcaraCode: TcxGridDBColumn;
    cgvBeritaAcaraDtSuppliesCode: TcxGridDBColumn;
    cgvBeritaAcaraDtSuppliesName: TcxGridDBColumn;
    cgvBeritaAcaraDtStorageLocationId: TcxGridDBColumn;
    cgvBeritaAcaraDtQty: TcxGridDBColumn;
    cgvBeritaAcaraDtQtyKonosemen: TcxGridDBColumn;
    cgvBeritaAcaraDtQtySelisih: TcxGridDBColumn;
    cgvBeritaAcaraDtQtyOutStanding: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn;
    cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn;
    cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn;
    procedure btnSearchClick(Sender: TObject);
    procedure cgvBeritaAcaraDtCellDblClick(Sender: TcxCustomGridTableView;
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
    class function ExecuteForm(var ABeritaAcaraCode : string;
        var ASuppliesCode: string;
        var ASuppliesName: string;
        var AQty : integer) : TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplayBeritaAcara.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplayBeritaAcara.actOkExecute(Sender: TObject);
begin
  if not qryBeritaAcaraDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayBeritaAcara.actRefreshExecute(Sender: TObject);
begin

  LockRefresh(qryBeritaAcaraDt);
  LockRefresh(dmEkspedisi.qryStorageLocation);
end;

procedure TfmDisplayBeritaAcara.cgvBeritaAcaraDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryBeritaAcaraDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayBeritaAcara.btnSearchClick(Sender: TObject);
begin
  inherited;

  qryBeritaAcaraDt.Close;
  qryBeritaAcaraDt.Parameters[0].Value := '%' + dbeBeritaAcaraCode.Text + '%';
  qryBeritaAcaraDt.Open;

end;

class function TfmDisplayBeritaAcara.ExecuteForm(var ABeritaAcaraCode : string;var ASuppliesCode: string; var ASuppliesName: string; var AQty : integer): TModalResult;
var
  fmDisplayBeritaAcara: TfmDisplayBeritaAcara;
begin
  fmDisplayBeritaAcara := TfmDisplayBeritaAcara.Create(Application);
  with fmDisplayBeritaAcara do
  begin
    try
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        ABeritaAcaraCode := qryBeritaAcaraDt.FieldByName('BeritaAcaraCode').AsString;
        ASuppliesCode := qryBeritaAcaraDt.FieldByName('SuppliesCode').AsString;
        ASuppliesName := qryBeritaAcaraDt.FieldByName('SuppliesName').AsString;
        AQty := qryBeritaAcaraDt.FieldByName('Qty').AsInteger;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplayBeritaAcara.InitForm;
begin
  OpenIfClose(qryBeritaAcaraDt);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
end;

end.
