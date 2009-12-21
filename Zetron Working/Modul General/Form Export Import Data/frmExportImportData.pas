unit frmExportImportData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uni, ADODB,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, acQBUniDACMetaProvider, acAST,
  acQBADOMetaProvider, QImport3Wizard, QExport4Dialog, acQBBase,
  acSQLBuilderPlainText, acUniversalSynProvider, DB, Grids, DBGrids, StdCtrls,
  ExtCtrls, cxPC, cxControls, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxButtons;

type
  TfmExportImportData = class(TFormUniPosition)
    dsDisplayResult: TDataSource;
    cxPageControl1: TcxPageControl;
    tsDesign: TcxTabSheet;
    tsResult: TcxTabSheet;
    pnlDesign: TPanel;
    acUniversalSyntaxProvider1: TacUniversalSyntaxProvider;
    acSQLBuilderPlainText1: TacSQLBuilderPlainText;
    QExport4Dialog1: TQExport4Dialog;
    QImport3Wizard1: TQImport3Wizard;
    acQueryBuilder1: TacQueryBuilder;
    memSQLEditor: TMemo;
    pnlResultBottom: TPanel;
    btnImportData: TcxButton;
    btnExportData: TcxButton;
    btnRefreshOutput: TcxButton;
    grResult: TDBGrid;
    acADOMetadataProvider1: TacADOMetadataProvider;
    Splitter1: TSplitter;
    acUniDACMetadataProvider1: TacUniDACMetadataProvider;
    procedure btnImportDataClick(Sender: TObject);
    procedure btnExportDataClick(Sender: TObject);
    procedure btnRefreshOutputClick(Sender: TObject);
    procedure memSQLEditorChange(Sender: TObject);
    procedure acSQLBuilderPlainText1SQLUpdated(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    FResultDataset: TDataset;
  public
    { Public declarations }
  end;

var
  fmExportImportData: TfmExportImportData;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal;

procedure TfmExportImportData.acSQLBuilderPlainText1SQLUpdated(Sender: TObject);
begin
  inherited;

  memSQLEditor.Lines.Clear;
  memSQLEditor.Lines.Text := acSQLBuilderPlainText1.SQL;
end;

procedure TfmExportImportData.btnExportDataClick(Sender: TObject);
begin
  inherited;

  if FResultDataset.Active then
    QExport4Dialog1.Execute;
end;

procedure TfmExportImportData.btnImportDataClick(Sender: TObject);
begin
  inherited;

  if FResultDataset.Active then
    QImport3Wizard1.Execute;
end;

procedure TfmExportImportData.btnRefreshOutputClick(Sender: TObject);
begin
  inherited;

  if (Trim(memSQLEditor.Lines.Text) <> '') and
    (Trim(memSQLEditor.Lines.Text) <> 'Select * From') then
  begin
    FResultDataset.Close;
    if untConstanta.CurrentConnectionEngine = ceADO then
      TADOQuery(FResultDataset).SQL.Text := memSQLEditor.Lines.Text
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
      TUniQuery(FResultDataset).SQL.Text := memSQLEditor.Lines.Text;
    OpenIfClose(FResultDataset, True);
  end;
end;

procedure TfmExportImportData.InitForm;
begin
  inherited;

  if untConstanta.CurrentConnectionEngine = ceADO then
  begin
    acADOMetadataProvider1.Connection := TADOConnection(dmGlobal.conGlobal);
    acQueryBuilder1.MetadataProvider := acADOMetadataProvider1;
    FResultDataset := TADOQuery.Create(Self);
    TADOQuery(FResultDataset).Connection := TADOConnection(dmGlobal.conGlobal);
  end
  else if untConstanta.CurrentConnectionEngine = ceUniDAC then
  begin
    acUniDACMetadataProvider1.Connection := TUniConnection(dmGlobal.conGlobal);
    acQueryBuilder1.MetadataProvider := acUniDACMetadataProvider1;
    FResultDataset := TUniQuery.Create(Self);
    TUniQuery(FResultDataset).Connection := TUniConnection(dmGlobal.conGlobal);
  end;
  dsDisplayResult.DataSet := FResultDataset;
  QExport4Dialog1.DataSet := FResultDataset;
  QImport3Wizard1.DataSet := FResultDataset;

  case untConstanta.CurrentDatabaseEngine of
    deMSSQLServer: acUniversalSyntaxProvider1.PreferredServer := ustMSSQL;
    deMySQL: acUniversalSyntaxProvider1.PreferredServer := ustMySQL;
    dePostgreSQL: acUniversalSyntaxProvider1.PreferredServer := ustPostgreSQL;
    deFirebird: acUniversalSyntaxProvider1.PreferredServer := ustFirebird;
    deOracle: acUniversalSyntaxProvider1.PreferredServer := ustOracle;
    deSQLite: acUniversalSyntaxProvider1.PreferredServer := ustSQLite;
  end;

  acQueryBuilder1.LoadMetadata();

  // Override default error message by ivComponent
  FResultDataset.OnPostError := nil;
end;

procedure TfmExportImportData.memSQLEditorChange(Sender: TObject);
begin
  inherited;

  FResultDataset.Close;
end;

end.
