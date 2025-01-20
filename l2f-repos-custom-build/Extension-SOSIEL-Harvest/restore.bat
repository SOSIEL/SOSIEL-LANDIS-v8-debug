@echo off
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Restoring Landis.Extension.SOSIELHarvest-v2.dll
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Extension.SOSIELHarvest-v2.dll" "%LANDIS_EXT_DIR%"
echo Removing Landis.Extension.SOSIELHarvest-v2.pdb
del /F /Q "%LANDIS_EXT_DIR%\_backup\Landis.Extension.SOSIELHarvest-v2.pdb"
echo Done.
