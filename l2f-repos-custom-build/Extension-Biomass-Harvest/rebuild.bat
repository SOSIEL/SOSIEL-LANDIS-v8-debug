@echo off

cd src
dotnet build -c Release biomass-harvest-ext.csproj
if errorlevel 1 exit /B 1
cd ..
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Copying Landis.Extension.BiomassHarvest-v6.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.BiomassHarvest-v6.dll "%LANDIS_EXT_DIR%"
echo Copying Landis.Extension.BiomassHarvest-v6.pdb
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.BiomassHarvest-v6.pdb "%LANDIS_EXT_DIR%"
echo Done.
