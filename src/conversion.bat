@echo off
chcp 65001 >nul

if "%1"=="SINGLE" (
    Title LectorLipsPlus - Conversion of one file
) else (
    Title LectorLipsPlus - Conversion of folder files
)

:start
cls

if "%1"=="SINGLE" (
    set /p "textpath=Path to mouth file | Pfad zu der Munddatei < File Path / Dateipfad | V:\Project Alpha\Mouth Data\01.txt >: "
) else (
    set /p "textpath=Path to mouth data | Pfad zu den Munddaten < Folder Path / Ordnerpfad | V:\Project Alpha\Mouth Data >: "
)

@REM ---- FIRST LOOP ----

set "emotionL=%textpath%"
set "tempL="

:first_iteration

for %%A in ("%emotionL%") do (
    set "tempL=%%~nxA"
)

if "%tempL%"=="%emotionL%" goto done

set "emotionL=%tempL%"
goto first_iteration

:done

@REM ---- SECOND LOOP ----

setlocal enabledelayedexpansion

set "emotionSL=%textpath%"
set "part="

for %%A in ("%emotionSL%") do (
    set "emotionSL=%%~dpA"
    set "emotionSL=!emotionSL:~0,-1!"
)

for %%A in ("%emotionSL%") do (
    set "part=%%~nxA"
)

endlocal & set "emotionSL=%part%"

@REM ----- MISC CODE -----

for /f "tokens=1,2 delims==" %%a in (../run/settings.ini) do (
    set mouthpath=%%b
)

if "%1"=="SINGLE" (
    python ../src/__init__.py -create_sequencer "%textpath%" "%mouthpath%/%emotionSL%"
) else (
    for %%i in ("%textpath%\*.txt") do (
        python ../src/__init__.py -create_sequencer "%%i" "%mouthpath%/%emotionL%"
    )
)

timeout /t -1
goto start