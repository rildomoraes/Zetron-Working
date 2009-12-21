unit frmPenerimaanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox,
  cxDBExtLookupComboBox, ADODB, cxMemo, cxDBEdit, cxPC, cxGrid, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxDropDownEdit, cxCalendar, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, ExtCtrls,
  StdCtrls, cxButtons, untIvSearchBoxADO, cxButtonEdit, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPenerimaanBarang = class(TFormUniTransactionEx)
    cgDependencies: TcxGrid;
    cgDependenciesLevel1: TcxGridLevel;
    cgPrevDisplay: TcxGrid;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvDependencies: TcxGridDBTableView;
    cgvDependenciesCode: TcxGridDBColumn;
    cgvDependenciesDate: TcxGridDBColumn;
    cgvDependenciesTransaction: TcxGridDBColumn;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn;
    cgvPrevDisplayReceivingRecordCode: TcxGridDBColumn;
    cgvPrevDisplayReceivingRecordDate: TcxGridDBColumn;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    cgvPrevDisplayWarehouseId: TcxGridDBColumn;
    dbeReceivingRecordCode: TcxDBTextEdit;
    dbeReceivingRecordDate: TcxDBDateEdit;
    dblcTallyman: TcxDBExtLookupComboBox;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcWarehouse: TcxDBExtLookupComboBox;
    dbmInternalMemo: TcxDBMemo;
    dbmStatementMemo: TcxDBMemo;
    dsReceivingRecordDt: TDataSource;
    dsReceivingRecordSJ: TDataSource;
    lblPurchaseOrder: TLabel;
    lblReceivingCode: TLabel;
    lblReceivingDate: TLabel;
    lblTallyman: TLabel;
    lblVendor: TLabel;
    lblWarehouseId: TLabel;
    pcBody: TcxPageControl;
    pnlHeader: TPanel;
    pnlLeft: TPanel;
    qryReceivingRecordDt: TADOQuery;
    qryReceivingRecordHd: TADODataSet;
    qryReceivingRecordSJ: TADOQuery;
    tsDipendencies: TcxTabSheet;
    tsInfo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    tsStatementMemo: TcxTabSheet;
    dbePurchaseOrder: TcxDBButtonEdit;
    sbPurchaseOrder: TIvSearchBoxADO;
    procedure qryReceivingRecordHdNewRecord(DataSet: TDataSet);
    procedure qryReceivingRecordHdBeforePost(DataSet: TDataSet);
    procedure dbePurchaseOrderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPenerimaanBarang: TfmPenerimaanBarang;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPenerimaanBarang.dbePurchaseOrderPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if (qryReceivingRecordHd.State in [dsInsert, dsEdit]) and
    (not qryReceivingRecordHd.FieldByName('VendorId').IsNull) then
  begin
    sbPurchaseOrder.Parameters[0].Value := qryReceivingRecordHd.FieldByName('VendorId').AsString;
    if sbPurchaseOrder.Execute = mrOk then
    begin
      qryReceivingRecordHd.FieldByName('PurchaseOrderCode').AsString := sbPurchaseOrder.FieldByName('PurchaseOrderCode').AsString;
    end;
  end;
end;

procedure TfmPenerimaanBarang.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'VendorId') = 0) then
  begin
    //qryReceivingRecordHd.FieldByName().OldValue
    qryReceivingRecordHd.FieldByName('PurchaseOrderCode').AsVariant := null;
  end;
end;

procedure TfmPenerimaanBarang.InitForm;
begin
  inherited;

  OpenIfClose(qryReceivingRecordHd, True);
  OpenIfClose(qryReceivingRecordDt);
  OpenIfClose(qryReceivingRecordSJ);
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(dmInventory.qryTallyman);
  OpenIfClose(dmInventory.qryVendor);

  SetRoundMode(rmTruncate);
end;

procedure TfmPenerimaanBarang.qryReceivingRecordHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPenerimaanBarang.qryReceivingRecordHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('ReceivingRecordDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusReceiving').AsString := '0'; // Penerimaan Pembelian
  Dataset.FieldByName('StatusApprove').AsInteger := FStatusApprove;
end;

procedure TfmPenerimaanBarang.RefreshAll;
begin
  inherited;

  LockRefresh(qryReceivingRecordHd, True);
  LockRefresh(qryReceivingRecordDt);
  LockRefresh(qryReceivingRecordSJ);
end;

end.
