@echo off
title Run As Addon :: Remove Share With Skype
::all "echo. {nothing}" is for spacing purposes
setlocal EnableDelayedExpansion

::global variables
set keyword=Skype

:INFO
::Echos of info
echo. "Run As" Addon(s)
echo. "Share on Skype" Option Remover
echo. Author: kymchi
echo.
echo. Date: %DATE%
echo. Time: %TIME%
goto :PROMPT

:PROMPT
::Continue program yes or no prompt
echo.
SET /P ynqp="`Would you like to run the bat file, which removes Share With Skype [Y]/[N]?: "
if /I "%ynqp%" EQU "Y" goto :COMMAND
if /I "%ynqp%" EQU "YES" goto :COMMAND
set /A ERRORLEVEL=0
goto :END

:COMMAND
md "%localappdata%\RunAsAddon"
echo.
echo. Starting Registry Indexing:
for /f %%r in ('reg query "HKEY_CLASSES_ROOT\PackagedCom\ClassIndex" /S') do (
  echo.
  echo. Registry Directory: 
  echo. %%r
  echo %%r | findstr %keyword% 1>nul
  if errorlevel 1 (
    echo.
    echo. Not a SkypeApp Hive :: Next Hive
  ) ELSE (
    echo.
    echo. Is a SkypeApp Hive :: Add Key to Registry
    call :REGADD %%r
  )
)
echo.
echo. No more Hives Found
set ERRORLEVEL=1
goto :END

:REGADD
echo.
for /f "tokens=1,2,3,4 delims=\" %%a in ("%~1") do (
  echo.Remove-ShareWithSkype.bat var: %%d>%localappdata%\WindowsExtras\%%d.txt
  REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v %%d /d "Skype"
)
exit /b 1

:END
echo. 
IF %ERRORLEVEL% EQU 0 (
  echo. Program not run!
)
IF %ERRORLEVEL% EQU 1 (
  echo. Successful completion!
  call :PROMPTRE
)
echo.
echo. Press any key to close, or just close window!
pause >nul
exit %ERRORLEVEL%

:RE
echo.
taskkill /f /IM explorer.exe
start explorer.exe
exit /b 1

:PROMPTRE
::Continue program yes or no prompt
echo.
SET /P req="`Would you like to Restart Explorer? [Y]/[N]?: "
if /I "%req%" EQU "Y" call :RE
if /I "%req%" EQU "YES" call :RE
exit /b 1

endlocal

goto :info

