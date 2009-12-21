unit frmTallySquareEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTallyEntry, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, StdCtrls, cxButtons, ExtCtrls,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxCalendar, dxmdaset, ADODB;

type
  TfmTallySquareEntry = class(TfmTallyEntry)
    cgEntryItemBatch: TcxGrid;
    cgvEntry: TcxGridDBTableView;
    cgEntryItemBatchLevel1: TcxGridLevel;
    cgvEntryNo: TcxGridDBColumn;
    cgvEntryT: TcxGridDBColumn;
    cgvEntryL: TcxGridDBColumn;
    cgvEntryP: TcxGridDBColumn;
    cgvEntryQty: TcxGridDBColumn;
    cgvEntryColumn6: TcxGridDBColumn;
    cgvEntryColumn7: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    dxMemData1: TdxMemData;
    cgvEntryTallySheetCode: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTallySquareEntry: TfmTallySquareEntry;

implementation

{$R *.dfm}

uses dtmGlobal;

end.
