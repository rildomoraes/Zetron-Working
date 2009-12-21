unit frmCountry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ActnList, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmCountry = class(TFormUniMasterEx)
    lblCountryId: TLabel;
    dbeCountryId: TcxDBTextEdit;
    lblCountryName: TLabel;
    lblCountryExt: TLabel;
    dbeCountryName: TcxDBTextEdit;
    dbeCountryExt: TcxDBTextEdit;
    cgCountrySetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayCountryId: TcxGridDBColumn;
    cgvPrevDisplayCountryName: TcxGridDBColumn;
    cgvPrevDisplayCountryExt: TcxGridDBColumn;
    cgCountrySetupLevel1: TcxGridLevel;
    Label1: TLabel;
    Label9: TLabel;
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;


var
  fmCountry: TfmCountry;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TfmCountry.InitForm;
begin
  inherited;
  OpenIfClose(dmGlobal.qryCountry);
end;

procedure TfmCountry.RefreshAll;
begin
  inherited;
  LockRefresh(dmGlobal.qryCountry);
end;

end.
