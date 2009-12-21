unit frmKayuMuat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxDBEdit, cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridDBTableView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMemo, cxCalendar, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter, ADODB, cxPC, cxCalc;

type
  TfmKayuMuat = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label5: TLabel;
    dbeKayuMuatDate: TcxDBDateEdit;
    dbeNoMuat: TcxDBTextEdit;
    Label3: TLabel;
    Label6: TLabel;
    dbeLokasiMuat: TcxDBTextEdit;
    dblcPOId: TcxDBExtLookupComboBox;
    dblcJenisKayu: TcxDBExtLookupComboBox;
    Label2: TLabel;
    qryKayuMuatHd: TADODataSet;
    dsDefaultDt: TDataSource;
    lblVendor: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbeMemoInternal: TcxDBMemo;
    qryPrevPO: TADODataSet;
    dsPrevPO: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevPO: TcxGridDBTableView;
    cgvPrevPOPurchaseOrderCode: TcxGridDBColumn;
    cgvPrevPOVendorCode: TcxGridDBColumn;
    cgvPrevPOVendorName: TcxGridDBColumn;
    cgvPrevPOMaterialCode: TcxGridDBColumn;
    cgvPrevPOMaterialName: TcxGridDBColumn;
    dblcWarehouseId: TcxDBExtLookupComboBox;
    cgvPrevPOPurchaseOrderDate: TcxGridDBColumn;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayStatusApprove: TcxGridDBColumn;
    cgvPrevDisplayKayuMuatCode: TcxGridDBColumn;
    cgvPrevDisplayKayuMuatDate: TcxGridDBColumn;
    cgvPrevDisplayWarehouseId: TcxGridDBColumn;
    cgvPrevDisplayLokasiMuat: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    qryPrevTallySheetGrade: TADODataSet;
    dsPrevTallySheetGrade: TDataSource;
    cgvPrevTallySheetGrade: TcxGridDBTableView;
    cgvPrevTallySheetGradeTallySheetGradeCode: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalQtyInv: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalLuasInv: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalVolumeInv: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalQtyCut: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalLuasCut: TcxGridDBColumn;
    cgvPrevTallySheetGradeTotalVolumeCut: TcxGridDBColumn;
    cgvPrevTallySheetGradeGradeResultCode: TcxGridDBColumn;
    cgvPrevTallySheetGradeGradeResultDate: TcxGridDBColumn;
    cgvPrevTallySheetGradeLokasi: TcxGridDBColumn;
    cgvPrevTallySheetGradeFlagMuat: TcxGridDBColumn;
    cgvPrevDisplayKayuMuatId: TcxGridDBColumn;
    qryKayuMuatDt: TADOQuery;
    procedure qryKayuMuatHdBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmKayuMuat: TfmKayuMuat;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber, frmUni;

procedure TfmKayuMuat.InitForm;
begin
  inherited;

  if FMenuFlag = 0 then // Menu Flag
  begin
    Self.Caption := Self.Caption + ' - unPosting';
    SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
  end;

  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalQtyInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalLuasInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalVolumeInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalQtyCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalLuasCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevTallySheetGradeTotalVolumeCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;

  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmTimber.qryPurchaseInvoice);
  OpenIfClose(qryPrevPO);
end;

procedure TfmKayuMuat.qryKayuMuatHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmKayuMuat.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(qryPrevPO);
  LockRefresh(qryKayuMuatHd, True);
  LockRefresh(qryKayuMuatDt);
end;

end.

