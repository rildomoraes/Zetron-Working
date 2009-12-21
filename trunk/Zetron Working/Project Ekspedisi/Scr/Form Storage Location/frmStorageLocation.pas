unit frmStorageLocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxImageComboBox, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfmStorageLocation = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn;
    cxGrid1DBTableView1StorageLocationCode: TcxGridDBColumn;
    cxGrid1DBTableView1StorageLocationName: TcxGridDBColumn;
    cxGrid1DBTableView1FlagShipStorage: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeStorageLocationCode: TcxDBTextEdit;
    dbeStorageLocationName: TcxDBTextEdit;
    dbeFlagShipStorage: TcxDBImageComboBox;
  private
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmStorageLocation: TfmStorageLocation;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta;

{ TfmStorageLocation }

procedure TfmStorageLocation.InitForm;
begin
  inherited;
  SetReadOnly(dbeStorageLocationCode, True, COLOR_INACTIVE);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
end;

procedure TfmStorageLocation.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryStorageLocation);
end;

end.
