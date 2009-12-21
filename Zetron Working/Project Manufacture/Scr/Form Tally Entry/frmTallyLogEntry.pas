unit frmTallyLogEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTallyEntry, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, StdCtrls,
  cxButtons, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCalendar;

type
  TfmTallyLogEntry = class(TfmTallyEntry)
    cgEntryItemBatch: TcxGrid;
    cgvEntry: TcxGridDBTableView;
    cgvEntryColumn1: TcxGridDBColumn;
    cgvEntryColumn2: TcxGridDBColumn;
    cgvEntryColumn3: TcxGridDBColumn;
    cgvEntryColumn4: TcxGridDBColumn;
    cgvEntryColumn5: TcxGridDBColumn;
    cgvEntryColumn7: TcxGridDBColumn;
    cgEntryItemBatchLevel1: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTallyLogEntry: TfmTallyLogEntry;

implementation

{$R *.dfm}

end.
