[Setup]
DefaultDirName={pf}\Zetron Inventory
OutputDir=D:\Zetron System\Project\Inventory Custom 01\Inst
OutputBaseFilename=Zetron Inventory Custom
VersionInfoCompany=Zetron System
VersionInfoDescription=Zetron Inventory
AppCopyright=Zetron System
AppName=Zetron Inventory
DefaultGroupName=Zetron Inventory
AlwaysUsePersonalGroup=false
AppVerName=Zetron Inventory
AppID={{0162CD8D-197F-4231-A66F-64167826155D}
AppComments=Zetron System
AppContact=ivanhandoyo@zetronsystem.com
VersionInfoTextVersion=Pro Edition
VersionInfoCopyright=Zetron System
UninstallDisplayIcon={app}\ZEINV_C01.exe
VersionInfoVersion=0.0.0.0
[Files]
Source: D:\Zetron System\Project\Inventory Custom 01\Exe\Inventory_Custom01.exe; DestDir: {app}; DestName: ZEINV_C01.exe; Components: Client Server
Source: D:\Zetron Project Done\Connection Builder\Exe\ConnectionBuilder.exe; DestDir: {app}; Components: Client Server
Source: D:\Zetron System\Project\Inventory Custom 01\Exe\ADOTranslate.ini; DestDir: {app}; Components: Client Server
Source: D:\Zetron System\Project\Zetron Server Service\Exe\ZetronServerService.exe; DestDir: {app}; Components: Server

Source: D:\Zetron System\Runtime\USBIO\usbiocom.dll; DestDir: {app}; Flags: regserver; Components: Server
Source: D:\Zetron System\Project\Inventory Custom 01\Exe\WarehouseSetting.sys; DestDir: {app}; Components: " Client Server"

[Icons]
Name: {group}\Zetron Inventory; Filename: {app}\ZEINV_C01.exe; IconIndex: 0; Components: " Client Server"
Name: {group}\Connection Builder; Filename: {app}\ConnectionBuilder.exe; IconIndex: 0; Components: Client Server
Name: {commondesktop}\Zetron Inventory; Filename: {app}\ZEINV_C01.exe; IconIndex: 0; Components: Client Server
[UninstallRun]
;
Filename: {app}\ZetronServerService.exe; Parameters: /uninstall /silent

[UninstallDelete]
Name: Zetron Inventory; Type: filesandordirs; Components: 
[Components]
Name: Server; Description: Install Server Application; Types: Server_Side
Name: Client; Description: Install Client Application; Types: Client_Side Server_Side
[Types]
Name: Server_Side; Description: Install Server and Client Application
Name: Client_Side; Description: "Install Client Application "
[_ISTool]
UseAbsolutePaths=true
[Run]
Filename: {app}\ZetronServerService.exe; Parameters: /install /silent
