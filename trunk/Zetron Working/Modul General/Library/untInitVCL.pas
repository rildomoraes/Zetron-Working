unit untInitVCL;

interface

uses
  SysUtils, Forms, Classes, DB, Controls, Windows, INIFiles, Dialogs, ADODB,
  Uni, cxEdit, cxMemo, cxNavigator, cxRadioGroup, cxCalendar, cxCalc,
  cxCurrencyEdit, cxDBLookupComboBox, cxDBExtLookupComboBox, cxCustomData,
  cxGridCustomTableView, cxGridTableView, cxGrid, cxGridBandedTableView,
  cxLookupEdit, cxGridCardView, dxDockControl, untIvSQLStorage, cxTL,
  untIvSearchBoxADO, untIvSearchBoxDAC, cxGridDBTableView, untConstanta;

const
  NEW_ITEM_INFO = 'TAMBAH DATA BARU';
  FILTER_ITEM_INFO = 'FILTER DATA';

  //English
  PK_VIOLATION = 'Data you are entried is already exists in database !';
  AK_VIOLATION = 'Data you are entried is already exists in database !';
  FK_VIOLATION = 'Cannot edit/delete current data, because it has been used !';
  NULL_VIOLATION = '%s must not be empty !';
  QTY_ZERO_VIOLATION = 'Quantity cannot be zero !';

  //Indonesian
  PK_VIOLATION_IND = 'Data yang anda masukan telah ada ada dalam database !';
  AK_VIOLATION_IND = 'Data yang anda masukan telah ada ada dalam database !';
  FK_VIOLATION_IND = 'Data tidak dapat dirubah atau hapus, karena masih dipakai !';
  NULL_VIOLATION_IND = '%s masih belum diisi !';
  QTY_ZERO_VIOLATION_IND = 'Quantity tidak boleh nol !';

type
  TInitVCL = class(TObject)
  private
    FCurrentVCLIsDataModule: boolean;

    {Ivan 01/01/2009: Disable auto format display
    FDisplayFormatCurrency: string;
    FDisplayFormatNumeric: string;}

    FStatusLanguage: byte;
    FIsAutoEdit: boolean;
    FDatabaseEngine: TDatabaseEngine;
    FDatabaseMessageToken: string;
    FDictionaryFilename: string;
    FAppDataDir: string;

    procedure DefaultOnKeyPress(Sender: TObject; var Key: Char);
    procedure NewOnError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure NewOnDeleteError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);

    procedure InitTForm(AForm: TForm);
    procedure InitExpressEditors(AComponent: TComponent);
    procedure InitExpressGrid(AComponent: TComponent);
    procedure InitExpressBar(AComponent: TComponent);
    procedure InitDatabase(AComponent: TComponent);
    procedure InitOthers(AComponent: TComponent);

    procedure InitDateEditProperties(AComponent: TcxDateEditProperties);
    procedure InitCalcEditProperties(AComponent: TcxCalcEditProperties);
    procedure InitCurrencyEditProperties(AComponent: TcxCurrencyEditProperties);
    procedure InitLookupComboBoxProperties(AComponent: TcxLookupComboBoxProperties);
    procedure InitExtLookupComboBoxProperties(AComponent: TcxExtLookupComboBoxProperties);

    // Database
    function Translate(const AWord: string): string;
    function GetTextFromMessage(const AObjectToken, AObjectTokenEnd, AMessage: string): string;

    function ShowPKViolationMessage(AMessage: string): string;
    function ShowAKViolationMessage(AMessage: string): string;
    function ShowFKViolationMessage(AMessage: string): string;
    function ShowNullViolationMessage(AMessage: string): string;
    function ShowQtyZeroViolationMessage(AMessage: string): string;
    function TranslateErrorMessage(AErrorMessage: string): string;
    procedure AddToErrorLog(const AMessage: string);

    // Event
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  public
    procedure InitVCL(AComponent: TComponent);

    {Ivan 01/01/2009: Disable auto format display
    property DisplayFormatCurrency: string read FDisplayFormatCurrency write FDisplayFormatCurrency;
    property DisplayFormatNumeric: string read FDisplayFormatNumeric write FDisplayFormatNumeric;}

    property StatusLanguage: byte read FStatusLanguage write FStatusLanguage;
    property IsAutoEdit: boolean read FIsAutoEdit write FIsAutoEdit;
    property DatabaseEngine: TDatabaseEngine read FDatabaseEngine write FDatabaseEngine;
    property DatabaseMessageToken: string read FDatabaseMessageToken write FDatabaseMessageToken;
    property DictionaryFilename: string read FDictionaryFilename write FDictionaryFilename;
    property AppDataDir: string read FAppDataDir write FAppDataDir;
  end;

implementation

uses untProcedure;

procedure TInitVCL.InitExpressGrid(AComponent: TComponent);
var
  i: integer;
  GridDBTableSummaryItem: TcxGridDBTableSummaryItem;
  OldEvent, NewEvent: TcxNavigatorButtonClickEvent;
begin
  if AComponent is TcxCustomGridTableView then
  begin
    TcxCustomGridTableView(AComponent).DataController.Options :=
      TcxCustomGridTableView(AComponent).DataController.Options + [dcoSortByDisplayText];
    TcxCustomGridTableView(AComponent).OptionsBehavior.FocusCellOnTab := True;
    TcxCustomGridTableView(AComponent).OptionsBehavior.FocusFirstCellOnNewRecord := True;
    TcxCustomGridTableView(AComponent).OptionsBehavior.GoToNextCellOnEnter := True;
    TcxCustomGridTableView(AComponent).OptionsBehavior.IncSearch := True;

    // Navigator Buttons Hint
    TcxCustomGridTableView(AComponent).OptionsBehavior.NavigatorHints := True;
    if StatusLanguage = 0 then
    begin
      TcxCustomGridTableView(AComponent).NavigatorButtons.Insert.Hint := 'Insert';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Edit.Hint := 'Edit';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Delete.Hint := 'Delete';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Post.Hint := 'Post';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Cancel.Hint := 'Cancel';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Refresh.Hint := 'Refresh';
    end;
    if StatusLanguage = 1 then
    begin
      TcxCustomGridTableView(AComponent).NavigatorButtons.Insert.Hint := 'Tambah';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Edit.Hint := 'Ubah';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Delete.Hint := 'Hapus';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Post.Hint := 'Simpan';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Cancel.Hint := 'Batal';
      TcxCustomGridTableView(AComponent).NavigatorButtons.Refresh.Hint := 'Refresh';
    end;

    // Set footer Display format
    for i := 0 to TcxCustomGridTableView(AComponent).DataController.Summary.FooterSummaryItems.Count - 1 do
    begin
      GridDBTableSummaryItem := TcxGridDBTableSummaryItem(
        TcxCustomGridTableView(AComponent).DataController.Summary.FooterSummaryItems.Items[i]);
      Assert(GridDBTableSummaryItem.Column <> nil, 'cxGrid Summary, property column belum di set');
      if GridDBTableSummaryItem.Column.Properties is TcxCalcEditProperties then
        GridDBTableSummaryItem.Format := TcxCalcEditProperties(GridDBTableSummaryItem.Column.Properties).DisplayFormat
      else if GridDBTableSummaryItem.Column.Properties is TcxCurrencyEditProperties then
        GridDBTableSummaryItem.Format := TcxCurrencyEditProperties(GridDBTableSummaryItem.Column.Properties).DisplayFormat;
    end;

    // If GridTableView (including TcxGridBandedTableView)
    if AComponent is TcxGridTableView then
    begin
      if StatusLanguage = 1 then // Indonesia
      begin
        TcxGridTableView(AComponent).OptionsView.NewItemRowInfoText := NEW_ITEM_INFO;
        TcxGridTableView(AComponent).FilterRow.InfoText := FILTER_ITEM_INFO;
      end;
    end;

    // Jika CGV bukan didalam GridViewRepository
    if not (TcxCustomGridTableView(AComponent).GetParentComponent is TcxGridViewRepository) then
    begin
      // If GridTableView (including TcxGridBandedTableView)
      if AComponent is TcxGridTableView then
      begin
        TcxGridTableView(AComponent).OptionsBehavior.FocusCellOnCycle := True;
        TcxGridTableView(AComponent).OptionsCustomize.ColumnsQuickCustomization := (not FCurrentVCLIsDataModule);

        // If GridBandedTableView
        if AComponent is TcxGridBandedTableView then
          TcxGridBandedTableView(AComponent).OptionsCustomize.BandsQuickCustomization := (not FCurrentVCLIsDataModule);
      end;
    end
    else
    begin
      // Setup CGV for ReadOnly
      TcxCustomGridTableView(AComponent).OptionsView.Navigator := True;
      TcxCustomGridTableView(AComponent).NavigatorButtons.First.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.PriorPage.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Prior.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Next.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.NextPage.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Last.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Insert.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Append.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Delete.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Edit.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Post.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Cancel.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.SaveBookmark.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.GotoBookmark.Visible := False;
      TcxCustomGridTableView(AComponent).NavigatorButtons.Filter.Visible := False;

      // Setup Event
      OldEvent := TcxCustomGridTableView(AComponent).NavigatorButtons.OnButtonClick;
      NewEvent := cgvNavigatorButtonsButtonClick;
      //Data - reference to an instance of an object
      //Code - pointer to the function/procedure on that object
      if (TMethod(OldEvent).Data <> TMethod(NewEvent).Data) then
      begin
        Assert(not Assigned(TcxCustomGridTableView(AComponent).NavigatorButtons.OnButtonClick),
          'Cannot assign event NavigatorButtons.OnButtonClick on component ' +
          TcxCustomGridTableView(AComponent).Name + ', because event is already used !');
        TcxCustomGridTableView(AComponent).NavigatorButtons.OnButtonClick := cgvNavigatorButtonsButtonClick;
      end;

      // If GridTableView (including TcxGridBandedTableView)
      if TcxCustomGridTableView(AComponent) is TcxGridTableView then
      begin
        TcxGridTableView(AComponent).OptionsCustomize.ColumnsQuickCustomization := False;

        // If GridBandedTableView
        if TcxCustomGridTableView(AComponent) is TcxGridBandedTableView then
          TcxGridBandedTableView(AComponent).OptionsCustomize.BandsQuickCustomization := False;
      end;
    end;
  end
  else if (AComponent is TcxGridColumn) or (AComponent is TcxGridCardViewRow) then
  begin
    // Check properties class
    if TcxGridColumn(AComponent).Properties is TcxDateEditProperties then
      InitDateEditProperties(TcxDateEditProperties(TcxGridColumn(AComponent).Properties))
    else if TcxGridColumn(AComponent).Properties is TcxCalcEditProperties then
      InitCalcEditProperties(TcxCalcEditProperties(TcxGridColumn(AComponent).Properties))
    else if TcxGridColumn(AComponent).Properties is TcxCurrencyEditProperties then
      InitCurrencyEditProperties(TcxCurrencyEditProperties(TcxGridColumn(AComponent).Properties))
    else if TcxGridColumn(AComponent).Properties is TcxLookupComboBoxProperties then
      InitLookupComboBoxProperties(TcxLookupComboBoxProperties(TcxGridColumn(AComponent).Properties))
    else if TcxGridColumn(AComponent).Properties is TcxExtLookupComboBoxProperties then
      InitExtLookupComboBoxProperties(TcxExtLookupComboBoxProperties(TcxGridColumn(AComponent).Properties));
  end
  else if (AComponent is TcxTreeListColumn) then
  begin
    // Check properties class
    if TcxTreeListColumn(AComponent).Properties is TcxDateEditProperties then
      InitDateEditProperties(TcxDateEditProperties(TcxTreeListColumn(AComponent).Properties))
    else if TcxTreeListColumn(AComponent).Properties is TcxCalcEditProperties then
      InitCalcEditProperties(TcxCalcEditProperties(TcxTreeListColumn(AComponent).Properties))
    else if TcxTreeListColumn(AComponent).Properties is TcxCurrencyEditProperties then
      InitCurrencyEditProperties(TcxCurrencyEditProperties(TcxTreeListColumn(AComponent).Properties))
    else if TcxTreeListColumn(AComponent).Properties is TcxLookupComboBoxProperties then
      InitLookupComboBoxProperties(TcxLookupComboBoxProperties(TcxTreeListColumn(AComponent).Properties))
    else if TcxTreeListColumn(AComponent).Properties is TcxExtLookupComboBoxProperties then
      InitExtLookupComboBoxProperties(TcxExtLookupComboBoxProperties(TcxTreeListColumn(AComponent).Properties));
  end;
end;

procedure TInitVCL.InitExpressBar(AComponent: TComponent);
begin
  if AComponent is TdxDockingManager then
  begin
    TdxDockingManager(AComponent).AutoHideMovingSize := 300;
    TdxDockingManager(AComponent).ViewStyle := vsUseLookAndFeel;
  end;
end;

procedure TInitVCL.InitExpressEditors(AComponent: TComponent);
begin
  if AComponent is TcxCustomEdit then
  begin
    if not Assigned(TcxCustomEdit(AComponent).OnKeyPress) then
    begin
      if not (AComponent is TcxCustomMemo) then
        TcxCustomEdit(AComponent).OnKeyPress := DefaultOnKeyPress;
    end;

    // Decendant
    if AComponent is TcxCustomDateEdit then
    begin
      InitDateEditProperties(TcxDateEditProperties(TcxCustomDateEdit(AComponent).Properties));
      Exit;
    end
    else if AComponent is TcxCustomCalcEdit then
    begin
      InitCalcEditProperties(TcxCalcEditProperties(TcxCustomCalcEdit(AComponent).Properties));
      Exit;
    end
    else if AComponent is TcxCustomCurrencyEdit then
    begin
      InitCurrencyEditProperties(TcxCurrencyEditProperties(TcxCustomCurrencyEdit(AComponent).Properties));
      Exit;
    end
    else if AComponent is TcxCustomLookupComboBox then
    begin
      InitLookupComboBoxProperties(TcxLookupComboBoxProperties(TcxCustomLookupComboBox(AComponent).Properties));
      Exit;
    end
    else if AComponent is TcxCustomExtLookupComboBox then
    begin
      InitExtLookupComboBoxProperties(TcxExtLookupComboBoxProperties(TcxCustomExtLookupComboBox(AComponent).Properties));
      Exit;
    end;
  end
  else if AComponent is TcxRadioButton then
  begin
    TcxRadioButton(AComponent).OnKeyPress := DefaultOnKeyPress;
  end;
end;

procedure TInitVCL.AddToErrorLog(const AMessage: string);
var
  LogFile: TextFile;
begin
  // Create or update log
  AssignFile(LogFile, AppDataDir + 'ErrorLog.txt');
  try
    if FileExists(AppDataDir + 'ErrorLog.txt') then
      Append(LogFile)
    else
      Rewrite(LogFile);
    Writeln(LogFile, DateTimeToStr(Now));
    Writeln(LogFile, AMessage);
    Writeln(LogFile, '------------------------------------------------');
    Flush(LogFile);
  finally
    Close(LogFile);
  end;
end;

procedure TInitVCL.cgvNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  TableView: TcxGridDBTableView;
begin
  if Sender is TcxNavigatorControlButtons then
  begin
    if TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner is TcxGridDBTableView then
    begin
      TableView := TcxGridDBTableView(TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner);

      if AButtonIndex = NAVIGATOR_BUTTON_REFRESH then
      begin
        LockRefresh(TableView.DataController.DataSource.DataSet);
        ADone := True;
      end;
    end;
  end;
end;

procedure TInitVCL.DefaultOnKeyPress(Sender: TObject; var Key: Char);
var
  Form: TCustomForm;
begin
  if Key = #13 then
  begin
    if not (Sender is TControl) then Exit;

    with (Sender as TControl) do
    begin
      Form := GetParentForm(Sender as TControl);
      if Form = nil then
        Exit;

      Form.Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
  end;
end;

function TInitVCL.GetTextFromMessage(const AObjectToken, AObjectTokenEnd,
  AMessage: string): string;
var
  StartPos, Count, Len: Integer;
begin
  if Pos(AObjectToken, AMessage) = 0 then
    Exit;
  StartPos := Pos(AObjectToken, AMessage) + Length(AObjectToken);
  Count := StartPos;
  Len := Length(AMessage);
  while Count <= Len do
  begin
    if AMessage[Count] = AObjectTokenEnd then
      break
    else
      inc(Count);
  end;
  Count := Count - StartPos;
  Result := Copy(AMessage, StartPos, Count);
end;

procedure TInitVCL.InitCalcEditProperties(AComponent: TcxCalcEditProperties);
begin
  {Ivan 01/01/2009: Disable auto format display
  AComponent.DisplayFormat := DislpayFormatNumeric;}
  AComponent.Alignment.Horz := taRightJustify;
  AComponent.UseLeftAlignmentOnEditing := False;
end;

procedure TInitVCL.InitCurrencyEditProperties(
  AComponent: TcxCurrencyEditProperties);
begin
  {Ivan 01/01/2009: Disable auto format display
  AComponent.DisplayFormat := DislpayFormatCurrency;}
  //AComponent.DecimalPlaces := 2;{ TODO -oivan : pikirkan }
  AComponent.Alignment.Horz := taRightJustify;
  AComponent.UseLeftAlignmentOnEditing := False;
end;

procedure TInitVCL.InitDateEditProperties(AComponent: TcxDateEditProperties);
begin
//  AComponent.ShowTime := False;
//  AComponent.SaveTime := False;
end;

procedure TInitVCL.InitExtLookupComboBoxProperties(
  AComponent: TcxExtLookupComboBoxProperties);
var
  ACustomGridTableView: TcxCustomGridTableView;
begin
  // get TcxCustomGridTableView from view property
  ACustomGridTableView := TcxCustomGridTableView(AComponent.View);
  if Assigned(ACustomGridTableView) then
  begin
    if ACustomGridTableView is TcxGridTableView then
    begin
      // GridTableView and GridbandedTableView
      AComponent.DropDownWidth := 400;
      AComponent.DropDownAutoSize := not TcxGridTableView(ACustomGridTableView).OptionsView.GroupByBox;
      AComponent.DropDownSizeable := TcxGridTableView(ACustomGridTableView).OptionsView.GroupByBox;
    end
    else
      // GridCardView
      AComponent.DropDownAutoSize := True;
  end;
end;

procedure TInitVCL.InitTForm(AForm: TForm);
begin
  AForm.KeyPreview := True;
  AForm.Scaled := False;
  AForm.Position := poScreenCenter;
end;

procedure TInitVCL.InitLookupComboBoxProperties(
  AComponent: TcxLookupComboBoxProperties);
begin
  AComponent.DropDownAutoSize := True;
end;

procedure TInitVCL.InitOthers(AComponent: TComponent);
var
  S: string;
begin
  if AComponent is TIvSearchBoxADO then
  begin
    S := TIvSearchBoxADO(AComponent).Owner.Name + TIvSearchBoxADO(AComponent).Name;
    TIvSearchBoxADO(AComponent).SettingFilename := AppDataDir + 'Setting ' +
      TranslateToNumeric(Copy(S, 3, Length(S) - 2)) + '.cfg'
  end;
  if AComponent is TIvSearchBoxDAC then
  begin
    S := TIvSearchBoxDAC(AComponent).Owner.Name + TIvSearchBoxDAC(AComponent).Name;
    TIvSearchBoxDAC(AComponent).SettingFilename := AppDataDir + 'Setting ' +
      TranslateToNumeric(Copy(S, 3, Length(S) - 2)) + '.cfg'
  end;
end;

procedure TInitVCL.InitVCL(AComponent: TComponent);
var
  i: integer;
begin
  // check if datamodule
  FCurrentVCLIsDataModule := AComponent is TDataModule;

  // check if form
  if AComponent is TForm then
    InitTForm(TForm(AComponent));

  for i := 0 to AComponent.ComponentCount - 1 do
  begin
    InitExpressEditors(AComponent.Components[i]);
    InitExpressGrid(AComponent.Components[i]);
    InitExpressBar(AComponent.Components[i]);
    InitDatabase(AComponent.Components[i]);
    InitOthers(AComponent.Components[i]);
  end;

  inherited;
end;

procedure TInitVCL.NewOnDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var
  MessageShow: string;
begin
  MessageShow := TranslateErrorMessage(E.Message);

  // finally
  MessageDlg(MessageShow, mtInformation, [mbOK], 0);
  Action := daAbort;

  DataSet.Refresh;
end;

procedure TInitVCL.NewOnError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var
  MessageShow: string;
begin
  MessageShow := TranslateErrorMessage(E.Message);

  // finally
  MessageDlg(MessageShow, mtInformation, [mbOK], 0);
  Action := daAbort;
end;

function TInitVCL.ShowAKViolationMessage(AMessage: string): string;
begin
  if StatusLanguage = 0 then
    Result := AK_VIOLATION;
  if StatusLanguage = 1 then
    Result := AK_VIOLATION_IND;
end;

function TInitVCL.ShowFKViolationMessage(AMessage: string): string;
begin
  if StatusLanguage = 0 then
    Result := FK_VIOLATION;
  if StatusLanguage = 1 then
    Result := FK_VIOLATION_IND;
end;

function TInitVCL.ShowNullViolationMessage(AMessage: string): string;
var
  FieldName: string;
begin
  // try SQLServer rule
  FieldName := GetTextFromMessage('column ''', '''', AMessage);
  // try Postgres rule
  if Trim(FieldName) = '' then
    FieldName := GetTextFromMessage('column "', '"', AMessage);
  // try Sqlite rule
  if Trim(FieldName) = '' then
    FieldName := GetTextFromMessage('Field ''', '''', AMessage);

  FieldName := Translate(FieldName);
  FieldName := MakeNameSpace(FieldName);
  if StatusLanguage = 0 then
    Result := Format(NULL_VIOLATION, [FieldName]);
  if StatusLanguage = 1 then
    Result := Format(NULL_VIOLATION_IND, [FieldName]);
end;

function TInitVCL.ShowPKViolationMessage(AMessage: string): string;
begin
  if StatusLanguage = 0 then
    Result := PK_VIOLATION;
  if StatusLanguage = 1 then
    Result := PK_VIOLATION_IND;
end;

function TInitVCL.ShowQtyZeroViolationMessage(AMessage: string): string;
begin
  if StatusLanguage = 0 then
    Result := QTY_ZERO_VIOLATION;
  if StatusLanguage = 1 then
    Result := QTY_ZERO_VIOLATION_IND;
end;

function TInitVCL.Translate(const AWord: string): string;
var
  MemINIFile: TMemIniFile;
begin
  MemINIFile := TMemIniFile.Create(DictionaryFilename);
  try
    Result := MemINIFile.ReadString('Translate', LowerCase(Trim(AWord)), AWord);
  finally
    MemINIFile.Free;
  end;
end;

function TInitVCL.TranslateErrorMessage(AErrorMessage: string): string;
var
  MessageShow: string;
begin
  // MSSQL Server
  if Pos('PRIMARY KEY', AErrorMessage) <> 0 then // Primary Key Violation
    MessageShow := ShowPKViolationMessage(AErrorMessage)
  else if Pos('UNIQUE KEY', AErrorMessage) <> 0 then // Alternate Key Violation
    MessageShow := ShowAKViolationMessage(AErrorMessage)
  else if Pos('NULL', AErrorMessage) <> 0 then // Null Value Violation
    MessageShow := ShowNullViolationMessage(AErrorMessage)
  else if Pos('TABLE REFERENCE constraint', AErrorMessage) <> 0 then // Foreign Key Violation
    MessageShow := ShowFKViolationMessage(AErrorMessage)
  else if Pos('Non-nullable column', AErrorMessage) <> 0 then // Non-nullable Value Violation
    MessageShow := ShowNullViolationMessage(AErrorMessage)

  // Postgres
  else if Pos('violates unique constraint', AErrorMessage) <> 0 then // Primary Key Violation
    MessageShow := ShowPKViolationMessage(AErrorMessage)
  else if Pos('violates foreign key', AErrorMessage) <> 0 then // Foreign Key Violation
    MessageShow := ShowFKViolationMessage(AErrorMessage)
  else if Pos('violates not-null constraint', AErrorMessage) <> 0 then // Non-nullable Value Violation
    MessageShow := ShowNullViolationMessage(AErrorMessage)
  else if Pos('quantitypluswithoutzero_check', AErrorMessage) <> 0 then // Qty<>0
    MessageShow := ShowQtyZeroViolationMessage(AErrorMessage)

  // SQLite
  else if Pos('must have a value', AErrorMessage) <> 0 then // Non-nullable Value Violation
    MessageShow := ShowNullViolationMessage(AErrorMessage)

  // User Message (from Trigger or Store Procedure)
  else if Pos(DatabaseMessageToken, AErrorMessage) <> 0 then
    MessageShow := GetTextFromMessage(DatabaseMessageToken, DatabaseMessageToken, AErrorMessage)

  else
  begin
    // Others (Unknow error)
    AddToErrorLog(AErrorMessage);
    MessageShow := AErrorMessage;
  end;

  // finally
  Result := MessageShow;
end;

procedure TInitVCL.InitDatabase(AComponent: TComponent);
begin
  if AComponent is TIvSQLStorage then
  begin
    case DatabaseEngine of
      deMSSQLServer: TIvSQLStorage(AComponent).DatabaseEngine := dbMsSql;
      deMySQL: TIvSQLStorage(AComponent).DatabaseEngine := dbMySql;
      dePostgreSQL: TIvSQLStorage(AComponent).DatabaseEngine := dbPostgre;
      deFirebird: TIvSQLStorage(AComponent).DatabaseEngine := dbFirebird;
      deOracle: TIvSQLStorage(AComponent).DatabaseEngine := dbOracle;
      deSQLite: TIvSQLStorage(AComponent).DatabaseEngine := dbSQLite;
    end;
    //Ivan 14/01/2009: do not automatic ReinjectSQL for TfmLogin
    if AComponent.Tag = 0 then
      TIvSQLStorage(AComponent).ReInjectSQL;
  end
  else if AComponent is TDataSource then
  begin
    TDataSource(AComponent).AutoEdit := IsAutoEdit;
  end
  else if AComponent is TCustomADODataset then
  begin
    if not Assigned(TCustomADODataset(AComponent).OnPostError) then
      TCustomADODataset(AComponent).OnPostError := NewOnError;
    if not Assigned(TCustomADODataset(AComponent).OnEditError) then
      TCustomADODataset(AComponent).OnEditError := NewOnError;
    if not Assigned(TCustomADODataset(AComponent).OnDeleteError) then
      TCustomADODataset(AComponent).OnDeleteError := NewOnDeleteError;
  end
  else if AComponent is TUniQuery then
  begin
    if not Assigned(TUniQuery(AComponent).OnPostError) then
      TUniQuery(AComponent).OnPostError := NewOnError;
    if not Assigned(TUniQuery(AComponent).OnEditError) then
      TUniQuery(AComponent).OnEditError := NewOnError;
    if not Assigned(TUniQuery(AComponent).OnDeleteError) then
      TUniQuery(AComponent).OnDeleteError := NewOnDeleteError;
  end;
end;

{ DevExpress Class Diagram

TComponent
  TcxControlChildComponent
    TcxCustomGridView
      TcxCustomGridTableView
        TcxGridTableView
          TcxGridDBTableView
          TcxGridBandedTableView
            TcxGridDBBandedTableView
        TcxGridCardView
          TcxGridDBCardView
  TcxCustomGridTableItem
    TcxGridColumn
      TcxGridDBColumn
      TcxGridBandedColumn
        TcxGridDBBandedColumn
    TcxGridCardViewRow
      TcxGridDBCardViewRow

T...
  TCustomControl
    TcxControl
      TcxContainer
        TcxListBox
        TcxCustomEdit
          TcxCustomTextEdit
            TcxTextEdit
            TcxDBTextEdit
            TcxCustomMaskEdit
              TcxMaskEdit
              TcxDBMaskEdit
              TcxCustomDropDownEdit
                TcxCustomPopupEdit
                  TcxPopupEdit
                  TcxDBPopupEdit
                  TcxCustomDateEdit
                    TcxDateEdit
                    TcxDBDateEdit
                  TcxCustomCalcEdit
                    TcxCalcEdit
                    TcxDBCalcEdit
                  TcxCustomBlobEdit
                    TcxBlobEdit
                    TcxDBBlobEdit
                TcxCustomComboBox
                  TcxComboBox
                  TcxDBComboBox
                  TcxCustomImageComboBox
                    TcxImageComboBox
                    TcxDBImageComboBox
                  TcxCustomMRUEdit
                    TcxMRUEdit
                    TcxDBMRUEdit
                  TcxCustomLookupEdit
                    TcxCustomDBLookupEdit
                      TcxCustomLookupComboBox
                        TcxLookupComboBox
                        TcxDBLookupComboBox
                      TcxCustomExtLookupComboBox
                        TcxExtLookupComboBox
                        TcxDBExtLookupComboBox
              TcxCustomButtonEdit
                TcxButtonEdit
                TcxDBButtonEdit
            TcxCustomSpinEdit
              TcxSpinEdit
              TcxDBSpinEdit
          TcxCustomCheckBox
            TcxCheckBox
            TcxDBCheckBox
          TcxCustomCurrencyEdit
            TcxCurrencyEdit
            TcxDBCurrencyEdit
          TcxCustomImage
            TcxImage
            TcxDBImage
          TcxCustomGroupBox
            TcxCustomButtonGroup
              TcxCustomRadioGroup
                TcxRadioGroup
                TcxDBRadioGroup
          TcxCustomMemo
            TcxMemo
            TcxDBMemo
      TcxCustomGrid
        TcxGrid

T...
  TRadioButton
    TcxRadioButton

TcxInterfacedPersistent <Interface>
  TcxCustomEditProperties
    TcxCustomTextEditProperties
      TcxCustomMaskEditProperties
        TcxCustomDropDownEditProperties
          TcxCustomComboBoxProperties
            TcxCustomLookupEditProperties
              TcxCustomDBLookupEditProperties

T..
  TcxTreeListColumn
    TcxDBTreeListColumn
}

end.



