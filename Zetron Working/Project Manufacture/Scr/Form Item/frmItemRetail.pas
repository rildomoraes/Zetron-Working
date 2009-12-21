unit frmItemRetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmItem, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImage, cxBlobEdit,
  cxDBExtLookupComboBox, cxCalc, cxImageComboBox, cxCheckBox,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  ADODB, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxSpinEdit, cxGroupBox,
  cxDropDownEdit, cxDBEdit, cxMemo, cxPC, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, StdCtrls, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmItemRetail = class(TfmItem)
    gbOptionGeneral: TcxGroupBox;
    dbchFlagTerdaftar: TcxDBCheckBox;
    dbchFlagBahasaIndonesia: TcxDBCheckBox;
    gbOptionPrint: TcxGroupBox;
    dbchFlagPrintBarcode: TcxDBCheckBox;
    dbchFlagPrinPrice: TcxDBCheckBox;
    lblRegister: TLabel;
    lblItemSource: TLabel;
    dbeRegister: TcxDBTextEdit;
    dblcStatusSource: TcxDBImageComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmItemRetail: TfmItemRetail;

implementation

{$R *.dfm}

end.
