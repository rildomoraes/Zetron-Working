unit frmPhysicalCounter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxDBExtLookupComboBox, cxCalc, untIvPositionDevExpress, cxGrid,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView;

type
  TfmPhysicalCounter = class(TForm)
    cgDisplayResult: TcxGrid;
    cgvDisplayResult: TcxGridDBTableView;
    cgDisplayResultLevel1: TcxGridLevel;
    qryPhysicalCounter: TUniQuery;
    dsPhysicalCounter: TDataSource;
    cgvDisplayResultenginecode: TcxGridDBColumn;
    cgvDisplayResultjobcode: TcxGridDBColumn;
    cgvDisplayResultcounterdate: TcxGridDBColumn;
    cgvDisplayResultshiftcode: TcxGridDBColumn;
    cgvDisplayResultemployeeid: TcxGridDBColumn;
    cgvDisplayResultvaluestart: TcxGridDBColumn;
    cgvDisplayResultvalueend: TcxGridDBColumn;
    qryPrevJobType: TUniQuery;
    dsPrevJobType: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevJobType: TcxGridDBTableView;
    cgvPrevJobTypejobcode: TcxGridDBColumn;
    cgvPrevJobTypejobname: TcxGridDBColumn;
    qryPrevEngine: TUniQuery;
    dsPrevEngine: TDataSource;
    cgvPrevEngine: TcxGridDBTableView;
    cgvPrevEngineenginecode: TcxGridDBColumn;
    cgvPrevEngineenginename: TcxGridDBColumn;
    cgvPrevEngineenginegroupcode: TcxGridDBColumn;
    IvPositionDevExpress1: TIvPositionDevExpress;
    qryPrevEngineJob: TUniQuery;
    procedure qryPhysicalCounterBeforePost(DataSet: TDataSet);
    procedure qryPhysicalCounterNewRecord(DataSet: TDataSet);
  private
    FDate: TDateTime;
    FShiftCode: string;
    procedure InitForm;
  public
    class procedure ExecuteForm(ADate: TDateTime; AShiftCode: string);
  end;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmRegister;

class procedure TfmPhysicalCounter.ExecuteForm(ADate: TDateTime;
  AShiftCode: string);
var
  fmPhysicalCounter: TfmPhysicalCounter;
begin
  fmPhysicalCounter := TfmPhysicalCounter.Create(Application);
  with fmPhysicalCounter do
  begin
    try
      FDate := ADate;
      FShiftCode := AShiftCode;
      InitForm;
      ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmPhysicalCounter.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;

  TcxCalcEditProperties(cgvDisplayResultvaluestart.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvDisplayResultvalueend.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  dmGlobal.InitComponent(Self);

  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(qryPrevEngine);
  OpenIfClose(qryPrevJobType);

  qryPhysicalCounter.Params[0].Value := FDate;
  qryPhysicalCounter.Params[1].Value := FShiftCode;
  OpenIfClose(qryPhysicalCounter);

  // Initialize record set
  OpenIfClose(qryPrevEngineJob);
  qryPrevEngineJob.First;
  while not qryPrevEngineJob.Eof do
  begin
    if not qryPhysicalCounter.Locate('EngineCode;JobCode', VarArrayOf([qryPrevEngineJob.FieldByName('EngineCode').AsString,
      qryPrevEngineJob.FieldByName('JobCode').AsString]), [loCaseInsensitive]) then
    begin
      qryPhysicalCounter.Insert;
      qryPhysicalCounter.FieldByName('EngineCode').AsString := qryPrevEngineJob.FieldByName('EngineCode').AsString;
      qryPhysicalCounter.FieldByName('JobCode').AsString := qryPrevEngineJob.FieldByName('JobCode').AsString;
      qryPhysicalCounter.Post;
    end;
    qryPrevEngineJob.Next;
  end;
end;

procedure TfmPhysicalCounter.qryPhysicalCounterBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPhysicalCounter.qryPhysicalCounterNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CounterDate').AsDateTime := FDate;
  DataSet.FieldByName('ShiftCode').AsString := FShiftCode;
  DataSet.FieldByName('ValueStart').AsInteger := 0;
  DataSet.FieldByName('ValueEnd').AsInteger := 0;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
  DataSet.FieldByName('StatusApprove').AsInteger := 0;
end;

end.
