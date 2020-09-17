cls
@ECHO OFF
SETLOCAL enableExtensions
SETLOCAL enableDelayedExpansion
title XShark Offical Uninstall Client
goto INSTALLED
:INSTALLED
echo Are you sure you want to uninstall XShark? (Y/N)
set/p "cho=>"
if %cho%==Y goto UNINSTALLER
if %cho%==y goto UNINSTALLER
if %cho%==N goto END
if %cho%==n goto END
echo Invalid Input
timeout 5
goto INSTALLED
:UNINSTALLER
echo Uninstalling.
timeout 1
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\exploit-main.dll
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\FlatUI.dll
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\WeAreDevs_API.dll
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\XShark_Offical.exe
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\XShark_Offical.exe.config
del C:\Users\Public\Documents\XSharkOffical\ImportantFolder\XShark_Offical.pdb
del C:\Users\Public\Documents\XSharkOffical\ReadMe.txt\
del C:\Users\Public\Desktop\XSharkOffical.lnk
echo Uninstalled
timeout 5
goto END
:END