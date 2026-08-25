@echo off
chcp 65001 >nul
cd /d "%~dp0.."
echo === Dokimon: восстановить оригинал (English) ===
if exist "Russificator\data_steam_current.win" (
    copy /Y "Russificator\data_steam_current.win" "data.win" >nul && echo data.win восстановлен
) else (
    for %%F in ("data.win") do set SZ=%%~zF
    echo data.win: размер %%SZ%% байт (оригинал, проверьте через Steam при сомнениях)
)
echo Готово. Запускайте игру через Steam.
pause
