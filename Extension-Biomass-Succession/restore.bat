@echo off
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Restoring Landis.Extension.Succession.Biomass-v7.dll
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Extension.Succession.Biomass-v7.dll" "%LANDIS_EXT_DIR%"
echo Restoring Landis.Extension.Succession.Biomass-v7.pdb
copy /B /Y "%LANDIS_EXT_DIR%\_backup\Landis.Extension.Succession.Biomass-v7.pdb" "%LANDIS_EXT_DIR%"
echo Done.
