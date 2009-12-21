unit frmItemEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmItemPro, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCalc, cxImage, cxBlobEdit, cxImageComboBox, cxCheckBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  MemDS, DBAccess, Uni, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList, cxSpinEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxMemo,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxContainer,
  cxTextEdit, StdCtrls, cxPC, dxDockPanel, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxDockControlPainter;

type
  TfmItemEnt = class(TfmItemPro)
    tsEngineCounter: TcxTabSheet;
    qryItemEngineGroupJob: TUniQuery;
    dsItemEngineGroupJob: TDataSource;
    cgItemEngineGroupJob: TcxGrid;
    cgvItemEngineGroupJob: TcxGridDBTableView;
    cgItemEngineGroupJobLevel1: TcxGridLevel;
    cgvItemEngineGroupJobitemid: TcxGridDBColumn;
    cgvItemEngineGroupJobenginegroupjobcode: TcxGridDBColumn;
    cgvItemEngineGroupJobdefaultcounterincqty: TcxGridDBColumn;
    cgvItemEngineGroupJobenginegroupjobcode2: TcxGridDBColumn;
    lblEngineGroupJobCounter: TLabel;
    Label10: TLabel;
    dbchFlagNeedValidation: TcxDBCheckBox;
    dbeLevelValidation: TcxDBSpinEdit;
    procedure qryItemEngineGroupJobBeforeEdit(DataSet: TDataSet);
    procedure qryItemEngineGroupJobBeforeInsert(DataSet: TDataSet);
    procedure qryItemEngineGroupJobNewRecord(DataSet: TDataSet);
  private

  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmItemEnt: TfmItemEnt;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory;

{ TfmItemEnt }

procedure TfmItemEnt.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvItemEngineGroupJobdefaultcounterincqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  OpenIfClose(dmInventory.qryEngineGroupJob);
  OpenIfClose(qryItemEngineGroupJob);
end;

procedure TfmItemEnt.qryItemEngineGroupJobBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemEnt.qryItemEngineGroupJobBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItemEnt.qryItemEngineGroupJobNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('DefaultCounterIncQty').AsInteger := 1;
end;

procedure TfmItemEnt.RefreshAll;
begin
  inherited;

  LockRefresh(qryItemEngineGroupJob);
end;

end.
