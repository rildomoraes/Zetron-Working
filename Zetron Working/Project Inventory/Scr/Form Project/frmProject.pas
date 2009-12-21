unit frmProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxContainer, cxTextEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

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
    dbeProjectId: TcxDBTextEdit;
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
  untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmProject.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryProject, True);
end;

procedure TfmProject.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryProject, True);
end;

end.
