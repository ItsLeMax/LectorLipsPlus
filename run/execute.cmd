@echo off

:start
cls

set /p "textpath=Mouth Data Path < file path | ""V:\Project Alpha\Mouth Data"" >: "

for /f "tokens=1,2 delims==" %%a in (settings.ini) do (
	set mouthpath=%%b
)

python ../src/__init__.py -create_sequencer "%textpath%" "%mouthpath%"

timeout /t -1
goto start