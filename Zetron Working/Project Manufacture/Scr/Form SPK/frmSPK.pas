unit frmSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit,
  cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxImageComboBox, cxCalendar,
  ADODB, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxPC, cxDropDownEdit,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmSPK = class(TFormUniTransactionEx)
    cgPrevDisplay: TcxGrid;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaySPKCode: TcxGridDBColumn;
    cgvPrevDisplaySPKDate: TcxGridDBColumn;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    dbeColorCode: TcxDBTextEdit;
    dbeFinishDate: TcxDBDateEdit;
    dbeProductionDate: TcxDBDateEdit;
    dbeSPKDate: TcxDBDateEdit;
    dbeSPKCode: TcxDBTextEdit;
    dblcSalesOrderId: TcxDBExtLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    pnlTop: TPanel;
    qrySPKHd: TADODataSet;
    procedure qrySPKHdBeforePost(DataSet: TDataSet);
    procedure qrySPKHdNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private

  public
    { Public declarations }
  end;

var
  fmSPK: TfmSPK;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmSPK.InitForm;
begin
  inherited;

  // Init Print
  DefaultPrimaryKeyField := 'SPKCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_SPK);

  MonthYearValueChange(nil);
end;

procedure TfmSPK.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qrySPKHd.Close;
  qrySPKHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qrySPKHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qrySPKHd, True);
end;

procedure TfmSPK.qrySPKHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSPK.qrySPKHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('SPKDate').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('StatusApprove').AsInteger := 1;
  DataSet.FieldByName('FlagUse').AsInteger := 0;
  DataSet.FieldByName('FlagClose').AsInteger := 0;
end;

procedure TfmSPK.RefreshAll;
begin
  inherited;

  LockRefresh(qrySPKHd, True);
end;

end.
