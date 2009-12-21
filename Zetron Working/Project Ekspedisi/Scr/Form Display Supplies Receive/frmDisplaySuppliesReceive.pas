unit frmDisplaySuppliesReceive;

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
  cxDBLookupEdit;

type
  TfmDisplaySuppliesReceive = class(TForm)
    pnlHeader: TPanel;
    Label1: TLabel;
    dbeNoSuratJalan: TcxTextEdit;
    dbeSuppliesCode: TcxTextEdit;
    Label2: TLabel;
    dbeSuppliesName: TcxTextEdit;
    Label3: TLabel;
    btnSearch: TcxButton;
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
    Label4: TLabel;
    dbeItemReceiveCode: TcxTextEdit;
    cgSuppliesReceiveDtItemReceiveCode: TcxGridDBColumn;
    cgSuppliesReceiveDtNo: TcxGridDBColumn;
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
    procedure btnSearchClick(Sender: TObject);
    procedure cgSuppliesReceiveDtCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure InitForm;
  public
    { Public declarations }
    class function ExecuteForm(var AItemReceiveCode : string;
      var ANo: integer; var ASuppliesCode : string; var ASuppliesName : string): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplaySuppliesReceive.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplaySuppliesReceive.actOkExecute(Sender: TObject);
begin
  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySuppliesReceive.actRefreshExecute(Sender: TObject);
begin
  LockRefresh(qryPrevSuppliesReceiveDt);
  LockRefresh(dmEkspedisi.qryMerek);
end;

procedure TfmDisplaySuppliesReceive.cgSuppliesReceiveDtCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryPrevSuppliesReceiveDt.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplaySuppliesReceive.btnSearchClick(Sender: TObject);
begin
  inherited;

  qryPrevSuppliesReceiveDt.Close;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('ItemReceiveCode').Value := dbeItemReceiveCode.Text + '%' ;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('NoSuratJalan').Value := dbeNoSuratJalan.Text +'%' ;
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('SuppliesCode').Value := dbeSuppliesCode.Text + '%';
  qryPrevSuppliesReceiveDt.Parameters.ParamByName('SuppliesName').Value := dbeSuppliesName.Text + '%';
  qryPrevSuppliesReceiveDt.Open;

end;

class function TfmDisplaySuppliesReceive.ExecuteForm( var AItemReceiveCode : string;var ANo: integer; var ASuppliesCode : string; var ASuppliesName : string): TModalResult;
var
  fmDisplaySuppliesReceive: TfmDisplaySuppliesReceive;
begin
  fmDisplaySuppliesReceive := TfmDisplaySuppliesReceive.Create(Application);
  with fmDisplaySuppliesReceive do
  begin
    try
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AItemReceiveCode := qryPrevSuppliesReceiveDt.FieldByName('ItemRecCode').AsString;
        ANo := qryPrevSuppliesReceiveDt.FieldByName('No').AsInteger;
        ASuppliesCode := qryPrevSuppliesReceiveDt.FieldByName('SuppliesCode').AsString;
        ASuppliesName := qryPrevSuppliesReceiveDt.FieldByName('SuppliesName').AsString;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplaySuppliesReceive.InitForm;
begin
  OpenIfClose(qryPrevSuppliesReceiveDt);
//  OpenIfClose(dmEkspedisi.qryMerek);
end;

end.
