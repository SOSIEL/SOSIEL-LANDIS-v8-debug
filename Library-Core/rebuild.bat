@echo off
dotnet build -c Release
if errorlevel 1 exit /B 1
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Copying Landis.Core.dll
copy /B /Y .\src\Core\bin\Release\netstandard2.0\Landis.Core.dll "%LANDIS_BIN_DIR%"
echo Copying Landis.Core.Implementation.dll
copy /B /Y .\src\Implementation\bin\Release\netstandard2.0\Landis.Core.Implementation.dll "%LANDIS_BIN_DIR%"
echo Done.
