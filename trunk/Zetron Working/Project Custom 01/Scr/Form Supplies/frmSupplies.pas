unit frmSupplies;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCurrencyEdit,
  cxMemo, cxCheckBox, cxCalc, ADODB, cxDropDownEdit, cxDBEdit, cxImage, cxPC,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls, cxImageComboBox;

type
  TfmSupplies = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvSupplies: TcxGridDBTableView;
    cgvSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvSuppliesvcIdSuppliesCategory: TcxGridDBColumn;
    cgvSuppliesvcMerk: TcxGridDBColumn;
    cgvSuppliesvcType: TcxGridDBColumn;
    cgvSuppliesinMinStock: TcxGridDBColumn;
    cgvSuppliesvcNotes: TcxGridDBColumn;
    cgvSupplieschFlagService: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    pnlEntry: TPanel;
    lblIdSupplies: TLabel;
    Kategori: TLabel;
    dbeIdSupplies: TcxDBTextEdit;
    dblcSuppliesCategory: TcxDBExtLookupComboBox;
    cxPageControl1: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsImage: TcxTabSheet;
    dbiImage1: TcxDBImage;
    dbiImage2: TcxDBImage;
    tsDetail: TcxTabSheet;
    lblSuppliesName: TLabel;
    dbeSuppliesName: TcxDBTextEdit;
    lblUnitOfMeasure: TLabel;
    lblMerk: TLabel;
    dbeMerk: TcxDBTextEdit;
    lblType: TLabel;
    dbeType: TcxDBTextEdit;
    lblMinStockOverAll: TLabel;
    dbeMinStock: TcxDBCurrencyEdit;
    tsPrice: TcxTabSheet;
    dbchkFlagService: TcxDBCheckBox;
    lblEmployeeName: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    Label1: TLabel;
    dbePrice1: TcxDBCalcEdit;
    Label2: TLabel;
    dbePrice2: TcxDBCalcEdit;
    Label3: TLabel;
    dbePrice3: TcxDBCalcEdit;
    tsMinStock: TcxTabSheet;
    cxGrid1: TcxGrid;
    cgvSuppliesMinStock: TcxGridDBTableView;
    cgvSuppliesMinStockvcIdSupplies: TcxGridDBColumn;
    cgvSuppliesMinStockvcIdWarehouse: TcxGridDBColumn;
    cgvSuppliesMinStockinMinStock: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qrySuppliesMinStock: TADODataSet;
    dsSuppliesMinStock: TDataSource;
    qrySuppliesImage: TADODataSet;
    dsSuppliesImage: TDataSource;
    dblcUnitOfMeasure: TcxDBTextEdit;
    dbcStatusCurrency1: TcxDBImageComboBox;
    dbcStatusCurrency2: TcxDBImageComboBox;
    dbcStatusCurrency3: TcxDBImageComboBox;
    cxTabSheet1: TcxTabSheet;
    cgvSuppliesDetail: TcxGridDBTableView;
    cgSuppliesDetailLevel1: TcxGridLevel;
    cgSuppliesDetail: TcxGrid;
    qrySuppliesDt: TADODataSet;
    dsSuppliesDt: TDataSource;
    cgvSuppliesDetailvcIdSuppliesParent: TcxGridDBColumn;
    cgvSuppliesDetailvcIdSupplies: TcxGridDBColumn;
    cgvSuppliesDetailinQty: TcxGridDBColumn;
    pnlCoupleHeader: TPanel;
    dbchkCouple: TcxDBCheckBox;
    qryPrevSuppliesDt: TADOQuery;
    dsPrevSuppliesDt: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevSuppliesDt: TcxGridDBTableView;
    cgvPrevSuppliesDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesDtvcIdSuppliesCategory: TcxGridDBColumn;
    cgvPrevSuppliesDtvcType: TcxGridDBColumn;
    cgvSuppliesDetailvcIdSupplies2: TcxGridDBColumn;
    cgvSuppliesDetailvcIdSupplies3: TcxGridDBColumn;
    cgvSuppliesDetailvcIdSupplies4: TcxGridDBColumn;
    procedure qrySuppliesMinStockBeforePost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure qrySuppliesDtBeforePost(DataSet: TDataSet);
    procedure qrySuppliesDtNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSupplies: TfmSupplies;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmShare, untCustom01;

procedure TfmSupplies.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dsDefault.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if Field.FieldName = 'vcIdSuppliesCategory' then
    begin
      dsDefault.DataSet.FieldByName('vcIdSupplies').AsString :=
        dmShare.GetCurrentIdSupplies(dsDefault.DataSet.FieldByName('vcIdSuppliesCategory').AsString,
        SUPPLIES_ID_COUNTER_LENGTH);
    end;
  end;
end;

procedure TfmSupplies.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
    dbchkFlagService.Enabled := False;
  if dsDefault.State in [dsInsert] then
    dbchkFlagService.Enabled := True;
end;

procedure TfmSupplies.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySuppliesCategory, True);
  OpenIfClose(dmInventory.qrySupplies, True);
  OpenIfClose(qryPrevSuppliesDt, True);
  OpenIfClose(qrySuppliesImage, True);
  OpenIfClose(qrySuppliesMinStock);
  OpenIfClose(qrySuppliesDt);

  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);

  dmInventory.qrySupplies.Tag := FParamArrayValues[0];
  if FParamArrayValues[0] = 1 then
  begin
    Self.Caption := Self.Caption + ' - Inesert Only';
  end;

  // Display Format
  dbeMinStock.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbePrice1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePrice2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePrice3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSuppliesMinStockinMinStock.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSuppliesDetailinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
end;

procedure TfmSupplies.qrySuppliesDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('vcIdSupplies').AsString =
    dsDefault.Dataset.FieldByName('vcIdSupplies').AsString then
  begin
    MessageDlg(MSG_ITEMDT_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmSupplies.qrySuppliesDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcIdSuppliesParent').AsString := dsDefault.Dataset.FieldByName('vcIdSupplies').AsString;
  DataSet.FieldByName('inQty').AsInteger := 1;
end;

procedure TfmSupplies.qrySuppliesMinStockBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSupplies.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmInventory.qrySuppliesCategory, True);
  LockRefresh(dmInventory.qrySupplies, True);
  LockRefresh(qryPrevSuppliesDt, True);
  LockRefresh(qrySuppliesImage);
  LockRefresh(qrySuppliesMinStock);
  LockRefresh(qrySuppliesDt);
end;

end.
