cls
@ECHO OFF
SETLOCAL enableExtensions
SETLOCAL enableDelayedExpansion
set NL=^


title XShark Offical Install Client
goto START
:START
echo Starting download manager.
echo.>Readme.txt !NL!Hello, thanks for installing XShark.!NL!And thanks for using the download manager.!NL!This was created by OkBoomer#3424.!NL!!NL!Version:1.0.0
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/blob/master/FlatUI.dll?raw=true -OutFile FlatUI.dll"
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/blob/master/WeAreDevs_API.dll?raw=true -OutFile WeAreDevs_API.dll"
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/blob/master/XShark_Offical.exe?raw=true -OutFile XShark_Offical.exe"
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/raw/master/XShark_Offical.exe.config -OutFile XShark_Offical.exe.config"
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/blob/master/XShark_Offical.pdb?raw=true -OutFile XShark_Offical.pdb"
powershell -nologo -noprofile -Command "Invoke-WebRequest https://github.com/26926802306236/XShark-Offical/blob/master/exploit-main.dll?raw=true -OutFile exploit-main.dll"
md XSharkOffical
md ImportantFolder
move XSharkOffical C:\Users\Public\Documents
move ImportantFolder C:\Users\Public\Documents\XSharkOffical
rem attrib +h C:\Users\Public\Desktop\XSharkOffical
move XShark_Offical.exe C:\Users\Public\Documents\XSharkOffical\ImportantFolder
move WeAreDevs_API.dll C:\Users\Public\Documents\XSharkOffical\ImportantFolder
move exploit-main.dll C:\Users\Public\Documents\XSharkOffical\ImportantFolder
move FlatUI.dll C:\Users\Public\Documents\XSharkOffical\ImportantFolder
move XShark_Offical.exe.config C:\Users\Public\Documents\XSharkOffical\ImportantFolder
move XShark_Offical.pdb C:\Users\Public\Documents\XSharkOffical\ImportantFolder
echo.>XSharkOffical.lnk
move XSharkOffical.lnk C:\Users\Public\Desktop
echo.>createshortcut.vbs Set objShell = WScript.CreateObject("WScript.Shell")!NL!set ink = objShell.CreateShortcut("C:\Users\Public\Desktop\XSharkOffical.lnk")!NL!ink.TargetPath = "C:\Users\Public\Documents\XSharkOffical\ImportantFolder\XShark_Offical.exe"!NL!ink.Save!NL!Set ink = Nothing
move createshortcut.vbs C:\Users\Public\Documents\XSharkOffical\ImportantFolder
start C:\Users\Public\Documents\XSharkOffical\ImportantFolder\createshortcut.vbs
timeout 1
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\createshortcut.vbs
move Readme.txt C:\Users\Public\Documents\XSharkOffical
goto END
:END
echo Thanks for installing XShark offical
timeout 5
goto EXIT
:EXIT