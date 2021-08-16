@echo off
title Restart Explorer

echo.
SET /P ynqp="`Would you like to run the bat file, which restarts Explorer [Y]/[N]?: "
if /I "%ynqp%" EQU "Y" call :RE
if /I "%ynqp%" EQU "YES" call :RE
echo.
echo. Press any key to close, or just close window!
pause >nul
exit 0

:RE
echo.
taskkill /f /IM explorer.exe
start explorer.exe
exit /b 0