unit frmShipDailyLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxMaskEdit, ADODB,
  cxDBExtLookupComboBox, cxLookupEdit, cxDBLookupEdit;

type
  TfmShipDailyLog = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ShipId: TcxGridDBColumn;
    cxGrid1DBTableView1ShipLogDate: TcxGridDBColumn;
    cxGrid1DBTableView1ShipPosition: TcxGridDBColumn;
    cxGrid1DBTableView1StatusWeather: TcxGridDBColumn;
    Label1: TLabel;
    qryShipDailyLog: TADOQuery;
    qryPrevDailyLog: TADOQuery;
    dsPrevDailyLog: TDataSource;
    Panel1: TPanel;
    Label5: TLabel;
    dbeShipId: TcxDBExtLookupComboBox;
    Label4: TLabel;
    dbeShipLogDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeShipPosition: TcxDBTextEdit;
    Label3: TLabel;
    dbeStatusWeather: TcxDBImageComboBox;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ShipId: TcxGridDBColumn;
    cxGrid2DBTableView1ShipLogDate: TcxGridDBColumn;
    cxGrid2DBTableView1ShipPosition: TcxGridDBColumn;
    cxGrid2DBTableView1StatusWeather: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmShipDailyLog: TfmShipDailyLog;

implementation
  uses dtmGlobal, dtmEkspedisi, untProcedure;
{$R *.dfm}

procedure TfmShipDailyLog.InitForm;
begin
  inherited;
  OpenIfClose(qryShipDailyLog);
  OpenIfClose(dmEkspedisi.qryShip);
end;

procedure TfmShipDailyLog.RefreshAll;
begin
  inherited;
  LockRefresh(qryShipDailyLog);
  LockRefresh(dmEkspedisi.qryShip)
end;

end.
