@echo off
ECHO ...............................................
ECHO 1 2 3 4 cho alpha, kato, xm4 và default
ECHO ...............................................
ECHO.
ECHO 1 - ALPHA
ECHO 2 - KATO
ECHO 3 - XM4
ECHO 4 - DEFAULT
ECHO 5 - FOLDER
ECHO.
SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO ALPHA
IF %M%==2 GOTO KATO
IF %M%==3 GOTO XM4
IF %M%==4 GOTO DEFAULT
IF %M%==5 GOTO FOLDER
:ALPHA
copy /y "C:\Program Files\EqualizerAPO\config\ALPHA\config.txt" "C:\Program Files\EqualizerAPO\config"
GOTO MENU
:KATO
copy /y "C:\Program Files\EqualizerAPO\config\KATO\config.txt" "C:\Program Files\EqualizerAPO\config"
GOTO MENU
:XM4
copy /y "C:\Program Files\EqualizerAPO\config\XM4\config.txt" "C:\Program Files\EqualizerAPO\config"
GOTO MENU
:DEFAULT
del "C:\Program Files\EqualizerAPO\config\config.txt"
GOTO MENU
:FOLDER
cd "C:\Program Files\EqualizerAPO"
start Editor.exe
GOTO MENU
