@echo off
cd src
dotnet build -c Release climate-generator.csproj
if errorlevel 1 exit /B 1
cd ..
set LANDIS_EXT_DIR=C:\Program Files\LANDIS-II-v8\extensions
echo Copying Landis.Library.Climate-v5.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Library.Climate-v5.dll "%LANDIS_EXT_DIR%"
echo Done.
