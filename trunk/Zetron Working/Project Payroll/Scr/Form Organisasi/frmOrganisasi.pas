unit frmSettingLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, ActnList,
  StdCtrls, cxButtons, untIvPositionDevExpress, untIvPositionStandard,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, cxClasses, cxGridLevel, ExtCtrls,
  cxDBExtLookupComboBox, cxMemo, cxGridBandedTableView,
  cxGridDBBandedTableView, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCalc, cxCalendar,
  cxCurrencyEdit, cxSpinEdit, Menus, ADODB, DBCtrls, cxSplitter,
  untIvNameConverter, cxGridCardView, cxGridDBCardView, cxCheckBox, cxPC,
  cxImage, cxButtonEdit, WinSkinData, cxColorComboBox, dxDockControl,
  dxDockPanel;

type
  TfmSettingLocal = class(TForm)
    aclHeader: TActionList;
    actSave: TAction;
    actRefresh: TAction;
    btnPost: TcxButton;
    btnRefresh: TcxButton;
    pnlButton: TPanel;
    btnCancel: TcxButton;
    actCancel: TAction;
    shpToolbarBackground: TShape;
    SkinData1: TSkinData;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    dxDockSite1: TdxDockSite;
    dxDockingManager1: TdxDockingManager;
    dpInfo: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    procedure actSaveExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure chkOnClick(Sender: TObject);
    procedure edtWaitWallpaperPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtWallpaperPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtSkinPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbToolbarColorPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;

    procedure LoadDataToForm;
    procedure SaveDataFromForm;
  public
    { Public declarations }
    class procedure ExecuteForm;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal,
  StrUtils;

{$R *.dfm}

procedure TfmSettingLocal.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmSettingLocal.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmSettingLocal.actSaveExecute(Sender: TObject);
begin
  SaveDataFromForm;
  Close;
end;

procedure TfmSettingLocal.chkOnClick(Sender: TObject);
var
  S: string;
begin
  if Sender is TcxCheckBox then
  begin
    if Pos('Yes', TcxCheckBox(Sender).Name) <> 0 then
      S := StringReplace(TcxCheckBox(Sender).Name, 'Yes', 'No', [rfReplaceAll])
    else
      S := StringReplace(TcxCheckBox(Sender).Name, 'No', 'Yes', [rfReplaceAll]);

    TcxCheckBox(FindComponent(S)).Checked := not TcxCheckBox(Sender).Checked;
  end;
end;

procedure TfmSettingLocal.DeinitForm;
begin
//
end;

class procedure TfmSettingLocal.ExecuteForm;
var
  fmSettingLocal: TfmSettingLocal;
begin
  fmSettingLocal := TfmSettingLocal.Create(Application);
  with fmSettingLocal do
  begin
    try
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSettingLocal.InitForm;
begin
  dmGlobal.InitFormComponent(Self);

  LoadDataToForm;
end;


procedure TfmSettingLocal.LoadDataToForm;
begin
  // Local Setting
  edtWaitWallpaper.EditValue := dmGlobal.PropWaitWallpaperFilename;
  if FileExists(dmGlobal.PropWaitWallpaperFilename) then
    imgWaitWallpaper.Picture.LoadFromFile(dmGlobal.PropWaitWallpaperFilename);
  edtWallpaper.EditValue := dmGlobal.PropWallpaperFilename;
  if FileExists(dmGlobal.PropWallpaperFilename) then
    imgWallpaper.Picture.LoadFromFile(dmGlobal.PropWallpaperFilename);
  edtSkin.EditValue := dmGlobal.PropSkinFilename;
  if FileExists(dmGlobal.PropSkinFilename) then
  begin
    SkinData1.SkinFile := dmGlobal.PropSkinFilename;
    SkinData1.Active := True;;
  end;
  cbToolbarColor.ColorValue := dmGlobal.PropToolbarColor;
  cbLanguage.ItemIndex := dmGlobal.PropLanguageFlag;
  chkLocalOptionYes1.Checked := dmGlobal.PropAdvanceUser;
  if dmGlobal.PropDockViewStyle = vsStandard then
    cbDockViewStyle.Text := 'vsStandard'
  else if dmGlobal.PropDockViewStyle = vsNET then
    cbDockViewStyle.Text := 'vsNET'
  else if dmGlobal.PropDockViewStyle = vsOffice11 then
    cbDockViewStyle.Text := 'vsOffice11'
  else if dmGlobal.PropDockViewStyle = vsXP then
    cbDockViewStyle.Text := 'vsXP'
  else if dmGlobal.PropDockViewStyle = vsUseLookAndFeel then
    cbDockViewStyle.Text := 'vsUseLookAndFeel'
  else
    cbDockViewStyle.Text := 'vsNET';
end;

procedure TfmSettingLocal.RefreshAll;
begin
  LoadDataToForm;
end;

procedure TfmSettingLocal.SaveDataFromForm;
var
  ApplicationPath: string;
begin
  // Save Local Setting
  ApplicationPath := ExtractFilePath(Application.ExeName);
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'WaitWallpaperFilename', edtWaitWallpaper.EditValue);
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'WallpaperFilename', edtWallpaper.EditValue);
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'SkinFilename', edtSkin.EditValue);
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'ToolbarColor', IntToStr(cbToolbarColor.ColorValue));
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'Language', IntToStr(cbLanguage.ItemIndex));
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'AdvanceUser', BoolToStr(chkLocalOptionYes1.Checked, True));
  SetINIValue(ApplicationPath + CONFIG_FILENAME, 'Options', 'DockViewStyle', cbDockViewStyle.Text);

  // Reload all program options !!!
  dmGlobal.LoadDataFromINI(CONFIG_FILENAME);
end;

procedure TfmSettingLocal.edtWaitWallpaperPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if OpenDialog1.Execute then
  begin
    edtWaitWallpaper.EditValue := OpenDialog1.FileName;
    imgWaitWallpaper.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TfmSettingLocal.edtWallpaperPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if OpenDialog1.Execute then
  begin
    edtWallpaper.EditValue := OpenDialog1.FileName;
    imgWallpaper.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TfmSettingLocal.edtSkinPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog2.Execute then
  begin
     edtSkin.EditValue := OpenDialog2.FileName;
     SkinData1.SkinFile := OpenDialog2.FileName;
     SkinData1.Active := True;
  end;
end;

procedure TfmSettingLocal.cbToolbarColorPropertiesEditValueChanged(
  Sender: TObject);
begin
  shpToolbarBackground.Brush.Color := cbToolbarColor.ColorValue;
end;

end.

