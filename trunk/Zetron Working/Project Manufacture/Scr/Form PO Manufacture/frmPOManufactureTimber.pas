unit frmPOManufactureTimber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPOManufacture, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, cxGridLevel, cxGridDBTableView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxCheckBox, cxCalc,
  cxDropDownEdit, cxCalendar, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, ADODB, cxPC, cxCurrencyEdit;

type
  TfmPOManufactureTimber = class(TfmPOManufacture)
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderBalok: TcxGridDBBandedTableView;
    cgvPurchaseOrderBalokTCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokLCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokTInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokLInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokQty: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokKubikasi: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokFlagProsentase: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokProsentase: TcxGridDBBandedColumn;
    cgvPurchaseOrderLog: TcxGridDBTableView;
    cgvPurchaseOrderLogDAvg: TcxGridDBColumn;
    cgvPurchaseOrderLogPrice: TcxGridDBColumn;
    cgvPurchaseOrderLogQty: TcxGridDBColumn;
    cgvPurchaseOrderLogKubikasi: TcxGridDBColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgPurchaseOrderDtLevel2: TcxGridLevel;
    Label1: TLabel;
    dblcMaterial: TcxDBExtLookupComboBox;
    Label6: TLabel;
    dbeTotal: TcxDBCalcEdit;
    cgvPurchaseOrderBalokNo: TcxGridDBBandedColumn;
    cgvPurchaseOrderLogNo: TcxGridDBColumn;
    cgvPurchaseOrderBalokKwalitas: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokLInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderLogKwalitas: TcxGridDBColumn;
    cgvPurchaseOrderBalokEmployeeId: TcxGridDBBandedColumn;
    cgvPurchaseOrderLogEmployeeId: TcxGridDBColumn;
    qryPurchaseOrderDtBalok: TADODataSet;
    dsPurchaseOrderDtBalok: TDataSource;
    qryPurchaseOrderDtLog: TADODataSet;
    dsPurchaseOrderDtLog: TDataSource;
    procedure qryPurchaseOrderDtLogBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderDtBalokBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPOManufactureTimber: TfmPOManufactureTimber;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, untInventory, dtmGlobal, dtmInventory;

procedure TfmPOManufactureTimber.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryMaterial);

  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;

  OpenIfClose(qryPurchaseOrderDtBalok);
  OpenIfClose(qryPurchaseOrderDtLog);
end;

procedure TfmPOManufactureTimber.MonthYearValueChange(Sender: TObject);
begin
  inherited;

end;

procedure TfmPOManufactureTimber.qryPurchaseOrderDtBalokBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('employeeid').asstring:=dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPOManufactureTimber.qryPurchaseOrderDtLogBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('employeeid').asstring:=dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPOManufactureTimber.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('itemtypeid').asstring:='2';
end;

procedure TfmPOManufactureTimber.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryMaterial);
  //LockRefresh(qryPurchaseOrderDt);
end;

end.
