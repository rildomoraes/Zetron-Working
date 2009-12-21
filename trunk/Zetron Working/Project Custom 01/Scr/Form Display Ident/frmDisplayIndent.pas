unit frmDisplayIndent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCalc, cxCalendar, cxMemo, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, cxSplitter;

type
  TfmDisplayIndent = class(TFormUniDisplay)
    dtsPrevPOOutstandingHd: TADODataSet;
    dsPrevPOOutstandingHd: TDataSource;
    dtsPrevPOOutstandingDt: TADODataSet;
    dsPrevPOOutstandingDt: TDataSource;
    dtsPrevSOOutstandingHd: TADODataSet;
    dsPrevSOOutstandingHd: TDataSource;
    dtsPrevSOOutstandingDt: TADODataSet;
    dsPrevSOOutstandingDt: TDataSource;
    cgPOHd: TcxGrid;
    cgvPrevPOOutstandingHd: TcxGridDBTableView;
    cgvPrevPOOutstandingHdvcIdSupplies: TcxGridDBColumn;
    cgvPrevPOOutstandingHdvcSuppliesName: TcxGridDBColumn;
    cgvPrevPOOutstandingHdvcType: TcxGridDBColumn;
    cgvPrevPOOutstandingHdinOrderQty: TcxGridDBColumn;
    cgvPrevPOOutstandingHdinOutstandingQty: TcxGridDBColumn;
    cgvPrevPOOutstandingDt: TcxGridDBTableView;
    cgvPrevPOOutstandingDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevPOOutstandingDtdtShippingDate: TcxGridDBColumn;
    cgvPrevPOOutstandingDtvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPrevPOOutstandingDtdtPurchaseOrderDate: TcxGridDBColumn;
    cgvPrevPOOutstandingDtvcSupplierName: TcxGridDBColumn;
    cgvPrevPOOutstandingDtvcCityName: TcxGridDBColumn;
    cgvPrevPOOutstandingDtinOrderQty: TcxGridDBColumn;
    cgvPrevPOOutstandingDtinOutstandingQty: TcxGridDBColumn;
    cgvPrevPOOutstandingDttxMemo: TcxGridDBColumn;
    cgvPrevSOOutstandingHd: TcxGridDBTableView;
    cgvPrevSOOutstandingHdvcIdSupplies: TcxGridDBColumn;
    cgvPrevSOOutstandingHdvcSuppliesName: TcxGridDBColumn;
    cgvPrevSOOutstandingHdvcType: TcxGridDBColumn;
    cgvPrevSOOutstandingHdinOrderQty: TcxGridDBColumn;
    cgvPrevSOOutstandingHdinOutstandingQty: TcxGridDBColumn;
    cgvPrevSOOutstandingDt: TcxGridDBTableView;
    cgvPrevSOOutstandingDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevSOOutstandingDtdtShippingDate: TcxGridDBColumn;
    cgvPrevSOOutstandingDtvcIdSalesOrder: TcxGridDBColumn;
    cgvPrevSOOutstandingDtdtSalesOrderDate: TcxGridDBColumn;
    cgvPrevSOOutstandingDtvcCustomerName: TcxGridDBColumn;
    cgvPrevSOOutstandingDtvcCityName: TcxGridDBColumn;
    cgvPrevSOOutstandingDtSalesName: TcxGridDBColumn;
    cgvPrevSOOutstandingDtinOrderQty: TcxGridDBColumn;
    cgvPrevSOOutstandingDtinOutstandingQty: TcxGridDBColumn;
    cgvPrevSOOutstandingDttxMemo: TcxGridDBColumn;
    cgPOHdLevel1: TcxGridLevel;
    pcDisplayIndent: TcxPageControl;
    tsPO: TcxTabSheet;
    tsSO: TcxTabSheet;
    cgPODtLevel1: TcxGridLevel;
    cgPODt: TcxGrid;
    cgSOHdLevel1: TcxGridLevel;
    cgSOHd: TcxGrid;
    cgSODtLevel1: TcxGridLevel;
    cgSODt: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplayIndent: TfmDisplayIndent;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplayIndent.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevPOOutstandingHdinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPOOutstandingHdinOrderQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPOOutstandingDtinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPOOutstandingDtinOrderQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSOOutstandingHdinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSOOutstandingHdinOrderQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSOOutstandingDtinOutstandingQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSOOutstandingDtinOrderQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  SetReadOnly(cgvPrevPOOutstandingHd);
  SetReadOnly(cgvPrevPOOutstandingDt);
  SetReadOnly(cgvPrevSOOutstandingHd);
  SetReadOnly(cgvPrevSOOutstandingDt);

  OpenIfClose(dtsPrevPOOutstandingHd, True);
  OpenIfClose(dtsPrevPOOutstandingDt, True);
  OpenIfClose(dtsPrevSOOutstandingHd, True);
  OpenIfClose(dtsPrevSOOutstandingDt, True);
end;

procedure TfmDisplayIndent.RefreshAll;
begin
  inherited;

  LockRefresh(dtsPrevPOOutstandingHd, True);
  LockRefresh(dtsPrevPOOutstandingDt, True);
  LockRefresh(dtsPrevSOOutstandingHd, True);
  LockRefresh(dtsPrevSOOutstandingDt, True);
end;

end.
