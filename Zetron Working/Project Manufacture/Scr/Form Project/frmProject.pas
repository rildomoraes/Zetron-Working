unit frmProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, 
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalendar, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxTextEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmProject = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayprojectid: TcxGridDBColumn;
    cgvPrevDisplayprojectname: TcxGridDBColumn;
    cgvPrevDisplaydatestart: TcxGridDBColumn;
    cgvPrevDisplaydateend: TcxGridDBColumn;
    cgvPrevDisplaycontactperson: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeProjectCode: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeProjectName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblDateStart: TLabel;
    dbeDateStart: TcxDBDateEdit;
    lblDateEnd: TLabel;
    dbeDateEnd: TcxDBDateEdit;
    dbmNotes: TcxDBMemo;
    Label1: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmProject: TfmProject;

implementation

{$R *.dfm}

uses
  untProcedure, dtmGlobal, dtmInventory;

procedure TfmProject.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryProject, True);
end;

procedure TfmProject.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryProject, True);
end;

end.
