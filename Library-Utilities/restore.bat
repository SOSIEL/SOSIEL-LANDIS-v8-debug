@echo off
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Restoring Landis.Utilities.dll
copy /B /Y "%LANDIS_BIN_DIR%\_backup\Landis.Utilities.dll" "%LANDIS_BIN_DIR%"
echo Done.
