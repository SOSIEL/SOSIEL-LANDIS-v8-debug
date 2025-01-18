@echo off
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Restoring Landis.Library.Climate-v5.dll
copy /B /Y "%LANDIS_BIN_DIR%\_backup\Landis.Library.Climate-v5.dll" "%LANDIS_BIN_DIR%"
echo Done.
