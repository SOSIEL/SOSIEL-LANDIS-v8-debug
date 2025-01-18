@echo off
cd src
dotnet build -c Release dynamic-fuels.csproj
if errorlevel 1 exit /B 1
cd ..
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Copying Landis.Extension.DynamicFuels-v4.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.DynamicFuels-v4.dll "%LANDIS_EXT_DIR%"
echo Copying Landis.Extension.DynamicFuels-v4.pdb
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Extension.DynamicFuels-v4.pdb "%LANDIS_EXT_DIR%"
echo Done.
