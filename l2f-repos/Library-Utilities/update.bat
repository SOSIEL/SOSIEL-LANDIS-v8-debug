@echo off
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Copying Landis.Utilities.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Utilities.dll "%LANDIS_BIN_DIR%"
echo Done.
