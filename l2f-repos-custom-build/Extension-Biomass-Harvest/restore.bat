@echo off

set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Restoring Landis.Extension.BiomassHarvest-v6.dll
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Extension.BiomassHarvest-v6.dll" "%LANDIS_EXT_DIR%"
echo Removing Landis.Extension.BiomassHarvest-v6.pdb
del /F /Q "%LANDIS_EXT_DIR%\_backup\Landis.Extension.BiomassHarvest-v6.pdb"
echo Done.
