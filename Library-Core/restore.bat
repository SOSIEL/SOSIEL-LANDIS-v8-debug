@echo off
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Restoring Landis.Core.dll
copy /B /Y "%LANDIS_BIN_DIR%\_backup\Landis.Core.dll" "%LANDIS_BIN_DIR%"
echo Restoring Landis.Core.Implementation.dll
copy /B /Y "%LANDIS_BIN_DIR%\_backup\Landis.Core.Implementation.dll" "%LANDIS_BIN_DIR%"
echo Done.
