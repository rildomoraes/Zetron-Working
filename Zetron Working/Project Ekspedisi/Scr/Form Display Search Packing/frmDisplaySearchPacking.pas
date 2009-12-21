unit frmDisplaySearchPacking;

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
  cxDBLookupEdit, cxCalc, cxCheckBox, dxmdaset, cxCheckGroup;

type
  TfmDisplaySearchPacking = class(TForm)
    Panel1: TPanel;
    cgSuppliesReceiveDt: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryPrevSuppliesReceiveDt: TADOQuery;
    dsPrevSuppliesReceiveDt: TDataSource;
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
    memData: TdxMemData;
    dsMemData: TDataSource;
    cgvPrevMerek2: TcxGridDBTableView;
    cgvPrevMerek2MerekId: TcxGridDBColumn;
    cgvPrevMerek2MerekCode: TcxGridDBColumn;
    cgvPrevMerek2MerekName: TcxGridDBColumn;
    cgvPrevMerek2RouteId: TcxGridDBColumn;
    cgvPrevMerek2CustomerId: TcxGridDBColumn;
    cgSuppliesReceiveDtNoSJ: TcxGridDBColumn;
    cgSuppliesReceiveDtKodeBarang: TcxGridDBColumn;
    cgSuppliesReceiveDtNamaBarang: TcxGridDBColumn;
    cgSuppliesReceiveDtSisa: TcxGridDBColumn;
    cgSuppliesReceiveDtMerekName: TcxGridDBColumn;
    cgSuppliesReceiveDtNo: TcxGridDBColumn;
    cgSuppliesReceiveDtJumlah: TcxGridDBColumn;
    cgSuppliesReceiveDtP: TcxGridDBColumn;
    cgSuppliesReceiveDtL: TcxGridDBColumn;
    cgSuppliesReceiveDtT: TcxGridDBColumn;
    cgSuppliesReceiveDtBerat: TcxGridDBColumn;
    cgSuppliesReceiveDtTotalM3: TcxGridDBColumn;
    cgSuppliesReceiveDtTotalBerat: TcxGridDBColumn;
    cgSuppliesReceiveDtUnitMeasure: TcxGridDBColumn;
    cgSuppliesReceiveDtJumPacking: TcxGridDBColumn;
    cgSuppliesReceiveDtTotPacking: TcxGridDBColumn;
    procedure cgSuppliesReceiveDtCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure dsMemDataDataChange(Sender: TObject; Field: TField);
  private
    procedure InitForm;
    var
      FLokasi : integer;
      FMerekId : integer;
      FRuteId : integer;
      FPackingTransactionCode : string;
      FQty : integer;
  public
    { Public declarations }
    class function ExecuteForm(var AMerekId, ALocationId,ARuteId : integer;
            APackingTransactionCode : string;AQty:integer;
            Var ResultData:TDxMemData): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;

procedure TfmDisplaySearchPacking.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplaySearchPacking.actOkExecute(Sender: TObject);
begin
  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySearchPacking.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevSuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
  memData.CreateFieldsFromDataSet(qryPrevSuppliesReceiveDt);
  memData.LoadFromDataSet(qryPrevSuppliesReceiveDt);
  OpenIfClose(memData);
end;

procedure TfmDisplaySearchPacking.cgSuppliesReceiveDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySearchPacking.dsMemDataDataChange(Sender: TObject;
  Field: TField);
begin
  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'Jumlah')=0) and (memData.FieldByName('Jumlah').AsInteger>0) then
   begin
    if memData.FieldByName('Jumlah').AsInteger*memData.FieldByName('JumPacking').AsInteger > memData.FieldByName('Sisa').AsInteger then
     begin
       showmessage('Jumlah yang dimasukkan lebih besar daripada sisa jumlah barang !!!');
       memData.FieldByName('Jumlah').AsInteger := 0;
       memData.FieldByName('totpacking').AsInteger :=memData.FieldByName('Jumlah').AsInteger*memData.FieldByName('JumPacking').AsInteger;
     end
     else
       memData.FieldByName('totpacking').AsInteger :=memData.FieldByName('Jumlah').AsInteger*memData.FieldByName('JumPacking').AsInteger;
   end;
end;

class function TfmDisplaySearchPacking.ExecuteForm(Var AMerekId, ALocationID, ARuteId : integer; APackingTransactionCode : string; AQty:integer; Var ResultData : TdxMemData): TModalResult;
var
  fmDisplaySearchPacking: TfmDisplaySearchPacking;
begin
  fmDisplaySearchPacking := TfmDisplaySearchPacking.Create(Application);
  with fmDisplaySearchPacking do
  begin
    try
      FMerekId := AMerekId;
      FLokasi := ALocationId;
      FRuteId := ARuteId;
      FPackingTransactionCode := APackingTransactionCode;
      FQty:=AQty;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        ResultData.CreateFieldsFromDataSet(memData);
        ResultData.LoadFromDataSet(memData);
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplaySearchPacking.InitForm;
begin
  qryPrevSuppliesReceiveDt.Close();
  qryPrevSuppliesReceiveDt.Parameters[0].Value := FQty;
  qryPrevSuppliesReceiveDt.Parameters[1].Value := FMerekId;
  qryPrevSuppliesReceiveDt.Parameters[2].Value := FLokasi;
  qryPrevSuppliesReceiveDt.Parameters[3].Value := FRuteId;
  qryPrevSuppliesReceiveDt.Parameters[4].Value := FPackingTransactionCode;
  OpenIfClose(qryPrevSuppliesReceiveDt);
  memData.CreateFieldsFromDataSet(qryPrevSuppliesReceiveDt);
  memData.LoadFromDataSet(qryPrevSuppliesReceiveDt);
  OpenIfClose(memData);
end;

end.
