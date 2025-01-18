@echo off
cd src
dotnet build -c Release biomass-succession.csproj
if errorlevel 1 exit /B 1
cd ..
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Copying Landis.Extension.Succession.Biomass-v7.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.Succession.Biomass-v7.dll "%LANDIS_EXT_DIR%"
echo Copying Landis.Extension.Succession.Biomass-v7.pdb
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.Succession.Biomass-v7.pdb "%LANDIS_EXT_DIR%"
echo Done.
