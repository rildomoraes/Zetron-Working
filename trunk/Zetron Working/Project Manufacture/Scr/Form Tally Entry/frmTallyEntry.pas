unit frmTallyEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, StdCtrls, cxButtons,
  ExtCtrls, untIvPositionDevExpress, untIvPositionStandard, ActnList, cxCalendar;

type
  TfmTallyEntry = class(TForm)
    ActionList1: TActionList;
    actClose: TAction;
    actReset: TAction;
    actProcess: TAction;
    IvPositionStandard1: TIvPositionStandard;
    IvPositionDevExpress1: TIvPositionDevExpress;
    pnlMenu: TPanel;
    bvlSpacer1: TBevel;
    btnClose: TcxButton;
    btnReset: TcxButton;
    btnProcess: TcxButton;
    pnlTop: TPanel;
    lblTallySheetCode: TLabel;
    lblTallySheetDate: TLabel;
    lblItemId: TLabel;
    lblTallyman: TLabel;
    edtTallySheetCode: TcxTextEdit;
    edtTallySheetDate: TcxDateEdit;
    edtItemId: TcxExtLookupComboBox;
    edtTallyman: TcxExtLookupComboBox;
  private
    FReferenceCode: string;
    FReferenceDate: TDateTime;
    FReferenceWarehouseId: integer;
    FReferenceNo: integer;
    procedure InitForm;
  public
    class function ExecuteForm(const AReferenceCode: string;
      AReferenceDate: TDateTime; AReferenceWarehouseId, AReferenceNo: integer;
      ADataState: TDataSetState): TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmInventory, dtmManufacture;

class function TfmTallyEntry.ExecuteForm(const AReferenceCode: string;
  AReferenceDate: TDateTime; AReferenceWarehouseId, AReferenceNo: integer;
  ADataState: TDataSetState): TModalResult;
var
  fmTallyEntry: TfmTallyEntry;
begin
  fmTallyEntry := TfmTallyEntry.Create(Application);
  with fmTallyEntry do
  begin
    try
      FReferenceCode := AReferenceCode;
      FReferenceDate := AReferenceDate;
      FReferenceWarehouseId := AReferenceWarehouseId;
      FReferenceNo := AReferenceNo;
      InitForm;
      Result := ShowModal;
//      if ModalResult = mrOk then
//        ARegisterSalesId := FRegisterSalesId;
    finally
      Release;
    end;
  end;
end;

procedure TfmTallyEntry.InitForm;
begin

end;

end.
