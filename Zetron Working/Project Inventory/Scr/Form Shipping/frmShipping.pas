unit frmShipping;

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
  TfmShipping = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayShippingId: TcxGridDBColumn;
    cgvPrevDisplayShippingName: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCountryId: TcxGridDBColumn;
    cgvPrevDisplayProvinceId: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblIdOutlet: TLabel;
    dbeShippingId: TcxDBTextEdit;
    lblOutletName: TLabel;
    dbeShippingName: TcxDBTextEdit;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBTextEdit;
    lblAddress: TLabel;
    dbeAddress: TcxDBTextEdit;
    lblIdCity: TLabel;
    dblcCityId: TcxDBExtLookupComboBox;
    dbmNotes: TcxDBMemo;
    Label1: TLabel;
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmShipping: TfmShipping;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmShipping.cgvNavigatorButtonsButtonClick(Sender: TObject;
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

procedure TfmShipping.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(dmGlobal.qryProvince);
  OpenIfClose(dmGlobal.qryCity, False, False);
  OpenIfClose(dmGeneral.qryShipping);
end;

procedure TfmShipping.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmGeneral.qryShipping, True);
end;

end.

