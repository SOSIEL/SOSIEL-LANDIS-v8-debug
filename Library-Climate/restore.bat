@echo off
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Restoring Landis.Library.Climate-v5.dll
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Library.Climate-v5.dll" "%LANDIS_EXT_DIR%"
echo Done.
