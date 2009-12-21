{*******************************
  Copyrights By Zetron System
  Last Modified 10/07/2008
*******************************}

unit frmUniDBNavigatorEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGridCustomTableView, cxGrid, INIFiles,

  // Auto Generate
  frmUniDBNavigator, Menus, cxLookAndFeelPainters, dxDockControl, dxDockPanel,
  DB, untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls,
  cxButtons, ExtCtrls, dxSkinsCore, dxSkinsdxDockControlPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFormUniDBNavigatorEx = class(TFormUniDBNavigator)
    {form ini memiliki tombol navigasi untuk maju dan mundur posisi record query}
    dxDockSite1: TdxDockSite;
    pnlInfo: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    pnlExplorer: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockingManager1: TdxDockingManager;
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
  private
    FDefaultGrid: TcxGrid;
      {Menyimpan default grid pada panel explorer}
    FDefaultGridView: TcxCustomGridTableView;
      {Menyimpan default grid view pada FDefaultGrid}
  protected
    //FMenuOptions: TRecMenuOptions; inherited
    FINIFileNew: TMemIniFile;
    procedure InitForm; override;
    procedure DeinitForm; override;
    //procedure RefreshAll; inherited

    property DefaultGrid: TcxGrid
      read FDefaultGrid write FDefaultGrid;
    property DefaultGridView: TcxCustomGridTableView
      read FDefaultGridView write FDefaultGridView;
  public
    constructor Create(AOwner: TComponent); override;
      {constructor Create digunakan hanya untuk kepentingan form ini saja, form
      keturunan tidak perlu mendefinisikan procedure ini lagi}
    //class procedure ExecuteForm(AMenuFlag: byte = 0); inherited
  end;

implementation

{$R *.dfm}

uses dtmGlobal;

procedure TFormUniDBNavigatorEx.actNextExecute(Sender: TObject);
begin
  if FDefaultGridView <> nil then
    FDefaultGridView.NavigatorButtons.Next.Click
  else
    dsDefault.DataSet.Next;
end;

procedure TFormUniDBNavigatorEx.actPrevExecute(Sender: TObject);
begin
  if FDefaultGridView <> nil then
    FDefaultGridView.NavigatorButtons.Prior.Click
  else
    dsDefault.DataSet.Prior;
end;

constructor TFormUniDBNavigatorEx.Create(AOwner: TComponent);
var
  i, j: integer;
begin
  inherited;

  // Find default grid view
  for i := 0 to pnlExplorer.ControlCount - 1 do
  begin
    j := pnlExplorer.Controls[i].ComponentIndex;
    if Self.Components[j] is TcxGrid then
    begin
      FDefaultGrid := TcxGrid(Self.Components[j]);
      if FDefaultGrid.Levels.Count > 0 then
        if (FDefaultGrid.Levels.Items[0].GridView <> nil) and
          (FDefaultGrid.Levels.Items[0].GridView is TcxCustomGridTableView) then
          FDefaultGridView := TcxCustomGridTableView(FDefaultGrid.Levels.Items[0].GridView);
      Break;
    end;
  end;

  // Make Explorer grid readonly
  if FDefaultGridView <> nil then
  begin
    FDefaultGridView.OptionsData.Deleting := False;
    FDefaultGridView.OptionsData.Editing := False;
    FDefaultGridView.OptionsData.Inserting := False;
  end;
end;

procedure TFormUniDBNavigatorEx.DeinitForm;
begin
  inherited;

  if Assigned(FINIFileNew) then
  begin
    if (FINIFileNew.FileName <> '') and (IvPositionStandard1.AutoLoad) then
    begin
      FINIFileNew.WriteBool(pnlExplorer.Name, 'AutoHide', pnlExplorer.AutoHide);
      FINIFileNew.WriteInteger(pnlExplorer.Name, 'Width', pnlExplorer.Width);
      FINIFileNew.UpdateFile;
    end;
    FreeAndNil(FINIFileNew);
  end;
end;

procedure TFormUniDBNavigatorEx.InitForm;
begin
  inherited;

  try
    FINIFileNew := TMemIniFile.Create(IvPositionStandard1.Filename);
    if Assigned(FINIFileNew) then
    begin
      if FINIFileNew.SectionExists(pnlExplorer.Name) then
      begin
        pnlExplorer.AutoHide := FINIFileNew.ReadBool(pnlExplorer.Name, 'AutoHide', False);
        pnlExplorer.Width := FINIFileNew.ReadInteger(pnlExplorer.Name, 'Width', 300);
      end;
    end;
  except
    FreeAndNil(FINIFileNew);
  end;
end;

end.




