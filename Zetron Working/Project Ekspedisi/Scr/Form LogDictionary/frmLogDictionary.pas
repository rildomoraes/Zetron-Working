unit frmLogDictionary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBExtLookupComboBox;

type
  TfmLogDictionary = class(TFormUniMasterEx)
    qryLogDictionary: TADOQuery;
    cxGrid2: TcxGrid;
    cgvLogDictionary: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cgvLogDictionaryTableName: TcxGridDBColumn;
    cgvLogDictionaryFieldName: TcxGridDBColumn;
    cgvLogDictionaryValue1: TcxGridDBColumn;
    cgvLogDictionaryValue2: TcxGridDBColumn;
    cgvLogDictionaryDisplayFieldName: TcxGridDBColumn;
    cgvLogDictionaryReferenceFieldDisplay: TcxGridDBColumn;
    cgvLogDictionaryReferenceKeyField: TcxGridDBColumn;
    cgvLogDictionaryReferenceTableName: TcxGridDBColumn;
    qryDisplayReferenceTable: TADOQuery;
    qryDisplayReferenceKeyField: TADOQuery;
    cgvReferenceTables: TcxGridDBTableView;
    dsDisplayReferenceTable: TDataSource;
    dsDisplayReferenceKeyField: TDataSource;
    cgvReferenceTablesname: TcxGridDBColumn;
    cgvReferenceKeyFields: TcxGridDBTableView;
    cgvReferenceKeyFieldsname: TcxGridDBColumn;
    qryDisplayReferenceFieldDisplay: TADOQuery;
    dsDisplayReferenceFieldDisplay: TDataSource;
    cgvReferenceFieldDisplay: TcxGridDBTableView;
    cgvReferenceFieldDisplayname: TcxGridDBColumn;
    cgvLogDictionaryKeyField: TcxGridDBColumn;
    cgvLogDictionaryDisplayKeyField: TcxGridDBColumn;
    qryDisplayKeyField: TADOQuery;
    dsDisplayKeyField: TDataSource;
    cgvLogDictionaryQueryName: TcxGridDBColumn;
    cgvTables: TcxGridDBTableView;
    qryDisplayTable: TADOQuery;
    dsDisplayTable: TDataSource;
    cgvTablesname: TcxGridDBColumn;
    cgvKeyFields: TcxGridDBTableView;
    cgvKeyFieldsname: TcxGridDBColumn;
    procedure cgvLogDictionaryFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmLogDictionary: TfmLogDictionary;

implementation

{$R *.dfm}
uses untProcedure;
{ TFormUniMasterEx1 }

procedure TfmLogDictionary.cgvLogDictionaryFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if qryDisplayTable.Active then
     qryDisplayTable.Locate('name',qryLogDictionary.FieldByName('tablename').AsString,[]);
end;

procedure TfmLogDictionary.InitForm;
begin
  inherited;
  OpenIfClose(qryLogDictionary);
  OpenIfClose(qryDisplayTable);
  OpenIfClose(qryDisplayKeyField);
  OpenIfClose(qryDisplayReferenceTable);
  OpenIfClose(qryDisplayReferenceKeyField);
  OpenIfClose(qryDisplayReferenceFieldDisplay);
end;

procedure TfmLogDictionary.RefreshAll;
begin
  inherited;
  LockRefresh(qryLogDictionary);
  LockRefresh(qryDisplayTable);
  LockRefresh(qryDisplayKeyField);
  OpenIfClose(qryDisplayReferenceTable);
  OpenIfClose(qryDisplayReferenceKeyField);
  LockRefresh(qryDisplayReferenceFieldDisplay);
end;

end.
