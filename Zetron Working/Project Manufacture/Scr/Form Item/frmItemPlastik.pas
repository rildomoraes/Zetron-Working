unit frmItemPlastik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmItem, Menus, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxImage, cxBlobEdit, cxDBExtLookupComboBox, cxCalc, cxCheckBox,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxButtonEdit, cxDBEdit, DBActns, ActnList, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, ADODB, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxSpinEdit, cxDropDownEdit, cxImageComboBox, cxCurrencyEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, StdCtrls,
  cxPC, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmItemPlastik = class(TfmItem)
    dbeItemProperty1: TcxDBImageComboBox;
    dbeItemProperty2: TcxDBSpinEdit;
    mniBeratCalcBJ: TMenuItem;
    lblArahGulungan: TLabel;
    lblJumlahWarna: TLabel;
    procedure mniBeratCalcBJClick(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmItemPlastik: TfmItemPlastik;

implementation

{$R *.dfm}

uses dtmGlobal;

procedure TfmItemPlastik.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'BeratJenis') = 0) then
    begin
      if Field.AsFloat <> 0 then
        mniBeratCalcBJ.Click;
    end;
  end;
end;

procedure TfmItemPlastik.InitForm;
begin
  inherited;

  dbeBerat.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
end;

procedure TfmItemPlastik.mniBeratCalcBJClick(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    dsDefault.DataSet.FieldByName('Berat').AsFloat :=
      (dsDefault.DataSet.FieldByName('T').AsFloat * dsDefault.DataSet.FieldByName('TConstanta').AsFloat * 1000) *
      (dsDefault.DataSet.FieldByName('L').AsFloat * dsDefault.DataSet.FieldByName('LConstanta').AsFloat) *
      (dsDefault.DataSet.FieldByName('P').AsFloat * dsDefault.DataSet.FieldByName('PConstanta').AsFloat) *
      (dsDefault.DataSet.FieldByName('BeratJenis').AsFloat);
  end;
end;

end.
