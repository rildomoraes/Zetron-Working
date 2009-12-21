[Setup]
DefaultDirName={pf}\Zetron Inventory
OutputDir=D:\Zetron Executable\Inventory\Installer
OutputBaseFilename=Zetron Inventory
VersionInfoCompany=Zetron System
VersionInfoDescription=Zetron Inventory
AppCopyright=Zetron System
AppName=Zetron Inventory
DefaultGroupName=Zetron System
AlwaysUsePersonalGroup=false
AppVerName=Zetron Inventory
AppID={{C4DF1D36-4D03-4252-877F-47C5551145C7}
AppComments=Zetron System
AppContact=ivanhandoyo@gmail.com
VersionInfoTextVersion=
VersionInfoCopyright=Zetron System
UninstallDisplayIcon={app}\ZEPOSSTD.exe
VersionInfoVersion=1.0.5.4
[Files]
Source: D:\Zetron Executable\Runtime\Others\ADOTranslate.ini; DestDir: {app}
Source: D:\Zetron Executable\Connection Builder\ConnectionBuilder.exe; DestDir: {app}
Source: D:\Zetron Executable\Inventory\POS_Standard.exe; DestDir: {app}; Components: Standard_Edition
Source: D:\Zetron Executable\Inventory\POS_Profesional.exe; DestDir: {app}; Components: Professional_Edition
Source: D:\Zetron Executable\Inventory\POS_Enterprise.exe; DestDir: {app}; Components: Enterprise_Edition
Source: D:\Zetron Executable\Inventory\POS_Cashier.exe; DestDir: {app}; Components: Enterprise_Edition
Source: D:\Zetron Executable\Zetron Server\AddPort_Zetron.bat; DestDir: {app}
Source: D:\Zetron Executable\Runtime\Others\notify.wav; DestDir: {app}

Source: C:\Program Files\PostgreSQL\8.3\bin\pg_dump.exe; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\pg_restore.exe; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\createdb.exe; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\libintl-8.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\libiconv-2.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\libpq.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\ssleay32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\libeay32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\msvcr71.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\krb5_32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\comerr32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\k5sprt32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\gssapi32.dll; DestDir: {app}
Source: C:\Program Files\PostgreSQL\8.3\bin\zlib1.dll; DestDir: {app}
Source: D:\Zetron Executable\Runtime\PostgreSQL\POS.backup; DestDir: {app}
Source: D:\Zetron Executable\Runtime\PostgreSQL\POSPIC.backup; DestDir: {app}
Source: D:\Zetron Executable\Runtime\PostgreSQL\AddPort_PostgreSQL.bat; DestDir: {app}
Source: D:\Zetron Executable\Runtime\PostgreSQL\CreateDatabase.bat; DestDir: {app}

Source: C:\WINDOWS\system32\adortl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\bdertl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\rtl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vcl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vclactnband140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vcldb140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vclimg140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vclshlctrls140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vclx140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\xmlrtl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dbrtl140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\tee8140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\teedb8140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\teeui8140.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\vclie140.bpl; DestDir: {app}

Source: C:\Program Files\Embarcadero\RAD Studio\7.0\bin\designide140.bpl; DestDir: {app}
Source: C:\Program Files\Embarcadero\RAD Studio\7.0\bin\IndyCore140.bpl; DestDir: {app}
Source: C:\Program Files\Embarcadero\RAD Studio\7.0\bin\IndySystem140.bpl; DestDir: {app}

Source: C:\WINDOWS\system32\dxBarD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxComnD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxBarExtItemsD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxRibbonD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxTreeListdxBarPopupMenuD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxDataD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxEditorsD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxExportD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxExtEditorsD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxGridD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxLibraryD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxPageControlD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxPivotGridD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\cxTreeListD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxCoreD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxDockingD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxGDIPlusD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxmdsD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxPSCoreD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxPScxCommonD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxPScxGrid6LnkD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxPSLnksD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxThemeD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxSkinsCoreD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxSkinscxPCPainterD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\dxSkinsdxDLPainterD14.bpl; DestDir: {app}

Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxPSPrVwRibbonD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxPSPrVwAdvD14.bpl; DestDir: {app}

Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinBlackD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinBlueD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinCaramelD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinCoffeeD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinDarkRoomD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinDarkSideD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinFoggyD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinGlassOceansD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkiniMaginaryD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinLilianD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinLiquidSkyD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinLondonLiquidSkyD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinMcSkinD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinMoneyTwinsD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinOffice2007BlackD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinOffice2007BlueD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinOffice2007GreenD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinOffice2007PinkD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinOffice2007SilverD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinPumpkinD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinSevenD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinSharpD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinSilverD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinSpringTimeD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinStardustD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinSummer2008D14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinValentineD14.bpl; DestDir: {app}
Source: C:\Program Files\Developer Express Inc\Library\Delphi14\dxSkinXmas2008BlueD14.bpl; DestDir: {app}

Source: C:\WINDOWS\system32\acQueryBuilderD14.bpl; DestDir: {app}
Source: C:\WINDOWS\system32\AcQueryBuilderADOD14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\acQueryBuilderUniDACD14.bpl; DestDir: {app}

Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\QExport4RT_D14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\QImport3RT_D14.bpl; DestDir: {app}

Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\fqb140.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frx14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxADO14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxDAC14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxDB14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxe14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxTee14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\fs14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\fsADO14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\fsDB14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\fsTee14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\frxUniDAC14.bpl; DestDir: {app}

Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\IvComponentDevExpressRT14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\IvComponentInstanceControlRT14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\IvComponentLibraryRT14.bpl; DestDir: {app}
Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\IvComponentMasterRT14.bpl; DestDir: {app}

Source: C:\Documents and Settings\All Users\Documents\RAD Studio\7.0\Bpl\DigitalPersona.bpl; DestDir: {app}

Source: C:\Program Files\Devart\UniDac for RAD Studio 2010\Bin\dac140.bpl; DestDir: {sys}
Source: C:\Program Files\Devart\UniDac for RAD Studio 2010\Bin\unidac140.bpl; DestDir: {sys}
Source: C:\Program Files\Devart\UniDac for RAD Studio 2010\Bin\dacvcl140.bpl; DestDir: {app}
Source: C:\Program Files\Devart\UniDac for RAD Studio 2010\Bin\unidacvcl140.bpl; DestDir: {app}

[Icons]
Name: {group}\Connection Builder; Filename: {app}\ConnectionBuilder.exe
Name: {group}\Zetron Inventory Standard; Filename: {app}\POS_Standard.exe; IconIndex: 0; Components: Standard_Edition
Name: {commondesktop}\Zetron Inventory Standard; Filename: {app}\POS_Standard.exe; IconIndex: 0; Components: Standard_Edition
Name: {group}\Zetron Inventory Profesional; Filename: {app}\POS_Profesional.exe; IconIndex: 0; Components: Professional_Edition
Name: {commondesktop}\Zetron Inventory Profesional; Filename: {app}\POS_Profesional.exe; IconIndex: 0; Components: Professional_Edition
Name: {group}\Zetron Inventory Enterprise; Filename: {app}\POS_Enterprise.exe; IconIndex: 0; Components: Enterprise_Edition
Name: {commondesktop}\Zetron Inventory Enterprise; Filename: {app}\POS_Enterprise.exe; IconIndex: 0; Components: Enterprise_Edition
Name: {group}\Zetron Cashier; Filename: {app}\POS_Cashier.exe; IconIndex: 0; Components: Enterprise_Edition
Name: {commondesktop}\Zetron Cashier; Filename: {app}\POS_Cashier.exe; IconIndex: 0; Components: Enterprise_Edition
[UninstallRun]

[UninstallDelete]
Name: Zetron System; Type: filesandordirs
[Components]
Name: Standard_Edition; Description: Standard Edition; Types: Standard_Edition
Name: Professional_Edition; Description: Professional Edition; Types: Profesional_Edition
Name: Enterprise_Edition; Description: Enterprise Edition; Types: Enterprise_Edition
[Types]
Name: Standard_Edition; Description: Install Zetron Inventory Standard Edition
Name: Profesional_Edition; Description: Install Zetron Inventory Profesional Edition
Name: Enterprise_Edition; Description: Install Zetron Inventory Enterprise Edition
[_ISTool]
UseAbsolutePaths=true
[Run]
Filename: {app}\AddPort_PostgreSQL.bat; Components: 
Filename: {app}\AddPort_Zetron.bat; Components: 
