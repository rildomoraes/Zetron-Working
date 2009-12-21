unit frmUniTransactionApprovalEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB,

  //
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TFormUniTransactionApprovalEx = class(TFormUniTransactionEx)
    actApprove: TAction;
    actRevision: TAction;
    actNotes: TAction;
    btnApprove: TcxButton;
    btnRevision: TcxButton;
    btnNotes: TcxButton;
    dbeEmployee: TcxDBTextEdit;
    procedure actApproveExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure OnClickPrint(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUniTransactionApprovalEx: TFormUniTransactionApprovalEx;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, frmPrintFastReport;

procedure TFormUniTransactionApprovalEx.actApproveExecute(Sender: TObject);
begin
  inherited;

  PostAllDataset(Self);
end;

procedure TFormUniTransactionApprovalEx.actRevisionExecute(Sender: TObject);
begin
  inherited;

  PostAllDataset(Self);
end;

procedure TFormUniTransactionApprovalEx.actVoidExecute(Sender: TObject);
begin
  inherited;

  PostAllDataset(Self);
end;

procedure TFormUniTransactionApprovalEx.InitForm;
begin
  inherited;

  SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployee);
end;

procedure TFormUniTransactionApprovalEx.OnClickPrint(Sender: TObject);
var
  IdReport: string;
  MasterField: string;
  DoCounter: boolean;
begin
  //inherited;   Don't perform it!
  IdReport := TComponent(Sender).Name;

  // Get primary key
//  if dsDefault.DataSet is TZQuery then
//    MasterField := TZQuery(dsDefault.DataSet).LinkedFields
//  else if dsDefault.DataSet is TZReadOnlyQuery then
//    MasterField := TZReadOnlyQuery(dsDefault.DataSet).LinkedFields
//  else if dsDefault.DataSet is TZTable then
//    MasterField := TZTable(dsDefault.DataSet).LinkedFields
//  else
  if dsDefault.DataSet is TADODataSet then
    MasterField := TADODataSet(dsDefault.DataSet).MasterFields;
  Assert(MasterField <> '', 'Component : ' + dsDefault.DataSet.Name +
    ', Property : MasterFields, Primary key is not set !');

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if MasterField = '' then
    Exit;
  if dsDefault.DataSet.FieldByName(MasterField).AsString = '' then
    Exit;

  // Check StatusApproval
  if dsDefault.DataSet.FieldByName('chStatusApprove').AsString = dmGlobal.SettingGlobal.StatusVoid then
  begin
    MessageDlg(MSG_TRANSACTION_ALREADY_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  // check counter print
  if FMenuOptions.MaxReprint <> 0 then
  begin
    if dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger >= FMenuOptions.MaxReprint then
    begin
      MessageDlg(Format(MSG_MAX_PRINT, [FMenuOptions.MaxReprint]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  // Printing
  DoCounter := False;;
  if TfmPrintFastReport.ExecuteForm(IdReport, DoCounter, dsDefault.DataSet.FieldByName(MasterField).AsString) = mrOk then
  begin
    if DoCounter then
    begin
      if dsDefault.DataSet.State in [dsBrowse] then
        dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger :=
        dsDefault.DataSet.FieldByName(FIELD_COUNTER_PRINT).AsInteger + 1;
      dsDefault.DataSet.Post;
    end;
  end;
end;

end.
