unit frmDisplayPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls;

type
  TfmDisplayPrice = class(TFormUniDisplay)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
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
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmDisplayPrice: TfmDisplayPrice;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare, dtmInventory;

procedure TfmDisplayPrice.dbeItemIdExternalKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  UniQuery1.Close;
  UniQuery1.SQL.Text:='Select * from item a left join price b where a.itemid=b.itemid and a.itemidexternal='+ dbeItemIdExternal.Text;
  UniQuery1.Execute;
  UniQuery1.Open;
end;

procedure TfmDisplayPrice.dbeItemNameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  UniQuery1.Close;
  UniQuery1.SQL.Text:='Select * from item a left join price b where a.itemid=b.itemid and a.itemname='+dbeItemName.Text;
  UniQuery1.Execute;
  UniQuery1.Open;
end;

procedure TfmDisplayPrice.InitForm;
begin
  inherited;

  OpenIfClose(UniQuery1);
end;

procedure TfmDisplayPrice.RefreshAll;
begin
  inherited;

  LockRefresh(UniQuery1);
end;

end.
