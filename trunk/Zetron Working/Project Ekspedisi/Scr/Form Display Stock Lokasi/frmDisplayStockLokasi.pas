unit frmDisplayStockLokasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxImageComboBox, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxCurrencyEdit, cxDBEdit, cxGroupBox, cxCalc,cxRadioGroup, Grids,
  DBGrids;

type
  TfmDisplayStockLokasi = class(TFormUniDisplay)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    lcbStorageLocation: TcxExtLookupComboBox;
    cgStockLokasiLevel1: TcxGridLevel;
    cgStockLokasi: TcxGrid;
    qryDisplayStockLokasi: TADOQuery;
    dsDisplayStockLokasi: TDataSource;
    cgvDisplayStockLokasi: TcxGridDBBandedTableView;
    qrySumDisplayStockLokasi: TADOQuery;
    dsSumDisplayStockMutasi: TDataSource;
    cgvDisplayStockLokasiLamaHari: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiKodeLokasi: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNamaLokasi: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNoSJAuto: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiKodeBarang: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNamaBarang: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiJumlah: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNamaMerek: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNamaJurusan: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiAliasPacking: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiTglBeritaAcara: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiTglKedatanganKapal: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiKodeJurusan: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiEmployeeName: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiKodeMerek: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiSisa: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiTglPenerimaan: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiNoSuratJalan: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiInternalMemo: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiPackingTransactionCode: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiBeritaAcaraCode: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiQty: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiP: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiL: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiT: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiBerat: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiTotalM3: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiTotalBerat: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiMode: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiReferenceCode: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiStorageInDate: TcxGridDBBandedColumn;
    crbNone: TcxRadioButton;
    crbSemuaGudang: TcxRadioButton;
    crbSemuaKapal: TcxRadioButton;
    cgvDisplayStockLokasiUnitMeasureName: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiPenerima: TcxGridDBBandedColumn;
    cgvDisplayStockLokasiJumlahPacking: TcxGridDBBandedColumn;
    cgvDisplayStockLokasitotaltonm3: TcxGridDBBandedColumn;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbeCollie: TcxDBCurrencyEdit;
    dbePacking: TcxDBCurrencyEdit;
    dbeM3: TcxDBCurrencyEdit;
    dbeTon: TcxDBCurrencyEdit;
    dbeM3Ton: TcxDBCurrencyEdit;
    cgStockLokasiLevel2: TcxGridLevel;
    dsDisplayPacking: TDataSource;
    cgvDisplayPacking: TcxGridDBTableView;
    cgvDisplayPackingPackingTransactionCode: TcxGridDBColumn;
    cgvDisplayPackingPackingTransactionNo: TcxGridDBColumn;
    cgvDisplayPackingItemReceiveCode: TcxGridDBColumn;
    cgvDisplayPackingNo: TcxGridDBColumn;
    cgvDisplayPackingQty: TcxGridDBColumn;
    cgvDisplayPackingSuppliesCode: TcxGridDBColumn;
    cgvDisplayPackingSuppliesName: TcxGridDBColumn;
    cgvDisplayPackingP: TcxGridDBColumn;
    cgvDisplayPackingL: TcxGridDBColumn;
    cgvDisplayPackingT: TcxGridDBColumn;
    cgvDisplayPackingBerat: TcxGridDBColumn;
    cgvDisplayPackingTotalM3: TcxGridDBColumn;
    cgvDisplayPackingTotalBerat: TcxGridDBColumn;
    cgvDisplayPackingQtyOutStanding: TcxGridDBColumn;
    cgvDisplayPackingUnitMeasureId: TcxGridDBColumn;
    cgvDisplayPackingQtyTotal: TcxGridDBColumn;
    qryDisplayPacking: TADOQuery;
    procedure cxExtLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure crbNoneClick(Sender: TObject);
    procedure crbSemuaGudangClick(Sender: TObject);
    procedure crbSemuaKapalClick(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InitForm;Override;
    procedure RefreshAll;Override;
    procedure GetQuery;
  public
    { Public declarations }
  end;

var
  fmDisplayStockLokasi: TfmDisplayStockLokasi;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplayStockLokasi.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshAll;
end;

procedure TfmDisplayStockLokasi.crbNoneClick(Sender: TObject);
begin
  inherited;
  GetQuery;
end;

procedure TfmDisplayStockLokasi.crbSemuaGudangClick(Sender: TObject);
begin
  inherited;
  GetQuery;
end;

procedure TfmDisplayStockLokasi.crbSemuaKapalClick(Sender: TObject);
begin
  inherited;
  GetQuery;
end;

procedure TfmDisplayStockLokasi.cxExtLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  GetQuery;
end;

procedure TfmDisplayStockLokasi.GetQuery;
begin
  inherited;

  qryDisplayPacking.Close;
  qryDisplayStockLokasi.Close;
  qrySumDisplayStockLokasi.Close;
  if crbNone.Checked then
  begin
     qryDisplayStockLokasi.Parameters[0].Value:=lcbStorageLocation.EditValue;
     qryDisplayStockLokasi.Parameters[1].Value:='%';
     qrySumDisplayStockLokasi.Parameters[0].Value:=lcbStorageLocation.EditValue;
     qrySumDisplayStockLokasi.Parameters[1].Value:='%';
  end;
  if crbSemuaGudang.Checked then
  begin
     qryDisplayStockLokasi.Parameters[0].Value:='%';
     qryDisplayStockLokasi.Parameters[1].Value:='0';
     qrySumDisplayStockLokasi.Parameters[0].Value:='%';
     qrySumDisplayStockLokasi.Parameters[1].Value:='0';
  end;
  if crbSemuaKapal.Checked then
  begin
     qryDisplayStockLokasi.Parameters[0].Value:='%';
     qryDisplayStockLokasi.Parameters[1].Value:='1';
     qrySumDisplayStockLokasi.Parameters[0].Value:='%';
     qrySumDisplayStockLokasi.Parameters[1].Value:='1';
  end;
  qryDisplayStockLokasi.Open;
  qrySumDisplayStockLokasi.Open;
  qryDisplayPacking.Open;

end;

procedure TfmDisplayStockLokasi.InitForm;
begin
  inherited;

  OpenIfClose(dmEkspedisi.qryStorageLocation);
  SetReadOnly(cgvDisplayStockLokasi);

  TcxCalcEditProperties(cgvDisplayStockLokasiP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvDisplayStockLokasiL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvDisplayStockLokasiT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvDisplayStockLokasiTotalM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvDisplayStockLokasiTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;

  cgvDisplayStockLokasi.DataController.Summary.FooterSummaryItems[0].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvDisplayStockLokasi.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;

// harus ada format untuk group footer
end;

procedure TfmDisplayStockLokasi.RefreshAll;
begin
  inherited;

  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(qryDisplayStockLokasi);
  LockRefresh(qryDisplayPacking);
  LockRefresh(qrySumDisplayStockLokasi);

end;

end.
