@echo off
set /p fp="Enter full path to file: "
find /v /c "" %fp%
cmd /k