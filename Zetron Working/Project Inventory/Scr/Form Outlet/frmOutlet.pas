unit frmOutlet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmOutlet = class(TFormUniMasterEx)
    cgGrid: TcxGrid;
    cgvGrid: TcxGridDBTableView;
    cgvGridOutletId: TcxGridDBColumn;
    cgvGridOutletName: TcxGridDBColumn;
    cgvGridContactPerson: TcxGridDBColumn;
    cgvGridAddress: TcxGridDBColumn;
    cgvGridCountryId: TcxGridDBColumn;
    cgvGridProvinceId: TcxGridDBColumn;
    cgvGridCityId: TcxGridDBColumn;
    cgGridLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeOutletId: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeOutletName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    dbeAddress: TcxDBTextEdit;
    lblIdCity: TLabel;
    dblcCityId: TcxDBExtLookupComboBox;
    Label1: TLabel;
    dbmNotes: TcxDBMemo;
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmOutlet: TfmOutlet;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmOutlet.cgvNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  TableView: TcxGridDBTableView;
begin
  if Sender is TcxNavigatorControlButtons then
  begin
    if TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner is TcxGridDBTableView then
    begin
      TableView := TcxGridDBTableView(TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner);

      if AButtonIndex = NAVIGATOR_BUTTON_REFRESH then
      begin
        LockRefresh(TableView.DataController.DataSource.DataSet);
        ADone := True;
      end;
    end;
  end;
end;

procedure TfmOutlet.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmGeneral.qryOutlet);
end;

procedure TfmOutlet.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmGeneral.qryOutlet, True);
end;

end.

