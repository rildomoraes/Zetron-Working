unit frmBank;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxMemo, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer,
  cxTextEdit;

type
  TfmBank = class(TFormUniMasterEx)
    cgBankSetup: TcxGrid;
    cgvBank: TcxGridDBTableView;
    cgvBankvcIdBank: TcxGridDBColumn;
    cgvBankvcBankName: TcxGridDBColumn;
    cgvBankvcBankContactPerson: TcxGridDBColumn;
    cgvBankvcPhone: TcxGridDBColumn;
    cgvBankvcBankAddress: TcxGridDBColumn;
    cgvBankvcIdCity: TcxGridDBColumn;
    cgBankSetupLevel1: TcxGridLevel;
    lblIdBank: TLabel;
    lblBankName: TLabel;
    lblContactPerson: TLabel;
    lblPhone: TLabel;
    lblBankAddress: TLabel;
    lblBankCity: TLabel;
    dbeIdBank: TcxDBTextEdit;
    dbeBankName: TcxDBTextEdit;
    dbeContactPerson: TcxDBTextEdit;
    dbePhone: TcxDBTextEdit;
    dbeBankAddress: TcxDBTextEdit;
    dblcCity: TcxDBExtLookupComboBox;
    dbmNotes: TcxDBMemo;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBank: TfmBank;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmAccounting;

procedure TfmBank.InitForm;
begin
  inherited;

  OpenIfClose(dmAccounting.qryBank);
end;

procedure TfmBank.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryBank);
end;

end.
