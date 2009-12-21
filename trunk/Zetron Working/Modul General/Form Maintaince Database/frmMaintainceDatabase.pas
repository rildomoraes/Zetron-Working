{********************************************************************}
{                                                                    }
{       Form Delete Transaction Log                                  }
{                                                                    }
{       Create By Ivan Handoyo                                       }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit frmMaintainceDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ADODB, Uni,

  // Auto Create
  Dialogs;

type
  TfmMaintainceDatabase = class(TForm)
  private
    FADOQuery: TADOQuery;
    FUniQuery: TUniQuery;
    FDatabaseName: string;

    function ProcessDeleteLogMSSQL: boolean;
    function ProcessDeleteLogMSYSQL: boolean;
    function ProcessDeleteLogPostgre: boolean;
    function ProcessDeleteLogFireBird: boolean;
    procedure InitForm;
  public
    class procedure ExecuteForm(const ADatabaseName: string);
  end;

implementation

uses
   untConstanta, untProcedure, dtmGlobal, frmOpenWaiting, Math;

const
  ASK_DELETE_LOG = 'Maintenance Database ?';
  MSG_DELETE_LOG_SUCCESS = 'Maintenance database telah selesai !';

{$R *.dfm}

class procedure TfmMaintainceDatabase.ExecuteForm(const ADatabaseName: string);
var
  fmMaintainceDatabase: TfmMaintainceDatabase;
begin
  // NOT MDI
  fmMaintainceDatabase := TfmMaintainceDatabase.Create(Application);
  with fmMaintainceDatabase do
  begin
    try
      FDatabaseName := ADatabaseName;
      InitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmMaintainceDatabase.InitForm;
var
  Success: boolean;
  fmOpenWaiting: TfmOpenWaiting;
begin
  Success := False;
  if MessageDlg(ASK_DELETE_LOG, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Init Query
    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      FADOQuery := TADOQuery.Create(Self);
      FADOQuery.Connection := TADOConnection(dmGlobal.conGlobal);
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      FUniQuery := TUniQuery.Create(Self);
      FUniQuery.Connection := TUniConnection(dmGlobal.conGlobal);
    end;

    // Do Process
    fmOpenWaiting := TfmOpenWaiting.Create(Application);
    try
      fmOpenWaiting.Show;
      Application.ProcessMessages;
      case untConstanta.CurrentDatabaseEngine of
        deMSSQLServer: Success := ProcessDeleteLogMSSQL;
        deMySQL: Success := ProcessDeleteLogMSYSQL;
        dePostgreSQL: Success := ProcessDeleteLogPostgre;
        deFirebird: Success := ProcessDeleteLogFireBird;
      end;
      if Success then
        MessageDlg(MSG_DELETE_LOG_SUCCESS, mtInformation, [mbOk], 0);
    finally
      fmOpenWaiting.Close;
    end;
  end;
end;

function TfmMaintainceDatabase.ProcessDeleteLogFireBird: boolean;
begin
  Result := False;
end;

function TfmMaintainceDatabase.ProcessDeleteLogMSSQL: boolean;
var
  SQL: TStringList;
begin
  Result := False;
  SQL := TStringList.Create;
  try
    with SQL do
    begin
      Add('declare @LogicalFileName sysname,');
      Add('  @MaxMinutes int, @NewSize int, @OriginalSize int,');
      Add('  @Counter int, @StartTime datetime, @TruncLog varchar(255)');

      Add('set @MaxMinutes = 5 -- Limit on time allowed to wrap log.');
      Add('set @NewSize = 1     -- in MB');

      Add('-- name of the database for which the log will be shrunk.');
      Add('use ' + FDatabaseName);

      Add('-- Get logical filename & size');
      Add('select');
      Add('  @LogicalFileName = rtrim(name), @OriginalSize = size');
      Add('from sysfiles');
      Add('where filename like ' + QuotedStr('%.LDF%'));

      Add('-- debug only');
      Add('-- select @LogicalFileName, (@OriginalSize * 8 / 1024) as MB, @OriginalSize as byte');
      Add('-- Proces');
      Add('set nocount on');
      Add('if exists (select * from sysobjects where name = ' + QuotedStr('DummyTrans') + ' and type = ' + QuotedStr('U') + ')');
      Add('drop table DummyTrans');
      Add('create table DummyTrans (DummyColumn char (8000) not null)');

      Add('-- Wrap log and truncate it.');
      Add('set @StartTime = GETDATE()');
      Add('set @TruncLog = ' + QuotedStr('BACKUP LOG') + ' + db_name() + ' + QuotedStr('WITH TRUNCATE_ONLY'));

      Add('-- Try an initial shrink.');
      Add('DBCC SHRINKFILE (@LogicalFileName, @NewSize)');

      Add('exec (@TruncLog)');

      Add('-- Wrap the log if necessary.');
      Add('while @MaxMinutes > DATEDIFF (mi, @StartTime, GETDATE()) -- time has not expired');
      Add(' and @OriginalSize = (SELECT size FROM sysfiles WHERE name = @LogicalFileName)  -- the log has not shrunk');
      Add(' and (@OriginalSize * 8 /1024) > @NewSize  -- The value passed in for new size is smaller than the current size.');
      Add('begin -- Outer loop.');
      Add('  set @Counter = 0');
      Add('  while ((@Counter < @OriginalSize / 16) and (@Counter < 50000))');
      Add('  begin');
      Add('    -- update');
      Add('    -- Because it is a char field it inserts 8000 bytes.');
      Add('    insert DummyTrans values (' + QuotedStr('Fill Log') + ')');
      Add('    delete DummyTrans');
      Add('    set @Counter = @Counter + 1');
      Add('  end');
      Add('  exec (@TruncLog)  -- See if a trunc of the log shrinks it.');
      Add('end');

      Add('if exists (select * from sysobjects where name = ' + QuotedStr('DummyTrans') + ' and type = ' + QuotedStr('U') + ')');
      Add('drop table DummyTrans');
      Add('set nocount off');
    end;

    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      try
        FADOQuery.Close;
        FADOQuery.SQL := SQL;
        ExecuteQuery(FADOQuery, False);
      except
        Exit;
      end;
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      try
        FUniQuery.Close;
        FUniQuery.SQL := SQL;
        ExecuteQuery(FUniQuery, False);
      except
        Exit;
      end;
    end;

    Result := True;
  finally
    SQL.Free;
  end;
end;

function TfmMaintainceDatabase.ProcessDeleteLogMSYSQL: boolean;
begin
  Result := False;
end;

function TfmMaintainceDatabase.ProcessDeleteLogPostgre: boolean;
var
  SQL: TStringList;
begin
  Result := False;
  SQL := TStringList.Create;
  SQL.Add('VACUUM ANALYZE');
  try
    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      try
        FADOQuery.Close;
        FADOQuery.SQL := SQL;
        ExecuteQuery(FADOQuery, False);
      except
        Exit;
      end;
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      try
        FUniQuery.Close;
        FUniQuery.SQL := SQL;
        ExecuteQuery(FUniQuery, False);
      except
        Exit;
      end;
    end;

    Result := True;
  finally
    SQL.Free;
  end;
end;

end.

