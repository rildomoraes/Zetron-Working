unit frmPenerimaanBarangKayuLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPenerimaanBarang, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxDockControlPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridDBTableView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList, cxMemo,
  cxPC, cxDropDownEdit, cxCalendar, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls, ADODB;

type
  TfmPenerimaanBarangKayuLog = class(TfmPenerimaanBarang)
    cxDBCheckBox1: TcxDBCheckBox;
    Label1: TLabel;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    cgLPB: TcxGrid;
    cgvLPB: TcxGridDBBandedTableView;
    cgvLPBBatchId: TcxGridDBBandedColumn;
    cgvLPBItemId: TcxGridDBBandedColumn;
    cgvLPBCondition: TcxGridDBBandedColumn;
    cgvLPBD1: TcxGridDBBandedColumn;
    cgvLPBD2: TcxGridDBBandedColumn;
    cgvLPBD3: TcxGridDBBandedColumn;
    cgvLPBD4: TcxGridDBBandedColumn;
    cgvLPBDInvoice: TcxGridDBBandedColumn;
    cgvLPBPLogInvoice: TcxGridDBBandedColumn;
    cgvLPBKubikasiLog: TcxGridDBBandedColumn;
    cgvLPBQty: TcxGridDBBandedColumn;
    cgvLPBGrade: TcxGridDBBandedColumn;
    cgvLPBProsentase: TcxGridDBBandedColumn;
    cgvSJ: TcxGridDBTableView;
    cgvSJNoSJ: TcxGridDBColumn;
    cgvSJTanggal: TcxGridDBColumn;
    cgvSJNoPolisi: TcxGridDBColumn;
    cgvSJJenisKendaraan: TcxGridDBColumn;
    cgvSJNoFAKO: TcxGridDBColumn;
    cgvSJNoCont: TcxGridDBColumn;
    cgvSJDescription: TcxGridDBColumn;
    cgLPBLevel1: TcxGridLevel;
    cgLPBLevel2: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPenerimaanBarangKayuLog: TfmPenerimaanBarangKayuLog;

implementation

{$R *.dfm}

end.
