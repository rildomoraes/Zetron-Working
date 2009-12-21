unit frmSecurity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan, Uni, ADODB,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, cxGraphics, cxCustomData,
  cxStyles, cxTL, cxMaskEdit, cxCheckBox, cxSpinEdit, cxTLdxBarBuiltInMenu,
  ImgList, DB, dxmdaset, cxInplaceContainer, cxDBTL, cxTLData, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxControls, cxContainer, cxEdit, cxProgressBar, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmSecurity = class(TFormUniPosition)
    Label1: TLabel;
    pnlInfo: TPanel;
    mdMenus: TdxMemData;
    mdMenusKeyId: TStringField;
    mdMenusParentId: TStringField;
    mdMenusMenuName: TStringField;
    mdMenusActionName: TStringField;
    mdMenusImageIndex: TSmallintField;
    mdMenusFlagInsert: TSmallintField;
    mdMenusFlagEdit: TSmallintField;
    mdMenusFlagDelete: TSmallintField;
    mdMenusMaxReprint: TSmallintField;
    dsMenus: TDataSource;
    ilTreeView: TImageList;
    lblPosition: TLabel;
    lcbPositionId: TcxExtLookupComboBox;
    dbtlPositionAccess: TcxDBTreeList;
    dbtlPositionAccessRecId: TcxDBTreeListColumn;
    dbtlPositionAccessMenuId: TcxDBTreeListColumn;
    dbtlPositionAccessParentId: TcxDBTreeListColumn;
    dbtlPositionAccessFlagOpen: TcxDBTreeListColumn;
    dbtlPositionAccessFlagInsert: TcxDBTreeListColumn;
    dbtlPositionAccessFlagEdit: TcxDBTreeListColumn;
    dbtlPositionAccessFlagDelete: TcxDBTreeListColumn;
    dbtlPositionAccessMaxReprint: TcxDBTreeListColumn;
    actVisibleInvisible: TAction;
    actVisibleInvisibleAll: TAction;
    actPost: TAction;
    actCancel: TAction;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    btnVisibleInvisibleAll: TcxButton;
    btnVisibleInvisible: TcxButton;
    bvlSaparator2: TBevel;
    bvlSpacer12: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    dbtlPositionAccessActionName: TcxDBTreeListColumn;
    dbtlPositionAccessPrimaryKey: TcxDBTreeListColumn;
    dbtlPositionAccessMenuName: TcxDBTreeListColumn;
    procedure lcbPositionIdPropertiesEditValueChanged(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actVisibleInvisibleAllExecute(Sender: TObject);
    procedure actVisibleInvisibleExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
  private
    FPositionAccessDataset: TDataset;

    procedure DrawDefaultMainMenuTreeList;
    procedure CreateNodeRecursive(ARoot: string; AMenuItem: TMenuItem);

    procedure UpdateMenuVisibility(const AMenuId: string; AState: integer);
    procedure UpdateMenuVisibilityRecursive(const AMenuId: string; AState: integer);

    procedure LoadPositionAccessFromDatabase;
    procedure SavePositionAccessToDatabase;
  public

  end;

var
  fmSecurity: TfmSecurity;

implementation

{$R *.dfm}

uses untConstanta, untProcedure, dtmGlobal;

const
  VISIBLE_STATE_INDEX = 1;
  INVISIBLE_STATE_INDEX = 2;

procedure TfmSecurity.actCancelExecute(Sender: TObject);
begin
  inherited;

  mdMenus.DisableControls;
  LoadPositionAccessFromDatabase;
  mdMenus.EnableControls;
end;

procedure TfmSecurity.actPostExecute(Sender: TObject);
begin
  inherited;

  if not VarIsNull(lcbPositionId.EditValue) then
  begin
    mdMenus.DisableControls;
    SavePositionAccessToDatabase;
    mdMenus.EnableControls;
  end;
end;

procedure TfmSecurity.actVisibleInvisibleAllExecute(Sender: TObject);
var
  PrimaryKey: string;
  State: integer;
begin
  if mdMenus.IsEmpty then
    Exit;

  if mdMenus.FieldByName('FlagOpen').AsInteger = INVISIBLE_STATE_INDEX then
    State := VISIBLE_STATE_INDEX
  else
    State := INVISIBLE_STATE_INDEX;
  PrimaryKey := mdMenus.FieldByName('MenuId').AsString;

  mdMenus.DisableControls;
  UpdateMenuVisibilityRecursive(PrimaryKey, State);

  mdMenus.Locate('MenuId', PrimaryKey, [loCaseInsensitive]);
  mdMenus.EnableControls;

  dbtlPositionAccess.FocusedNode.Expand(True);
end;

procedure TfmSecurity.actVisibleInvisibleExecute(Sender: TObject);
var
  State: integer;
begin
  inherited;

  if mdMenus.IsEmpty then
    Exit;

  if mdMenus.FieldByName('FlagOpen').AsInteger = INVISIBLE_STATE_INDEX then
    State := VISIBLE_STATE_INDEX
  else
    State := INVISIBLE_STATE_INDEX;
  UpdateMenuVisibility(mdMenus.FieldByName('MenuId').AsString, State);
end;

procedure TfmSecurity.CreateNodeRecursive(ARoot: string; AMenuItem: TMenuItem);
var
  MenuId, MenuName, ActionName: string;
  i: Integer;
begin
  //set caption
  MenuId := AMenuItem.Name;
  MenuName := StringReplace(AMenuItem.Caption, '&', '', [rfReplaceAll]);
  if AMenuItem.Action <> nil then
    ActionName := AMenuItem.Action.Name
  else
    ActionName := '';

  //create node
  if MenuName <> '-' then
  begin
    mdMenus.Insert;
    mdMenus.FieldByName('MenuId').AsString := MenuId;
    mdMenus.FieldByName('MenuName').AsString := MenuName;
    mdMenus.FieldByName('ActionName').AsString := ActionName;
    mdMenus.FieldByName('ParentId').AsString := ARoot;
    mdMenus.FieldByName('FlagOpen').AsInteger := INVISIBLE_STATE_INDEX;
    mdMenus.FieldByName('FlagInsert').AsInteger := 1;
    mdMenus.FieldByName('FlagEdit').AsInteger := 1;
    mdMenus.FieldByName('FlagDelete').AsInteger := 1;
    mdMenus.FieldByName('MaxReprint').AsInteger := 0;
    mdMenus.Post;
  end;
  //create node child (if any)
  for i := 0 to AMenuItem.Count - 1 do
    CreateNodeRecursive(MenuId, AMenuItem.Items[i]);
end;

procedure TfmSecurity.DeinitForm;
begin
  inherited;

  dmGlobal.InitSecurity;
end;

procedure TfmSecurity.DrawDefaultMainMenuTreeList;
var
  i: integer;
begin
  mdMenus.Close;
  mdMenus.Open; // Open-Close mdMenus to set blank
  for i := 0 to dmGlobal.MainMenu.Items.Count - 1 do //parent
    CreateNodeRecursive('', dmGlobal.MainMenu.Items[i]);
end;

procedure TfmSecurity.InitForm;
var
  S: TStringList;
begin
  inherited;

  // Prepare PositionAccess Dataset
  S := TStringList.Create;
  try
    S.Add('select *');
    S.Add('from PositionAccess');
    S.Add('where PositionId = :PositionId');
    S.Add('and ProgramId = :ProgramId');
    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      FPositionAccessDataset := TADOQuery.Create(Self);
      TADOQuery(FPositionAccessDataset).Connection := TADOConnection(dmGlobal.conGlobal);
      TADOQuery(FPositionAccessDataset).SQL := S;
    end
    else if untConstanta.CurrentConnectionEngine = ceUniDAC then
    begin
      FPositionAccessDataset := TUniQuery.Create(Self);
      TUniQuery(FPositionAccessDataset).Connection := TUniConnection(dmGlobal.conGlobal);
      TUniQuery(FPositionAccessDataset).SQL := S;
    end;
  finally
    S.Free;
  end;

  OpenIfClose(dmGlobal.qryPosition);

  actCancel.ShortCut := VK_ESCAPE;
  lcbPositionId.EditValue := dmGlobal.SettingGlobal.LoginPositionId;
end;

procedure TfmSecurity.lcbPositionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  // Reset
  if VarIsNull(lcbPositionId.EditValue) then
    mdMenus.Close
  else
  begin
    mdMenus.DisableControls;
    LoadPositionAccessFromDatabase;
    mdMenus.EnableControls;

  end;
end;

procedure TfmSecurity.LoadPositionAccessFromDatabase;
var
  MenuId, ActionName: string;
begin
  // Draw with default menu
  DrawDefaultMainMenuTreeList;

  // Overwrite menu with data from database
  if not VarIsNull(lcbPositionId.EditValue) then
  begin
    FPositionAccessDataset.Close;
    if untConstanta.CurrentConnectionEngine = ceADO then
    begin
      TADOQuery(FPositionAccessDataset).Parameters[0].Value := lcbPositionId.EditValue;
      TADOQuery(FPositionAccessDataset).Parameters[1].Value := dmGlobal.SettingGlobal.ProgramId;
    end
    else
    begin
      TUniQuery(FPositionAccessDataset).Params[0].Value := lcbPositionId.EditValue;
      TUniQuery(FPositionAccessDataset).Params[1].Value := dmGlobal.SettingGlobal.ProgramId;
    end;
    OpenIfClose(FPositionAccessDataset);
    while not FPositionAccessDataset.Eof do
    begin
      MenuId := FPositionAccessDataset.FieldByName('MenuId').AsString;
      ActionName := FPositionAccessDataset.FieldByName('ActionName').AsString;
      if (MenuId <> '-') then // Bukan Separator
      begin
        if mdMenus.Locate('MenuId;ActionName', VarArrayOf([MenuId, ActionName]), [loCaseInsensitive]) then
        begin
          mdMenus.Edit;
          mdMenus.FieldByName('FlagOpen').AsInteger := FPositionAccessDataset.FieldByName('FlagOpen').AsInteger;
          mdMenus.FieldByName('FlagInsert').Value := FPositionAccessDataset.FieldByName('FlagInsert').AsInteger;
          mdMenus.FieldByName('FlagEdit').Value := FPositionAccessDataset.FieldByName('FlagEdit').AsInteger;
          mdMenus.FieldByName('FlagDelete').Value := FPositionAccessDataset.FieldByName('FlagDelete').AsInteger;
          mdMenus.FieldByName('MaxReprint').Value := FPositionAccessDataset.FieldByName('MaxReprint').AsInteger;
          mdMenus.Post;
        end;
      end;
      FPositionAccessDataset.Next;
    end;
  end
  else
    mdMenus.Close;
end;

procedure TfmSecurity.SavePositionAccessToDatabase;
var
  FDelPositionAccess: TDataset;
begin
  // Delete First
  if untConstanta.CurrentConnectionEngine = ceADO then
  begin
    FDelPositionAccess := TADOQuery.Create(Self);
    with TADOQuery(FDelPositionAccess) do
    begin
      Connection := TADOConnection(dmGlobal.conReadOnly);
      SQL.Clear;
      SQL.Add('delete from PositionAccess');
      SQL.Add('where PositionId = :PositionId');
      SQL.Add('and ProgramId = :ProgramId');
      Parameters[0].Value := lcbPositionId.EditValue;
      Parameters[1].Value := dmGlobal.SettingGlobal.ProgramId;
      ExecuteQuery(TADOQuery(FDelPositionAccess), False);
    end;
  end
  else if untConstanta.CurrentConnectionEngine = ceUniDAC then
  begin
    FDelPositionAccess := TUniQuery.Create(Self);
    with TUniQuery(FDelPositionAccess) do
    begin
      Connection := TUniConnection(dmGlobal.conReadOnly);
      SQL.Clear;
      SQL.Add('delete from PositionAccess');
      SQL.Add('where PositionId = :PositionId');
      SQL.Add('and ProgramId = :ProgramId');
      Params[0].Value := lcbPositionId.EditValue;
      Params[1].Value := dmGlobal.SettingGlobal.ProgramId;
      ExecuteQuery(TUniQuery(FDelPositionAccess), False);
    end;
  end;

  // Save New
  FPositionAccessDataset.Close;
  if untConstanta.CurrentConnectionEngine = ceADO then
  begin
    TADOQuery(FPositionAccessDataset).Parameters[0].Value := lcbPositionId.EditValue;
    TADOQuery(FPositionAccessDataset).Parameters[1].Value := dmGlobal.SettingGlobal.ProgramId;
  end
  else
  begin
    TUniQuery(FPositionAccessDataset).Params[0].Value := lcbPositionId.EditValue;
    TUniQuery(FPositionAccessDataset).Params[1].Value := dmGlobal.SettingGlobal.ProgramId;
  end;
  OpenIfClose(FPositionAccessDataset);
  if mdMenus.State in [dsEdit] then
    mdMenus.Post;
  pbProcess.Properties.Max := mdMenus.RecordCount;
  mdMenus.First;
  while not mdMenus.Eof do
  begin
    FPositionAccessDataset.Insert; // not found
    FPositionAccessDataset.FieldByName('ProgramId').Value := dmGlobal.SettingGlobal.ProgramId;
    FPositionAccessDataset.FieldByName('PositionId').Value := lcbPositionId.EditValue;
    FPositionAccessDataset.FieldByName('MenuId').Value := mdMenus.FieldByName('MenuId').AsString;
    FPositionAccessDataset.FieldByName('ActionName').Value := mdMenus.FieldByName('ActionName').AsString;
    FPositionAccessDataset.FieldByName('FlagOpen').Value := mdMenus.FieldByName('FlagOpen').AsInteger;
    FPositionAccessDataset.FieldByName('FlagInsert').Value := mdMenus.FieldByName('FlagInsert').AsInteger;
    FPositionAccessDataset.FieldByName('FlagEdit').Value := mdMenus.FieldByName('FlagEdit').AsInteger;
    FPositionAccessDataset.FieldByName('FlagDelete').Value := mdMenus.FieldByName('FlagDelete').AsInteger;
    FPositionAccessDataset.FieldByName('MaxReprint').Value := mdMenus.FieldByName('MaxReprint').AsInteger;
    FPositionAccessDataset.Post;
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    mdMenus.Next;
  end;
  pbProcess.Position := 0;
end;

procedure TfmSecurity.UpdateMenuVisibility(const AMenuId: string; AState: integer);
begin
  if mdMenus.Locate('MenuId', AMenuId, [loCaseInsensitive]) then
  begin
    mdMenus.Edit;
    mdMenus.FieldByName('FlagOpen').AsInteger := AState;
    mdMenus.Post;
  end;
end;

procedure TfmSecurity.UpdateMenuVisibilityRecursive(const AMenuId: string; AState: integer);
var
  CurrentMenuId: string;
  i, RecNo: integer;
begin
  CurrentMenuId := AMenuId;
  UpdateMenuVisibility(AMenuId, AState);

  for i := 1 to mdMenus.RecordCount do
  begin
    mdMenus.RecNo := i;
    if mdMenus.FieldByName('ParentId').AsString = CurrentMenuId then
    begin
      mdMenus.Edit;
      mdMenus.FieldByName('FlagOpen').AsInteger := AState;
      mdMenus.Post;
      RecNo := mdMenus.RecNo; // Save Bookmark
      UpdateMenuVisibilityRecursive(mdMenus.FieldByName('MenuId').AsString, AState);
      mdMenus.RecNo := RecNo; // load Bookmark
    end;
  end;
end;

end.



