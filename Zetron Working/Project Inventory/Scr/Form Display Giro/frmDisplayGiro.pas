unit frmDisplayGiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, MemDS, DBAccess, Uni,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmDisplayGiro = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayStatusApprove: TcxGridDBColumn;
    cgvDisplayflaggiroout: TcxGridDBColumn;
    cgvDisplaybankid: TcxGridDBColumn;
    cgvDisplaybankaccount: TcxGridDBColumn;
    cgvDisplaygironumber: TcxGridDBColumn;
    cgvDisplayissuedate: TcxGridDBColumn;
    cgvDisplaystatusgiro: TcxGridDBColumn;
    cgvDisplaytransactiondate: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplaycustomername: TcxGridDBColumn;
    cgvDisplayvendorname: TcxGridDBColumn;
    cgvDisplayreferenceid: TcxGridDBColumn;
    cgvDisplayemployeename: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    qryDisplay: TUniQuery;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplayGiro: TfmDisplayGiro;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmDisplayGiro.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayGiro.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryDisplay.Close;
  qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
  qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplay, True);
end;

procedure TfmDisplayGiro.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

end.
