unit dtmAccounting;

interface

uses
  SysUtils, Classes, Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox,
  cxDBExtLookupComboBox, ADODB, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TdmAccounting = class(TDataModule)
    gvrAccounting: TcxGridViewRepository;
    cgvPrevCOA: TcxGridDBTableView;
    qryCOA: TADOQuery;
    dsPrevCOA: TDataSource;
    cgvPrevCOACOAId: TcxGridDBColumn;
    cgvPrevCOACOAIdParent: TcxGridDBColumn;
    cgvPrevCOACOACode: TcxGridDBColumn;
    cgvPrevCOACOAName: TcxGridDBColumn;
    cgvPrevCOAStatusType: TcxGridDBColumn;
    cgvPrevCOAParent: TcxGridDBTableView;
    cgvPrevCOAParentCOAId: TcxGridDBColumn;
    cgvPrevCOAParentCOACode: TcxGridDBColumn;
    cgvPrevCOAParentCOAName: TcxGridDBColumn;
    qryPrevCOAParent: TADOQuery;
    dsPrevCOAParent: TDataSource;
    procedure qryCOAAfterPost(DataSet: TDataSet);
    procedure qryCOANewRecord(DataSet: TDataSet);
    procedure qryCOABeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAccounting: TdmAccounting;

implementation

{$R *.dfm}

uses dtmGlobal, untProcedure, untConstanta;

procedure TdmAccounting.qryCOAAfterPost(DataSet: TDataSet);
begin
  LockRefresh(qryPrevCOAParent, True);
end;

procedure TdmAccounting.qryCOABeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('COAId').AsInteger = DataSet.FieldByName('COAIdParent').AsInteger then
  begin
    MessageDlg(MSG_INVALID_COA_ID_PARENT, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmAccounting.qryCOANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('StatusType').AsInteger := 0; // Asset
end;

end.
