unit frmSalesman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan,

  // Auto Generate
  frmUniDB, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox,
  cxCheckBox, DBActns, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls;

type
  TfmSalesman = class(TFormUniDB)
    dsEmployee: TDataSource;
    cgSalesman: TcxGrid;
    cgvSalesman: TcxGridDBTableView;
    cgvSalesmanemployeeid: TcxGridDBColumn;
    cgvSalesmanemployeename: TcxGridDBColumn;
    cgvSalesmanpositionid: TcxGridDBColumn;
    cgvSalesmanflagsalesman: TcxGridDBColumn;
    cgSalesmanLevel1: TcxGridLevel;
    actPost: TDataSetPost;
    actCancel: TDataSetCancel;
    btnPost: TcxButton;
    btnCancel: TcxButton;
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSalesman: TfmSalesman;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmGeneral;

procedure TfmSalesman.DeinitForm;
begin
  inherited;

  LockRefresh(dmGeneral.qryPrevSalesman, True);
end;

procedure TfmSalesman.InitForm;
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;

  dsEmployee.AutoEdit := True;

  OpenIfClose(dmGlobal.qryPosition);
  OpenIfClose(dmGlobal.qryEmployee, True);
end;

procedure TfmSalesman.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryPosition);
  LockRefresh(dmGlobal.qryEmployee);
end;

end.
