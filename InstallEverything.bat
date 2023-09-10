@echo off
@echo off
setlocal

REM Define the source and destination directories
set "sourceDir="C:\Users\kiron\Downloads\Resources-main\Resources-main""
set "modsDir=%APPDATA%\.minecraft\mods"
set "resourcepacksDir=%APPDATA%\.minecraft\resourcepacks"

REM Check if the source directory exists
if not exist "%sourceDir%" (
    echo Source directory does not exist.
    goto :eof
)

REM Check if the mods directory exists, create it if not
if not exist "%modsDir%" (
    mkdir "%modsDir%"
)

REM Check if the resourcepacks directory exists, create it if not
if not exist "%resourcepacksDir%" (
    mkdir "%resourcepacksDir%"
)

REM Move files from mods folder to Minecraft mods folder
xcopy /y /s "%sourceDir%\mods\*" "%modsDir%"

REM Move files from resourcepacks folder to Minecraft resourcepacks folder
xcopy /y /s "%sourceDir%\resourcepacks\*" "%resourcepacksDir%"

echo Files have been moved successfully.

:end
