@echo off
title WindowsExtras :: Folder Locker

:INFO
::Echos of info
echo. Windows Extras
echo. Save Bing Background
echo. Author: kymchi
echo.
echo. Date: %DATE%
echo. Time: %TIME%
goto :PROMPT

:PROMPT
::Continue program yes or no prompt
echo.
SET /P ynqp="`Would you like to run the bat file, which Locks a Folder [Y]/[N]?: "
if /I "%ynqp%" EQU "Y" goto :COMMAND
if /I "%ynqp%" EQU "YES" goto :COMMAND
if /I "%ynqp%" EQU "N" goto :DRUN
if /I "%ynqp%" EQU "N0" goto :DRUN
echo. Invalid choice.
goto :PROMPT

:DRUN
set /A ERRORLEVEL=0
goto :END

:END
echo. 
IF %ERRORLEVEL% EQU 0 (
  echo. Program not run!
)
IF %ERRORLEVEL% EQU 1 (
  echo. Successful completion!
)
echo.
echo. Press any key to close, or just close window!
pause >nul
exit %ERRORLEVEL%

:COMMAND
set /A ERRORLEVEL=1
if exist "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto :CONFUNLOCK
if exist Locker goto :CONFLOCK
if not exist Locker goto :MDLOCKER

:CONFUNLOCK
echo.
set /P cho="`Are you sure you want to unlock the folder [Y/N]: "
if /I "%cho%" EQU "Y" goto :UNLOCK
if /I "%cho%" EQU "YES" goto :UNLOCK
if /I "%cho%" EQU "N" goto :END
if /I "%cho%" EQU "NO" goto :END
echo. Invalid choice.
goto :CONFUNLOCK

:CONFLOCK
echo.
set /P cho="`Are you sure you want to lock the folder [Y/N]: "
if /I "%cho%" EQU "Y" goto :LOCK
if /I "%cho%" EQU "YES" goto :LOCK
if /I "%cho%" EQU "N" goto :END
if /I "%cho%" EQU "NO" goto :END
echo. Invalid choice.
goto :CONFLOCK

:UNLOCK
echo.
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo. Folder Unlocked successfully!
goto :END

:LOCK
echo.
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo. Folder Locked successfully!
goto :END

:MDLOCKER
md Locker
echo.
echo. Locker created successfully!
goto :END

goto :INFO