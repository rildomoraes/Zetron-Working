unit frmSettingGlobalEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmSettingGlobalPro, Menus, cxLookAndFeelPainters, ActnList, cxDropDownEdit,
  cxCalc, cxMaskEdit, cxSpinEdit, cxTextEdit, cxContainer, cxEdit, cxCheckBox,
  StdCtrls, cxPC, cxControls, cxButtons, ExtCtrls;

type
  TfmSettingGlobalEnt = class(TfmSettingGlobalPro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingGlobalEnt: TfmSettingGlobalEnt;

implementation

{$R *.dfm}

end.
