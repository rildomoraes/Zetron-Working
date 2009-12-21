unit frmShip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBExtLookupComboBox,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, ADODB, cxCalc, cxButtonEdit, cxMemo, cxPC, cxImageComboBox,
  cxCheckBox, cxCalendar, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxImage, ExtDlgs;

type
  TfmShip = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ShipId: TcxGridDBColumn;
    cxGrid1DBTableView1ShipCrewId: TcxGridDBColumn;
    cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn;
    cxGrid1DBTableView1ShipCode: TcxGridDBColumn;
    cxGrid1DBTableView1ShipName: TcxGridDBColumn;
    cxGrid1DBTableView1EngineName: TcxGridDBColumn;
    cxGrid1DBTableView1Origin: TcxGridDBColumn;
    cxGrid1DBTableView1YearMade: TcxGridDBColumn;
    cxGrid1DBTableView1P: TcxGridDBColumn;
    cxGrid1DBTableView1L: TcxGridDBColumn;
    cxGrid1DBTableView1T: TcxGridDBColumn;
    cxGrid1DBTableView1GrossTon: TcxGridDBColumn;
    cxGrid1DBTableView1NettoTon: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dbeShipCode: TcxDBTextEdit;
    Label2: TLabel;
    dbeShipName: TcxDBTextEdit;
    Label4: TLabel;
    dbeStorageLocation: TcxDBExtLookupComboBox;
    Label5: TLabel;
    dbeEngineName: TcxDBTextEdit;
    Label6: TLabel;
    dbeOrigin: TcxDBTextEdit;
    Label12: TLabel;
    dbeNettoTon: TcxDBCalcEdit;
    dbeGrossTon: TcxDBCalcEdit;
    Label11: TLabel;
    Label10: TLabel;
    dbeTinggi: TcxDBCalcEdit;
    dbeLebar: TcxDBCalcEdit;
    Label9: TLabel;
    Label8: TLabel;
    dbePanjang: TcxDBCalcEdit;
    dbeYearMade: TcxDBTextEdit;
    Label7: TLabel;
    Panel3: TPanel;
    qryShipCrew: TADODataSet;
    dsShipCrew: TDataSource;
    pcBody: TcxPageControl;
    tsDetail: TcxTabSheet;
    tsDipendencies: TcxTabSheet;
    cgDependencies: TcxGrid;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    cgShipCrew: TcxGrid;
    cgvShipCrew: TcxGridDBTableView;
    cgShipCrewLevel1: TcxGridLevel;
    cgvShipCrewShipCrewName: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    dsShipProperty: TDataSource;
    qryShipProperty: TADODataSet;
    dsShipPropertyDetail: TDataSource;
    qryShipPropertyDetail: TADODataSet;
    cgShipHistory: TcxGrid;
    cgvShipHistory: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    qryShipHistory: TADODataSet;
    dsShipHistory: TDataSource;
    cgvShipHistoryCek: TcxGridDBColumn;
    cgvShipHistoryHistoryDate: TcxGridDBColumn;
    cgvShipHistoryKet1: TcxGridDBColumn;
    cgvShipHistoryket2: TcxGridDBColumn;
    Panel6: TPanel;
    cgShipProperty: TcxGrid;
    cgvShipProperty: TcxGridDBTableView;
    cgvShipPropertyProperty: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cgShipPropertyDetail: TcxGrid;
    cgvShipPropertyDetail: TcxGridDBTableView;
    cgvShipPropertyDetailDetail: TcxGridDBColumn;
    cgvShipPropertyDetailValue: TcxGridDBColumn;
    cgvShipPropertyDetailKeterangan: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    PPosisi: TPanel;
    cgvShipCrewPositionName: TcxGridDBColumn;
    qryLastPosition: TADODataSet;
    Panel2: TPanel;
    qryLog: TADODataSet;
    dsLog: TDataSource;
    cgvDependenciesLogId: TcxGridDBColumn;
    cgvDependenciesUser: TcxGridDBColumn;
    cgvDependenciesTransactionDate: TcxGridDBColumn;
    cgvDependenciesAction: TcxGridDBColumn;
    cgvDependenciesTableName: TcxGridDBColumn;
    cgvDependenciesDescription: TcxGridDBColumn;
    LPosisi: TLabel;
    LWaktu: TLabel;
    cxGrid1DBTableView1FlagMuat: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    qryShipImage: TADODataSet;
    dsShipImage: TDataSource;
    OpenDialog1: TOpenDialog;
    ImgShip: TcxImage;
    Splitter2: TSplitter;
    Panel9: TPanel;
    CgShipImage: TcxGrid;
    cgvShipImage: TcxGridDBTableView;
    cgvShipImageNo: TcxGridDBColumn;
    cgvShipImageDescription: TcxGridDBColumn;
    CgShipImagexGridLevel4: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Splitter3: TSplitter;
    procedure qryShipHistoryNewRecord(DataSet: TDataSet);
    procedure dbeShipCodePropertiesEditValueChanged(Sender: TObject);
    procedure qryShipImageNewRecord(DataSet: TDataSet);
    procedure cgvItemImageDirectoryPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cgvShipImageFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmShip: TfmShip;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta;

{ TfmShip }

procedure TfmShip.cgvItemImageDirectoryPathPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    qryShipImage.Edit;
    qryShipImage.FieldByName('DirectoryPath').asstring:=OpenDialog1.FileName;
  end;
end;

procedure TfmShip.cgvShipImageFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ImgShip.picture.LoadFromFile(qryShipImage.FieldByName('DirectoryPath').AsString);
end;

procedure TfmShip.dbeShipCodePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if dmEkspedisi.qryShip.FieldByName('flagmuat').AsString='0' then
    pposisi.Color:=$00CD98FE
  else
    pposisi.Color:=$0082FFD7;
  if not(qryLastPosition.Eof) then
  begin
    if qryLastPosition.FieldByName('LastPosition').isnull then
    begin
      LPosisi.Caption:=' Posisi : Unknown ';
      LWaktu.caption:=' Last Update : Unknown ';
    end
    else
    begin
      LPosisi.Caption:=' Posisi : '+ qryLastPosition.FieldByName('LastPosition').AsString;
      LWaktu.caption:=' Last Update : '+datetimetostr(qryLastPosition.FieldByName('LastUpdate').Asdatetime)+' ';
    end;
  end;
end;

procedure TfmShip.InitForm;
begin
  inherited;
  setreadonly(dbeShipCode,True,Color_INACTIVE);
  OpenIfClose(dmEkspedisi.qryShip);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(dmEkspedisi.qryShipCrew);
  OpenIfClose(qryShipProperty);
  OpenIfClose(qryShipPropertyDetail);
  OpenIfClose(qryShipHistory);
  OpenIfClose(qryShipCrew);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryPositionCrew);
  OpenIfClose(qryLastPosition);
  OpenIfClose(qryShipImage);
  OpenIfClose(qryLog);
  dbeShipCodePropertiesEditValueChanged(self);
end;

procedure TfmShip.qryShipHistoryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cek').AsInteger:=0;
end;

procedure TfmShip.qryShipImageNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  if OpenDialog1.Execute then
  begin
    DataSet.FieldByName('DirectoryPath').asstring:=OpenDialog1.FileName;
  end;
end;

procedure TfmShip.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryShip);
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(dmEkspedisi.qryShipCrew);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(qryShipProperty);
  LockRefresh(qryShipPropertyDetail);
  LockRefresh(qryShipHistory);
  LockRefresh(dmEkspedisi.qryPositionCrew);
  LockRefresh(qryLastPosition);
  LockRefresh(qryLog);
  LockRefresh(qryShipCrew);
  LockRefresh(qryShipImage);
end;

end.
