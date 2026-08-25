@echo off
chcp 65001 >nul
cd /d "%~dp0.."
echo === Obnovlenie russifikatora ===
echo Zhdu vyhoda iz igry (Dokimon.exe)...
:wait
timeout /t 3 /nobreak >nul
tasklist /FI "IMAGENAME eq Dokimon.exe" 2>nul | find /I "Dokimon.exe" >nul
if not errorlevel 1 goto wait
copy /Y "Russificator\Dokimon_RU.win" "data.win" >nul && echo data.win obnovlen (russifikator primenyon).
xcopy /Y /Q "Russificator\Localization\*.txt" "Localization\french\" >nul
echo Gotovo. Mozhno zapuskat igru cherez Steam.
timeout /t 5 >nobreak >nul
