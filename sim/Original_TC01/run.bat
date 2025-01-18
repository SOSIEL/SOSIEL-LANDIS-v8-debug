@echo off
rem Batch File to Run a Scenario 
rem The 'rem' keyword indicates that this is a remark

set LANDIS_MAJOR_VERSION=8

if not "x%LANDIS_PATH%" ==  "x" goto has_custom_landis_path
set LANDIS_PATH=C:\Program Files\LANDIS-II-v%LANDIS_MAJOR_VERSION%\commands\
:has_custom_landis_path
set PATH=%PATH%;"%LANDIS_PATH%"

cls
call landis-ii-%LANDIS_MAJOR_VERSION% scenario_SHE.txt
