unit frmWarehouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxMemo, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, StdCtrls, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, cxImageComboBox;

type
  TfmWarehouse = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvWarehouse: TcxGridDBTableView;
    cgvWarehousevcIdWarehouse: TcxGridDBColumn;
    cgvWarehousevcWarehouseName: TcxGridDBColumn;
    cgvWarehousevcContactPerson: TcxGridDBColumn;
    cgvWarehousevcAddress: TcxGridDBColumn;
    cgvWarehousevcIdCountry: TcxGridDBColumn;
    cgvWarehousevcIdProvince: TcxGridDBColumn;
    cgvWarehousevcIdCity: TcxGridDBColumn;
    cgvWarehousevcIPAddress: TcxGridDBColumn;
    cgvWarehousechFlagFix: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    lblIdWarehouse: TLabel;
    lblWarehouseName: TLabel;
    lblContactPerson: TLabel;
    lblAddress: TLabel;
    lblIdCity: TLabel;
    dbeIdWarehouse: TcxDBTextEdit;
    dbeWarehouseName: TcxDBTextEdit;
    dbeContactPerson: TcxDBTextEdit;
    dbeAddress: TcxDBTextEdit;
    dblcIdCity: TcxDBExtLookupComboBox;
    dbcbFlagCouple: TcxDBCheckBox;
    dbchFlagSale: TcxDBCheckBox;
    dbmNotes: TcxDBMemo;
    Label1: TLabel;
    dbeStatusWarehouse: TcxDBImageComboBox;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvWarehouseStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWarehouse: TfmWarehouse;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmWarehouse.cgvWarehouseStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('ch' + FIELD_FLAGFIX ).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmWarehouse.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbeIdWarehouse, False);
  end;
  if dsDefault.State in [dsEdit] then
  begin
    if dsDefault.DataSet.FieldByName('ch' + FIELD_FLAGFIX ).AsString = '1' then
    begin
      SetReadOnly(dbeIdWarehouse, True);
    end;
  end;
end;

procedure TfmWarehouse.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryWarehouse);
end;

procedure TfmWarehouse.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmGlobal.qryCity);
end;

end.

