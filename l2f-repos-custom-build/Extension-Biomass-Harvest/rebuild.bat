@echo off
cd src
dotnet build -c Release biomass-harvest-ext.csproj
if errorlevel 1 exit /B 1
cd ..
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
rem echo Copying Landis.Extension.BiomassHarvest-v6.dll
rem copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.BiomassHarvest-v6.dll "%LANDIS_EXT_DIR%"
rem echo Copying Landis.Extension.BiomassHarvest-v6.pdb
rem copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.BiomassHarvest-v6.pdb "%LANDIS_EXT_DIR%"
echo Done.
