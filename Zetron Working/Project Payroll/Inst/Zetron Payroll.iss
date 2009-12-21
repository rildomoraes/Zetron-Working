[Setup]
DefaultDirName={pf}\Zetron Payroll
OutputDir=D:\Zetron\Project Payroll\Inst
OutputBaseFilename=Zetron Payroll
VersionInfoCompany=Zetron System
VersionInfoDescription=Zetron Payroll
AppCopyright=Zetron System
AppName=Zetron Payroll
DefaultGroupName=Zetron Payroll
AlwaysUsePersonalGroup=false
AppVerName=Zetron Payroll
AppID={{0162CD8D-197F-4231-G66F-64167826155D}
AppComments=Zetron System
AppContact=ivanhandoyo@gmail.com
VersionInfoTextVersion=Pro Edition
VersionInfoCopyright=Zetron System
UninstallDisplayIcon={app}\POS_Profesional.exe
VersionInfoVersion=0.0.0.0
[Files]
Source: D:\Zetron\Project Payroll\Exe\Payroll.exe; DestDir: {app}; DestName: ZEPAY.exe; Components: Client Server
Source: D:\Zetron\Project Payroll Absen SPBU\Exe\TimeAttandanceEntry.exe; DestDir: {app}; DestName: ZEATT.exe; Components: Client Server
Source: D:\Zetron System\Project\Connection Builder\Exe\ConnectionBuilder.exe; DestDir: {app}; Components: Client Server
Source: D:\Zetron\Project Payroll\Exe\ADOTranslate.ini; DestDir: {app}; Components: Client Server
Source: D:\Zetron System\Project\Zetron Server Service\Exe\ZetronServer.exe; DestDir: {app}; Components: Server

Source: ..\..\Runtime\USBIO\usbiocom.dll; DestDir: {app}; Flags: regserver; Components: Server
Source: ..\..\Runtime\BioKey\biokey.ocx; DestDir: {app}; Flags: regserver; Components: Server

Source: ..\..\Runtime\Postgre\comerr32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\gssapi32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\k5sprt32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\krb5_32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\libeay32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\libiconv2.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\libintl3.dll; DestDir: {app}; Components: Client Server; DestName: libintl-2.dll
Source: ..\..\Runtime\Postgre\libpq.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\ssleay32.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\zlib1.dll; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\pg_dump.exe; DestDir: {app}; Components: Client Server
Source: ..\..\Runtime\Postgre\msvcr71.dll; DestDir: {app}; Components: Client Server



[Icons]
Name: {group}\Zetron Payroll; Filename: {app}\ZEPAY.exe; IconIndex: 0; Components: " Client Server"
Name: {group}\Zetron Time Attandance; Filename: {app}\ZEATT.exe; IconIndex: 0
Name: {group}\Connection Builder; Filename: {app}\ConnectionBuilder.exe; IconIndex: 0; Components: Client Server
Name: {commondesktop}\Zetron Payroll; Filename: {app}\ZEPAY.exe; IconIndex: 0; Components: Client Server
Name: {commondesktop}\Zetron Time Attandance; Filename: {app}\ZEATT.exe; IconIndex: 0; Components: Client Server
[UninstallRun]
;
Filename: {app}\ZetronServer.exe; Parameters: /uninstall /silent

[UninstallDelete]
Name: Zetron Payroll; Type: filesandordirs; Components: 
[Components]
Name: Server; Description: Install Server Application; Types: Server_Side
Name: Client; Description: Install Client Application; Types: Client_Side Server_Side
[Types]
Name: Server_Side; Description: Install Server and Client Application
Name: Client_Side; Description: "Install Client Application "
[_ISTool]
UseAbsolutePaths=true
[Run]
Filename: {app}\ZetronServer.exe; Parameters: /install /silent
