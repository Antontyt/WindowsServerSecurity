@ECHO OFF
ECHO Download DisableDefender
IF NOT EXIST "C:\Security\TEMP\" MD C:\Security\TEMP\
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\ https://raw.githubusercontent.com/Antontyt/TradeVPS/main/DisableDefender.bat
CALL C:\Security\TEMP\DisableDefender.bat
PAUSE
ECHO Download DisableSmartScreen
IF NOT EXIST "C:\Security\TEMP\" MD C:\Security\TEMP\
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\ https://raw.githubusercontent.com/Antontyt/TradeVPS/main/DisableSmartScreen.bat
CALL C:\Security\TEMP\DisableSmartScreen.bat
PAUSE
ECHO Download SearchDisable
IF NOT EXIST "C:\Security\TEMP\" MD C:\Security\TEMP\
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\ https://raw.githubusercontent.com/Antontyt/TradeVPS/main/reg/Hide_search_on_taskbar.bat
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\ https://raw.githubusercontent.com/Antontyt/TradeVPS/main/SearchDisable.bat
CALL C:\Security\TEMP\SearchDisable.bat
PAUSE
CALL C:\Security\TEMP\Hide_search_on_taskbar.bat
PAUSE
IF NOT EXIST "C:\Security\" MD C:\Security\
"sys\curl\curl.exe" -O --output-dir C:\Security\ https://raw.githubusercontent.com/Antontyt/TradeVPS/sys/wp/UpdateSecurity.bat
"sys\curl\curl.exe" -O --output-dir C:\Security\ https://raw.githubusercontent.com/Antontyt/TradeVPS/sys/wp/WindowsUpdateInstall_Auto.vbs
"sys\curl\curl.exe" -O --output-dir C:\Security\ https://raw.githubusercontent.com/Antontyt/TradeVPS/sys/wp/WindowsUpdateInstall_Manual.vbs
ECHO Download Registry Settings
IF NOT EXIST "C:\Security\TEMP\reg\" MD C:\Security\TEMP\reg\
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/Disable_DirtyShutdown.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/Disable_Recently_added_apps_list_on_Start_Menu.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/Disable_Search.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/Disable_ShowTaskViewButton.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/Disable_Shutdown_Event_Tracker.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/RussiaLocale_ForNonUnicode.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/USALocale_ForNonUnicode.reg
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\reg\ https://raw.githubusercontent.com/Antontyt/TradeVPS/reg/RegionalSettings/RegionalSettings/Settings.xml
ECHO Download Prepare2022Server
"sys\curl\curl.exe" -O --output-dir C:\Security\TEMP\ https://raw.githubusercontent.com/Antontyt/TradeVPS/main/Prepare2022Server.bat
CALL C:\Security\TEMP\Prepare2022Server.bat
PAUSE