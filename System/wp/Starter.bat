@ECHO OFF
ECHO Change Windows Settings
w32tm /unregister
net stop w32tm
sc config w32time start= disabled
ECHO Hyper-V Time Synchronization Service
sc stop vmictimesync
sc config "vmictimesync" start= disabled
net stop tzautoupdate
sc config tzautoupdate start= disabled
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v Type /d "NoSync" /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v Start /t REG_DWORD /d 3 /F
REM -----------------------------------------------------------------------------------------
for /F "tokens=3 delims=: " %%H in ('sc query "Dimension4" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   CLS
   COLOR 47
   ECHO Внимание! Сервис "Dimension4" не запущен!
   TIMEOUT 15
   net start "Dimension4"
  )
)
REM -----------------------------------------------------------------------------------------
SETLOCAL EnableExtensions
set EXE=RestartOnCrash.exe
FOR /F %%x IN ("%EXE%") do set EXE_=%%x
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE_% (
  CLS
  COLOR 47
  echo %EXE% is Not Running
  TIMEOUT 15
)
REM -----------------------------------------------------------------------------------------