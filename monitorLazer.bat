@echo off

:: get current directory
set "script_dir=%~dp0"

:loop
tasklist /FI "IMAGENAME eq osu!.exe" 2>NUL | find /I /N "osu!.exe">NUL
if "%ERRORLEVEL%"=="0" (
    if exist "%script_dir%importInBackground.vbs" (
        start "" "%script_dir%importInBackground.vbs"
    ) else (
        echo File not found: %script_dir%importInBackground.vbs
    )
    goto exit
)
timeout /t 5 >NUL
goto loop

:exit