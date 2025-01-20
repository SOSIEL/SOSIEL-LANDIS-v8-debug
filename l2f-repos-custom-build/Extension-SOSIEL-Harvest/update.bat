@echo off
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Copying Landis.Extension.SOSIELHarvest-v2.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.SOSIELHarvest-v2.dll "%LANDIS_EXT_DIR%"
echo Copying Landis.Extension.SOSIELHarvest-v2.pdb
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.SOSIELHarvest-v2.pdb "%LANDIS_EXT_DIR%"
echo Done.
