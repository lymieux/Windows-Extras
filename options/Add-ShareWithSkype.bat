@echo off
title Windows Extras :: Re-Add Share With Skype
::all echo. {nothing} is for spacing purposes
setlocal enabledelayedexpansion

:INFO
::Echos of info
echo. Windows Extras
echo. "Share on Skype" Option Re-Adder
echo. Author: kymchi
echo.
echo. Date: %DATE%
echo. Time: %TIME%
goto :PROMPT

:PROMPT
::Continue program yes or no prompt
echo.
echo. Would you like to run the bat file, which removes the Registry Hive,
SET /P ynqp="`adding the Share With Skype Option back [Y]/[N]?: "
if /I "%ynqp%" EQU "Y" goto :COMMAND
if /I "%ynqp%" EQU "YES" goto :COMMAND
set /A ERRORLEVEL=0
goto :END

:COMMAND
:: registered : r  check : c
::if r contains c delete c
echo.
echo. Starting Registry Indexing:
for %%r in (%localappdata%\WindowsExtras\*.txt) do (
  for /f %%c in ('reg query "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /S') do (
    echo.
    echo. Registered SkypeApp Token Txt:
    echo. %%r
    echo.
    echo. Current Token:
    echo. %%c
    echo "%%r" | findstr "%%c" 1>nul
    if errorlevel 1 (
      echo.
      echo. Current Token is not a Registered SkypeApp Blocked Token 
    ) ELSE (
      echo. 
      echo. Registered Token Received
      echo.
      reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v %%c
    )
  )
)
set ERRORLEVEL=1
goto :END

:RE
echo.
taskkill /f /IM explorer.exe
start explorer.exe
exit /b 0

:PROMPTRE
::Continue program yes or no prompt
echo.
SET /P req="`Would you like to Restart Explorer? [Y]/[N]?: "
if /I "%req%" EQU "Y" call :RE
if /I "%req%" EQU "YES" call :RE
exit /b 0

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

goto :INFO
