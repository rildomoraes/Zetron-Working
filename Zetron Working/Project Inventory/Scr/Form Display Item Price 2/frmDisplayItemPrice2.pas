unit frmDisplayItemPrice2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGrid, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  cxButtons, ExtCtrls;

type
  TfmDisplayItemPrice2 = class(TFormUniDisplay)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryPrevItem: TUniQuery;
    dsPrevItem: TDataSource;
    cxGrid1DBTableView1itemid: TcxGridDBColumn;
    cxGrid1DBTableView1itemidexternal: TcxGridDBColumn;
    cxGrid1DBTableView1itemname: TcxGridDBColumn;
    cxGrid1DBTableView1itemnamechinese: TcxGridDBColumn;
    cxGrid1DBTableView1barcodeid: TcxGridDBColumn;
    cxGrid1DBTableView1barcodename: TcxGridDBColumn;
    cxGrid1DBTableView1itemcategoryid: TcxGridDBColumn;
    cxGrid1DBTableView1employeeid: TcxGridDBColumn;
    cxGrid1DBTableView1type: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure: TcxGridDBColumn;
    cxGrid1DBTableView1register: TcxGridDBColumn;
    cxGrid1DBTableView1minstockqty: TcxGridDBColumn;
    cxGrid1DBTableView1maxstockqty: TcxGridDBColumn;
    cxGrid1DBTableView1reorderqty: TcxGridDBColumn;
    cxGrid1DBTableView1margin: TcxGridDBColumn;
    cxGrid1DBTableView1minsaleprice: TcxGridDBColumn;
    cxGrid1DBTableView1pricelist: TcxGridDBColumn;
    cxGrid1DBTableView1lastpi: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    cxGrid1DBTableView1statussource: TcxGridDBColumn;
    cxGrid1DBTableView1statusitem: TcxGridDBColumn;
    cxGrid1DBTableView1statuscostmethod: TcxGridDBColumn;
    cxGrid1DBTableView1flagprintbarcode: TcxGridDBColumn;
    cxGrid1DBTableView1flagprintprice: TcxGridDBColumn;
    cxGrid1DBTableView1flaginactive: TcxGridDBColumn;
    cxGrid1DBTableView1flagterdaftar: TcxGridDBColumn;
    cxGrid1DBTableView1flagbahasaindonesia: TcxGridDBColumn;
    cxGrid1DBTableView1flagcouple: TcxGridDBColumn;
    cxGrid1DBTableView1flagpurchasereturn: TcxGridDBColumn;
    cxGrid1DBTableView1flagsalesreturn: TcxGridDBColumn;
    cxGrid1DBTableView1flagprocessopname: TcxGridDBColumn;
    cxGrid1DBTableView1itemid_1: TcxGridDBColumn;
    cxGrid1DBTableView1employeeid_1: TcxGridDBColumn;
    cxGrid1DBTableView1price1: TcxGridDBColumn;
    cxGrid1DBTableView1price2: TcxGridDBColumn;
    cxGrid1DBTableView1price3: TcxGridDBColumn;
    cxGrid1DBTableView1price4: TcxGridDBColumn;
    cxGrid1DBTableView1price5: TcxGridDBColumn;
    cxGrid1DBTableView1qty1: TcxGridDBColumn;
    cxGrid1DBTableView1qty2: TcxGridDBColumn;
    cxGrid1DBTableView1qty3: TcxGridDBColumn;
    cxGrid1DBTableView1qty4: TcxGridDBColumn;
    cxGrid1DBTableView1qty5: TcxGridDBColumn;
    cxGrid1DBTableView1minqty1: TcxGridDBColumn;
    cxGrid1DBTableView1minqty2: TcxGridDBColumn;
    cxGrid1DBTableView1minqty3: TcxGridDBColumn;
    cxGrid1DBTableView1minqty4: TcxGridDBColumn;
    cxGrid1DBTableView1minqty5: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure1: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure2: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure3: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure4: TcxGridDBColumn;
    cxGrid1DBTableView1unitmeasure5: TcxGridDBColumn;
    cxGrid1DBTableView1lastmodified: TcxGridDBColumn;
    cxGrid1DBTableView1newprice1: TcxGridDBColumn;
    cxGrid1DBTableView1newprice2: TcxGridDBColumn;
    cxGrid1DBTableView1newprice3: TcxGridDBColumn;
    cxGrid1DBTableView1newprice4: TcxGridDBColumn;
    cxGrid1DBTableView1newprice5: TcxGridDBColumn;
    cxGrid1DBTableView1effectivedate: TcxGridDBColumn;
    cxGrid1DBTableView1approvedate: TcxGridDBColumn;
    cxGrid1DBTableView1flagupdown1: TcxGridDBColumn;
    cxGrid1DBTableView1flagupdown2: TcxGridDBColumn;
    cxGrid1DBTableView1flagupdown3: TcxGridDBColumn;
    cxGrid1DBTableView1flagupdown4: TcxGridDBColumn;
    cxGrid1DBTableView1flagupdown5: TcxGridDBColumn;
    cxGrid1DBTableView1statusapprove: TcxGridDBColumn;
    dbeItemName: TcxTextEdit;
    dbeItemId: TcxTextEdit;
    dbeBarcodeId: TcxTextEdit;
    Label4: TLabel;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvItemCategory: TcxGridDBTableView;
    cgvItemCategoryitemcategoryid: TcxGridDBColumn;
    cgvItemCategoryitemcategoryname: TcxGridDBColumn;
    dbeKategori: TcxExtLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure dbeItemIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  end;

var
  fmDisplayItemPrice2: TfmDisplayItemPrice2;

implementation
uses untProcedure, untConstanta, dtmGlobal, dtmShare, dtmInventory;

{$R *.dfm}

procedure TfmDisplayItemPrice2.Button1Click(Sender: TObject);
begin
  inherited;
  qryPrevItem.Close;
  qryPrevItem.Params[0].value:=dbeItemName.text+'%';
  qryPrevItem.Params[1].Value:=dbeItemId.Text+'%';
  qryPrevItem.Open;
end;

procedure TfmDisplayItemPrice2.dbeItemIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=13) then
   begin
    qryPrevItem.Close;
    qryPrevItem.Params[0].value:=dbeItemName.text+'%';
    qryPrevItem.Params[1].Value:=dbeItemId.Text+'%';
    qryPrevItem.Params[2].Value:=dbeBarcodeId.Text+'%';
    if (dbeKategori.EditValue=null) then
      qryPrevItem.Params[3].Value:='%'
    else
      qryPrevItem.Params[3].Value:=dbeKategori.EditValue;
    qryPrevItem.Open;
   end;
end;

procedure TfmDisplayItemPrice2.InitForm;
begin
  inherited;
  OpenIfClose(qryPrevItem);
  OpenIfClose(dmInventory.qryItemCategory);
end;

procedure TfmDisplayItemPrice2.RefreshAll;
begin
  inherited;
  LockRefresh(qryPrevItem);
  LockRefresh(dmInventory.qryItemCategory);
end;

end.
