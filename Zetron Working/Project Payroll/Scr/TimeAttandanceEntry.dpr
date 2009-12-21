program TimeAttandanceEntry;

uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  frmAbsen in 'Form Absen\frmAbsen.pas' {fmAbsen},
  dtmGlobal in '..\..\Modul General\Data Module Global\dtmGlobal.pas' {dmGlobal: TDataModule},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas',
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas',
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Zetron Time Attandance';
  untConstanta.CurrentZetronApplication:= zaTimeAttandance;
  untConstanta.CurrentConnectionEngine:= ceADO;
  untConstanta.CurrentDatabaseEngine:= deMSSQLServer;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TfmAbsen, fmAbsen);
  Application.Run;
end.
