@echo off
chcp 65001 >nul

:start
cls

if "%1"=="SINGLE" (
    Title LectorLipsPlus - Conversion of one file
    set /p "textpath=Path to mouth file | Pfad zu der Munddatei < File Path / Dateipfad | V:\Project Alpha\Mouth Data\01.txt >: "
) else (
    Title LectorLipsPlus - Conversion of folder files
    set /p "textpath=Path to mouth data | Pfad zu den Munddaten < Folder Path / Ordnerpfad | V:\Project Alpha\Mouth Data >: "
)

set /p "emotion=Fitting emotion from copied mouth folder | Passende Emotion vom kopierten Mundordner < Emotion | negative >: "

for /f "tokens=1,2 delims==" %%a in (../run/settings.ini) do (
    set mouthpath=%%b
)

if "%1"=="SINGLE" (
    python ../src/__init__.py -create_sequencer "%textpath%" "%mouthpath%/%emotion%"
) else (
    for %%i in ("%textpath%\*.txt") do (
        python ../src/__init__.py -create_sequencer "%%i" "%mouthpath%/%emotion%"
    )
)

timeout /t -1
goto start