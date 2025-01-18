@echo off
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Restoring Landis.Extension.DynamicFuels-v4.dll
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Extension.DynamicFuels-v4.dll" "%LANDIS_EXT_DIR%"
echo Removing Landis.Extension.DynamicFuels-v4.pdb
if exist "%LANDIS_EXT_DIR%\Landis.Extension.DynamicFuels-v4.pdb" del /F /Q "%LANDIS_EXT_DIR%\Landis.Extension.DynamicFuels-v4.pdb" 
echo Done.
