unit frmDisplaySearchMutasi1;

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
  cxDBLookupEdit, cxCalc, cxCheckBox, dxmdaset, cxCheckGroup, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmDisplaySearchMutasi1 = class(TForm)
    Panel1: TPanel;
    cgvSuppliesReceiveDt: TcxGridDBTableView;
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
    cgvSuppliesReceiveDtNoSJ: TcxGridDBColumn;
    cgvSuppliesReceiveDtNo: TcxGridDBColumn;
    cgvSuppliesReceiveDtQty: TcxGridDBColumn;
    cgvSuppliesReceiveDtP: TcxGridDBColumn;
    cgvSuppliesReceiveDtL: TcxGridDBColumn;
    cgvSuppliesReceiveDtT: TcxGridDBColumn;
    cgvSuppliesReceiveDtBerat: TcxGridDBColumn;
    cgvSuppliesReceiveDtUnit: TcxGridDBColumn;
    cgvSuppliesReceiveDtTotalM3: TcxGridDBColumn;
    cgvSuppliesReceiveDtTotalBerat: TcxGridDBColumn;
    cgvSuppliesReceiveDtKodeBarang: TcxGridDBColumn;
    cgvSuppliesReceiveDtNamaBarang: TcxGridDBColumn;
    cgvSuppliesReceiveDtJumlah: TcxGridDBColumn;
    cgvSuppliesReceiveDtNamaMerek: TcxGridDBColumn;
    cxButton1: TcxButton;
    ActAll: TAction;
    procedure cgvSuppliesReceiveDtCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure dsMemDataDataChange(Sender: TObject; Field: TField);
    procedure ActAllExecute(Sender: TObject);
  private
    procedure InitForm;
    var
      FLokasi : integer;
      FMutasiCode : String;
      FDaftarMuatKapalCode : String;
      FPackingTransactionCode : string;
  public
    { Public declarations }
    class function ExecuteForm(var ALocationId: integer; ADaftarMuatKapalCode,AMutasiCode : string;
            Var ResultData:TDxMemData): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;

procedure TfmDisplaySearchMutasi1.ActAllExecute(Sender: TObject);
var
  i,ARow:integer;
begin
  cgvSuppliesReceiveDt.DataController.GotoFirst;
  for i := 0 to cgvSuppliesReceiveDt.DataController.RowCount - 1 do
  begin
    ARow:=cgvSuppliesReceiveDt.DataController.RecNo;
    memdata.RecNo:=ARow;
    memdata.Edit;
    memdata.FieldByName('jumlah').AsInteger:=memdata.FieldByName('sisa').AsInteger;
    memdata.Post;
    cgvSuppliesReceiveDt.DataController.GotoNext;
  end;
end;

procedure TfmDisplaySearchMutasi1.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplaySearchMutasi1.actOkExecute(Sender: TObject);
begin
  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySearchMutasi1.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevSuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
  memData.CreateFieldsFromDataSet(qryPrevSuppliesReceiveDt);
  memData.LoadFromDataSet(qryPrevSuppliesReceiveDt);
  OpenIfClose(memData);
end;

procedure TfmDisplaySearchMutasi1.cgvSuppliesReceiveDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySearchMutasi1.dsMemDataDataChange(Sender: TObject;
  Field: TField);
begin
  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'Jumlah')=0) and (memData.FieldByName('Jumlah').AsInteger>0) then
   begin
    if memData.FieldByName('Jumlah').AsInteger > memData.FieldByName('Sisa').AsInteger then
     begin
       showmessage('Jumlah yang dimasukkan lebih besar daripada sisa jumlah barang !!!');
       memData.FieldByName('Jumlah').AsInteger := 0;
     end;
   end;

end;

class function TfmDisplaySearchMutasi1.ExecuteForm(Var ALocationID: integer;ADaftarMuatKapalCode,AMutasiCode : string; Var ResultData : TdxMemData): TModalResult;
var
  fmDisplaySearchMutasi1: TfmDisplaySearchMutasi1;
begin
  fmDisplaySearchMutasi1 := TfmDisplaySearchMutasi1.Create(Application);
  with fmDisplaySearchMutasi1 do
  begin
    try
      FLokasi := ALocationId;
      FMutasiCode := AMutasiCode;
      FDaftarMuatKapalCode := ADaftarMuatKapalCode;
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

procedure TfmDisplaySearchMutasi1.InitForm;
begin
  qryPrevSuppliesReceiveDt.Close();
  qryPrevSuppliesReceiveDt.Parameters[0].Value := FLokasi;
  qryPrevSuppliesReceiveDt.Parameters[1].Value := FMutasiCode;
  qryPrevSuppliesReceiveDt.Parameters[2].Value := FDaftarMuatKapalCode;
  if FDaftarMuatKapalCode='%' then
    qryPrevSuppliesReceiveDt.Parameters[3].Value := FDaftarMuatKapalCode
  else
    qryPrevSuppliesReceiveDt.Parameters[3].Value := 'notok';
  OpenIfClose(qryPrevSuppliesReceiveDt);
  memData.CreateFieldsFromDataSet(qryPrevSuppliesReceiveDt);
  memData.LoadFromDataSet(qryPrevSuppliesReceiveDt);
  OpenIfClose(memData);
end;

end.
