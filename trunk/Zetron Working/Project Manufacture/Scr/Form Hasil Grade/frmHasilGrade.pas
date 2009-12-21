unit frmHasilGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxDBEdit, cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxCalc, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter, cxSplitter,
  cxGridDBTableView, ADODB,DateUtils, Math, cxMRUEdit, cxMemo, cxPC,
  cxButtonEdit;

type
  TfmHasilGrade = class(TFormUniTransactionEx)
    dsGradeResultInvoiceDt: TDataSource;
    pnlLeft: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    lblLocation: TLabel;
    lblTallyman: TLabel;
    lblKoorGrader: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dbeGradeDate: TcxDBDateEdit;
    dblcMaterial: TcxDBExtLookupComboBox;
    lblNoPO: TLabel;
    dblcPurchaseOrderId: TcxDBExtLookupComboBox;
    dblcGraderCoor: TcxDBExtLookupComboBox;
    dsPrevItemPO: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevPurchaseOrder: TcxGridDBTableView;
    cgvPrevItemPO: TcxGridDBTableView;
    cgvPrevItemPOItemId: TcxGridDBColumn;
    cgvPrevItemPOItemName: TcxGridDBColumn;
    qryGradeResultHd: TADODataSet;
    dsGradeResultCuttingDt: TDataSource;
    dsPrevPurchaseOrder: TDataSource;
    cgvPrevPurchaseOrderVendorId: TcxGridDBColumn;
    cgvPrevPurchaseOrderVendorName: TcxGridDBColumn;
    cgvPrevPurchaseOrderMaterialName: TcxGridDBColumn;
    lblGrader: TLabel;
    dblcTallyman: TcxDBExtLookupComboBox;
    dblcGrader: TcxDBExtLookupComboBox;
    cgvPrevPurchaseOrderPurchaseOrderCode: TcxGridDBColumn;
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvPrevDisplayEmployeeId: TcxGridDBColumn;
    cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn;
    cgvPrevDisplayTallymanId: TcxGridDBColumn;
    cgvPrevDisplayKoorGraderId: TcxGridDBColumn;
    cgvPrevDisplayGraderId: TcxGridDBColumn;
    cgvPrevDisplayGradeResultCode: TcxGridDBColumn;
    cgvPrevDisplayGradeResultDate: TcxGridDBColumn;
    cgvPrevDisplayLokasi: TcxGridDBColumn;
    cgvPrevDisplayPaletCount: TcxGridDBColumn;
    cgvPrevDisplayPaletLoaded: TcxGridDBColumn;
    cgvPrevDisplayPaletOutstanding: TcxGridDBColumn;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    dbeLokasi: TcxDBMRUEdit;
    qryCekUkuran: TADOQuery;
    qryCounter: TADOQuery;
    qryPrevPurchaseOrder: TADOQuery;
    qryPrevItemPO: TADOQuery;
    qryGradeResultInvoiceDt: TADOQuery;
    qryGradeResultCuttingDt: TADOQuery;
    qryPrevTallySheetGrade: TADOQuery;
    dsPrevTallySheetGrade: TDataSource;
    cgvPrevTallySheetGrade: TcxGridDBTableView;
    cgvTallySheetGradeTallySheetGradeCode: TcxGridDBColumn;
    cgvTallySheetGradeTotalQtyInv: TcxGridDBColumn;
    cgvTallySheetGradeTotalLuasInv: TcxGridDBColumn;
    cgvTallySheetGradeTotalVolumeInv: TcxGridDBColumn;
    cgvTallySheetGradeTotalBeratInv: TcxGridDBColumn;
    cgvTallySheetGradeTotalQtyCut: TcxGridDBColumn;
    cgvTallySheetGradeTotalLuasCut: TcxGridDBColumn;
    cgvTallySheetGradeTotalVolumeCut: TcxGridDBColumn;
    cgvTallySheetGradeTotalBeratCut: TcxGridDBColumn;
    cgvTallySheetGradeGradeResultCode: TcxGridDBColumn;
    cgvTallySheetGradeFlagMuat: TcxGridDBColumn;
    pnlHeader: TPanel;
    pcBody: TcxPageControl;
    tsInfo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    tsStatementMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgvDependenciesTransaction: TcxGridDBColumn;
    cgvDependenciesCode: TcxGridDBColumn;
    cgvDependenciesDate: TcxGridDBColumn;
    cgDependenciesLevel1: TcxGridLevel;
    dbeGradeResultCode: TcxDBButtonEdit;
    cgvPrevPurchaseOrderMaterialId: TcxGridDBColumn;
    procedure qryGradeResultHdBeforePost(DataSet: TDataSet);
    procedure qryGradeResultInvoiceDtBeforeInsert(DataSet: TDataSet);
    procedure qryGradeResultCuttingDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public
    function cekukuranOK(T,L,P:real;mode:byte;var price:real;var no_po:integer):boolean;
    function cekinterval(a,b:real):boolean;
  end;

var
  fmHasilGrade: TfmHasilGrade;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber;

function TfmHasilGrade.cekukuranOK(T,L,P:real;mode:byte;var price:real;var no_po:integer):boolean;
var
  FFlagUkuranAda:boolean;
begin
  FFlagUkuranAda:=false;
  qryCekUkuran.First;
  if mode=0 then
  begin
    while not(FFlagUkuranAda) and not(qryCekUkuran.eof) do
    begin
      if ((T>=qryCekUkuran.FieldByName('TCut').AsFloat) and ((T<=qryCekUkuran.FieldByName('TMaxCut').AsFloat) or (qryCekUkuran.FieldByName('TMaxCut').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('TInterval').AsFloat))) and
         ((L>=qryCekUkuran.FieldByName('LCut').AsFloat) and ((T<=qryCekUkuran.FieldByName('LMaxCut').AsFloat) or (qryCekUkuran.FieldByName('LMaxCut').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('LInterval').AsFloat))) and
         ((P>=qryCekUkuran.FieldByName('PCut').AsFloat) and ((T<=qryCekUkuran.FieldByName('PMaxCut').AsFloat) or (qryCekUkuran.FieldByName('PMaxCut').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('PInterval').AsFloat))) then
          begin
            FFlagUkuranAda:=true;
            no_po:=qryCekUkuran.FieldByName('No').asinteger;
            price:=qryCekUkuran.FieldByName('price').AsFloat;
          end
          else
            qryCekUkuran.next;
    end;
  end
  else
  begin
    while not(FFlagUkuranAda) and not(qryCekUkuran.eof) do
    begin
      if ((T>=qryCekUkuran.FieldByName('TInv').AsFloat) and ((T<=qryCekUkuran.FieldByName('TMaxInv').AsFloat) or (qryCekUkuran.FieldByName('TMaxInv').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('TInterval').AsFloat))) and
         ((L>=qryCekUkuran.FieldByName('LInv').AsFloat) and ((T<=qryCekUkuran.FieldByName('LMaxInv').AsFloat) or (qryCekUkuran.FieldByName('LMaxInv').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('LInterval').AsFloat))) and
         ((P>=qryCekUkuran.FieldByName('PInv').AsFloat) and ((T<=qryCekUkuran.FieldByName('PMaxInv').AsFloat) or (qryCekUkuran.FieldByName('PMaxInv').AsFloat=0)) and (cekinterval(T,qryCekUkuran.FieldByName('PInterval').AsFloat))) then
          begin
            FFlagUkuranAda:=true;
            no_po:=qryCekUkuran.FieldByName('No').asinteger;
            price:=qryCekUkuran.FieldByName('price').AsFloat;
          end
          else
            qryCekUkuran.next;
    end;
  end;
  cekukuranOK:=FFlagUkuranAda;
end;

function TfmHasilGrade.cekinterval(a,b:real):boolean;
begin
 if b=0 then
 begin
   if a>0 then
      cekinterval:=true
   else
      cekinterval:=true;
 end
 else
 begin
   if frac(a/b)>0 then
      cekinterval:=false
   else
      cekinterval:=true;
 end;
end;

procedure TfmHasilGrade.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryTallyMan);
  OpenIfClose(dmInventory.qryGrader);
  OpenIfClose(dmInventory.qryKoorGrader);
  SetRoundMode(rmTruncate);
end;

procedure TfmHasilGrade.qryGradeResultCuttingDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmHasilGrade.qryGradeResultHdBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('employeeid').AsString:=dmGlobal.SettingGlobal.LoginEmployeeId;
//  showmessage(DataSet.fieldbyname('purchaseorderid').AsString);
end;

procedure TfmHasilGrade.qryGradeResultInvoiceDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmHasilGrade.RefreshAll;
begin
  inherited;

  LockRefresh(qryGradeResultHd, True);
  LockRefresh(qryGradeResultInvoiceDt);
  LockRefresh(qryGradeResultCuttingDt);
end;

end.
