@echo off
set LANDIS_BIN_DIR=C:\Program Files\LANDIS-II-v8\v8
echo Copying Landis.Library.Climate-v5.dll
copy /B /Y .\src\bin\Release\netstandard2.0\Landis.Library.Climate-v5.dll "%LANDIS_BIN_DIR%"
echo Done.
