@echo off
>"_file_list.csv" (
  echo "Name","Modification Time","Creation Time"
  for /f "tokens=1-4*" %%A in (
    'dir /a-d /tc^|findstr "^[0-9]"'
  ) do if "%~f0" neq "%%~fE" if "%%E" neq "_file_list.csv" echo "%%E",%%A %%B %%C,%%~tE
)