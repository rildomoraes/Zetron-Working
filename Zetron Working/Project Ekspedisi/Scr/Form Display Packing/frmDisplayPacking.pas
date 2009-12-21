unit frmDisplayPacking;

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
  cxDBLookupEdit, cxCalc;

type
  TfmDisplayPacking = class(TForm)
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
    cgSuppliesReceiveDtItemReceiveCode: TcxGridDBColumn;
    cgSuppliesReceiveDtNo: TcxGridDBColumn;
    cgSuppliesReceiveDtMerekId: TcxGridDBColumn;
    cgSuppliesReceiveDtSuppliesCode: TcxGridDBColumn;
    cgSuppliesReceiveDtSuppliesName: TcxGridDBColumn;
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
    cgSuppliesReceiveDtqty: TcxGridDBColumn;
    procedure cgSuppliesReceiveDtCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure InitForm;
    var
      FLokasi : integer;
      FRouteId : integer;
      FMerekId : integer;
  public
    { Public declarations }
    class function ExecuteForm(var AItemReceiveCode : string;
      var ANo: integer; var ASuppliesCode : string; var ASuppliesName : string; var ASisa : real;
      ALokasi : integer; ARouteId : integer; AMerekId : integer;
      APackingCode: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;

procedure TfmDisplayPacking.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplayPacking.actOkExecute(Sender: TObject);
begin
  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayPacking.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevSuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
end;

procedure TfmDisplayPacking.cgSuppliesReceiveDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

class function TfmDisplayPacking.ExecuteForm( var AItemReceiveCode : string;var ANo: integer; var ASuppliesCode : string; var ASuppliesName : string; var ASisa : real ; ALokasi : integer; ARouteId : integer; AMerekId : integer; APackingCode:string): TModalResult;
var
  fmDisplayPacking: TfmDisplayPacking;
begin
  fmDisplayPacking := TfmDisplayPacking.Create(Application);
  with fmDisplayPacking do
  begin
    try
      Flokasi:=ALokasi;
      FRouteId:=ARouteId;
      FMerekId:=AMerekId;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AItemReceiveCode := qryPrevSuppliesReceiveDt.FieldByName('ItemRecCode').AsString;
        ANo := qryPrevSuppliesReceiveDt.FieldByName('No').AsInteger;
        ASuppliesCode := qryPrevSuppliesReceiveDt.FieldByName('SuppliesCode').AsString;
        ASuppliesName := qryPrevSuppliesReceiveDt.FieldByName('SuppliesName').AsString;
        ASisa := qryPrevSuppliesReceiveDt.FieldByName('qtyOutStanding').Asfloat;
//        APackingCode := qryPrevSuppliesReceiveDt.FieldByName('P)
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplayPacking.InitForm;
begin
  qryPrevSuppliesReceiveDt.Close;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('lokasi').Value :=FLokasi;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('RouteId').Value := FRouteId;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('MerekId').Value := FMerekId;
  qryPrevSuppliesReceiveDt.Open;
end;

end.
