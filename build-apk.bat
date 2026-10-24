@echo off
where gradle >nul 2>nul
if errorlevel 1 (
  echo Gradle tidak ditemukan. Buka proyek ini lewat Android Studio atau instal Gradle terlebih dahulu.
  exit /b 1
)
gradle assembleDebug
if errorlevel 1 exit /b 1
echo.
echo APK: app\build\outputs\apk\debug\app-debug.apk
