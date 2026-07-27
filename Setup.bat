@echo off
title Fantasy NFL Dynasty Assistant Setup
color 0A
cd /d "%~dp0"

echo =========================================================
echo   Fantasy NFL Dynasty Assistant - Quick Setup
echo =========================================================
echo.
echo Setting up desktop shortcuts and launching application...
echo.

if exist "%~dp0dist\Fantasy_Assistant.exe" (
    powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Desktop = [System.Environment]::GetFolderPath('Desktop'); $Shortcut = $WshShell.CreateShortcut(\"$Desktop\Fantasy NFL Assistant.lnk\"); $Shortcut.TargetPath = '%~dp0dist\Fantasy_Assistant.exe'; $Shortcut.WorkingDirectory = '%~dp0'; $Shortcut.IconLocation = '%~dp0icon.ico'; $Shortcut.Description = 'Launch Fantasy NFL Dynasty Assistant'; $Shortcut.Save()"
) else (
    powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Desktop = [System.Environment]::GetFolderPath('Desktop'); $Shortcut = $WshShell.CreateShortcut(\"$Desktop\Fantasy NFL Assistant.lnk\"); $Shortcut.TargetPath = 'wscript.exe'; $Shortcut.Arguments = '\"%~dp0Launch_Fantasy_Assistant.vbs\"'; $Shortcut.WorkingDirectory = '%~dp0'; $Shortcut.IconLocation = '%~dp0icon.ico'; $Shortcut.Description = 'Launch Fantasy NFL Dynasty Assistant'; $Shortcut.Save()"
)

echo [OK] Desktop shortcut created successfully!
echo.

call Launch_Fantasy_Assistant.bat

echo =========================================================
echo   Setup Complete!
echo =========================================================
pause
