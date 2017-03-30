@echo off

SET CODEBASE=D:\Path\To\Your\Project\Theme\Root

D:
cd %CODEBASE%
START "GITBASH" "C:\Program Files\Git\git-bash.exe"

tasklist /nh /fi "imagename eq xampp-control.exe" | find /i "xampp-control.exe" > nul || (start "XAMPP" "E:\Xampp\xampp-control.exe")

cd %CODEBASE%\scss
compass watch
