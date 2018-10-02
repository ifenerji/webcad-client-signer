; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Webcad Client Signer"
#define MyAppVersion "1.0"
#define MyAppPublisher "Webcad"
#define MyAppURL "https://webcad.com.tr"
#define MyAppFilePath "ega/EgaClientSigner.jar"
#define MyAppIcoName "ega.ico"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7C8AFDFA-3ECB-4C7E-B2EE-75A51F678852}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=WebcadClientSigner-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "ega\*"; DestDir: "{app}\ega"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "jre\*"; DestDir: "{app}\jre"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{app}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; Parameters: "-cp ""{app}\ega\EGAClientSigner.jar;{app}\ega\EgaClientSigner_lib\*"" ecscommon.OpenApplet"; IconFilename: "{app}\ega\EgaClientSigner_lib\{#MyAppIcoName}"
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; Parameters: "-cp ""{app}\ega\EGAClientSigner.jar;{app}\ega\EgaClientSigner_lib\*"" ecscommon.OpenApplet"; IconFilename: "{app}\ega\EgaClientSigner_lib\{#MyAppIcoName}"
Name: "{commonstartup}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; Parameters: "-cp ""{app}\ega\EGAClientSigner.jar;{app}\ega\EgaClientSigner_lib\*"" ecscommon.OpenApplet"; 
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; Parameters: "-cp ""{app}\ega\EGAClientSigner.jar;{app}\ega\EgaClientSigner_lib\*"" ecscommon.OpenApplet"; Tasks: desktopicon; IconFilename: "{app}\ega\EgaClientSigner_lib\{#MyAppIcoName}"

[Run]
Filename: "{app}\jre\bin\javaw.exe"; Parameters: "-cp ""{app}\ega\EGAClientSigner.jar;{app}\ega\EgaClientSigner_lib\*"" ecscommon.OpenApplet"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

