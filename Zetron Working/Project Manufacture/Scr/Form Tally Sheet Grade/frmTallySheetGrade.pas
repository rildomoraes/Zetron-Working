unit frmTallySheetGrade;

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
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, ADODB, cxMaskEdit, cxDropDownEdit,
  cxCalc, cxDBEdit, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TfmTallySheetGrade = class(TFormUniMasterEx)
    lblIdSupplies: TLabel;
    dbeTallySheetCode: TcxDBTextEdit;
    Label1: TLabel;
    dbeGradeResultId: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    cbFlagMuat: TcxDBCheckBox;
    Label7: TLabel;
    Label9: TLabel;
    ceTotalQtyInvoice: TcxDBCalcEdit;
    ceTotalVolumeInvoice: TcxDBCalcEdit;
    ceTotalQtyCutting: TcxDBCalcEdit;
    ceTotalVolumeCutting: TcxDBCalcEdit;
    qryTallySheetGrade: TADODataSet;
    procedure qryTallySheetGradeNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTallySheetGrade: TfmTallySheetGrade;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber;

procedure TfmTallySheetGrade.InitForm;
begin
  inherited;

  ceTotalQtyInvoice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  ceTotalQtyCutting.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  ceTotalVolumeInvoice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  ceTotalVolumeCutting.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;

  OpenIfClose(qryTallySheetGrade);

end;

procedure TfmTallySheetGrade.qryTallySheetGradeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TotalBeratCut').asinteger:=0;
  DataSet.FieldByName('TotalBeratInv').asinteger:=0;
  DataSet.FieldByName('TotalLuasCut').asinteger:=0;
  DataSet.FieldByName('TotalLuasInv').asinteger:=0;
end;

procedure TfmTallySheetGrade.RefreshAll;
begin
  inherited;
  LockRefresh(qryTallySheetGrade);
end;

end.
