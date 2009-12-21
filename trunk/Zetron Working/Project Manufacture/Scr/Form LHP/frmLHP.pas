unit frmLHP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, cxPC, ADODB;

type
  TfmLHP = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    dbeSPKDate: TcxDBDateEdit;
    dbeSPKId: TcxDBTextEdit;
    dbeDibuat: TcxDBDateEdit;
    dblcProses: TcxDBExtLookupComboBox;
    dbeDisetujui: TcxDBDateEdit;
    dblcMaterial: TcxDBExtLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    Label10: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView2Column4: TcxGridDBColumn;
    cxGrid1DBTableView2Column5: TcxGridDBColumn;
    cxGrid1DBTableView2Column6: TcxGridDBColumn;
    cxGrid1DBTableView3Column1: TcxGridDBColumn;
    cxGrid1DBTableView3Column2: TcxGridDBColumn;
    cxGrid1DBTableView3Column3: TcxGridDBColumn;
    cxGrid1DBTableView3Column4: TcxGridDBColumn;
    cxGrid1DBTableView3Column5: TcxGridDBColumn;
    cxGrid1DBTableView3Column6: TcxGridDBColumn;
    cxGrid1DBTableView4Column1: TcxGridDBColumn;
    cxGrid1DBTableView4Column2: TcxGridDBColumn;
    cxGrid1DBTableView4Column3: TcxGridDBColumn;
    cxGrid1DBTableView4Column4: TcxGridDBColumn;
    cxGrid1DBTableView4Column5: TcxGridDBColumn;
    cxGrid1DBTableView4Column6: TcxGridDBColumn;
    cxGrid1DBTableView5Column1: TcxGridDBColumn;
    cxGrid1DBTableView5Column2: TcxGridDBColumn;
    cxGrid1DBTableView5Column3: TcxGridDBColumn;
    cxGrid1DBTableView5Column4: TcxGridDBColumn;
    cxGrid1DBTableView5Column5: TcxGridDBColumn;
    cxGrid1DBTableView5Column6: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbeMemoInternal: TcxDBMemo;
    qryProductionInHd: TADODataSet;
    qryProductionInDt: TADODataSet;
    dsProductionInDt: TDataSource;
    DataSource1: TDataSource;
    qryProductionOutHd: TADODataSet;
    DataSource2: TDataSource;
    qryProductionOutDt: TADODataSet;
    procedure qryProductionInDtBeforeInsert(DataSet: TDataSet);
    procedure qryProductionOutDtBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLHP: TfmLHP;

implementation

{$R *.dfm}

procedure TfmLHP.qryProductionInDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmLHP.qryProductionOutDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

end.
