unit frmTallyItemEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTallyEntry, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit, cxCalc, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, StdCtrls,
  cxButtons, ExtCtrls, cxCalendar;

type
  TfmTallyItemEntry = class(TfmTallyEntry)
    cgEntryItemBatch: TcxGrid;
    cgvEntry: TcxGridDBTableView;
    cgvEntryColumn5: TcxGridDBColumn;
    cgEntryItemBatchLevel1: TcxGridLevel;
    cgvEntryColumn2: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTallyItemEntry: TfmTallyItemEntry;

implementation

{$R *.dfm}

end.
