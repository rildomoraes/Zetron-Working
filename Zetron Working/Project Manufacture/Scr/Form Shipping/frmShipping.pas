unit frmShipping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxSkinscxPCPainter, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, ADODB, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxPC, cxContainer, cxTextEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmShipping = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayShippingId: TcxGridDBColumn;
    cgvPrevDisplayShippingName: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCountryId: TcxGridDBColumn;
    cgvPrevDisplayProvinceId: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeShippingId: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeShippingName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    lblIdCity: TLabel;
    dblcCityId: TcxDBExtLookupComboBox;
    dbmMemo: TcxDBMemo;
    Label1: TLabel;
    pnlTop: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cgShippingDestination: TcxGrid;
    cgvShippingDestination: TcxGridDBTableView;
    cgShippingDestinationLevel1: TcxGridLevel;
    qryShippingDestination: TADODataSet;
    dsShippingDestination: TDataSource;
    cgvShippingDestinationCityId: TcxGridDBColumn;
    cgvShippingDestinationShippingId: TcxGridDBColumn;
    cgvShippingDestinationPriceDimensi: TcxGridDBColumn;
    cgvShippingDestinationMemo: TcxGridDBColumn;
    cgvShippingDestinationPriceBerat: TcxGridDBColumn;
    btnGetId: TcxButton;
    dbmAddress: TcxDBMemo;
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmShipping: TfmShipping;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmShipping.cgvNavigatorButtonsButtonClick(Sender: TObject;
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

procedure TfmShipping.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvShippingDestinationPriceDimensi.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvShippingDestinationPriceBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(dmGlobal.qryProvince);
  OpenIfClose(dmGlobal.qryCity, False, False);
  OpenIfClose(dmInventory.qryShipping, True);
  OpenIfClose(qryShippingDestination);
end;

procedure TfmShipping.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmInventory.qryShipping, True);
  LockRefresh(qryShippingDestination);
end;

end.

