[Setup]
AppId={{A2B3C4D5-E6F7-4890-B1C2-D3E4F5A6B7C8}
AppName=NurseryOS
AppVersion=1.0.6
AppPublisher=NurseryOS
DefaultDirName={autopf}\NurseryOS
DefaultGroupName=NurseryOS
OutputDir=..\build\windows\installer
OutputBaseFilename=nursery-windows-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\build\windows\x64\runner\Release\nursery.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\NurseryOS"; Filename: "{app}\nursery.exe"
Name: "{autodesktop}\NurseryOS"; Filename: "{app}\nursery.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\nursery.exe"; Description: "{cm:LaunchProgram,NurseryOS}"; Flags: nowait postinstall skipifsilent
