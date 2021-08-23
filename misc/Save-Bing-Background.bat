 
@echo off
title Windows Extras :: Save Bing Background
::all "echo. {nothing}" is for spacing purposes
setlocal EnableDelayedExpansion

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
SET /P ynqp="`Would you like to run the bat file, which saves the Bing background [Y]/[N]?: "
if /I "%ynqp%" EQU "Y" goto :COMMAND
if /I "%ynqp%" EQU "YES" goto :COMMAND
set /A ERRORLEVEL=0
goto :END

:COMMAND
:: first check to see if bing wallpapaer app is installed
if not exist "%localappdata%\Microsoft\BingWallpaperApp" goto :NOBB
:: adds user\Pictures\Bing if no no exist
if not exist "%userprofile%\Pictures\Bing" mkdir "%userprofile%\Pictures\Bing"
for %%e in ("%localappdata%\Microsoft\BingWallpaperApp\WPImages\*.jpg") do (
  copy /Y %%e %userprofile%\Pictures\Bing\
  echo. Background Saved
)
set /A ERRORLEVEL=1
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

:NOBB
echo.
echo. Bing Backgrounds not downloaded!
echo.
echo. Link:
echo. https://www.microsoft.com/en-us/bing/bing-wallpaper
set /A ERRORLEVEL=1
goto :END

endlocal

goto :info