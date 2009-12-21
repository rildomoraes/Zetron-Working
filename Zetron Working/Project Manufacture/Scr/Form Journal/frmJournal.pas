unit frmJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxDockControlPainter,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, dxmdaset, DateUtils;

type
  TfmJournal = class(TFormUniTransactionEx)
    pnlHeader: TPanel;
    pnlDetail: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cgJournalDt: TcxGrid;
    cgvJournalDt: TcxGridDBTableView;
    cgJournalDtLevel1: TcxGridLevel;
    dbeJournalDate: TcxDBDateEdit;
    dxMemData1: TdxMemData;
    qryJournalDt: TADOQuery;
    dsJournalDt: TDataSource;
    cgvJournalDtJournalId: TcxGridDBColumn;
    cgvJournalDtCOAId: TcxGridDBColumn;
    cgvJournalDtNo: TcxGridDBColumn;
    cgvJournalDtDescription: TcxGridDBColumn;
    cgvJournalDtDebit: TcxGridDBColumn;
    cgvJournalDtCredit: TcxGridDBColumn;
    dbeJournalId: TcxDBTextEdit;
    qryJournalHd: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    qryPrevCOA: TADOQuery;
    dsPrevCOA: TDataSource;
    cgvPrevCOA: TcxGridDBTableView;
    cgvPrevCOACOAId: TcxGridDBColumn;
    cgvPrevCOACOAIdParent: TcxGridDBColumn;
    cgvPrevCOACOACode: TcxGridDBColumn;
    cgvPrevCOACOAName: TcxGridDBColumn;
    cgvPrevCOAStatusType: TcxGridDBColumn;
    cgvPrevCOAGroupAcc: TcxGridDBColumn;
    Button1: TButton;
    dsInsertDt: TDataSource;
    procedure qryJournalHdBeforePost(DataSet: TDataSet);
    procedure dxMemData1NewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmJournal: TfmJournal;

implementation
 uses  untProcedure, untConstanta, dtmGlobal, dtmAccounting;

{$R *.dfm}

{ TfmJournal }

procedure TfmJournal.Button1Click(Sender: TObject);
begin
  inherited;

  if cgvJournalDt.DataController.Summary.FooterSummaryValues[0]=cgvJournalDt.DataController.Summary.FooterSummaryValues[1] then
   begin
     showmessage('Data Benar');
     //insert data
     dxMemData1.First;
     while not (dxMemData1.Eof) do
      begin
        qryJournalDt.Insert;
        qryJournalDt.FieldByName('JournalId').AsString := dxMemData1.FieldByName('JournalId').AsString;
        qryJournalDt.FieldByName('COAId').AsString := dxMemData1.FieldByName('COAId').AsString;
        qryJournalDt.FieldByName('No').AsInteger := dxMemData1.FieldByName('No').AsInteger;
        qryJournalDt.FieldByName('Description').AsString := dxMemData1.FieldByName('Description').AsString;
        qryJournalDt.FieldByName('Debit').AsInteger := dxMemData1.FieldByName('Debit').AsInteger;
        qryJournalDt.FieldByName('Credit').AsInteger := dxMemData1.FieldByName('Credit').AsInteger;
        qryJournalDt.Post;
        dxMemData1.Next;
      end;

   end
  else
   begin
     showmessage('Data Tidak Tepat');
   end;

end;

procedure TfmJournal.dxMemData1NewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('JournalId').AsString := qryJournalHd.FieldByName('JournalId').AsString;
  Dataset.FieldByName('No').AsInteger := DataSet.RecordCount+1;

end;

procedure TfmJournal.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'JournalId';
  MonthYearValueChange(nil);

  OpenIfClose(qryJournalHd);
  OpenIfClose(qryJournalDt);
  OpenIfClose(qryPrevCOA);
  dxMemData1.CreateFieldsFromDataSet(qryJournalDt);
  OpenIfClose(dxMemData1);
end;

procedure TfmJournal.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryJournalHd.Close;
  qryJournalHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryJournalHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryJournalHd, True, True);
end;

procedure TfmJournal.qryJournalHdBeforePost(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmJournal.RefreshAll;
begin
  inherited;

  LockRefresh(qryJournalHd);
  LockRefresh(qryJournalDt);
  LockRefresh(qryPrevCOA);
end;

end.
