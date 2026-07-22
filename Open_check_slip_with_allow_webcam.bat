@echo off
setlocal

set "URL=http://grand-hq.ddns.net:10009/v1/myinfo.asp?mode=act_emp_check_slip"
set "ORIGIN=http://grand-hq.ddns.net:10009"
set "PROFILE=%LOCALAPPDATA%\ChromeSalaryWebcamProfile"

set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"

if not exist "%CHROME%" (
    set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
)

if not exist "%CHROME%" (
    set "CHROME=%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"
)

if not exist "%CHROME%" (
    echo ไม่พบ Google Chrome
    echo กรุณาติดตั้ง Google Chrome ก่อนใช้งาน
    pause
    exit /b 1
)

start "" "%CHROME%" ^
  --user-data-dir="%PROFILE%" ^
  --unsafely-treat-insecure-origin-as-secure="%ORIGIN%" ^
  --new-window ^
  "%URL%"

endlocal