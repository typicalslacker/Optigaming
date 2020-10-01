@echo off
cls

set watch=DayZ Server

title %watch% Watchdog

cd "C:\Program Files (x86)\Steam\steamapps\common\DayZServer"

:watchdog
echo (%time%) %watch% started.
start "DayZ Server" /wait "DayZServer_x64.exe" -adminlog -netlog -freezecheck -showScriptErrors VerifySignatures=3; -profiles=ServerProfiles -config=serverDZ.cfg -port=2302 -dologs "-mod=" "-profiles=C:\Program Files (x86)\Steam\steamapps\common\DayZServer\ServerProfiles\TraderFolder"
echo (%time%) %watch% closed or crashed, restarting.
goto watchdog
-profiles=C:\Steam\steamapps\common\DayZServer\log -scrAllowFileWrite -dologs -adminlog