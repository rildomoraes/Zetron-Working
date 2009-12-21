unit frmCaptureFoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniPosition, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, MemDS, DBAccess,
  Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxCheckBox, cxContainer, cxImage, cxDBEdit,
  dxDockPanel, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, StdCtrls, cxButtons, ExtCtrls, ADODB;

type
  TfmCaptureFoto = class(TFormUniPosition)
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxVertContainerDockSite1: TdxVertContainerDockSite;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    dpPhoto: TdxDockPanel;
    dbeFoto: TcxDBImage;
    Panel1: TPanel;
    chkStretch: TcxCheckBox;
    dpPhoto2: TdxDockPanel;
    Panel2: TPanel;
    chkStretch2: TcxCheckBox;
    dbeFoto2: TcxDBImage;
    dpCaptureFoto: TdxDockPanel;
    pnlButtonCapture: TPanel;
    btnSource: TcxButton;
    btnOnOff: TcxButton;
    btnSave: TcxButton;
    chkResizeImage: TcxCheckBox;
    edtResizeImage: TcxCalcEdit;
    dpPerusahaan: TdxDockPanel;
    cgPegawai: TcxGrid;
    cgvPegawai: TcxGridDBTableView;
    cgPegawaiLevel1: TcxGridLevel;
    ActionList2: TActionList;
    actDevice: TAction;
    actOnOff: TAction;
    actShot: TAction;
    dsFoto: TDataSource;
    qryFoto: TADOQuery;
    cgvPegawaiPegawaiId: TcxGridDBColumn;
    cgvPegawaiNoPeg: TcxGridDBColumn;
    cgvPegawaiBarcode: TcxGridDBColumn;
    cgvPegawaiNama: TcxGridDBColumn;
    cgvPegawaiAlamat: TcxGridDBColumn;
    cgvPegawaiTelp: TcxGridDBColumn;
    cgvPegawaiTmpLahir: TcxGridDBColumn;
    cgvPegawaiTglLahir: TcxGridDBColumn;
    cgvPegawaiSex: TcxGridDBColumn;
    cgvPegawaiAgama: TcxGridDBColumn;
    cgvPegawaiStSipil: TcxGridDBColumn;
    cgvPegawaiTglMasuk: TcxGridDBColumn;
    cgvPegawaiTglKeluar: TcxGridDBColumn;
    cgvPegawaiNoKTP: TcxGridDBColumn;
    cgvPegawaiFlagAstek: TcxGridDBColumn;
    cgvPegawaiNoAstek: TcxGridDBColumn;
    cgvPegawaiTglAstek: TcxGridDBColumn;
    cgvPegawaiFlagJpk: TcxGridDBColumn;
    cgvPegawaiTglJpk: TcxGridDBColumn;
    cgvPegawaiBloodType: TcxGridDBColumn;
    cgvPegawaiCityId: TcxGridDBColumn;
    cgvPegawaiKodePerusahaan: TcxGridDBColumn;
    cgvPegawaiFlagProses: TcxGridDBColumn;
    cgvPegawaiFlagKeluar: TcxGridDBColumn;
    cgvPegawaiMemo: TcxGridDBColumn;
    cgvPegawaiKodeGroupShiftId: TcxGridDBColumn;
    cgvPegawaiShift: TcxGridDBColumn;
    cgvPegawaiKodeJabatan: TcxGridDBColumn;
    cgvPegawaiKodeOutsourcing: TcxGridDBColumn;
    cgvPegawaiKodeDepartemen: TcxGridDBColumn;
    cgvPegawaiKodeDivisi: TcxGridDBColumn;
    cgvPegawaiStatusSchedule: TcxGridDBColumn;
    cgvPegawaiStatusSPL: TcxGridDBColumn;
    cgvPegawaiUrutReport: TcxGridDBColumn;
    cgvPegawaiKodeStatus: TcxGridDBColumn;
    cgvPegawaiperusahaan: TcxGridDBColumn;
    cgvPegawaidivisi: TcxGridDBColumn;
    cgvPegawaidepartemen: TcxGridDBColumn;
    procedure actShotExecute(Sender: TObject);
    procedure actOnOffExecute(Sender: TObject);
    procedure actDeviceExecute(Sender: TObject);
    procedure qryFotoBeforePost(DataSet: TDataSet);
    procedure qryFotoBeforeDelete(DataSet: TDataSet);
    procedure qryFotoAfter(DataSet: TDataSet);
//    procedure VLGenericFilter2ProcessData(Sender: TObject;
//      InBuffer: IVLImageBuffer; var OutBuffer: IVLImageBuffer;
//      var SendOutputData: Boolean);
//    procedure VLGenericFilter1ProcessData(Sender: TObject;
//      InBuffer: IVLImageBuffer; var OutBuffer: IVLImageBuffer;
//      var SendOutputData: Boolean);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
    hasil, action : string;
  public
    { Public declarations }
  end;

var
  fmCaptureFoto: TfmCaptureFoto;

implementation

{$R *.dfm}
uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral, Jpeg, frmStruktur;

procedure TfmCaptureFoto.actDeviceExecute(Sender: TObject);
begin
  inherited;

//  if VLDSCapture1.Tag = 1 then  //If Start
//    actOnOff.ExecSQL;
//  VLDSCapture1.VideoCaptureDevice.ShowDeviceSelctDialog;
  actOnOff.Execute;
end;

procedure TfmCaptureFoto.actOnOffExecute(Sender: TObject);
begin
  inherited;

//  if VLDSCapture1.Tag = 0 then
//    VLDSCapture1.Start
//  else
//    VLDSCapture1.Stop;
//
//  VLDSCapture1.Tag := not VLDSCapture1.Tag;
//  VLDSImageDisplay1.Visible := not VLDSImageDisplay1.Visible;
end;

procedure TfmCaptureFoto.actShotExecute(Sender: TObject);
begin
  inherited;
  if dmGeneral.qryPegawai.IsEmpty then
    Exit;

  // Set state to dsEdit
  if dmGeneral.qryPegawaiFoto.State in [dsBrowse] then
    dmGeneral.qryPegawaiFoto.Edit;

//  VLSnapshot1.Snapshot;
//  VLSnapshot2.Snapshot;

  // Post it
  dmGeneral.qryPegawaiFoto.Post;
end;

procedure TfmCaptureFoto.InitForm;
begin
  inherited;

  cgPegawai.OnEnter := nil;

  OpenIfClose(dmGeneral.qryPegawai, False, True);
  OpenIfClose(dmGeneral.qryPegawaiFoto, False, True);
  OpenIfClose(qryFoto,false,true);

  SetReadOnly(cgvPegawai);
  edtResizeImage.Properties.DisplayFormat := '';
end;

procedure TfmCaptureFoto.qryFotoAfter(DataSet: TDataSet);
begin
  inherited;
  dmGeneral.InsertLog('PegawaiFoto',hasil,action);
end;

procedure TfmCaptureFoto.qryFotoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  hasil:=dmGeneral.GetLogDel(DataSet,Action);
end;

procedure TfmCaptureFoto.qryFotoBeforePost(DataSet: TDataSet);
begin
  inherited;

  hasil:=dmGeneral.GetLog(DataSet,Action);
end;

//procedure TfmCaptureFoto.VLGenericFilter1ProcessData(Sender: TObject;
//  InBuffer: IVLImageBuffer; var OutBuffer: IVLImageBuffer;
//  var SendOutputData: Boolean);
//var
//  BMPImage: TBitmap;
//  JPGImage, JPGImage2: TJPEGImage;
//  Stream: TStream;
//begin
//  inherited;
//  BMPImage := TBitmap.Create;
//  try
//    // Capture Image.
//    InBuffer.Data().ToBitmap(BMPImage);
//
//    JPGImage := TJPEGImage.Create;
//    JPGImage2 := TJPEGImage.Create;
//    try
//      // assign the bitmap to the jpeg, this converts the bitmap
//      JPGImage.Assign(BMPImage);
//
//      // Resize image
//      if chkResizeImage.Checked then
//        ResizeJPEGFile(JPGImage, JPGImage2, edtResizeImage.EditValue)
//      else
//        JPGImage2.Assign(JPGImage);
//
//      // And save it
//      Stream :=dmGeneral.qryPegawaiFoto.CreateBlobStream( dmGeneral.qryPegawaiFoto.FieldByName('foto1'), bmWrite);
//      JPGImage2.SaveToStream(Stream);
//      FreeAndNil(Stream);
//    finally
//      JPGImage.Free;
//      JPGImage2.Free;
//    end;
//  finally
//    BMPImage.Free;
//  end;
//end;

//procedure TfmCaptureFoto.VLGenericFilter2ProcessData(Sender: TObject;
//  InBuffer: IVLImageBuffer; var OutBuffer: IVLImageBuffer;
//  var SendOutputData: Boolean);
//var
//  BMPImage: TBitmap;
//  JPGImage, JPGImage2: TJPEGImage;
//  Stream: TStream;
//begin
//  inherited;
//  BMPImage := TBitmap.Create;
//  try
//    // Capture Image.
//    InBuffer.Data().ToBitmap(BMPImage);
//
//    JPGImage := TJPEGImage.Create;
//    JPGImage2 := TJPEGImage.Create;
//    try
//      // assign the bitmap to the jpeg, this converts the bitmap
//      JPGImage.Assign(BMPImage);
//
//      // Resize image
//      if chkResizeImage.Checked then
//        ResizeJPEGFile(JPGImage, JPGImage2, edtResizeImage.EditValue)
//      else
//        JPGImage2.Assign(JPGImage);
//
//      // And save it
//      Stream :=dmGeneral.qryPegawaiFoto.CreateBlobStream( dmGeneral.qryPegawaiFoto.FieldByName('foto2'), bmWrite);
//      JPGImage2.SaveToStream(Stream);
//      FreeAndNil(Stream);
//    finally
//      JPGImage.Free;
//      JPGImage2.Free;
//    end;
//  finally
//    BMPImage.Free;
//  end;
//end;

end.
